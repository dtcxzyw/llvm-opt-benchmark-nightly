Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/large_kinfu?download=true
inline.NumInlined: 2536
inline.NumDeleted: 1004
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv13OdometryFrameD2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2cv13OdometryFrame4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN2cv13OdometryFrame4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv13OdometryFrame4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !144
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

declare void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv6detail13SubmapManagerINS_3MatEE18estimateConstraintEiiRiRNS_7Affine3IfEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.103", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::tuple", align 8        ; 4 uses
  %8 = alloca %"class.std::tuple.103", align 1    ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %12 = alloca %"struct.cv::Ptr.66", align 8      ; 9 uses
  %13 = alloca %"struct.cv::Ptr.66", align 8      ; 9 uses
  %14 = alloca %"class.cv::Affine3", align 4      ; 5 uses
  %15 = alloca %"class.cv::Affine3", align 4      ; 11 uses
  %16 = alloca %"class.cv::Vec.94", align 16      ; 13 uses
  %17 = alloca %"class.cv::Affine3", align 4      ; 8 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %19 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %21 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %24 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %26 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Affine3", align 4      ; 8 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %35 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %37 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::DualQuat", align 16    ; 9 uses
  %40 = alloca %"class.cv::DualQuat", align 16    ; 6 uses
  %41 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %42 = alloca %"class.cv::DualQuat", align 16    ; 6 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %44 = alloca %"class.cv::Affine3", align 4      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZNK2cv6detail13SubmapManagerINS_3MatEE9getSubmapEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.66") align 8 %12, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNK2cv6detail13SubmapManagerINS_3MatEE9getSubmapEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.66") align 8 %13, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %2)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !195
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !112 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = icmp eq i32 %1, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !llvm.loop !9

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !191  ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !192
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %1, %i.x
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !112 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.loopexit.i.i
  unreachable

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.q, %bb.g ], [ %i.v, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.aa = load ptr, ptr %12, align 8, !tbaa !130
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(64) %i.ab, i64 64, i1 false), !tbaa.struct !126
  %i.ac = load ptr, ptr %13, align 8, !tbaa !130  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76 ; 2 uses
  %.sroa.0287.0.copyload.a = load float, ptr %i.ad, align 4 ; 2 uses
  %45 = load <3 x float>, ptr %i.ad, align 4      ; 5 uses
  %.sroa.7290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %.sroa.7290.0.copyload = load float, ptr %.sroa.7290.0..sroa_idx, align 4
  %.sroa.8291.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ac, i64 92 ; 2 uses
  %.sroa.8291.0.copyload.a = load float, ptr %.sroa.8291.0..sroa_idx.a, align 4 ; 2 uses
  %46 = load <3 x float>, ptr %.sroa.8291.0..sroa_idx.a, align 4 ; 5 uses
  %.sroa.11294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %.sroa.11294.0.copyload = load float, ptr %.sroa.11294.0..sroa_idx, align 4
  %.sroa.12295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 108 ; 2 uses
  %.sroa.15298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.sroa.15298.0.copyload = load float, ptr %.sroa.15298.0..sroa_idx, align 4
  %.sroa.12295.0.copyload = load float, ptr %.sroa.12295.0..sroa_idx, align 4 ; 2 uses
  %i.ae = load <3 x float>, ptr %.sroa.12295.0..sroa_idx, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !54, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !561
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !39, !noalias !561
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %14, ptr %i.ag, align 8, !tbaa !40, !noalias !561
  store i64 17179869188, ptr %i.af, align 8, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !561
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 -1040056315, ptr %10, align 8, !tbaa !39, !noalias !561
  store ptr %11, ptr %i.ah, align 8, !tbaa !40, !noalias !561
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17179869188, ptr %i.ai, align 8, !noalias !561
  %i.aj = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1)
          to label %.noexc124 unwind label %bb.x

.noexc124:                                        ; preds = %.loopexit
  %i.ak = fcmp une double %i.aj, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !561
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc124
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.i.sroa.6.0.copyload = load float, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !562
  %.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.0.i.sroa.7.0.copyload = load float, ptr %.sroa.0.i.sroa.7.0..sroa_idx, align 4, !noalias !562
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.0.i.sroa.10.0.copyload = load float, ptr %.sroa.0.i.sroa.10.0..sroa_idx, align 8, !noalias !562
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 28
  %.sroa.0.i.sroa.11.0.copyload = load float, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 4, !noalias !562
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.al = load <2 x float>, ptr %11, align 8, !noalias !562
  %i.am = load <2 x float>, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !562
  %i.an = load <2 x float>, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 8, !noalias !562
  %.sroa.0.i.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.0.i.sroa.14.0.copyload = load float, ptr %.sroa.0.i.sroa.14.0..sroa_idx, align 8, !noalias !562
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !562
  br label %bb.k

