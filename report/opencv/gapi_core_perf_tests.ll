Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gapi_core_perf_tests?download=true
inline.NumInlined: 25455
inline.NumDeleted: 7941
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 104
begin_hunk_0_@_ZN11opencv_test38MulDoublePerfTest_TestPerformance_Test13AddToRegistryEv:.noexc.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !225
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test38MulDoublePerfTest_TestPerformance_Test8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(1121) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  store i8 1, ptr @_ZN11opencv_test30required_opencv_test_namespaceE, align 1, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN11opencv_test38MulDoublePerfTest_TestPerformance_Test8TestBodyEvE25__cv_trace_location_fn365)
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
  %i.c = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6cvtest7details21SkipTestExceptionBaseE) #32
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = extractvalue { ptr, i32 } %i.a, 0
  %i.f = call ptr @__cxa_begin_catch(ptr %i.e) #32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(148) %i.f) #32
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.j) ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.b
  invoke void @_ZN6cvtest12testTearDownEv()
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !235
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %1)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.merged = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.a, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test38MulDoublePerfTest_TestPerformance_Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(1121) initializes((1120, 1121)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !408
  invoke void @_ZN4perf8TestBase5SetUpEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTIN6cvtest7details21SkipTestExceptionBaseE ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 1
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6cvtest7details21SkipTestExceptionBaseE) #32
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i32 } %i.b, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #32 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(148) %i.g) #32
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.k) ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test38MulDoublePerfTest_TestPerformance_Test12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(1121) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function", align 8     ; 13 uses
  %2 = alloca %"class.cv::Size_", align 8         ; 7 uses
  %3 = alloca %"class.perf::MatType", align 4     ; 6 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 11 uses
  %5 = alloca %"class.std::tuple.70", align 8     ; 9 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::GMat", align 16         ; 8 uses
  %10 = alloca %"class.cv::GMat", align 16        ; 8 uses
  %11 = alloca %"class.cv::GMat", align 16        ; 7 uses
  %12 = alloca %"class.cv::GComputation", align 8 ; 7 uses
  %13 = alloca %"class.cv::GMat", align 16        ; 4 uses
  %14 = alloca %"class.cv::GMat", align 16        ; 4 uses
  %15 = alloca %"class.cv::GCompiled", align 8    ; 8 uses
  %16 = alloca %"class.std::vector.41", align 8   ; 10 uses
  %17 = alloca %"class.std::vector.46", align 8   ; 10 uses
  %18 = alloca %"class.std::vector.46", align 8   ; 10 uses
  %19 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %20 = alloca %"class.std::vector.46", align 8   ; 10 uses
  %21 = alloca %"class.std::vector.51", align 8   ; 10 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 0, ptr %2, align 8, !tbaa !272
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 -1, ptr %3, align 4, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 -1, ptr %i.a, align 4, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJSt8functionIFbRKN2cv3MatES6_EENS3_5Size_IiEEN4perf7MatTypeEiSt6vectorINS3_11GCompileArgESaISE_EEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.b unwind label %bb.bo

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %4, ptr %5, align 8, !tbaa !277, !alias.scope !1768
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !379, !alias.scope !1768
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.g, align 8, !tbaa !279, !alias.scope !1768
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %2, ptr %i.h, align 8, !tbaa !281, !alias.scope !1768
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %1, ptr %i.i, align 8, !tbaa !283, !alias.scope !1768
  invoke void @_ZNSt11_Tuple_implILm0EJRSt8functionIFbRKN2cv3MatES4_EERNS1_5Size_IiEERN4perf7MatTypeERiRSt6vectorINS1_11GCompileArgESaISG_EEEE9_M_assignIJS6_S9_SC_iSI_EEEvRKS_ILm0EJDpT_EE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_ZNSt5tupleIJRSt8functionIFbRKN2cv3MatES4_EERNS1_5Size_IiEERN4perf7MatTypeERiRSt6vectorINS1_11GCompileArgESaISG_EEEEaSIJS6_S9_SC_iSI_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERSK_E4typeERKS_IJDpSN_EE.exit unwind label %bb.bn

_ZNSt5tupleIJRSt8functionIFbRKN2cv3MatES4_EERNS1_5Size_IiEERN4perf7MatTypeERiRSt6vectorINS1_11GCompileArgESaISG_EEEEaSIJS6_S9_SC_iSI_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERSK_E4typeERKS_IJDpSN_EE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %bb.c unwind label %bb.bo      ; 2 uses

