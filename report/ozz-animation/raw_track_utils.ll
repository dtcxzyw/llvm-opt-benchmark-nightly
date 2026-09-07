Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_track_utils?download=true
inline.NumInlined: 155
inline.NumDeleted: 120
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3ozz9animation7offline11SampleTrackINS1_13RawFloatTrackEEEbRKT_fPNS4_9ValueTypeE = comdat any

$_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat2TrackEEEbRKT_fPNS4_9ValueTypeE = comdat any

$_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat3TrackEEEbRKT_fPNS4_9ValueTypeE = comdat any

$_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat4TrackEEEbRKT_fPNS4_9ValueTypeE = comdat any

$_ZN3ozz9animation7offline11SampleTrackINS1_18RawQuaternionTrackEEEbRKT_fPNS4_9ValueTypeE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_13RawFloatTrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackIfE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !17    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !tbaa !18 ; 4 uses
  %3 = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val to i64
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.d = icmp eq ptr %.val5, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeIfEENS_12StdAllocatorIS6_EEEEENT_10value_type9ValueTypeERKSA_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !20 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeIfEENS_12StdAllocatorIS6_EEEEENT_10value_type9ValueTypeERKSA_f.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %.val5, i64 -8
  %i.k = load float, ptr %i.j, align 4, !tbaa !20
  %i.l = fcmp ult float %1, %i.k
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %.val5, i64 -4
  %i.n = load float, ptr %i.m, align 4, !tbaa !21
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeIfEENS_12StdAllocatorIS6_EEEEENT_10value_type9ValueTypeERKSA_f.exit