bb.k:                                             ; preds = %.noexc124, %bb.j
  %.sroa.0.i.sroa.7.0 = phi float [ %.sroa.0.i.sroa.7.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.10.0 = phi float [ %.sroa.0.i.sroa.10.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.11.0 = phi float [ %.sroa.0.i.sroa.11.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.14.0 = phi float [ %.sroa.0.i.sroa.14.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.6.0 = phi float [ %.sroa.0.i.sroa.6.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %i.ao = phi <2 x float> [ %i.an, %bb.j ], [ zeroinitializer, %.noexc124 ] ; 3 uses
  %i.ap = phi <2 x float> [ %i.am, %bb.j ], [ zeroinitializer, %.noexc124 ] ; 3 uses
  %i.aq = phi <2 x float> [ %i.al, %bb.j ], [ zeroinitializer, %.noexc124 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !561
  %i.ar = shufflevector <3 x float> %45, <3 x float> poison, <2 x i32> zeroinitializer
  %i.as = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %47 = shufflevector <3 x float> %45, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %i.ap, <2 x float> %i.as)
  %48 = shufflevector <3 x float> %45, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %i.ao, <2 x float> %i.at) ; 2 uses
  %50 = call float @llvm.fmuladd.f32(float %.sroa.0287.0.copyload.a, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %51 = extractelement <3 x float> %45, i64 1     ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %51, float %.sroa.0.i.sroa.10.0, float %50)
  %52 = extractelement <3 x float> %45, i64 2     ; 2 uses
  %i.av = call float @llvm.fmuladd.f32(float %52, float %.sroa.0.i.sroa.14.0, float %i.au) ; 2 uses
  %i.aw = call float @llvm.fmuladd.f32(float %.sroa.0287.0.copyload.a, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.ax = call float @llvm.fmuladd.f32(float %51, float %.sroa.0.i.sroa.11.0, float %i.aw)
  %53 = call noundef float @llvm.fmuladd.f32(float %52, float %.sroa.0.i.sroa.15.0, float %i.ax)
  %i.ay = shufflevector <3 x float> %46, <3 x float> poison, <2 x i32> zeroinitializer
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %54 = shufflevector <3 x float> %46, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %55 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %i.ap, <2 x float> %i.az)
  %56 = shufflevector <3 x float> %46, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %57 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %i.ao, <2 x float> %55) ; 2 uses
  %58 = call float @llvm.fmuladd.f32(float %.sroa.8291.0.copyload.a, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %59 = extractelement <3 x float> %46, i64 1     ; 2 uses
  %i.ba = call float @llvm.fmuladd.f32(float %59, float %.sroa.0.i.sroa.10.0, float %58)
  %60 = extractelement <3 x float> %46, i64 2     ; 2 uses
  %i.bb = call float @llvm.fmuladd.f32(float %60, float %.sroa.0.i.sroa.14.0, float %i.ba) ; 2 uses
  %i.bc = call float @llvm.fmuladd.f32(float %.sroa.8291.0.copyload.a, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bd = call float @llvm.fmuladd.f32(float %59, float %.sroa.0.i.sroa.11.0, float %i.bc)
  %i.be = call noundef float @llvm.fmuladd.f32(float %60, float %.sroa.0.i.sroa.15.0, float %i.bd)
  %i.bf = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %i.bh = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ap, <2 x float> %i.bg)
  %i.bj = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.ao, <2 x float> %i.bi) ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %.sroa.12295.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.bm = extractelement <3 x float> %i.ae, i64 1 ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float %.sroa.0.i.sroa.10.0, float %i.bl)
  %i.bo = extractelement <3 x float> %i.ae, i64 2 ; 2 uses
  %i.bp = call float @llvm.fmuladd.f32(float %i.bo, float %.sroa.0.i.sroa.14.0, float %i.bn) ; 2 uses
  %i.bq = fadd float %.sroa.7290.0.copyload, %53  ; 2 uses
  %i.br = fadd float %.sroa.11294.0.copyload, %i.be ; 2 uses
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.12295.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bt = call float @llvm.fmuladd.f32(float %i.bm, float %.sroa.0.i.sroa.11.0, float %i.bs)
  %i.bu = call noundef float @llvm.fmuladd.f32(float %i.bo, float %.sroa.0.i.sroa.15.0, float %i.bt)
  %i.bv = fadd float %.sroa.15298.0.copyload, %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 48 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !185
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !185
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !123 ; 14 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 40 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !194
  %.not.i = icmp eq ptr %i.cb, %i.cd
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %49, ptr %i.cb, align 4
  %.sroa.7246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.av, ptr %.sroa.7246.0..sroa_idx, align 4
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.bq, ptr %.sroa.8249.0..sroa_idx, align 4
  %.sroa.9252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x float> %57, ptr %.sroa.9252.0..sroa_idx, align 4
  %.sroa.11258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store float %i.bb, ptr %.sroa.11258.0..sroa_idx, align 4
  %.sroa.12261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store float %i.br, ptr %.sroa.12261.0..sroa_idx, align 4
  %.sroa.13264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store <2 x float> %i.bk, ptr %.sroa.13264.0..sroa_idx, align 4
  %.sroa.15270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store float %i.bp, ptr %.sroa.15270.0..sroa_idx, align 4
  %.sroa.16273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.ce = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bv, i64 0
  store <4 x float> %i.ce, ptr %.sroa.16273.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !26
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !123
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !124
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !124 ; 5 uses
  %i.ci = ptrtoint ptr %i.cb to i64
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775744
  br i1 %i.cl, label %bb.n, label %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
          to label %.noexc128 unwind label %bb.y

.noexc128:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cm = ashr exact i64 %i.ck, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = call i64 @llvm.umin.i64(i64 %i.cn, i64 144115188075855871)
  %i.cq = select i1 %i.co, i64 144115188075855871, i64 %i.cp ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.cr = shl nuw nsw i64 %i.cq, 6
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #25
          to label %.noexc129 unwind label %bb.y  ; 6 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck ; 10 uses
  store <2 x float> %49, ptr %i.ct, align 4
  %.sroa.7246.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.av, ptr %.sroa.7246.0..sroa_idx247, align 4
  %.sroa.8249.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store float %i.bq, ptr %.sroa.8249.0..sroa_idx250, align 4
  %.sroa.9252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x float> %57, ptr %.sroa.9252.0..sroa_idx253, align 4
  %.sroa.11258.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store float %i.bb, ptr %.sroa.11258.0..sroa_idx259, align 4
  %.sroa.12261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  store float %i.br, ptr %.sroa.12261.0..sroa_idx262, align 4
  %.sroa.13264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store <2 x float> %i.bk, ptr %.sroa.13264.0..sroa_idx265, align 4
  %.sroa.15270.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store float %i.bp, ptr %.sroa.15270.0..sroa_idx271, align 4
  %.sroa.16273.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.cu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bv, i64 0
  store <4 x float> %i.cu, ptr %.sroa.16273.0..sroa_idx274, align 4
  %.sroa.20.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.ct, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx285, align 4, !tbaa !26
  %.not10.i.i.i.i.i = icmp eq ptr %i.ch, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i126

.lr.ph.i.i.i.i.i126:                              ; preds = %.noexc129, %.lr.ph.i.i.i.i.i126
  %.012.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i126 ], [ %i.cs, %.noexc129 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i126 ], [ %i.ch, %.noexc129 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !126, !alias.scope !563
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq ptr %i.cv, %i.cb
  br i1 %.not.i.i.i.i.i127, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i126, !llvm.loop !10

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i126, %.noexc129
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cs, %.noexc129 ], [ %i.cw, %.lr.ph.i.i.i.i.i126 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.cy = load ptr, ptr %i.cc, align 8, !tbaa !194
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.da) #24
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.cs, ptr %i.bz, align 8, !tbaa !124
  store ptr %i.cx, ptr %i.ca, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.db, ptr %i.cc, align 8, !tbaa !194
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.dc = phi ptr [ %i.cs, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.pre, %bb.l ]
  %i.dd = phi ptr [ %i.cx, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.cg, %bb.l ]
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = ashr exact i64 %i.dg, 6
  %i.di = add nsw i64 %i.dh, 1                    ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 2305843009213693951
  br i1 %i.dj, label %bb.p, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc130 unwind label %bb.z

.noexc130:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  %.not.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dk = shl nuw nsw i64 %i.di, 2                ; 2 uses
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #25
          to label %.noexc131 unwind label %bb.z  ; 6 uses

.noexc131:                                        ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk ; 2 uses
  %i.dn = ashr exact i64 %i.dg, 4                 ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc131
  %n.vec = and i64 %i.dp, 9223372036854775800     ; 3 uses
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %i.dl, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !tbaa !54
  store <4 x float> splat (float 1.000000e+00), ptr %i.dt, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc131, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dl, %.noexc131 ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.dm
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !538

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.di
  %i.dx = ptrtoint ptr %i.dw to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0211.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dl, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 9 uses
  %.sroa.27.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dx, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dm, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dy = load ptr, ptr %12, align 8, !tbaa !130  ; 5 uses
  %i.dz = load ptr, ptr %13, align 8, !tbaa !130  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !181 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.eb, ptr %i.b, align 4, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !182 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 152 ; 3 uses
  %.not10.i.i.i.i.i132 = icmp eq ptr %i.ee, null
  br i1 %.not10.i.i.i.i.i132, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i133

.lr.ph.i.i.i.i.i133:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %.lr.ph.i.i.i.i.i133
  %.012.i.i.i.i.i134 = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i133 ], [ %i.ee, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i133 ], [ %i.ef, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i134, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !27
  %i.ei = icmp slt i32 %i.eh, %i.eb               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ei, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i134 ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i134, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i.i135 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i135, label %_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i, label %.lr.ph.i.i.i.i.i133, !llvm.loop !7

_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i133
  %i.ej = icmp eq ptr %.19.i.i.i.i.i, %i.ef
  br i1 %i.ej, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !27
  %i.em = icmp slt i32 %i.eb, %i.el
  br i1 %i.em, label %.critedge.i.i, label %.thread

.thread:                                          ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %i.en, i64 64, i1 false), !tbaa.struct !126
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !181 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ep, ptr %i.a, align 4, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  br label %.lr.ph.i.i.i.i.i138.preheader