bb.c:                                             ; preds = %_ZNSt5tupleIJRSt8functionIFbRKN2cv3MatES4_EERNS1_5Size_IiEERN4perf7MatTypeERiRSt6vectorINS1_11GCompileArgESaISG_EEEEaSIJS6_S9_SC_iSI_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERSK_E4typeERKS_IJDpSN_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !410  ; 2 uses
  %i.l = and i64 %i.k, 4294967295
  %i.m = mul nuw i64 %i.l, 4164903690
  %i.n = lshr i64 %i.k, 32
  %i.o = add nuw i64 %i.m, %i.n                   ; 3 uses
  %i.p = shl i64 %i.o, 32
  %i.q = and i64 %i.o, 4294967295
  %i.r = mul nuw i64 %i.q, 4164903690
  %i.s = lshr i64 %i.o, 32
  %i.t = add nuw i64 %i.r, %i.s                   ; 2 uses
  store i64 %i.t, ptr %i.j, align 8, !tbaa !410
  %i.u = and i64 %i.t, 4294967295
  %i.v = or disjoint i64 %i.u, %i.p
  %i.w = uitofp i64 %i.v to double
  %i.x = fmul nnan double %i.w, f0x3BF0000000000000
  %26 = call noundef double @llvm.fmuladd.f64(double %i.x, double 1.000000e+01, double 0.000000e+00)
  store double %26, ptr %i.b, align 8, !tbaa !346
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !275
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !284
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !284
  invoke void @_ZN11opencv_test14TestFunctional15initMatrixRandUEiN2cv5Size_IiEEib(ptr noundef nonnull align 8 dereferenceable(864) %i.y, i32 noundef %i.z, i64 %.sroa.0.0.copyload, i32 noundef %i.aa, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.bp

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !272
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !273
  store i32 16842752, ptr %6, align 8, !tbaa !286
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !286
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.b, ptr %i.af, align 8, !tbaa !287
  store i64 4294967297, ptr %i.ae, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !286
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !287
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !284
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, double noundef 1.000000e+00, i32 noundef %i.aj)
          to label %bb.e unwind label %bb.bq

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN2cv4GMatC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.f unwind label %bb.br

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN2cv4GMatC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.g unwind label %bb.bs

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.ak = load double, ptr %i.b, align 8, !tbaa !346
  %i.al = load i32, ptr %i.a, align 4, !tbaa !284
  invoke void @_ZN2cv4gapi4mulCERKNS_4GMatEdi(ptr dead_on_unwind nonnull writable sret(%"class.cv::GMat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %9, double noundef %i.ak, i32 noundef %i.al)
          to label %bb.h unwind label %bb.bt

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %11, align 16, !tbaa !291
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !290 ; 8 uses
  store <2 x ptr> %i.ao, ptr %10, align 16, !tbaa !291
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv4GMataSEOS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aq, align 8, !tbaa !297
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !298
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !230
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #32, !inline_history !17
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !230
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #32, !inline_history !17
  br label %_ZN2cv4GMataSEOS0_.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !225
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !284
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.l ], [ %i.bd, %bb.m ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.n, label %_ZN2cv4GMataSEOS0_.exit, !prof !299

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #32
  br label %_ZN2cv4GMataSEOS0_.exit

_ZN2cv4GMataSEOS0_.exit:                          ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.n
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !290 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN2cv4GMatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2cv4GMataSEOS0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bg, align 8, !tbaa !297
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !298
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !230
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #32, !inline_history !8
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !230
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #32, !inline_history !8
  br label %_ZN2cv4GMatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !225
  %.not.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !284
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.bj, %bb.r ], [ %i.bt, %bb.s ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.t, label %_ZN2cv4GMatD2Ev.exit, !prof !299

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #32
  br label %_ZN2cv4GMatD2Ev.exit

_ZN2cv4GMatD2Ev.exit:                             ; preds = %_ZN2cv4GMataSEOS0_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !290 ; 2 uses
  %i.by = load <2 x ptr>, ptr %9, align 16, !tbaa !291
  store <2 x ptr> %i.by, ptr %13, align 16, !tbaa !291
  %.not.i.i.i.i58 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i58, label %_ZN2cv4GMatC2ERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2cv4GMatD2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !225
  %.not.i.i.i.i.i59 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i59, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !284
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !284
  br label %_ZN2cv4GMatC2ERKS0_.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = atomicrmw volatile add ptr %i.bz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv4GMatC2ERKS0_.exit

_ZN2cv4GMatC2ERKS0_.exit:                         ; preds = %_ZN2cv4GMatD2Ev.exit, %bb.v, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !290 ; 2 uses
  %i.cg = load <2 x ptr>, ptr %10, align 16, !tbaa !291
  store <2 x ptr> %i.cg, ptr %14, align 16, !tbaa !291
  %.not.i.i.i.i60 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i60, label %_ZN2cv4GMatC2ERKS0_.exit62, label %bb.x

bb.x:                                             ; preds = %_ZN2cv4GMatC2ERKS0_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !225
  %.not.i.i.i.i.i61 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i61, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !284
end_hunk_0
begin_hunk_1_@_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEED2Ev:bb.a
_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #32, !inline_history !87
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i:           ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !325  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i:     ; preds = %bb.d, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.v = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !224 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !225
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i
  %i.ab = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.h, %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEiSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !343
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #34
  br label %_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEiSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev.exit

_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEiSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEEE, i64 16), ptr %0, align 8, !tbaa !230
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !325  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i unwind label %bb.c, !inline_history !3052 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #35, !inline_history !3052
  unreachable

_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !339  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #32, !inline_history !3051
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i.i:         ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !325  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.s = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.e, !inline_history !3052 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #35, !inline_history !3052
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i:   ; preds = %bb.d, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i.i
  %i.v = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !224 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !225
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34, !inline_history !3052
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i
  %i.ab = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.h, %_ZNSt10_Head_baseILm0ESt8functionIFbRKN2cv3MatES4_EELb0EED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !343
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #34, !inline_history !3052
  br label %_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEED2Ev.exit

_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38MulDoublePerfTest_TestPerformance_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !381
  %i.b = tail call noalias noundef nonnull dereferenceable(1128) ptr @_Znwm(i64 noundef 1128) #33 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(864) %i.c) #32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.e) #32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN4perf8TestBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(1121) %i.b)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11opencv_test14TestFunctionalD2Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %i.c) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1128) #34
  resume { ptr, i32 } %i.h

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11opencv_test38MulDoublePerfTest_TestPerformance_TestE, i64 16), ptr %i.b, align 8, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN11opencv_test38MulDoublePerfTest_TestPerformance_TestE, i64 88), ptr %i.i, align 8, !tbaa !230
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  store i8 0, ptr %i.j, align 8, !tbaa !408
  ret ptr %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test12MulCPerfTestEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef align 8 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !771    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !771
  %.not3538 = icmp eq ptr %i.c, %i.e
  br i1 %.not3538, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33
  %.sroa.028.039 = phi ptr [ %i.av, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33 ], [ %i.c, %bb.a ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.028.039, align 8, !tbaa !773 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !226  ; 3 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !224
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr nonnull %1, i64 %i.l)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load ptr, ptr %.sroa.028.039, align 8, !tbaa !773 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %.not = icmp eq ptr %i.v, @_ZN7testing8internal12TypeIdHelperIN11opencv_test12MulCPerfTestEE6dummy_E
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !220
  %i.x = load ptr, ptr %2, align 8, !tbaa !224    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !226  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.z, ptr %i.b, align 8, !tbaa !222
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !224
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !222
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !225
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.ad = phi ptr [ %i.ab, %.noexc.i.i ], [ %i.w, %bb.c ] ; 2 uses
  switch i64 %i.z, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !225
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !225
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ERKS1_.exit

_ZN7testing8internal12CodeLocationC2ERKS1_.exit:  ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.af = load i64, ptr %i.b, align 8, !tbaa !222 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !226
  %i.ah = load ptr, ptr %3, align 8, !tbaa !224
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !228
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !228
  invoke void @_ZN7testing8internal25ReportInvalidTestCaseTypeEPKcNS0_12CodeLocationE(ptr noundef nonnull %1, ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.am = load ptr, ptr %3, align 8, !tbaa !224   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.w
  br i1 %i.an, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ao = load i64, ptr %i.w, align 8, !tbaa !225
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @abort() #35
  unreachable

bb.g:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ERKS1_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !224   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %_ZN7testing8internal12CodeLocationD2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %bb.g
  %i.at = load i64, ptr %i.w, align 8, !tbaa !225
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #34
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.028.039, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !771
  %.not35 = icmp eq ptr %i.av, %i.aw
  br i1 %.not35, label %.thread, label %.lr.ph, !llvm.loop !3053

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ax = load ptr, ptr %.sroa.028.039, align 8, !tbaa !773
  %i.ay = tail call noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeINS0_25ParameterizedTestCaseInfoIN11opencv_test12MulCPerfTestEEENS0_29ParameterizedTestCaseInfoBaseEEEPT_PT0_(ptr noundef %i.ax) ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread, label %_ZNSt6vectorIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE9push_backEOS3_.exit

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread33, %bb.a, %bb.h
  %i.ba = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #33 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bb, ptr %4, align 8, !tbaa !220
  %i.bc = load ptr, ptr %2, align 8, !tbaa !224   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !226 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.be, ptr %i.a, align 8, !tbaa !222
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i.i19, label %._crit_edge.i.i.i18

.noexc.i.i19:                                     ; preds = %.thread
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i19
  store ptr %i.bg, ptr %4, align 8, !tbaa !224
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !222
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !225
  br label %._crit_edge.i.i.i18

._crit_edge.i.i.i18:                              ; preds = %.noexc, %.thread
  %i.bi = phi ptr [ %i.bg, %.noexc ], [ %i.bb, %.thread ] ; 2 uses
  switch i64 %i.be, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i18
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !225
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !225
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i18
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !222 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !226
  %i.bm = load ptr, ptr %4, align 8, !tbaa !224
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !228
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !228
  invoke void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test12MulCPerfTestEEC2EPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(128) %i.ba, ptr noundef %1, ptr noundef nonnull align 8 %4)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %4, align 8, !tbaa !224   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bb
  br i1 %i.bs, label %_ZN7testing8internal12CodeLocationD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.l
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !225
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #34
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit23

