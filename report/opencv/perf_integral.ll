Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_integral?download=true
inline.NumInlined: 2789
inline.NumDeleted: 1165
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test58Size_MatType_OutMatDepthArray_DISABLED_integral_sqsum_fullEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE:bb.a
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i18
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !63
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !63
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i18
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !64
  %i.bm = load ptr, ptr %4, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !66
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !66
  invoke void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test58Size_MatType_OutMatDepthArray_DISABLED_integral_sqsum_fullEEC2EPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(128) %i.ba, ptr noundef %1, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bb
  br i1 %i.bs, label %_ZN7testing8internal12CodeLocationD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.l
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !63
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit23

_ZN7testing8internal12CodeLocationD2Ev.exit23:    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !118 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !119
  %.not.i.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit23
  store ptr %i.ba, ptr %i.bv, align 8, !tbaa !116
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.d, align 8, !tbaa !118
  br label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit23
  %i.bz = load ptr, ptr %0, align 8, !tbaa !120   ; 4 uses
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 5 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.o, label %_ZNKSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #34
  unreachable

_ZNKSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #31 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc ; 2 uses
  store ptr %i.ba, ptr %i.cl, align 8, !tbaa !116
  %i.cm = icmp sgt i64 %i.cc, 0
  br i1 %i.cm, label %bb.p, label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.bz, i64 %i.cc, i1 false)
  br label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.p, %_ZNKSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !119
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cq) #33
  br label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ck, ptr %0, align 8, !tbaa !120
  store ptr %i.cn, ptr %i.d, align 8, !tbaa !118
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cr, ptr %i.bw, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE9push_backEOS3_.exit

bb.r:                                             ; preds = %.noexc.i.i19
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit26

bb.s:                                             ; preds = %bb.k
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bb
  br i1 %i.cv, label %_ZN7testing8internal12CodeLocationD2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.s
  %i.cw = load i64, ptr %i.bb, align 8, !tbaa !63
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit26

_ZN7testing8internal12CodeLocationD2Ev.exit26:    ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.r ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24 ], [ %i.ct, %bb.s ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 128) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17

