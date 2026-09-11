Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_cvround?download=true
inline.NumInlined: 2435
inline.NumDeleted: 947
begin_hunk_0_@_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE24AddTestCaseInstantiationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEEvEPFSA_RKNS_13TestParamInfoISK_EEEPKci:bb.a
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !49
  store i64 0, ptr %i.m, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull align 8 dereferenceable(28) %i.p, i64 28, i1 false)
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr %i.ai, ptr %i.t, align 8, !tbaa !162
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit

bb.f:                                             ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEEvEPFSB_RKNS_13TestParamInfoISL_EEEPKci.exit
  invoke void @_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(60) %6)
          to label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit unwind label %bb.g

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.f
  %.pre10 = load ptr, ptr %6, align 8, !tbaa !47  ; 2 uses
  %i.aj = icmp eq ptr %.pre10, %i.c
  br i1 %i.aj, label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre10, i64 noundef %i.al) #32
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i32 0

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.g
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !48
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #32
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit9

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_NaNEE17InstantiationInfoD2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL51gtest_Size_MatType_CvRound_Float_NaN_EvalGenerator_Ev(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ParamGenerator") align 8 %0) #1 {
bb.a:
  %1 = alloca %"class.testing::internal::CartesianProductHolder2", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %.sroa.03.0.copyload = load i64, ptr @_ZN4perfL5szVGAE, align 8
  %.sroa.02.0.copyload = load i64, ptr @_ZN4perfL6sz720pE, align 8
  %.sroa.01.0.copyload = load i64, ptr @_ZN4perfL7sz1080pE, align 8
  %.sroa.0.0.copyload = load i64, ptr @_ZN4perfL5szODDE, align 8
  store i64 %.sroa.03.0.copyload, ptr %1, align 8, !alias.scope !359
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.a, align 8, !alias.scope !359
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.01.0.copyload, ptr %i.b, align 8, !alias.scope !359
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !alias.scope !359
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 5, ptr %i.d, align 8, !tbaa !103, !alias.scope !359
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 6, ptr %i.e, align 4, !tbaa !104, !alias.scope !359
  call void @_ZNK7testing8internal23CartesianProductHolder2INS0_11ValueArray4IN2cv5Size_IiEES5_S5_S5_EENS0_11ValueArray2IiiEEEcvNS0_14ParamGeneratorISt5tupleIJT_T0_EEEEIS5_N4perf7MatTypeEEEv(ptr dead_on_unwind writable sret(%"class.testing::internal::ParamGenerator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL54gtest_Size_MatType_CvRound_Float_NaN_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 %1) #1 {
bb.a:
  tail call void @_ZN7testing8internal16DefaultParamNameISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13TestParamInfoIT_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test30Size_MatType_CvRound_Float_NaN12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %4 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.08.0.copyload = load i64, ptr %i.c, align 4 ; 2 uses
  %i.d = tail call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106  ; 2 uses
  %i.f = and i32 %i.e, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %.sroa.08.0.copyload, i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %.sroa.08.0.copyload, i32 noundef 4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %3, align 8, !tbaa !109
  store ptr %1, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper2inERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 50397184, ptr %4, align 8, !tbaa !109
  store ptr %2, ptr %i.k, align 8, !tbaa !110
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper3outERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  switch i32 %i.f, label %.critedge [
    i32 5, label %.preheader
    i32 6, label %.preheader36
  ]

.preheader36:                                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.n

.preheader:                                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN11opencv_testL10cvIsNaNMatIfEEvRKN2cv3MatERS2_.exit
  %i.z = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.t, align 8
  %.val23 = load i64, ptr %i.u, align 8
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !117 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph4.i, label %_ZN11opencv_testL10cvIsNaNMatIfEEvRKN2cv3MatERS2_.exit

.lr.ph4.i:                                        ; preds = %bb.i
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !118
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !45
  %i.af = load i32, ptr %i.y, align 4, !tbaa !119 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph4.split.i, label %_ZN11opencv_testL10cvIsNaNMatIfEEvRKN2cv3MatERS2_.exit

.lr.ph4.split.i:                                  ; preds = %.lr.ph4.i, %._crit_edge.i
  %i.ah = phi i32 [ %i.ao, %._crit_edge.i ], [ %i.ab, %.lr.ph4.i ]
  %i.ai = phi i32 [ %i.ap, %._crit_edge.i ], [ %i.af, %.lr.ph4.i ] ; 2 uses
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %._crit_edge.i ], [ 0, %.lr.ph4.i ] ; 3 uses
  %i.aj = mul i64 %indvars.iv8.i, %.val23
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %i.al = mul i64 %indvars.iv8.i, %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = icmp sgt i32 %i.ai, 0
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !117
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph4.split.i
  %i.ao = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ah, %.lr.ph4.split.i ] ; 2 uses
  %i.ap = phi i32 [ %i.aw, %._crit_edge.loopexit.i ], [ %i.ai, %.lr.ph4.split.i ]
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1 ; 2 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = icmp slt i64 %indvars.iv.next9.i, %i.aq
  br i1 %i.ar, label %.lr.ph4.split.i, label %_ZN11opencv_testL10cvIsNaNMatIfEEvRKN2cv3MatERS2_.exit, !llvm.loop !360

.lr.ph.i:                                         ; preds = %.lr.ph4.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph4.split.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.at = load float, ptr %i.as, align 4, !tbaa !122
  %5 = fcmp uno float %i.at, 0.000000e+00
  %i.au = select i1 %5, i32 1, i32 2
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = load i32, ptr %i.y, align 4, !tbaa !119 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !361

_ZN11opencv_testL10cvIsNaNMatIfEEvRKN2cv3MatERS2_.exit: ; preds = %._crit_edge.i, %.lr.ph4.i, %bb.i
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.e unwind label %.loopexit, !llvm.loop !362

bb.j:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.bb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.s

.loopexit:                                        ; preds = %bb.e, %bb.g, %_ZN11opencv_testL10cvIsNaNMatIfEEvRKN2cv3MatERS2_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.n, %bb.p, %_ZN11opencv_testL10cvIsNaNMatIdEEvRKN2cv3MatERS2_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %.preheader36, %_ZN11opencv_testL10cvIsNaNMatIdEEvRKN2cv3MatERS2_.exit
  %i.bc = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  br i1 %i.bc, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bd = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.bd, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %.val24 = load ptr, ptr %i.n, align 8
  %.val25 = load i64, ptr %i.o, align 8
  %i.be = load i32, ptr %i.p, align 8, !tbaa !117 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph4.i26, label %_ZN11opencv_testL10cvIsNaNMatIdEEvRKN2cv3MatERS2_.exit

.lr.ph4.i26:                                      ; preds = %bb.r
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !45
  %i.bi = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph4.split.i27, label %_ZN11opencv_testL10cvIsNaNMatIdEEvRKN2cv3MatERS2_.exit

.lr.ph4.split.i27:                                ; preds = %.lr.ph4.i26, %._crit_edge.i29
  %i.bk = phi i32 [ %i.br, %._crit_edge.i29 ], [ %i.be, %.lr.ph4.i26 ]
  %i.bl = phi i32 [ %i.bs, %._crit_edge.i29 ], [ %i.bi, %.lr.ph4.i26 ] ; 2 uses
  %indvars.iv8.i28 = phi i64 [ %indvars.iv.next9.i30, %._crit_edge.i29 ], [ 0, %.lr.ph4.i26 ] ; 3 uses
  %i.bm = mul i64 %indvars.iv8.i28, %.val25
  %i.bn = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.bm
  %i.bo = mul i64 %indvars.iv8.i28, %i.bh
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bo
  %i.bq = icmp sgt i32 %i.bl, 0
  br i1 %i.bq, label %.lr.ph.i31, label %._crit_edge.i29

._crit_edge.loopexit.i34:                         ; preds = %.lr.ph.i31
  %.pre.i35 = load i32, ptr %i.p, align 8, !tbaa !117
  br label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %._crit_edge.loopexit.i34, %.lr.ph4.split.i27
  %i.br = phi i32 [ %.pre.i35, %._crit_edge.loopexit.i34 ], [ %i.bk, %.lr.ph4.split.i27 ] ; 2 uses
  %i.bs = phi i32 [ %i.bz, %._crit_edge.loopexit.i34 ], [ %i.bl, %.lr.ph4.split.i27 ]
  %indvars.iv.next9.i30 = add nuw nsw i64 %indvars.iv8.i28, 1 ; 2 uses
  %i.bt = sext i32 %i.br to i64
  %i.bu = icmp slt i64 %indvars.iv.next9.i30, %i.bt
  br i1 %i.bu, label %.lr.ph4.split.i27, label %_ZN11opencv_testL10cvIsNaNMatIdEEvRKN2cv3MatERS2_.exit, !llvm.loop !363

.lr.ph.i31:                                       ; preds = %.lr.ph4.split.i27, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ 0, %.lr.ph4.split.i27 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i32
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !124
  %6 = fcmp uno double %i.bw, 0.000000e+00
  %i.bx = select i1 %6, i32 1, i32 2
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i32
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !123
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %i.bz = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next.i33, %i.ca
  br i1 %i.cb, label %.lr.ph.i31, label %._crit_edge.loopexit.i34, !llvm.loop !364

_ZN11opencv_testL10cvIsNaNMatIdEEvRKN2cv3MatERS2_.exit: ; preds = %._crit_edge.i29, %.lr.ph4.i26, %bb.r
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.n unwind label %.loopexit.split-lp, !llvm.loop !365

.critedge:                                        ; preds = %bb.o, %bb.q, %bb.h, %bb.f, %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.cc, align 8, !tbaa !125
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn20 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.s ], [ %i.az, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11opencv_test53Size_MatType_CvRound_Float_Inf_CvRound_Float_Inf_Test13AddToRegistryEv() local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = tail call noundef ptr @_ZN7testing8UnitTest11GetInstanceEv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest27parameterized_test_registryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 64, ptr %i.b, align 8, !tbaa !45
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !47
  %i.g = load i64, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, ptr noundef nonnull align 1 dereferenceable(64) @.str.21, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !43
  %i.k = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.l = load i64, ptr %i.h, align 8, !tbaa !49   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.l, ptr %i.a, align 8, !tbaa !45
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5 unwind label %bb.g    ; 2 uses

.noexc5:                                          ; preds = %.noexc.i.i
  store ptr %i.n, ptr %0, align 8, !tbaa !47
  %i.o = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.o, ptr %i.j, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc5, %.noexc.i
  %i.p = phi ptr [ %i.n, %.noexc5 ], [ %i.j, %.noexc.i ] ; 2 uses
  switch i64 %i.l, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !48
  store i8 %i.q, ptr %i.p, align 1, !tbaa !48
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !49
  %i.t = load ptr, ptr %0, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 53, ptr %i.v, align 8, !tbaa !51
  %i.w = invoke noundef ptr @_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test30Size_MatType_CvRound_Float_InfEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestMetaFactoryIN11opencv_test53Size_MatType_CvRound_Float_Inf_CvRound_Float_Inf_TestEEE, i64 16), ptr %i.x, align 8, !tbaa !53
  invoke void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE14AddTestPatternEPKcS6_PNS0_19TestMetaFactoryBaseISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.w, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.x)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !48
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = load ptr, ptr %1, align 8, !tbaa !47    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !48
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret i32 0