_ZN7testing8internal12CodeLocationD2Ev.exit23:    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !775 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN2cv6detail10OpaqueRefTIdE3movERNS0_14BasicOpaqueRefE:bb.a
_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit:         ; preds = %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i
  %.05.i = phi ptr [ %i.r, %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i ], [ %i.s, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i ]
  %i.t = load double, ptr %.05.i, align 8, !tbaa !346
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !624
  switch i64 %i.v, label %bb.k [
    i64 2, label %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i10
    i64 3, label %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i8
  ]

bb.k:                                             ; preds = %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.262, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv6detail10OpaqueRefTIdE4wrefEv, ptr noundef nonnull @.str.261, i32 noundef 182) #36
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !224    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %bb.m
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !225
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12

_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i10: ; preds = %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !401
  br label %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit13

_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i8: ; preds = %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i12: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit13:       ; preds = %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i10, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i8
  %.05.i9 = phi ptr [ %i.ad, %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i10 ], [ %i.ae, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i8 ]
  store double %i.t, ptr %.05.i9, align 8, !tbaa !346
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv6detail10OpaqueRefTIdE3ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !624
  switch i64 %i.b, label %bb.b [
    i64 1, label %_ZN2cv4util3getIPKdJNS0_9monostateES3_PddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i
    i64 2, label %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i
    i64 3, label %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i
  ]

_ZN2cv4util3getIPKdJNS0_9monostateES3_PddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !401
  br label %_ZNK2cv6detail10OpaqueRefTIdE4rrefEv.exit

_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !401
  br label %_ZNK2cv6detail10OpaqueRefTIdE4rrefEv.exit

_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK2cv6detail10OpaqueRefTIdE4rrefEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.263)
  invoke void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.h

_ZNK2cv6detail10OpaqueRefTIdE4rrefEv.exit:        ; preds = %_ZN2cv4util3getIPKdJNS0_9monostateES3_PddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i, %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i
  %.0.i = phi ptr [ %i.d, %_ZN2cv4util3getIPKdJNS0_9monostateES3_PddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i ], [ %i.f, %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i ], [ %i.g, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERKT_RKNS0_7variantIJDpT0_EEE.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10OpaqueRefTIdE3setERKNS_4util3anyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !342    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i

_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i:   ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIdEE, i64 0) #32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i, label %_ZN2cv4util8any_castIdEERKT_RKNS0_3anyE.exit

_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i: ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %4, align 8, !tbaa !230
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #36
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i
  unreachable

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.thread.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

_ZN2cv4util8any_castIdEERKT_RKNS0_3anyE.exit:     ; preds = %_ZN2cv4util8any_castIdEEPKT_PKNS0_3anyE.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !346
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !624
  switch i64 %i.h, label %bb.d [
    i64 2, label %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i
    i64 3, label %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i
  ]

bb.d:                                             ; preds = %_ZN2cv4util8any_castIdEERKT_RKNS0_3anyE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.262, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv6detail10OpaqueRefTIdE4wrefEv, ptr noundef nonnull @.str.261, i32 noundef 182) #36
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !224    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !225
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i: ; preds = %_ZN2cv4util8any_castIdEERKT_RKNS0_3anyE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !401
  br label %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit

_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i: ; preds = %_ZN2cv4util8any_castIdEERKT_RKNS0_3anyE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

_ZN2cv6detail10OpaqueRefTIdE4wrefEv.exit:         ; preds = %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i
  %.05.i = phi ptr [ %i.p, %_ZN2cv4util3getIPdJNS0_9monostateEPKdS2_dEEERT_RNS0_7variantIJDpT0_EEE.exit.i ], [ %i.q, %_ZN2cv4util3getIdJNS0_9monostateEPKdPddEEERT_RNS0_7variantIJDpT0_EEE.exit.i ]
  store double %i.f, ptr %.05.i, align 8, !tbaa !346
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2cv4util11throw_errorISt11logic_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 2 uses
  tail call void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #32
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #36
  unreachable
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #25

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %i.a, align 8, !tbaa !230
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN2cv4util12bad_any_castE, ptr nonnull @_ZNSt8bad_castD2Ev) #36
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util12bad_any_castD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv4util12bad_any_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.265
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRN2cv6detail9OpaqueRefEEPS4_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !291
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(20) %1), !inline_history !4570
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN2cv6detail9OpaqueRefEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !291
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFvRN2cv6detail9OpaqueRefEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !291
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvRN2cv6detail9OpaqueRefEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EE5resetINS1_8TypeHintIdEEEENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintIdEEvEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #32 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 8) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #36
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #35
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintIdEEvEEPT_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !297
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !298
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv6detail8TypeHintIdEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !1417
  store ptr %1, ptr %0, align 8, !tbaa !1419
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !290  ; 8 uses
  store ptr %i.a, ptr %i.l, align 8, !tbaa !290
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintIdEEvEEPT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.n, align 8, !tbaa !297
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !298
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #32, !inline_history !77
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !230
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #32, !inline_history !77
  br label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !225
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !284
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.l ], [ %i.aa, %bb.m ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.n, label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !299

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #32
  br label %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv6detail12TypeHintBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_8TypeHintIdEEvEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintIdEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintIdEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1417 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintIdEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv6detail8TypeHintIdEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail8TypeHintIdED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEED2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEEE, i64 16), ptr %0, align 8, !tbaa !230
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #32, !inline_history !89
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i:             ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !325  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i:       ; preds = %bb.b, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !224 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !225
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #34
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !343
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #34
  br label %_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev.exit

_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEEE, i64 16), ptr %0, align 8, !tbaa !230
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !230
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #32, !inline_history !4885
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i:           ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !325  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i unwind label %bb.c, !inline_history !4886 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #35, !inline_history !4886
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i:     ; preds = %bb.b, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !224 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !225
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #34, !inline_history !4886
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.v = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i, label %_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !343
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #34, !inline_history !4886
  br label %_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEED2Ev.exit

_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test38ParseYoloPerfTest_TestPerformance_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !746
  %i.b = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #33 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(864) %i.c) #32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.e) #32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN4perf8TestBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(1141) %i.b)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11opencv_test14TestFunctionalD2Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %i.c) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1144) #34
  resume { ptr, i32 } %i.h

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11opencv_test38ParseYoloPerfTest_TestPerformance_TestE, i64 16), ptr %i.b, align 8, !tbaa !230
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN11opencv_test38ParseYoloPerfTest_TestPerformance_TestE, i64 88), ptr %i.i, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1140
  store i8 0, ptr %i.k, align 4, !tbaa !740
  ret ptr %i.b
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEEC2ESt16initializer_listIfERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = shl nuw nsw i64 %2, 2                   ; 4 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.thread.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

.thread.i:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.a = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !744
  br label %bb.c

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #33
          to label %.noexc3 unwind label %bb.d    ; 4 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  store ptr %i.c, ptr %0, align 8, !tbaa !743
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !744
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.b, label %bb.a, !prof !4887

