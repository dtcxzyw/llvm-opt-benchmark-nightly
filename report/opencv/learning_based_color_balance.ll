Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/learning_based_color_balance?download=true
inline.NumInlined: 663
inline.NumDeleted: 287
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv6xphoto19LearningBasedWBImpl25getHistogramBasedFeaturesERNS_3VecIfLi2EEES4_RNS_3MatE:bb.a
  store float %i.dw, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !44
  store float %i.dx, ptr %.sroa.4.0..sroa_idx.i.i89, align 4, !tbaa !44
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.gb, align 4, !tbaa !44 ; 3 uses
  %i.hi = add nsw i64 %i.eb, -1
  %.sroa.013.0.vec.extract.i.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %.020.i.i = phi i64 [ %i.hi, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.01021.i910.i, %bb.ap ] ; 3 uses
  %.01021.in.i.i = add nsw i64 %.020.i.i, -1
  %.01021.i910.i = lshr i64 %.01021.in.i.i, 1     ; 3 uses
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0119.2224, i64 %.01021.i910.i ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !15
  %i.hl = fcmp ogt float %i.hk, %.sroa.013.0.vec.extract.i.i
  br i1 %i.hl, label %bb.ap, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hm = getelementptr inbounds [12 x i8], ptr %.sroa.0119.2224, i64 %.020.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 4 dereferenceable(12) %i.hj, i64 12, i1 false), !tbaa.struct !94
  %.not.i103 = icmp eq i64 %.01021.i910.i, 0
  br i1 %.not.i103, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.ao, !llvm.loop !88

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.ao, %bb.ap, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread
  %.sroa.04.0.copyload.i150 = phi <2 x float> [ %.sroa.04.0.copyload.i147, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread ], [ %.sroa.04.0.copyload.i, %bb.ap ], [ %.sroa.04.0.copyload.i, %bb.ao ]
  %.0.lcssa.i.i = phi i64 [ %i.gc, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread ], [ %.020.i.i, %bb.ao ], [ 0, %bb.ap ]
  %i.hn = getelementptr inbounds [12 x i8], ptr %.sroa.0119.2224, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x float> %.sroa.04.0.copyload.i150, ptr %i.hn, align 4, !tbaa !44
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store float %i.dx, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i, align 4, !tbaa !44
  br label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit, %bb.ah, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.t
  %.sroa.31.4 = phi ptr [ %.sroa.31.2222, %bb.t ], [ %.sroa.31.2222, %bb.ah ], [ %.sroa.31.7, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.31.2222, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.31.7, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %.sroa.18.4 = phi ptr [ %.sroa.18.2223, %bb.t ], [ %.sroa.18.2223, %bb.ah ], [ %.sroa.18.6, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.18.2223, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.18.6, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %.sroa.0119.4 = phi ptr [ %.sroa.0119.2224, %bb.t ], [ %.sroa.0119.2224, %bb.ah ], [ %.sroa.0119.7, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0119.2224, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.0119.7, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %.6 = getelementptr inbounds nuw i8, ptr %.574225, i64 4 ; 2 uses
  %i.ho = add nuw nsw i32 %.063226, 1             ; 2 uses
  %i.hp = load i32, ptr %i.e, align 4, !tbaa !49  ; 3 uses
  %i.hq = icmp slt i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.t, label %._crit_edge227, !llvm.loop !90

_ZN2cv6xphoto19LearningBasedWBImpl19getColorPaletteModeERNS_3VecIfLi2EEEPNS0_9hist_elemE.exit: ; preds = %._crit_edge251
  %.not.i.i.i104 = icmp eq ptr %.sroa.0119.0.lcssa, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit, label %_ZN2cv6xphoto19LearningBasedWBImpl19getColorPaletteModeERNS_3VecIfLi2EEEPNS0_9hist_elemE.exit.thread

_ZN2cv6xphoto19LearningBasedWBImpl19getColorPaletteModeERNS_3VecIfLi2EEEPNS0_9hist_elemE.exit.thread: ; preds = %bb.s, %_ZN2cv6xphoto19LearningBasedWBImpl19getColorPaletteModeERNS_3VecIfLi2EEEPNS0_9hist_elemE.exit
  %i.hr = ptrtoint ptr %.sroa.31.0.lcssa to i64
  %i.hs = ptrtoint ptr %.sroa.0119.0.lcssa to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0.lcssa, i64 noundef %i.ht) #23
  br label %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit: ; preds = %_ZN2cv6xphoto19LearningBasedWBImpl19getColorPaletteModeERNS_3VecIfLi2EEEPNS0_9hist_elemE.exit, %_ZN2cv6xphoto19LearningBasedWBImpl19getColorPaletteModeERNS_3VecIfLi2EEEPNS0_9hist_elemE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.aq:                                            ; preds = %bb.ag
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.2224, i64 noundef %i.ea) #23
  br label %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit106

_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit106: ; preds = %bb.aq, %bb.ag, %.thread, %bb.n
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %lpad.phi, %bb.aq ], [ %i.de, %.thread ], [ %lpad.phi, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn79.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN2cv8calcHistEPKNS_3MatEiPKiRKNS_11_InputArrayERKNS_12_OutputArrayEiS4_PPKfbb(ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN2cv6xphoto19LearningBasedWBImpl21regressionTreePredictENS_3VecIfLi2EEEPhPfS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(908) %0, ptr nofree noundef readonly align 4 captures(none) dead_on_return %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.b, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01011.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.e = sext i32 %.01011.epil.init to i64        ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !44
  %i.k = getelementptr inbounds [4 x i8], ptr %3, i64 %i.e
  %i.l = load float, ptr %i.k, align 4, !tbaa !44
  %i.m = fcmp ugt float %i.j, %i.l
  %i.n = shl nsw i32 %.01011.epil.init, 1         ; 2 uses
  %i.o = or disjoint i32 %i.n, 1
  %i.p = add nsw i32 %i.n, 2
  %.1.epil = select i1 %i.m, i32 %i.p, i32 %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !57
  %i.s = sub nsw i32 %.010.lcssa, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr %4, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !44
  ret float %i.w

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01011 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.x = sext i32 %.01011 to i64                  ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !44
  %i.ad = getelementptr inbounds [4 x i8], ptr %3, i64 %i.x
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !44
  %i.af = fcmp ugt float %i.ac, %i.ae
  %i.ag = shl nsw i32 %.01011, 1                  ; 2 uses
  %i.ah = or disjoint i32 %i.ag, 1
  %i.ai = add nsw i32 %i.ag, 2
  %.1 = select i1 %i.af, i32 %i.ai, i32 %i.ah     ; 2 uses
  %i.aj = sext i32 %.1 to i64                     ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !44
  %i.ap = getelementptr inbounds [4 x i8], ptr %3, i64 %i.aj
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !44
  %i.ar = fcmp ugt float %i.ao, %i.aq
  %i.as = shl nsw i32 %.1, 1                      ; 2 uses
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add nsw i32 %i.as, 2
  %.1.1 = select i1 %i.ar, i32 %i.au, i32 %i.at   ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6xphoto19LearningBasedWBImpl17predictIlluminantESt6vectorINS_3VecIfLi2EEESaIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Vec") align 4 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(908) initializes((40, 44)) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph448:
  %3 = alloca [4 x %"class.cv::Vec"], align 16    ; 24 uses
  %4 = alloca %"class.cv::Vec", align 8           ; 4 uses
  %5 = alloca %"class.cv::Vec", align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !57   ; 5 uses
  %i.c = sitofp i32 %i.b to float
  %i.d = tail call noundef float @logf(float noundef %i.c) #21
  %i.e = fdiv float %i.d, f0x3F317218
  %i.f = insertelement <4 x float> poison, float %i.e, i64 0
  %i.g = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = shl nsw i32 %i.b, 3
  %i.k = shl nsw i32 %i.b, 1
  %i.l = add nsw i32 %i.b, -1                     ; 3 uses
  %i.m = shl nsw i32 %i.l, 3
  %i.n = shl nsw i32 %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = sext i32 %i.l to i64                     ; 2 uses
  %i.s = sext i32 %i.b to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.u = sext i32 %i.n to i64
  %i.v = sext i32 %i.k to i64
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.j to i64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  br label %.preheader267

._crit_edge:                                      ; preds = %.loopexit262
  %i.ao = ptrtoint ptr %.sroa.14.2 to i64
  %i.ap = ptrtoint ptr %.sroa.0215.3 to i64       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = icmp eq ptr %.sroa.14.2, %.sroa.0215.3
  br i1 %i.as, label %bb.au, label %bb.az

.preheader267:                                    ; preds = %.lr.ph448, %.loopexit262
  %indvars.iv568 = phi i64 [ 0, %.lr.ph448 ], [ %indvars.iv.next569, %.loopexit262 ] ; 3 uses
  %.sroa.19.0446 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.19.3, %.loopexit262 ]
  %.sroa.13.0445 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.13.2, %.loopexit262 ]
  %.sroa.0169.0444 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.0169.3, %.loopexit262 ]
  %.sroa.19195.0443 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.19195.5, %.loopexit262 ]
  %.sroa.13191.0442 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.13191.2, %.loopexit262 ]
  %.sroa.0183.0441 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.0183.5, %.loopexit262 ]
  %.sroa.19211.0440 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.19211.2, %.loopexit262 ] ; 10 uses
  %.sroa.13207.0439 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.13207.2, %.loopexit262 ] ; 4 uses
  %.sroa.0199.0438 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.0199.2, %.loopexit262 ] ; 12 uses
  %.sroa.21.0437 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.21.3, %.loopexit262 ] ; 8 uses
  %.sroa.14.0436 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.14.2, %.loopexit262 ] ; 4 uses
  %.sroa.0215.0435 = phi ptr [ null, %.lr.ph448 ], [ %.sroa.0215.3, %.loopexit262 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.at = mul nsw i64 %indvars.iv568, %i.w        ; 2 uses
  %i.au = mul nsw i64 %indvars.iv568, %i.x
  br label %bb.a

bb.a:                                             ; preds = %.preheader267, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112
  %indvars.iv = phi i64 [ 0, %.preheader267 ], [ %indvars.iv.next, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 5 uses
  %.sroa.19.1422 = phi ptr [ %.sroa.19.0446, %.preheader267 ], [ %.sroa.19.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 5 uses
  %.sroa.13.1421 = phi ptr [ %.sroa.13.0445, %.preheader267 ], [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 3 uses
  %.sroa.0169.1420 = phi ptr [ %.sroa.0169.0444, %.preheader267 ], [ %.sroa.0169.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 7 uses
  %.sroa.19195.1419 = phi ptr [ %.sroa.19195.0443, %.preheader267 ], [ %.sroa.19195.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 5 uses
  %.sroa.13191.1418 = phi ptr [ %.sroa.13191.0442, %.preheader267 ], [ %.sroa.13191.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 3 uses
  %.sroa.0183.1417 = phi ptr [ %.sroa.0183.0441, %.preheader267 ], [ %.sroa.0183.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112 ] ; 7 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !44 ; 3 uses
  store <2 x float> %i.ax, ptr %4, align 8, !tbaa !44
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.at
  %i.ba = mul nsw i64 %indvars.iv, %i.u           ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 4 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.at
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ba ; 4 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.au
  %i.bh = mul nsw i64 %indvars.iv, %i.v
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !56  ; 8 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.preheader, label %.loopexit261

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %xtraiter = and i32 %i.bj, 1
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.bj, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01011.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bn = sext i32 %.01011.i to i64               ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bb, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !44
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bn
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !44
  %i.bv = fcmp ugt float %i.bs, %i.bu
  %i.bw = shl nsw i32 %.01011.i, 1                ; 2 uses
  %i.bx = or disjoint i32 %i.bw, 1
  %i.by = add nsw i32 %i.bw, 2
  %.1.i = select i1 %i.bv, i32 %i.by, i32 %i.bx   ; 2 uses
  %i.bz = sext i32 %.1.i to i64                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bb, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !44
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bz
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !44
  %i.ch = fcmp ugt float %i.ce, %i.cg
  %i.ci = shl nsw i32 %.1.i, 1                    ; 2 uses
  %i.cj = or disjoint i32 %i.ci, 1
  %i.ck = add nsw i32 %i.ci, 2
  %.1.i.1 = select i1 %i.ch, i32 %i.ck, i32 %i.cj ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i96.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

.loopexit261:                                     ; preds = %bb.a
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.cm = sub nsw i32 0, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [4 x i8], ptr %i.bi, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !44
  store <2 x float> %i.ax, ptr %5, align 8, !tbaa !44
  br label %.loopexit260

.lr.ph.i96.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i96.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i96.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.01011.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %.lr.ph.i96.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod846 = trunc i32 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod846)
  %i.cr = sext i32 %.01011.i.epil.init to i64     ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bb, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !24
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !44
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cr
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !44
  %i.cz = fcmp ugt float %i.cw, %i.cy
  %i.da = shl nsw i32 %.01011.i.epil.init, 1      ; 2 uses
  %i.db = or disjoint i32 %i.da, 1
  %i.dc = add nsw i32 %i.da, 2
  %.1.i.epil = select i1 %i.cz, i32 %i.dc, i32 %i.db
  br label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %.lr.ph.i96.preheader.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %.lr.ph.i96.preheader.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ]
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !57  ; 3 uses
  %i.de = sub nsw i32 %.1.i.lcssa, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.bi, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !44 ; 2 uses
  store <2 x float> %i.ax, ptr %5, align 8, !tbaa !44
  %i.dj = getelementptr inbounds i8, ptr %i.bb, i64 %i.r ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.r ; 3 uses
  %xtraiter847 = and i32 %i.bj, 1
  %i.dl = icmp eq i32 %i.bl, 0
  br i1 %i.dl, label %.lr.ph.i96.epil.preheader, label %.lr.ph.i96.preheader.new

.lr.ph.i96.preheader.new:                         ; preds = %.lr.ph.i96.preheader
  %unroll_iter851 = and i32 %i.bj, 2147483646
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %.lr.ph.i96.preheader.new
  %.01011.i98 = phi i32 [ 0, %.lr.ph.i96.preheader.new ], [ %.1.i99.1, %.lr.ph.i96 ] ; 2 uses
  %niter852 = phi i32 [ 0, %.lr.ph.i96.preheader.new ], [ %niter852.next.1, %.lr.ph.i96 ]
  %i.dm = sext i32 %.01011.i98 to i64             ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !24
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !44
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dm
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !44
  %i.du = fcmp ugt float %i.dr, %i.dt
  %i.dv = shl nsw i32 %.01011.i98, 1              ; 2 uses
  %i.dw = or disjoint i32 %i.dv, 1
  %i.dx = add nsw i32 %i.dv, 2
  %.1.i99 = select i1 %i.du, i32 %i.dx, i32 %i.dw ; 2 uses
  %i.dy = sext i32 %.1.i99 to i64                 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dj, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !24
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !44
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dy
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !44
  %i.eg = fcmp ugt float %i.ed, %i.ef
  %i.eh = shl nsw i32 %.1.i99, 1                  ; 2 uses
  %i.ei = or disjoint i32 %i.eh, 1
  %i.ej = add nsw i32 %i.eh, 2
  %.1.i99.1 = select i1 %i.eg, i32 %i.ej, i32 %i.ei ; 3 uses
  %niter852.next.1 = add i32 %niter852, 2         ; 2 uses
  %niter852.ncmp.1 = icmp eq i32 %niter852.next.1, %unroll_iter851
  br i1 %niter852.ncmp.1, label %.loopexit260.loopexit.unr-lcssa, label %.lr.ph.i96, !llvm.loop !2

.loopexit260.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i96
  %lcmp.mod848.not = icmp eq i32 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.loopexit260, label %.lr.ph.i96.epil.preheader

.lr.ph.i96.epil.preheader:                        ; preds = %.loopexit260.loopexit.unr-lcssa, %.lr.ph.i96.preheader
  %.01011.i98.epil.init = phi i32 [ 0, %.lr.ph.i96.preheader ], [ %.1.i99.1, %.loopexit260.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod850 = trunc i32 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod850)
  %i.ek = sext i32 %.01011.i98.epil.init to i64   ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.dj, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !24
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !44
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.ek
  %i.er = load float, ptr %i.eq, align 4, !tbaa !44
  %i.es = fcmp ugt float %i.ep, %i.er
  %i.et = shl nsw i32 %.01011.i98.epil.init, 1    ; 2 uses
  %i.eu = or disjoint i32 %i.et, 1
  %i.ev = add nsw i32 %i.et, 2
  %.1.i99.epil = select i1 %i.es, i32 %i.ev, i32 %i.eu
  br label %.loopexit260

.loopexit260:                                     ; preds = %.lr.ph.i96.epil.preheader, %.loopexit260.loopexit.unr-lcssa, %.loopexit261
  %i.ew = phi float [ %i.cq, %.loopexit261 ], [ %i.di, %.loopexit260.loopexit.unr-lcssa ], [ %i.di, %.lr.ph.i96.epil.preheader ] ; 3 uses
  %i.ex = phi i32 [ %i.cl, %.loopexit261 ], [ %i.dd, %.loopexit260.loopexit.unr-lcssa ], [ %i.dd, %.lr.ph.i96.epil.preheader ]
  %.010.lcssa.i95 = phi i32 [ 0, %.loopexit261 ], [ %.1.i99.1, %.loopexit260.loopexit.unr-lcssa ], [ %.1.i99.epil, %.lr.ph.i96.epil.preheader ]
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.s
  %i.ez = sub nsw i32 %.010.lcssa.i95, %i.ex
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [4 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !44 ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store float %i.ew, ptr %i.fe, align 8
  %.sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store float %i.fd, ptr %.sroa_idx162, align 4
  %.not.i = icmp eq ptr %.sroa.13191.1418, %.sroa.19195.1419
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit260
  store float %i.ew, ptr %.sroa.13191.1418, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.c:                                             ; preds = %.loopexit260
  %i.ff = ptrtoint ptr %.sroa.19195.1419 to i64
  %i.fg = ptrtoint ptr %.sroa.0183.1417 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 6 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775804
  br i1 %i.fi, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc unwind label %.loopexit.split-lp269

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.fj = ashr exact i64 %i.fh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 2305843009213693951)
  %i.fn = select i1 %i.fl, i64 2305843009213693951, i64 %i.fm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #24
          to label %.noexc102 unwind label %.loopexit268 ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store float %i.ew, ptr %i.fq, align 4, !tbaa !44
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.e, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %.sroa.0183.1417, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %.noexc102
  %.not.i17.i.i = icmp eq ptr %.sroa.0183.1417, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.1417, i64 noundef %i.fh) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.b
  %.sroa.0183.5 = phi ptr [ %i.fp, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.0183.1417, %bb.b ] ; 17 uses
  %.pn258 = phi ptr [ %i.fq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.13191.1418, %bb.b ]
  %.sroa.19195.5 = phi ptr [ %i.fs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.19195.1419, %bb.b ] ; 11 uses
  %.sroa.13191.2 = getelementptr inbounds nuw i8, ptr %.pn258, i64 4 ; 6 uses
  %.not.i103 = icmp eq ptr %.sroa.13.1421, %.sroa.19.1422
  br i1 %.not.i103, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store float %i.fd, ptr %.sroa.13.1421, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ft = ptrtoint ptr %.sroa.19.1422 to i64
  %i.fu = ptrtoint ptr %.sroa.0169.1420 to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 6 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775804
  br i1 %i.fw, label %bb.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc110 unwind label %.loopexit.split-lp269

.noexc110:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104: ; preds = %bb.h
  %i.fx = ashr exact i64 %i.fv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i105, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 2305843009213693951)
  %i.gb = select i1 %i.fz, i64 2305843009213693951, i64 %i.ga ; 3 uses
  %.not.i.i.i106 = icmp ne i64 %i.gb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i106)
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #24
          to label %.noexc111 unwind label %.loopexit268 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.fv ; 2 uses
  store float %i.fd, ptr %i.ge, align 4, !tbaa !44
  %i.gf = icmp sgt i64 %i.fv, 0
  br i1 %i.gf, label %bb.j, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107

bb.j:                                             ; preds = %.noexc111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gd, ptr align 4 %.sroa.0169.1420, i64 %i.fv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107: ; preds = %bb.j, %.noexc111
  %.not.i17.i.i108 = icmp eq ptr %.sroa.0169.1420, null
  br i1 %.not.i17.i.i108, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.1420, i64 noundef %i.fv) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109: ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gb
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112

_ZNSt6vectorIfSaIfEE9push_backERKf.exit112:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109, %bb.g
  %.sroa.0169.3 = phi ptr [ %i.gd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ], [ %.sroa.0169.1420, %bb.g ] ; 15 uses
  %.pn259 = phi ptr [ %i.ge, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ], [ %.sroa.13.1421, %bb.g ]
  %.sroa.19.3 = phi ptr [ %i.gg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ], [ %.sroa.19.1422, %bb.g ] ; 9 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn259, i64 4 ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.loopexit.2, label %bb.a, !llvm.loop !96

.loopexit268:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104
  %.sroa.0183.2.ph = phi ptr [ %.sroa.0183.1417, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0183.5, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104 ]
  %.sroa.19195.2.ph = phi ptr [ %.sroa.19195.1419, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.19195.5, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104 ]
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp269:                            ; preds = %bb.d, %bb.i
  %.sroa.0183.2.ph270 = phi ptr [ %.sroa.0183.5, %bb.i ], [ %.sroa.0183.1417, %bb.d ]
  %.sroa.19195.2.ph271 = phi ptr [ %.sroa.19195.5, %bb.i ], [ %.sroa.19195.1419, %bb.d ]
  %lpad.loopexit.split-lp273 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.2:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112
  %6 = load <4 x float>, ptr %i.t, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gh = load <4 x float>, ptr %i.y, align 8
  %.val92 = load float, ptr %i.z, align 4, !tbaa !44
  %8 = load float, ptr %i.t, align 4, !tbaa !64   ; 2 uses
  %.val92.1 = load float, ptr %i.ad, align 4, !tbaa !44
  %i.gi = load <4 x float>, ptr %i.aa, align 16, !tbaa !44 ; 2 uses
  %i.gj = load <4 x float>, ptr %3, align 16, !tbaa !44 ; 2 uses
  %i.gk = insertelement <2 x float> %7, float %8, i64 1
  %i.gl = fpext <2 x float> %i.gk to <2 x double>
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = load <3 x float>, ptr %i.ac, align 16, !tbaa !44
  %i.go = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gp = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gq = shufflevector <3 x float> %i.gn, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gs = fsub <4 x float> %i.go, %i.gr
  %i.gt = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gu = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.gv = insertelement <4 x float> %i.gu, float %.val92, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %.val92.1, i64 3
  %i.gx = fsub <4 x float> %i.gt, %i.gw
  %i.gy = fpext <4 x float> %i.gs to <4 x double> ; 2 uses
  %i.gz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gy, <4 x double> %i.gy, <4 x double> zeroinitializer)
  %i.ha = fpext <4 x float> %i.gx to <4 x double> ; 2 uses
  %i.hb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ha, <4 x double> %i.ha, <4 x double> %i.gz)
  %i.hc = tail call <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.hb)
  %i.hd = fcmp olt <4 x double> %i.hc, %i.gm
  %.val91.1.1 = load float, ptr %i.ae, align 8, !tbaa !44
  %.val92.1.1 = load float, ptr %i.af, align 4, !tbaa !44
  %9 = load <4 x float>, ptr %i.t, align 4
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.he = load <4 x float>, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.hg = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hi = insertelement <2 x float> %i.hh, float %.val92.1.1, i64 1
  %i.hj = fsub <2 x float> %i.hg, %i.hi
  %i.hk = fpext <2 x float> %i.hj to <2 x double> ; 2 uses
  %i.hl = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.hm = insertelement <2 x float> %i.hf, float %.val91.1.1, i64 1
  %i.hn = fsub <2 x float> %i.hl, %i.hm
  %i.ho = fpext <2 x float> %i.hn to <2 x double> ; 2 uses
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.ho, <2 x double> zeroinitializer)
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hk, <2 x double> %i.hp)
  %i.hr = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hq)
  %i.hs = insertelement <2 x float> %10, float %8, i64 1
  %i.ht = fpext <2 x float> %i.hs to <2 x double>
  %i.hu = fcmp olt <2 x double> %i.hr, %i.ht      ; 2 uses
  %i.hv = extractelement <2 x i1> %i.hu, i64 1
  %i.hw = zext i1 %i.hv to i32
  %i.hx = extractelement <2 x i1> %i.hu, i64 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = bitcast <4 x i1> %i.hd to i4
  %i.ia = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.hz)
  %i.ib = zext nneg i4 %i.ia to i32
  %op.rdx = add nuw nsw i32 %i.ib, %i.hw
  %op.rdx775 = add nuw nsw i32 %op.rdx, %i.hy
  %i.ic = icmp samesign ugt i32 %op.rdx775, 2
  br i1 %i.ic, label %.preheader.preheader, label %.loopexit262