bb.g:                                             ; preds = %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %_ZN7testing8internal12CodeLocationD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8

_ZN7testing8internal12CodeLocationD2Ev.exit8:     ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6 ], [ %i.ah, %bb.h ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !47    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !48
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test53Size_MatType_CvRound_Float_Inf_CvRound_Float_Inf_Test8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(257) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  store i8 1, ptr @_ZN11opencv_test30required_opencv_test_namespaceE, align 1, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN11opencv_test53Size_MatType_CvRound_Float_Inf_CvRound_Float_Inf_Test8TestBodyEvE24__cv_trace_location_fn53)
  invoke void @_ZN6cvtest9testSetUpEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4perf8TestBase15RunPerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6cvtest7details21SkipTestExceptionBaseE ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 1
  %i.c = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6cvtest7details21SkipTestExceptionBaseE) #30
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE24AddTestCaseInstantiationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEEvEPFSA_RKNS_13TestParamInfoISK_EEEPKci:bb.a
  store i64 0, ptr %i.m, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull align 8 dereferenceable(28) %i.p, i64 28, i1 false)
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr %i.ai, ptr %i.t, align 8, !tbaa !174
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit

bb.f:                                             ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEEvEPFSB_RKNS_13TestParamInfoISL_EEEPKci.exit
  invoke void @_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(60) %6)
          to label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit unwind label %bb.g

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.f
  %.pre10 = load ptr, ptr %6, align 8, !tbaa !47  ; 2 uses
  %i.aj = icmp eq ptr %.pre10, %i.c
  br i1 %i.aj, label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre10, i64 noundef %i.al) #32
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i32 0

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.c
  br i1 %i.ao, label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.g
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !48
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #32
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit9

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test30Size_MatType_CvRound_Float_InfEE17InstantiationInfoD2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL51gtest_Size_MatType_CvRound_Float_Inf_EvalGenerator_Ev(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ParamGenerator") align 8 %0) #1 {
bb.a:
  %1 = alloca %"class.testing::internal::CartesianProductHolder2", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %.sroa.03.0.copyload = load i64, ptr @_ZN4perfL5szVGAE, align 8
  %.sroa.02.0.copyload = load i64, ptr @_ZN4perfL6sz720pE, align 8
  %.sroa.01.0.copyload = load i64, ptr @_ZN4perfL7sz1080pE, align 8
  %.sroa.0.0.copyload = load i64, ptr @_ZN4perfL5szODDE, align 8
  store i64 %.sroa.03.0.copyload, ptr %1, align 8, !alias.scope !369
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.a, align 8, !alias.scope !369
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.01.0.copyload, ptr %i.b, align 8, !alias.scope !369
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.copyload, ptr %i.c, align 8, !alias.scope !369
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 5, ptr %i.d, align 8, !tbaa !103, !alias.scope !369
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 6, ptr %i.e, align 4, !tbaa !104, !alias.scope !369
  call void @_ZNK7testing8internal23CartesianProductHolder2INS0_11ValueArray4IN2cv5Size_IiEES5_S5_S5_EENS0_11ValueArray2IiiEEEcvNS0_14ParamGeneratorISt5tupleIJT_T0_EEEEIS5_N4perf7MatTypeEEEv(ptr dead_on_unwind writable sret(%"class.testing::internal::ParamGenerator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(40) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL54gtest_Size_MatType_CvRound_Float_Inf_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 %1) #1 {
bb.a:
  tail call void @_ZN7testing8internal16DefaultParamNameISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13TestParamInfoIT_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test30Size_MatType_CvRound_Float_Inf12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %4 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.08.0.copyload = load i64, ptr %i.c, align 4 ; 2 uses
  %i.d = tail call noundef nonnull align 4 dereferenceable(12) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN4perf7MatTypeEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106  ; 2 uses
  %i.f = and i32 %i.e, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %.sroa.08.0.copyload, i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %.sroa.08.0.copyload, i32 noundef 4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %3, align 8, !tbaa !109
  store ptr %1, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper2inERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 50397184, ptr %4, align 8, !tbaa !109
  store ptr %2, ptr %i.k, align 8, !tbaa !110
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper3outERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  switch i32 %i.f, label %.critedge [
    i32 5, label %.preheader
    i32 6, label %.preheader36
  ]

.preheader36:                                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.n

.preheader:                                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %_ZN11opencv_testL10cvIsInfMatIfEEvRKN2cv3MatERS2_.exit
  %i.z = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  br i1 %i.z, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.t, align 8
  %.val23 = load i64, ptr %i.u, align 8
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !117 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph4.i, label %_ZN11opencv_testL10cvIsInfMatIfEEvRKN2cv3MatERS2_.exit

.lr.ph4.i:                                        ; preds = %bb.i
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !118
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !45
  %i.af = load i32, ptr %i.y, align 4, !tbaa !119 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph4.split.i, label %_ZN11opencv_testL10cvIsInfMatIfEEvRKN2cv3MatERS2_.exit

.lr.ph4.split.i:                                  ; preds = %.lr.ph4.i, %._crit_edge.i
  %i.ah = phi i32 [ %i.ao, %._crit_edge.i ], [ %i.ab, %.lr.ph4.i ]
  %i.ai = phi i32 [ %i.ap, %._crit_edge.i ], [ %i.af, %.lr.ph4.i ] ; 2 uses
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %._crit_edge.i ], [ 0, %.lr.ph4.i ] ; 3 uses
  %i.aj = mul i64 %indvars.iv8.i, %.val23
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %i.al = mul i64 %indvars.iv8.i, %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = icmp sgt i32 %i.ai, 0
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !117
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph4.split.i
  %i.ao = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ah, %.lr.ph4.split.i ] ; 2 uses
  %i.ap = phi i32 [ %i.ax, %._crit_edge.loopexit.i ], [ %i.ai, %.lr.ph4.split.i ]
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1 ; 2 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = icmp slt i64 %indvars.iv.next9.i, %i.aq
  br i1 %i.ar, label %.lr.ph4.split.i, label %_ZN11opencv_testL10cvIsInfMatIfEEvRKN2cv3MatERS2_.exit, !llvm.loop !370

.lr.ph.i:                                         ; preds = %.lr.ph4.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph4.split.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.at = load float, ptr %i.as, align 4, !tbaa !122
  %i.au = call float @llvm.fabs.f32(float %i.at)
  %5 = fcmp oeq float %i.au, +inf
  %i.av = select i1 %5, i32 1, i32 2
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !119 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !371

_ZN11opencv_testL10cvIsInfMatIfEEvRKN2cv3MatERS2_.exit: ; preds = %._crit_edge.i, %.lr.ph4.i, %bb.i
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.e unwind label %.loopexit, !llvm.loop !372

bb.j:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.bc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.s

.loopexit:                                        ; preds = %bb.e, %bb.g, %_ZN11opencv_testL10cvIsInfMatIfEEvRKN2cv3MatERS2_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.n, %bb.p, %_ZN11opencv_testL10cvIsInfMatIdEEvRKN2cv3MatERS2_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %.preheader36, %_ZN11opencv_testL10cvIsInfMatIdEEvRKN2cv3MatERS2_.exit
  %i.bd = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  br i1 %i.bd, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.be = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  br i1 %i.be, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %.val24 = load ptr, ptr %i.n, align 8
  %.val25 = load i64, ptr %i.o, align 8
  %i.bf = load i32, ptr %i.p, align 8, !tbaa !117 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph4.i26, label %_ZN11opencv_testL10cvIsInfMatIdEEvRKN2cv3MatERS2_.exit

.lr.ph4.i26:                                      ; preds = %bb.r
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.bi = load i64, ptr %i.r, align 8, !tbaa !45
  %i.bj = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph4.split.i27, label %_ZN11opencv_testL10cvIsInfMatIdEEvRKN2cv3MatERS2_.exit

.lr.ph4.split.i27:                                ; preds = %.lr.ph4.i26, %._crit_edge.i29
  %i.bl = phi i32 [ %i.bs, %._crit_edge.i29 ], [ %i.bf, %.lr.ph4.i26 ]
  %i.bm = phi i32 [ %i.bt, %._crit_edge.i29 ], [ %i.bj, %.lr.ph4.i26 ] ; 2 uses
  %indvars.iv8.i28 = phi i64 [ %indvars.iv.next9.i30, %._crit_edge.i29 ], [ 0, %.lr.ph4.i26 ] ; 3 uses
  %i.bn = mul i64 %indvars.iv8.i28, %.val25
  %i.bo = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.bn
  %i.bp = mul i64 %indvars.iv8.i28, %i.bi
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bp
  %i.br = icmp sgt i32 %i.bm, 0
  br i1 %i.br, label %.lr.ph.i31, label %._crit_edge.i29

._crit_edge.loopexit.i34:                         ; preds = %.lr.ph.i31
  %.pre.i35 = load i32, ptr %i.p, align 8, !tbaa !117
  br label %._crit_edge.i29

._crit_edge.i29:                                  ; preds = %._crit_edge.loopexit.i34, %.lr.ph4.split.i27
  %i.bs = phi i32 [ %.pre.i35, %._crit_edge.loopexit.i34 ], [ %i.bl, %.lr.ph4.split.i27 ] ; 2 uses
  %i.bt = phi i32 [ %i.cb, %._crit_edge.loopexit.i34 ], [ %i.bm, %.lr.ph4.split.i27 ]
  %indvars.iv.next9.i30 = add nuw nsw i64 %indvars.iv8.i28, 1 ; 2 uses
  %i.bu = sext i32 %i.bs to i64
  %i.bv = icmp slt i64 %indvars.iv.next9.i30, %i.bu
  br i1 %i.bv, label %.lr.ph4.split.i27, label %_ZN11opencv_testL10cvIsInfMatIdEEvRKN2cv3MatERS2_.exit, !llvm.loop !373

.lr.ph.i31:                                       ; preds = %.lr.ph4.split.i27, %.lr.ph.i31
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i31 ], [ 0, %.lr.ph4.split.i27 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i32
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !124
  %i.by = call double @llvm.fabs.f64(double %i.bx)
  %6 = fcmp oeq double %i.by, +inf
  %i.bz = select i1 %6, i32 1, i32 2
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i32
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !123
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %i.cb = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next.i33, %i.cc
  br i1 %i.cd, label %.lr.ph.i31, label %._crit_edge.loopexit.i34, !llvm.loop !374

_ZN11opencv_testL10cvIsInfMatIdEEvRKN2cv3MatERS2_.exit: ; preds = %._crit_edge.i29, %.lr.ph4.i26, %bb.r
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.n unwind label %.loopexit.split-lp, !llvm.loop !375

.critedge:                                        ; preds = %bb.o, %bb.q, %bb.h, %bb.f, %bb.d
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ce, align 8, !tbaa !125
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %.pn20 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.s ], [ %i.ba, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11opencv_test26Size_MatType_CvRound_FloatD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

declare void @_ZN4perf8TestBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn248_N11opencv_test26Size_MatType_CvRound_FloatD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -248 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4perf8TestBaseE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds i8, ptr %0, i64 -176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 -208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i
  %i.k = getelementptr inbounds i8, ptr %0, i64 -192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !179
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i
  %i.p = getelementptr inbounds i8, ptr %0, i64 -232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i.i, label %_ZN4perf17TestBaseWithParamISt5tupleIJN2cv5Size_IiEENS_7MatTypeEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i
  %i.r = getelementptr inbounds i8, ptr %0, i64 -216
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !179
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %_ZN4perf17TestBaseWithParamISt5tupleIJN2cv5Size_IiEENS_7MatTypeEEEED2Ev.exit

_ZN4perf17TestBaseWithParamISt5tupleIJN2cv5Size_IiEENS_7MatTypeEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i, %bb.d
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(256) %i.a) #30
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn248_N11opencv_test26Size_MatType_CvRound_FloatD0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11opencv_test45Size_MatType_CvRound_Float_CvRound_Float_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(257) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4perf8TestBaseE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2.i.i, label %_ZN4perf17TestBaseWithParamISt5tupleIJN2cv5Size_IiEENS_7MatTypeEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !179
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32
  br label %_ZN4perf17TestBaseWithParamISt5tupleIJN2cv5Size_IiEENS_7MatTypeEEEED2Ev.exit

_ZN4perf17TestBaseWithParamISt5tupleIJN2cv5Size_IiEENS_7MatTypeEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i, %bb.d
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(257) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn248_N11opencv_test45Size_MatType_CvRound_Float_CvRound_Float_TestD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -248 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4perf8TestBaseE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds i8, ptr %0, i64 -176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !176  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 -208
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i
  %i.k = getelementptr inbounds i8, ptr %0, i64 -192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !179
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZNSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EED2Ev.exit.i.i

end_hunk_1