bb.a:                                             ; preds = %.noexc3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 4 %1, i64 %.idx, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %.noexc3
  %i.f = load float, ptr %1, align 4, !tbaa !362
  store float %i.f, ptr %i.c, align 4, !tbaa !362
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %.thread.i
  %i.g = phi ptr [ %i.d, %bb.a ], [ %i.a, %.thread.i ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !742
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !743    ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i.i4, label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !744
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #34
  br label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit:             ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_(ptr %0, ptr %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #39 ; 7 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !4888

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.j, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !747
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01320.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.019.i.i.i, i64 24, i1 false), !tbaa.struct !747
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.013.i.i.i, %i.n
  br i1 %.not.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4889

_ZSt29__uninitialized_construct_bufIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %.lr.ph.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %.0.lcssa.i.i.i, i64 24, i1 false), !tbaa.struct !747
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.p = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.p, label %bb.d, label %bb.f, !prof !718

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_T1_(ptr %0, ptr %i.q, ptr %1, ptr noundef %.sroa.12.0)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #32
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.t = icmp eq ptr %.sroa.12.0, null
  br i1 %i.t, label %bb.g, label %bb.h, !prof !299

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_(ptr %0, ptr %1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.u = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.u) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = udiv exact i64 %i.c, 24
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.c, 168
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i)
  %i.g = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit, !llvm.loop !4890

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 4 uses
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.k, 168
  br i1 %i.n, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit17

.lr.ph.i15:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit, %.lr.ph.i15
  %.022.i16 = phi i64 [ %i.p, %.lr.ph.i15 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i16)
  %i.o = shl nuw nsw i64 %.022.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.022.i16, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit17, !llvm.loop !4890

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit17: ; preds = %.lr.ph.i15, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_.exit
  %i.r = sdiv exact i64 %i.c, 24
  %i.s = sdiv exact i64 %i.k, 24
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_S11_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"struct.opencv_test::ParserYoloTest::Detection", align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret30, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.0.016.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.0.016.i, %1
  br i1 %.not17.i, label %common.ret30, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.0.019.i = phi ptr [ %.sroa.0.016.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.i ] ; 7 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i, %bb.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 40
  %i.h = load float, ptr %i.g, align 4, !tbaa !1525 ; 4 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !1525
  %i.j = fcmp ogt float %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.019.i, i64 24, i1 false), !tbaa.struct !747
  %i.k = ptrtoint ptr %.sroa.0.019.i to i64
  %i.l = sub i64 %i.k, %i.b                       ; 4 uses
  %i.m = icmp sgt i64 %i.l, 24
  br i1 %i.m, label %bb.e, label %bb.f, !prof !718

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.neg24.i = udiv exact i64 %i.l, 24
  %.neg24.neg.i = sub nsw i64 0, %.neg24.i
  %i.o = getelementptr inbounds [24 x i8], ptr %i.n, i64 %.neg24.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.o, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.l, 24
  br i1 %i.p, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.q, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !747
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.sroa.03.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.0.019.i, align 4, !tbaa !284
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 44
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !284
  %i.r = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !1525
  %i.t = fcmp ogt float %i.h, %i.s
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.08.011.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.0.i.i, i64 24, i1 false), !tbaa.struct !747
  %i.u = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -32
  %i.v = load float, ptr %i.u, align 4, !tbaa !1525
  %i.w = fcmp ogt float %i.h, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_T0_.exit.i, !llvm.loop !195

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i, %bb.h ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  store <4 x i32> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.08.0.lcssa.i.i, align 4, !tbaa !284
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 16
  store float %i.h, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !362
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 20
  store i32 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx6.i.i, align 4, !tbaa !284
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !196

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.i, %bb.j
  ret void

bb.j:                                             ; preds = %bb.a
  %i.x = udiv exact i64 %i.c, 24
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.y ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_(ptr %0, ptr %i.z)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_(ptr %i.z, ptr %1)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.a, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_S11_T1_(ptr %0, ptr %i.z, ptr %1, i64 noundef %i.y, i64 noundef %i.ac)
  br label %common.ret30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_S11_T1_S11_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_S10_T0_S11_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !718

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !747
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %.not22.i = icmp eq ptr %1, %0
  br i1 %.not22.i, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, %bb.i
  %.025.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 7 uses
  %.sroa.0.024.i = phi ptr [ %i.n, %bb.i ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 5 uses
  %.sroa.016.023.i = phi ptr [ %.sroa.016.1.i, %bb.i ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 5 uses
  %.not19.i = icmp eq ptr %.sroa.016.023.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !1525
  %i.i = getelementptr inbounds nuw i8, ptr %.025.i, i64 16
  %i.j = load float, ptr %i.i, align 4, !tbaa !1525
  %i.k = fcmp ogt float %i.h, %i.j
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.016.023.i, i64 24, i1 false), !tbaa.struct !747
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.016.023.i, i64 24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 4 dereferenceable(24) %.025.i, i64 24, i1 false), !tbaa.struct !747
  %i.m = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.016.1.i = phi ptr [ %i.l, %bb.g ], [ %.sroa.016.023.i, %bb.h ]
  %.1.i = phi ptr [ %.025.i, %bb.g ], [ %i.m, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 24
  %.not.i = icmp eq ptr %.1.i, %i.f
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !4891

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = ptrtoint ptr %.025.i to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp sgt i64 %i.q, 24
  br i1 %i.r, label %bb.j, label %bb.k, !prof !718

bb.j:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.0.024.i, ptr align 4 %.025.i, i64 %i.q, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.s = icmp eq i64 %i.q, 24
  br i1 %i.s, label %bb.l, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0.024.i, ptr noundef nonnull align 4 dereferenceable(24) %.025.i, i64 24, i1 false), !tbaa.struct !747
  br label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 7 uses
  %i.w = icmp sgt i64 %i.v, 24
  br i1 %i.w, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23.thread, label %bb.n, !prof !718

bb.n:                                             ; preds = %bb.m
  %i.x = icmp eq i64 %i.v, 24
  br i1 %i.x, label %bb.o, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !747
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23: ; preds = %bb.n, %bb.o
  %i.y = icmp eq ptr %0, %1
  br i1 %i.y, label %bb.p, label %bb.r

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23.thread: ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.v, i1 false)
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %.thread, label %bb.r

.thread:                                          ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23.thread
  %.neg2942.i = udiv exact i64 %i.v, 24
  %.neg2942.neg.i = sub nsw i64 0, %.neg2942.i
  %i.aa = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg2942.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %5, i64 %i.v, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.p:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23
  %i.ab = icmp eq i64 %i.v, 24
  br i1 %i.ab, label %bb.q, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ac, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !747
  br label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23.thread, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23
  %i.ad = icmp eq ptr %2, %1
  br i1 %i.ad, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds i8, ptr %5, i64 %i.v
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.sroa.022.0.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.sroa.022.0.i.ph, %bb.u ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.al, %bb.u ]
  %.0.i.ph = phi ptr [ %i.af, %bb.s ], [ %.0.i, %bb.u ]
  %.sroa.022.0.i.ph = getelementptr inbounds i8, ptr %.sroa.022.0.i.ph.pn, i64 -24 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.022.0.i.ph.pn, i64 -8
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.sroa.0.0.i = phi ptr [ %i.al, %bb.aa ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.aw, %bb.aa ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1525
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !1525
  %i.ak = fcmp ogt float %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 5 uses
  br i1 %i.ak, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.al, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.022.0.i.ph, i64 24, i1 false), !tbaa.struct !747
  %i.am = icmp eq ptr %0, %.sroa.022.0.i.ph
  br i1 %i.am, label %bb.v, label %.outer, !llvm.loop !4892