bb.g:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %4, 0
  br i1 %i.o, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.g
  %i.p = udiv exact i64 %4, 12
  br label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.p, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.q = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %.01116.i.i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !20
  %i.u = fcmp olt float %i.t, %1                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.w = xor i64 %i.q, -1
  %i.x = add nsw i64 %.017.i.i.i, %i.w
  %.112.i.i.i = select i1 %i.u, ptr %i.v, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.u, i64 %i.x, i64 %i.q  ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, !llvm.loop !14

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeIfEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !20
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.z = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.loopexit.i ] ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20 ; 2 uses
  %i.ad = fsub float %1, %i.ac
  %i.ae = fsub float %i.z, %i.ac
  %i.af = fdiv float %i.ad, %i.ae                 ; 2 uses
  %.val.i = load i32, ptr %i.aa, align 4, !tbaa !22
  %i.ag = getelementptr i8, ptr %.011.lcssa.i.i.i, i64 -4
  %.val21.i = load float, ptr %i.ag, align 4      ; 3 uses
  %i.ah = getelementptr i8, ptr %.011.lcssa.i.i.i, i64 8
  %.val22.i = load float, ptr %i.ah, align 4
  %i.ai = icmp eq i32 %.val.i, 0
  %i.aj = fcmp olt float %i.af, 1.000000e+00
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %i.ak = fsub float %.val22.i, %.val21.i
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.af, float %.val21.i)
  %.0.i.i = select i1 %or.cond.i.i, float %.val21.i, float %i.al
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeIfEENS_12StdAllocatorIS6_EEEEENT_10value_type9ValueTypeERKSA_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeIfEENS_12StdAllocatorIS6_EEEEENT_10value_type9ValueTypeERKSA_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.0.i = phi float [ %.0.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeIfEES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i ], [ %i.i, %bb.d ], [ %i.n, %bb.f ], [ 0.000000e+00, %bb.b ]
  store float %.0.i, ptr %2, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeIfEENS_12StdAllocatorIS6_EEEEENT_10value_type9ValueTypeERKSA_f.exit
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackIfE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat2TrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float2EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !26    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !tbaa !27 ; 4 uses
  %3 = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val to i64
  %4 = sub i64 %3, %i.c
  %5 = ashr exact i64 %4, 4                       ; 2 uses
  %i.d = icmp eq ptr %.val5, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !30 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.h, align 4
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %.val5, i64 -12
  %i.j = load float, ptr %i.i, align 4, !tbaa !30
  %i.k = fcmp ult float %1, %i.j
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %.val5, i64 -8
  %.sroa.0.0.copyload19.i = load <2 x float>, ptr %i.l, align 4
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.g:                                             ; preds = %bb.e
  %i.m = icmp sgt i64 %5, 0
  br i1 %i.m, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.g, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %5, %bb.g ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %bb.g ] ; 2 uses
  %i.n = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !30
  %i.r = fcmp olt float %i.q, %1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = xor i64 %i.n, -1
  %i.u = add nsw i64 %.017.i.i.i, %i.t
  %.112.i.i.i = select i1 %i.r, ptr %i.s, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.r, i64 %i.u, i64 %i.n  ; 2 uses
  %i.v = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !23

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !30
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.w = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16
  %i.y = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -12
  %i.z = load float, ptr %i.y, align 4, !tbaa !30 ; 2 uses
  %i.aa = fsub float %1, %i.z
  %i.ab = fsub float %i.w, %i.z
  %i.ac = fdiv float %i.aa, %i.ab                 ; 2 uses
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !31
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = fcmp olt float %i.ac, 1.000000e+00
  %or.cond.i.i = and i1 %i.ae, %i.af
  %i.ag = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ag, align 4
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float2EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.ah = getelementptr i8, ptr %.011.lcssa.i.i.i, i64 8
  %i.ai = load <2 x float>, ptr %i.ah, align 4
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.am, <2 x float> %i.aj)
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.sroa.0.0.i = phi <2 x float> [ zeroinitializer, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload19.i, %bb.f ], [ %.sroa.0.0.copyload.i.i, %bb.h ], [ %i.an, %bb.i ]
  store <2 x float> %.sroa.0.0.i, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float2EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float2EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3ozz9animation7offline11SampleTrackINS1_14RawFloat3TrackEEEbRKT_fPNS4_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math6Float3EE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !35    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !36 ; 5 uses
  %3 = ptrtoint ptr %.val6 to i64
  %i.c = ptrtoint ptr %.val to i64
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.d = icmp eq ptr %.val6, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !39 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.025.0.copyload.i = load <2 x float>, ptr %i.h, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !13
  %i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.025.0.copyload.i, 0
  %i.j = insertvalue { <2 x float>, float } %i.i, float %.sroa.5.0.copyload.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %.val6, i64 -16
  %i.l = load float, ptr %i.k, align 4, !tbaa !39
  %i.m = fcmp ult float %1, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.val6, i64 -12
  %.sroa.025.0.copyload26.i = load <2 x float>, ptr %i.n, align 4
  %.sroa.5.0..sroa_idx27.i = getelementptr inbounds i8, ptr %.val6, i64 -4
  %.sroa.5.0.copyload28.i = load float, ptr %.sroa.5.0..sroa_idx27.i, align 4, !tbaa !13
  %i.o = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.025.0.copyload26.i, 0
  %i.p = insertvalue { <2 x float>, float } %i.o, float %.sroa.5.0.copyload28.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp sgt i64 %4, 0
  br i1 %i.q, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.g
  %i.r = udiv exact i64 %4, 20
  br label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.r, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.s = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %.01116.i.i.i, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !39
  %i.w = fcmp olt float %i.v, %1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.y = xor i64 %i.s, -1
  %i.z = add nsw i64 %.017.i.i.i, %i.y
  %.112.i.i.i = select i1 %i.w, ptr %i.x, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.w, i64 %i.z, i64 %i.s  ; 2 uses
  %i.aa = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !32

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !39
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.ab = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 7 uses
  %i.ac = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -20
  %i.ad = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !39 ; 2 uses
  %i.af = fsub float %1, %i.ae
  %i.ag = fsub float %i.ab, %i.ae
  %i.ah = fdiv float %i.af, %i.ag                 ; 3 uses
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = fcmp olt float %i.ah, 1.000000e+00
  %or.cond.i.i = and i1 %i.aj, %i.ak
  %i.al = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -12 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.al, align 4
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -4
  %.sroa.3.0.copyload.i.i = load float, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !13
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float3EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !13
  %i.ao = load <2 x float>, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.ap = fsub <2 x float> %i.an, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ar, <2 x float> %i.ao)
  %i.at = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  %i.au = load float, ptr %i.at, align 4, !tbaa !41
  %i.av = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.ax = fsub float %i.au, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ah, float %i.aw)
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.09.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.09.0.copyload.i.i, %bb.h ], [ %i.as, %bb.i ]
  %.sroa.3.0.copyload.pn.i.i = phi float [ %.sroa.3.0.copyload.i.i, %bb.h ], [ %i.ay, %bb.i ]
  %.pn.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.09.0.copyload.pn.i.i, 0
  %.fca.1.insert.merged.i.i = insertvalue { <2 x float>, float } %.pn.i.i, float %.sroa.3.0.copyload.pn.i.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float3EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, float } [ %.fca.1.insert.merged.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float3EEEEENT_9ValueTypeERKS8_SB_f.exit.i ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i, 1
  store <2 x float> %.fca.0.extract, ptr %2, align 4
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
  %3 = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val to i64
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.d = icmp eq ptr %.val5, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !49 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.h, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4
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
  %.sroa.0.0.copyload19.i = load <2 x float>, ptr %i.n, align 4
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds i8, ptr %.val5, i64 -8
  %.sroa.5.0.copyload21.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx20.i, align 4
  %i.o = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload19.i, 0
  %i.p = insertvalue { <2 x float>, <2 x float> } %i.o, <2 x float> %.sroa.5.0.copyload21.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp sgt i64 %4, 0
  br i1 %i.q, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.g
  %i.r = udiv exact i64 %4, 24
  br label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.r, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.s = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i.i, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !49
  %i.w = fcmp olt float %i.v, %1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = xor i64 %i.s, -1
  %i.z = add nsw i64 %.017.i.i.i, %i.y
  %.112.i.i.i = select i1 %i.w, ptr %i.x, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.w, i64 %i.z, i64 %i.s  ; 2 uses
  %i.aa = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !42

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !49
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.ab = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 7 uses
  %i.ac = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -24
  %i.ad = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !49 ; 2 uses
  %i.af = fsub float %1, %i.ae
  %i.ag = fsub float %i.ab, %i.ae
  %i.ah = fdiv float %i.af, %i.ag                 ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !50
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = fcmp olt float %i.ah, 1.000000e+00
  %or.cond.i.i = and i1 %i.aj, %i.ak
  %i.al = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.al, align 4
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %.sroa.3.0.copyload.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i, align 4
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math6Float4EEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !13
  %i.ao = load <2 x float>, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %i.ap = fsub <2 x float> %i.an, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ar, <2 x float> %i.ao)
  %i.at = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  %i.au = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %i.av = load <2 x float>, ptr %i.at, align 4, !tbaa !13
  %i.aw = load <2 x float>, ptr %i.au, align 4, !tbaa !13 ; 2 uses
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ar, <2 x float> %i.aw)
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.0.0.copyload.i.i, %bb.h ], [ %i.as, %bb.i ]
  %.sroa.3.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.3.0.copyload.i.i, %bb.h ], [ %i.ay, %bb.i ]
  %.pn.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.pn.i.i, 0
  %.fca.1.insert.merged.i.i = insertvalue { <2 x float>, <2 x float> } %.pn.i.i, <2 x float> %.sroa.3.0.copyload.pn.i.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math6Float4EEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.merged.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math6Float4EEEEENT_9ValueTypeERKS8_SB_f.exit.i ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.az = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0
  %i.ba = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1
  store <2 x float> %i.az, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.ba, ptr %.sroa.4.0..sroa_idx, align 4
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
  %3 = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val to i64
  %4 = sub i64 %3, %i.c                           ; 2 uses
  %i.d = icmp eq ptr %.val5, %.val
  br i1 %i.d, label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !58 ; 2 uses
  %i.g = fcmp ugt float %1, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.h, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 4
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
  %.sroa.0.0.copyload19.i = load <2 x float>, ptr %i.n, align 4
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds i8, ptr %.val5, i64 -8
  %.sroa.5.0.copyload21.i = load <2 x float>, ptr %.sroa.5.0..sroa_idx20.i, align 4
  %i.o = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload19.i, 0
  %i.p = insertvalue { <2 x float>, <2 x float> } %i.o, <2 x float> %.sroa.5.0.copyload21.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp sgt i64 %4, 0
  br i1 %i.q, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.g
  %i.r = udiv exact i64 %4, 24
  br label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.r, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val, %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.s = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.01116.i.i.i, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !58
  %i.w = fcmp olt float %i.v, %1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = xor i64 %i.s, -1
  %i.z = add nsw i64 %.017.i.i.i, %i.y
  %.112.i.i.i = select i1 %i.w, ptr %i.x, ptr %.01116.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %i.w, i64 %i.z, i64 %i.s  ; 2 uses
  %i.aa = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, !llvm.loop !51

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i: ; preds = %_ZSt9__advanceIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 4
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  br label %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i

