Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSLoader?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_T2_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 4 uses
  %4 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %.not29 = icmp slt i64 %i.d, %2
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %2, 4                       ; 2 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us
  %.sroa.025.030.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.025.030.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us, !llvm.loop !216

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit
  %i.i = phi i64 [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.025.030 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.025.030, i64 %.idx ; 4 uses
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.sroa.0.018.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.015.i, %.lr.ph.i.preheader ] ; 7 uses
  %.pn17.i = phi ptr [ %.sroa.0.018.i, %bb.g ], [ %.sroa.025.030, %.lr.ph.i.preheader ] ; 5 uses
  %i.k = load double, ptr %.sroa.0.018.i, align 8 ; 4 uses
  %i.l = load double, ptr %.sroa.025.030, align 8
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i, i64 16, i1 false)
  %i.n = ptrtoint ptr %.sroa.0.018.i to i64
  %i.o = sub i64 %i.n, %i.i                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 4                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %i.s = sub nsw i64 0, %i.p
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.030, i64 %i.o, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.o, 16
  br i1 %i.u, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.030, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.030, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.w = load double, ptr %.pn17.i, align 8
  %i.x = fcmp olt double %i.k, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 4 uses
  %.sroa.07.011.i.i = phi ptr [ %.sroa.0.012.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i, i64 16, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i, i64 -16 ; 2 uses
  %i.y = load double, ptr %.sroa.0.0.i.i, align 8
  %i.z = fcmp olt double %i.k, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !12

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i, %bb.f ], [ %.sroa.0.012.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.k, ptr %.sroa.07.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx5.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !13

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit: ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ab = sub i64 %i.a, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4
  %.not = icmp slt i64 %i.ac, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !216

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us, %bb.a
  %.sroa.025.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.us ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.loopexit ]
  %i.ad = icmp eq ptr %.sroa.025.0.lcssa, %1
  %.sroa.0.015.i7 = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 16 ; 2 uses
  %.not16.i8 = icmp eq ptr %.sroa.0.015.i7, %1
  %or.cond28 = select i1 %i.ad, i1 true, i1 %.not16.i8
  br i1 %or.cond28, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit24, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %._crit_edge, %bb.m
  %.sroa.0.018.i10 = phi ptr [ %.sroa.0.0.i17, %bb.m ], [ %.sroa.0.015.i7, %._crit_edge ] ; 7 uses
  %.pn17.i11 = phi ptr [ %.sroa.0.018.i10, %bb.m ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ae = load double, ptr %.sroa.0.018.i10, align 8 ; 4 uses
  %i.af = load double, ptr %.sroa.025.0.lcssa, align 8
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i9
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i10, i64 16, i1 false)
  %i.ah = ptrtoint ptr %.sroa.0.018.i10 to i64
  %i.ai = sub i64 %i.ah, %.lcssa                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 4                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.pn17.i11, i64 32
  %i.am = sub nsw i64 0, %i.aj
  %i.an = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.0.lcssa, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i23

bb.j:                                             ; preds = %bb.h
  %i.ao = icmp eq i64 %i.ai, 16
  br i1 %i.ao, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i23

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn17.i11, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.0.lcssa, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i23

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i23: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.025.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i9
  %.sroa.5.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %.pn17.i11, i64 24
  %.sroa.5.0.copyload.i.i13 = load i64, ptr %.sroa.5.0..sroa_idx.i.i12, align 8
  %i.aq = load double, ptr %.pn17.i11, align 8
  %i.ar = fcmp olt double %i.ae, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14