.critedge.i.i:                                    ; preds = %bb.r, %_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.r ], [ %.19.i.i.i.i.i, %_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i ], [ %i.ef, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.b, ptr %7, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.es = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2cv6detail6SubmapINS2_3MatEE14PoseConstraintEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre407 = load ptr, ptr %12, align 8, !tbaa !130 ; 3 uses
  %.pre408 = load ptr, ptr %13, align 8, !tbaa !130
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre407, i64 160
  %.pre409 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !182 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %i.et, i64 64, i1 false), !tbaa.struct !126
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre408, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !181 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ev, ptr %i.a, align 4, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre407, i64 144 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre407, i64 152 ; 2 uses
  %.not10.i.i.i.i.i137 = icmp eq ptr %.pre409, null
  br i1 %.not10.i.i.i.i.i137, label %.critedge.i.i148, label %.lr.ph.i.i.i.i.i138.preheader

.lr.ph.i.i.i.i.i138.preheader:                    ; preds = %.thread, %bb.s
  %i.ey = phi ptr [ %i.er, %.thread ], [ %i.ex, %bb.s ] ; 2 uses
  %i.ez = phi ptr [ %i.eq, %.thread ], [ %i.ew, %bb.s ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv6detail13SubmapManagerINS_4UMatEE14MapToPoseGraphEv:bb.a
  call void @_ZNSt12__shared_ptrIN2cv6detail9PoseGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail13SubmapManagerINS_4UMatEE14PoseGraphToMapERKNS_3PtrINS0_9PoseGraphEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.cv::Affine3.127", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !239  ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.09.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.ai, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.h = load ptr, ptr %1, align 8, !tbaa !137    ; 2 uses
  %i.i = load ptr, ptr %.sroa.09.013, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !227
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.cv::Affine3.127") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.l)
  %i.p = load ptr, ptr %1, align 8, !tbaa !137    ; 2 uses
  %i.q = load ptr, ptr %.sroa.09.013, align 8, !tbaa !152
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !227
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.t)
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %.sroa.09.013, align 8, !tbaa !152 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load <4 x double>, ptr %2, align 8, !tbaa !161, !noalias !689
  %i.ab = fptrunc <4 x double> %i.aa to <4 x float>
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ac = load <4 x double>, ptr %i.e, align 8, !tbaa !161, !noalias !689
  %i.ad = fptrunc <4 x double> %i.ac to <4 x float>
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ae = load <4 x double>, ptr %i.f, align 8, !tbaa !161, !noalias !689
  %i.af = fptrunc <4 x double> %i.ae to <4 x float>
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %i.ag = load <4 x double>, ptr %i.g, align 8, !tbaa !161, !noalias !689
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  store <4 x float> %i.ab, ptr %i.z, align 4
  store <4 x float> %i.ad, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.af, ptr %.sroa.11.0..sroa_idx, align 4
  store <4 x float> %i.ah, ptr %.sroa.15.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv6detail13SubmapManagerINS_4UMatEE18estimateConstraintEiiRiRNS_7Affine3IfEE(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.103", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::tuple", align 8        ; 4 uses
  %8 = alloca %"class.std::tuple.103", align 1    ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %12 = alloca %"struct.cv::Ptr.152", align 8     ; 9 uses
  %13 = alloca %"struct.cv::Ptr.152", align 8     ; 9 uses
  %14 = alloca %"class.cv::Affine3", align 4      ; 5 uses
  %15 = alloca %"class.cv::Affine3", align 4      ; 11 uses
  %16 = alloca %"class.cv::Vec.94", align 16      ; 13 uses
  %17 = alloca %"class.cv::Affine3", align 4      ; 8 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %19 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %21 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %24 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %26 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %29 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %31 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Affine3", align 4      ; 8 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %35 = alloca %"class.cv::Vec", align 4          ; 5 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %37 = alloca %"class.cv::Vec", align 4          ; 7 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::DualQuat", align 16    ; 9 uses
  %40 = alloca %"class.cv::DualQuat", align 16    ; 6 uses
  %41 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %42 = alloca %"class.cv::DualQuat", align 16    ; 6 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %44 = alloca %"class.cv::Affine3", align 4      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZNK2cv6detail13SubmapManagerINS_4UMatEE9getSubmapEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.152") align 8 %12, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNK2cv6detail13SubmapManagerINS_4UMatEE9getSubmapEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.152") align 8 %13, ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %2)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !233
  %.not.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.e, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !112 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = icmp eq i32 %1, %i.g
  br i1 %i.h, label %.loopexit, label %bb.d, !llvm.loop !15

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !231  ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %1, %i.x
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !112 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.loopexit.i.i
  unreachable

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.q, %bb.g ], [ %i.v, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.aa = load ptr, ptr %12, align 8, !tbaa !152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(64) %i.ab, i64 64, i1 false), !tbaa.struct !126
  %i.ac = load ptr, ptr %13, align 8, !tbaa !152  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76 ; 2 uses
  %.sroa.0285.0.copyload.a = load float, ptr %i.ad, align 4 ; 2 uses
  %45 = load <3 x float>, ptr %i.ad, align 4      ; 5 uses
  %.sroa.7288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %.sroa.7288.0.copyload = load float, ptr %.sroa.7288.0..sroa_idx, align 4
  %.sroa.8289.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ac, i64 92 ; 2 uses
  %.sroa.8289.0.copyload.a = load float, ptr %.sroa.8289.0..sroa_idx.a, align 4 ; 2 uses
  %46 = load <3 x float>, ptr %.sroa.8289.0..sroa_idx.a, align 4 ; 5 uses
  %.sroa.11292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %.sroa.11292.0.copyload = load float, ptr %.sroa.11292.0..sroa_idx, align 4
  %.sroa.12293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 108 ; 2 uses
  %.sroa.15296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.sroa.15296.0.copyload = load float, ptr %.sroa.15296.0..sroa_idx, align 4
  %.sroa.12293.0.copyload = load float, ptr %.sroa.12293.0..sroa_idx, align 4 ; 2 uses
  %i.ae = load <3 x float>, ptr %.sroa.12293.0..sroa_idx, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !54, !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !721
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !39, !noalias !721
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %14, ptr %i.ag, align 8, !tbaa !40, !noalias !721
  store i64 17179869188, ptr %i.af, align 8, !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !721
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 -1040056315, ptr %10, align 8, !tbaa !39, !noalias !721
  store ptr %11, ptr %i.ah, align 8, !tbaa !40, !noalias !721
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17179869188, ptr %i.ai, align 8, !noalias !721
  %i.aj = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1)
          to label %.noexc122 unwind label %bb.x

