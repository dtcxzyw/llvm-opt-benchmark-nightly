Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/detect_diamonds?download=true
inline.NumInlined: 646
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__cxx_global_array_dtor:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_113refineMethodsB5cxx11E, i64 16), align 16, !tbaa !17
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.cv::FileStorage", align 8   ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.cv::FileNode", align 8      ; 5 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::FileStorage", align 8  ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.cv::FileNode", align 8     ; 5 uses
  %13 = alloca %"class.cv::FileNode", align 8     ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.cv::FileStorage", align 8  ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.cv::FileNode", align 8     ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.cv::aruco::Dictionary", align 8 ; 8 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.cv::CommandLineParser", align 8 ; 28 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.cv::aruco::Dictionary", align 8 ; 11 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %38 = alloca %"struct.cv::aruco::DetectorParameters", align 8 ; 33 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.cv::VideoCapture", align 8 ; 10 uses
  %47 = alloca %"class.cv::aruco::CharucoBoard", align 8 ; 7 uses
  %48 = alloca %"class.cv::Size_", align 4        ; 6 uses
  %49 = alloca %"class.cv::aruco::CharucoDetector", align 8 ; 9 uses
  %50 = alloca %"struct.cv::aruco::CharucoParameters", align 8 ; 11 uses
  %51 = alloca %"struct.cv::aruco::RefineParameters", align 4 ; 5 uses
  %52 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %54 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %55 = alloca %"class.std::vector", align 8      ; 10 uses
  %56 = alloca %"class.std::vector.11", align 8   ; 15 uses
  %57 = alloca %"class.std::vector.16", align 8   ; 11 uses
  %58 = alloca %"class.std::vector.16", align 8   ; 14 uses
  %59 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %60 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %63 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %64 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %65 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %66 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %67 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %68 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %69 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %70 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %71 = alloca %"class.std::vector.16", align 8   ; 10 uses
  %72 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %73 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %74 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %75 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %76 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %77 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %78 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %79 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %80 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %81 = alloca %"class.cv::Scalar_", align 16     ; 3 uses
  %82 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %83 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %84 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %85 = alloca %"class.cv::Scalar_", align 8      ; 3 uses
  %86 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %87 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %88 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %89 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %90 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %92 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.i = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.i, ptr %28, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i64 1244, ptr %i.h, align 8, !tbaa !61
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc unwind label %bb.ce    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %28, align 8, !tbaa !16
  %i.k = load i64, ptr %i.h, align 8, !tbaa !61   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1244) %i.j, ptr noundef nonnull align 1 dereferenceable(1244) @.str.18, i64 1244, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  invoke void @_ZN2cv17CommandLineParserC1EiPKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.a unwind label %bb.cf

bb.a:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %28, align 8, !tbaa !16    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.i
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.i, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.r = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.r, ptr %29, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 22, ptr %i.g, align 8, !tbaa !61
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc257 unwind label %bb.cg ; 2 uses

.noexc257:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.s, ptr %29, align 8, !tbaa !16
  %i.t = load i64, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.s, ptr noundef nonnull align 1 dereferenceable(22) @.str.19, i64 22, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !19
  %i.v = load ptr, ptr %29, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  invoke void @_ZN2cv17CommandLineParser5aboutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.b unwind label %bb.ch

