Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/generalized_hough?download=true
inline.NumInlined: 1470
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl5getXiEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.b = load double, ptr %i.a, align 8, !tbaa !73
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl9setLevelsEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1376, 1380)) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1376
  store i32 %1, ptr %i.a, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl9getLevelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl15setAngleEpsilonEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1384, 1392)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store double %1, ptr %i.a, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl15getAngleEpsilonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load double, ptr %i.a, align 8, !tbaa !124
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl11setMinAngleEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1392, 1400)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store double %1, ptr %i.a, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl11getMinAngleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.b = load double, ptr %i.a, align 8, !tbaa !125
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl11setMaxAngleEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1400, 1408)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %1, ptr %i.a, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl11getMaxAngleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load double, ptr %i.a, align 8, !tbaa !126
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12setAngleStepEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1408, 1416)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store double %1, ptr %i.a, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl12getAngleStepEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.b = load double, ptr %i.a, align 8, !tbaa !127
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl14setAngleThreshEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1416, 1420)) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store i32 %1, ptr %i.a, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl14getAngleThreshEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl11setMinScaleEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1424, 1432)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store double %1, ptr %i.a, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl11getMinScaleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.b = load double, ptr %i.a, align 8, !tbaa !128
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl11setMaxScaleEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1432, 1440)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store double %1, ptr %i.a, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl11getMaxScaleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.b = load double, ptr %i.a, align 8, !tbaa !129
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12setScaleStepEd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1440, 1448)) %0, double noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store double %1, ptr %i.a, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl12getScaleStepEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.b = load double, ptr %i.a, align 8, !tbaa !76
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl14setScaleThreshEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1448, 1452)) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store i32 %1, ptr %i.a, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl14getScaleThreshEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12setPosThreshEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(1552) initializes((1452, 1456)) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1452
  store i32 %1, ptr %i.a, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK12_GLOBAL__N_124GeneralizedHoughGuilImpl12getPosThreshEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1452
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12processTemplEv(ptr noundef nonnull align 8 dereferenceable(1552) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load <2 x i32>, ptr %i.e, align 8, !tbaa !104
  %i.g = sitofp <2 x i32> %i.f to <2 x double>    ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = extractelement <2 x double> %i.g, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE(ptr noundef nonnull align 8 dereferenceable(1552) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, double %i.h, double %i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12processImageEv(ptr noundef nonnull align 8 dereferenceable(1552) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %sincos.sin.i = alloca double, align 8          ; 4 uses
  %sincos.cos.i = alloca double, align 8          ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %12 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 7 uses
  tail call fastcc void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE(ptr noundef nonnull align 8 dereferenceable(1552) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, double 0.000000e+00, double 0.000000e+00)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl15calcOrientationEv, ptr noundef nonnull @.str.1, i32 noundef 768) #33
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %25, align 8, !tbaa !95    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !89
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  %.val71.i = load ptr, ptr %i.o, align 8, !tbaa !121 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 3 uses
  %.val72.i = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.q = ptrtoint ptr %.val72.i to i64
  %i.r = ptrtoint ptr %.val71.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nuw i32 %i.f, 1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl15calcOrientationEv, ptr noundef nonnull @.str.1, i32 noundef 769) #33
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %27, align 8, !tbaa !95    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %bb.l
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !89
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i, %bb.k
  %.pn52.i = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i ], [ %i.y, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %.val69.i = load ptr, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 3 uses
  %.val70.i = load ptr, ptr %i.ae, align 8, !tbaa !122
  %i.af = ptrtoint ptr %.val70.i to i64
  %i.ag = ptrtoint ptr %.val69.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ah, %i.s
  br i1 %i.ai, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl15calcOrientationEv, ptr noundef nonnull @.str.1, i32 noundef 770) #33
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

bb.r:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %29, align 8, !tbaa !95   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %bb.r
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !89
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i, %bb.q
  %.pn54.i = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i ], [ %i.ak, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  br label %common.resume

bb.s:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !125 ; 3 uses
  %i.as = fcmp ult double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !126 ; 3 uses
  %i.av = fcmp uge double %i.ar, %i.au
  %i.aw = fcmp ugt double %i.au, 3.600000e+02
  %or.cond.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12processImageEv:bb.a
  %.sroa.414.0.copyload.i = load double, ptr %.sroa.414.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 56
  %.sroa.716.0.copyload.i = load double, ptr %.sroa.716.0..sroa_idx.i, align 8, !tbaa !45
  %i.kc = fadd double %i.gk, %.sroa.414.0.copyload.i
  br label %bb.ck

._crit_edge.i38:                                  ; preds = %bb.co
  %i.kd = add nuw i64 %.048126.i, 1               ; 2 uses
  %exitcond143.not.i = icmp eq i64 %i.kd, %i.jt
  br i1 %exitcond143.not.i, label %._crit_edge129.split.i, label %.lr.ph.i34, !llvm.loop !254

bb.ck:                                            ; preds = %bb.co, %.lr.ph.i34
  %.047125.i = phi i64 [ 0, %.lr.ph.i34 ], [ %i.lb, %bb.co ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [96 x i8], ptr %.val77.i32, i64 %.047125.i ; 2 uses
  %.sroa.4.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %.sroa.4.0.copyload.i36 = load double, ptr %.sroa.4.0..sroa_idx.i35, align 8, !tbaa !45
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %.sroa.59.0.copyload.i = load double, ptr %.sroa.59.0..sroa_idx.i, align 8, !tbaa !45
  %i.kf = fsub double %.sroa.4.0.copyload.i36, %i.kc ; 3 uses
  %i.kg = fcmp ogt double %i.kf, 3.600000e+02
  br i1 %i.kg, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.ck
  %.0.lcssa.i.i.i = phi double [ %i.kf, %bb.ck ], [ %i.ki, %.lr.ph.i.i.i ] ; 3 uses
  %i.kh = fcmp olt double %.0.lcssa.i.i.i, 0.000000e+00
  br i1 %i.kh, label %.lr.ph8.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ck, %.lr.ph.i.i.i
  %.06.i.i.i = phi double [ %i.ki, %.lr.ph.i.i.i ], [ %i.kf, %bb.ck ]
  %i.ki = fadd double %.06.i.i.i, -3.600000e+02   ; 3 uses
  %i.kj = fcmp ogt double %i.ki, 3.600000e+02
  br i1 %i.kj, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !4

.lr.ph8.i.i.i:                                    ; preds = %.preheader.i.i.i, %.lr.ph8.i.i.i
  %.17.i.i.i = phi double [ %i.kk, %.lr.ph8.i.i.i ], [ %.0.lcssa.i.i.i, %.preheader.i.i.i ]
  %i.kk = fadd double %.17.i.i.i, 3.600000e+02    ; 3 uses
  %i.kl = fcmp olt double %i.kk, 0.000000e+00
  br i1 %i.kl, label %.lr.ph8.i.i.i, label %.loopexit.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %.lr.ph8.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi double [ %.0.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.kk, %.lr.ph8.i.i.i ]
  %i.km = call double @llvm.fabs.f64(double %.1.lcssa.i.i.i)
  %i.kn = fcmp ugt double %i.km, %i.ka
  br i1 %i.kn, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i
  %i.ko = fdiv double %.sroa.59.0.copyload.i, %.sroa.716.0.copyload.i ; 3 uses
  %i.kp = load double, ptr %i.fo, align 8, !tbaa !128 ; 2 uses
  %i.kq = fcmp ult double %i.ko, %i.kp
  br i1 %i.kq, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kr = load double, ptr %i.fp, align 8, !tbaa !129
  %i.ks = fcmp ugt double %i.ko, %i.kr
  br i1 %i.ks, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kt = fsub double %i.ko, %i.kp
  %i.ku = fmul double %i.iy, %i.kt
  %i.kv = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.kw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.kv)
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0113.0187.i, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !104
  %i.la = add nsw i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !104
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %.loopexit.i
  %i.lb = add nuw i64 %.047125.i, 1               ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.lb, %i.jz
  br i1 %exitcond.not.i37, label %._crit_edge.i38, label %bb.ck, !llvm.loop !255

._crit_edge136.i:                                 ; preds = %_ZNSt6vectorISt4pairIdiESaIS1_EE5clearEv.exit.i42
  %.not.i.i.i.i43 = icmp eq ptr %.sroa.0113.0188.i, null
  br i1 %.not.i.i.i.i43, label %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl9calcScaleEd.exit, label %._crit_edge136.thread.i

._crit_edge136.thread.i:                          ; preds = %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45, %._crit_edge136.i
  %i.lc = ptrtoint ptr %.sroa.0113.0188.i to i64
  %i.ld = sub i64 %.sroa.12.0186.i, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0188.i, i64 noundef %i.ld) #30
  %.pre188 = load ptr, ptr %i.fu, align 8, !tbaa !267
  %.pre189 = load ptr, ptr %i.ft, align 8, !tbaa !119
  br label %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl9calcScaleEd.exit

