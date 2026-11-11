Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_slice?download=true
inline.NumInlined: 1305
inline.NumDeleted: 591
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11opencv_test39Layer_Slice_Slice_Contiguous_Axis0_Test5SetUpEv:bb.a
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

declare void @_ZN4perf8TestBase5SetUpEv(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test39Layer_Slice_Slice_Contiguous_Axis0_Test12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(257) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.8", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #27 ; 5 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !64
  store i32 64, ptr %i.a, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 128, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 128, ptr %.sroa.6.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !65
  invoke void @_ZN11opencv_test11Layer_Slice10test_sliceERKSt6vectorIiSaIiEEiiii(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0, i32 noundef 10, i32 noundef 54, i32 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.i) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i5, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.o) #28
  br label %.body

.body:                                            ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11opencv_test11Layer_Slice10test_sliceERKSt6vectorIiSaIiEEiiii(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %10 = alloca %"class.cv::dnn::dnn5_v20260605::Net", align 8 ; 14 uses
  %11 = alloca %"class.cv::dnn::dnn5_v20260605::LayerParams", align 8 ; 24 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %19 = alloca %"class.std::vector.41", align 8   ; 13 uses
  %20 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv3dnn14dnn5_v202606057BackendENS4_6TargetEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !179
  %i.h = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv3dnn14dnn5_v202606057BackendENS4_6TargetEEEE8GetParamEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.i = load i32, ptr %i.h, align 4, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN2cv3MatC1ERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 50397184, ptr %7, align 8, !tbaa !182
  store ptr %6, ptr %i.j, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !183
  store i64 4294967297, ptr %i.l, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833530, ptr %9, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.c, ptr %i.o, align 8, !tbaa !183
  store i64 4294967297, ptr %i.n, align 8, !tbaa !66
  invoke void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN2cv3dnn14dnn5_v202606053NetC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.c unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr %i.v, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !27
  store i8 0, ptr %i.v, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 4 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i64 0, ptr %i.z, align 8, !tbaa !27
  store i8 0, ptr %i.y, align 8, !tbaa !26
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.40, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !27
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull @.str.41, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit68 unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ad, ptr %12, align 8, !tbaa !21
  store i32 1936291937, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.af, align 4, !tbaa !26
  %i.ag = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.w       ; 0 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit68
  %i.ah = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ad
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !63    ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp ugt i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.e, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #30
          to label %.noexc69 unwind label %bb.x

.noexc69:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i, label %.noexc73, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #27
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit unwind label %bb.x ; 5 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.f
  %i.at = add i64 %i.ao, -4
  %i.au = sub i64 %i.at, %i.ap
  %i.av = and i64 %i.au, -4
  %i.aw = add i64 %i.av, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.as, i8 0, i64 %i.aw, i1 false), !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !65 ; 2 uses
  %.pre234 = load ptr, ptr %1, align 8, !tbaa !63 ; 4 uses
  %.pre237 = ptrtoint ptr %.pre to i64
  %.pre238 = ptrtoint ptr %.pre234 to i64
  %.pre240 = sub i64 %.pre237, %.pre238           ; 3 uses
  %i.ay = icmp eq ptr %.pre, %.pre234
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  br i1 %i.ay, label %.noexc73, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ba = icmp ugt i64 %.pre240, 9223372036854775804
  br i1 %i.ba, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !185

.noexc.i.i:                                       ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc72 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit190.thread

.noexc72:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre240) #27
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit190.thread

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre235 = load ptr, ptr %1, align 8, !tbaa !186
  %.pre236 = load ptr, ptr %i.al, align 8, !tbaa !186
  br label %.noexc73