.preheader.preheader:                             ; preds = %.loopexit.2
  %.not.i113 = icmp eq ptr %.sroa.14.0436, %.sroa.21.0437
  br i1 %.not.i113, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.preheader
  %i.id = load float, ptr %3, align 16, !tbaa !44
  store float %i.id, ptr %.sroa.14.0436, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit122

bb.m:                                             ; preds = %.preheader.preheader
  %i.ie = ptrtoint ptr %.sroa.21.0437 to i64
  %i.if = ptrtoint ptr %.sroa.0215.0435 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 6 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775804
  br i1 %i.ih, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i114

bb.n:                                             ; preds = %bb.am, %bb.ae, %bb.w, %bb.m
  %.sroa.19211.1433.lcssa = phi ptr [ %.sroa.19211.0440, %bb.m ], [ %.sroa.19211.5, %bb.w ], [ %.sroa.19211.5.1, %bb.ae ], [ %.sroa.19211.5.2, %bb.am ]
  %.sroa.0199.1431.lcssa = phi ptr [ %.sroa.0199.0438, %bb.m ], [ %.sroa.0199.5, %bb.w ], [ %.sroa.0199.5.1, %bb.ae ], [ %.sroa.0199.5.2, %bb.am ]
  %.sroa.21.1430.lcssa = phi ptr [ %.sroa.21.0437, %bb.m ], [ %.sroa.21.6, %bb.w ], [ %.sroa.21.6.1, %bb.ae ], [ %.sroa.21.6.2, %bb.am ]
  %.sroa.0215.1428.lcssa = phi ptr [ %.sroa.0215.0435, %bb.m ], [ %.sroa.0215.6, %bb.w ], [ %.sroa.0215.6.1, %bb.ae ], [ %.sroa.0215.6.2, %bb.am ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i114: ; preds = %bb.m
  %i.ii = ashr exact i64 %i.ig, 2                 ; 3 uses
  %.sroa.speculated.i.i.i115 = tail call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i.i115, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = tail call i64 @llvm.umin.i64(i64 %i.ij, i64 2305843009213693951)
  %i.im = select i1 %i.ik, i64 2305843009213693951, i64 %i.il ; 3 uses
  %.not.i.i.i116 = icmp ne i64 %i.im, 0
  tail call void @llvm.assume(i1 %.not.i.i.i116)
  %i.in = shl nuw nsw i64 %i.im, 2
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #24
          to label %.noexc121 unwind label %.loopexit263 ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i114
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 %i.ig ; 2 uses
  %i.iq = load float, ptr %3, align 16, !tbaa !44
  store float %i.iq, ptr %i.ip, align 4, !tbaa !44
  %i.ir = icmp sgt i64 %i.ig, 0
  br i1 %i.ir, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117

bb.o:                                             ; preds = %.noexc121
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.io, ptr align 4 %.sroa.0215.0435, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117: ; preds = %bb.o, %.noexc121
  %.not.i17.i.i118 = icmp eq ptr %.sroa.0215.0435, null
  br i1 %.not.i17.i.i118, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0435, i64 noundef %i.ig) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.im
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit122

