Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_calib?download=true
inline.NumInlined: 964
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL10print_helpPPc:bb.a
  %i.an = load i8, ptr %i.am, align 8, !tbaa !56
  %.not.i1.i.i3 = icmp eq i8 %i.an, 0
  br i1 %.not.i1.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 67
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 10), !inline_history !100
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5: ; preds = %bb.h, %bb.i
  %.0.i.i.i4 = phi i8 [ %i.ap, %bb.h ], [ %i.at, %bb.i ]
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i4)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 71) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.43, i64 noundef 71) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.44, i64 noundef 69) ; 0 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.45, i64 noundef 64) ; 0 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 103) ; 0 uses
  ret void
}

declare void @_ZN2cv7samples8findFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

declare noundef zeroext i1 @_ZNK2cv17CommandLineParser5checkEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZNK2cv17CommandLineParser11printErrorsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL11StereoCalibRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEN2cv5Size_IiEES5_ffNSA_5aruco24PredefinedDictionaryTypeES5_bbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, float noundef %3, float noundef %4, i32 noundef range(i32 0, 22) %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext %7) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca [2 x %"class.std::vector.3"], align 16 ; 34 uses
  %16 = alloca %"class.std::vector.8", align 8    ; 14 uses
  %17 = alloca %"class.std::vector", align 8      ; 15 uses
  %18 = alloca %"class.cv::Size_", align 8        ; 8 uses
  %19 = alloca %"class.cv::aruco::Dictionary", align 8 ; 10 uses
  %20 = alloca %"class.cv::aruco::Dictionary", align 8 ; 8 uses
  %21 = alloca %"class.cv::FileStorage", align 8  ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.cv::FileNode", align 8     ; 5 uses
  %24 = alloca %"class.cv::aruco::CharucoBoard", align 8 ; 7 uses
  %25 = alloca %"class.cv::aruco::CharucoDetector", align 8 ; 10 uses
  %26 = alloca %"struct.cv::aruco::CharucoParameters", align 8 ; 11 uses
  %27 = alloca %"struct.cv::aruco::DetectorParameters", align 8 ; 32 uses
  %28 = alloca %"struct.cv::aruco::RefineParameters", align 4 ; 5 uses
  %29 = alloca %"class.std::vector.21", align 8   ; 10 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %42 = alloca [2 x %"class.cv::Mat"], align 16   ; 16 uses
  %43 = alloca [2 x %"class.cv::Mat"], align 16   ; 14 uses
  %44 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %46 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %51 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %52 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %54 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %55 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %56 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %57 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %60 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %63 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %64 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %65 = alloca %"class.cv::TermCriteria", align 8 ; 4 uses
  %66 = alloca [2 x %"class.std::vector.36"], align 16 ; 15 uses
  %67 = alloca [2 x %"class.cv::Mat"], align 16   ; 13 uses
  %68 = alloca %"class.cv::Mat", align 8          ; 24 uses
  %69 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %70 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %71 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %72 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %73 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %74 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %75 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %76 = alloca %"class.cv::TermCriteria", align 8 ; 6 uses
  %77 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %78 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %79 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %80 = alloca %"class.cv::FileStorage", align 8  ; 13 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.std::allocator", align 1   ; 4 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %84 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %85 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %86 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %87 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %88 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %89 = alloca [2 x %"class.cv::Rect_"], align 16 ; 8 uses
  %90 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %91 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %92 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %93 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %94 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %95 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %96 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %97 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %98 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %99 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %100 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %102 = alloca %"class.std::allocator", align 1  ; 4 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %104 = alloca [2 x [2 x %"class.cv::Mat"]], align 16 ; 20 uses
  %105 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %106 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %107 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %108 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %109 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %110 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %111 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %112 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %113 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %114 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %115 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %116 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %117 = alloca %"class.cv::Mat", align 8         ; 17 uses
  %118 = alloca %"class.cv::Mat", align 8         ; 12 uses
  %119 = alloca %"class.cv::Mat", align 8         ; 14 uses
  %120 = alloca %"class.cv::Mat", align 8         ; 14 uses
  %121 = alloca %"class.cv::_InputArray", align 8 ; 12 uses
  %122 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %123 = alloca %"class.cv::_InputArray", align 8 ; 12 uses
  %124 = alloca %"class.cv::_InputArray", align 8 ; 12 uses
  %125 = alloca %"class.cv::Scalar_", align 8     ; 9 uses
  %126 = alloca %"class.cv::_InputArray", align 8 ; 12 uses
  %127 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %128 = alloca %"class.cv::Mat", align 8         ; 19 uses
  %129 = alloca %"class.cv::Rect_", align 4       ; 12 uses
  %130 = alloca %"class.cv::Rect_", align 4       ; 12 uses
  %131 = alloca %"class.cv::_InputArray", align 8 ; 12 uses
  %132 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %133 = alloca %"class.cv::_InputOutputArray", align 8 ; 11 uses
  %134 = alloca %"class.cv::Scalar_", align 8     ; 10 uses
  %135 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %136 = alloca %"class.cv::Scalar_", align 16    ; 6 uses
  %137 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %138 = alloca %"class.cv::Scalar_", align 16    ; 6 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %140 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %.sroa.0200.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %1, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = load ptr, ptr %0, align 8, !tbaa !57
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = and i64 %i.h, 32
  %.not = icmp eq i64 %i.i, 0
  %indvars.iv.sroa.gep135 = getelementptr inbounds nuw i8, ptr %15, i64 24
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.49, i64 noundef 65) ; 0 uses
  br label %bb.ik