.lr.ph.i.i19:                                     ; preds = %bb.l, %.lr.ph.i.i19
  %.sroa.0.012.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn17.i11, %bb.l ] ; 4 uses
  %.sroa.07.011.i.i21 = phi ptr [ %.sroa.0.012.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.018.i10, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.011.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.012.i.i20, i64 16, i1 false)
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.012.i.i20, i64 -16 ; 2 uses
  %i.as = load double, ptr %.sroa.0.0.i.i22, align 8
  %i.at = fcmp olt double %i.ae, %i.as
  br i1 %i.at, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14, !llvm.loop !12

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14: ; preds = %.lr.ph.i.i19, %bb.l
  %.sroa.07.0.lcssa.i.i15 = phi ptr [ %.sroa.0.018.i10, %bb.l ], [ %.sroa.0.012.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store double %i.ae, ptr %.sroa.07.0.lcssa.i.i15, align 8
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i15, i64 8
  store i64 %.sroa.5.0.copyload.i.i13, ptr %.sroa.5.0..sroa_idx5.i.i16, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i23
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i10, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %.not.i18, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit24, label %.lr.ph.i9, !llvm.loop !13

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit24: ; preds = %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not47 = icmp slt i64 %i.e, %i.a
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 11 uses
  %.idx41 = shl i64 %3, 5                         ; 2 uses
  %.not42 = icmp eq i64 %.idx, %.idx41
  br i1 %.not42, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 16
  %i.g = icmp eq i64 %.idx, 16
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us
  %.049.us = phi ptr [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.033.048.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.033.048.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !31

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.049.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.048.us, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.049.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.049.us, ptr align 8 %.sroa.033.048.us, i64 %.idx, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.049.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %4 = getelementptr inbounds i8, ptr %.049.us, i64 %.idx
  %i.k = getelementptr inbounds i8, ptr %4, i64 %.idx ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.n, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !217

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit
  %.049 = phi ptr [ %i.aj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.033.048 = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.033.048, i64 %.idx ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.033.048, i64 %.idx41 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.v, %bb.g ], [ %.049, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.033.048, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.o, %.lr.ph.i.preheader ] ; 4 uses
  %i.q = load double, ptr %.sroa.010.018.i, align 8
  %i.r = load double, ptr %.sroa.014.019.i, align 8
  %i.s = fcmp olt double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.u, %bb.f ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.w = icmp ne ptr %.sroa.014.1.i, %i.o
  %i.x = icmp ne ptr %.sroa.010.1.i, %i.p
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !218

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = ptrtoint ptr %.sroa.014.1.i to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !31

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ac = icmp eq i64 %i.aa, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 3 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.af = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 16
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !31

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.ag, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i
  %i.ai = icmp eq i64 %i.ag, 16
  br i1 %i.ai, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ak = sub i64 %i.b, %i.ae
  %i.al = ashr exact i64 %i.ak, 4                 ; 2 uses
  %.not = icmp slt i64 %i.al, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !217

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us, %bb.a
  %.sroa.033.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %i.aj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ] ; 2 uses
  %.lcssa45 = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa45) ; 2 uses
  %.idx43 = shl nsw i64 %.sroa.speculated, 4
  %i.am = getelementptr inbounds i8, ptr %.sroa.033.0.lcssa, i64 %.idx43 ; 5 uses
  %i.an = icmp ne i64 %.sroa.speculated, 0
  %i.ao = icmp ne ptr %i.am, %1
  %or.cond17.i12 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond17.i12, label %.lr.ph.i18, label %.critedge.i13

