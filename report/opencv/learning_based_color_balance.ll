Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/learning_based_color_balance?download=true
inline.NumInlined: 663
inline.NumDeleted: 287
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv6xphoto19LearningBasedWBImpl25getHistogramBasedFeaturesERNS_3VecIfLi2EEES4_RNS_3MatE:bb.a
  %.020.i.i.i.i96 = phi i64 [ %.1.i10.i.i, %.lr.ph.i.i.i.i94 ], [ %.01021.i.i1112.i.i, %bb.am ] ; 3 uses
  %.01021.in.i.i.i.i97 = add nsw i64 %.020.i.i.i.i96, -1
  %.01021.i.i1112.i.i = lshr i64 %.01021.in.i.i.i.i97, 1 ; 3 uses
  %i.hd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0119.2224, i64 %.01021.i.i1112.i.i ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !15
  %i.hf = fcmp ogt float %i.he, %.sroa.013.0.vec.extract.i.i.i.i95
  br i1 %i.hf, label %bb.am, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.am:                                            ; preds = %bb.al
  %i.hg = getelementptr inbounds [12 x i8], ptr %.sroa.0119.2224, i64 %.020.i.i.i.i96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hg, ptr noundef nonnull align 4 dereferenceable(12) %i.hd, i64 12, i1 false), !tbaa.struct !94
  %.not13.i.i = icmp eq i64 %.01021.i.i1112.i.i, 0
  br i1 %.not13.i.i, label %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.al, !llvm.loop !88