_ZNSt6vectorIfSaIfEE9push_backERKf.exit122:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119, %bb.l
  %.sroa.0215.6 = phi ptr [ %i.io, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119 ], [ %.sroa.0215.0435, %bb.l ] ; 9 uses
  %.pn = phi ptr [ %i.ip, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119 ], [ %.sroa.14.0436, %bb.l ]
  %.sroa.21.6 = phi ptr [ %i.is, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119 ], [ %.sroa.21.0437, %bb.l ] ; 7 uses
  %.sroa.14.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %.not.i123 = icmp eq ptr %.sroa.13207.0439, %.sroa.19211.0440
  br i1 %.not.i123, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit122
  %i.it = load float, ptr %i.ah, align 4, !tbaa !44
  store float %i.it, ptr %.sroa.13207.0439, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit132

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit122
  %i.iu = ptrtoint ptr %.sroa.19211.0440 to i64
  %i.iv = ptrtoint ptr %.sroa.0199.0438 to i64
  %i.iw = sub i64 %i.iu, %i.iv                    ; 6 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775804
  br i1 %i.ix, label %bb.s, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i124

bb.s:                                             ; preds = %bb.aq, %bb.ai, %bb.aa, %bb.r
  %.sroa.0215.6.lcssa = phi ptr [ %.sroa.0215.6, %bb.r ], [ %.sroa.0215.6.1, %bb.aa ], [ %.sroa.0215.6.2, %bb.ai ], [ %.sroa.0215.6.3, %bb.aq ]
  %.sroa.21.6.lcssa = phi ptr [ %.sroa.21.6, %bb.r ], [ %.sroa.21.6.1, %bb.aa ], [ %.sroa.21.6.2, %bb.ai ], [ %.sroa.21.6.3, %bb.aq ]
  %.sroa.19211.1433.lcssa511 = phi ptr [ %.sroa.19211.0440, %bb.r ], [ %.sroa.19211.5, %bb.aa ], [ %.sroa.19211.5.1, %bb.ai ], [ %.sroa.19211.5.2, %bb.aq ]
  %.sroa.0199.1431.lcssa507 = phi ptr [ %.sroa.0199.0438, %bb.r ], [ %.sroa.0199.5, %bb.aa ], [ %.sroa.0199.5.1, %bb.ai ], [ %.sroa.0199.5.2, %bb.aq ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i124: ; preds = %bb.r
  %i.iy = ashr exact i64 %i.iw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i.i125, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = tail call i64 @llvm.umin.i64(i64 %i.iz, i64 2305843009213693951)
  %i.jc = select i1 %i.ja, i64 2305843009213693951, i64 %i.jb ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.jc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i126)
  %i.jd = shl nuw nsw i64 %i.jc, 2
  %i.je = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #24
          to label %.noexc131 unwind label %.loopexit263 ; 4 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i124
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 %i.iw ; 2 uses
  %i.jg = load float, ptr %i.ah, align 4, !tbaa !44
  store float %i.jg, ptr %i.jf, align 4, !tbaa !44
  %i.jh = icmp sgt i64 %i.iw, 0
  br i1 %i.jh, label %bb.t, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i127