bb.b:                                             ; preds = %.noexc257
  %i.x = load ptr, ptr %29, align 8, !tbaa !16    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.r
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %bb.b
  %i.z = load i64, ptr %i.r, align 8, !tbaa !17
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.ab, ptr %30, align 8, !tbaa !18
  store i16 27763, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 2, ptr %i.ac, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %30, i64 18
  store i8 0, ptr %i.ad, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !21
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %30, i1 noundef zeroext true, i32 noundef 7, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %bb.ci

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261
  %i.ae = load float, ptr %i.f, align 4, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.af = load ptr, ptr %30, align 8, !tbaa !16   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ab
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.c
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.aj, ptr %31, align 8, !tbaa !18
  store i16 27757, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 2, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %31, i64 18
  store i8 0, ptr %i.al, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !21
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %31, i1 noundef zeroext true, i32 noundef 7, ptr noundef nonnull %i.e)
          to label %bb.d unwind label %bb.cj

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.am = load float, ptr %i.e, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.an = load ptr, ptr %31, align 8, !tbaa !16   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aj
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.d
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.ar, ptr %32, align 8, !tbaa !18
  store i8 99, ptr %i.ar, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 1, ptr %i.as, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %32, i64 17
  store i8 0, ptr %i.at, align 1, !tbaa !17
  %i.au = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser3hasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.e unwind label %bb.ck      ; 2 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %i.av = load ptr, ptr %32, align 8, !tbaa !16   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ar
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.e
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.az = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.az, ptr %33, align 8, !tbaa !18
  store i16 29537, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 2, ptr %i.ba, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %33, i64 18
  store i8 0, ptr %i.bb, align 2, !tbaa !17
  %i.bc = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser3hasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.f unwind label %bb.cl      ; 2 uses

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %i.bd = load ptr, ptr %33, align 8, !tbaa !16   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.az
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.f
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !17
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br i1 %i.bc, label %._crit_edge.i.i293, label %.critedge254

._crit_edge.i.i293:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.bh, ptr %34, align 8, !tbaa !18
  store i16 29537, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 2, ptr %i.bi, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %34, i64 18
  store i8 0, ptr %i.bj, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !21
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %34, i1 noundef zeroext true, i32 noundef 7, ptr noundef nonnull %i.d)
          to label %.critedge unwind label %bb.cm

.critedge:                                        ; preds = %._crit_edge.i.i293
  %i.bk = load float, ptr %i.d, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.bl = load ptr, ptr %34, align 8, !tbaa !16   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bh
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %.critedge
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !17
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.critedge254

.critedge254:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %i.bp = phi float [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  invoke void @_ZN2cv5aruco10DictionaryC1Ev(ptr noundef nonnull align 8 dereferenceable(216) %35)
          to label %.noexc302 unwind label %bb.cn

.noexc302:                                        ; preds = %.critedge254
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !62
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bq, ptr %17, align 8, !tbaa !18, !noalias !62
  store i16 25699, ptr %i.bq, align 8, !noalias !62
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 2, ptr %i.br, align 8, !tbaa !19, !noalias !62
  %i.bs = getelementptr inbounds nuw i8, ptr %17, i64 18
  store i8 0, ptr %i.bs, align 2, !tbaa !17, !noalias !62
  %i.bt = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser3hasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %.noexc302
  %i.bu = load ptr, ptr %17, align 8, !tbaa !16, !noalias !62 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bq
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !17, !noalias !62
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !62
  br i1 %i.bt, label %._crit_edge.i.i52.i, label %._crit_edge.i.i77.i

._crit_edge.i.i52.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22, !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22, !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22, !noalias !62
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.by, ptr %20, align 8, !tbaa !18, !noalias !62
  store i16 25699, ptr %i.by, align 8, !noalias !62
  %i.bz = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 2, ptr %i.bz, align 8, !tbaa !19, !noalias !62
  %i.ca = getelementptr inbounds nuw i8, ptr %20, i64 18
  store i8 0, ptr %i.ca, align 2, !tbaa !17, !noalias !62
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.cb, ptr %19, align 8, !tbaa !18, !alias.scope !63, !noalias !62
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !19, !alias.scope !63, !noalias !62
  store i8 0, ptr %i.cb, align 8, !tbaa !17, !alias.scope !63, !noalias !62
  invoke void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %20, i1 noundef zeroext true, i32 noundef 3, ptr noundef nonnull align 8 %19)
          to label %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i52.i
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %19, align 8, !tbaa !16, !alias.scope !63, !noalias !62 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cb
  br i1 %i.cf, label %.body.i, label %.body.i.sink.split