_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.m, %bb.h
  %.2 = phi ptr [ %i.ay, %bb.h ], [ %i.ba, %bb.m ], [ %i.ba, %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  ret ptr %.2

_ZN7testing8internal12CodeLocationD2Ev.exit17:    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15, %_ZN7testing8internal12CodeLocationD2Ev.exit26
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit26 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15 ], [ %i.aq, %bb.g ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL79gtest_Size_MatType_OutMatDepthArray_DISABLED_integral_sqsum_full_EvalGenerator_Ev(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ParamGenerator.53") align 8 %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::ParamGenerator.78", align 8 ; 8 uses
  %2 = alloca %"class.testing::internal::ParamGenerator.129", align 8 ; 11 uses
  %3 = alloca %"class.testing::internal::CartesianProductHolder2", align 16 ; 11 uses
  %4 = alloca %"class.testing::internal::ParamGenerator.129", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.03.0.copyload = load i64, ptr @_ZN4perfL5szVGAE, align 8, !tbaa !121
  %.sroa.02.0.copyload = load i64, ptr @_ZN4perfL6sz720pE, align 8, !tbaa !121
  %.sroa.01.0.copyload = load i64, ptr @_ZN4perfL7sz1080pE, align 8, !tbaa !121
  %.sroa.0.0.copyload = load i64, ptr @_ZN4perfL5szODDE, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.4, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i ]
  %.sroa.20.0 = phi ptr [ null, %bb.a ], [ %.sroa.20.4, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i ]
  %.val27.i.i.i = phi ptr [ null, %bb.a ], [ %.val27.i.i37.i, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i ] ; 17 uses
  %.promoted20.i = phi ptr [ null, %bb.a ], [ %.promoted2032.i, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i ] ; 7 uses
  %.promoted.i = phi ptr [ null, %bb.a ], [ %.sroa.11.0, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i ] ; 4 uses
  %.022.i = phi i64 [ 0, %bb.a ], [ %i.fi, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11opencv_testL22GetFullSqsumDepthPairsEvE11extraDepths, i64 %.022.i ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 8 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !121, !noalias !463
  %i.d = and i32 %i.c, 31                         ; 2 uses
  %.not.i.i = icmp eq ptr %.promoted.i, %.promoted20.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.i, ptr %.promoted.i, align 4, !tbaa !206, !noalias !463
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 4
  store i32 %i.d, ptr %i.e, align 4, !tbaa !127, !noalias !463
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %i.f = ptrtoint ptr %.promoted20.i to i64       ; 2 uses
  %i.g = ptrtoint ptr %.val27.i.i.i to i64        ; 4 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.d, label %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.c
  %.lcssa27.i = phi ptr [ %.promoted20.i, %bb.c ], [ %.promoted2035.i, %bb.g ], [ %.promoted2034.i, %bb.j ], [ %.promoted2033.i, %bb.m ]
  %.val27.i.i.lcssa.i = phi ptr [ %.val27.i.i.i, %bb.c ], [ %.val27.i.i.1.i, %bb.g ], [ %.val27.i.i.2.i, %bb.j ], [ %.val27.i.i.3.i, %bb.m ]
  %.lcssa23.i = phi i64 [ %i.g, %bb.c ], [ %i.av, %bb.g ], [ %i.ck, %bb.j ], [ %i.dz, %bb.m ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #34
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !463

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.k = icmp eq ptr %.promoted20.i, %.val27.i.i.i ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.k, i64 1, i64 %i.j
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.j ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !463 ; 15 uses

.noexc12.i:                                       ; preds = %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h ; 2 uses
  %.val.i.i.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.i.i, ptr %i.r, align 4, !tbaa !206, !noalias !463
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.d, ptr %i.s, align 4, !tbaa !127, !noalias !463
  br i1 %i.k, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc12.i
  %i.t = add i64 %i.f, -8
  %i.u = sub i64 %i.t, %i.g                       ; 3 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check285 = icmp ult i64 %i.u, 136
  br i1 %min.iters.check285, label %.lr.ph.i.i.i.i.i.i.preheader330, label %vector.memcheck286

vector.memcheck286:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.x = and i64 %i.u, -8                         ; 2 uses
  %i.y = or disjoint i64 %i.x, 4                  ; 2 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %.val27.i.i.i, i64 %i.y ; 2 uses
  %i.ab = getelementptr i8, ptr %.val27.i.i.i, i64 4 ; 2 uses
  %5 = add i64 %i.x, 8                            ; 2 uses
  %i.ac = getelementptr i8, ptr %.val27.i.i.i, i64 %5 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.q, i64 4       ; 2 uses
  %6 = getelementptr i8, ptr %i.q, i64 %5         ; 2 uses
  %bound0290 = icmp ult ptr %i.q, %i.aa
  %bound1291 = icmp ult ptr %.val27.i.i.i, %i.z
  %found.conflict292 = and i1 %bound0290, %bound1291
  %bound0294 = icmp ult ptr %i.q, %i.ac
  %bound1295 = icmp ult ptr %i.ab, %i.z
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %found.conflict292, %found.conflict296
  %bound0298 = icmp ult ptr %i.ad, %i.aa
  %bound1299 = icmp ult ptr %.val27.i.i.i, %6
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %conflict.rdx297, %found.conflict300
  %bound0302 = icmp ult ptr %i.ad, %i.ac
  %bound1303 = icmp ult ptr %i.ab, %6
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %conflict.rdx301, %found.conflict304
  br i1 %conflict.rdx305, label %.lr.ph.i.i.i.i.i.i.preheader330, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck286
  %n.vec307 = and i64 %i.w, 4611686018427387900   ; 3 uses
  %i.ae = shl i64 %n.vec307, 3                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.q, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %.val27.i.i.i, i64 %i.ae
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next322, %vector.body308 ] ; 2 uses
  %i.ah = shl i64 %index309, 3                    ; 3 uses
  %i.ai = or disjoint i64 %i.ah, 16               ; 2 uses
  %next.gep310 = getelementptr i8, ptr %i.q, i64 %i.ah
  %next.gep311 = getelementptr i8, ptr %i.q, i64 %i.ai
  %next.gep312 = getelementptr i8, ptr %.val27.i.i.i, i64 %i.ah
  %next.gep313 = getelementptr i8, ptr %.val27.i.i.i, i64 %i.ai
  %wide.vec314 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !121, !noalias !463
  %wide.vec317 = load <4 x i32>, ptr %next.gep313, align 4, !tbaa !121, !noalias !463
  store <4 x i32> %wide.vec314, ptr %next.gep310, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  store <4 x i32> %wide.vec317, ptr %next.gep311, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %index.next322 = add nuw i64 %index309, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next322, %n.vec307
  br i1 %i.aj, label %middle.block323, label %vector.body308, !llvm.loop !437

middle.block323:                                  ; preds = %vector.body308
  %cmp.n324 = icmp eq i64 %i.w, %n.vec307
  br i1 %cmp.n324, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader330

.lr.ph.i.i.i.i.i.i.preheader330:                  ; preds = %vector.memcheck286, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block323
  %.03.i.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck286 ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block323 ]
  %.092.i.i.i.i.i.i.ph = phi ptr [ %.val27.i.i.i, %vector.memcheck286 ], [ %.val27.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block323 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader330, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader330 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader330 ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.092.i.i.i.i.i.i, align 4, !tbaa !121, !noalias !463
  store <2 x i32> %i.ak, ptr %.03.i.i.i.i.i.i, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %i.al = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %.promoted20.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !438

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block323, %.noexc12.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc12.i ], [ %i.af, %middle.block323 ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %.not.i41.i.i.i = icmp eq ptr %.val27.i.i.i, null
  br i1 %.not.i41.i.i.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val27.i.i.i, i64 noundef %i.h) #33, !noalias !463
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o ; 2 uses
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.b
  %.sroa.0.1 = phi ptr [ %i.q, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.b ]
  %.sroa.20.1 = phi ptr [ %i.an, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.sroa.20.0, %bb.b ]
  %.val27.i.i.1.i = phi ptr [ %i.q, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.val27.i.i.i, %bb.b ] ; 17 uses
  %.promoted2035.i = phi ptr [ %i.an, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.promoted20.i, %bb.b ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ], [ %.promoted.i, %bb.b ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !121, !noalias !463
  %i.aq = or i32 %i.ap, -32
  %i.ar = add nsw i32 %i.aq, 64                   ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.ao, %.promoted2035.i
  br i1 %.not.i.1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.i
  %.val.i.1.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.1.i, ptr %i.ao, align 4, !tbaa !206, !noalias !463
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !127, !noalias !463
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.1.i

bb.g:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.i
  %i.au = ptrtoint ptr %.promoted2035.i to i64    ; 2 uses
  %i.av = ptrtoint ptr %.val27.i.i.1.i to i64     ; 4 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.d, label %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i

_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i: ; preds = %bb.g
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %i.az = icmp eq ptr %.promoted2035.i, %.val27.i.i.1.i ; 2 uses
  %.sroa.speculated.i.i.i.1.i = select i1 %i.az, i64 1, i64 %i.ay
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.1.i, %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.1.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.1.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #31
          to label %.noexc12.1.i unwind label %.loopexit.i, !noalias !463 ; 15 uses

.noexc12.1.i:                                     ; preds = %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw ; 2 uses
  %.val.i.i.1.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.i.1.i, ptr %i.bg, align 4, !tbaa !206, !noalias !463
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %i.ar, ptr %i.bh, align 4, !tbaa !127, !noalias !463
  br i1 %i.az, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.1.i, label %.lr.ph.i.i.i.i.i.1.i.preheader

.lr.ph.i.i.i.i.i.1.i.preheader:                   ; preds = %.noexc12.1.i
  %i.bi = add i64 %i.au, -8
  %i.bj = sub i64 %i.bi, %i.av                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check215 = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check215, label %.lr.ph.i.i.i.i.i.1.i.preheader329, label %vector.memcheck216

vector.memcheck216:                               ; preds = %.lr.ph.i.i.i.i.i.1.i.preheader
  %i.bm = and i64 %i.bj, -8                       ; 2 uses
  %i.bn = or disjoint i64 %i.bm, 4                ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bf, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %.val27.i.i.1.i, i64 %i.bn ; 2 uses
  %i.bq = getelementptr i8, ptr %.val27.i.i.1.i, i64 4 ; 2 uses
  %7 = add i64 %i.bm, 8                           ; 2 uses
  %i.br = getelementptr i8, ptr %.val27.i.i.1.i, i64 %7 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bf, i64 4      ; 2 uses
  %8 = getelementptr i8, ptr %i.bf, i64 %7        ; 2 uses
  %bound0220 = icmp ult ptr %i.bf, %i.bp
  %bound1221 = icmp ult ptr %.val27.i.i.1.i, %i.bo
  %found.conflict222 = and i1 %bound0220, %bound1221
  %bound0224 = icmp ult ptr %i.bf, %i.br
  %bound1225 = icmp ult ptr %i.bq, %i.bo
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %found.conflict222, %found.conflict226
  %bound0228 = icmp ult ptr %i.bs, %i.bp
  %bound1229 = icmp ult ptr %.val27.i.i.1.i, %8
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %conflict.rdx227, %found.conflict230
  %bound0232 = icmp ult ptr %i.bs, %i.br
  %bound1233 = icmp ult ptr %i.bq, %8
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx231, %found.conflict234
  br i1 %conflict.rdx235, label %.lr.ph.i.i.i.i.i.1.i.preheader329, label %vector.ph236

vector.ph236:                                     ; preds = %vector.memcheck216
  %n.vec237 = and i64 %i.bl, 4611686018427387900  ; 3 uses
  %i.bt = shl i64 %n.vec237, 3                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bf, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %.val27.i.i.1.i, i64 %i.bt
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph236
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next252, %vector.body238 ] ; 2 uses
  %i.bw = shl i64 %index239, 3                    ; 3 uses
  %i.bx = or disjoint i64 %i.bw, 16               ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.bf, i64 %i.bw
  %next.gep241 = getelementptr i8, ptr %i.bf, i64 %i.bx
  %next.gep242 = getelementptr i8, ptr %.val27.i.i.1.i, i64 %i.bw
  %next.gep243 = getelementptr i8, ptr %.val27.i.i.1.i, i64 %i.bx
  %wide.vec244 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !121, !noalias !463
  %wide.vec247 = load <4 x i32>, ptr %next.gep243, align 4, !tbaa !121, !noalias !463
  store <4 x i32> %wide.vec244, ptr %next.gep240, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  store <4 x i32> %wide.vec247, ptr %next.gep241, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %index.next252 = add nuw i64 %index239, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next252, %n.vec237
  br i1 %i.by, label %middle.block253, label %vector.body238, !llvm.loop !439

middle.block253:                                  ; preds = %vector.body238
  %cmp.n254 = icmp eq i64 %i.bl, %n.vec237
  br i1 %cmp.n254, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.1.i, label %.lr.ph.i.i.i.i.i.1.i.preheader329

.lr.ph.i.i.i.i.i.1.i.preheader329:                ; preds = %vector.memcheck216, %.lr.ph.i.i.i.i.i.1.i.preheader, %middle.block253
  %.03.i.i.i.i.i.1.i.ph = phi ptr [ %i.bf, %vector.memcheck216 ], [ %i.bf, %.lr.ph.i.i.i.i.i.1.i.preheader ], [ %i.bu, %middle.block253 ]
  %.092.i.i.i.i.i.1.i.ph = phi ptr [ %.val27.i.i.1.i, %vector.memcheck216 ], [ %.val27.i.i.1.i, %.lr.ph.i.i.i.i.i.1.i.preheader ], [ %i.bv, %middle.block253 ]
  br label %.lr.ph.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.1.i:                             ; preds = %.lr.ph.i.i.i.i.i.1.i.preheader329, %.lr.ph.i.i.i.i.i.1.i
  %.03.i.i.i.i.i.1.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.1.i ], [ %.03.i.i.i.i.i.1.i.ph, %.lr.ph.i.i.i.i.i.1.i.preheader329 ] ; 2 uses
  %.092.i.i.i.i.i.1.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.1.i ], [ %.092.i.i.i.i.i.1.i.ph, %.lr.ph.i.i.i.i.i.1.i.preheader329 ] ; 2 uses
  %i.bz = load <2 x i32>, ptr %.092.i.i.i.i.i.1.i, align 4, !tbaa !121, !noalias !463
  store <2 x i32> %i.bz, ptr %.03.i.i.i.i.i.1.i, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %i.ca = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.1.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.1.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.1.i = icmp eq ptr %i.ca, %.promoted2035.i
  br i1 %.not.i.i.i.i.i.1.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.1.i, label %.lr.ph.i.i.i.i.i.1.i, !llvm.loop !440

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.1.i, %middle.block253, %.noexc12.1.i
  %.0.lcssa.i.i.i.i.i.1.i = phi ptr [ %i.bf, %.noexc12.1.i ], [ %i.bu, %middle.block253 ], [ %i.cb, %.lr.ph.i.i.i.i.i.1.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.1.i, i64 8
  %.not.i41.i.i.1.i = icmp eq ptr %.val27.i.i.1.i, null
  br i1 %.not.i41.i.i.1.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val27.i.i.1.i, i64 noundef %i.aw) #33, !noalias !463
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i: ; preds = %bb.h, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.1.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd ; 2 uses
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.1.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.1.i: ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i, %bb.f
  %.sroa.0.2 = phi ptr [ %i.bf, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i ], [ %.sroa.0.1, %bb.f ]
  %.sroa.20.2 = phi ptr [ %i.cd, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i ], [ %.sroa.20.1, %bb.f ]
  %.val27.i.i.2.i = phi ptr [ %i.bf, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i ], [ %.val27.i.i.1.i, %bb.f ] ; 17 uses
  %.promoted2034.i = phi ptr [ %i.cd, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i ], [ %.promoted2035.i, %bb.f ] ; 7 uses
  %i.ce = phi ptr [ %i.cc, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.1.i ], [ %i.at, %bb.f ] ; 4 uses
  %i.cf = load i32, ptr %i.a, align 8, !tbaa !121, !noalias !463
  %i.cg = or i32 %i.cf, -32
  %i.ch = add nsw i32 %i.cg, 96                   ; 2 uses
  %.not.i.2.i = icmp eq ptr %i.ce, %.promoted2034.i
  br i1 %.not.i.2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.1.i
  %.val.i.2.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.2.i, ptr %i.ce, align 4, !tbaa !206, !noalias !463
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !127, !noalias !463
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.2.i

