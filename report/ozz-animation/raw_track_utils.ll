Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_track_utils?download=true
inline.NumInlined: 155
inline.NumDeleted: 120
begin_hunk_0_@_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat3TrackEEEbRKT_fPNS4_9ValueTypeE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !39
  %i.y = fcmp olt float %i.x, %1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aa = xor i64 %i.u, -1
  %i.ab = add nsw i64 %.017.i.i.i, %i.aa
  %.112.i.i.i = select i1 %i.y, ptr %i.z, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.y, i64 %i.ab, i64 %i.u ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !32

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !39
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.ad = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -20
  %i.af = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39 ; 2 uses
  %i.ah = fsub float %1, %i.ag
  %i.ai = fsub float %i.ad, %i.ag
  %i.aj = fdiv float %i.ah, %i.ai                 ; 3 uses
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = fcmp olt float %i.aj, 1.000000e+00
  %or.cond.i.i = and i1 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -12 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -4
  %.sroa.3.0.copyload.i.i = load float, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !13
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %i.ap = load <2 x float>, ptr %i.ao, align 4, !tbaa !13
  %i.aq = load <2 x float>, ptr %i.an, align 4, !tbaa !13 ; 2 uses
  %i.ar = fsub <2 x float> %i.ap, %i.aq
  %i.as = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.at, <2 x float> %i.aq)
  %i.av = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !41
  %i.ax = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !41 ; 2 uses
  %i.az = fsub float %i.aw, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.aj, float %i.ay)
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.09.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.09.0.copyload.i.i, %bb.h ], [ %i.au, %bb.i ]
  %.sroa.3.0.copyload.pn.i.i = phi float [ %.sroa.3.0.copyload.i.i, %bb.h ], [ %i.ba, %bb.i ]
  %.pn.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.09.0.copyload.pn.i.i, 0
  %.fca.1.insert.merged.i.i = insertvalue { <2 x float>, float } %.pn.i.i, float %.sroa.3.0.copyload.pn.i.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, float } [ %.fca.1.insert.merged.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 1
  store <2 x float> %.fca.0.extract, ptr %2, align 4, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float3EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat4TrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float4EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !45    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !tbaa !46 ; 5 uses
  %i.c = ptrtoint ptr %.val to i64
  %i.d = icmp eq ptr %.val5, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !49 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.h, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !13
  %i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %i.j = insertvalue { <2 x float>, <2 x float> } %i.i, <2 x float> %.sroa.5.0.copyload.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %.val5, i64 -20
  %i.l = load float, ptr %i.k, align 4, !tbaa !49
  %i.m = fcmp ult float %1, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.val5, i64 -16
  %.sroa.0.0.copyload19.i = load <2 x float>, ptr %i.n, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds i8, ptr %.val5, i64 -8
  %.sroa.5.0.copyload21.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx20.i, align 4, !tbaa !13
  %i.o = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload19.i, 0
  %i.p = insertvalue { <2 x float>, <2 x float> } %i.o, <2 x float> %.sroa.5.0.copyload21.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %.val5 to i64
  %i.r = sub i64 %i.q, %i.c                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.g
  %i.t = udiv exact i64 %i.r, 24
  br label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.t, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.u = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !49
  %i.y = fcmp olt float %i.x, %1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = xor i64 %i.u, -1
  %i.ab = add nsw i64 %.017.i.i.i, %i.aa
  %.112.i.i.i = select i1 %i.y, ptr %i.z, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.y, i64 %i.ab, i64 %i.u ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !42

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !49
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.ad = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -24
  %i.af = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -20
  %i.ag = load float, ptr %i.af, align 4, !tbaa !49 ; 2 uses
  %i.ah = fsub float %1, %i.ag
  %i.ai = fsub float %i.ad, %i.ag
  %i.aj = fdiv float %i.ah, %i.ai                 ; 2 uses
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = fcmp olt float %i.aj, 1.000000e+00
  %or.cond.i.i = and i1 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %.sroa.3.0.copyload.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !13
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %i.ap = load <2 x float>, ptr %i.ao, align 4, !tbaa !13
  %i.aq = load <2 x float>, ptr %i.an, align 4, !tbaa !13 ; 2 uses
  %i.ar = fsub <2 x float> %i.ap, %i.aq
  %i.as = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.at, <2 x float> %i.aq)
  %i.av = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  %i.aw = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !13
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.az = fsub <2 x float> %i.ax, %i.ay
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.at, <2 x float> %i.ay)
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.0.0.copyload.i.i, %bb.h ], [ %i.au, %bb.i ]
  %.sroa.3.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.3.0.copyload.i.i, %bb.h ], [ %i.ba, %bb.i ]
  %.pn.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.pn.i.i, 0
  %.fca.1.insert.merged.i.i = insertvalue { <2 x float>, <2 x float> } %.pn.i.i, <2 x float> %.sroa.3.0.copyload.pn.i.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.merged.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.bb = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0
  %i.bc = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1
  store <2 x float> %i.bb, ptr %2, align 4, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.bc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float4EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_18RawQuaternionTrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !54    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !tbaa !55 ; 5 uses
  %i.c = ptrtoint ptr %.val to i64
  %i.d = icmp eq ptr %.val5, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !58 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.h, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !13
  %i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %i.j = insertvalue { <2 x float>, <2 x float> } %i.i, <2 x float> %.sroa.5.0.copyload.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %.val5, i64 -20
  %i.l = load float, ptr %i.k, align 4, !tbaa !58
  %i.m = fcmp ult float %1, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.val5, i64 -16
  %.sroa.0.0.copyload19.i = load <2 x float>, ptr %i.n, align 4, !tbaa !13
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds i8, ptr %.val5, i64 -8
  %.sroa.5.0.copyload21.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx20.i, align 4, !tbaa !13
  %i.o = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload19.i, 0
  %i.p = insertvalue { <2 x float>, <2 x float> } %i.o, <2 x float> %.sroa.5.0.copyload21.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %.val5 to i64
  %i.r = sub i64 %i.q, %i.c                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.g
  %i.t = udiv exact i64 %i.r, 24
  br label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.t, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.u = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !58
  %i.y = fcmp olt float %i.x, %1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = xor i64 %i.u, -1
  %i.ab = add nsw i64 %.017.i.i.i, %i.aa
  %.112.i.i.i = select i1 %i.y, ptr %i.z, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.y, i64 %i.ab, i64 %i.u ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !51

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.ad = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -24
  %i.af = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -20
  %i.ag = load float, ptr %i.af, align 4, !tbaa !58 ; 2 uses
  %i.ah = fsub float %1, %i.ag
  %i.ai = fsub float %i.ad, %i.ag
  %i.aj = fdiv float %i.ah, %i.ai                 ; 2 uses
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = fcmp olt float %i.aj, 1.000000e+00
  %or.cond.i.i = and i1 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %.sroa.3.0.copyload.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !13
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ao, align 4, !tbaa !13 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  %.sroa.10.0.copyload.i.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !tbaa !13 ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 0
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !13 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload.i.i, %i.ap
  %i.aq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ar = extractelement <2 x float> %i.ap, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %.sroa.0.0.vec.extract.i.i, float %i.aq)
  %i.at = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %.sroa.10.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.copyload.i.i, i64 0
  %i.au = load <2 x float>, ptr %i.at, align 4, !tbaa !13 ; 4 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %.sroa.10.8.vec.extract.i.i, float %i.as)
  %.sroa.10.12.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.copyload.i.i, i64 1
  %i.ax = extractelement <2 x float> %i.au, i64 1
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %.sroa.10.12.vec.extract.i.i, float %i.aw)
  %i.az = fcmp olt float %i.ay, 0.000000e+00      ; 2 uses
  %i.ba = fneg <2 x float> %.sroa.0.0.copyload.i.i
  %i.bb = fneg <2 x float> %.sroa.10.0.copyload.i.i
  %i.bc = select i1 %i.az, <2 x float> %i.bb, <2 x float> %.sroa.10.0.copyload.i.i
  %i.bd = select i1 %i.az, <2 x float> %i.ba, <2 x float> %.sroa.0.0.copyload.i.i
  %i.be = fsub <2 x float> %i.bd, %i.ap
  %i.bf = fsub <2 x float> %i.bc, %i.au
  %i.bg = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bh, <2 x float> %i.au) ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bk = extractelement <2 x float> %i.bi, i64 1 ; 2 uses
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bh, <2 x float> %i.ap) ; 4 uses
  %foldExtExtBinop9 = fmul <2 x float> %i.bl, %i.bl
  %i.bm = extractelement <2 x float> %foldExtExtBinop9, i64 1
  %i.bn = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bm)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bp)
  %i.br = tail call noundef float @sqrtf(float noundef %i.bq) #5
  %i.bs = fdiv float 1.000000e+00, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fmul <2 x float> %i.bl, %i.bu
  %i.bw = fmul <2 x float> %i.bi, %i.bu
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.013.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.013.0.copyload.i.i, %bb.h ], [ %i.bv, %bb.i ]
  %.sroa.3.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.3.0.copyload.i.i, %bb.h ], [ %i.bw, %bb.i ]
  %.pn.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.013.0.copyload.pn.i.i, 0
  %.fca.1.insert.merged.i.i = insertvalue { <2 x float>, <2 x float> } %.pn.i.i, <2 x float> %.sroa.3.0.copyload.pn.i.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.merged.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ { <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %bb.b ] ; 2 uses
  %i.bx = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0
  %i.by = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1
  store <2 x float> %i.bx, ptr %2, align 4, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.by, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSN3ozz9animation7offline21RawTrackInterpolation5ValueE", !5, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !12}