_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i: ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i, %bb.g
  %i.ab = phi float [ %i.f, %bb.g ], [ %.pre.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ]
  %.011.lcssa.i.i.i = phi ptr [ %.val, %bb.g ], [ %.112.i.i.i, %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.loopexit.i ] ; 7 uses
  %i.ac = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -24
  %i.ad = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !58 ; 2 uses
  %i.af = fsub float %1, %i.ae
  %i.ag = fsub float %i.ab, %i.ae
  %i.ah = fdiv float %i.af, %i.ag                 ; 2 uses
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = fcmp olt float %i.ah, 1.000000e+00
  %or.cond.i.i = and i1 %i.aj, %i.ak
  %i.al = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -16 ; 2 uses
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.al, align 4
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %.sroa.3.0.copyload.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i, align 4
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i

bb.i:                                             ; preds = %_ZSt11lower_boundIPKN3ozz9animation7offline16RawTrackKeyframeINS0_4math10QuaternionEEES6_PFbRS7_S9_EET_SC_SC_RKT0_T1_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.am, align 4 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i, i64 16
  %.sroa.10.0.copyload.i.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i.i, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 0
  %i.an = load <2 x float>, ptr %i.al, align 4, !tbaa !13 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload.i.i, %i.an
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = extractelement <2 x float> %i.an, i64 0
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %.sroa.0.0.vec.extract.i.i, float %i.ao)
  %i.ar = getelementptr inbounds i8, ptr %.011.lcssa.i.i.i, i64 -8
  %.sroa.10.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.copyload.i.i, i64 0
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !13 ; 4 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.10.8.vec.extract.i.i, float %i.aq)
  %.sroa.10.12.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.copyload.i.i, i64 1
  %i.av = extractelement <2 x float> %i.as, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %.sroa.10.12.vec.extract.i.i, float %i.au)
  %i.ax = fcmp olt float %i.aw, 0.000000e+00      ; 2 uses
  %i.ay = fneg <2 x float> %.sroa.0.0.copyload.i.i
  %i.az = fneg <2 x float> %.sroa.10.0.copyload.i.i
  %i.ba = select i1 %i.ax, <2 x float> %i.az, <2 x float> %.sroa.10.0.copyload.i.i
  %i.bb = select i1 %i.ax, <2 x float> %i.ay, <2 x float> %.sroa.0.0.copyload.i.i
  %i.bc = fsub <2 x float> %i.bb, %i.an
  %i.bd = fsub <2 x float> %i.ba, %i.as
  %i.be = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.as) ; 3 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bi = extractelement <2 x float> %i.bg, i64 1 ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bf, <2 x float> %i.an) ; 4 uses
  %foldExtExtBinop9 = fmul <2 x float> %i.bj, %i.bj
  %i.bk = extractelement <2 x float> %foldExtExtBinop9, i64 1
  %i.bl = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.bk)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bn)
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.bo)
  %i.bp = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.bj, %i.br
  %i.bt = fmul <2 x float> %i.bg, %i.br
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i