bb.cp:                                            ; preds = %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45, %.lr.ph135.i
  %i.le = phi ptr [ %i.jm, %.lr.ph135.i ], [ %i.mm, %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45 ] ; 7 uses
  %indvars.iv146.i = phi i64 [ 0, %.lr.ph135.i ], [ %indvars.iv.next147.i, %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45 ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0113.0188.i, i64 %indvars.iv146.i
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !104 ; 3 uses
  %i.lh = load i32, ptr %i.fr, align 8, !tbaa !77
  %.not66.i = icmp slt i32 %i.lg, %i.lh
  br i1 %.not66.i, label %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.li = load double, ptr %i.fo, align 8, !tbaa !128
  %i.lj = trunc nuw nsw i64 %indvars.iv146.i to i32
  %i.lk = uitofp nneg i32 %i.lj to double
  %i.ll = load double, ptr %i.fq, align 8, !tbaa !76
  %i.lm = call double @llvm.fmuladd.f64(double %i.lk, double %i.ll, double %i.li) ; 2 uses
  %i.ln = load ptr, ptr %i.fv, align 8, !tbaa !120
  %.not.i.i101.i = icmp eq ptr %i.le, %i.ln
  br i1 %.not.i.i101.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store double %i.lm, ptr %i.le, align 8
  %.sroa.6.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i32 %i.lg, ptr %.sroa.6.0..sroa_idx.i44, align 8
  %i.lo = load ptr, ptr %i.fu, align 8, !tbaa !267
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 2 uses
  store ptr %i.lp, ptr %i.fu, align 8, !tbaa !267
  br label %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45

bb.cs:                                            ; preds = %bb.cq
  %i.lq = load ptr, ptr %i.ft, align 8, !tbaa !119 ; 5 uses
  %i.lr = ptrtoint ptr %i.le to i64
  %i.ls = ptrtoint ptr %i.lq to i64               ; 2 uses
  %i.lt = sub i64 %i.lr, %i.ls                    ; 3 uses
  %i.lu = icmp eq i64 %i.lt, 9223372036854775792
  br i1 %i.lu, label %bb.ct, label %_ZNKSt6vectorISt4pairIdiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i46

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
          to label %.noexc103.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp

.noexc103.i:                                      ; preds = %bb.ct
  unreachable

_ZNKSt6vectorISt4pairIdiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i46: ; preds = %bb.cs
  %i.lv = ashr exact i64 %i.lt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.lv, i64 1)
  %i.lw = add nsw i64 %.sroa.speculated.i.i.i.i.i47, %i.lv ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %i.lv
  %i.ly = call i64 @llvm.umin.i64(i64 %i.lw, i64 576460752303423487)
  %i.lz = select i1 %i.lx, i64 576460752303423487, i64 %i.ly ; 3 uses
  %.not.i.i.i.i102.i = icmp ne i64 %i.lz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i102.i)
  %i.ma = shl nuw nsw i64 %i.lz, 4
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ma) #29
          to label %.noexc104.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc104.i:                                      ; preds = %_ZNKSt6vectorISt4pairIdiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i46
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lt ; 2 uses
  store double %i.lm, ptr %i.mc, align 8
  %.sroa.6.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i32 %i.lg, ptr %.sroa.6.0..sroa_idx108.i, align 8
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.lq, %i.le
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorISt4pairIdiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.noexc104.i, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i.i.i50 ], [ %i.mb, %.noexc104.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i.i.i50 ], [ %i.lq, %.noexc104.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i51, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i52, i64 16, i1 false), !alias.scope !272
  %i.md = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.md, %i.le
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorISt4pairIdiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !251

_ZNSt6vectorISt4pairIdiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %.noexc104.i
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.mb, %.noexc104.i ], [ %i.me, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 16 ; 2 uses
  %.not.i23.i.i.i.i56 = icmp eq ptr %i.lq, null
  br i1 %.not.i23.i.i.i.i56, label %_ZNSt6vectorISt4pairIdiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i57, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorISt4pairIdiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i54
  %i.mg = load ptr, ptr %i.fv, align 8, !tbaa !120
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = sub i64 %i.mh, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.mi) #30
  br label %_ZNSt6vectorISt4pairIdiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i57

_ZNSt6vectorISt4pairIdiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i57: ; preds = %bb.cu, %_ZNSt6vectorISt4pairIdiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i54
  store ptr %i.mb, ptr %i.ft, align 8, !tbaa !119
  store ptr %i.mf, ptr %i.fu, align 8, !tbaa !267
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.mb, i64 %i.lz
  store ptr %i.mj, ptr %i.fv, align 8, !tbaa !120
  br label %_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45

.thread.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt4pairIdiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i46, %bb.ct
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  %i.mk = ptrtoint ptr %.sroa.0113.0188.i to i64
  %i.ml = sub i64 %.sroa.12.0186.i, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0113.0188.i, i64 noundef %i.ml) #30
  br label %common.resume

_ZNSt6vectorISt4pairIdiESaIS1_EE9push_backEOS1_.exit.i45: ; preds = %_ZNSt6vectorISt4pairIdiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i57, %bb.cr, %bb.cp
  %i.mm = phi ptr [ %i.lp, %bb.cr ], [ %i.mf, %_ZNSt6vectorISt4pairIdiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i57 ], [ %i.le, %bb.cp ]
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count149.i
  br i1 %exitcond150.not.i, label %._crit_edge136.thread.i, label %bb.cp, !llvm.loop !259

_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl9calcScaleEd.exit: ; preds = %._crit_edge136.i, %._crit_edge136.thread.i
  %i.mn = phi ptr [ %i.jk, %._crit_edge136.i ], [ %.pre189, %._crit_edge136.thread.i ] ; 2 uses
  %i.mo = phi ptr [ %i.jm, %._crit_edge136.i ], [ %.pre188, %._crit_edge136.thread.i ]
  %.not146 = icmp eq ptr %i.mo, %i.mn
  br i1 %.not146, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl9calcScaleEd.exit
  %i.mp = fmul double %i.gk, f0x400921FB54442D18
  %i.mq = fdiv double %i.mp, 1.800000e+02
  %i.mr = fptrunc double %i.gk to float           ; 2 uses
  br label %bb.cv

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit, %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl9calcScaleEd.exit
  %i.ms = add nuw i64 %.0143, 1                   ; 2 uses
  %i.mt = load ptr, ptr %i.cn, align 8, !tbaa !267
  %i.mu = load ptr, ptr %i.cl, align 8, !tbaa !119 ; 2 uses
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = ashr exact i64 %i.mx, 4
  %i.mz = icmp ult i64 %i.ms, %i.my
  br i1 %i.mz, label %bb.ax, label %._crit_edge145, !llvm.loop !260

bb.cv:                                            ; preds = %.lr.ph, %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit
  %i.na = phi ptr [ %i.mn, %.lr.ph ], [ %i.xl, %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit ]
  %.013142 = phi i64 [ 0, %.lr.ph ], [ %i.xj, %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %.013142 ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !270 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !271 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.nf = load i32, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi, ptr noundef nonnull @.str.1, i32 noundef 870) #33
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59

bb.da:                                            ; preds = %bb.cx
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = load ptr, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.da
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !89
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %bb.cz
  %.pn.i60 = phi { ptr, i32 } [ %i.nh, %bb.cz ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ %i.ni, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %common.resume

bb.db:                                            ; preds = %bb.cv
  %.val115.i = load ptr, ptr %i.o, align 8, !tbaa !121
  %.val116.i = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.no = ptrtoint ptr %.val116.i to i64
  %i.np = ptrtoint ptr %.val115.i to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 2 uses
  %i.nr = sdiv exact i64 %i.nq, 24
  %i.ns = add nuw nsw i32 %i.nf, 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = icmp eq i64 %i.nr, %i.nt
  br i1 %i.nu, label %bb.dh, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi, ptr noundef nonnull @.str.1, i32 noundef 871) #33
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.dc
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i