bb.t:                                             ; preds = %.noexc131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.je, ptr align 4 %.sroa.0199.0438, i64 %i.iw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i127

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i127: ; preds = %bb.t, %.noexc131
  %.not.i17.i.i128 = icmp eq ptr %.sroa.0199.0438, null
  br i1 %.not.i17.i.i128, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i127
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.0438, i64 noundef %i.iw) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i127
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jc
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit132

_ZNSt6vectorIfSaIfEE9push_backERKf.exit132:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129, %bb.q
  %.sroa.0199.5 = phi ptr [ %i.je, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129 ], [ %.sroa.0199.0438, %bb.q ] ; 9 uses
  %.pn257 = phi ptr [ %i.jf, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129 ], [ %.sroa.13207.0439, %bb.q ]
  %.sroa.19211.5 = phi ptr [ %i.ji, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i129 ], [ %.sroa.19211.0440, %bb.q ] ; 7 uses
  %.sroa.13207.3 = getelementptr inbounds nuw i8, ptr %.pn257, i64 4 ; 3 uses
  %.not.i113.1 = icmp eq ptr %.sroa.14.3, %.sroa.21.6
  br i1 %.not.i113.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit132
  %i.jj = load float, ptr %i.ai, align 8, !tbaa !44
  store float %i.jj, ptr %.sroa.14.3, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit122.1

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit132
  %i.jk = ptrtoint ptr %.sroa.21.6 to i64
  %i.jl = ptrtoint ptr %.sroa.0215.6 to i64
  %i.jm = sub i64 %i.jk, %i.jl                    ; 6 uses
  %i.jn = icmp eq i64 %i.jm, 9223372036854775804
  br i1 %i.jn, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i114.1

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i114.1: ; preds = %bb.w
  %i.jo = ashr exact i64 %i.jm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i115.1 = tail call i64 @llvm.umax.i64(i64 %i.jo, i64 1)
  %i.jp = add nsw i64 %.sroa.speculated.i.i.i115.1, %i.jo ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jo
  %i.jr = tail call i64 @llvm.umin.i64(i64 %i.jp, i64 2305843009213693951)
  %i.js = select i1 %i.jq, i64 2305843009213693951, i64 %i.jr ; 3 uses
  %.not.i.i.i116.1 = icmp ne i64 %i.js, 0
  tail call void @llvm.assume(i1 %.not.i.i.i116.1)
  %i.jt = shl nuw nsw i64 %i.js, 2
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #24
          to label %.noexc121.1 unwind label %.loopexit263 ; 4 uses

.noexc121.1:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i114.1
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 %i.jm ; 2 uses
  %i.jw = load float, ptr %i.ai, align 8, !tbaa !44
  store float %i.jw, ptr %i.jv, align 4, !tbaa !44
  %i.jx = icmp sgt i64 %i.jm, 0
  br i1 %i.jx, label %bb.x, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117.1

bb.x:                                             ; preds = %.noexc121.1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ju, ptr align 4 %.sroa.0215.6, i64 %i.jm, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117.1

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117.1: ; preds = %bb.x, %.noexc121.1
  %.not.i17.i.i118.1 = icmp eq ptr %.sroa.0215.6, null
  br i1 %.not.i17.i.i118.1, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119.1, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117.1
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.6, i64 noundef %i.jm) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119.1

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i119.1: ; preds = %bb.y, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i117.1
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.js
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit122.1

end_hunk_0