.lr.ph.i18:                                       ; preds = %._crit_edge, %bb.p
  %.020.i19 = phi ptr [ %i.au, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i20 = phi ptr [ %.sroa.014.1.i23, %bb.p ], [ %.sroa.033.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i21 = phi ptr [ %.sroa.010.1.i22, %bb.p ], [ %i.am, %._crit_edge ] ; 4 uses
  %i.ap = load double, ptr %.sroa.010.018.i21, align 8
  %i.aq = load double, ptr %.sroa.014.019.i20, align 8
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.018.i21, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i21, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i19, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019.i20, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i20, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i22 = phi ptr [ %i.as, %bb.n ], [ %.sroa.010.018.i21, %bb.o ] ; 3 uses
  %.sroa.014.1.i23 = phi ptr [ %.sroa.014.019.i20, %bb.n ], [ %i.at, %bb.o ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i19, i64 16 ; 2 uses
  %i.av = icmp ne ptr %.sroa.014.1.i23, %i.am
  %i.aw = icmp ne ptr %.sroa.010.1.i22, %1
  %or.cond.i24 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.i24, label %.lr.ph.i18, label %.critedge.i13, !llvm.loop !218

.critedge.i13:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i14 = phi ptr [ %i.am, %._crit_edge ], [ %.sroa.010.1.i22, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i15 = phi ptr [ %.sroa.033.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i23, %bb.p ] ; 3 uses
  %.0.lcssa.i16 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.au, %bb.p ] ; 3 uses
  %i.ax = ptrtoint ptr %i.am to i64
  %i.ay = ptrtoint ptr %.sroa.014.0.lcssa.i15 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 16
  br i1 %i.ba, label %bb.q, label %bb.r, !prof !31

bb.q:                                             ; preds = %.critedge.i13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i16, ptr align 8 %.sroa.014.0.lcssa.i15, i64 %i.az, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i17

bb.r:                                             ; preds = %.critedge.i13
  %i.bb = icmp eq i64 %i.az, 16
  br i1 %i.bb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i17

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.0.lcssa.i15, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i17

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i17: ; preds = %bb.s, %bb.r, %bb.q
  %i.bc = getelementptr inbounds i8, ptr %.0.lcssa.i16, i64 %i.az ; 2 uses
  %i.bd = ptrtoint ptr %.sroa.010.0.lcssa.i14 to i64
  %i.be = sub i64 %i.b, %i.bd                     ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.t, label %bb.u, !prof !31

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr align 8 %.sroa.010.0.lcssa.i14, i64 %i.be, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit25

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i17
  %i.bg = icmp eq i64 %i.be, 16
  br i1 %i.bg, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit25

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.0.lcssa.i14, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit25

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit25: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIPN6Assimp4D3DS10aiFloatKeyEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not43 = icmp slt i64 %i.e, %i.a
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx37 = shl nsw i64 %3, 5                     ; 2 uses
  %.not38 = icmp eq i64 %.idx, %.idx37
  br i1 %.not38, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 16
  %i.i = icmp eq i64 %.idx, 16
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPN6Assimp4D3DS10aiFloatKeyEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us
  %.sroa.018.045.us = phi ptr [ %i.o, %_ZSt12__move_mergeIPN6Assimp4D3DS10aiFloatKeyEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.044.us = phi ptr [ %i.j, %_ZSt12__move_mergeIPN6Assimp4D3DS10aiFloatKeyEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.044.us, i64 %.idx ; 5 uses
end_hunk_0
begin_hunk_1_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_:bb.a
  %.sroa.5.i.i6 = alloca <{ %class.aiQuaterniont, i32, [4 x i8] }>, align 8 ; 4 uses
  %3 = alloca %struct.aiQuatKey, align 8          ; 4 uses
  %.sroa.5.i.i = alloca <{ %class.aiQuaterniont, i32, [4 x i8] }>, align 8 ; 4 uses
  %4 = alloca %struct.aiQuatKey, align 8          ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5
  %.not29 = icmp slt i64 %i.d, %2
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %2, 5                       ; 2 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us
  %.sroa.025.030.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.025.030.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us, !llvm.loop !231

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit
  %i.i = phi i64 [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.025.030 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.025.030, i64 %.idx ; 4 uses
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %.sroa.025.030, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.sroa.0.018.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.015.i, %.lr.ph.i.preheader ] ; 7 uses
  %.pn17.i = phi ptr [ %.sroa.0.018.i, %bb.g ], [ %.sroa.025.030, %.lr.ph.i.preheader ] ; 5 uses
  %i.k = load double, ptr %.sroa.0.018.i, align 8 ; 4 uses
  %i.l = load double, ptr %.sroa.025.030, align 8
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.018.i, i64 32, i1 false)
  %i.n = ptrtoint ptr %.sroa.0.018.i to i64
  %i.o = sub i64 %i.n, %i.i                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 5                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 64
  %i.s = sub nsw i64 0, %i.p
  %i.t = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.030, i64 %i.o, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.o, 32
  br i1 %i.u, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.030, i64 28, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.030, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false)
  %i.w = load double, ptr %.pn17.i, align 8
  %i.x = fcmp olt double %i.k, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.011.i.i, i64 28, i1 false)
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -32 ; 2 uses
  %i.y = load double, ptr %.sroa.0.0.i.i, align 8
  %i.z = fcmp olt double %i.k, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !16

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store double %i.k, ptr %.sroa.06.0.lcssa.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !17

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit: ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ab = sub i64 %i.a, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5
  %.not = icmp slt i64 %i.ac, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !231

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us, %bb.a
  %.sroa.025.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.us ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit.loopexit ]
  %i.ad = icmp eq ptr %.sroa.025.0.lcssa, %1
  %.sroa.0.015.i8 = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa, i64 32 ; 2 uses
  %.not16.i9 = icmp eq ptr %.sroa.0.015.i8, %1
  %or.cond28 = select i1 %i.ad, i1 true, i1 %.not16.i9
  br i1 %or.cond28, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit24, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %._crit_edge, %bb.m
  %.sroa.0.018.i11 = phi ptr [ %.sroa.0.0.i17, %bb.m ], [ %.sroa.0.015.i8, %._crit_edge ] ; 7 uses
  %.pn17.i12 = phi ptr [ %.sroa.0.018.i11, %bb.m ], [ %.sroa.025.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ae = load double, ptr %.sroa.0.018.i11, align 8 ; 4 uses
  %i.af = load double, ptr %.sroa.025.0.lcssa, align 8
  %i.ag = fcmp olt double %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i10
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.018.i11, i64 32, i1 false)
  %i.ah = ptrtoint ptr %.sroa.0.018.i11 to i64
  %i.ai = sub i64 %i.ah, %.lcssa                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 5                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.pn17.i12, i64 64
  %i.am = sub nsw i64 0, %i.aj
  %i.an = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.025.0.lcssa, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i23

bb.j:                                             ; preds = %bb.h
  %i.ao = icmp eq i64 %i.ai, 32
  br i1 %i.ao, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i23

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn17.i12, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ap, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.0.lcssa, i64 28, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i23

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i23: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.025.0.lcssa, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i6)
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.pn17.i12, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i13, i64 24, i1 false)
  %i.aq = load double, ptr %.pn17.i12, align 8
  %i.ar = fcmp olt double %i.ae, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14