bb.dg:                                            ; preds = %bb.dd
  %i.nw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nx = load ptr, ptr %3, align 8, !tbaa !95    ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.nz = icmp eq ptr %i.nx, %i.ny
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i: ; preds = %bb.dg
  %i.oa = load i64, ptr %i.ny, align 8, !tbaa !89
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.ob) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.i: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i, %bb.df
  %.pn93.i = phi { ptr, i32 } [ %i.nv, %bb.df ], [ %i.nw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i ], [ %i.nw, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

bb.dh:                                            ; preds = %bb.db
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !121
  %.val114.i = load ptr, ptr %i.ae, align 8, !tbaa !122
  %i.oc = ptrtoint ptr %.val114.i to i64
  %i.od = ptrtoint ptr %.val113.i to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = icmp eq i64 %i.oe, %i.nq
  br i1 %i.of, label %bb.dn, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi, ptr noundef nonnull @.str.1, i32 noundef 872) #33
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  unreachable

bb.dl:                                            ; preds = %bb.di
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

bb.dm:                                            ; preds = %bb.dj
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oi = load ptr, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i: ; preds = %bb.dm
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !89
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.i: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i, %bb.dl
  %.pn95.i = phi { ptr, i32 } [ %i.og, %bb.dl ], [ %i.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.i ], [ %i.oh, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

bb.dn:                                            ; preds = %bb.dh
  %i.on = load double, ptr %i.fw, align 8, !tbaa !91 ; 2 uses
  %i.oo = fcmp ogt double %i.on, 0.000000e+00
  br i1 %i.oo, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi, ptr noundef nonnull @.str.1, i32 noundef 873) #33
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  unreachable

bb.dr:                                            ; preds = %bb.do
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i

bb.ds:                                            ; preds = %bb.dp
  %i.oq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.or = load ptr, ptr %7, align 8, !tbaa !95    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ot = icmp eq ptr %i.or, %i.os
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i: ; preds = %bb.ds
  %i.ou = load i64, ptr %i.os, align 8, !tbaa !89
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef %i.ov) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i, %bb.dr
  %.pn97.i = phi { ptr, i32 } [ %i.op, %bb.dr ], [ %i.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139.i ], [ %i.oq, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume

bb.dt:                                            ; preds = %bb.dn
  %i.ow = load i32, ptr %i.fx, align 4, !tbaa !78
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi, ptr noundef nonnull @.str.1, i32 noundef 874) #33
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %bb.du
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i

bb.dy:                                            ; preds = %bb.dv
  %i.oz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pa = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i: ; preds = %bb.dy
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !89
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144.i: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i, %bb.dx
  %.pn99.i = phi { ptr, i32 } [ %i.oy, %bb.dx ], [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142.i ], [ %i.oz, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %common.resume

bb.dz:                                            ; preds = %bb.dt
  call void @sincos(double %i.mq, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i)
  %sin.i = load double, ptr %sincos.sin.i, align 8 ; 2 uses
  %cos.i = load double, ptr %sincos.cos.i, align 8 ; 2 uses
  %i.pf = fdiv double 1.000000e+00, %i.on         ; 3 uses
  %i.pg = load <2 x i32>, ptr %i.fy, align 8, !tbaa !104
  %i.ph = sitofp <2 x i32> %i.pg to <2 x double>
  %i.pi = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.pj = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pk = fmul <2 x double> %i.pj, %i.ph
  %i.pl = call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.pk)
  %i.pm = fptosi <2 x double> %i.pl to <2 x i32>  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.pn = add nsw <2 x i32> %i.pm, splat (i32 2)  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.po = extractelement <2 x i32> %i.pn, i64 0
  %i.pp = extractelement <2 x i32> %i.pn, i64 1
  call void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.pp, i32 noundef %i.po, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.pq = load i32, ptr %i.e, align 8, !tbaa !74  ; 2 uses
  %.not177.i = icmp slt i32 %i.pq, 0
  br i1 %.not177.i, label %.preheader.i, label %.lr.ph180.i

.lr.ph180.i:                                      ; preds = %bb.dz
  %.val130.i = load ptr, ptr %i.o, align 8, !tbaa !121
  %.val129.i = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.pr = sitofp <2 x i32> %i.pm to <2 x double>
  %i.ps = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.pt = insertelement <2 x double> %i.ps, double %sin.i, i64 1 ; 2 uses
  %i.pu = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.pv = insertelement <2 x double> %i.pu, double %cos.i, i64 1 ; 2 uses
  br label %bb.ea

.preheader.i:                                     ; preds = %._crit_edge176.split.i, %bb.dz
  %i.pw = extractelement <2 x i32> %i.pm, i64 1   ; 2 uses
  %i.px = icmp sgt i32 %i.pw, 0
  br i1 %i.px, label %.lr.ph185.i, label %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit

.lr.ph185.i:                                      ; preds = %.preheader.i
  %i.py = extractelement <2 x i32> %i.pm, i64 0   ; 2 uses
  %i.pz = icmp sgt i32 %i.py, 0
  %i.qa = fptrunc double %i.nc to float           ; 2 uses
  br i1 %i.pz, label %.lr.ph183.preheader.i, label %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit

.lr.ph183.preheader.i:                            ; preds = %.lr.ph185.i
  %wide.trip.count200.i = zext nneg i32 %i.pw to i64
  %wide.trip.count.i73 = zext nneg i32 %i.py to i64
  br label %.lr.ph183.i

bb.ea:                                            ; preds = %._crit_edge176.split.i, %.lr.ph180.i
  %i.qb = phi i32 [ %i.pq, %.lr.ph180.i ], [ %i.qp, %._crit_edge176.split.i ] ; 2 uses
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph180.i ], [ %indvars.iv.next.i72, %._crit_edge176.split.i ] ; 4 uses
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %.val130.i, i64 %indvars.iv.i63 ; 2 uses
  %.val119.i = load ptr, ptr %i.qc, align 8, !tbaa !132 ; 3 uses
  %i.qd = getelementptr i8, ptr %i.qc, i64 8
  %.val120.i = load ptr, ptr %i.qd, align 8, !tbaa !133 ; 2 uses
  %i.qe = ptrtoint ptr %.val120.i to i64
  %i.qf = ptrtoint ptr %.val119.i to i64
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = sdiv exact i64 %i.qg, 96
  %.not187.i = icmp eq ptr %.val120.i, %.val119.i
  br i1 %.not187.i, label %._crit_edge176.split.i, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %bb.ea
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %.val129.i, i64 %indvars.iv.i63 ; 2 uses
  %.val117.i = load ptr, ptr %i.qi, align 8, !tbaa !132 ; 3 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 8
  %.val118.i = load ptr, ptr %i.qj, align 8, !tbaa !133 ; 2 uses
  %.not188.i = icmp eq ptr %.val118.i, %.val117.i
  br i1 %.not188.i, label %._crit_edge176.split.i, label %.lr.ph175.split.i

.lr.ph175.split.i:                                ; preds = %.lr.ph175.i
  %i.qk = ptrtoint ptr %.val118.i to i64
  %i.ql = ptrtoint ptr %.val117.i to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = sdiv exact i64 %i.qm, 96
  %i.qo = load double, ptr %i.fs, align 8, !tbaa !124
  br label %.lr.ph.i64

._crit_edge176.split.loopexit.i:                  ; preds = %._crit_edge.i70
  %.pre.i71 = load i32, ptr %i.e, align 8, !tbaa !74
  br label %._crit_edge176.split.i

._crit_edge176.split.i:                           ; preds = %._crit_edge176.split.loopexit.i, %.lr.ph175.i, %bb.ea
  %i.qp = phi i32 [ %.pre.i71, %._crit_edge176.split.loopexit.i ], [ %i.qb, %.lr.ph175.i ], [ %i.qb, %bb.ea ] ; 2 uses
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i63, 1
  %i.qq = sext i32 %i.qp to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i63, %i.qq
  br i1 %.not.not.i, label %bb.ea, label %.preheader.i, !llvm.loop !261