_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.al, %bb.am, %bb.ak
  %.0.lcssa.i.i.i.i98 = phi i64 [ 0, %bb.ak ], [ 0, %bb.am ], [ %.020.i.i.i.i96, %bb.al ]
  %i.hh = getelementptr inbounds [12 x i8], ptr %.sroa.0119.2224, i64 %.0.lcssa.i.i.i.i98 ; 2 uses
  store <2 x float> %.sroa.04.0.copyload.i.i88, ptr %i.hh, align 4, !tbaa !44
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i99 = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %.sroa.4.0.copyload.i.i90, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i.i.i99, align 4, !tbaa !44
  store float %i.dq, ptr %i.gb, align 4, !tbaa !44
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.18.2223, i64 -8
  store float %i.dw, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !44
  store float %i.dx, ptr %.sroa.4.0..sroa_idx.i.i89, align 4, !tbaa !44
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.gb, align 4, !tbaa !44 ; 3 uses
  %i.hi = add nsw i64 %i.eb, -1
  %.sroa.013.0.vec.extract.i.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 0
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %.020.i.i = phi i64 [ %i.hi, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.01021.i910.i, %bb.ao ] ; 3 uses
  %.01021.in.i.i = add nsw i64 %.020.i.i, -1
  %.01021.i910.i = lshr i64 %.01021.in.i.i, 1     ; 3 uses
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0119.2224, i64 %.01021.i910.i ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !15
  %i.hl = fcmp ogt float %i.hk, %.sroa.013.0.vec.extract.i.i
  br i1 %i.hl, label %bb.ao, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.ao:                                            ; preds = %bb.an
  %i.hm = getelementptr inbounds [12 x i8], ptr %.sroa.0119.2224, i64 %.020.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hm, ptr noundef nonnull align 4 dereferenceable(12) %i.hj, i64 12, i1 false), !tbaa.struct !94
  %.not.i103 = icmp eq i64 %.01021.i910.i, 0
  br i1 %.not.i103, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.an, !llvm.loop !88

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.an, %bb.ao, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread
  %.sroa.04.0.copyload.i150 = phi <2 x float> [ %.sroa.04.0.copyload.i147, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread ], [ %.sroa.04.0.copyload.i, %bb.ao ], [ %.sroa.04.0.copyload.i, %bb.an ]
  %.0.lcssa.i.i = phi i64 [ %i.gc, %_ZSt8pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread ], [ %.020.i.i, %bb.an ], [ 0, %bb.ao ]
  %i.hn = getelementptr inbounds [12 x i8], ptr %.sroa.0119.2224, i64 %.0.lcssa.i.i ; 2 uses
  store <2 x float> %.sroa.04.0.copyload.i150, ptr %i.hn, align 4, !tbaa !44
  %.sroa.3.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store float %i.dx, ptr %.sroa.3.0..sroa.0.0..sroa_idx.i.i, align 4, !tbaa !44
  br label %_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt9make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit, %bb.ag, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.t
  %.sroa.31.4 = phi ptr [ %.sroa.31.2222, %bb.t ], [ %.sroa.31.2222, %bb.ag ], [ %.sroa.31.7, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.31.2222, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.31.7, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %.sroa.18.4 = phi ptr [ %.sroa.18.2223, %bb.t ], [ %.sroa.18.2223, %bb.ag ], [ %.sroa.18.6, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.18.2223, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.18.6, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
  %.sroa.0119.4 = phi ptr [ %.sroa.0119.2224, %bb.t ], [ %.sroa.0119.2224, %bb.ag ], [ %.sroa.0119.7, %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0119.2224, %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.0119.7, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv6xphoto9hist_elemESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_.exit.i.i ] ; 2 uses
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

bb.ap:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.2224, i64 noundef %i.ea) #23
  br label %_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit106

_ZNSt6vectorIN2cv6xphoto9hist_elemESaIS2_EED2Ev.exit106: ; preds = %bb.ap, %.loopexit.split-lp.loopexit.split-lp, %.thread, %bb.n
  %.pn79.pn.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %lpad.loopexit.split-lp311, %bb.ap ], [ %i.de, %.thread ], [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp ]
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
  br i1 %i.as, label %bb.au, label %bb.ax

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
  %6 = load <2 x float>, ptr %i.aw, align 4, !tbaa !44 ; 3 uses
  store <2 x float> %6, ptr %4, align 8, !tbaa !44
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.at
  %i.az = mul nsw i64 %indvars.iv, %i.u           ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az ; 4 uses
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.at
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.az ; 4 uses
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.au
  %i.bg = mul nsw i64 %indvars.iv, %i.v
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg ; 3 uses
  %i.bi = load i32, ptr %i.h, align 8, !tbaa !56  ; 8 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.preheader, label %.loopexit261

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.bk = add nsw i32 %i.bi, -1                   ; 2 uses
  %xtraiter = and i32 %i.bi, 1
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.bi, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01011.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.1.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bm = sext i32 %.01011.i to i64               ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ba, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %7 = zext i8 %i.bo to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !44
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !44
  %i.br = fcmp ugt float %9, %i.bq
  %i.bs = shl nsw i32 %.01011.i, 1                ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 1
  %i.bu = add nsw i32 %i.bs, 2
  %.1.i = select i1 %i.br, i32 %i.bu, i32 %i.bt   ; 2 uses
  %i.bv = sext i32 %.1.i to i64                   ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.ba, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %10 = zext i8 %i.bx to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !44
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !44
  %i.ca = fcmp ugt float %12, %i.bz
  %i.cb = shl nsw i32 %.1.i, 1                    ; 2 uses
  %i.cc = or disjoint i32 %i.cb, 1
  %i.cd = add nsw i32 %i.cb, 2
  %.1.i.1 = select i1 %i.ca, i32 %i.cd, i32 %i.cc ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i96.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

.loopexit261:                                     ; preds = %bb.a
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.cf = sub nsw i32 0, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr [4 x i8], ptr %i.bh, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !44
  store <2 x float> %6, ptr %5, align 8, !tbaa !44
  br label %.loopexit260