!15 = !{!"p1 _ZTSN3ozz9animation7offline16RawTrackKeyframeIfEE", !9, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeIfEENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!"_ZTSN3ozz9animation7offline16RawTrackKeyframeIfEE", !10, i64 0, !11, i64 4, !11, i64 8}
!20 = !{!19, !11, i64 4}
!21 = !{!19, !11, i64 8}
!22 = !{!19, !10, i64 0}
!23 = distinct !{!23, !12}
!24 = !{!"p1 _ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math6Float2EEE", !9, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEENS0_12StdAllocatorIS6_EEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !24, i64 8}
!28 = !{!"_ZTSN3ozz4math6Float2E", !11, i64 0, !11, i64 4}
!29 = !{!"_ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math6Float2EEE", !10, i64 0, !11, i64 4, !28, i64 8}
!30 = !{!29, !11, i64 4}
!31 = !{!29, !10, i64 0}
!32 = distinct !{!32, !12}
!33 = !{!"p1 _ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math6Float3EEE", !9, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEENS0_12StdAllocatorIS6_EEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 0}
!36 = !{!34, !33, i64 8}
!37 = !{!"_ZTSN3ozz4math6Float3E", !11, i64 0, !11, i64 4, !11, i64 8}
!38 = !{!"_ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math6Float3EEE", !10, i64 0, !11, i64 4, !37, i64 8}
!39 = !{!38, !11, i64 4}
!40 = !{!38, !10, i64 0}
!41 = !{!37, !11, i64 8}
!42 = distinct !{!42, !12}
!43 = !{!"p1 _ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math6Float4EEE", !9, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEENS0_12StdAllocatorIS6_EEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !43, i64 8}
!47 = !{!"_ZTSN3ozz4math6Float4E", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!48 = !{!"_ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math6Float4EEE", !10, i64 0, !11, i64 4, !47, i64 8}
!49 = !{!48, !11, i64 4}
!50 = !{!48, !10, i64 0}
!51 = distinct !{!51, !12}
!52 = !{!"p1 _ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math10QuaternionEEE", !9, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEENS0_12StdAllocatorIS6_EEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 0}
!55 = !{!53, !52, i64 8}
!56 = !{!"_ZTSN3ozz4math10QuaternionE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!57 = !{!"_ZTSN3ozz9animation7offline16RawTrackKeyframeINS_4math10QuaternionEEE", !10, i64 0, !11, i64 4, !56, i64 8}
!58 = !{!57, !11, i64 4}
!59 = !{!57, !10, i64 0}
end_hunk_0
