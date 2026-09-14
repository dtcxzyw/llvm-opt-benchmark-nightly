Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_utils?download=true
inline.NumInlined: 1244
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11opencv_test37Utils_blobFromImages_HWC_TO_NCHW_Test13AddToRegistryEv:.noexc.i
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !24
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i32 0

bb.g:                                             ; preds = %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %_ZN7testing8internal12CodeLocationD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !24
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #28
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8

_ZN7testing8internal12CodeLocationD2Ev.exit8:     ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6 ], [ %i.ah, %bb.h ]
  %i.am = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !24
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test37Utils_blobFromImages_HWC_TO_NCHW_Test8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(257) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  store i8 1, ptr @_ZN11opencv_test30required_opencv_test_namespaceE, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN11opencv_test37Utils_blobFromImages_HWC_TO_NCHW_Test8TestBodyEvE24__cv_trace_location_fn37)
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
  %i.c = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6cvtest7details21SkipTestExceptionBaseE) #26
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = extractvalue { ptr, i32 } %i.a, 0
  %i.f = call ptr @__cxa_begin_catch(ptr %i.e) #26 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(148) %i.f) #26
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.j) ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.b
  invoke void @_ZN6cvtest12testTearDownEv()
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !34
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %1)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.c
  %.merged = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.p, %bb.i ], [ %i.a, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test37Utils_blobFromImages_HWC_TO_NCHW_Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(257) initializes((256, 257)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !88
  invoke void @_ZN4perf8TestBase5SetUpEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTIN6cvtest7details21SkipTestExceptionBaseE ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 1
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6cvtest7details21SkipTestExceptionBaseE) #26
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i32 } %i.b, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(148) %i.g) #26
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.k) ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test37Utils_blobFromImages_HWC_TO_NCHW_Test12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(257) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.8", align 8     ; 16 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::vector.28", align 8    ; 13 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7testing18WithParamInterfaceISt6vectorIiSaIiEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %.pre57 = load ptr, ptr %i.e, align 8, !tbaa !63
  %.pre58 = ptrtoint ptr %.pre57 to i64
  %.pre59 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi60 = phi i64 [ %.pre59, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.i, %bb.a ]
  %.pre-phi = phi i64 [ %.pre58, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.h, %bb.a ]
  %i.m = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.l, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  %i.o = sub i64 %.pre-phi, %.pre-phi60           ; 6 uses
  %i.p = icmp sgt i64 %i.o, 4
  br i1 %i.p, label %11, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.a, !prof !65

11:                                               ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.a:              ; preds = %bb.c
  %12 = icmp eq i64 %i.o, 4
  br i1 %12, label %.noexc.i.a, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

.noexc.i.a:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.a
  %13 = load i32, ptr %i.m, align 4, !tbaa !66
  store i32 %13, ptr %i.n, align 4, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %11, %.noexc.i.a
  %i.q = load i32, ptr %i.n, align 4, !tbaa !66   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %gepdiff79 = add nsw i64 %i.o, -4               ; 4 uses
  %.not.i.i.i = icmp ne i64 %i.o, 4
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff79) #27
          to label %.noexc5.i unwind label %bb.g  ; 6 uses

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  unreachable

.noexc5.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  store ptr %i.s, ptr %1, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %gepdiff79 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !64
  %14 = icmp samesign ugt i64 %i.o, 8
  br i1 %14, label %bb.d, label %bb.e, !prof !89

bb.d:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.r, i64 %gepdiff79, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %.noexc5.i
  %i.v = icmp eq i64 %gepdiff79, 4
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.r, align 4, !tbaa !66
  store i32 %i.w, ptr %i.s, align 4, !tbaa !66
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i6.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit47

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.t, ptr %i.ae, align 8, !tbaa !60
  %i.af = load i32, ptr %i.s, align 4, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !66
  %i.ai = mul nsw i32 %i.ah, %i.af
  %i.aj = icmp sgt i32 %i.ai, 4194303
  br i1 %i.aj, label %._crit_edge.i.i, label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ak, ptr noundef nonnull align 1 dereferenceable(7) @.str.28, i64 7, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %i.al, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.am, align 1, !tbaa !24
  invoke void @_ZN6cvtest12applyTestTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.an = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ak
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ak
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.k
  %i.au = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ah

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aw = icmp sgt i32 %i.q, 0
  br i1 %i.aw, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.m

.preheader:                                       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.w

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit
  %.056 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN2cv3MatC1ERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 69)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 0, ptr %i.ay, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !69
  store ptr %4, ptr %i.ax, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double -1.000000e+01, ptr %i.a, align 8, !tbaa !71
  store i32 -1056833530, ptr %6, align 8, !tbaa !69
  store ptr %i.a, ptr %i.ba, align 8, !tbaa !70
  store i64 4294967297, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store double 1.000000e+01, ptr %i.b, align 8, !tbaa !71
  store i32 -1056833530, ptr %7, align 8, !tbaa !69
  store ptr %i.b, ptr %i.bc, align 8, !tbaa !70
  store i64 4294967297, ptr %i.bb, align 8
  invoke void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !92 ; 3 uses
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bi, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %.noexc34 unwind label %bb.t

.noexc34:                                         ; preds = %bb.p
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !92
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 208
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit

bb.q:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit unwind label %bb.t

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc34, %bb.q
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bm = add nuw nsw i32 %.056, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, %i.q
  br i1 %exitcond.not, label %.preheader, label %bb.m, !llvm.loop !174

bb.r:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.bp, %bb.t ], [ %i.bo, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.u ], [ %i.bn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ag

bb.w:                                             ; preds = %.preheader, %bb.ab
  %i.bq = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %i.bq, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.br = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.br, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %i.bf, align 8, !tbaa !72
  store i32 0, ptr %i.bg, align 4, !tbaa !73
  store i32 17104896, ptr %9, align 8, !tbaa !69
end_hunk_0
