Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_cicrlesGrid?download=true
inline.NumInlined: 1116
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11opencv_testL51gtest_String_Size_asymm_circles_grid_EvalGenerator_B5cxx11Ev:.noexc.i.i.i.i
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !23  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.q
  br i1 %i.ei, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i95: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit94
  %i.ej = load i64, ptr %i.q, align 8, !tbaa !24
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #31
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit97

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit97: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i95, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i95 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit94 ]
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.k
  br i1 %i.em, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit97
  %i.en = load i64, ptr %i.k, align 8, !tbaa !24
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #31
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit100

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit100: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL54gtest_String_Size_asymm_circles_grid_EvalGenerateName_ERKN7testing13TestParamInfoISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 %1) #1 {
bb.a:
  tail call void @_ZN7testing8internal16DefaultParamNameISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEEEES8_RKNS_13TestParamInfoIT_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test30String_Size_asymm_circles_grid12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %3 = alloca %"class.testing::Message", align 8  ; 10 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.26", align 8    ; 15 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"struct.cv::Ptr", align 16        ; 7 uses
  %14 = alloca %"struct.cv::Ptr.32", align 16     ; 8 uses
  %15 = alloca %"struct.cv::SimpleBlobDetector::Params", align 8 ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4perf8TestBase11getDataPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv5Size_IiEEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68   ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.e, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %3, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.26, i64 noundef 28)
          to label %_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit:       ; preds = %bb.f
  %i.j = load ptr, ptr %3, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %1, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef 28, ptr noundef nonnull @.str.27)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.p = load ptr, ptr %3, align 8, !tbaa !71
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.q, label %bb.j, label %_ZN7testing7MessageD2Ev.exit

bb.j:                                             ; preds = %.noexc.i.i
  %i.r = load ptr, ptr %3, align 8, !tbaa !71     ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN7testing7MessageD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.r) #29, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #32
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %.noexc.i.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ci

bb.m:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.n:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.o:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.p:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn50 = phi { ptr, i32 } [ %i.ae, %bb.s ], [ %i.ad, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.t ], [ %i.ac, %bb.q ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn50.pn, %bb.u ], [ %i.ab, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.cl

bb.w:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.af = shl i64 %i.e, 32
  %sext = mul i64 %i.af, %.sroa.6.0.extract.shift ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not = icmp eq i64 %sext, 0
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %21 = ashr exact i64 %sext, 32                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp ugt i64 %21, 1152921504606846975
  br i1 %i.ai, label %bb.y, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.aj = ashr exact i64 %sext, 29                ; 2 uses
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc98:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.aj, i1 false), !tbaa !167
  store ptr %i.ak, ptr %5, align 8, !tbaa !170
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %21 ; 2 uses
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !171
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !172
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %.noexc98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !74
  store i32 16842752, ptr %6, align 8, !tbaa !174
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.ao, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.aq, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !174
  store ptr %2, ptr %i.ap, align 8, !tbaa !175
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 6, i32 noundef 0, i32 noundef 0)
          to label %bb.aa unwind label %bb.ax

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.as, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !174
  store ptr %2, ptr %i.ar, align 8, !tbaa !175
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper2inERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0)
          to label %bb.ab unwind label %bb.ay

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.aw, align 8
  store i32 -2096955355, ptr %9, align 8, !tbaa !174
  store ptr %5, ptr %i.av, align 8, !tbaa !175
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper3outERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 1)
          to label %bb.ac unwind label %bb.az     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.cb, %bb.ac
  %i.bg = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bg, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.bh = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bh, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i32 0, ptr %i.ay, align 8, !tbaa !73
  store i32 0, ptr %i.az, align 4, !tbaa !74
  store i32 16842752, ptr %11, align 8, !tbaa !174
  store ptr %2, ptr %i.ba, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i64 0, ptr %i.bc, align 8
  store i32 -2113732571, ptr %12, align 8, !tbaa !174
  store ptr %5, ptr %i.bb, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZN2cv18SimpleBlobDetector6ParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(77) %15)
          to label %bb.ai unwind label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv18SimpleBlobDetector6createERKNS0_6ParamsE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.32") align 8 %14, ptr noundef nonnull align 8 dereferenceable(77) %15)
          to label %bb.aj unwind label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  %i.bi = load <2 x ptr>, ptr %14, align 16, !tbaa !176
  store ptr null, ptr %i.be, align 8, !tbaa !77
  store <2 x ptr> %i.bi, ptr %13, align 16, !tbaa !176
  store ptr null, ptr %14, align 16, !tbaa !179
  %i.bj = invoke noundef zeroext i1 @_ZN2cv15findCirclesGridERKNS_11_InputArrayENS_5Size_IiEERKNS_12_OutputArrayEiRKNS_3PtrINS_9Feature2DEEE(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 %i.e, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ak unwind label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %10, align 8, !tbaa !181
  store ptr null, ptr %i.bf, align 8, !tbaa !80
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !77 ; 8 uses
  %.not.i.i59 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i59, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.bm, align 8, !tbaa !82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !83
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #29, !inline_history !163
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #29, !inline_history !163
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i60 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i60, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.ao ], [ %i.bz, %bb.ap ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.aq, label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #29
  br label %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ak, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aq
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !77 ; 8 uses
  %.not.i.i61 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i61, label %_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.cc, align 8, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !83
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29, !inline_history !164
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29, !inline_history !164
  br label %_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i62 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i62, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63

bb.av:                                            ; preds = %bb.at
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i64 = phi i32 [ %i.cf, %bb.au ], [ %i.cp, %bb.av ]
  %i.cq = icmp eq i32 %.0.i.i.i.i64, 1
  br i1 %i.cq, label %bb.aw, label %_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #29
  br label %_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv9Feature2DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i63, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
end_hunk_0