.lr.ph.i64:                                       ; preds = %._crit_edge.i70, %.lr.ph175.split.i
  %.075173.i = phi i64 [ 0, %.lr.ph175.split.i ], [ %i.ro, %._crit_edge.i70 ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [96 x i8], ptr %.val119.i, i64 %.075173.i ; 5 uses
  %.sroa.4161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %.sroa.4161.0.copyload.i = load double, ptr %.sroa.4161.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.7164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  %.sroa.7164.0.copyload.i = load double, ptr %.sroa.7164.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qr, i64 72
  %.sroa.12.0.copyload.i = load double, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qr, i64 80
  %.sroa.17.0.copyload.i = load double, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qr, i64 88
  %.sroa.22.0.copyload.i = load double, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !45
  %i.qs = fadd double %i.gk, %.sroa.4161.0.copyload.i
  %i.qt = fmul double %i.nc, %.sroa.7164.0.copyload.i
  %i.qu = fmul double %i.nc, %.sroa.12.0.copyload.i ; 2 uses
  %i.qv = fmul double %i.nc, %.sroa.17.0.copyload.i
  %i.qw = fmul double %i.nc, %.sroa.22.0.copyload.i ; 2 uses
  %i.qx = fneg double %i.qu
  %i.qy = insertelement <2 x double> poison, double %i.qx, i64 0
  %i.qz = insertelement <2 x double> %i.qy, double %i.qu, i64 1
  %i.ra = fmul <2 x double> %i.pv, %i.qz
  %i.rb = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.rc = shufflevector <2 x double> %i.rb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.rc, <2 x double> %i.ra)
  %i.re = fneg double %i.qw
  %i.rf = insertelement <2 x double> poison, double %i.qw, i64 0
  %i.rg = insertelement <2 x double> %i.rf, double %i.re, i64 1
  %i.rh = fmul <2 x double> %i.pt, %i.rg
  %i.ri = insertelement <2 x double> poison, double %i.qv, i64 0
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pv, <2 x double> %i.rj, <2 x double> %i.rh) ; 2 uses
  %i.rl = load ptr, ptr %i.ga, align 8
  %i.rm = extractelement <2 x double> %i.rk, i64 0
  %i.rn = extractelement <2 x double> %i.rk, i64 1
  br label %bb.eb

._crit_edge.i70:                                  ; preds = %.critedge.i
  %i.ro = add nuw i64 %.075173.i, 1               ; 2 uses
  %exitcond191.not.i = icmp eq i64 %i.ro, %i.qh
  br i1 %exitcond191.not.i, label %._crit_edge176.split.loopexit.i, label %.lr.ph.i64, !llvm.loop !262

bb.eb:                                            ; preds = %.critedge.i, %.lr.ph.i64
  %.074172.i = phi i64 [ 0, %.lr.ph.i64 ], [ %i.ti, %.critedge.i ] ; 2 uses
  %i.rp = getelementptr inbounds nuw [96 x i8], ptr %.val117.i, i64 %.074172.i ; 4 uses
  %i.rq = load <2 x double>, ptr %i.rp, align 8, !tbaa !45
  %.sroa.6.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i65, align 8, !tbaa !45
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !45
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %.sroa.8.0.copyload.i = load double, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !45
  %i.rr = fsub double %.sroa.6.0.copyload.i, %i.qs ; 3 uses
  %i.rs = fcmp ogt double %i.rr, 3.600000e+02
  br i1 %i.rs, label %.lr.ph.i.i.i77, label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %.lr.ph.i.i.i77, %bb.eb
  %.0.lcssa.i.i.i67 = phi double [ %i.rr, %bb.eb ], [ %i.ru, %.lr.ph.i.i.i77 ] ; 3 uses
  %i.rt = fcmp olt double %.0.lcssa.i.i.i67, 0.000000e+00
  br i1 %i.rt, label %.lr.ph8.i.i.i75, label %.loopexit170.i

.lr.ph.i.i.i77:                                   ; preds = %bb.eb, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi double [ %i.ru, %.lr.ph.i.i.i77 ], [ %i.rr, %bb.eb ]
  %i.ru = fadd double %.06.i.i.i78, -3.600000e+02 ; 3 uses
  %i.rv = fcmp ogt double %i.ru, 3.600000e+02
  br i1 %i.rv, label %.lr.ph.i.i.i77, label %.preheader.i.i.i66, !llvm.loop !4

.lr.ph8.i.i.i75:                                  ; preds = %.preheader.i.i.i66, %.lr.ph8.i.i.i75
  %.17.i.i.i76 = phi double [ %i.rw, %.lr.ph8.i.i.i75 ], [ %.0.lcssa.i.i.i67, %.preheader.i.i.i66 ]
  %i.rw = fadd double %.17.i.i.i76, 3.600000e+02  ; 3 uses
  %i.rx = fcmp olt double %i.rw, 0.000000e+00
  br i1 %i.rx, label %.lr.ph8.i.i.i75, label %.loopexit170.i, !llvm.loop !5

.loopexit170.i:                                   ; preds = %.lr.ph8.i.i.i75, %.preheader.i.i.i66
  %.1.lcssa.i.i.i68 = phi double [ %.0.lcssa.i.i.i67, %.preheader.i.i.i66 ], [ %i.rw, %.lr.ph8.i.i.i75 ]
  %i.ry = call double @llvm.fabs.f64(double %.1.lcssa.i.i.i68)
  %i.rz = fcmp ugt double %i.ry, %i.qo
  br i1 %i.rz, label %.critedge.i, label %bb.ec

bb.ec:                                            ; preds = %.loopexit170.i
  %i.sa = fsub <2 x double> %i.rq, %i.rd
  %i.sb = fmul <2 x double> %i.pj, %i.sa          ; 5 uses
  %i.sc = fsub double %.sroa.7.0.copyload.i, %i.rn
  %i.sd = fmul double %i.pf, %i.sc
  %i.se = extractelement <2 x double> %i.sb, i64 0 ; 2 uses
  %i.sf = fsub double %i.se, %i.sd
  %i.sg = call double @llvm.fabs.f64(double %i.sf)
  %i.sh = fcmp ogt double %i.sg, 1.000000e+00
  br i1 %i.sh, label %.critedge.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.si = fsub double %.sroa.8.0.copyload.i, %i.rm
  %i.sj = fmul double %i.pf, %i.si
  %i.sk = extractelement <2 x double> %i.sb, i64 1 ; 2 uses
  %i.sl = fsub double %i.sk, %i.sj
  %i.sm = call double @llvm.fabs.f64(double %i.sl)
  %i.sn = fcmp ogt double %i.sm, 1.000000e+00
  %i.so = fcmp ult double %i.sk, 0.000000e+00
  %or.cond169.i = select i1 %i.sn, i1 true, i1 %i.so
  br i1 %or.cond169.i, label %.critedge.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.sp = fcmp olt <2 x double> %i.sb, %i.pr      ; 2 uses
  %i.sq = fcmp oge double %i.se, 0.000000e+00
  %i.sr = extractelement <2 x i1> %i.sp, i64 0
  %i.ss = and i1 %i.sq, %i.sr
  %i.st = extractelement <2 x i1> %i.sp, i64 1
  %or.cond111.i = select i1 %i.st, i1 %i.ss, i1 false
  br i1 %or.cond111.i, label %bb.ef, label %.critedge.i

bb.ef:                                            ; preds = %bb.ee
  %i.su = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sv = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.su)
  %i.sw = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.sb)
  %i.sx = add nsw i32 %i.sv, 1
  %i.sy = load i32, ptr %i.fz, align 4, !tbaa !110
  %i.sz = icmp slt i32 %i.sy, 2
  %i.ta = load i64, ptr %i.gb, align 8
  %i.tb = sext i32 %i.sx to i64
  %i.tc = mul i64 %i.ta, %i.tb
  %.sink.idx.i.i = select i1 %i.sz, i64 0, i64 %i.tc
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.sink.idx.i.i
  %i.td = sext i32 %i.sw to i64
  %i.te = getelementptr [4 x i8], ptr %.sink.i.i, i64 %i.td
  %i.tf = getelementptr i8, ptr %i.te, i64 4      ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !104
  %i.th = add nsw i32 %i.tg, 1
  store i32 %i.th, ptr %i.tf, align 4, !tbaa !104
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec, %.loopexit170.i
  %i.ti = add nuw i64 %.074172.i, 1               ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %i.ti, %i.qn
  br i1 %exitcond.not.i69, label %._crit_edge.i70, label %bb.eb, !llvm.loop !263

..loopexit_crit_edge.i:                           ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i
  %exitcond201.not.i = icmp eq i64 %indvars.iv.next198.i, %wide.trip.count200.i
  br i1 %exitcond201.not.i, label %_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit, label %.lr.ph183.i, !llvm.loop !264

