Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/selectivesearchsegmentation?download=true
inline.NumInlined: 2286
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_:bb.a

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i23
  %.sroa.0.018.i24 = phi ptr [ %.sroa.0.015.i21, %.lr.ph.i23 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn17.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.0.018.i24, %bb.o ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn17.i25, i64 56
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !192 ; 4 uses
  %i.ad = load double, ptr %i.aa, align 8, !tbaa !192
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.018.i24, i64 40, i1 false), !tbaa.struct !172
  %i.af = ptrtoint ptr %.sroa.0.018.i24 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 40
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !188

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i25, i64 80
  %.neg23.i37 = udiv exact i64 %i.ag, 40
  %.neg23.neg.i38 = sub nsw i64 0, %.neg23.i37
  %i.aj = getelementptr inbounds [40 x i8], ptr %i.ai, i64 %.neg23.neg.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %i.ag, 40
  br i1 %i.ak, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.pn17.i25, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !172
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !172
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i24, i64 16, i1 false), !tbaa.struct !172
  %.sroa.5.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %.pn17.i25, i64 64
  %.sroa.5.i.i19.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..sroa_idx.i.i26, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %.pn17.i25, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !192
  %i.ao = fcmp olt double %i.ac, %i.an
  br i1 %i.ao, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i27

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.07.010.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.018.i24, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i34, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.07.010.i.i34, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.i35, i64 40, i1 false), !tbaa.struct !172
  %i.ap = getelementptr inbounds i8, ptr %.sroa.07.010.i.i34, i64 -64
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !192
  %i.ar = fcmp olt double %i.ac, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i27, !llvm.loop !605

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i27: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.07.0.lcssa.i.i28 = phi ptr [ %.sroa.0.018.i24, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.lcssa.i.i28, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i18, i64 16, i1 false), !tbaa.struct !172
  %.sroa.4.0..sroa_idx4.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28, i64 16
  store double %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i29, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx6.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i28, i64 24
  store <4 x i32> %.sroa.5.i.i19.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx6.i.i30, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i18)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i27, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i24, i64 40 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit, label %bb.i, !llvm.loop !606

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i10, %.preheader.i20, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.05.i = alloca [16 x i8], align 8         ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 40
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24
  %.sroa.48.0.copyload.i = load double, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i, align 8, !tbaa !55 ; 2 uses
  %.sroa.59.0..sroa.0.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  %.sroa.5.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.59.0..sroa.0.0..sroa_idx.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !172
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.g, 80
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.039.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 2 uses
  %i.n = getelementptr inbounds [40 x i8], ptr %0, i64 %i.m
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [40 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !192
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !192
  %i.u = fcmp olt double %i.r, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.o, i64 %i.m ; 4 uses
  %i.v = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select.i.i
  %i.w = getelementptr inbounds [40 x i8], ptr %0, i64 %.039.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !tbaa.struct !172
  %i.x = icmp slt i64 %spec.select.i.i, %i.j
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !20

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.y = and i64 %i.h, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.aa = add nsw i64 %i.h, -2
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = icmp eq i64 %.0.lcssa.i.i, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !tbaa.struct !172
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.thread.i
  %.018.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.c ], [ %i.ae, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.018.i.i.i = phi i64 [ %.0919.i.i1011.i, %bb.d ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i = add nsw i64 %.018.i.i.i, -1
  %.0919.i.i1011.i = lshr i64 %.0919.in.i.i.i, 1  ; 3 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0919.i.i1011.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !192
  %i.ak = fcmp olt double %i.aj, %.sroa.48.0.copyload.i
  br i1 %i.ak, label %bb.d, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds [40 x i8], ptr %0, i64 %.018.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !tbaa.struct !172
  %.not12.i = icmp eq i64 %.0919.i.i1011.i, 0
  br i1 %.not12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !21

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.018.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %i.am = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store double %.sroa.48.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store <4 x i32> %.sroa.5.i.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  %i.an = icmp sgt i64 %i.g, 40
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !608

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.013 = alloca [16 x i8], align 8          ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 80
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 40                  ; 4 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit, %bb.b
  %.07 = phi i64 [ %i.g, %bb.b ], [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [40 x i8], ptr %0, i64 %.07 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.013)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.416.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.416.0.copyload = load double, ptr %.sroa.416.0..sroa.0.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %.sroa.517.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5.sroa.0.0.copyload21 = load <4 x i32>, ptr %.sroa.517.0..sroa.0.0..sroa_idx, align 8
  %i.p = icmp slt i64 %.07, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.039.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.07, %bb.c ] ; 2 uses
  %i.q = shl i64 %.039.i, 1                       ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [40 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [40 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !192
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !192
  %i.z = fcmp olt double %i.w, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.t, i64 %i.r ; 4 uses
  %i.aa = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select.i
  %i.ab = getelementptr inbounds [40 x i8], ptr %0, i64 %.039.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !tbaa.struct !172
  %i.ac = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.07, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !tbaa.struct !172
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i, %.07
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0919.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !192
  %i.ai = fcmp olt double %i.ah, %.sroa.416.0.copyload
  br i1 %i.ai, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.018.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !tbaa.struct !172
  %i.ak = icmp sgt i64 %.0919.i.i, %.07
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit, !llvm.loop !21

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0919.i.i, %bb.f ], [ %.018.i.i, %.lr.ph.i.i ]
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.lcssa.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store double %.sroa.416.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store <4 x i32> %.sroa.5.sroa.0.0.copyload21, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.013)
  %.not = icmp eq i64 %.07, 0
  %i.am = add nsw i64 %.07, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !609

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation6RegionESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !193
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !146
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.e, align 4, !tbaa !611
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 7 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i32, ptr %i.b, align 4, !tbaa !180  ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !180  ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !181  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !181  ; 2 uses
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.q, %i.s
  br i1 %i.u, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load i32, ptr %i.v, align 4, !tbaa !145  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load i32, ptr %i.x, align 4, !tbaa !145  ; 2 uses
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i32 %i.w, %i.y
  br i1 %i.aa, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !182
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !182
  %i.af = icmp slt i32 %i.ac, %i.ae
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.ag = phi i1 [ %i.af, %bb.j ], [ true, %bb.c ], [ false, %bb.i ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !179
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !179
  br label %_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #27
  resume { ptr, i32 } %i.ak

bb.k:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #27
  br label %_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.k
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.k ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !179
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread41, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !180  ; 2 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !180    ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread, label %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_:bb.a
_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread: ; preds = %bb.ac, %bb.aa, %bb.y, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !197
  %i.dy = icmp eq ptr %i.dx, null                 ; 2 uses
  %spec.select60 = select i1 %i.dy, ptr null, ptr %i.da
  %spec.select61 = select i1 %i.dy, ptr %1, ptr %i.da
  br label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread57: ; preds = %bb.z, %bb.ab, %bb.ad, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17
  %i.dz = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.ea = extractvalue { ptr, ptr } %i.dz, 0
  %i.eb = extractvalue { ptr, ptr } %i.dz, 1
  br label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread: ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit13.thread, %bb.v, %bb.x, %bb.g, %bb.e, %bb.c, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit15, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread57, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit15.thread, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit13.thread49, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit11.thread, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread41
  %.sroa.038.2 = phi ptr [ %i.ad, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread41 ], [ %1, %bb.x ], [ null, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit ], [ %spec.select60, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread ], [ %1, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit15 ], [ %i.ce, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit13.thread49 ], [ %i.bc, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit11.thread ], [ %1, %bb.v ], [ %i.ea, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread57 ], [ null, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit15.thread ], [ %spec.select, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit13.thread ], [ null, %bb.g ], [ null, %bb.c ], [ null, %bb.e ]
  %.sroa.12.2 = phi ptr [ %i.ae, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread41 ], [ null, %bb.x ], [ %i.f, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit ], [ %spec.select61, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread ], [ null, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit15 ], [ %i.cf, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit13.thread49 ], [ %i.bc, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit11.thread ], [ null, %bb.v ], [ %i.eb, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit17.thread57 ], [ %i.cy, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit15.thread ], [ %spec.select59, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit13.thread ], [ %i.f, %bb.g ], [ %i.f, %bb.c ], [ %i.f, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.038.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN2cv5Rect_IiEESt4pairIKS2_cESt10_Select1stIS5_ENS0_8ximgproc12segmentation14rectComparatorESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02234 = load ptr, ptr %i.a, align 8, !tbaa !183 ; 2 uses
  %.not35 = icmp eq ptr %.02234, null
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !180    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread
  %.02236 = phi ptr [ %.02234, %.lr.ph ], [ %.022, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02236, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !180  ; 2 uses
  %i.l = icmp slt i32 %i.c, %i.k
  br i1 %i.l, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %i.c, %i.k
  br i1 %i.m, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02236, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !181  ; 2 uses
  %i.p = icmp slt i32 %i.e, %i.o
  br i1 %i.p, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %i.e, %i.o
  br i1 %i.q, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.02236, i64 40
  %i.s = load i32, ptr %i.r, align 4, !tbaa !145  ; 2 uses
  %i.t = icmp slt i32 %i.g, %i.s
  br i1 %i.t, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %i.g, %i.s
  br i1 %i.u, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.02236, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !182
  %i.x = icmp slt i32 %i.i, %i.w
  br i1 %i.x, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27: ; preds = %bb.c, %bb.e, %bb.g, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit
  br label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread: ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit, %bb.b, %bb.d, %bb.f, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27
  %.sink = phi i64 [ 24, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27 ], [ 16, %bb.f ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit ]
  %.0.i24 = phi i1 [ false, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread27 ], [ true, %bb.f ], [ true, %bb.d ], [ true, %bb.b ], [ true, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.02236, i64 %.sink
  %.022 = load ptr, ptr %i.y, align 8, !tbaa !183 ; 2 uses
  %.not = icmp eq ptr %.022, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !612

._crit_edge:                                      ; preds = %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit.thread
  br i1 %.0.i24, label %._crit_edge.thread, label %bb.i

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.021.lcssa52 = phi ptr [ %.02236, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178
  %i.ab = icmp eq ptr %.021.lcssa52, %i.aa
  br i1 %i.ab, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa52) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.021.lcssa51 = phi ptr [ %.021.lcssa52, %bb.h ], [ %.02236, %._crit_edge ] ; 4 uses
  %.sroa.07.0 = phi ptr [ %i.ac, %bb.h ], [ %.02236, %._crit_edge ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 32
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !180 ; 2 uses
  %i.af = load i32, ptr %1, align 4, !tbaa !180   ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp sgt i32 %i.ae, %i.af
  br i1 %i.ah, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !181 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !181 ; 2 uses
  %i.am = icmp slt i32 %i.aj, %i.al
  br i1 %i.am, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = icmp sgt i32 %i.aj, %i.al
  br i1 %i.an, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 40
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !145 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !145 ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = icmp sgt i32 %i.ap, %i.ar
  br i1 %i.at, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6: ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !182
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !182
  %i.ay = icmp slt i32 %i.av, %i.ax
  br i1 %i.ay, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread, label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32: ; preds = %bb.j, %bb.l, %bb.n, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6
  br label %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread

_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread: ; preds = %bb.m, %bb.k, %bb.i, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6, %._crit_edge.thread, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32
  %.sroa.020.0 = phi ptr [ %.sroa.07.0, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32 ], [ null, %._crit_edge.thread ], [ null, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6 ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ]
  %.sroa.4.0 = phi ptr [ null, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6.thread32 ], [ %.021.lcssa52, %._crit_edge.thread ], [ %.021.lcssa51, %_ZNK2cv8ximgproc12segmentation14rectComparatorclERKNS_5Rect_IiEES6_.exit6 ], [ %.021.lcssa51, %bb.i ], [ %.021.lcssa51, %bb.k ], [ %.021.lcssa51, %bb.m ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %4 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %5 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %6 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %7 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %8 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %9 = alloca %"class.cv::ximgproc::segmentation::Neighbour", align 4 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr43.i18 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr43.i18, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit
  %i.i = icmp eq i64 %i.cb, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40, !llvm.loop !613

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr43.i21.lcssa = phi i64 [ %.fr43.i18, %.lr.ph ], [ %.fr43.i, %bb.b ]
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr43.i21.lcssa, 12      ; 3 uses
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1                     ; 3 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.m
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i, %._crit_edge
  %.011.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.aq, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [12 x i8], ptr %0, i64 %.011.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.s, align 4, !tbaa !52
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !69 ; 2 uses
  %i.t = icmp slt i64 %.011.i.i, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.011.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [12 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !194
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !194
  %i.ad = fcmp olt float %i.aa, %i.ac
  %spec.select.i.i.i = select i1 %i.ad, i64 %i.x, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.af = getelementptr inbounds [12 x i8], ptr %0, i64 %.041.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !189
  %i.ag = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ag, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !614

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.011.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ah, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !189
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i, %.011.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi i64 [ %.01021.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.01021.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.01021.i.i.i.i = sdiv i64 %.01021.in.i.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01021.i.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !194
  %i.am = fcmp olt float %i.al, %.sroa.4.0.copyload.i.i
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !tbaa.struct !189
  %i.ao = icmp sgt i64 %.01021.i.i.i.i, %.011.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i, !llvm.loop !615

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.01021.i.i.i.i, %bb.f ], [ %.020.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i, ptr %i.ap, align 4, !tbaa !52
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 4, !tbaa !69
  %.not.i.i = icmp eq i64 %.011.i.i, 0
  %i.aq = add nsw i64 %.011.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !616

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i ], [ %storemerge19.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -12 ; 4 uses
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.ar, align 4, !tbaa !52
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !69 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = sdiv exact i64 %i.at, 12                ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = icmp sgt i64 %i.at, 24
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ay = shl i64 %.041.i.i.i.i, 1                ; 2 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [12 x i8], ptr %0, i64 %i.az
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bc = getelementptr inbounds [12 x i8], ptr %0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !194
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !194
  %i.bh = fcmp olt float %i.be, %i.bg
  %spec.select.i.i.i.i = select i1 %i.bh, i64 %i.bb, i64 %i.az ; 4 uses
  %i.bi = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bj = getelementptr inbounds [12 x i8], ptr %0, i64 %.041.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 12, i1 false), !tbaa.struct !189
  %i.bk = icmp slt i64 %spec.select.i.i.i.i, %i.aw
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !614

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bl = and i64 %i.au, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = add nsw i64 %i.au, -2
  %i.bo = ashr exact i64 %i.bn, 1
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bo
  br i1 %i.bp, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bq = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.br
  %i.bt = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false), !tbaa.struct !189
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.020.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.br, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.020.i.i.i.i.i = phi i64 [ %.01021.i.i910.i.i.i, %bb.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.01021.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.01021.i.i910.i.i.i = lshr i64 %.01021.in.i.i.i.i.i, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01021.i.i910.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !194
  %i.bx = fcmp olt float %i.bw, %.sroa.4.0.copyload.i.i.i
  br i1 %i.bx, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.by = getelementptr inbounds [12 x i8], ptr %0, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !189
  %.not11.i.i.i = icmp eq i64 %.01021.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !615

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bz = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i.i, ptr %i.bz, align 4, !tbaa !52
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !69
  %i.ca = icmp sgt i64 %i.at, 12
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !617

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1939 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02038 = phi i64 [ %i.cb, %bb.b ], [ %2, %.lr.ph ]
  %.fr43.i2137 = phi i64 [ %.fr43.i, %bb.b ], [ %.fr43.i18, %.lr.ph ]
  %i.cb = add nsw i64 %.02038, -1                 ; 3 uses
  %i.cc = udiv i64 %.fr43.i2137, 24
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.cc ; 5 uses
  %i.ce = getelementptr inbounds i8, ptr %storemerge1939, i64 -12 ; 4 uses
  %i.cf = load float, ptr %i.f, align 4, !tbaa !194 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !194 ; 3 uses
  %i.ci = fcmp olt float %i.cf, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %storemerge1939, i64 -4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !194 ; 4 uses
  br i1 %i.ci, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph40
  %i.cl = fcmp olt float %i.ch, %i.ck
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cm = fcmp olt float %i.cf, %i.ck
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph40
  %i.cn = fcmp olt float %i.cf, %i.ck
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.co = fcmp olt float %i.ch, %i.ck
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv8ximgproc12segmentation9NeighbourESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.v
end_hunk_1