_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i: ; preds = %._crit_edge.i.i52.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22, !noalias !62
  %i.cg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.cg, ptr %21, align 8, !tbaa !18, !noalias !62
  %i.ch = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ch, align 8, !tbaa !19, !noalias !62
  store i8 0, ptr %i.cg, align 8, !tbaa !17, !noalias !62
  invoke void @_ZN2cv11FileStorageC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b.exit.i
  %i.ci = load ptr, ptr %21, align 8, !tbaa !16, !noalias !62 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.cg
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %bb.i
  %i.ck = load i64, ptr %i.cg, align 8, !tbaa !17, !noalias !62
  %i.cl = add i64 %i.ck, 1
end_hunk_0
begin_hunk_1_@main:.noexc.i
  store ptr %i.qr, ptr %42, align 8, !tbaa !16
  %i.qz = load <2 x i64>, ptr %i.qj, align 8, !tbaa !17
  store <2 x i64> %i.qz, ptr %i.pw, align 8, !tbaa !17
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ra = load i64, ptr %i.pv, align 8, !tbaa !17
  store ptr %i.qr, ptr %42, align 8, !tbaa !16
  %i.rb = load <2 x i64>, ptr %i.qj, align 8, !tbaa !17
  store <2 x i64> %i.rb, ptr %i.pw, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.qp, null
  br i1 %.not.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.qp, ptr %44, align 8, !tbaa !16
  store i64 %i.ra, ptr %i.qi, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.qi, ptr %44, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dd, %bb.de
  %i.rc = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.qp, %bb.dd ], [ %i.qi, %bb.de ]
  store i64 0, ptr %i.qj, align 8, !tbaa !19
  store i8 0, ptr %i.rc, align 1, !tbaa !17
  %i.rd = load ptr, ptr %44, align 8, !tbaa !16   ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.qi
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.rf = load i64, ptr %i.qi, align 8, !tbaa !17
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396
  %i.rh = load ptr, ptr %45, align 8, !tbaa !16   ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.qf
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %i.rj = load i64, ptr %i.qf, align 8, !tbaa !17
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.dh

bb.df:                                            ; preds = %_ZNSolsEPFRSoS_E.exit371
  %i.rl = landingpad { ptr, i32 }
          cleanup
  %i.rm = load ptr, ptr %41, align 8, !tbaa !16   ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.pn
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402: ; preds = %bb.df
  %i.ro = load i64, ptr %i.pn, align 8, !tbaa !17
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit404: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body321

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
  %i.rq = landingpad { ptr, i32 }
          cleanup
  %i.rr = load ptr, ptr %43, align 8, !tbaa !16   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.px
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %bb.dg
  %i.rt = load i64, ptr %i.px, align 8, !tbaa !17
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %bb.hp

.body394:                                         ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i391
  %i.rv = load ptr, ptr %45, align 8, !tbaa !16   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.qf
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408: ; preds = %.body394
  %i.rx = load i64, ptr %i.qf, align 8, !tbaa !17
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %.body394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.hp

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  %i.rz = invoke noundef zeroext i1 @_ZNK2cv17CommandLineParser5checkEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  br i1 %i.rz, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZNK2cv17CommandLineParser11printErrorsEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.ho unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  invoke void @_ZN2cv12VideoCaptureC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %46)
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.sb = load i64, ptr %i.pw, align 8, !tbaa !19
  %i.sc = icmp eq i64 %i.sb, 0
  br i1 %i.sc, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sd = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(25) %46, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 0)
          to label %bb.dr unwind label %bb.dp     ; 0 uses

bb.do:                                            ; preds = %bb.dl
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.dp:                                            ; preds = %bb.dq, %bb.dn
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.dq:                                            ; preds = %bb.dm
  %i.sg = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4openEii(ptr noundef nonnull align 8 dereferenceable(25) %46, i32 noundef %i.pq, i32 noundef 0)
          to label %bb.dr unwind label %bb.dp     ; 0 uses