.noexc122:                                        ; preds = %.loopexit
  %i.ak = fcmp une double %i.aj, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !721
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc122
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.i.sroa.6.0.copyload = load float, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !722
  %.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.0.i.sroa.7.0.copyload = load float, ptr %.sroa.0.i.sroa.7.0..sroa_idx, align 4, !noalias !722
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.0.i.sroa.10.0.copyload = load float, ptr %.sroa.0.i.sroa.10.0..sroa_idx, align 8, !noalias !722
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 28
  %.sroa.0.i.sroa.11.0.copyload = load float, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 4, !noalias !722
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.al = load <2 x float>, ptr %11, align 8, !noalias !722
  %i.am = load <2 x float>, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !722
  %i.an = load <2 x float>, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 8, !noalias !722
  %.sroa.0.i.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.0.i.sroa.14.0.copyload = load float, ptr %.sroa.0.i.sroa.14.0..sroa_idx, align 8, !noalias !722
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !722
  br label %bb.k

bb.k:                                             ; preds = %.noexc122, %bb.j
  %.sroa.0.i.sroa.7.0 = phi float [ %.sroa.0.i.sroa.7.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.10.0 = phi float [ %.sroa.0.i.sroa.10.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.11.0 = phi float [ %.sroa.0.i.sroa.11.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.14.0 = phi float [ %.sroa.0.i.sroa.14.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.6.0 = phi float [ %.sroa.0.i.sroa.6.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %i.ao = phi <2 x float> [ %i.an, %bb.j ], [ zeroinitializer, %.noexc122 ] ; 3 uses
  %i.ap = phi <2 x float> [ %i.am, %bb.j ], [ zeroinitializer, %.noexc122 ] ; 3 uses
  %i.aq = phi <2 x float> [ %i.al, %bb.j ], [ zeroinitializer, %.noexc122 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !721
  %i.ar = shufflevector <3 x float> %45, <3 x float> poison, <2 x i32> zeroinitializer
  %i.as = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %47 = shufflevector <3 x float> %45, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %i.ap, <2 x float> %i.as)
  %48 = shufflevector <3 x float> %45, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %i.ao, <2 x float> %i.at) ; 2 uses
  %50 = call float @llvm.fmuladd.f32(float %.sroa.0285.0.copyload.a, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %51 = extractelement <3 x float> %45, i64 1     ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %51, float %.sroa.0.i.sroa.10.0, float %50)
  %52 = extractelement <3 x float> %45, i64 2     ; 2 uses
  %i.av = call float @llvm.fmuladd.f32(float %52, float %.sroa.0.i.sroa.14.0, float %i.au) ; 2 uses
  %i.aw = call float @llvm.fmuladd.f32(float %.sroa.0285.0.copyload.a, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.ax = call float @llvm.fmuladd.f32(float %51, float %.sroa.0.i.sroa.11.0, float %i.aw)
  %53 = call noundef float @llvm.fmuladd.f32(float %52, float %.sroa.0.i.sroa.15.0, float %i.ax)
  %i.ay = shufflevector <3 x float> %46, <3 x float> poison, <2 x i32> zeroinitializer
  %i.az = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %54 = shufflevector <3 x float> %46, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %55 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %i.ap, <2 x float> %i.az)
  %56 = shufflevector <3 x float> %46, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %57 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %i.ao, <2 x float> %55) ; 2 uses
  %58 = call float @llvm.fmuladd.f32(float %.sroa.8289.0.copyload.a, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %59 = extractelement <3 x float> %46, i64 1     ; 2 uses
  %i.ba = call float @llvm.fmuladd.f32(float %59, float %.sroa.0.i.sroa.10.0, float %58)
  %60 = extractelement <3 x float> %46, i64 2     ; 2 uses
  %i.bb = call float @llvm.fmuladd.f32(float %60, float %.sroa.0.i.sroa.14.0, float %i.ba) ; 2 uses
  %i.bc = call float @llvm.fmuladd.f32(float %.sroa.8289.0.copyload.a, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bd = call float @llvm.fmuladd.f32(float %59, float %.sroa.0.i.sroa.11.0, float %i.bc)
  %i.be = call noundef float @llvm.fmuladd.f32(float %60, float %.sroa.0.i.sroa.15.0, float %i.bd)
  %i.bf = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.aq, <2 x float> zeroinitializer)
  %i.bh = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ap, <2 x float> %i.bg)
  %i.bj = shufflevector <3 x float> %i.ae, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.ao, <2 x float> %i.bi) ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %.sroa.12293.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.bm = extractelement <3 x float> %i.ae, i64 1 ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float %.sroa.0.i.sroa.10.0, float %i.bl)
  %i.bo = extractelement <3 x float> %i.ae, i64 2 ; 2 uses
  %i.bp = call float @llvm.fmuladd.f32(float %i.bo, float %.sroa.0.i.sroa.14.0, float %i.bn) ; 2 uses
  %i.bq = fadd float %.sroa.7288.0.copyload, %53  ; 2 uses
  %i.br = fadd float %.sroa.11292.0.copyload, %i.be ; 2 uses
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.12293.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bt = call float @llvm.fmuladd.f32(float %i.bm, float %.sroa.0.i.sroa.11.0, float %i.bs)
  %i.bu = call noundef float @llvm.fmuladd.f32(float %i.bo, float %.sroa.0.i.sroa.15.0, float %i.bt)
  %i.bv = fadd float %.sroa.15296.0.copyload, %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 48 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !228
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !228
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32 ; 4 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !123 ; 14 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 40 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !194
  %.not.i = icmp eq ptr %i.cb, %i.cd
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %49, ptr %i.cb, align 4
  %.sroa.7244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.av, ptr %.sroa.7244.0..sroa_idx, align 4
  %.sroa.8247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float %i.bq, ptr %.sroa.8247.0..sroa_idx, align 4
  %.sroa.9250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x float> %57, ptr %.sroa.9250.0..sroa_idx, align 4
  %.sroa.11256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store float %i.bb, ptr %.sroa.11256.0..sroa_idx, align 4
  %.sroa.12259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store float %i.br, ptr %.sroa.12259.0..sroa_idx, align 4
  %.sroa.13262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store <2 x float> %i.bk, ptr %.sroa.13262.0..sroa_idx, align 4
  %.sroa.15268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store float %i.bp, ptr %.sroa.15268.0..sroa_idx, align 4
  %.sroa.16271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.ce = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bv, i64 0
  store <4 x float> %i.ce, ptr %.sroa.16271.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !26
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !123
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !123
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !124
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !124 ; 5 uses
  %i.ci = ptrtoint ptr %i.cb to i64
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775744
  br i1 %i.cl, label %bb.n, label %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
          to label %.noexc126 unwind label %bb.y

.noexc126:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cm = ashr exact i64 %i.ck, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = call i64 @llvm.umin.i64(i64 %i.cn, i64 144115188075855871)
  %i.cq = select i1 %i.co, i64 144115188075855871, i64 %i.cp ; 3 uses
  %.not.i.i.i123 = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i123)
  %i.cr = shl nuw nsw i64 %i.cq, 6
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #25
          to label %.noexc127 unwind label %bb.y  ; 6 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck ; 10 uses
  store <2 x float> %49, ptr %i.ct, align 4
  %.sroa.7244.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.av, ptr %.sroa.7244.0..sroa_idx245, align 4
  %.sroa.8247.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store float %i.bq, ptr %.sroa.8247.0..sroa_idx248, align 4
  %.sroa.9250.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x float> %57, ptr %.sroa.9250.0..sroa_idx251, align 4
  %.sroa.11256.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store float %i.bb, ptr %.sroa.11256.0..sroa_idx257, align 4
  %.sroa.12259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  store float %i.br, ptr %.sroa.12259.0..sroa_idx260, align 4
  %.sroa.13262.0..sroa_idx263 = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store <2 x float> %i.bk, ptr %.sroa.13262.0..sroa_idx263, align 4
  %.sroa.15268.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store float %i.bp, ptr %.sroa.15268.0..sroa_idx269, align 4
  %.sroa.16271.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.cu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bv, i64 0
  store <4 x float> %i.cu, ptr %.sroa.16271.0..sroa_idx272, align 4
  %.sroa.20.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.ct, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx283, align 4, !tbaa !26
  %.not10.i.i.i.i.i = icmp eq ptr %i.ch, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %.noexc127, %.lr.ph.i.i.i.i.i124
  %.012.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i124 ], [ %i.cs, %.noexc127 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i124 ], [ %i.ch, %.noexc127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !126, !alias.scope !723
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.cv, %i.cb
  br i1 %.not.i.i.i.i.i125, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i124, !llvm.loop !10

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i124, %.noexc127
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cs, %.noexc127 ], [ %i.cw, %.lr.ph.i.i.i.i.i124 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.cy = load ptr, ptr %i.cc, align 8, !tbaa !194
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.da) #24
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.cs, ptr %i.bz, align 8, !tbaa !124
  store ptr %i.cx, ptr %i.ca, align 8, !tbaa !123
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.db, ptr %i.cc, align 8, !tbaa !194
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.dc = phi ptr [ %i.cs, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.pre, %bb.l ]
  %i.dd = phi ptr [ %i.cx, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.cg, %bb.l ]
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 2 uses
  %i.dh = ashr exact i64 %i.dg, 6
  %i.di = add nsw i64 %i.dh, 1                    ; 4 uses
  %i.dj = icmp ugt i64 %i.di, 2305843009213693951
  br i1 %i.dj, label %bb.p, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc128 unwind label %bb.z

