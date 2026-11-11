Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sparse_matching_gpc?download=true
inline.NumInlined: 1491
inline.NumDeleted: 567
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv7optflow18GPCTrainingSamples6createERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_SC_i:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.u
  %.pn55.pn = phi { ptr, i32 } [ %.pn55, %bb.be ], [ %i.br, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.t
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %bb.bf ], [ %i.bq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.s
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn, %bb.bg ], [ %i.bp, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN2cv7optflow18GPCTrainingSamplesELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  br label %bb.bi

._crit_edge:                                      ; preds = %bb.az, %bb.m
  ret void

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn55.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55.pn.pn.pn, %bb.bh ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn55.pn.pn.pn.pn
}

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #9

declare void @_ZN2cv15readOpticalFlowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #9

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv7optflow12_GLOBAL__N_118getTrainingSamplesERKNS_3MatES4_S4_RSt6vectorINS0_14GPCPatchSampleESaIS6_EEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %6 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %7 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %8 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %9 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %10 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %11 = alloca %"class.std::uniform_int_distribution", align 8 ; 5 uses
  %12 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %13 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %14 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %15 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %16 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %17 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %18 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %19 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %20 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %21 = alloca %"struct.cv::optflow::(anonymous namespace)::Magnitude", align 4 ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %24 = alloca %"class.std::mersenne_twister_engine", align 8 ; 10 uses
  %25 = alloca [3 x %"class.cv::Mat"], align 16   ; 14 uses
  %26 = alloca [3 x %"class.cv::Mat"], align 16   ; 15 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %28 = alloca %"class.cv::flann::Index", align 8 ; 8 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca [3 x %"class.cv::Mat"], align 16   ; 14 uses
  %31 = alloca [3 x %"class.cv::Mat"], align 16   ; 15 uses
  %32 = alloca [3 x %"class.cv::Mat"], align 16   ; 14 uses
  %33 = alloca [3 x %"class.cv::Mat"], align 16   ; 14 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %43 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %47 = alloca %"class.cv::flann::Index", align 8 ; 8 uses
  %48 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %23)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.18, i32 noundef 109) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %22, align 8, !tbaa !25    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !26
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %.thread, %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn127, %bb.dk ], [ %.pn127, %.thread ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.l = icmp eq i32 %i.b, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  br label %_ZNK2cv8MatShapeclEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.b, 0
  %i.q = zext i1 %i.p to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.r = phi i32 [ %i.o, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.s = icmp eq i32 %i.b, 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp sgt i32 %i.b, -1
  %i.w = zext i1 %i.v to i32
  %i.x = select i1 %i.s, i32 %i.u, i32 %i.w       ; 2 uses
  %i.y = icmp sgt i32 %i.x, 20
  br i1 %i.y, label %.preheader.lr.ph, label %._crit_edge244

.preheader.lr.ph:                                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.z = icmp sgt i32 %i.r, 20
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ad = add nsw i32 %i.r, -10
  %i.ae = add nsw i32 %i.x, -10
  %wide.trip.count277 = zext nneg i32 %i.ae to i64
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv274 = phi i64 [ 10, %.preheader.lr.ph ], [ %indvars.iv.next275, %._crit_edge ] ; 4 uses
  %.sroa.33.0242 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.33.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.18.0241 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.18.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0188.0240 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.0188.1.lcssa, %._crit_edge ] ; 2 uses
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.af = trunc nuw nsw i64 %indvars.iv274 to i32
  %i.ag = trunc nuw nsw i64 %indvars.iv274 to i32
  br label %bb.aq

._crit_edge244:                                   ; preds = %._crit_edge, %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0188.0.lcssa = phi ptr [ null, %_ZNK2cv8MatShapeclEv.exit ], [ %.sroa.0188.1.lcssa, %._crit_edge ] ; 11 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %_ZNK2cv8MatShapeclEv.exit ], [ %.sroa.18.1.lcssa, %._crit_edge ] ; 8 uses
  %.sroa.33.0.lcssa = phi ptr [ null, %_ZNK2cv8MatShapeclEv.exit ], [ %.sroa.33.1.lcssa, %._crit_edge ] ; 4 uses
  %i.ah = ptrtoint ptr %.sroa.18.0.lcssa to i64   ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.0188.0.lcssa to i64 ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = sdiv exact i64 %i.aj, 12                ; 8 uses
  %i.al = uitofp i64 %i.ak to double
  %i.am = fmul nnan double %i.al, 8.000000e-01
  %i.an = fptoui double %i.am to i64              ; 9 uses
  %i.ao = getelementptr inbounds [12 x i8], ptr %.sroa.0188.0.lcssa, i64 %i.an ; 6 uses
  %i.ap = icmp eq ptr %.sroa.0188.0.lcssa, %.sroa.18.0.lcssa ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %.sroa.18.0.lcssa    ; 2 uses
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEEEvT_SB_SB_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge244
  %i.ar = icmp sgt i64 %i.aj, 36
  br i1 %i.ar, label %.lr.ph.preheader.i, label %._crit_edge.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.as = udiv exact i64 %i.aj, 12
  %i.at = tail call range(i64 3, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = xor i64 %i.au, 126
  br label %.lr.ph.i

.lr.ph.i.i:                                       ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_T0_.exit.i.i
  %i.aw = icmp eq i64 %i.ec, 0
  br i1 %i.aw, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i, !llvm.loop !173

.lr.ph.i._crit_edge.i:                            ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 6 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.er
  %.fr52.i.i.i = freeze i64 %i.az                 ; 4 uses
  %i.ba = icmp slt i64 %.fr52.i.i.i, 24
  br i1 %i.ba, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i._crit_edge.i
  %i.bb = udiv exact i64 %.fr52.i.i.i, 12         ; 3 uses
  %i.bc = add nsw i64 %i.bb, -2                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 3 uses
  %i.be = add nsw i64 %i.bb, -1
  %i.bf = lshr i64 %i.be, 1                       ; 2 uses
  %i.bg = and i64 %i.bb, 1
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = or disjoint i64 %i.bc, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.bd
  br label %bb.j

bb.j:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i, %bb.i
  %.011.i.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ce, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i ] ; 8 uses
  %i.bl = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.011.i.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.bl, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !tbaa !30
  %i.bm = icmp slt i64 %.011.i.i.i.i, %i.bf
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.045.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i, %bb.j ] ; 2 uses
  %i.bn = shl i64 %.045.i.i.i.i.i, 1              ; 2 uses
  %i.bo = add i64 %i.bn, 2                        ; 2 uses
  %i.bp = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.bo
  %i.bq = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.br = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.bq
  %.val2.i.i.i.i.i.i = load float, ptr %i.bp, align 4, !tbaa !200
  %.val3.i.i.i.i.i.i = load float, ptr %i.br, align 4, !tbaa !200
  %i.bs = fcmp ogt float %.val2.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.bs, i64 %i.bq, i64 %i.bo ; 4 uses
  %i.bt = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %spec.select.i.i.i.i.i
  %i.bu = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.045.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, ptr noundef nonnull align 4 dereferenceable(12) %i.bt, i64 12, i1 false), !tbaa.struct !201
  %i.bv = icmp slt i64 %spec.select.i.i.i.i.i, %i.bf
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !174

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.011.i.i.i.i, %bb.j ], [ %spec.select.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i.i.i, %i.bd
  %or.cond.i.i.i.i = select i1 %i.bh, i1 %i.bw, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false), !tbaa.struct !201
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %i.bi, %bb.k ], [ %.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bx = icmp sgt i64 %.1.i.i.i.i.i, %.011.i.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l
  %.sroa.03.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.04.0.copyload.i.i.i.i to i32
  %i.by = bitcast i32 %.sroa.03.sroa.0.0.extract.trunc.i.i.i.i.i.i to float
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.01010.i.i.i.i.i.i, %bb.n ] ; 3 uses
  %.01010.in.i.i.i.i.i.i = add nsw i64 %.09.i.i.i.i.i.i, -1
  %.01010.i.i.i.i.i.i = sdiv i64 %.01010.in.i.i.i.i.i.i, 2 ; 4 uses
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.01010.i.i.i.i.i.i ; 2 uses
  %.val1.i.i.i.i.i.i.i = load float, ptr %i.bz, align 4, !tbaa !200
  %i.ca = fcmp ogt float %.val1.i.i.i.i.i.i.i, %i.by
  br i1 %i.ca, label %bb.n, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.09.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !201
  %i.cc = icmp sgt i64 %.01010.i.i.i.i.i.i, %.011.i.i.i.i
  br i1 %i.cc, label %bb.m, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i, !llvm.loop !175

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.l ], [ %.01010.i.i.i.i.i.i, %bb.n ], [ %.09.i.i.i.i.i.i, %bb.m ]
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.0.lcssa.i.i.i.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i.i.i, ptr %i.cd, align 4
  %.sroa.3.0..sroa.0.0..val14.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.3.0..sroa.0.0..val14.sroa_idx.i.i.i.i.i.i, align 4, !tbaa !30
  %.not.i.i.i.i = icmp eq i64 %.011.i.i.i.i, 0
  %i.ce = add nsw i64 %.011.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i.i, label %bb.j, !llvm.loop !176

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_.exit.i.i.i.i, %.lr.ph.i._crit_edge.i
  %i.cf = icmp ult ptr %i.ax, %.sroa.020.0..sroa.012.1.i.i.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_.exit.i.i.i
  %i.cg = sdiv i64 %.fr52.i.i.i, 12               ; 3 uses
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = sdiv i64 %i.ch, 2
  %i.cj = icmp sgt i64 %.fr52.i.i.i, 24
  %i.ck = and i64 %i.cg, 1
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  %i.cm = add nsw i64 %i.cg, -2                   ; 3 uses
  %i.cn = ashr exact i64 %i.cm, 1                 ; 2 uses
  br i1 %i.cj, label %.lr.ph.split.us.preheader.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.preheader.i.i.i:                  ; preds = %.lr.ph.i.i.i
  %i.co = or disjoint i64 %i.cm, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.co
  %i.cq = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.cn
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.r, %.lr.ph.split.us.preheader.i.i.i
  %.sroa.0.030.us.i.i.i = phi ptr [ %i.dg, %bb.r ], [ %i.ax, %.lr.ph.split.us.preheader.i.i.i ] ; 5 uses
  %.val2.i.us.i.i.i = load float, ptr %.sroa.0.030.us.i.i.i, align 4, !tbaa !200
  %.val3.i.us.i.i.i = load float, ptr %.sroa.012.1.i.i..sroa.022.0.i.i, align 4, !tbaa !200
  %i.cr = fcmp ogt float %.val2.i.us.i.i.i, %.val3.i.us.i.i.i
  br i1 %i.cr, label %.lr.ph.i.i24.preheader.us.i.i.i, label %bb.r