bb.dr:                                            ; preds = %bb.dq, %bb.dn
  %.080 = phi i32 [ 0, %bb.dn ], [ 10, %bb.dq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  store i32 3, ptr %48, align 4, !tbaa !117
  %i.sh = getelementptr inbounds nuw i8, ptr %48, i64 4
  store i32 3, ptr %i.sh, align 4, !tbaa !118
  %i.si = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ds unwind label %bb.ef

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN2cv5aruco12CharucoBoardC1ERKNS_5Size_IiEEffRKNS0_10DictionaryERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef %i.ae, float noundef %i.am, ptr noundef nonnull align 8 dereferenceable(216) %35, ptr noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %bb.dt unwind label %bb.ef

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(422) %50) #22
  %i.sj = getelementptr inbounds nuw i8, ptr %50, i64 208 ; 3 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.sj) #22
  %i.sk = getelementptr inbounds nuw i8, ptr %50, i64 416
  store i32 2, ptr %i.sk, align 8, !tbaa !126
  %i.sl = getelementptr inbounds nuw i8, ptr %50, i64 420
  store i8 0, ptr %i.sl, align 4, !tbaa !127
  %i.sm = getelementptr inbounds nuw i8, ptr %50, i64 421
  store i8 1, ptr %i.sm, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  invoke void @_ZN2cv5aruco16RefineParametersC1Effb(ptr noundef nonnull align 4 dereferenceable(9) %51, float noundef 1.000000e+01, float noundef 3.000000e+00, i1 noundef zeroext true)
          to label %bb.du unwind label %bb.eg

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN2cv5aruco15CharucoDetectorC1ERKNS0_12CharucoBoardERKNS0_17CharucoParametersERKNS0_18DetectorParametersERKNS0_16RefineParametersE(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(422) %50, ptr noundef nonnull align 8 dereferenceable(192) %38, ptr noundef nonnull align 4 dereferenceable(9) %51)
          to label %.split799 unwind label %bb.eg

.split799:                                        ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.sj) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(422) %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  %i.sn = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.sq = getelementptr inbounds nuw i8, ptr %59, i64 20
  %i.sr = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.st = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.sv = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.sw = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %93 = insertelement <2 x float> poison, float %i.ae, i64 0
  %94 = shufflevector <2 x float> %93, <2 x float> poison, <2 x i32> zeroinitializer
  %95 = fmul <2 x float> %94, <float -5.000000e-01, float 5.000000e-01> ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %64, i64 24 ; 8 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.td = getelementptr inbounds nuw i8, ptr %65, i64 20
  %i.te = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %66, i64 20
  %i.ti = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %67, i64 20
  %i.tl = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.tn = getelementptr inbounds nuw i8, ptr %68, i64 20
  %i.to = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.tp = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.tv = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.tw = getelementptr inbounds nuw i8, ptr %72, i64 20
  %i.tx = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.ty = getelementptr inbounds nuw i8, ptr %73, i64 16
  %i.tz = getelementptr inbounds nuw i8, ptr %73, i64 20
  %i.ua = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.uc = getelementptr inbounds nuw i8, ptr %74, i64 20
  %i.ud = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.ue = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.uf = getelementptr inbounds nuw i8, ptr %75, i64 20
  %i.ug = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %77, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %78, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.uq = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.ur = getelementptr inbounds nuw i8, ptr %80, i64 20
  %i.us = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.uv = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.uw = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %83, i64 20
  %i.uy = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.va = getelementptr inbounds nuw i8, ptr %84, i64 20
  %i.vb = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.vc = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.ve = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.vg = getelementptr inbounds nuw i8, ptr %87, i64 20
  %i.vh = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %88, i64 20
  %i.vk = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.vl = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.vn = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.vo = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.vp = fmul float %i.ae, 1.100000e+00
  %i.vq = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 6 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %92, i64 20
  %i.vu = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %91, i64 19
  %i.wb = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  %96 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %97 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.split799
  %.079 = phi double [ 0.000000e+00, %.split799 ], [ %i.aaf, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %.078 = phi i32 [ 0, %.split799 ], [ %i.aag, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.wc = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4grabEv(ptr noundef nonnull align 8 dereferenceable(25) %46)
          to label %bb.dw unwind label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.wc, label %bb.dx, label %bb.gw

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %52) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %53) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  store i64 0, ptr %i.so, align 8
  store i32 33619968, ptr %54, align 8, !tbaa !130
  store ptr %52, ptr %i.sn, align 8, !tbaa !131
  %i.wd = invoke noundef zeroext i1 @_ZN2cv12VideoCapture8retrieveERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(25) %46, ptr noundef nonnull align 8 dereferenceable(24) %54, i32 noundef 0)
          to label %bb.dy unwind label %bb.ei     ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  %i.we = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.dz unwind label %bb.ej