bb.j:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.1.i
  %i.cj = ptrtoint ptr %.promoted2034.i to i64    ; 2 uses
  %i.ck = ptrtoint ptr %.val27.i.i.2.i to i64     ; 4 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.d, label %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i

_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i: ; preds = %bb.j
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %i.co = icmp eq ptr %.promoted2034.i, %.val27.i.i.2.i ; 2 uses
  %.sroa.speculated.i.i.i.2.i = select i1 %i.co, i64 1, i64 %i.cn
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i.2.i, %i.cn ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cn
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i.2.i = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.2.i)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #31
          to label %.noexc12.2.i unwind label %.loopexit.i, !noalias !463 ; 15 uses

.noexc12.2.i:                                     ; preds = %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cl ; 2 uses
  %.val.i.i.2.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.i.2.i, ptr %i.cv, align 4, !tbaa !206, !noalias !463
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 %i.ch, ptr %i.cw, align 4, !tbaa !127, !noalias !463
  br i1 %i.co, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.2.i, label %.lr.ph.i.i.i.i.i.2.i.preheader

.lr.ph.i.i.i.i.i.2.i.preheader:                   ; preds = %.noexc12.2.i
  %i.cx = add i64 %i.cj, -8
  %i.cy = sub i64 %i.cx, %i.ck                    ; 3 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.cy, 136
  br i1 %min.iters.check145, label %.lr.ph.i.i.i.i.i.2.i.preheader328, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.i.i.i.i.i.2.i.preheader
  %i.db = and i64 %i.cy, -8                       ; 2 uses
  %i.dc = or disjoint i64 %i.db, 4                ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cu, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.val27.i.i.2.i, i64 %i.dc ; 2 uses
  %i.df = getelementptr i8, ptr %.val27.i.i.2.i, i64 4 ; 2 uses
  %9 = add i64 %i.db, 8                           ; 2 uses
  %i.dg = getelementptr i8, ptr %.val27.i.i.2.i, i64 %9 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %10 = getelementptr i8, ptr %i.cu, i64 %9       ; 2 uses
  %bound0150 = icmp ult ptr %i.cu, %i.de
  %bound1151 = icmp ult ptr %.val27.i.i.2.i, %i.dd
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0154 = icmp ult ptr %i.cu, %i.dg
  %bound1155 = icmp ult ptr %i.df, %i.dd
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict152, %found.conflict156
  %bound0158 = icmp ult ptr %i.dh, %i.de
  %bound1159 = icmp ult ptr %.val27.i.i.2.i, %10
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %i.dh, %i.dg
  %bound1163 = icmp ult ptr %i.df, %10
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph.i.i.i.i.i.2.i.preheader328, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck146
  %n.vec167 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.di = shl i64 %n.vec167, 3                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cu, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %.val27.i.i.2.i, i64 %i.di
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next182, %vector.body168 ] ; 2 uses
  %i.dl = shl i64 %index169, 3                    ; 3 uses
  %i.dm = or disjoint i64 %i.dl, 16               ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.cu, i64 %i.dl
  %next.gep171 = getelementptr i8, ptr %i.cu, i64 %i.dm
  %next.gep172 = getelementptr i8, ptr %.val27.i.i.2.i, i64 %i.dl
  %next.gep173 = getelementptr i8, ptr %.val27.i.i.2.i, i64 %i.dm
  %wide.vec174 = load <4 x i32>, ptr %next.gep172, align 4, !tbaa !121, !noalias !463
  %wide.vec177 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !121, !noalias !463
  store <4 x i32> %wide.vec174, ptr %next.gep170, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  store <4 x i32> %wide.vec177, ptr %next.gep171, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %index.next182 = add nuw i64 %index169, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next182, %n.vec167
  br i1 %i.dn, label %middle.block183, label %vector.body168, !llvm.loop !441