.lr.ph183.i:                                      ; preds = %..loopexit_crit_edge.i, %.lr.ph183.preheader.i
  %indvars.iv197.i = phi i64 [ 0, %.lr.ph183.preheader.i ], [ %indvars.iv.next198.i, %..loopexit_crit_edge.i ] ; 4 uses
  %i.tj = load ptr, ptr %i.ga, align 8, !tbaa !99 ; 3 uses
  %i.tk = load i64, ptr %i.gb, align 8, !tbaa !100 ; 3 uses
  %i.tl = mul i64 %i.tk, %indvars.iv197.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tl
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 1 ; 3 uses
  %i.tn = mul i64 %i.tk, %indvars.iv.next198.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tn ; 2 uses
  %i.tp = add nuw nsw i64 %indvars.iv197.i, 2
  %i.tq = mul i64 %i.tk, %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tq
  %i.ts = trunc nuw nsw i64 %indvars.iv197.i to i32
  %i.tt = uitofp nneg i32 %i.ts to double
  %i.tu = insertelement <2 x double> poison, double %i.tt, i64 1
  br label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i, %.lr.ph183.i
  %indvars.iv193.i = phi i64 [ 0, %.lr.ph183.i ], [ %indvars.iv.next194.i, %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i ] ; 3 uses
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1 ; 5 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv.next194.i
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !104 ; 7 uses
  %i.tx = load i32, ptr %i.fx, align 4, !tbaa !78
  %i.ty = icmp sgt i32 %i.tw, %i.tx
  br i1 %i.ty, label %bb.eh, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i

bb.eh:                                            ; preds = %bb.eg
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv193.i ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !104
  %i.ub = icmp sgt i32 %i.tw, %i.ua
  br i1 %i.ub, label %bb.ei, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i

bb.ei:                                            ; preds = %bb.eh
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !104
  %.not101.i = icmp slt i32 %i.tw, %i.ud
  br i1 %.not101.i, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %indvars.iv.next194.i
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !104
  %i.ug = icmp sgt i32 %i.tw, %i.uf
  br i1 %i.ug, label %bb.ek, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i

bb.ek:                                            ; preds = %bb.ej
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv.next194.i
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !104
  %.not102.i = icmp slt i32 %i.tw, %i.ui
  br i1 %.not102.i, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.uj = trunc nuw nsw i64 %indvars.iv193.i to i32
  %i.uk = uitofp nneg i32 %i.uj to double
  %i.ul = load <1 x double>, ptr %i.fw, align 8
  %i.um = shufflevector <1 x double> %i.ul, <1 x double> poison, <2 x i32> zeroinitializer
  %i.un = insertelement <2 x double> %i.tu, double %i.uk, i64 0
  %i.uo = fmul <2 x double> %i.um, %i.un
  %i.up = fptrunc <2 x double> %i.uo to <2 x float> ; 2 uses
  %i.uq = load ptr, ptr %i.gc, align 8, !tbaa !111 ; 8 uses
  %i.ur = load ptr, ptr %i.gd, align 8, !tbaa !112
  %.not.i.i.i74 = icmp eq ptr %i.uq, %i.ur
  br i1 %.not.i.i.i74, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store <2 x float> %i.up, ptr %i.uq, align 4, !tbaa !103
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store float %i.qa, ptr %i.us, align 4, !tbaa !103
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  store float %i.mr, ptr %i.ut, align 4, !tbaa !103
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  store ptr %i.uu, ptr %i.gc, align 8, !tbaa !111
  br label %bb.ep

bb.en:                                            ; preds = %bb.el
  %i.uv = load ptr, ptr %i.ge, align 8, !tbaa !116 ; 5 uses
  %i.uw = ptrtoint ptr %i.uq to i64
  %i.ux = ptrtoint ptr %i.uv to i64               ; 2 uses
  %i.uy = sub i64 %i.uw, %i.ux                    ; 3 uses
  %i.uz = icmp eq i64 %i.uy, 9223372036854775792
  br i1 %i.uz, label %.invoke, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.er, %bb.en
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.en
  %i.va = ashr exact i64 %i.uy, 4                 ; 3 uses
  %.sroa.speculated.i.i80 = call i64 @llvm.umax.i64(i64 %i.va, i64 1)
  %i.vb = add nsw i64 %.sroa.speculated.i.i80, %i.va ; 2 uses
  %i.vc = icmp ult i64 %i.vb, %i.va
  %i.vd = call i64 @llvm.umin.i64(i64 %i.vb, i64 576460752303423487)
  %i.ve = select i1 %i.vc, i64 576460752303423487, i64 %i.vd ; 3 uses
  %.not.i.i81 = icmp ne i64 %i.ve, 0
  call void @llvm.assume(i1 %.not.i.i81)
  %i.vf = shl nuw nsw i64 %i.ve, 4
  %i.vg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vf) #29
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.uy ; 3 uses
  store <2 x float> %i.up, ptr %i.vh, align 4, !tbaa !103
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store float %i.qa, ptr %i.vi, align 4, !tbaa !103
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vh, i64 12
  store float %i.mr, ptr %i.vj, align 4, !tbaa !103
  %.not13.i.i.i.i.i.i82 = icmp eq ptr %i.uv, %i.uq
  br i1 %.not13.i.i.i.i.i.i82, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i83:                             ; preds = %.noexc96, %.lr.ph.i.i.i.i.i.i83
  %.015.i.i.i.i.i.i84 = phi ptr [ %i.vv, %.lr.ph.i.i.i.i.i.i83 ], [ %i.vg, %.noexc96 ] ; 5 uses
  %.01214.i.i.i.i.i.i85 = phi ptr [ %i.vu, %.lr.ph.i.i.i.i.i.i83 ], [ %i.uv, %.noexc96 ] ; 5 uses
  %i.vk = load float, ptr %.01214.i.i.i.i.i.i85, align 4, !tbaa !103
  store float %i.vk, ptr %.015.i.i.i.i.i.i84, align 4, !tbaa !103
  %i.vl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i85, i64 4
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !103
  %i.vn = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i84, i64 4
  store float %i.vm, ptr %i.vn, align 4, !tbaa !103
  %i.vo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i85, i64 8
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !103
  %i.vq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i84, i64 8
  store float %i.vp, ptr %i.vq, align 4, !tbaa !103
  %i.vr = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i85, i64 12
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !103
  %i.vt = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i84, i64 12
  store float %i.vs, ptr %i.vt, align 4, !tbaa !103
  %i.vu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i85, i64 16 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i84, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i86 = icmp eq ptr %i.vu, %i.uq
  br i1 %.not.i.i.i.i.i.i86, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i83, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i83, %.noexc96
  %.0.lcssa.i.i.i.i.i.i87 = phi ptr [ %i.vg, %.noexc96 ], [ %i.vv, %.lr.ph.i.i.i.i.i.i83 ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i87, i64 16
  %.not.i35.i94 = icmp eq ptr %i.uv, null
  br i1 %.not.i35.i94, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i
  %i.vx = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.vy = ptrtoint ptr %i.vx to i64
  %i.vz = sub i64 %i.vy, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef %i.vz) #30
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, %bb.eo
  store ptr %i.vg, ptr %i.ge, align 8, !tbaa !116
  store ptr %i.vw, ptr %i.gc, align 8, !tbaa !111
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.vg, i64 %i.ve
  store ptr %i.wa, ptr %i.gd, align 8, !tbaa !112
  br label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.em
  %i.wb = load ptr, ptr %i.gf, align 8, !tbaa !113 ; 8 uses
  %i.wc = load ptr, ptr %i.gg, align 8, !tbaa !114
  %.not.i.i147.i = icmp eq ptr %i.wb, %i.wc
  br i1 %.not.i.i147.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store i32 %i.tw, ptr %i.wb, align 4, !tbaa !104
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store i32 %i.ne, ptr %i.wd, align 4, !tbaa !104
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i32 %i.gm, ptr %i.we, align 4, !tbaa !104
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 12
  store ptr %i.wf, ptr %i.gf, align 8, !tbaa !113
  br label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i