.lr.ph.i.i24.preheader.us.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.04.0.copyload.i10.us.i.i.i = load i64, ptr %.sroa.0.030.us.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i11.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.030.us.i.i.i, i64 8
  %.sroa.4.0.copyload.i12.us.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i11.us.i.i.i, align 4, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.030.us.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.1.i.i..sroa.022.0.i.i, i64 12, i1 false), !tbaa.struct !201
  br label %.lr.ph.i.i24.us.i.i.i

.lr.ph.i.i24.us.i.i.i:                            ; preds = %.lr.ph.i.i24.us.i.i.i, %.lr.ph.i.i24.preheader.us.i.i.i
  %.045.i.i25.us.i.i.i = phi i64 [ %spec.select.i.i28.us.i.i.i, %.lr.ph.i.i24.us.i.i.i ], [ 0, %.lr.ph.i.i24.preheader.us.i.i.i ] ; 2 uses
  %i.cs = shl i64 %.045.i.i25.us.i.i.i, 1         ; 2 uses
  %i.ct = add i64 %i.cs, 2                        ; 2 uses
  %i.cu = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.ct
  %i.cv = or disjoint i64 %i.cs, 1                ; 2 uses
  %i.cw = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %i.cv
  %.val2.i.i.i26.us.i.i.i = load float, ptr %i.cu, align 4, !tbaa !200
  %.val3.i.i.i27.us.i.i.i = load float, ptr %i.cw, align 4, !tbaa !200
  %i.cx = fcmp ogt float %.val2.i.i.i26.us.i.i.i, %.val3.i.i.i27.us.i.i.i
  %spec.select.i.i28.us.i.i.i = select i1 %i.cx, i64 %i.cv, i64 %i.ct ; 6 uses
  %i.cy = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %spec.select.i.i28.us.i.i.i
  %i.cz = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.045.i.i25.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cz, ptr noundef nonnull align 4 dereferenceable(12) %i.cy, i64 12, i1 false), !tbaa.struct !201
  %i.da = icmp slt i64 %spec.select.i.i28.us.i.i.i, %i.ci
  br i1 %i.da, label %.lr.ph.i.i24.us.i.i.i, label %._crit_edge.i.i13.loopexit.us.i.i.i, !llvm.loop !174