middle.block183:                                  ; preds = %vector.body168
  %cmp.n184 = icmp eq i64 %i.da, %n.vec167
  br i1 %cmp.n184, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.2.i, label %.lr.ph.i.i.i.i.i.2.i.preheader328

.lr.ph.i.i.i.i.i.2.i.preheader328:                ; preds = %vector.memcheck146, %.lr.ph.i.i.i.i.i.2.i.preheader, %middle.block183
  %.03.i.i.i.i.i.2.i.ph = phi ptr [ %i.cu, %vector.memcheck146 ], [ %i.cu, %.lr.ph.i.i.i.i.i.2.i.preheader ], [ %i.dj, %middle.block183 ]
  %.092.i.i.i.i.i.2.i.ph = phi ptr [ %.val27.i.i.2.i, %vector.memcheck146 ], [ %.val27.i.i.2.i, %.lr.ph.i.i.i.i.i.2.i.preheader ], [ %i.dk, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.2.i:                             ; preds = %.lr.ph.i.i.i.i.i.2.i.preheader328, %.lr.ph.i.i.i.i.i.2.i
  %.03.i.i.i.i.i.2.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.2.i ], [ %.03.i.i.i.i.i.2.i.ph, %.lr.ph.i.i.i.i.i.2.i.preheader328 ] ; 2 uses
  %.092.i.i.i.i.i.2.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.2.i ], [ %.092.i.i.i.i.i.2.i.ph, %.lr.ph.i.i.i.i.i.2.i.preheader328 ] ; 2 uses
  %i.do = load <2 x i32>, ptr %.092.i.i.i.i.i.2.i, align 4, !tbaa !121, !noalias !463
  store <2 x i32> %i.do, ptr %.03.i.i.i.i.i.2.i, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %i.dp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.2.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.2.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.2.i = icmp eq ptr %i.dp, %.promoted2034.i
  br i1 %.not.i.i.i.i.i.2.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.2.i, label %.lr.ph.i.i.i.i.i.2.i, !llvm.loop !442

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.2.i: ; preds = %.lr.ph.i.i.i.i.i.2.i, %middle.block183, %.noexc12.2.i
  %.0.lcssa.i.i.i.i.i.2.i = phi ptr [ %i.cu, %.noexc12.2.i ], [ %i.dj, %middle.block183 ], [ %i.dq, %.lr.ph.i.i.i.i.i.2.i ]
  %.not.i41.i.i.2.i = icmp eq ptr %.val27.i.i.2.i, null
  br i1 %.not.i41.i.i.2.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.2.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val27.i.i.2.i, i64 noundef %i.cl) #33, !noalias !463
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i: ; preds = %bb.k, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.2.i
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs ; 2 uses
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.2.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.2.i: ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i, %bb.i
  %.sroa.0.3 = phi ptr [ %i.cu, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i ], [ %.sroa.0.2, %bb.i ]
  %.sroa.20.3 = phi ptr [ %i.dr, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i ], [ %.sroa.20.2, %bb.i ]
  %.val27.i.i.3.i = phi ptr [ %i.cu, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i ], [ %.val27.i.i.2.i, %bb.i ] ; 17 uses
  %.promoted2033.i = phi ptr [ %i.dr, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i ], [ %.promoted2034.i, %bb.i ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.2.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.2.i, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.2.i ], [ %i.ce, %bb.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2.i.pn, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.a, align 8, !tbaa !121, !noalias !463
  %i.du = or i32 %i.dt, -32
  %i.dv = add nsw i32 %i.du, 128                  ; 2 uses
  %.not.i.3.i = icmp eq ptr %i.ds, %.promoted2033.i
  br i1 %.not.i.3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.2.i
  %.val.i.3.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.3.i, ptr %i.ds, align 4, !tbaa !206, !noalias !463
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2.i.pn, i64 12
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !127, !noalias !463
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2.i.pn, i64 16
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i

bb.m:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.2.i
  %i.dy = ptrtoint ptr %.promoted2033.i to i64    ; 2 uses
  %i.dz = ptrtoint ptr %.val27.i.i.3.i to i64     ; 4 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.d, label %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i

_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i: ; preds = %bb.m
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %i.ed = icmp eq ptr %.promoted2033.i, %.val27.i.i.3.i ; 2 uses
  %.sroa.speculated.i.i.i.3.i = select i1 %i.ed, i64 1, i64 %i.ec
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.3.i, %i.ec ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ec
  %i.eg = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 1152921504606846975)
  %i.eh = select i1 %i.ef, i64 1152921504606846975, i64 %i.eg ; 3 uses
  %.not.i.i.i.3.i = icmp ne i64 %i.eh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.3.i)
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #31
          to label %.noexc12.3.i unwind label %.loopexit.i, !noalias !463 ; 15 uses