bb.er:                                            ; preds = %bb.ep
  %i.wg = load ptr, ptr %i.gh, align 8, !tbaa !115 ; 5 uses
  %i.wh = ptrtoint ptr %i.wb to i64
  %i.wi = ptrtoint ptr %i.wg to i64               ; 2 uses
  %i.wj = sub i64 %i.wh, %i.wi                    ; 3 uses
  %i.wk = icmp eq i64 %i.wj, 9223372036854775800
  br i1 %i.wk, label %.invoke, label %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.er
  %i.wl = sdiv exact i64 %i.wj, 12                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.wl, i64 1)
  %i.wm = add nsw i64 %.sroa.speculated.i.i, %i.wl ; 2 uses
  %i.wn = icmp ult i64 %i.wm, %i.wl
  %i.wo = call i64 @llvm.umin.i64(i64 %i.wm, i64 768614336404564650)
  %i.wp = select i1 %i.wn, i64 768614336404564650, i64 %i.wo ; 3 uses
  %.not.i.i = icmp ne i64 %i.wp, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.wq = mul nuw nsw i64 %i.wp, 12
  %i.wr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wq) #29
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wj ; 3 uses
  store i32 %i.tw, ptr %i.ws, align 4, !tbaa !104
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  store i32 %i.ne, ptr %i.wt, align 4, !tbaa !104
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i32 %i.gm, ptr %i.wu, align 4, !tbaa !104
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.wg, %i.wb
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc79, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.xd, %.lr.ph.i.i.i.i.i.i ], [ %i.wr, %.noexc79 ] ; 4 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.xc, %.lr.ph.i.i.i.i.i.i ], [ %i.wg, %.noexc79 ] ; 4 uses
  %i.wv = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !104
  store i32 %i.wv, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !104
  %i.ww = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !104
  %i.wy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !104
  %i.wz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !104
  %i.xb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8
  store i32 %i.xa, ptr %i.xb, align 4, !tbaa !104
  %i.xc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.xc, %i.wb
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc79
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.wr, %.noexc79 ], [ %i.xd, %.lr.ph.i.i.i.i.i.i ]
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i35.i = icmp eq ptr %i.wg, null
  br i1 %.not.i35.i, label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.es

bb.es:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i
  %i.xf = load ptr, ptr %i.gg, align 8, !tbaa !114
  %i.xg = ptrtoint ptr %i.xf to i64
  %i.xh = sub i64 %i.xg, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.xh) #30
  br label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi3EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, %bb.es
  store ptr %i.wr, ptr %i.gh, align 8, !tbaa !115
  store ptr %i.xe, ptr %i.gf, align 8, !tbaa !113
  %i.xi = getelementptr inbounds nuw [12 x i8], ptr %i.wr, i64 %i.wp
  store ptr %i.xi, ptr %i.gg, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN2cv3VecIiLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %common.resume

_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.eq, %_ZNSt6vectorIN2cv3VecIiLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next194.i, %wide.trip.count.i73
  br i1 %exitcond196.not.i, label %..loopexit_crit_edge.i, label %bb.eg, !llvm.loop !265

_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12calcPositionEdidi.exit: ; preds = %..loopexit_crit_edge.i, %.preheader.i, %.lr.ph185.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  %i.xj = add nuw i64 %.013142, 1                 ; 2 uses
  %i.xk = load ptr, ptr %i.fu, align 8, !tbaa !267
  %i.xl = load ptr, ptr %i.ft, align 8, !tbaa !119 ; 2 uses
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = ptrtoint ptr %i.xl to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = ashr exact i64 %i.xo, 4
  %i.xq = icmp ult i64 %i.xj, %i.xp
  br i1 %i.xq, label %bb.cv, label %._crit_edge, !llvm.loop !266
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn8_N12_GLOBAL__N_124GeneralizedHoughGuilImplD1Ev(ptr noundef %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImplD2Ev(ptr noundef nonnull align 8 dead_on_return(1552) dereferenceable(1552) %i.a) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn8_N12_GLOBAL__N_124GeneralizedHoughGuilImplD0Ev(ptr noundef %0) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImplD2Ev(ptr noundef nonnull align 8 dead_on_return(1552) dereferenceable(1552) %i.a) #31
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1552) %i.a, i64 noundef 1552) #30
  ret void
}

; Function Attrs: uwtable
define internal void @_ZThn8_N12_GLOBAL__N_124GeneralizedHoughGuilImpl12processTemplEv(ptr noundef %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !104
  %i.h = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = extractelement <2 x double> %i.h, i64 1
  tail call fastcc void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE(ptr noundef nonnull align 8 dereferenceable(1552) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, double %i.i, double %i.j)
  ret void
}

; Function Attrs: uwtable
define internal void @_ZThn8_N12_GLOBAL__N_124GeneralizedHoughGuilImpl12processImageEv(ptr noundef %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl12processImageEv(ptr noundef nonnull align 8 dereferenceable(1552) %i.a)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv20GeneralizedHoughGuilD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1552) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, double %5, double %6) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE, ptr noundef nonnull @.str.1, i32 noundef 685) #33
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %15, align 8, !tbaa !95    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !89
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !98
  %i.m = sitofp i32 %i.l to double                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97   ; 2 uses
  %i.p = mul nsw i32 %i.o, %i.o
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = tail call nnan double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.q)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.t = load double, ptr %i.s, align 8, !tbaa !129
  %i.u = fmul double %i.t, %sqrt
  %i.v = uitofp nneg i32 %i.b to double
  %i.w = fdiv nnan double %i.v, 3.600000e+02
  %i.x = load i32, ptr %1, align 8, !tbaa !105
  %i.y = and i32 %i.x, 4095
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16getContourPointsERKN2cv3MatES4_S4_RSt6vectorINS0_12ContourPointESaIS6_EE, ptr noundef nonnull @.str.1, i32 noundef 738) #33
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %9, align 8, !tbaa !95    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !89
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ab, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117

bb.m:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %2, align 8, !tbaa !105
  %i.ai = and i32 %i.ah, 4095
  %i.aj = icmp eq i32 %i.ai, 5
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.am = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.ak, ptr noundef nonnull align 4 dereferenceable(52) %i.al)
          to label %.noexc unwind label %.body.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  br i1 %i.am, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.noexc, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16getContourPointsERKN2cv3MatES4_S4_RSt6vectorINS0_12ContourPointESaIS6_EE, ptr noundef nonnull @.str.1, i32 noundef 739) #33
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE:bb.a
  %.17.i.i = phi double [ %i.is, %.lr.ph8.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.is = fadd double %.17.i.i, 3.600000e+02      ; 3 uses
  %i.it = fcmp olt double %i.is, 0.000000e+00
  br i1 %i.it, label %.lr.ph8.i.i, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %.lr.ph8.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.is, %.lr.ph8.i.i ]
  %i.iu = tail call double @llvm.fabs.f64(double %.1.lcssa.i.i)
  %i.iv = fcmp ugt double %i.iu, %i.im
  br i1 %i.iv, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  %i.iw = fsub <2 x double> %i.if, %i.ij          ; 4 uses
  %i.ix = fptrunc <2 x double> %i.iw to <2 x float> ; 2 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  %i.iz = extractelement <2 x float> %i.ix, i64 1
  %i.ja = invoke noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.iz, float noundef %i.iy)
          to label %bb.az unwind label %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.jb = fpext float %i.ja to double
  %i.jc = fsub double %i.jb, %.sroa.9147.0.copyload ; 3 uses
  %i.jd = fcmp ogt double %i.jc, 3.600000e+02
  br i1 %i.jd, label %.lr.ph.i102, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i102, %bb.az
  %.0.lcssa.i = phi double [ %i.jc, %bb.az ], [ %i.jf, %.lr.ph.i102 ] ; 3 uses
  %i.je = fcmp olt double %.0.lcssa.i, 0.000000e+00
  br i1 %i.je, label %.lr.ph8.i, label %_ZN12_GLOBAL__N_110clampAngleEd.exit

.lr.ph.i102:                                      ; preds = %bb.az, %.lr.ph.i102
  %.06.i = phi double [ %i.jf, %.lr.ph.i102 ], [ %i.jc, %bb.az ]
  %i.jf = fadd double %.06.i, -3.600000e+02       ; 3 uses
  %i.jg = fcmp ogt double %i.jf, 3.600000e+02
  br i1 %i.jg, label %.lr.ph.i102, label %.preheader.i, !llvm.loop !4