bb.c:                                             ; preds = %bb.a
  %i.k = lshr exact i64 %i.h, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %15, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = ashr exact i32 %i.l, 1                   ; 4 uses
  %i.n = sext i32 %i.m to i64                     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.not1350 = icmp eq i32 %i.l, 0
  br i1 %.not1350, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.q = icmp slt i32 %i.m, 0
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #26
          to label %.noexc722 unwind label %bb.k

.noexc722:                                        ; preds = %bb.e
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.r = mul nuw nsw i64 %i.n, 24                 ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27
          to label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i unwind label %bb.k ; 3 uses

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i: ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false)
  store ptr %i.s, ptr %15, align 16, !tbaa !60
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.n ; 2 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !61
  store ptr %i.t, ptr %i.p, align 16, !tbaa !62
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !61
  %.phi.trans.insert1235 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %.pre1236 = load ptr, ptr %.phi.trans.insert1235, align 8, !tbaa !60
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i
  %i.u = phi ptr [ %.pre1236, %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i ], [ null, %bb.c ] ; 6 uses
  %i.v = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i ], [ null, %bb.c ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.y = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = sdiv exact i64 %i.aa, 24                ; 7 uses
  %i.ac = icmp ult i64 %i.ab, %i.n
  br i1 %i.ac, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.ad = sub nuw nsw i64 %i.n, %i.ab             ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.y
  %i.ai = sdiv exact i64 %i.ah, 24                ; 2 uses
  %i.aj = icmp ult i64 %i.ab, 384307168202282326
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = sub nuw nsw i64 384307168202282325, %i.ab
  %i.al = icmp ule i64 %i.ai, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  %.not28.i725 = icmp ult i64 %i.ai, %i.ad
  br i1 %.not28.i725, label %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i728, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv6Point_IfEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit.i726

_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv6Point_IfEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit.i726: ; preds = %bb.f
  %i.am = mul nuw nsw i64 %i.ad, 24               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.am, i1 false)
  %scevgep.i.i.i.i727 = getelementptr i8, ptr %i.v, i64 %i.am
  store ptr %scevgep.i.i.i.i727, ptr %i.x, align 16, !tbaa !61
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551

_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i728: ; preds = %bb.f
  %.sroa.speculated.i.i729 = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ad)
  %i.an = add nuw nsw i64 %.sroa.speculated.i.i729, %i.ab
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 384307168202282325) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 24
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27
          to label %.noexc739 unwind label %bb.k  ; 4 uses