.lr.ph.i.i19:                                     ; preds = %bb.l, %.lr.ph.i.i19
  %.sroa.0.011.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn17.i12, %bb.l ] ; 4 uses
  %.sroa.06.010.i.i21 = phi ptr [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.018.i11, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.06.010.i.i21, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.0.011.i.i20, i64 28, i1 false)
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i20, i64 -32 ; 2 uses
  %i.as = load double, ptr %.sroa.0.0.i.i22, align 8
  %i.at = fcmp olt double %i.ae, %i.as
  br i1 %i.at, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14, !llvm.loop !16

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14: ; preds = %.lr.ph.i.i19, %bb.l
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.018.i11, %bb.l ], [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store double %i.ae, ptr %.sroa.06.0.lcssa.i.i15, align 8
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx5.i.i16, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i6, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i6)
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i14, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i23
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i11, i64 32 ; 2 uses
  %.not.i18 = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %.not.i18, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit24, label %.lr.ph.i10, !llvm.loop !17

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit24: ; preds = %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_lNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %.not47 = icmp slt i64 %i.e, %i.a
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 5                           ; 11 uses
  %.idx41 = shl i64 %3, 6                         ; 2 uses
  %.not42 = icmp eq i64 %.idx, %.idx41
  br i1 %.not42, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 32
  %i.g = icmp eq i64 %.idx, 32
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us
  %.049.us = phi ptr [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.033.048.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.033.048.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !31

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.049.us, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.033.048.us, i64 28, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.049.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, ptr noundef nonnull align 8 dereferenceable(28) %i.h, i64 28, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.049.us, ptr align 8 %.sroa.033.048.us, i64 %.idx, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.049.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %4 = getelementptr inbounds i8, ptr %.049.us, i64 %.idx
  %i.k = getelementptr inbounds i8, ptr %4, i64 %.idx ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = ashr exact i64 %i.m, 5                   ; 2 uses
  %.not.us = icmp slt i64 %i.n, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !232

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit
  %.049 = phi ptr [ %i.aj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.033.048 = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.033.048, i64 %.idx ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.033.048, i64 %.idx41 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.v, %bb.g ], [ %.049, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.033.048, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.o, %.lr.ph.i.preheader ] ; 4 uses
  %i.q = load double, ptr %.sroa.010.018.i, align 8
  %i.r = load double, ptr %.sroa.014.019.i, align 8
  %i.s = fcmp olt double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.020.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.010.018.i, i64 28, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 32
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.020.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.014.019.i, i64 28, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.u, %bb.f ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.020.i, i64 32 ; 4 uses
  %i.w = icmp ne ptr %.sroa.014.1.i, %i.o
  %i.x = icmp ne ptr %.sroa.010.1.i, %i.p
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !233

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = ptrtoint ptr %.sroa.014.1.i to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 32
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !31

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ac = icmp eq i64 %i.aa, 32
  br i1 %i.ac, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.014.1.i, i64 28, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 3 uses
  %i.ae = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.af = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 32
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !31

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.ag, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i
  %i.ai = icmp eq i64 %i.ag, 32
  br i1 %i.ai, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.010.1.i, i64 28, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ak = sub i64 %i.b, %i.ae
  %i.al = ashr exact i64 %i.ak, 5                 ; 2 uses
  %.not = icmp slt i64 %i.al, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !232

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us, %bb.a
  %.sroa.033.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %i.aj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit ] ; 2 uses
  %.lcssa45 = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa45) ; 2 uses
  %.idx43 = shl nsw i64 %.sroa.speculated, 5
  %i.am = getelementptr inbounds i8, ptr %.sroa.033.0.lcssa, i64 %.idx43 ; 5 uses
  %i.an = icmp ne i64 %.sroa.speculated, 0
  %i.ao = icmp ne ptr %i.am, %1
  %or.cond17.i12 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond17.i12, label %.lr.ph.i18, label %.critedge.i13

