Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail12DpSeamFinder15setCostFunctionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder4findERKSt6vectorINS_4UMatESaIS3_EERKS2_INS_6Point_IiEESaIS9_EERS5_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.45", align 8    ; 13 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv6detail17stitchingLogLevelEv() ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %.preheader108

.preheader108:                                    ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 184                 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.preheader, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread: ; preds = %.preheader108
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit102:                                     ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, %.preheader
  %.pre-phi183 = phi i64 [ %i.u, %.preheader ], [ %i.az, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.k = phi ptr [ %i.o, %.preheader ], [ %i.av, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.p, %.preheader ], [ %i.au, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.sroa.20.1.lcssa = phi ptr [ %.sroa.20.0152, %.preheader ], [ %.sroa.20.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0153, %.preheader ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.078.1.lcssa = phi ptr [ %.sroa.078.0154, %.preheader ], [ %.sroa.078.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.m = add nuw i64 %i.q, 1                      ; 2 uses
  %i.n = icmp ult i64 %i.m, %.pre-phi183
  br i1 %i.n, label %.preheader, label %._crit_edge, !llvm.loop !259

.preheader:                                       ; preds = %.preheader108, %.loopexit102
  %i.o = phi ptr [ %i.k, %.loopexit102 ], [ %i.d, %.preheader108 ] ; 2 uses
  %i.p = phi ptr [ %i.l, %.loopexit102 ], [ %i.c, %.preheader108 ] ; 2 uses
  %i.q = phi i64 [ %i.m, %.loopexit102 ], [ 1, %.preheader108 ] ; 2 uses
  %storemerge155 = phi i64 [ %i.q, %.loopexit102 ], [ 0, %.preheader108 ] ; 3 uses
  %.sroa.078.0154 = phi ptr [ %.sroa.078.1.lcssa, %.loopexit102 ], [ null, %.preheader108 ] ; 2 uses
  %.sroa.13.0153 = phi ptr [ %.sroa.13.1.lcssa, %.loopexit102 ], [ null, %.preheader108 ] ; 2 uses
  %.sroa.20.0152 = phi ptr [ %.sroa.20.1.lcssa, %.loopexit102 ], [ null, %.preheader108 ] ; 2 uses
  %storemerge52145 = add nuw i64 %storemerge155, 1 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 184                 ; 2 uses
  %i.v = icmp ult i64 %storemerge52145, %i.u
  br i1 %i.v, label %.lr.ph, label %.loopexit102

._crit_edge:                                      ; preds = %.loopexit102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.w = icmp ugt i64 %.pre-phi183, 44343134792571037
  br i1 %i.w, label %bb.b, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge
  %i.x = icmp eq ptr %i.l, %i.k
  br i1 %i.x, label %.loopexit101.thread, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

.loopexit101.thread:                              ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge165

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.20.0.lcssa206238 = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.sroa.20.1.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sroa.13.0.lcssa214236 = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.sroa.13.1.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.sroa.078.0.lcssa215234 = phi ptr [ null, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.sroa.078.1.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.lcssa124225232 = phi i64 [ %i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.thread ], [ %.pre-phi183, %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %i.y = mul nuw nsw i64 %.lcssa124225232, 208
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26
          to label %.noexc55 unwind label %bb.j   ; 4 uses

.noexc55:                                         ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.z, ptr %4, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw [208 x i8], ptr %i.z, i64 %.lcssa124225232
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !123
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc55
  %.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc55 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.lcssa124225232, %.noexc55 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #28
  %i.ad = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit101, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %storemerge52149 = phi i64 [ %storemerge52, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %storemerge52145, %.preheader ] ; 3 uses
  %.sroa.078.1148 = phi ptr [ %.sroa.078.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.078.0154, %.preheader ] ; 7 uses
  %.sroa.13.1147 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.13.0153, %.preheader ] ; 8 uses
  %.sroa.20.1146 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.20.0152, %.preheader ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.1147, %.sroa.20.1146
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i64 %storemerge155, ptr %.sroa.13.1147, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1147, i64 8
  store i64 %storemerge52149, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.af = ptrtoint ptr %.sroa.13.1147 to i64
  %i.ag = ptrtoint ptr %.sroa.078.1148 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775792
  br i1 %i.ai, label %bb.e, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #29
          to label %.noexc57 unwind label %.loopexit.split-lp104.loopexit.split-lp

.noexc57:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.aj = ashr exact i64 %i.ah, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 576460752303423487)
  %i.an = select i1 %i.al, i64 576460752303423487, i64 %i.am ; 3 uses
  %.not.i.i.i.i56 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i56)
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc58 unwind label %.loopexit.split-lp104.loopexit.split-lp ; 5 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i64 %storemerge155, ptr %i.aq, align 8
  %.sroa.6.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %storemerge52149, ptr %.sroa.6.0..sroa_idx71, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.078.1148, %.sroa.13.1147
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc58, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %.noexc58 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.078.1148, %.noexc58 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !269
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %.sroa.13.1147
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !263

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc58
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %.noexc58 ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.078.1148, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.1148, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %.sroa.20.3 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.1146, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.13.1147, %bb.c ]
  %.sroa.078.3 = phi ptr [ %i.ap, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.078.1148, %bb.c ] ; 2 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %storemerge52 = add nuw i64 %storemerge52149, 1 ; 2 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 184               ; 2 uses
  %i.ba = icmp ult i64 %storemerge52, %i.az
  br i1 %i.ba, label %.lr.ph, label %.loopexit102, !llvm.loop !264

.loopexit.split-lp104.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit101:                                     ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  %.pre180 = load ptr, ptr %1, align 8, !tbaa !39 ; 2 uses
  %i.bb = icmp eq ptr %.pre, %.pre180
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !124
  br i1 %i.bb, label %._crit_edge165, label %.lr.ph164

._crit_edge165:                                   ; preds = %bb.l, %.loopexit101.thread, %.loopexit101
  %.sroa.078.0.lcssa215233246 = phi ptr [ %.sroa.078.1.lcssa, %.loopexit101.thread ], [ %.sroa.078.0.lcssa215234, %.loopexit101 ], [ %.sroa.078.0.lcssa215234, %bb.l ] ; 15 uses
  %.sroa.13.0.lcssa214235245 = phi ptr [ %.sroa.13.1.lcssa, %.loopexit101.thread ], [ %.sroa.13.0.lcssa214236, %.loopexit101 ], [ %.sroa.13.0.lcssa214236, %bb.l ] ; 9 uses
  %.sroa.20.0.lcssa206237244 = phi ptr [ %.sroa.20.1.lcssa, %.loopexit101.thread ], [ %.sroa.20.0.lcssa206238, %.loopexit101 ], [ %.sroa.20.0.lcssa206238, %bb.l ] ; 4 uses
  %i.bc = phi ptr [ null, %.loopexit101.thread ], [ %i.z, %.loopexit101 ], [ %i.br, %bb.l ] ; 4 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !47    ; 4 uses
  %.not.i.i59 = icmp ne ptr %.sroa.078.0.lcssa215233246, %.sroa.13.0.lcssa214235245 ; 3 uses
  br i1 %.not.i.i59, label %bb.g, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit

bb.g:                                             ; preds = %._crit_edge165
  %i.be = ptrtoint ptr %.sroa.13.0.lcssa214235245 to i64
  %i.bf = ptrtoint ptr %.sroa.078.0.lcssa215233246 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = ashr exact i64 %i.bg, 4
  %i.bi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = xor i64 %i.bj, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_SG_T0_T1_(ptr %.sroa.078.0.lcssa215233246, ptr %.sroa.13.0.lcssa214235245, i64 noundef %i.bk, ptr %i.bc, ptr %i.bd)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %bb.g
  %i.bl = icmp sgt i64 %i.bg, 256
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc61
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.078.0.lcssa215233246, i64 256 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_SG_T0_(ptr %.sroa.078.0.lcssa215233246, ptr nonnull %i.bm, ptr %i.bc, ptr %i.bd)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bm, %.sroa.13.0.lcssa214235245
  br i1 %.not9.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc62, %.noexc63
  %.sroa.0.010.i.i.i.i = phi ptr [ %i.bn, %.noexc63 ], [ %i.bm, %.noexc62 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_T0_(ptr nonnull %.sroa.0.010.i.i.i.i, ptr %i.bc, ptr %i.bd)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %.lr.ph.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.bn, %.sroa.13.0.lcssa214235245
  br i1 %.not.i.i.i.i60, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !265

bb.i:                                             ; preds = %.noexc61
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN2cv6detail12DpSeamFinder13ImagePairLessEEEEvT_SG_T0_(ptr %.sroa.078.0.lcssa215233246, ptr %.sroa.13.0.lcssa214235245, ptr %i.bc, ptr %i.bd)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i, %bb.b
  %.sroa.078.0.lcssa217 = phi ptr [ %.sroa.078.0.lcssa215234, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %.sroa.078.1.lcssa, %bb.b ]
  %.sroa.20.0.lcssa208 = phi ptr [ %.sroa.20.0.lcssa206238, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ], [ %.sroa.20.1.lcssa, %bb.b ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph164:                                        ; preds = %.loopexit101, %bb.l
  %i.bp = phi ptr [ %i.bw, %bb.l ], [ %.pre180, %.loopexit101 ]
  %.043162 = phi i64 [ %i.bu, %bb.l ], [ 0, %.loopexit101 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bq = getelementptr inbounds nuw [184 x i8], ptr %i.bp, i64 %.043162
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %i.bq, i32 noundef 16777216)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.lr.ph164
  %i.br = load ptr, ptr %4, align 8, !tbaa !122   ; 2 uses
  %i.bs = getelementptr inbounds nuw [208 x i8], ptr %i.br, i64 %.043162
  %i.bt = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bs, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bu = add nuw i64 %.043162, 1                 ; 2 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.bw = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 184
  %i.cb = icmp ult i64 %i.bu, %i.ca
  br i1 %i.cb, label %.lr.ph164, label %._crit_edge165, !llvm.loop !266

bb.m:                                             ; preds = %.lr.ph164
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn48 = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %i.cc, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit: ; preds = %.noexc63, %.noexc62, %._crit_edge165, %bb.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !122   ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEN2cv6detail12DpSeamFinder13ImagePairLessEEvT_SD_T0_.exit
  %.not.i.i1.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cm) #27
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.13.0.lcssa214235245, i64 -16 ; 2 uses
  %i.cn = icmp ult ptr %.sroa.078.0.lcssa215233246, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %.not.i.i59, i1 %i.cn, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 4 uses
  %.pn10.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.13.0.lcssa214235245, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ]
  %.sroa.05.09.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %.sroa.078.0.lcssa215233246, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 4 uses
  %i.co = load i64, ptr %.sroa.05.09.i.i, align 8, !tbaa !34
  %i.cp = load i64, ptr %.sroa.0.011.i.i, align 8, !tbaa !34
  store i64 %i.cp, ptr %.sroa.05.09.i.i, align 8, !tbaa !34
  store i64 %i.co, ptr %.sroa.0.011.i.i, align 8, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.pn10.i.i, i64 -8 ; 2 uses
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !34
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !34
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !34
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %.sroa.0.0.i.i
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, !llvm.loop !267

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.cw = ptrtoint ptr %.sroa.078.0.lcssa215233246 to i64 ; 3 uses
  br i1 %.not.i.i59, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.cx = ptrtoint ptr %.sroa.13.0.lcssa214235245 to i64
  %i.cy = sub i64 %i.cx, %i.cw
  %i.cz = ashr exact i64 %i.cy, 4
  br label %.lr.ph167

._crit_edge168:                                   ; preds = %bb.w, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.da = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv6detail17stitchingLogLevelEv()
          to label %bb.af unwind label %bb.r      ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %bb.i, %bb.h, %bb.g
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.sroa.078.0.lcssa218 = phi ptr [ %.sroa.078.0.lcssa215234, %bb.o ], [ %.sroa.078.0.lcssa215233246, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.20.0.lcssa209 = phi ptr [ %.sroa.20.0.lcssa206238, %bb.o ], [ %.sroa.20.0.lcssa206237244, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.o ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %bb.j
  %.sroa.078.0.lcssa216 = phi ptr [ %.sroa.078.0.lcssa218, %.loopexit.split-lp ], [ %.sroa.078.0.lcssa217, %bb.j ]
  %.sroa.20.0.lcssa207 = phi ptr [ %.sroa.20.0.lcssa209, %.loopexit.split-lp ], [ %.sroa.20.0.lcssa208, %bb.j ]
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.loopexit.split-lp ], [ %i.bo, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ah

bb.r:                                             ; preds = %._crit_edge168
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.w
  %.034166 = phi i64 [ %i.dr, %bb.w ], [ 0, %.lr.ph167.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.078.0.lcssa215233246, i64 %.034166 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !126 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !127 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.dg = load ptr, ptr %3, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw [184 x i8], ptr %i.dg, i64 %i.dd
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %i.dh, i32 noundef 50331648)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %.lr.ph167
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.di = load ptr, ptr %3, align 8, !tbaa !39
  %i.dj = getelementptr inbounds nuw [184 x i8], ptr %i.di, i64 %i.df
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(184) %i.dj, i32 noundef 50331648)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.dk = load ptr, ptr %1, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw [184 x i8], ptr %i.dk, i64 %i.dd
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(184) %i.dl, i32 noundef 16777216)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.dm = load ptr, ptr %1, align 8, !tbaa !39
  %i.dn = getelementptr inbounds nuw [184 x i8], ptr %i.dm, i64 %i.df
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(184) %i.dn, i32 noundef 16777216)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.do = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dd
  %.sroa.01.0.copyload = load i64, ptr %i.dp, align 4, !tbaa !48
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.df
  %.sroa.0.0.copyload = load i64, ptr %i.dq, align 4, !tbaa !48
  invoke void @_ZN2cv6detail12DpSeamFinder7processERKNS_3MatES4_NS_6Point_IiEES6_RS2_S7_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, i64 %.sroa.01.0.copyload, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dr = add nuw i64 %.034166, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %i.cz
  br i1 %exitcond.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !268

bb.x:                                             ; preds = %.lr.ph167
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.s
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.ab ], [ %i.dv, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.du, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ad ], [ %i.dt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.ae
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ae ], [ %i.ds, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ai

bb.af:                                            ; preds = %._crit_edge168
  %.not.i.i.i65 = icmp eq ptr %.sroa.078.0.lcssa215233246, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = ptrtoint ptr %.sroa.20.0.lcssa206237244 to i64
  %i.dy = sub i64 %i.dx, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.0.lcssa215233246, i64 noundef %i.dy) #27
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %bb.ag, %bb.af, %bb.a
  ret void