bb.v:                                             ; preds = %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %5 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 24
  br i1 %i.ar, label %bb.w, label %bb.x, !prof !718

bb.w:                                             ; preds = %bb.v
  %.neg44.i = udiv exact i64 %i.aq, 24
  %.neg44.neg.i = sub nsw i64 0, %.neg44.i
  %i.as = getelementptr inbounds [24 x i8], ptr %i.al, i64 %.neg44.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %5, i64 %i.aq, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.x:                                             ; preds = %bb.v
  %i.at = icmp eq i64 %i.aq, 24
  br i1 %i.at, label %bb.y, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.au, ptr noundef nonnull align 4 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !747
  br label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit

bb.z:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.al, ptr noundef nonnull align 4 dereferenceable(24) %.0.i, i64 24, i1 false), !tbaa.struct !747
  %i.av = icmp eq ptr %5, %.0.i
  br i1 %i.av, label %_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = getelementptr inbounds i8, ptr %.0.i, i64 -24
  br label %bb.t, !llvm.loop !4892

_ZSt21__move_merge_adaptiveIPN11opencv_test14ParserYoloTest9DetectionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS1_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS2_SX_E_EEEvT_S10_T0_S11_T1_T2_.exit: ; preds = %bb.i, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %.thread, %bb.l, %bb.k, %bb.j, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11opencv_test14ParserYoloTest9DetectionESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12parseYoloRefERKN2cv3MatERKNSC_5Size_IiEEffiRKS6_IfSaIfEERS6_INSC_5Rect_IiEESaISP_EERS6_IiSaIiEEEUlRKS4_SX_E_EEEvT_S10_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.opencv_test::ParserYoloTest::Detection", align 4 ; 4 uses
  %4 = alloca %"struct.opencv_test::ParserYoloTest::Detection", align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