.noexc12.3.i:                                     ; preds = %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ea ; 2 uses
  %.val.i.i.3.i = load i32, ptr %i.b, align 4, !tbaa !121, !noalias !463
  store i32 %.val.i.i.3.i, ptr %i.ek, align 4, !tbaa !206, !noalias !463
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.dv, ptr %i.el, align 4, !tbaa !127, !noalias !463
  br i1 %i.ed, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.3.i, label %.lr.ph.i.i.i.i.i.3.i.preheader

.lr.ph.i.i.i.i.i.3.i.preheader:                   ; preds = %.noexc12.3.i
  %i.em = add i64 %i.dy, -8
  %i.en = sub i64 %i.em, %i.dz                    ; 3 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.3.i.preheader327, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.3.i.preheader
  %i.eq = and i64 %i.en, -8                       ; 2 uses
  %i.er = or disjoint i64 %i.eq, 4                ; 2 uses
  %i.es = getelementptr i8, ptr %i.ej, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %.val27.i.i.3.i, i64 %i.er ; 2 uses
  %i.eu = getelementptr i8, ptr %.val27.i.i.3.i, i64 4 ; 2 uses
  %11 = add i64 %i.eq, 8                          ; 2 uses
  %i.ev = getelementptr i8, ptr %.val27.i.i.3.i, i64 %11 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ej, i64 4      ; 2 uses
  %12 = getelementptr i8, ptr %i.ej, i64 %11      ; 2 uses
  %bound093.a = icmp ult ptr %i.ej, %i.et
  %bound194.a = icmp ult ptr %.val27.i.i.3.i, %i.es
  %found.conflict95.a = and i1 %bound093.a, %bound194.a
  %bound096 = icmp ult ptr %i.ej, %i.ev
  %bound197 = icmp ult ptr %i.eu, %i.es
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %found.conflict95.a, %found.conflict98
  %bound0100 = icmp ult ptr %i.ew, %i.et
  %bound1101 = icmp ult ptr %.val27.i.i.3.i, %12
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %i.ew, %i.ev
  %bound1105 = icmp ult ptr %i.eu, %12
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  br i1 %conflict.rdx107, label %.lr.ph.i.i.i.i.i.3.i.preheader327, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ep, 4611686018427387900     ; 3 uses
  %i.ex = shl i64 %n.vec, 3                       ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ej, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %.val27.i.i.3.i, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 3                       ; 3 uses
  %i.fb = or disjoint i64 %i.fa, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ej, i64 %i.fa
  %next.gep108 = getelementptr i8, ptr %i.ej, i64 %i.fb
  %next.gep109 = getelementptr i8, ptr %.val27.i.i.3.i, i64 %i.fa
  %next.gep110 = getelementptr i8, ptr %.val27.i.i.3.i, i64 %i.fb
  %wide.vec = load <4 x i32>, ptr %next.gep109, align 4, !tbaa !121, !noalias !463
  %wide.vec112 = load <4 x i32>, ptr %next.gep110, align 4, !tbaa !121, !noalias !463
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  store <4 x i32> %wide.vec112, ptr %next.gep108, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !443

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.3.i, label %.lr.ph.i.i.i.i.i.3.i.preheader327