.noexc739:                                        ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i728
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aa ; 2 uses
  %i.as = mul nuw nsw i64 %i.ad, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.as, i1 false)
  %.not10.i.i.i.i730 = icmp eq ptr %i.u, %i.v
  br i1 %.not10.i.i.i.i730, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i735, label %.lr.ph.i.i.i.i731

.lr.ph.i.i.i.i731:                                ; preds = %.noexc739, %.lr.ph.i.i.i.i731
  %.012.i.i.i.i732 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i731 ], [ %i.aq, %.noexc739 ] ; 3 uses
  %.0911.i.i.i.i733 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i731 ], [ %i.u, %.noexc739 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i.i733, align 8, !tbaa !64, !alias.scope !124, !noalias !123
  store <2 x ptr> %i.at, ptr %.012.i.i.i.i732, align 8, !tbaa !64, !alias.scope !123, !noalias !124
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i732, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i733, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !66, !alias.scope !124, !noalias !123
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !66, !alias.scope !123, !noalias !124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i733, i8 0, i64 24, i1 false), !alias.scope !124, !noalias !123
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i733, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i732, i64 24
  %.not.i.i.i.i734 = icmp eq ptr %i.ax, %i.v
  br i1 %.not.i.i.i.i734, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i735, label %.lr.ph.i.i.i.i731, !llvm.loop !1

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i735: ; preds = %.lr.ph.i.i.i.i731, %.noexc739
  %.not.i36.i736 = icmp eq ptr %i.u, null
  br i1 %.not.i36.i736, label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i737, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i735
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #25
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i737

_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i737: ; preds = %bb.g, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i735
  store ptr %i.aq, ptr %i.w, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ad
  store ptr %i.bc, ptr %i.x, align 16, !tbaa !61
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bd, ptr %i.ae, align 8, !tbaa !62
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551

bb.h:                                             ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.be = icmp ugt i64 %i.ab, %i.n
  br i1 %i.be, label %bb.i, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.n ; 3 uses
  %.not.i.i543 = icmp eq ptr %i.v, %i.bf
  br i1 %.not.i.i543, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551, label %.lr.ph.i.i.i.i544

.lr.ph.i.i.i.i544:                                ; preds = %bb.i, %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i547
  %.05.i.i.i.i545 = phi ptr [ %i.bm, %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i547 ], [ %i.bf, %bb.i ] ; 3 uses
  %i.bg = load ptr, ptr %.05.i.i.i.i545, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i.i.i.i546 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i546, label %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i547, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i544
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i545, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !66
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #25
  br label %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i547

_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i547: ; preds = %bb.j, %.lr.ph.i.i.i.i544
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i545, i64 24 ; 2 uses
  %.not.i.i.i.i548 = icmp eq ptr %i.bm, %i.v
  br i1 %.not.i.i.i.i548, label %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i549, label %.lr.ph.i.i.i.i544, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i549: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6Point_IfEESaIS3_EEEvPT_.exit.i.i.i.i547
  store ptr %i.bf, ptr %i.x, align 16, !tbaa !61
  br label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6Point_IfEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i549, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt6vectorIN2cv6Point_IfEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37.i737, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv6Point_IfEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit.i726
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store i32 0, ptr %18, align 8, !tbaa !126
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 0, ptr %i.bn, align 4, !tbaa !127
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !21
  switch i64 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread827 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551
  %i.bq = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.br = load i64, ptr %i.bq, align 1
  %i.bs = xor i64 %i.br, 7020938592090679395
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %i.bu = load i16, ptr %i.bt, align 1
  %i.bv = zext i16 %i.bu to i64
  %i.bw = xor i64 %i.bv, 25714
  %i.bx = or i64 %i.bs, %i.bw
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread827

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %141 = bitcast i64 %1 to <2 x i32>
  %142 = add nsw <2 x i32> %141, splat (i32 1)
  store <2 x i32> %142, ptr %18, align 8, !tbaa !25
  br label %bb.m