end_hunk_3
begin_hunk_4_@_ZN2cv12GComputation7compileIJNS_11GOpaqueDescESt6vectorINS_11GCompileArgESaIS4_EEEJLi0EEEENS_9GCompiledERKSt5tupleIJDpT_EENS_6detail3SeqIJXspT0_EEEE:bb.a
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #34
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ai = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.o, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !343
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #34
  br label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ao = load ptr, ptr %3, align 8, !tbaa !307   ; 3 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !308 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEEvPT_.exit.i.i.i
  %.05.i.i.i14 = phi ptr [ %i.aw, %_ZSt8_DestroyIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEEvPT_.exit.i.i.i ], [ %i.ao, %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aq = load i64, ptr %.05.i.i.i14, align 8, !tbaa !310
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @constinit.310, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 8
  invoke void %i.as(ptr noundef nonnull %i.at)
          to label %_ZSt8_DestroyIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEEvPT_.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i13
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #35
  unreachable

_ZSt8_DestroyIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i13
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 56 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.aw, %i.ap
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i13, !llvm.loop !2

_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEEvPT_.exit.i.i.i
  %.pr.i16 = load ptr, ptr %3, align 8, !tbaa !307
  br label %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit
  %i.ax = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ao, %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i17 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i17, label %_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !311
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #34
  br label %_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

.body:                                            ; preds = %.thread, %bb.b
  %i.bc = phi { ptr, i32 } [ %i.b, %.thread ], [ %i.g, %bb.b ]
  %i.bd = load i64, ptr %4, align 8, !tbaa !310
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @constinit.310, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !291
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void %i.bf(ptr noundef nonnull %i.bg)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit19 unwind label %bb.l

bb.l:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit19: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.p

bb.m:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn9 = phi { ptr, i32 } [ %i.bk, %bb.n ], [ %i.bj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit19
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.o ], [ %i.bc, %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_Head_baseILm1ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !339    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !342  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #32, !inline_history !9
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i:               ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.l = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.b, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i
  %i.o = load ptr, ptr %.05.i.i.i, align 8, !tbaa !224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !225
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !343
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #34
  br label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_gapi_core_perf_tests.cpp() #28 section ".text.startup" {
bb.a:
  store i32 320, ptr @_ZN4perfL6szQVGAE, align 4, !tbaa !272
  store i32 240, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szQVGAE, i64 4), align 4, !tbaa !273
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szQVGAE) ; 0 uses
  store i32 640, ptr @_ZN4perfL5szVGAE, align 4, !tbaa !272
  store i32 480, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szVGAE, i64 4), align 4, !tbaa !273
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szVGAE) ; 0 uses
  store i32 800, ptr @_ZN4perfL6szSVGAE, align 4, !tbaa !272
  store i32 600, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szSVGAE, i64 4), align 4, !tbaa !273
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szSVGAE) ; 0 uses
  store i32 1024, ptr @_ZN4perfL5szXGAE, align 4, !tbaa !272
  store i32 768, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szXGAE, i64 4), align 4, !tbaa !273
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szXGAE) ; 0 uses
  store i32 1280, ptr @_ZN4perfL6szSXGAE, align 4, !tbaa !272
  store i32 1024, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szSXGAE, i64 4), align 4, !tbaa !273
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szSXGAE) ; 0 uses
  store i32 2560, ptr @_ZN4perfL6szWQHDE, align 4, !tbaa !272
  store i32 1440, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szWQHDE, i64 4), align 4, !tbaa !273
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szWQHDE) ; 0 uses
  store i32 640, ptr @_ZN4perfL5sznHDE, align 4, !tbaa !272
  store i32 360, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5sznHDE, i64 4), align 4, !tbaa !273
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5sznHDE) ; 0 uses
  store i32 960, ptr @_ZN4perfL5szqHDE, align 4, !tbaa !272
  store i32 540, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szqHDE, i64 4), align 4, !tbaa !273
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szqHDE) ; 0 uses
  store i32 1280, ptr @_ZN4perfL6sz720pE, align 4, !tbaa !272
  store i32 720, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6sz720pE, i64 4), align 4, !tbaa !273
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6sz720pE) ; 0 uses
  store i32 1920, ptr @_ZN4perfL7sz1080pE, align 4, !tbaa !272
  store i32 1080, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL7sz1080pE, i64 4), align 4, !tbaa !273
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL7sz1080pE) ; 0 uses
  store i32 3840, ptr @_ZN4perfL7sz2160pE, align 4, !tbaa !272
  store i32 2160, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL7sz2160pE, i64 4), align 4, !tbaa !273
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL7sz2160pE) ; 0 uses
  store i32 7680, ptr @_ZN4perfL7sz4320pE, align 4, !tbaa !272
  store i32 4320, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL7sz4320pE, i64 4), align 4, !tbaa !273
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL7sz4320pE) ; 0 uses
  store i32 2048, ptr @_ZN4perfL5sz3MPE, align 4, !tbaa !272
  store i32 1536, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5sz3MPE, i64 4), align 4, !tbaa !273
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5sz3MPE) ; 0 uses
  store i32 2592, ptr @_ZN4perfL5sz5MPE, align 4, !tbaa !272
  store i32 1944, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5sz5MPE, i64 4), align 4, !tbaa !273
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5sz5MPE) ; 0 uses
  store i32 2048, ptr @_ZN4perfL4sz2KE, align 4, !tbaa !272
  store i32 2048, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL4sz2KE, i64 4), align 4, !tbaa !273
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL4sz2KE) ; 0 uses
  store i32 127, ptr @_ZN4perfL5szODDE, align 4, !tbaa !272
  store i32 61, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szODDE, i64 4), align 4, !tbaa !273
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szODDE) ; 0 uses
  store i32 24, ptr @_ZN4perfL9szSmall24E, align 4, !tbaa !272
  store i32 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall24E, i64 4), align 4, !tbaa !273
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall24E) ; 0 uses
  store i32 32, ptr @_ZN4perfL9szSmall32E, align 4, !tbaa !272
  store i32 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall32E, i64 4), align 4, !tbaa !273
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall32E) ; 0 uses
  store i32 64, ptr @_ZN4perfL9szSmall64E, align 4, !tbaa !272
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall64E, i64 4), align 4, !tbaa !273
  %i.s = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall64E) ; 0 uses
  store i32 128, ptr @_ZN4perfL10szSmall128E, align 4, !tbaa !272
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL10szSmall128E, i64 4), align 4, !tbaa !273
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL10szSmall128E) ; 0 uses
  %i.u = tail call noundef i32 @_ZN11opencv_test34PhasePerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.u, ptr @_ZN11opencv_test34PhasePerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.v = tail call noundef i32 @_ZN11opencv_test33SqrtPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.v, ptr @_ZN11opencv_test33SqrtPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.w = tail call noundef i32 @_ZN11opencv_test32AddPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.w, ptr @_ZN11opencv_test32AddPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.x = tail call noundef i32 @_ZN11opencv_test33AddCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.x, ptr @_ZN11opencv_test33AddCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.y = tail call noundef i32 @_ZN11opencv_test32SubPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.y, ptr @_ZN11opencv_test32SubPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.z = tail call noundef i32 @_ZN11opencv_test33SubCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.z, ptr @_ZN11opencv_test33SubCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.aa = tail call noundef i32 @_ZN11opencv_test34SubRCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.aa, ptr @_ZN11opencv_test34SubRCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ab = tail call noundef i32 @_ZN11opencv_test32MulPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ab, ptr @_ZN11opencv_test32MulPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ac = tail call noundef i32 @_ZN11opencv_test38MulDoublePerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ac, ptr @_ZN11opencv_test38MulDoublePerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ad = tail call noundef i32 @_ZN11opencv_test33MulCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ad, ptr @_ZN11opencv_test33MulCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ae = tail call noundef i32 @_ZN11opencv_test32DivPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ae, ptr @_ZN11opencv_test32DivPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.af = tail call noundef i32 @_ZN11opencv_test33DivCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.af, ptr @_ZN11opencv_test33DivCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ag = tail call noundef i32 @_ZN11opencv_test34DivRCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ag, ptr @_ZN11opencv_test34DivRCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ah = tail call noundef i32 @_ZN11opencv_test33MaskPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ah, ptr @_ZN11opencv_test33MaskPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ai = tail call noundef i32 @_ZN11opencv_test33MeanPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ai, ptr @_ZN11opencv_test33MeanPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.aj = tail call noundef i32 @_ZN11opencv_test39Polar2CartPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.aj, ptr @_ZN11opencv_test39Polar2CartPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ak = tail call noundef i32 @_ZN11opencv_test39Cart2PolarPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ak, ptr @_ZN11opencv_test39Cart2PolarPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.al = tail call noundef i32 @_ZN11opencv_test32CmpPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.al, ptr @_ZN11opencv_test32CmpPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.am = tail call noundef i32 @_ZN11opencv_test42CmpWithScalarPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.am, ptr @_ZN11opencv_test42CmpWithScalarPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.an = tail call noundef i32 @_ZN11opencv_test36BitwisePerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.an, ptr @_ZN11opencv_test36BitwisePerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ao = tail call noundef i32 @_ZN11opencv_test39BitwiseNotPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ao, ptr @_ZN11opencv_test39BitwiseNotPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ap = tail call noundef i32 @_ZN11opencv_test35SelectPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ap, ptr @_ZN11opencv_test35SelectPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.aq = tail call noundef i32 @_ZN11opencv_test32MinPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.aq, ptr @_ZN11opencv_test32MinPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ar = tail call noundef i32 @_ZN11opencv_test32MaxPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ar, ptr @_ZN11opencv_test32MaxPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.as = tail call noundef i32 @_ZN11opencv_test36AbsDiffPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.as, ptr @_ZN11opencv_test36AbsDiffPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.at = tail call noundef i32 @_ZN11opencv_test37AbsDiffCPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.at, ptr @_ZN11opencv_test37AbsDiffCPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.au = tail call noundef i32 @_ZN11opencv_test32SumPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.au, ptr @_ZN11opencv_test32SumPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.av = tail call noundef i32 @_ZN11opencv_test41CountNonZeroPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.av, ptr @_ZN11opencv_test41CountNonZeroPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.aw = tail call noundef i32 @_ZN11opencv_test40AddWeightedPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.aw, ptr @_ZN11opencv_test40AddWeightedPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ax = tail call noundef i32 @_ZN11opencv_test33NormPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ax, ptr @_ZN11opencv_test33NormPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ay = tail call noundef i32 @_ZN11opencv_test37IntegralPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ay, ptr @_ZN11opencv_test37IntegralPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.az = tail call noundef i32 @_ZN11opencv_test38ThresholdPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.az, ptr @_ZN11opencv_test38ThresholdPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.ba = tail call noundef i32 @_ZN11opencv_test40ThresholdOTPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.ba, ptr @_ZN11opencv_test40ThresholdOTPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bb = tail call noundef i32 @_ZN11opencv_test36InRangePerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bb, ptr @_ZN11opencv_test36InRangePerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bc = tail call noundef i32 @_ZN11opencv_test35Split3PerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bc, ptr @_ZN11opencv_test35Split3PerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bd = tail call noundef i32 @_ZN11opencv_test35Split4PerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bd, ptr @_ZN11opencv_test35Split4PerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.be = tail call noundef i32 @_ZN11opencv_test35Merge3PerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.be, ptr @_ZN11opencv_test35Merge3PerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bf = tail call noundef i32 @_ZN11opencv_test35Merge4PerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bf, ptr @_ZN11opencv_test35Merge4PerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bg = tail call noundef i32 @_ZN11opencv_test34RemapPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bg, ptr @_ZN11opencv_test34RemapPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bh = tail call noundef i32 @_ZN11opencv_test33FlipPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bh, ptr @_ZN11opencv_test33FlipPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bi = tail call noundef i32 @_ZN11opencv_test33CropPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bi, ptr @_ZN11opencv_test33CropPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bj = tail call noundef i32 @_ZN11opencv_test33CopyPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bj, ptr @_ZN11opencv_test33CopyPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bk = tail call noundef i32 @_ZN11opencv_test38ConcatHorPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bk, ptr @_ZN11opencv_test38ConcatHorPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bl = tail call noundef i32 @_ZN11opencv_test41ConcatHorVecPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bl, ptr @_ZN11opencv_test41ConcatHorVecPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bm = tail call noundef i32 @_ZN11opencv_test39ConcatVertPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bm, ptr @_ZN11opencv_test39ConcatVertPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bn = tail call noundef i32 @_ZN11opencv_test42ConcatVertVecPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bn, ptr @_ZN11opencv_test42ConcatVertVecPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bo = tail call noundef i32 @_ZN11opencv_test32LUTPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bo, ptr @_ZN11opencv_test32LUTPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bp = tail call noundef i32 @_ZN11opencv_test38ConvertToPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bp, ptr @_ZN11opencv_test38ConvertToPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bq = tail call noundef i32 @_ZN11opencv_test37KMeansNDPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bq, ptr @_ZN11opencv_test37KMeansNDPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.br = tail call noundef i32 @_ZN11opencv_test37KMeans2DPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.br, ptr @_ZN11opencv_test37KMeans2DPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bs = tail call noundef i32 @_ZN11opencv_test37KMeans3DPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bs, ptr @_ZN11opencv_test37KMeans3DPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bt = tail call noundef i32 @_ZN11opencv_test38TransposePerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bt, ptr @_ZN11opencv_test38TransposePerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bu = tail call noundef i32 @_ZN11opencv_test39ParseSSDBLPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bu, ptr @_ZN11opencv_test39ParseSSDBLPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bv = tail call noundef i32 @_ZN11opencv_test37ParseSSDPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bv, ptr @_ZN11opencv_test37ParseSSDPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bw = tail call noundef i32 @_ZN11opencv_test38ParseYoloPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bw, ptr @_ZN11opencv_test38ParseYoloPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.bx = tail call noundef i32 @_ZN11opencv_test33SizePerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.bx, ptr @_ZN11opencv_test33SizePerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  %i.by = tail call noundef i32 @_ZN11opencv_test34SizeRPerfTest_TestPerformance_Test13AddToRegistryEv()
  store i32 %i.by, ptr @_ZN11opencv_test34SizeRPerfTest_TestPerformance_Test24gtest_registering_dummy_E, align 4, !tbaa !284
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #23

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn }
attributes #26 = { nofree nounwind }
attributes #27 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #28 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(none) }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind allocsize(0) }