.lr.ph.i96.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i96.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i96.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.01011.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.1.i.1, %.lr.ph.i96.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod855 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod855)
  %i.ck = sext i32 %.01011.i.epil.init to i64     ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ba, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !24
  %13 = zext i8 %i.cm to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !44
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ck
  %i.co = load float, ptr %i.cn, align 4, !tbaa !44
  %i.cp = fcmp ugt float %15, %i.co
  %i.cq = shl nsw i32 %.01011.i.epil.init, 1      ; 2 uses
  %i.cr = or disjoint i32 %i.cq, 1
  %i.cs = add nsw i32 %i.cq, 2
  %.1.i.epil = select i1 %i.cp, i32 %i.cs, i32 %i.cr
  br label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %.lr.ph.i96.preheader.unr-lcssa, %.lr.ph.i.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %.lr.ph.i96.preheader.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil.preheader ]
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !57  ; 3 uses
  %i.cu = sub nsw i32 %.1.i.lcssa, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.bh, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !44 ; 2 uses
  store <2 x float> %6, ptr %5, align 8, !tbaa !44
  %i.cz = getelementptr inbounds i8, ptr %i.ba, i64 %i.r ; 3 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.r ; 3 uses
  %xtraiter856 = and i32 %i.bi, 1
  %i.db = icmp eq i32 %i.bk, 0
  br i1 %i.db, label %.lr.ph.i96.epil.preheader, label %.lr.ph.i96.preheader.new

.lr.ph.i96.preheader.new:                         ; preds = %.lr.ph.i96.preheader
  %unroll_iter860 = and i32 %i.bi, 2147483646
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96, %.lr.ph.i96.preheader.new
  %.01011.i98 = phi i32 [ 0, %.lr.ph.i96.preheader.new ], [ %.1.i99.1, %.lr.ph.i96 ] ; 2 uses
  %niter861 = phi i32 [ 0, %.lr.ph.i96.preheader.new ], [ %niter861.next.1, %.lr.ph.i96 ]
  %i.dc = sext i32 %.01011.i98 to i64             ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
  %16 = zext i8 %i.de to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !44
  %i.df = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dc
  %i.dg = load float, ptr %i.df, align 4, !tbaa !44
  %i.dh = fcmp ugt float %18, %i.dg
  %i.di = shl nsw i32 %.01011.i98, 1              ; 2 uses
  %i.dj = or disjoint i32 %i.di, 1
  %i.dk = add nsw i32 %i.di, 2
  %.1.i99 = select i1 %i.dh, i32 %i.dk, i32 %i.dj ; 2 uses
  %i.dl = sext i32 %.1.i99 to i64                 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.cz, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !24
  %19 = zext i8 %i.dn to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !44
  %i.do = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dl
  %i.dp = load float, ptr %i.do, align 4, !tbaa !44
  %i.dq = fcmp ugt float %21, %i.dp
  %i.dr = shl nsw i32 %.1.i99, 1                  ; 2 uses
  %i.ds = or disjoint i32 %i.dr, 1
  %i.dt = add nsw i32 %i.dr, 2
  %.1.i99.1 = select i1 %i.dq, i32 %i.dt, i32 %i.ds ; 3 uses
  %niter861.next.1 = add i32 %niter861, 2         ; 2 uses
  %niter861.ncmp.1 = icmp eq i32 %niter861.next.1, %unroll_iter860
  br i1 %niter861.ncmp.1, label %.loopexit260.loopexit.unr-lcssa, label %.lr.ph.i96, !llvm.loop !2

.loopexit260.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i96
  %lcmp.mod857.not = icmp eq i32 %xtraiter856, 0
  br i1 %lcmp.mod857.not, label %.loopexit260, label %.lr.ph.i96.epil.preheader