.noexc128:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  %.not.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dk = shl nuw nsw i64 %i.di, 2                ; 2 uses
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #25
          to label %.noexc129 unwind label %bb.z  ; 6 uses

.noexc129:                                        ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk ; 2 uses
  %i.dn = ashr exact i64 %i.dg, 4                 ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc129
  %n.vec = and i64 %i.dp, 9223372036854775800     ; 3 uses
  %i.dq = shl i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %i.dl, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dl, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !tbaa !54
  store <4 x float> splat (float 1.000000e+00), ptr %i.dt, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc129, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dl, %.noexc129 ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !54
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.dm
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !698

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.di
  %i.dx = ptrtoint ptr %i.dw to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0209.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dl, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 9 uses
  %.sroa.27.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dx, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dm, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dy = load ptr, ptr %12, align 8, !tbaa !152  ; 5 uses
  %i.dz = load ptr, ptr %13, align 8, !tbaa !152  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !227 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.eb, ptr %i.b, align 4, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !182 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 152 ; 3 uses
  %.not10.i.i.i.i.i130 = icmp eq ptr %i.ee, null
  br i1 %.not10.i.i.i.i.i130, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %.lr.ph.i.i.i.i.i131
  %.012.i.i.i.i.i132 = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i131 ], [ %i.ee, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i131 ], [ %i.ef, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 32
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !27
  %i.ei = icmp slt i32 %i.eh, %i.eb               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ei, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i132 ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i.i133 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i133, label %_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i, label %.lr.ph.i.i.i.i.i131, !llvm.loop !13

_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i131
  %i.ej = icmp eq ptr %.19.i.i.i.i.i, %i.ef
  br i1 %i.ej, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !27
  %i.em = icmp slt i32 %i.eb, %i.el
  br i1 %i.em, label %.critedge.i.i, label %.thread

.thread:                                          ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %i.en, i64 64, i1 false), !tbaa.struct !126
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !227 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ep, ptr %i.a, align 4, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  br label %.lr.ph.i.i.i.i.i136.preheader

.critedge.i.i:                                    ; preds = %bb.r, %_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.r ], [ %.19.i.i.i.i.i, %_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i ], [ %i.ef, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.b, ptr %7, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.es = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiN2cv6detail6SubmapINS2_4UMatEE14PoseConstraintEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre405 = load ptr, ptr %12, align 8, !tbaa !152 ; 3 uses
  %.pre406 = load ptr, ptr %13, align 8, !tbaa !152
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre405, i64 160
  %.pre407 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !182 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %i.et, i64 64, i1 false), !tbaa.struct !126
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre406, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !227 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ev, ptr %i.a, align 4, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre405, i64 144 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre405, i64 152 ; 2 uses
  %.not10.i.i.i.i.i135 = icmp eq ptr %.pre407, null
  br i1 %.not10.i.i.i.i.i135, label %.critedge.i.i146, label %.lr.ph.i.i.i.i.i136.preheader

.lr.ph.i.i.i.i.i136.preheader:                    ; preds = %.thread, %bb.s
  %i.ey = phi ptr [ %i.er, %.thread ], [ %i.ex, %bb.s ] ; 2 uses
  %i.ez = phi ptr [ %i.eq, %.thread ], [ %i.ew, %bb.s ] ; 2 uses
end_hunk_1