bb.dz:                                            ; preds = %bb.dy
  %i.wf = sitofp i64 %i.we to double
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  store i32 0, ptr %i.sp, align 8, !tbaa !117
  store i32 0, ptr %i.sq, align 4, !tbaa !118
  store i32 16842752, ptr %59, align 8, !tbaa !130
  store ptr %52, ptr %i.sr, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  store i64 0, ptr %i.st, align 8
  store i32 -2113667035, ptr %60, align 8, !tbaa !130
  store ptr %58, ptr %i.ss, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  store i64 0, ptr %i.sv, align 8
  store i32 -2113732508, ptr %61, align 8, !tbaa !130
  store ptr %56, ptr %i.su, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  store i64 0, ptr %i.sx, align 8
  store i32 -2096889819, ptr %62, align 8, !tbaa !130
  store ptr %57, ptr %i.sw, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #22
  store i64 0, ptr %i.sz, align 8
  store i32 -2096955388, ptr %63, align 8, !tbaa !130
  store ptr %55, ptr %i.sy, align 8, !tbaa !131
  invoke void @_ZNK2cv5aruco15CharucoDetector14detectDiamondsERKNS_11_InputArrayERKNS_12_OutputArrayES7_RKNS_17_InputOutputArrayESA_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %62, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %bb.ea unwind label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit502.thread

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  %i.wg = load ptr, ptr %i.ta, align 8, !tbaa !134 ; 2 uses
  %i.wh = load ptr, ptr %56, align 8, !tbaa !135  ; 2 uses
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = sub i64 %i.wi, %i.wj
  %i.wl = ashr exact i64 %i.wk, 4                 ; 6 uses
  %i.wm = icmp ne ptr %i.wg, %i.wh
  %or.cond3 = and i1 %i.au, %i.wm
  br i1 %or.cond3, label %bb.eb, label %bb.fg

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #22
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %64, i32 noundef 4, i32 noundef 1, i32 noundef 69)
          to label %bb.ec unwind label %bb.ek

bb.ec:                                            ; preds = %bb.eb
  %i.wn = icmp ugt i64 %i.wl, 384307168202282325
  br i1 %i.wn, label %bb.ed, label %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
          to label %.noexc541 unwind label %.loopexit.split-lp

.noexc541:                                        ; preds = %bb.ed
  unreachable

_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ec
  %i.wo = mul nuw nsw i64 %i.wl, 24               ; 4 uses
  %i.wp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wo) #24
          to label %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i547 unwind label %.loopexit660 ; 8 uses

_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i547: ; preds = %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.wp, i8 0, i64 %i.wo, i1 false), !tbaa !94
  %i.wq = getelementptr inbounds nuw [24 x i8], ptr %i.wp, i64 %i.wl ; 4 uses
  %i.wr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wo) #24
          to label %bb.ee unwind label %.loopexit660 ; 7 uses