.lr.ph8.i:                                        ; preds = %.preheader.i, %.lr.ph8.i
  %.17.i = phi double [ %i.jh, %.lr.ph8.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.jh = fadd double %.17.i, 3.600000e+02        ; 3 uses
  %i.ji = fcmp olt double %i.jh, 0.000000e+00
  br i1 %i.ji, label %.lr.ph8.i, label %_ZN12_GLOBAL__N_110clampAngleEd.exit, !llvm.loop !5

_ZN12_GLOBAL__N_110clampAngleEd.exit:             ; preds = %.lr.ph8.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ %i.jh, %.lr.ph8.i ] ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.iw, %i.iw
  %i.jj = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.jk = extractelement <2 x double> %i.iw, i64 0 ; 2 uses
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jk, double %i.jk, double %i.jj)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.jl) ; 3 uses
  %i.jm = fcmp ule double %sqrt.i, %i.u
  br i1 %i.jm, label %bb.ba, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_110clampAngleEd.exit
  %i.jn = fsub <2 x double> %i.ij, %i.ib          ; 2 uses
  %i.jo = fmul double %i.w, %.1.lcssa.i
  %i.jp = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.jq = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.jp)
  %i.jr = sext i32 %i.jq to i64
  %.val74 = load ptr, ptr %4, align 8, !tbaa !121
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %.val74, i64 %i.jr ; 4 uses
  %.val51 = load ptr, ptr %i.js, align 8, !tbaa !132 ; 5 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 8      ; 3 uses
  %.val52 = load ptr, ptr %i.jt, align 8, !tbaa !133 ; 13 uses
  %i.ju = ptrtoint ptr %.val52 to i64
  %i.jv = ptrtoint ptr %.val51 to i64             ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 3 uses
  %i.jx = sdiv exact i64 %i.jw, 96                ; 4 uses
  %i.jy = load i32, ptr %i.gr, align 8, !tbaa !72
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp ult i64 %i.jx, %i.jz
  br i1 %i.ka, label %bb.bb, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !300
  %.not.i107 = icmp eq ptr %.val52, %i.kc
  br i1 %.not.i107, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store <2 x double> %i.if, ptr %.val52, align 8, !tbaa !45
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 16
  store double %.sroa.9147.0.copyload, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8, !tbaa !45
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 24
  store <2 x double> %i.ij, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !tbaa !45
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 40
  store double %.sroa.9.0.copyload, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !tbaa !45
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 48
  store double %.1.lcssa.i, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 56
  store double %sqrt.i, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !45
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 64
  store <2 x double> %i.ig, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !45
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 80
  store <2 x double> %i.jn, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !45
  %i.kd = getelementptr inbounds nuw i8, ptr %.val52, i64 96
  store ptr %i.kd, ptr %i.jt, align 8, !tbaa !133
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ke = icmp eq i64 %i.jw, 9223372036854775776
  br i1 %i.ke, label %bb.be, label %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
          to label %.noexc114 unwind label %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.kf = icmp eq ptr %.val52, %.val51            ; 2 uses
  %.sroa.speculated.i.i.i108 = select i1 %i.kf, i64 1, i64 %i.jx
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i108, %i.jx ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.jx
  %i.ki = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 96076792050570581)
  %i.kj = select i1 %i.kh, i64 96076792050570581, i64 %i.ki ; 3 uses
  %.not.i.i.i109 = icmp ne i64 %i.kj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i109)
  %i.kk = mul nuw nsw i64 %i.kj, 96
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #29
          to label %.noexc115 unwind label %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.jw ; 8 uses
  store <2 x double> %i.if, ptr %i.km, align 8, !tbaa !45
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store double %.sroa.9147.0.copyload, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx153, align 8, !tbaa !45
  %.sroa.0.sroa.8.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store <2 x double> %i.ij, ptr %.sroa.0.sroa.8.0..sroa_idx138, align 8, !tbaa !45
  %.sroa.0.sroa.11.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  store double %.sroa.9.0.copyload, ptr %.sroa.0.sroa.11.0..sroa_idx142, align 8, !tbaa !45
  %.sroa.10.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  store double %.1.lcssa.i, ptr %.sroa.10.0..sroa_idx119, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  store double %sqrt.i, ptr %.sroa.12.0..sroa_idx121, align 8, !tbaa !45
  %.sroa.13.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  store <2 x double> %i.ig, ptr %.sroa.13.0..sroa_idx123, align 8, !tbaa !45
  %.sroa.16.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.km, i64 80
  store <2 x double> %i.jn, ptr %.sroa.16.0..sroa_idx127, align 8, !tbaa !45
  br i1 %i.kf, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i110