!llvm.module.flags = !{!208, !209, !210}
!llvm.ident = !{!211}
!llvm.errno.tbaa = !{!216}

!0 = distinct !{null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!1 = distinct !{!1, !304}
!2 = distinct !{!2, !304}
!3 = distinct !{!3, !304}
!4 = distinct !{null}
!5 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!6 = distinct !{ptr @_ZN2cv9GCompiledD2Ev, null, null, null}
!7 = distinct !{ptr @_ZN2cv12GComputationD2Ev, null, null, null}
!8 = distinct !{ptr @_ZN2cv4GMatD2Ev, null, null, null}
!9 = distinct !{ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!10 = distinct !{!10, !304}
!11 = distinct !{ptr @_ZN2cv7GRunArgD2Ev, ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv4util3anyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev, null, ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv4util3anyEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv, null, null, null, null, null, null}
!12 = distinct !{!12, !304}
!13 = distinct !{ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv4util3anyESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev, null, ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv4util3anyEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv, null, null, null, null, null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!16 = distinct !{null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!17 = distinct !{null, null, null, null, null, null}
!18 = distinct !{ptr @_ZN2cv7GScalarD2Ev, null, null, null}
!19 = distinct !{null, ptr @_ZN2cv7GScalarD2Ev, null, null, null}
!20 = distinct !{null}
!21 = distinct !{null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!22 = distinct !{null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!23 = distinct !{ptr @_ZN2cv7GOpaqueIiED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!24 = distinct !{ptr @_ZN2cv7GOpaqueIiED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!25 = distinct !{ptr @_ZN2cv6detail9OpaqueRefD2Ev, null, null, null}
!26 = distinct !{ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!27 = distinct !{ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!28 = distinct !{!28, !304}
!29 = distinct !{null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!30 = distinct !{null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!31 = distinct !{ptr @_ZNSt6vectorIN2cv4GMatESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv4GMatEEvT_S3_, null, null, ptr @_ZN2cv4GMatD2Ev, null, null, null}
!32 = distinct !{!32, !304}
!33 = distinct !{ptr @_ZN2cv7GOpaqueIdED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!34 = distinct !{ptr @_ZN2cv7GOpaqueIdED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!35 = distinct !{null, null, ptr @_ZN2cv7GOpaqueIdED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!36 = distinct !{null, null, ptr @_ZN2cv7GOpaqueIdED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!37 = distinct !{ptr @_ZN2cv6GArrayIiED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!38 = distinct !{ptr @_ZN2cv6GArrayIiED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!39 = distinct !{ptr @_ZN2cv6GArrayINS_6Point_IfEEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!40 = distinct !{ptr @_ZN2cv6GArrayINS_6Point_IfEEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!41 = distinct !{ptr @_ZN2cv6detail9VectorRefD2Ev, null, null, null}
!42 = distinct !{null, null, ptr @_ZN2cv7GOpaqueIdED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!43 = distinct !{null, null, ptr @_ZN2cv7GOpaqueIdED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!44 = distinct !{ptr @_ZN2cv6GArrayINS_7Point3_IfEEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!45 = distinct !{ptr @_ZN2cv6GArrayINS_7Point3_IfEEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!46 = distinct !{!46, !304}
!47 = distinct !{ptr @_ZN2cv7GOpaqueINS_5Size_IiEEED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!48 = distinct !{ptr @_ZN2cv7GOpaqueINS_5Size_IiEEED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!49 = distinct !{!49, !304}
!50 = distinct !{ptr @_ZN2cv6GArrayINS_5Rect_IiEEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!51 = distinct !{ptr @_ZN2cv6GArrayINS_5Rect_IiEEED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!52 = distinct !{null, ptr @_ZN2cv6GArrayIiED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!53 = distinct !{null, ptr @_ZN2cv6GArrayIiED2Ev, ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!54 = distinct !{ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!55 = distinct !{ptr @_ZN2cv6detail7GArrayUD2Ev, null, null, null}
!56 = distinct !{ptr @_ZN2cv7GOpaqueINS_5Rect_IiEEED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!57 = distinct !{ptr @_ZN2cv7GOpaqueINS_5Rect_IiEEED2Ev, ptr @_ZN2cv6detail8GOpaqueUD2Ev, null, null, null}
!58 = distinct !{ptr @_ZNSt10_Head_baseILm1ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!59 = distinct !{!59, !304}
!60 = distinct !{!60, !304}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJSt8functionIFbRKN2cv3MatES7_EENS4_5Size_IiEEN4perf7MatTypeESt6vectorINS4_11GCompileArgESaISF_EEEEED2Ev, null, null}
!65 = distinct !{!65, !304}
!66 = distinct !{null, null, null}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{!69, !304}
!70 = distinct !{ptr @_ZN7testing13TestParamInfoISt5tupleIJSt8functionIFbRKN2cv3MatES6_EENS3_5Size_IiEEN4perf7MatTypeESt6vectorINS3_11GCompileArgESaISE_EEEEED2Ev, ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm3ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!71 = distinct !{null, null}
!72 = distinct !{!72, !304}
!73 = distinct !{!73, !304}
!74 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm3ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!75 = distinct !{null}
!76 = distinct !{ptr @_ZNSt10_Head_baseILm3ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!77 = distinct !{null, null, null}
!78 = distinct !{!78, !304}
!79 = distinct !{!79, !304}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJSt8functionIFbRKN2cv3MatES7_EENS4_5Size_IiEEN4perf7MatTypeEiSt6vectorINS4_11GCompileArgESaISF_EEEEED2Ev, null, null}
!84 = distinct !{null, null, null}
!85 = distinct !{null}
!86 = distinct !{ptr @_ZN7testing13TestParamInfoISt5tupleIJSt8functionIFbRKN2cv3MatES6_EENS3_5Size_IiEEN4perf7MatTypeEiSt6vectorINS3_11GCompileArgESaISE_EEEEED2Ev, ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEiSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!87 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEiSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!88 = distinct !{null}
!89 = distinct !{ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!90 = distinct !{!90, !304}
!91 = distinct !{!91, !304}
!92 = distinct !{!92, !304}
!93 = distinct !{!93, !304}
!94 = distinct !{!94, !304}
!95 = distinct !{null}
!96 = distinct !{null}
!97 = distinct !{null}
!98 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJSt8functionIFbRKN2cv3MatES7_EENS4_5Size_IiEEN4perf7MatTypeEidSt6vectorINS4_11GCompileArgESaISF_EEEEED2Ev, null, null}
!99 = distinct !{null, null, null}
!100 = distinct !{null}
!101 = distinct !{ptr @_ZN7testing13TestParamInfoISt5tupleIJSt8functionIFbRKN2cv3MatES6_EENS3_5Size_IiEEN4perf7MatTypeEidSt6vectorINS3_11GCompileArgESaISE_EEEEED2Ev, ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEidSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm5ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!102 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeEidSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm5ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!103 = distinct !{null}
!104 = distinct !{ptr @_ZNSt10_Head_baseILm5ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!105 = distinct !{!105, !304}
!106 = distinct !{!106, !304}
!107 = distinct !{!107, !304}
!108 = distinct !{!108, !304}
!109 = distinct !{!109, !304}
!110 = distinct !{!110, !304}
!111 = distinct !{!111, !304}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = distinct !{null}
!115 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJSt8functionIFbRKN2cv7Scalar_IdEES8_EENS4_5Size_IiEEN4perf7MatTypeESt6vectorINS4_11GCompileArgESaISG_EEEEED2Ev, null, null}
!116 = distinct !{null, null, null}
!117 = distinct !{null}
!118 = distinct !{ptr @_ZN7testing13TestParamInfoISt5tupleIJSt8functionIFbRKN2cv7Scalar_IdEES7_EENS3_5Size_IiEEN4perf7MatTypeESt6vectorINS3_11GCompileArgESaISF_EEEEED2Ev, ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv7Scalar_IdEES5_EENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISD_EEEED2Ev, ptr @_ZNSt10_Head_baseILm3ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!119 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv7Scalar_IdEES5_EENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISD_EEEED2Ev, ptr @_ZNSt10_Head_baseILm3ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!120 = distinct !{null}
!121 = distinct !{!121, !304}
!122 = distinct !{null}
!123 = distinct !{null}
!124 = distinct !{null}
!125 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJSt8functionIFbRKN2cv3MatES7_EENS4_5Size_IiEESt6vectorINS4_11GCompileArgESaISD_EEEEED2Ev, null, null}
!126 = distinct !{null, null, null}
!127 = distinct !{null}
!128 = distinct !{ptr @_ZN7testing13TestParamInfoISt5tupleIJSt8functionIFbRKN2cv3MatES6_EENS3_5Size_IiEESt6vectorINS3_11GCompileArgESaISC_EEEEED2Ev, ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEESt6vectorINS1_11GCompileArgESaISA_EEEED2Ev, ptr @_ZNSt10_Head_baseILm2ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!129 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEESt6vectorINS1_11GCompileArgESaISA_EEEED2Ev, ptr @_ZNSt10_Head_baseILm2ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!130 = distinct !{null}
!131 = distinct !{ptr @_ZNSt10_Head_baseILm2ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!132 = distinct !{!132, !304}
!133 = distinct !{!133, !304}
!134 = distinct !{null}
!135 = distinct !{null}
!136 = distinct !{null}
!137 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJSt8functionIFbRKN2cv3MatES7_EENS4_8CmpTypesENS4_5Size_IiEEN4perf7MatTypeESt6vectorINS4_11GCompileArgESaISG_EEEEED2Ev, null, null}
!138 = distinct !{null, null, null}
!139 = distinct !{null}
!140 = distinct !{ptr @_ZN7testing13TestParamInfoISt5tupleIJSt8functionIFbRKN2cv3MatES6_EENS3_8CmpTypesENS3_5Size_IiEEN4perf7MatTypeESt6vectorINS3_11GCompileArgESaISF_EEEEED2Ev, ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_8CmpTypesENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISD_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!141 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_8CmpTypesENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISD_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!142 = distinct !{null}
!143 = distinct !{!143, !304}
!144 = distinct !{!144, !304}
!145 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EEN11opencv_test9bitwiseOpEbNS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISE_EEEED2Ev, ptr @_ZNSt10_Head_baseILm5ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!146 = distinct !{!146, !304}
!147 = distinct !{!147, !304}
!148 = distinct !{!148, !304}
!149 = distinct !{!149, !304}
!150 = distinct !{!150, !304}
!151 = distinct !{!151, !304}
!152 = distinct !{!152, !304}
!153 = distinct !{!153, !304}
!154 = distinct !{!154, !304}
!155 = distinct !{!155, !304}
!156 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv7Scalar_IdEES5_EENS1_9NormTypesENS1_5Size_IiEEN4perf7MatTypeESt6vectorINS1_11GCompileArgESaISE_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!157 = distinct !{!157, !304}
!158 = distinct !{!158, !304}
!159 = distinct !{!159, !304}
!160 = distinct !{!160, !304}
!161 = distinct !{!161, !304}
!162 = distinct !{!162, !304}
!163 = distinct !{!163, !304}
!164 = distinct !{!164, !304}
!165 = distinct !{!165, !304}
!166 = distinct !{!166, !304}
!167 = distinct !{!167, !304}
!168 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EENS1_5Size_IiEEN4perf7MatTypeENS1_5Rect_IiEESt6vectorINS1_11GCompileArgESaISE_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!169 = distinct !{!169, !304}
!170 = distinct !{!170, !304}
!171 = distinct !{!171, !304}
!172 = distinct !{!172, !304}
!173 = distinct !{!173, !304}
!174 = distinct !{!174, !304}
!175 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EEN4perf7MatTypeES8_NS1_5Size_IiEESt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm4ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!176 = distinct !{!176, !304}
!177 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJSt8functionIFbRKN2cv3MatES4_EEN4perf7MatTypeEiNS1_5Size_IiEEddSt6vectorINS1_11GCompileArgESaISC_EEEED2Ev, ptr @_ZNSt10_Head_baseILm6ESt6vectorIN2cv11GCompileArgESaIS2_EELb0EED2Ev, ptr @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN2cv11GCompileArgEEvT_S3_, null, null, null, null, null, null}
!178 = distinct !{!178, !304}
!179 = distinct !{null, null, null, null, null, null, null}
!180 = distinct !{null, null, null, null, null, null, null}
!181 = distinct !{!181, !304}
!182 = distinct !{null}
!183 = distinct !{null}
!184 = distinct !{null}
!185 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJiiN2cv11KmeansFlagsESt6vectorINS3_11GCompileArgESaIS6_EEEEED2Ev, null, null}
!186 = distinct !{null, null, null}
end_hunk_4