.lr.ph.i.i.i.i.i.3.i.preheader327:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.3.i.preheader, %middle.block
  %.03.i.i.i.i.i.3.i.ph = phi ptr [ %i.ej, %vector.memcheck ], [ %i.ej, %.lr.ph.i.i.i.i.i.3.i.preheader ], [ %i.ey, %middle.block ]
  %.092.i.i.i.i.i.3.i.ph = phi ptr [ %.val27.i.i.3.i, %vector.memcheck ], [ %.val27.i.i.3.i, %.lr.ph.i.i.i.i.i.3.i.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.3.i

.lr.ph.i.i.i.i.i.3.i:                             ; preds = %.lr.ph.i.i.i.i.i.3.i.preheader327, %.lr.ph.i.i.i.i.i.3.i
  %.03.i.i.i.i.i.3.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.3.i ], [ %.03.i.i.i.i.i.3.i.ph, %.lr.ph.i.i.i.i.i.3.i.preheader327 ] ; 2 uses
  %.092.i.i.i.i.i.3.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.3.i ], [ %.092.i.i.i.i.i.3.i.ph, %.lr.ph.i.i.i.i.i.3.i.preheader327 ] ; 2 uses
  %i.fd = load <2 x i32>, ptr %.092.i.i.i.i.i.3.i, align 4, !tbaa !121, !noalias !463
  store <2 x i32> %i.fd, ptr %.03.i.i.i.i.i.3.i, align 4, !tbaa !121, !alias.scope !464, !noalias !463
  %i.fe = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.3.i, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.3.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.3.i = icmp eq ptr %i.fe, %.promoted2033.i
  br i1 %.not.i.i.i.i.i.3.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.3.i, label %.lr.ph.i.i.i.i.i.3.i, !llvm.loop !444

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.3.i: ; preds = %.lr.ph.i.i.i.i.i.3.i, %middle.block, %.noexc12.3.i
  %.0.lcssa.i.i.i.i.i.3.i = phi ptr [ %i.ej, %.noexc12.3.i ], [ %i.ey, %middle.block ], [ %i.ff, %.lr.ph.i.i.i.i.i.3.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.3.i, i64 8
  %.not.i41.i.i.3.i = icmp eq ptr %.val27.i.i.3.i, null
  br i1 %.not.i41.i.i.3.i, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.3.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val27.i.i.3.i, i64 noundef %i.ea) #33, !noalias !463
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i: ; preds = %bb.n, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit40.i.i.3.i
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh ; 2 uses
  br label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i: ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i, %bb.l
  %.sroa.0.4 = phi ptr [ %i.ej, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i ], [ %.sroa.0.3, %bb.l ] ; 9 uses
  %.sroa.11.0 = phi ptr [ %i.fg, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i ], [ %i.dx, %bb.l ] ; 3 uses
  %.sroa.20.4 = phi ptr [ %i.fh, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i ], [ %.sroa.20.3, %bb.l ] ; 3 uses
  %.val27.i.i37.i = phi ptr [ %i.ej, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i ], [ %.val27.i.i.3.i, %bb.l ]
  %.promoted2032.i = phi ptr [ %i.fh, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_M_realloc_insertIJiRiEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.3.i ], [ %.promoted2033.i, %bb.l ]
  %i.fi = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fi, 12
  br i1 %exitcond.not.i, label %_ZN11opencv_testL22GetFullSqsumDepthPairsEv.exit, label %.preheader.i, !llvm.loop !445

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %.lcssa28.i = phi ptr [ %.promoted20.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.promoted2035.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i ], [ %.promoted2034.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i ], [ %.promoted2033.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i ]
  %.val27.i.i.lcssa25.i = phi ptr [ %.val27.i.i.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.val27.i.i.1.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i ], [ %.val27.i.i.2.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i ], [ %.val27.i.i.3.i, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i ]
  %.lcssa24.i = phi i64 [ %i.g, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.av, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.1.i ], [ %i.ck, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.2.i ], [ %i.dz, %_ZNKSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.3.i ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %i.fj = phi ptr [ %.lcssa28.i, %.loopexit.i ], [ %.lcssa27.i, %.loopexit.split-lp.i ]
  %.val27.i.i26.i = phi ptr [ %.val27.i.i.lcssa25.i, %.loopexit.i ], [ %.val27.i.i.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.fk = phi i64 [ %.lcssa24.i, %.loopexit.i ], [ %.lcssa23.i, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %.val27.i.i26.i, null
  br i1 %.not.i.i.i13.i, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fl, %i.fk
  tail call void @_ZdlPvm(ptr noundef nonnull %.val27.i.i26.i, i64 noundef %i.fm) #33, !noalias !463
  br label %common.resume

common.resume:                                    ; preds = %bb.o, %bb.p, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EED2Ev.exit35
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EED2Ev.exit35 ], [ %lpad.phi.i, %bb.p ], [ %lpad.phi.i, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZN11opencv_testL22GetFullSqsumDepthPairsEv.exit: ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE12emplace_backIJiRiEEERS6_DpOT_.exit.3.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.fn = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %.noexc unwind label %bb.bp    ; 9 uses

.noexc:                                           ; preds = %_ZN11opencv_testL22GetFullSqsumDepthPairsEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEEEE, i64 16), ptr %i.fn, align 8, !tbaa !68, !noalias !469
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false), !noalias !469
  %i.fp = ptrtoint ptr %.sroa.11.0 to i64
  %i.fq = ptrtoint ptr %.sroa.0.4 to i64          ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 5 uses
  %i.fs = icmp ugt i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.q, label %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i.i

bb.q:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #34
          to label %.noexc.i.i.i.i unwind label %bb.r, !noalias !469

.noexc.i.i.i.i:                                   ; preds = %bb.q
  unreachable

_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i.i: ; preds = %.noexc
  %.not.i.i.i.i.i.i13 = icmp eq ptr %.sroa.11.0, %.sroa.0.4
  br i1 %.not.i.i.i.i.i.i13, label %_ZNSt12_Vector_baseISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_M_allocateEm.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_M_allocateEm.exit.thread.i.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr null, i64 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !471, !noalias !469
  br label %bb.t

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %_ZNSt6vectorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i.i.i.i
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #31
          to label %.noexc6.i.i.i.i unwind label %bb.r, !noalias !469 ; 4 uses

.noexc6.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  store ptr %i.fv, ptr %i.fo, align 8, !tbaa !472, !noalias !469
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fr
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !471, !noalias !469
  %i.fy = and i64 %i.fr, 9223372036854775800      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %.sroa.0.4, i64 %i.fy, i1 false), !noalias !469
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.fv, i64 %i.fy
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.q
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i = load ptr, ptr %i.fo, align 8, !tbaa !472, !noalias !469 ; 3 uses
  %.not.i.i7.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i7.i.i.i.i, label %.body.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %.val5.i.i.i.i = load ptr, ptr %i.ga, align 8, !tbaa !471, !noalias !469
  %i.gb = ptrtoint ptr %.val5.i.i.i.i to i64
  %i.gc = ptrtoint ptr %.val.i.i.i.i to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.gd) #33, !noalias !469
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.s, %bb.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 32) #33, !noalias !469
  br label %.body