bb.ee:                                            ; preds = %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i547
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.wr, i8 0, i64 %i.wo, i1 false), !tbaa !94
  %i.ws = getelementptr inbounds nuw [24 x i8], ptr %i.wr, i64 %i.wl ; 3 uses
  br i1 %i.bc, label %.lr.ph796, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ee
  %i.wt = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 2 uses
  store <2 x float> %95, ptr %i.wt, align 4
  %.sroa.6602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store float 0.000000e+00, ptr %.sroa.6602.0..sroa_idx, align 4
  %i.wu = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  store <2 x float> %97, ptr %i.wv, align 4
  %.sroa.6599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wu, i64 20
  store float 0.000000e+00, ptr %.sroa.6599.0..sroa_idx, align 4
  %i.ww = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 2 uses
  %.sroa.5595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  store <2 x float> %96, ptr %.sroa.5595.0..sroa_idx, align 4
  %.sroa.6596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 32
  store float 0.000000e+00, ptr %.sroa.6596.0..sroa_idx, align 4
  %i.wx = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 36
  store <2 x float> %i.wb, ptr %i.wy, align 4
  %.sroa.6593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wx, i64 44
  store float 0.000000e+00, ptr %.sroa.6593.0..sroa_idx, align 4
  br label %.lr.ph

bb.ef:                                            ; preds = %bb.ds, %bb.dr
  %i.wz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %bb.hl

bb.eg:                                            ; preds = %bb.du, %bb.dt
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.sj) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(422) %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  br label %bb.hk

bb.eh:                                            ; preds = %bb.dv
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.ei:                                            ; preds = %bb.dx
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  br label %bb.gv

bb.ej:                                            ; preds = %bb.dy
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit502.thread: ; preds = %bb.dz
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit504