.lr.ph.i96.epil.preheader:                        ; preds = %.loopexit260.loopexit.unr-lcssa, %.lr.ph.i96.preheader
  %.01011.i98.epil.init = phi i32 [ 0, %.lr.ph.i96.preheader ], [ %.1.i99.1, %.loopexit260.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod859 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod859)
  %i.du = sext i32 %.01011.i98.epil.init to i64   ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.cz, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !24
  %22 = zext i8 %i.dw to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !44
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.du
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !44
  %i.dz = fcmp ugt float %24, %i.dy
  %i.ea = shl nsw i32 %.01011.i98.epil.init, 1    ; 2 uses
  %i.eb = or disjoint i32 %i.ea, 1
  %i.ec = add nsw i32 %i.ea, 2
  %.1.i99.epil = select i1 %i.dz, i32 %i.ec, i32 %i.eb
  br label %.loopexit260

.loopexit260:                                     ; preds = %.lr.ph.i96.epil.preheader, %.loopexit260.loopexit.unr-lcssa, %.loopexit261
  %i.ed = phi float [ %i.cj, %.loopexit261 ], [ %i.cy, %.loopexit260.loopexit.unr-lcssa ], [ %i.cy, %.lr.ph.i96.epil.preheader ] ; 3 uses
  %i.ee = phi i32 [ %i.ce, %.loopexit261 ], [ %i.ct, %.loopexit260.loopexit.unr-lcssa ], [ %i.ct, %.lr.ph.i96.epil.preheader ]
  %.010.lcssa.i95 = phi i32 [ 0, %.loopexit261 ], [ %.1.i99.1, %.loopexit260.loopexit.unr-lcssa ], [ %.1.i99.epil, %.lr.ph.i96.epil.preheader ]
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.s
  %i.eg = sub nsw i32 %.010.lcssa.i95, %i.ee
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !44 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store float %i.ed, ptr %i.el, align 8
  %.sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store float %i.ek, ptr %.sroa_idx162, align 4
  %.not.i = icmp eq ptr %.sroa.13191.1418, %.sroa.19195.1419
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit260
  store float %i.ed, ptr %.sroa.13191.1418, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.c:                                             ; preds = %.loopexit260
  %i.em = ptrtoint ptr %.sroa.19195.1419 to i64
  %i.en = ptrtoint ptr %.sroa.0183.1417 to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 6 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775804
  br i1 %i.ep, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc unwind label %.loopexit.split-lp269

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.eq = ashr exact i64 %i.eo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = tail call i64 @llvm.umin.i64(i64 %i.er, i64 2305843009213693951)
  %i.eu = select i1 %i.es, i64 2305843009213693951, i64 %i.et ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ev = shl nuw nsw i64 %i.eu, 2
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #24
          to label %.noexc102 unwind label %.loopexit268 ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.eo ; 2 uses
  store float %i.ed, ptr %i.ex, align 4, !tbaa !44
  %i.ey = icmp sgt i64 %i.eo, 0
  br i1 %i.ey, label %bb.e, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ew, ptr align 4 %.sroa.0183.1417, i64 %i.eo, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %.noexc102
  %.not.i17.i.i = icmp eq ptr %.sroa.0183.1417, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.1417, i64 noundef %i.eo) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.eu
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.b
  %.sroa.0183.5 = phi ptr [ %i.ew, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.0183.1417, %bb.b ] ; 14 uses
  %.pn258 = phi ptr [ %i.ex, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.13191.1418, %bb.b ]
  %.sroa.19195.5 = phi ptr [ %i.ez, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.19195.1419, %bb.b ] ; 8 uses
  %.sroa.13191.2 = getelementptr inbounds nuw i8, ptr %.pn258, i64 4 ; 6 uses
  %.not.i103 = icmp eq ptr %.sroa.13.1421, %.sroa.19.1422
  br i1 %.not.i103, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  store float %i.ek, ptr %.sroa.13.1421, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.fa = ptrtoint ptr %.sroa.19.1422 to i64
  %i.fb = ptrtoint ptr %.sroa.0169.1420 to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 6 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775804
  br i1 %i.fd, label %bb.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc110 unwind label %.loopexit.split-lp269