bb.k:                                             ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i728, %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread827
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553: ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551
  %i.cd = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 1
  %i.cf = xor i64 %i.ce, 7092997294213130339
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = xor i64 %i.ci, 1685217647
  %i.ck = or i64 %i.cf, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread827

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553
  store i64 %1, ptr %18, align 8
  %i.co = add nsw i32 %.sroa.0200.0.extract.trunc, -1
  %i.cp = add nsw i32 %.sroa.5.0.extract.trunc, -1
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread827: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit551, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.52, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread827
  %i.cr = load ptr, ptr %2, align 8, !tbaa !24
  %i.cs = load i64, ptr %i.bo, align 8, !tbaa !21
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cr, i64 noundef %i.cs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit557 unwind label %bb.l ; 0 uses

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.0776.0 = phi i32 [ %.sroa.0200.0.extract.trunc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.co, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread ] ; 4 uses
  %.sroa.9.0 = phi i32 [ %.sroa.5.0.extract.trunc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.cp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit553.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZN2cv5aruco10DictionaryC1Ev(ptr noundef nonnull align 8 dereferenceable(216) %19)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !21
  %i.cx = icmp eq i64 %i.cw, 4
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread828

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559: ; preds = %bb.n
  %i.cy = load ptr, ptr %6, align 8, !tbaa !24
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = icmp ne i32 %i.cz, 1701736270
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread828

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZN2cv5aruco23getPredefinedDictionaryENS0_24PredefinedDictionaryTypeE(ptr dead_on_unwind nonnull writable sret(%"class.cv::aruco::Dictionary") align 8 %20, i32 noundef %5)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread
  %i.dd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(216) %19, ptr noundef nonnull align 8 dereferenceable(216) %20)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 208
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 208
  %i.dg = load i64, ptr %i.df, align 8
  store i64 %i.dg, ptr %i.de, align 8
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.aa

bb.q:                                             ; preds = %bb.m
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(216) %20) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn382 = phi { ptr, i32 } [ %i.dj, %bb.s ], [ %i.di, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.iz

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread828: ; preds = %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.dk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.dk, ptr %22, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !21
  store i8 0, ptr %i.dk, align 8, !tbaa !22
  invoke void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread828
  %i.dm = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dk
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.do = load i64, ptr %i.dk, align 8, !tbaa !22
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  invoke void @_ZNK2cv11FileStorage4rootEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %23, ptr noundef nonnull align 8 dereferenceable(64) %21, i32 noundef 0)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dq = invoke noundef zeroext i1 @_ZN2cv5aruco10Dictionary14readDictionaryERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(216) %19, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.w unwind label %bb.y       ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.aa

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit559.thread828
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dk
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561: ; preds = %bb.x
  %i.du = load i64, ptr %i.dk, align 8, !tbaa !22
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i561
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.z

bb.y:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @_ZN2cv11FileStorageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.y ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit563 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.iz

bb.aa:                                            ; preds = %bb.w, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.dx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5aruco12CharucoBoardC1ERKNS_5Size_IiEEffRKNS0_10DictionaryERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(8) %18, float noundef %3, float noundef %4, ptr noundef nonnull align 8 dereferenceable(216) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(422) %26) #24
  %i.dy = getelementptr inbounds nuw i8, ptr %26, i64 208 ; 3 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.dy) #24
  %i.dz = getelementptr inbounds nuw i8, ptr %26, i64 416
  store i32 2, ptr %i.dz, align 8, !tbaa !135
  %i.ea = getelementptr inbounds nuw i8, ptr %26, i64 420
  store i8 0, ptr %i.ea, align 4, !tbaa !136
  %i.eb = getelementptr inbounds nuw i8, ptr %26, i64 421
  store i8 1, ptr %i.eb, align 1, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.ec = getelementptr inbounds nuw i8, ptr %27, i64 72
  store float 2.100000e-01, ptr %i.ec, align 8, !tbaa !140
  store i32 3, ptr %27, align 8, !tbaa !141
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 23, ptr %i.ed, align 4, !tbaa !142
end_hunk_0