bb.ek:                                            ; preds = %bb.eb
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit660:                                     ; preds = %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i547
  %.sroa.19627.0.ph = phi ptr [ %i.wq, %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i547 ], [ null, %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  %.sroa.0616.0.ph = phi ptr [ %i.wp, %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i547 ], [ null, %_ZNKSt6vectorIN2cv3VecIdLi3EEESaIS2_EE12_M_check_lenEmPKc.exit.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

.loopexit.split-lp:                               ; preds = %bb.ed
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ep
  %.077794 = phi i64 [ %i.xx, %bb.ep ], [ 0, %.lr.ph.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #22
  store i32 0, ptr %i.tc, align 8, !tbaa !117
  store i32 0, ptr %i.td, align 4, !tbaa !118
  store i32 16842752, ptr %65, align 8, !tbaa !130
  store ptr %64, ptr %i.te, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #22
  %i.xg = load ptr, ptr %i.tf, align 8, !tbaa !27
  %i.xh = load ptr, ptr %58, align 8, !tbaa !28   ; 2 uses
  %i.xi = ptrtoint ptr %i.xg to i64
  %i.xj = ptrtoint ptr %i.xh to i64
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = sdiv exact i64 %i.xk, 24                ; 2 uses
  %.not.i.i416 = icmp ult i64 %.077794, %i.xl
  br i1 %.not.i.i416, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.31, i64 noundef %.077794, i64 noundef %i.xl) #23
          to label %.noexc417 unwind label %bb.eq

.noexc417:                                        ; preds = %bb.el
  unreachable

bb.em:                                            ; preds = %.lr.ph
  %i.xm = getelementptr inbounds nuw [24 x i8], ptr %i.xh, i64 %.077794 ; 3 uses
  store i32 0, ptr %i.tg, align 8, !tbaa !117
  store i32 0, ptr %i.th, align 4, !tbaa !118
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !31
  %i.xp = load ptr, ptr %i.xm, align 8, !tbaa !32
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %i.xt = ashr exact i64 %i.xs, 3                 ; 2 uses
  %.not.i418 = icmp ugt i64 %i.xt, 2147483647
  br i1 %.not.i418, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.xt, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #23
          to label %.noexc419 unwind label %bb.eq

.noexc419:                                        ; preds = %bb.en
  unreachable

bb.eo:                                            ; preds = %bb.em
  store i32 -2130509787, ptr %66, align 8, !tbaa !130
  store ptr %i.xm, ptr %i.ti, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #22
  store i32 0, ptr %i.tj, align 8, !tbaa !117
  store i32 0, ptr %i.tk, align 4, !tbaa !118
  store i32 16842752, ptr %67, align 8, !tbaa !130
  store ptr %36, ptr %i.tl, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #22
  store i32 0, ptr %i.tm, align 8, !tbaa !117
  store i32 0, ptr %i.tn, align 4, !tbaa !118
  store i32 16842752, ptr %68, align 8, !tbaa !130
  store ptr %37, ptr %i.to, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  %i.xu = getelementptr inbounds nuw [24 x i8], ptr %i.wp, i64 %.077794
  store i32 -1040056314, ptr %69, align 8, !tbaa !130
  store ptr %i.xu, ptr %i.tp, align 8, !tbaa !131
  store i64 12884901889, ptr %i.tq, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  %i.xv = getelementptr inbounds nuw [24 x i8], ptr %i.wr, i64 %.077794
  store i32 -1040056314, ptr %70, align 8, !tbaa !130
  store ptr %i.xv, ptr %i.tr, align 8, !tbaa !131
  store i64 12884901889, ptr %i.ts, align 8, !tbaa !22
  %i.xw = invoke noundef zeroext i1 @_ZN2cv8solvePnPERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayES5_bi(ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %70, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ep unwind label %bb.er     ; 0 uses

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  %i.xx = add nuw i64 %.077794, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.xx, %i.wl
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !57

bb.eq:                                            ; preds = %bb.en, %bb.el
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.er:                                            ; preds = %bb.eo
  %i.xz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.pn195.pn.pn.pn.pn = phi { ptr, i32 } [ %i.xz, %bb.er ], [ %i.xy, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  br label %bb.fe

.lr.ph796:                                        ; preds = %bb.ee, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit
  %.076795 = phi i64 [ %i.zw, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EED2Ev.exit ], [ 0, %bb.ee ] ; 8 uses
  %i.ya = load ptr, ptr %56, align 8, !tbaa !135
  %i.yb = getelementptr inbounds nuw [16 x i8], ptr %i.ya, i64 %.076795
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  %i.ye = load ptr, ptr %58, align 8, !tbaa !28
  %i.yf = getelementptr inbounds nuw [24 x i8], ptr %i.ye, i64 %.076795
  invoke void @_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %i.yf)
          to label %bb.et unwind label %bb.fa

bb.et:                                            ; preds = %.lr.ph796
  %i.yg = sitofp i32 %i.yd to float
  %i.yh = fmul float %i.bp, %i.yg                 ; 2 uses
  %i.yi = fmul float %i.yh, -5.000000e-01         ; 4 uses
  %i.yj = fmul float %i.yh, 5.000000e-01          ; 4 uses
  %i.yk = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 3 uses
  store float %i.yi, ptr %i.yk, align 4
  %.sroa.5579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yk, i64 4
  store float %i.yj, ptr %.sroa.5579.0..sroa_idx, align 4
  %.sroa.6580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  store float 0.000000e+00, ptr %.sroa.6580.0..sroa_idx, align 4
  %i.yl = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 12
  store float %i.yj, ptr %i.ym, align 4
  %.sroa.5576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store float %i.yj, ptr %.sroa.5576.0..sroa_idx, align 4
  %.sroa.6577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yl, i64 20
  store float 0.000000e+00, ptr %.sroa.6577.0..sroa_idx, align 4
  %i.yn = load ptr, ptr %i.tb, align 8, !tbaa !136 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 24
  store float %i.yj, ptr %i.yo, align 4
  %.sroa.5573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yn, i64 28
  store float %i.yi, ptr %.sroa.5573.0..sroa_idx, align 4
end_hunk_1