bb.t:                                             ; preds = %_ZNSt12_Vector_baseISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_M_allocateEm.exit.thread.i.i.i.i.i, %.noexc6.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEESaIS6_EE11_M_allocateEm.exit.thread.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %.noexc6.i.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.ge, align 8, !tbaa !473, !noalias !469
  store ptr %i.fn, ptr %4, align 8, !tbaa !210, !alias.scope !469
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr %i.gf, ptr %i.gf, align 8, !tbaa !77, !alias.scope !469
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  store i64 %.sroa.03.0.copyload, ptr %3, align 16, !tbaa !121, !alias.scope !474
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.gg, align 8, !tbaa !121, !alias.scope !474
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.01.0.copyload, ptr %i.gh, align 16, !tbaa !121, !alias.scope !474
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.0.0.copyload, ptr %i.gi, align 8, !tbaa !121, !alias.scope !474
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.fn, ptr %i.gj, align 16, !tbaa !210, !alias.scope !474
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc15 unwind label %bb.bq

.noexc15:                                         ; preds = %bb.t, %.noexc15
  %.0.i.i.i.i.i.i = phi ptr [ %i.gk, %.noexc15 ], [ %i.gf, %bb.t ] ; 2 uses
  %i.gk = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !77, !noalias !474 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.gk, %i.gf
  br i1 %.not.i.i.i.i.i.i14, label %bb.u, label %.noexc15, !llvm.loop !0

bb.u:                                             ; preds = %.noexc15
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 8 uses
  store ptr %i.gl, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !77, !noalias !474
  store ptr %i.gf, ptr %i.gl, align 8, !tbaa !77, !alias.scope !474
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing7CombineINS_8internal11ValueArray4IN2cv5Size_IiEES5_S5_S5_EENS1_14ParamGeneratorISt5tupleIJN4perf7MatTypeEN11opencv_test12_GLOBAL__N_120IntegralOutputDepthsEEEEEEENS1_23CartesianProductHolder2IT_T0_EERKSH_RKSI_.exit unwind label %bb.v
end_hunk_0