.lr.ph.i18:                                       ; preds = %._crit_edge, %bb.p
  %.020.i19 = phi ptr [ %i.au, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i20 = phi ptr [ %.sroa.014.1.i23, %bb.p ], [ %.sroa.033.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i21 = phi ptr [ %.sroa.010.1.i22, %bb.p ], [ %i.am, %._crit_edge ] ; 4 uses
  %i.ap = load double, ptr %.sroa.010.018.i21, align 8
  %i.aq = load double, ptr %.sroa.014.019.i20, align 8
  %i.ar = fcmp olt double %i.ap, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.020.i19, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.010.018.i21, i64 28, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i21, i64 32
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.020.i19, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.014.019.i20, i64 28, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i20, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i22 = phi ptr [ %i.as, %bb.n ], [ %.sroa.010.018.i21, %bb.o ] ; 3 uses
  %.sroa.014.1.i23 = phi ptr [ %.sroa.014.019.i20, %bb.n ], [ %i.at, %bb.o ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i19, i64 32 ; 2 uses
  %i.av = icmp ne ptr %.sroa.014.1.i23, %i.am
  %i.aw = icmp ne ptr %.sroa.010.1.i22, %1
  %or.cond.i24 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.i24, label %.lr.ph.i18, label %.critedge.i13, !llvm.loop !233

.critedge.i13:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i14 = phi ptr [ %i.am, %._crit_edge ], [ %.sroa.010.1.i22, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i15 = phi ptr [ %.sroa.033.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i23, %bb.p ] ; 3 uses
  %.0.lcssa.i16 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.au, %bb.p ] ; 3 uses
  %i.ax = ptrtoint ptr %i.am to i64
  %i.ay = ptrtoint ptr %.sroa.014.0.lcssa.i15 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 32
  br i1 %i.ba, label %bb.q, label %bb.r, !prof !31

bb.q:                                             ; preds = %.critedge.i13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i16, ptr align 8 %.sroa.014.0.lcssa.i15, i64 %i.az, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i17

bb.r:                                             ; preds = %.critedge.i13
  %i.bb = icmp eq i64 %i.az, 32
  br i1 %i.bb, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i17

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.lcssa.i16, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.014.0.lcssa.i15, i64 28, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i17

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i17: ; preds = %bb.s, %bb.r, %bb.q
  %i.bc = getelementptr inbounds i8, ptr %.0.lcssa.i16, i64 %i.az ; 2 uses
  %i.bd = ptrtoint ptr %.sroa.010.0.lcssa.i14 to i64
  %i.be = sub i64 %i.b, %i.bd                     ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 32
  br i1 %i.bf, label %bb.t, label %bb.u, !prof !31

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr align 8 %.sroa.010.0.lcssa.i14, i64 %i.be, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit25

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_ET0_T_S9_S8_.exit.i17
  %i.bg = icmp eq i64 %i.be, 32
  br i1 %i.bg, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit25

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.010.0.lcssa.i14, i64 28, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit25

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_NS0_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit25: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEElNS2_5__ops15_Iter_less_iterEEvT_SA_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %.not43 = icmp slt i64 %i.e, %i.a
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 5                           ; 10 uses
  %.idx37 = shl nsw i64 %3, 6                     ; 2 uses
  %.not38 = icmp eq i64 %.idx, %.idx37
  br i1 %.not38, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 32
  %i.i = icmp eq i64 %.idx, 32
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us
  %.sroa.018.045.us = phi ptr [ %i.o, %_ZSt12__move_mergeIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.044.us = phi ptr [ %i.j, %_ZSt12__move_mergeIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEENS2_5__ops15_Iter_less_iterEET0_T_SB_SB_SB_SA_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.044.us, i64 %.idx ; 5 uses
end_hunk_1