.lr.ph.i.i.i.i.i110:                              ; preds = %.noexc115, %.lr.ph.i.i.i.i.i110
  %.03.i.i.i.i.i111 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i110 ], [ %i.kl, %.noexc115 ] ; 2 uses
  %.092.i.i.i.i.i112 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i110 ], [ %.val51, %.noexc115 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.03.i.i.i.i.i111, ptr noundef nonnull readonly align 8 dereferenceable(96) %.092.i.i.i.i.i112, i64 96, i1 false), !tbaa.struct !302, !alias.scope !304
  %i.kn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i112, i64 96 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i111, i64 96 ; 2 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.kn, %.val52
  br i1 %.not.i.i.i.i.i113, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i110, !llvm.loop !286

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i110, %.noexc115
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kl, %.noexc115 ], [ %i.ko, %.lr.ph.i.i.i.i.i110 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96
  %.not.i27.i.i = icmp eq ptr %.val51, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  %i.kq = load ptr, ptr %i.kb, align 8, !tbaa !300
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = sub i64 %i.kr, %i.jv
  tail call void @_ZdlPvm(ptr noundef nonnull %.val51, i64 noundef %i.ks) #30
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  store ptr %i.kl, ptr %i.js, align 8, !tbaa !132
  store ptr %i.kp, ptr %i.jt, align 8, !tbaa !133
  %i.kt = getelementptr inbounds nuw [96 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.kt, ptr %i.kb, align 8, !tbaa !300
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.be
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread168.loopexit.split-lp

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN12_GLOBAL__N_110clampAngleEd.exit, %bb.ba, %bb.bc, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %.loopexit
  %i.ku = add nuw i64 %.0195, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ku, %i.hx
  br i1 %exitcond.not, label %bb.aw, label %bb.ax, !llvm.loop !292

.body.thread168.loopexit.split-lp:                ; preds = %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body._crit_edge
  %.pre-phi = phi i64 [ %.pre, %.body._crit_edge ], [ %i.hu, %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn39.pn.pn.pn.pn175 = phi { ptr, i32 } [ %lpad.phi178, %.body._crit_edge ], [ %lpad.loopexit.split-lp275, %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.24.1174 = phi ptr [ %.sroa.24.0, %.body._crit_edge ], [ %.sroa.24.8, %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0155.1173 = phi ptr [ %.sroa.0155.0, %.body._crit_edge ], [ %.sroa.0155.8, %.body.thread168.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.kv = ptrtoint ptr %.sroa.24.1174 to i64
  %i.kw = sub i64 %i.kv, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.1173, i64 noundef %i.kw) #30
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body.thread168.loopexit.split-lp, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn39.pn.pn.pn.pn175, %.body.thread168.loopexit.split-lp ], [ %lpad.phi178, %.body ], [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ], [ %.pn46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !85}
!1 = distinct !{!1, !85}
!2 = distinct !{!2, !85}
!3 = distinct !{!3, !85}
!4 = distinct !{!4, !85}
!5 = distinct !{!5, !85}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!15 = !{!14, !11, i64 8}
!16 = !{!14, !11, i64 12}
!17 = !{!"vtable pointer", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSN2cv5Size_IiEE", !11, i64 0, !11, i64 4}
!20 = !{!19, !11, i64 0}
!21 = !{!19, !11, i64 4}
!22 = !{!"double", !10, i64 0}
!23 = !{!"_ZTSN2cv6Point_IiEE", !11, i64 0, !11, i64 4}
!24 = !{!"any pointer", !10, i64 0}
!25 = !{!"p1 omnipotent char", !24, i64 0}
!26 = !{!"p1 _ZTSN2cv12MatAllocatorE", !24, i64 0}
!27 = !{!"p1 _ZTSN2cv8UMatDataE", !24, i64 0}
!28 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!29 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !28, i64 4, !11, i64 8, !10, i64 12}
!30 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!31 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !26, i64 56, !27, i64 64, !29, i64 72, !30, i64 128}
!32 = !{!"p1 _ZTSN2cv3VecIfLi4EEE", !24, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN2cv3VecIfLi4EEESaIS2_EE", !35, i64 0}
!37 = !{!"p1 _ZTSN2cv3VecIiLi3EEE", !24, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIN2cv3VecIiLi3EEESaIS2_EE", !40, i64 0}
!42 = !{!"_ZTSN12_GLOBAL__N_120GeneralizedHoughBaseE", !11, i64 8, !11, i64 12, !22, i64 16, !22, i64 24, !19, i64 32, !23, i64 40, !31, i64 48, !31, i64 256, !31, i64 464, !19, i64 672, !31, i64 680, !31, i64 888, !31, i64 1096, !36, i64 1304, !41, i64 1328}
!43 = !{!42, !11, i64 8}
!44 = !{!42, !11, i64 12}
!45 = !{!22, !22, i64 0}
!46 = !{!"_ZTSN2cv9AlgorithmE"}
!47 = !{!"_ZTSN2cv16GeneralizedHoughE", !46, i64 0}
!48 = !{!"_ZTSN2cv23GeneralizedHoughBallardE", !47, i64 0}
!49 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IiEESaIS2_EE", !24, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE", !52, i64 0}
!54 = !{!"_ZTSN12_GLOBAL__N_127GeneralizedHoughBallardImplE", !48, i64 0, !42, i64 8, !11, i64 1360, !11, i64 1364, !53, i64 1368, !31, i64 1392}
!55 = !{!54, !11, i64 1360}
!56 = !{!54, !11, i64 1364}
!57 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!58 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSN2cv20GeneralizedHoughGuilE", !47, i64 0}
!61 = !{!"p1 _ZTSSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE", !24, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS3_EESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS3_EESaIS5_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseISt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS3_EESaIS5_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIS_IN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EESaIS4_EE", !64, i64 0}
!66 = !{!"p1 _ZTSSt4pairIdiE", !24, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt4pairIdiESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseISt4pairIdiESaIS1_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseISt4pairIdiESaIS1_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorISt4pairIdiESaIS1_EE", !69, i64 0}
!71 = !{!"_ZTSN12_GLOBAL__N_124GeneralizedHoughGuilImplE", !60, i64 0, !42, i64 8, !11, i64 1360, !22, i64 1368, !11, i64 1376, !22, i64 1384, !22, i64 1392, !22, i64 1400, !22, i64 1408, !11, i64 1416, !22, i64 1424, !22, i64 1432, !22, i64 1440, !11, i64 1448, !11, i64 1452, !65, i64 1456, !65, i64 1480, !70, i64 1504, !70, i64 1528}
!72 = !{!71, !11, i64 1360}
!73 = !{!71, !22, i64 1368}
!74 = !{!71, !11, i64 1376}
!75 = !{!71, !11, i64 1416}
!76 = !{!71, !22, i64 1440}
!77 = !{!71, !11, i64 1448}
!78 = !{!71, !11, i64 1452}
!79 = !{!50, !49, i64 0}
!80 = !{!50, !49, i64 8}
!81 = !{!"p1 _ZTSN2cv6Point_IiEE", !24, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 0}
!84 = !{!82, !81, i64 16}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!50, !49, i64 16}
!87 = !{!"_ZTSSt9type_info", !25, i64 8}
!88 = !{!87, !25, i64 8}
!89 = !{!10, !10, i64 0}
!90 = !{!42, !22, i64 16}
!91 = !{!42, !22, i64 24}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!93 = !{!"long", !10, i64 0}
!94 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !92, i64 0, !93, i64 8, !10, i64 16}
!95 = !{!94, !25, i64 0}
!96 = !{!82, !81, i64 8}
!97 = !{!42, !11, i64 36}
!98 = !{!42, !11, i64 32}
!99 = !{!31, !25, i64 24}
!100 = !{!93, !93, i64 0}
!101 = !{!"llvm.loop.unswitch.partial.disable"}
!102 = !{!"float", !10, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!11, !11, i64 0}
!105 = !{!31, !11, i64 0}
!106 = !{!29, !11, i64 0}
!107 = !{!"_ZTSN2cv11_InputArrayE", !11, i64 0, !24, i64 8, !19, i64 16}
!108 = !{!107, !11, i64 0}
!109 = !{!107, !24, i64 8}
!110 = !{!31, !11, i64 4}
!111 = !{!33, !32, i64 8}
!112 = !{!33, !32, i64 16}
!113 = !{!38, !37, i64 8}
!114 = !{!38, !37, i64 16}
!115 = !{!38, !37, i64 0}
!116 = !{!33, !32, i64 0}
!117 = !{!32, !32, i64 0}
!118 = !{!37, !37, i64 0}
!119 = !{!67, !66, i64 0}
!120 = !{!67, !66, i64 16}
!121 = !{!62, !61, i64 0}
!122 = !{!62, !61, i64 8}
!123 = !{!62, !61, i64 16}
!124 = !{!71, !22, i64 1384}
!125 = !{!71, !22, i64 1392}
!126 = !{!71, !22, i64 1400}
!127 = !{!71, !22, i64 1408}
!128 = !{!71, !22, i64 1424}
!129 = !{!71, !22, i64 1432}
!130 = !{!"p1 _ZTSN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureE", !24, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!132 = !{!131, !130, i64 0}
!133 = !{!131, !130, i64 8}
!134 = distinct !{!134, i1 true, !"_ZN2cvL7makePtrIN12_GLOBAL__N_127GeneralizedHoughBallardImplEJEEENS_3PtrIT_EEDpRKT0_"}
!135 = distinct !{!135, !134, !"_ZN2cvL7makePtrIN12_GLOBAL__N_127GeneralizedHoughBallardImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!136 = distinct !{!136, i1 true, !"_ZSt11make_sharedIN12_GLOBAL__N_127GeneralizedHoughBallardImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!137 = distinct !{!137, !136, !"_ZSt11make_sharedIN12_GLOBAL__N_127GeneralizedHoughBallardImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!138 = !{!137, !135}
!139 = !{!"p1 _ZTSN2cv23GeneralizedHoughBallardE", !24, i64 0}
!140 = !{!"_ZTSSt12__shared_ptrIN2cv23GeneralizedHoughBallardELN9__gnu_cxx12_Lock_policyE2EE", !139, i64 0, !58, i64 8}
!141 = !{!140, !139, i64 0}
!142 = distinct !{!142, i1 true, !"_ZN2cvL7makePtrIN12_GLOBAL__N_124GeneralizedHoughGuilImplEJEEENS_3PtrIT_EEDpRKT0_"}
!143 = distinct !{!143, !142, !"_ZN2cvL7makePtrIN12_GLOBAL__N_124GeneralizedHoughGuilImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZSt11make_sharedIN12_GLOBAL__N_124GeneralizedHoughGuilImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!145 = distinct !{!145, !144, !"_ZSt11make_sharedIN12_GLOBAL__N_124GeneralizedHoughGuilImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!146 = !{!145, !143}
!147 = !{!"p1 _ZTSN2cv20GeneralizedHoughGuilE", !24, i64 0}
!148 = !{!"_ZTSSt12__shared_ptrIN2cv20GeneralizedHoughGuilELN9__gnu_cxx12_Lock_policyE2EE", !147, i64 0, !58, i64 8}
!149 = !{!148, !147, i64 0}
!150 = distinct !{!150, !85}
!151 = distinct !{!151, !85, !101}
!152 = distinct !{!152, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!153 = distinct !{!153, !152, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!154 = distinct !{!154, !152, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!155 = distinct !{!155, !85}
!156 = distinct !{!156, !85}
!157 = !{!49, !49, i64 0}
!158 = !{!23, !11, i64 0}
!159 = !{!23, !11, i64 4}
!160 = !{!153}
!161 = !{!154}
!162 = distinct !{!162, !85, !101}
!163 = distinct !{!163, !85}
!164 = distinct !{!164, !85}
!165 = distinct !{!165, !85}
!166 = distinct !{!166, !85}
!167 = !{!54, !11, i64 1400}
!168 = !{!54, !11, i64 1404}
!169 = !{!42, !11, i64 676}
!170 = !{!42, !11, i64 672}
!171 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !24, i64 0}
!172 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !171, i64 0, !11, i64 8}
!173 = !{!172, !11, i64 8}
!174 = distinct !{!174, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!175 = distinct !{!175, !174, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!176 = !{!175}
!177 = !{!92, !25, i64 0}
!178 = !{!94, !93, i64 8}
!179 = distinct !{!179, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!180 = distinct !{!180, !179, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!181 = distinct !{!181, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!182 = distinct !{!182, !181, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!184 = distinct !{!184, !183, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!185 = !{!180}
!186 = !{!182}
!187 = !{!184}
!188 = distinct !{!188, !85}
!189 = distinct !{!189, !85}
end_hunk_2