_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.013.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.013.0.copyload.i.i, %bb.h ], [ %i.bs, %bb.i ]
  %.sroa.3.0.copyload.pn.i.i = phi <2 x float> [ %.sroa.3.0.copyload.i.i, %bb.h ], [ %i.bt, %bb.i ]
  %.pn.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.013.0.copyload.pn.i.i, 0
  %.fca.1.insert.merged.i.i = insertvalue { <2 x float>, <2 x float> } %.pn.i.i, <2 x float> %.sroa.3.0.copyload.pn.i.i, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.merged.i.i, %_ZN3ozz9animation7offline12_GLOBAL__N_19TrackLerpINS1_16RawTrackKeyframeINS_4math10QuaternionEEEEENT_9ValueTypeERKS8_SB_f.exit.i ], [ %i.j, %bb.d ], [ %i.p, %bb.f ], [ { <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %bb.b ] ; 2 uses
  %i.bu = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0
  %i.bv = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1
  store <2 x float> %i.bu, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.bv, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN3ozz9animation7offline12_GLOBAL__N_112_SampleTrackISt6vectorINS1_16RawTrackKeyframeINS_4math10QuaternionEEENS_12StdAllocatorIS8_EEEEENT_10value_type9ValueTypeERKSC_f.exit
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline8internal8RawTrackINS_4math10QuaternionEE8ValidateEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