bb.o:                                             ; preds = %._crit_edge.i.i13.loopexit.us.i.i.i
  %.not.i15.us.i.i.i = icmp eq i64 %spec.select.i.i28.us.i.i.i, 0
  br i1 %.not.i15.us.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.us.i.i.i, label %.lr.ph.i.i.i16.us.i.i.i

.thread.i.us.i.i.i:                               ; preds = %._crit_edge.i.i13.loopexit.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cq, ptr noundef nonnull align 4 dereferenceable(12) %i.cp, i64 12, i1 false), !tbaa.struct !201
  br label %.lr.ph.i.i.i16.us.i.i.i

.lr.ph.i.i.i16.us.i.i.i:                          ; preds = %.thread.i.us.i.i.i, %bb.o
  %.1.i4.i.us.i.i.i = phi i64 [ %i.co, %.thread.i.us.i.i.i ], [ %spec.select.i.i28.us.i.i.i, %bb.o ]
  %.sroa.03.sroa.0.0.extract.trunc.i.i.i17.us.i.i.i = trunc i64 %.sroa.04.0.copyload.i10.us.i.i.i to i32
  %i.db = bitcast i32 %.sroa.03.sroa.0.0.extract.trunc.i.i.i17.us.i.i.i to float
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i16.us.i.i.i
  %.09.i.i.i18.us.i.i.i = phi i64 [ %.1.i4.i.us.i.i.i, %.lr.ph.i.i.i16.us.i.i.i ], [ %.01010.i.i56.i.us.i.i.i, %bb.q ] ; 3 uses
  %.01010.in.i.i.i19.us.i.i.i = add nsw i64 %.09.i.i.i18.us.i.i.i, -1
  %.01010.i.i56.i.us.i.i.i = lshr i64 %.01010.in.i.i.i19.us.i.i.i, 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.01010.i.i56.i.us.i.i.i ; 2 uses
  %.val1.i.i.i.i20.us.i.i.i = load float, ptr %i.dc, align 4, !tbaa !200
  %i.dd = fcmp ogt float %.val1.i.i.i.i20.us.i.i.i, %i.db
  br i1 %i.dd, label %bb.q, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.us.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.09.i.i.i18.us.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, ptr noundef nonnull align 4 dereferenceable(12) %i.dc, i64 12, i1 false), !tbaa.struct !201
  %.not7.i.us.i.i.i = icmp eq i64 %.01010.i.i56.i.us.i.i.i, 0
  br i1 %.not7.i.us.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.us.i.i.i, label %bb.p, !llvm.loop !175

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.us.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.0.lcssa.i.i.i22.us.i.i.i = phi i64 [ 0, %bb.o ], [ 0, %bb.q ], [ %.09.i.i.i18.us.i.i.i, %bb.p ]
  %i.df = getelementptr inbounds [12 x i8], ptr %.sroa.012.1.i.i..sroa.022.0.i.i, i64 %.0.lcssa.i.i.i22.us.i.i.i ; 2 uses
  store i64 %.sroa.04.0.copyload.i10.us.i.i.i, ptr %i.df, align 4
  %.sroa.3.0..sroa.0.0..val14.sroa_idx.i.i.i23.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %.sroa.4.0.copyload.i12.us.i.i.i, ptr %.sroa.3.0..sroa.0.0..val14.sroa_idx.i.i.i23.us.i.i.i, align 4, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_.exit.us.i.i.i, %.lr.ph.split.us.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.030.us.i.i.i, i64 12 ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %.sroa.020.0..sroa.012.1.i.i.i.i
  br i1 %i.dh, label %.lr.ph.split.us.i.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN2cv7optflow12_GLOBAL__N_19MagnitudeESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit.i.i, !llvm.loop !177

._crit_edge.i.i13.loopexit.us.i.i.i:              ; preds = %.lr.ph.i.i24.us.i.i.i
  %i.di = icmp eq i64 %spec.select.i.i28.us.i.i.i, %i.cn
  %or.cond.i.i.i = select i1 %i.cl, i1 %i.di, i1 false
  br i1 %or.cond.i.i.i, label %.thread.i.us.i.i.i, label %bb.o

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
end_hunk_0