.noexc73:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %.sroa.0214.0312 = phi ptr [ %i.as, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge ], [ %i.as, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %.sroa.13220.0310 = phi i64 [ %i.az, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge ], [ %i.az, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.pre-phi241308 = phi i64 [ %.pre240, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.pre-phi243.in = phi ptr [ %.pre236, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge ], [ %.pre234, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.an, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.bc = phi ptr [ %.pre235, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge ], [ %.pre234, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.an, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %i.bd = phi ptr [ %i.bb, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc73_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.pre-phi243 = ptrtoint ptr %.pre-phi243.in to i64 ; 2 uses
  %.pre-phi245 = ptrtoint ptr %i.bc to i64        ; 2 uses
  %i.be = sub i64 %.pre-phi243, %.pre-phi245      ; 10 uses
  %i.bf = icmp sgt i64 %i.be, 4
  br i1 %i.bf, label %bb.h, label %bb.i, !prof !187

bb.h:                                             ; preds = %.noexc73
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bd, ptr align 4 %i.bc, i64 %i.be, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %.noexc73
  %i.bg = icmp eq i64 %i.be, 4
  br i1 %i.bg, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.thread, label %bb.j

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.thread: ; preds = %bb.i
  %i.bh = load i32, ptr %i.bc, align 4, !tbaa !66
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.a

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = icmp ugt i64 %i.be, 9223372036854775804
  br i1 %i.bi, label %bb.k, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #30
          to label %.noexc81 unwind label %bb.y

.noexc81:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74: ; preds = %bb.j
  %.not.i.i.i.i75 = icmp ne ptr %.pre-phi243.in, %i.bc
  call void @llvm.assume(i1 %.not.i.i.i.i75)
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.a

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.a: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.thread
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc82 unwind label %bb.y   ; 10 uses

.noexc82:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i74.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be
  %i.bl = add i64 %.pre-phi243, -4
  %i.bm = sub i64 %i.bl, %.pre-phi245             ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc82
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2
  %i.bq = getelementptr i8, ptr %i.bj, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !66
  store <4 x i32> splat (i32 1), ptr %i.bs, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit83, label %.lr.ph.i.i.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i.i.i76.preheader:             ; preds = %.noexc82, %middle.block
  %.06.i.i.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bj, %.noexc82 ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i.i.i76:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i.i.i77 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 1, ptr %.06.i.i.i.i.i.i.i.i.i77, align 4, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i78 = icmp eq ptr %i.bu, %i.bk
  br i1 %.not.i.i.i.i.i.i.i.i.i78, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit83, label %.lr.ph.i.i.i.i.i.i.i.i.i76, !llvm.loop !165

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit83:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i76, %middle.block
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !66
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.0312, i64 %i.bw
  store i32 %3, ptr %i.bx, align 4, !tbaa !66
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bw
  store i32 %4, ptr %i.by, align 4, !tbaa !66
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bw
  store i32 %5, ptr %i.bz, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ca, ptr %13, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ca, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 5, ptr %i.cb, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 21
  store i8 0, ptr %i.cc, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.cd = ptrtoint ptr %.sroa.0214.0312 to i64
  %i.ce = sub i64 %.sroa.13220.0310, %i.cd        ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 2                 ; 3 uses
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ch = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc89 unwind label %bb.z   ; 6 uses

.noexc89:                                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit83
  %sext = shl i64 %i.ce, 30
  %i.ci = ashr i64 %sext, 32                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !82, !noalias !188
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.not.i.i.i = icmp ugt i32 %i.cg, 1
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !83, !noalias !188
  br i1 %.not.i.i.i, label %bb.l, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.l:                                             ; preds = %.noexc89
  %i.cl = icmp slt i32 %i.cg, 0
  %i.cm = shl nuw nsw i64 %i.ci, 3
  %i.cn = select i1 %i.cl, i64 -1, i64 %i.cm
  %i.co = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #27
          to label %.noexc.i88 unwind label %bb.m, !noalias !188 ; 2 uses

.noexc.i88:                                       ; preds = %bb.l
  store ptr %i.co, ptr %i.ch, align 8, !tbaa !82, !noalias !188
  br label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc.i88, %.noexc89
  %i.cp = phi ptr [ %i.co, %.noexc.i88 ], [ %i.cj, %.noexc89 ] ; 2 uses
  store i32 0, ptr %14, align 8, !tbaa !86, !alias.scope !188
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !26, !alias.scope !188
  %i.cr = icmp sgt i32 %i.cg, 0
  br i1 %i.cr, label %.lr.ph.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit

.lr.ph.i:                                         ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %wide.trip.count.i = and i64 %i.cf, 2147483647  ; 3 uses
  %min.iters.check321 = icmp samesign ult i64 %wide.trip.count.i, 4
  br i1 %min.iters.check321, label %scalar.ph320.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph.i
  %n.vec323 = and i64 %i.cf, 2147483644           ; 4 uses
  %i.cs = shl nuw nsw i64 %n.vec323, 2
  %i.ct = getelementptr i8, ptr %.sroa.0214.0312, i64 %i.cs
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body324 ] ; 3 uses
  %i.cu = shl i64 %index325, 2
  %next.gep326 = getelementptr i8, ptr %.sroa.0214.0312, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep326, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep326, align 4, !tbaa !66, !noalias !188
  %wide.load327 = load <2 x i32>, ptr %i.cv, align 4, !tbaa !66, !noalias !188
  %i.cw = sext <2 x i32> %wide.load to <2 x i64>
  %i.cx = sext <2 x i32> %wide.load327 to <2 x i64>
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index325 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x i64> %i.cw, ptr %i.cy, align 8, !tbaa !23, !noalias !188
  store <2 x i64> %i.cx, ptr %i.cz, align 8, !tbaa !23, !noalias !188
  %index.next328 = add nuw i64 %index325, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.da, label %middle.block329, label %vector.body324, !llvm.loop !168

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %wide.trip.count.i, %n.vec323
  br i1 %cmp.n330, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph320.preheader

scalar.ph320.preheader:                           ; preds = %.lr.ph.i, %middle.block329
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec323, %middle.block329 ]
  %.0910.i.ph = phi ptr [ %.sroa.0214.0312, %.lr.ph.i ], [ %i.ct, %middle.block329 ]
  br label %scalar.ph320

bb.m:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 24) #28, !noalias !188
  br label %.body

scalar.ph320:                                     ; preds = %scalar.ph320.preheader, %scalar.ph320
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph320 ], [ %indvars.iv.i.ph, %scalar.ph320.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.df, %scalar.ph320 ], [ %.0910.i.ph, %scalar.ph320.preheader ] ; 2 uses
  %i.dc = load i32, ptr %.0910.i, align 4, !tbaa !66, !noalias !188
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !23, !noalias !188
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph320, !llvm.loop !169

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph320, %middle.block329, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.dg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.n unwind label %bb.aa      ; 0 uses

bb.n:                                             ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.dh = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ca
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.n
  %i.dj = load i64, ptr %i.ca, align 8, !tbaa !26
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.dl, ptr %15, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dl, ptr noundef nonnull align 1 dereferenceable(3) @.str.44, i64 3, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.dm, align 8, !tbaa !27
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 19
  store i8 0, ptr %i.dn, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.do = lshr exact i64 %i.be, 2                 ; 5 uses
  %i.dp = trunc i64 %i.do to i32                  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.dq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc106 unwind label %bb.ab ; 6 uses

.noexc106:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %sext229 = shl i64 %i.be, 30
  %i.dr = ashr i64 %sext229, 32                   ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !82, !noalias !189
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.not.i.i.i97 = icmp ugt i32 %i.dp, 1           ; 2 uses
  store i64 %i.dr, ptr %i.dt, align 8, !tbaa !83, !noalias !189
  br i1 %.not.i.i.i97, label %bb.o, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i98

bb.o:                                             ; preds = %.noexc106
  %i.du = icmp slt i32 %i.dp, 0
end_hunk_0