.noexc110:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104: ; preds = %bb.h
  %i.fe = ashr exact i64 %i.fc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i105, %i.fe ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fe
  %i.fh = tail call i64 @llvm.umin.i64(i64 %i.ff, i64 2305843009213693951)
  %i.fi = select i1 %i.fg, i64 2305843009213693951, i64 %i.fh ; 3 uses
  %.not.i.i.i106 = icmp ne i64 %i.fi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i106)
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #24
          to label %.noexc111 unwind label %.loopexit268 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i104
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fc ; 2 uses
  store float %i.ek, ptr %i.fl, align 4, !tbaa !44
  %i.fm = icmp sgt i64 %i.fc, 0
  br i1 %i.fm, label %bb.j, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107

bb.j:                                             ; preds = %.noexc111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fk, ptr align 4 %.sroa.0169.1420, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107: ; preds = %bb.j, %.noexc111
  %.not.i17.i.i108 = icmp eq ptr %.sroa.0169.1420, null
  br i1 %.not.i17.i.i108, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.1420, i64 noundef %i.fc) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109: ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i107
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit112

_ZNSt6vectorIfSaIfEE9push_backERKf.exit112:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109, %bb.g
  %.sroa.0169.3 = phi ptr [ %i.fk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ], [ %.sroa.0169.1420, %bb.g ] ; 12 uses
  %.pn259 = phi ptr [ %i.fl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ], [ %.sroa.13.1421, %bb.g ]
  %.sroa.19.3 = phi ptr [ %i.fn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i109 ], [ %.sroa.19.1422, %bb.g ] ; 6 uses
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
  %i.fo = load <2 x float>, ptr %i.t, align 4
  %i.fp = load <4 x float>, ptr %i.y, align 8
  %.val92 = load float, ptr %i.z, align 4, !tbaa !44
  %i.fq = load float, ptr %i.t, align 4, !tbaa !64 ; 2 uses
  %.val92.1 = load float, ptr %i.ad, align 4, !tbaa !44
  %i.fr = load <4 x float>, ptr %i.aa, align 16, !tbaa !44 ; 2 uses
  %i.fs = load <4 x float>, ptr %3, align 16, !tbaa !44 ; 2 uses
  %i.ft = insertelement <2 x float> %i.fo, float %i.fq, i64 1
  %i.fu = fpext <2 x float> %i.ft to <2 x double>
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fw = load <3 x float>, ptr %i.ac, align 16, !tbaa !44
  %i.fx = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.fy = shufflevector <4 x float> %i.fp, <4 x float> %i.fr, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fz = shufflevector <3 x float> %i.fw, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gb = fsub <4 x float> %i.fx, %i.ga
  %i.gc = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gd = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float %.val92, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %.val92.1, i64 3
  %i.gg = fsub <4 x float> %i.gc, %i.gf
  %i.gh = fpext <4 x float> %i.gb to <4 x double> ; 2 uses
  %i.gi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gh, <4 x double> %i.gh, <4 x double> zeroinitializer)
  %i.gj = fpext <4 x float> %i.gg to <4 x double> ; 2 uses
  %i.gk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gj, <4 x double> %i.gj, <4 x double> %i.gi)
  %i.gl = tail call <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.gk)
  %i.gm = fcmp olt <4 x double> %i.gl, %i.fv
  %.val91.1.1 = load float, ptr %i.ae, align 8, !tbaa !44
  %.val92.1.1 = load float, ptr %i.af, align 4, !tbaa !44
  %i.gn = load <2 x float>, ptr %i.t, align 4
  %i.go = load <4 x float>, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.gp = load <2 x float>, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.gq = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x float> %i.gr, float %.val92.1.1, i64 1
  %i.gt = fsub <2 x float> %i.gq, %i.gs
  %i.gu = fpext <2 x float> %i.gt to <2 x double> ; 2 uses
  %i.gv = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.gw = insertelement <2 x float> %i.gp, float %.val91.1.1, i64 1
end_hunk_0