bb.ah:                                            ; preds = %.loopexit.split-lp104.loopexit.split-lp, %bb.r, %bb.q
  %.sroa.20.2 = phi ptr [ %.sroa.20.0.lcssa206237244, %bb.r ], [ %.sroa.20.0.lcssa207, %bb.q ], [ %.sroa.13.1147, %.loopexit.split-lp104.loopexit.split-lp ]
  %.sroa.078.2 = phi ptr [ %.sroa.078.0.lcssa215233246, %bb.r ], [ %.sroa.078.0.lcssa216, %bb.q ], [ %.sroa.078.1148, %.loopexit.split-lp104.loopexit.split-lp ] ; 3 uses
  %.pn53 = phi { ptr, i32 } [ %i.db, %bb.r ], [ %.pn48.pn.pn, %bb.q ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp104.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.078.2, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit67, label %._crit_edge184

._crit_edge184:                                   ; preds = %bb.ah
  %.pre185 = ptrtoint ptr %.sroa.078.2 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge184, %.thread
  %.pre-phi186 = phi i64 [ %.pre185, %._crit_edge184 ], [ %i.cw, %.thread ]
  %.pn5399 = phi { ptr, i32 } [ %.pn53, %._crit_edge184 ], [ %.pn.pn.pn.pn, %.thread ]
  %.sroa.078.298 = phi ptr [ %.sroa.078.2, %._crit_edge184 ], [ %.sroa.078.0.lcssa215233246, %.thread ]
  %.sroa.20.297 = phi ptr [ %.sroa.20.2, %._crit_edge184 ], [ %.sroa.20.0.lcssa206237244, %.thread ]
  %i.dz = ptrtoint ptr %.sroa.20.297 to i64
  %i.ea = sub i64 %i.dz, %.pre-phi186
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.298, i64 noundef %i.ea) #27
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit67

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit67:      ; preds = %bb.ah, %bb.ai
  %.pn53100 = phi { ptr, i32 } [ %.pn53, %bb.ah ], [ %.pn5399, %bb.ai ]
  resume { ptr, i32 } %.pn53100
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !122    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #28
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !122
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder7processERKNS_3MatES4_NS_6Point_IiEES6_RS2_S7_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %23 = alloca %"class.cv::Mat_", align 8         ; 6 uses
  %24 = alloca %"class.cv::Rect_", align 8        ; 6 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %27 = alloca %"class.cv::Rect_", align 8        ; 6 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %30 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %.sroa.0268.0.extract.trunc = trunc i64 %3 to i32 ; 4 uses
  %.sroa.9273.0.extract.shift = lshr i64 %3, 32
  %.sroa.9273.0.extract.trunc = trunc nuw i64 %.sroa.9273.0.extract.shift to i32 ; 4 uses
  %.sroa.0235.0.extract.trunc = trunc i64 %4 to i32 ; 4 uses
  %.sroa.9.0.extract.shift = lshr i64 %4, 32
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv6detail12DpSeamFinder7processERKNS_3MatES4_NS_6Point_IiEES6_RS2_S7_E25__cv_trace_location_fn239)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.22, i32 noundef 109) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %13, align 8, !tbaa !29    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !30
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52   ; 6 uses
  %i.aa = icmp slt i32 %i.z, 3
  br i1 %i.aa, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc134 unwind label %bb.aj

.noexc134:                                        ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.22, i32 noundef 109) #29
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc134
  unreachable

bb.k:                                             ; preds = %.noexc134
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.k
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.body

bb.l:                                             ; preds = %bb.h
  %i.ah = icmp sgt i32 %i.z, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.aj = icmp eq i32 %i.z, 2
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  br label %bb.o

bb.n:                                             ; preds = %bb.l
end_hunk_0
