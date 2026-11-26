Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_geom?download=true
inline.NumInlined: 988
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@__gxx_personality_v0
declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !104
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !41
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  %i.g = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.g, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !25
  store i8 %i.i, ptr %i.h, align 1, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !105
  %i.l = load ptr, ptr %0, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv9minMaxIdxERKNS_11_InputArrayEPdS3_PiS4_S2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
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
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv13stereoRectifyERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEES2_S2_RKNS_12_OutputArrayES7_S7_S7_S7_idS4_PNS_5Rect_IiEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %12, double noundef %13, i64 %14, ptr nofree noundef writeonly captures(address_is_null) %15, ptr nofree noundef writeonly captures(address_is_null) %16) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %23 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %28 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 34 uses
  %35 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.std::allocator", align 1   ; 3 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %43 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %45 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %51 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %53 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %54 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %55 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %56 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %57 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %58 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %59 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %60 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %61 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %62 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %63 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %64 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %65 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %66 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %67 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %68 = alloca %"class.cv::Mat_", align 8         ; 10 uses
  %69 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %70 = alloca [4 x %"class.cv::Point_.17"], align 16 ; 13 uses
  %71 = alloca [4 x %"class.cv::Point3_"], align 16 ; 9 uses
  %72 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %73 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %74 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %75 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %76 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %77 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %78 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %79 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %80 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %81 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %82 = alloca %"class.cv::TermCriteria", align 8 ; 6 uses
  %83 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %84 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %i.b = alloca [3 x [3 x double]], align 16      ; 13 uses
  %85 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %86 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %87 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %88 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %89 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %90 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %91 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  %92 = alloca %"class.cv::Scalar_", align 16     ; 9 uses
  %93 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %94 = alloca %"class.cv::Mat", align 8          ; 15 uses
  %95 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %96 = alloca %"class.cv::Rect_", align 16       ; 10 uses
  %97 = alloca %"class.cv::Rect_", align 16       ; 10 uses
  %98 = alloca %"class.cv::Rect_", align 16       ; 7 uses
  %99 = alloca %"class.cv::Rect_", align 16       ; 7 uses
  %100 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %101 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %102 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %103 = alloca %"class.cv::_InputArray", align 8 ; 8 uses
  %i.c = alloca [16 x double], align 16           ; 14 uses
  %104 = alloca %"class.cv::Mat", align 8         ; 7 uses
  %.sroa.0169.0.extract.trunc = trunc i64 %4 to i32 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i64 %4, 32
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 2 uses
  %.sroa.0554.0.extract.trunc = trunc i64 %14 to i32 ; 2 uses
  %.sroa.15.0.extract.shift = lshr i64 %14, 32
  %.sroa.15.0.extract.trunc = trunc nuw i64 %.sroa.15.0.extract.shift to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.d = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %5), !noalias !124
  %i.e = icmp eq i32 %i.d, 65536
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12, !noalias !124
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.g)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %20) #19
  %i.h = load i32, ptr %20, align 8, !tbaa !20
  %i.i = and i32 %i.h, -4096
  %i.j = or disjoint i32 %i.i, 6
  store i32 %i.j, ptr %20, align 8, !tbaa !20
  %i.k = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %_ZN2cv4Mat_IdEC2EONS_3MatE.exit unwind label %.body ; 0 uses

.body:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.gf

_ZN2cv4Mat_IdEC2EONS_3MatE.exit:                  ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %20) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.m = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc unwind label %bb.j, !noalias !125

.noexc:                                           ; preds = %_ZN2cv4Mat_IdEC2EONS_3MatE.exit
  %i.n = icmp eq i32 %i.m, 65536
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12, !noalias !125
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.p)
          to label %_ZNK2cv11_InputArray6getMatEi.exit357 unwind label %bb.j

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit357 unwind label %bb.j

_ZNK2cv11_InputArray6getMatEi.exit357:            ; preds = %bb.d, %bb.e
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #19
  %i.q = load i32, ptr %23, align 8, !tbaa !20
  %i.r = and i32 %i.q, -4096
  %i.s = or disjoint i32 %i.r, 6
  store i32 %i.s, ptr %23, align 8, !tbaa !20
  %i.t = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %_ZN2cv4Mat_IdEC2EONS_3MatE.exit360 unwind label %.body358 ; 0 uses

.body358:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit357
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  br label %bb.k

_ZN2cv4Mat_IdEC2EONS_3MatE.exit360:               ; preds = %_ZNK2cv11_InputArray6getMatEi.exit357
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %23) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %28, i32 noundef 3, i32 noundef 1, i32 noundef 6)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZN2cv4Mat_IdEC2EONS_3MatE.exit360
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #19
  %i.v = load ptr, ptr %28, align 8, !tbaa !50, !noalias !126 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(688) %28, ptr noundef nonnull align 8 dereferenceable(208) %27, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body361

.body361:                                         ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %28) #19
  br label %bb.m

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %28, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aa) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %28, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ab) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %28, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ac) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  %105 = bitcast i64 %4 to <2 x i32>
  %i.ad = sitofp <2 x i32> %105 to <2 x double>   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !36
  %i.ag = icmp eq i32 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, 3
  %or.cond = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.g, label %bb.o

bb.g:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %i.al, align 4, !tbaa !35
  store i32 16842752, ptr %29, align 8, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %19, ptr %i.am, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.an = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 0, ptr %i.ao, align 8
  store i32 33619968, ptr %30, align 8, !tbaa !30
  store ptr %25, ptr %i.an, align 8, !tbaa !12
  %i.ap = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.r

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZN2cv4Mat_IdEC2EONS_3MatE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.body358, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %.body358 ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.ge

bb.l:                                             ; preds = %_ZN2cv4Mat_IdEC2EONS_3MatE.exit360
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.body361, %bb.l
  %.pn239 = phi { ptr, i32 } [ %i.z, %.body361 ], [ %i.ar, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.gd

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.gc

bb.o:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.at = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 0, ptr %i.au, align 8
  store i32 33619968, ptr %31, align 8, !tbaa !30
  store ptr %25, ptr %i.at, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.gc

bb.r:                                             ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !30
  store ptr %25, ptr %i.aw, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef -1, double noundef -5.000000e-01, double noundef 0.000000e+00)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.ay, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !35
  store i32 16842752, ptr %32, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %25, ptr %i.ba, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 0, ptr %i.bc, align 8
  store i32 33619968, ptr %33, align 8, !tbaa !30
  store ptr %26, ptr %i.bb, align 8, !tbaa !12
  %i.bd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.t unwind label %bb.aj

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %35, ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %34) #19
  %i.be = load ptr, ptr %35, align 8, !tbaa !50, !noalias !127 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(688) %35, ptr noundef nonnull align 8 dereferenceable(208) %34, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit366 unwind label %.body364

.body364:                                         ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %35) #19
  br label %bb.al

_ZNK2cv7MatExprcvNS_3MatEEv.exit366:              ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %35, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bj) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %35, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bk) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %35, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %34, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !53
  %i.bo = icmp slt i32 %i.bn, 2
  br i1 %i.bo, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit366
  %i.bp = load i32, ptr %34, align 8, !tbaa !20
  %i.bq = and i32 %i.bp, 16384
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %34, i64 84
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !40 ; 7 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !29
  %i.by = call double @llvm.fabs.f64(double %i.bx) ; 2 uses
  br i1 %or.cond.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %34, i64 88
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !27
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %34, i64 128
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cd
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %34, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !31
  %.fr = freeze i32 %i.cg                         ; 3 uses
  %i.ch = add i32 %.fr, 1
  %i.ci = icmp ult i32 %i.ch, 3
  %i.cj = select i1 %i.ci, i32 %.fr, i32 0        ; 2 uses
  %i.ck = mul nsw i32 %i.cj, %.fr
  %i.cl = sub nsw i32 1, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %34, i64 128
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !41
  %i.co = sext i32 %i.cj to i64
  %i.cp = mul i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cp
  %i.cr = sext i32 %i.cl to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit366
end_hunk_0
begin_hunk_1_@_ZN2cv13stereoRectifyERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEES2_S2_RKNS_12_OutputArrayES7_S7_S7_S7_idS4_PNS_5Rect_IiEESA_:bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %39, ptr %i.fh, align 8, !tbaa !12
  %i.fi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.fj = invoke noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %bb.aw unwind label %bb.bc     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %i.fk = fcmp ogt double %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.fl = call double @llvm.fabs.f64(double %i.ei)
  %i.fm = fdiv double %i.fl, %i.en
  %i.fn = call double @acos(double noundef %i.fm) #19
  %i.fo = fdiv double %i.fn, %i.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.fp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.fq, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !30
  store ptr %39, ptr %i.fp, align 8, !tbaa !12
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef -1, double noundef %i.fo, double noundef 0.000000e+00)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.be

bb.az:                                            ; preds = %bb.as
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.at
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn255.pn = phi { ptr, i32 } [ %i.fs, %bb.ba ], [ %i.fr, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.fy

bb.bc:                                            ; preds = %bb.av, %bb.au
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br label %bb.fx

bb.bd:                                            ; preds = %bb.ax
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.be:                                            ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.fv, align 8, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %44, i64 20
  store i32 0, ptr %i.fw, align 4, !tbaa !35
  store i32 16842752, ptr %44, align 8, !tbaa !30
  %i.fx = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %39, ptr %i.fx, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.fy = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i64 0, ptr %i.fz, align 8
  store i32 33619968, ptr %45, align 8, !tbaa !30
  store ptr %42, ptr %i.fy, align 8, !tbaa !12
  %i.ga = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bf unwind label %bb.bv

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %bb.bg unwind label %bb.bv

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %46) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.gb = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i32 0, ptr %i.gb, align 8, !tbaa !34
  %i.gc = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 0, ptr %i.gc, align 4, !tbaa !35
  store i32 16842752, ptr %47, align 8, !tbaa !30
  %i.gd = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %42, ptr %i.gd, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.ge = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.ge, align 8, !tbaa !34
  %i.gf = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.gf, align 4, !tbaa !35
  store i32 16842752, ptr %48, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %26, ptr %i.gg, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %50) #19
  %i.gh = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i32 0, ptr %i.gh, align 8, !tbaa !34
  %i.gi = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i32 0, ptr %i.gi, align 4, !tbaa !35
  store i32 16842752, ptr %49, align 8, !tbaa !30
  %i.gj = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %50, ptr %i.gj, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.gk = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i64 0, ptr %i.gl, align 8
  store i32 33619968, ptr %51, align 8, !tbaa !30
  store ptr %46, ptr %i.gk, align 8, !tbaa !12
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %48, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %49, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %51, i32 noundef 2)
          to label %bb.bh unwind label %bb.bw

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bi unwind label %bb.bx

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.gm = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i32 0, ptr %i.gm, align 8, !tbaa !34
  %i.gn = getelementptr inbounds nuw i8, ptr %52, i64 20
  store i32 0, ptr %i.gn, align 4, !tbaa !35
  store i32 16842752, ptr %52, align 8, !tbaa !30
  %i.go = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %42, ptr %i.go, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  %i.gp = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i32 0, ptr %i.gp, align 8, !tbaa !34
  %i.gq = getelementptr inbounds nuw i8, ptr %53, i64 20
  store i32 0, ptr %i.gq, align 4, !tbaa !35
  store i32 16842752, ptr %53, align 8, !tbaa !30
  %i.gr = getelementptr inbounds nuw i8, ptr %53, i64 8
  store ptr %26, ptr %i.gr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %55) #19
  %i.gs = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 0, ptr %i.gs, align 8, !tbaa !34
  %i.gt = getelementptr inbounds nuw i8, ptr %54, i64 20
  store i32 0, ptr %i.gt, align 4, !tbaa !35
  store i32 16842752, ptr %54, align 8, !tbaa !30
  %i.gu = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %55, ptr %i.gu, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  %i.gv = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i64 0, ptr %i.gw, align 8
  store i32 33619968, ptr %56, align 8, !tbaa !30
  store ptr %46, ptr %i.gv, align 8, !tbaa !12
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %54, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %56, i32 noundef 0)
          to label %bb.bj unwind label %bb.by

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.bk unwind label %bb.bx

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %57, ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.bl unwind label %bb.bz

bb.bl:                                            ; preds = %bb.bk
  %i.gx = load ptr, ptr %57, align 8, !tbaa !50   ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !52
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull align 8 dereferenceable(688) %57, ptr noundef nonnull align 8 dereferenceable(208) %34, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ca, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.bl
  %i.hb = getelementptr inbounds nuw i8, ptr %57, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hb) #19
  %i.hc = getelementptr inbounds nuw i8, ptr %57, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hc) #19
  %i.hd = getelementptr inbounds nuw i8, ptr %57, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  %i.he = mul nsw i32 %.sroa.15.0.extract.trunc, %.sroa.0554.0.extract.trunc
  %.not = icmp eq i32 %i.he, 0                    ; 2 uses
  %..copy.fca.0.load.sroa.speculated = select i1 %.not, i32 %.sroa.0169.0.extract.trunc, i32 %.sroa.0554.0.extract.trunc ; 3 uses
  %..copy.fca.1.load.sroa.speculated = select i1 %.not, i32 %.sroa.9.0.extract.trunc, i32 %.sroa.15.0.extract.trunc ; 3 uses
  %106 = insertelement <2 x i32> poison, i32 %..copy.fca.0.load.sroa.speculated, i64 0
  %107 = insertelement <2 x i32> %106, i32 %..copy.fca.1.load.sroa.speculated, i64 1
  %i.hf = sitofp <2 x i32> %107 to <2 x double>
  %i.hg = fdiv <2 x double> %i.hf, %i.ad          ; 2 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %i.hi = extractelement <2 x double> %i.hg, i64 1
  %.v = select i1 %i.eh, double %i.hh, double %i.hi
  %i.hj = fmul double %.v, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #19
  %i.hk = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc377 unwind label %bb.cc, !noalias !128

.noexc377:                                        ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.hl = icmp eq i32 %i.hk, 65536
  br i1 %i.hl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.noexc377
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !12, !noalias !128
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %60, ptr noundef nonnull align 8 dereferenceable(208) %i.hn)
          to label %_ZNK2cv11_InputArray6getMatEi.exit380 unwind label %bb.cc

bb.bn:                                            ; preds = %.noexc377
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %60, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit380 unwind label %bb.cc

_ZNK2cv11_InputArray6getMatEi.exit380:            ; preds = %bb.bm, %bb.bn
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %59) #19
  %i.ho = load i32, ptr %59, align 8, !tbaa !20
  %i.hp = and i32 %i.ho, -4096
  %i.hq = or disjoint i32 %i.hp, 6
  store i32 %i.hq, ptr %59, align 8, !tbaa !20
  %i.hr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %59, ptr noundef nonnull align 8 dereferenceable(208) %60)
          to label %_ZN2cv4Mat_IdEC2EONS_3MatE.exit383 unwind label %.body381 ; 0 uses

.body381:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit380
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #19
  br label %bb.cd

_ZN2cv4Mat_IdEC2EONS_3MatE.exit383:               ; preds = %_ZNK2cv11_InputArray6getMatEi.exit380
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %58, ptr noundef nonnull align 8 dereferenceable(208) %59) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  %i.ht = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc385 unwind label %bb.ce, !noalias !129

.noexc385:                                        ; preds = %_ZN2cv4Mat_IdEC2EONS_3MatE.exit383
  %i.hu = icmp eq i32 %i.ht, 65536
  br i1 %i.hu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc385
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !12, !noalias !129
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %63, ptr noundef nonnull align 8 dereferenceable(208) %i.hw)
          to label %_ZNK2cv11_InputArray6getMatEi.exit388 unwind label %bb.ce

bb.bp:                                            ; preds = %.noexc385
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %63, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit388 unwind label %bb.ce

_ZNK2cv11_InputArray6getMatEi.exit388:            ; preds = %bb.bo, %bb.bp
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %62) #19
  %i.hx = load i32, ptr %62, align 8, !tbaa !20
  %i.hy = and i32 %i.hx, -4096
  %i.hz = or disjoint i32 %i.hy, 6
  store i32 %i.hz, ptr %62, align 8, !tbaa !20
  %i.ia = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %62, ptr noundef nonnull align 8 dereferenceable(208) %63)
          to label %_ZN2cv4Mat_IdEC2EONS_3MatE.exit391 unwind label %.body389 ; 0 uses

.body389:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit388
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #19
  br label %bb.cf

_ZN2cv4Mat_IdEC2EONS_3MatE.exit391:               ; preds = %_ZNK2cv11_InputArray6getMatEi.exit388
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %61, ptr noundef nonnull align 8 dereferenceable(208) %62) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %64) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %65) #19
  %i.ic = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.bq unwind label %bb.cg

bb.bq:                                            ; preds = %_ZN2cv4Mat_IdEC2EONS_3MatE.exit391
  br i1 %i.ic, label %bb.cj, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #19
  %i.id = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc393 unwind label %bb.ch, !noalias !130

.noexc393:                                        ; preds = %bb.br
  %i.ie = icmp eq i32 %i.id, 65536
  br i1 %i.ie, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.noexc393
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !12, !noalias !130
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(208) %i.ig)
          to label %_ZNK2cv11_InputArray6getMatEi.exit396 unwind label %bb.ch

bb.bt:                                            ; preds = %.noexc393
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %67, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit396 unwind label %bb.ch

_ZNK2cv11_InputArray6getMatEi.exit396:            ; preds = %bb.bs, %bb.bt
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %66) #19
  %i.ih = load i32, ptr %66, align 8, !tbaa !20
  %i.ii = and i32 %i.ih, -4096
  %i.ij = or disjoint i32 %i.ii, 6
  store i32 %i.ij, ptr %66, align 8, !tbaa !20
  %i.ik = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %66, ptr noundef nonnull align 8 dereferenceable(208) %67)
          to label %_ZN2cv4Mat_IdEC2EONS_3MatE.exit399 unwind label %.body397 ; 0 uses

_ZN2cv4Mat_IdEC2EONS_3MatE.exit399:               ; preds = %_ZNK2cv11_InputArray6getMatEi.exit396
  %i.il = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %64, ptr noundef nonnull align 8 dereferenceable(208) %66)
          to label %bb.bu unwind label %.body397  ; 0 uses

bb.bu:                                            ; preds = %_ZN2cv4Mat_IdEC2EONS_3MatE.exit399
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  br label %bb.cj

bb.bv:                                            ; preds = %bb.bf, %bb.be
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  br label %bb.fx

bb.bw:                                            ; preds = %bb.bg
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  br label %bb.fw

bb.bx:                                            ; preds = %bb.bj, %bb.bh
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.by:                                            ; preds = %bb.bi
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  br label %bb.fw

bb.bz:                                            ; preds = %bb.bk
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bl
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %57) #19
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn273 = phi { ptr, i32 } [ %i.ir, %bb.ca ], [ %i.iq, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  br label %bb.fw

bb.cc:                                            ; preds = %bb.bn, %bb.bm, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cd:                                            ; preds = %.body381, %bb.cc
  %.pn277 = phi { ptr, i32 } [ %i.hs, %.body381 ], [ %i.is, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %bb.fv
end_hunk_1
begin_hunk_2_@_ZN2cv13stereoRectifyERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEES2_S2_RKNS_12_OutputArrayES7_S7_S7_S7_idS4_PNS_5Rect_IiEESA_:bb.a
  br i1 %i.ng, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.nh = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !40
  %i.nj = zext nneg i32 %i.eg to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nj
  br label %_ZN2cv3Mat2atIdEERT_i.exit412

bb.ea:                                            ; preds = %bb.dy
  %i.nl = load i32, ptr %34, align 8, !tbaa !20
  %i.nm = and i32 %i.nl, 16384
  %i.nn = icmp ne i32 %i.nm, 0
  %i.no = getelementptr inbounds nuw i8, ptr %34, i64 84
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = icmp eq i32 %i.np, 1
  %or.cond.i410 = select i1 %i.nn, i1 true, i1 %i.nq
  br i1 %or.cond.i410, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.nr = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !40
  %i.nt = zext nneg i32 %i.eg to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nt
  br label %_ZN2cv3Mat2atIdEERT_i.exit412

bb.ec:                                            ; preds = %bb.ea
  %i.nv = getelementptr inbounds nuw i8, ptr %34, i64 88
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !27
  %i.nx = icmp eq i32 %i.nw, 1
  br i1 %i.nx, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ny = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !40
  %i.oa = getelementptr inbounds nuw i8, ptr %34, i64 128
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !41
  %i.oc = zext nneg i32 %i.eg to i64
  %i.od = mul nuw nsw i64 %i.ob, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.od
  br label %_ZN2cv3Mat2atIdEERT_i.exit412

bb.ee:                                            ; preds = %bb.ec
  %i.of = getelementptr inbounds nuw i8, ptr %34, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !31 ; 3 uses
  %i.oh = sdiv i32 %i.eg, %i.og                   ; 2 uses
  %i.oi = mul nsw i32 %i.oh, %i.og                ; 0 uses
  %.recomposed658 = srem i32 %i.eg, %i.og
  %i.oj = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !40
  %i.ol = getelementptr inbounds nuw i8, ptr %34, i64 128
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !41
  %i.on = sext i32 %i.oh to i64
  %i.oo = mul i64 %i.om, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oo
  %i.oq = sext i32 %.recomposed658 to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.op, i64 %i.oq
  br label %_ZN2cv3Mat2atIdEERT_i.exit412

_ZN2cv3Mat2atIdEERT_i.exit412:                    ; preds = %bb.dz, %bb.eb, %bb.ed, %bb.ee
  %.0.i411 = phi ptr [ %i.nk, %bb.dz ], [ %i.nu, %bb.eb ], [ %i.oe, %bb.ed ], [ %i.or, %bb.ee ]
  %i.os = load double, ptr %.0.i411, align 8, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #19
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %95, i32 noundef 3, i32 noundef 4, i32 noundef 6)
          to label %bb.ef unwind label %bb.el

bb.ef:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit412
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %94) #19
  %i.ot = load ptr, ptr %95, align 8, !tbaa !50, !noalias !133 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !52
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  invoke void %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef nonnull align 8 dereferenceable(688) %95, ptr noundef nonnull align 8 dereferenceable(208) %94, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit415 unwind label %.body413

.body413:                                         ; preds = %bb.ef
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #19
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %95) #19
  br label %bb.em

_ZNK2cv7MatExprcvNS_3MatEEv.exit415:              ; preds = %bb.ef
  %i.oy = getelementptr inbounds nuw i8, ptr %95, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.oy) #19
  %i.oz = getelementptr inbounds nuw i8, ptr %95, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.oz) #19
  %i.pa = getelementptr inbounds nuw i8, ptr %95, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.pa) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #19
  %i.pb = getelementptr inbounds nuw i8, ptr %94, i64 4 ; 4 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !53
  %i.pd = icmp slt i32 %i.pc, 2                   ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %94, i64 24 ; 4 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !40 ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %94, i64 128 ; 10 uses
  %i.ph = load i64, ptr %i.pg, align 8
  %.sink.idx.i416 = select i1 %i.pd, i64 0, i64 %i.ph
  %.sink.i417 = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.sink.idx.i416
  %i.pi = getelementptr inbounds nuw i8, ptr %.sink.i417, i64 8
  store double %i.kg, ptr %i.pi, align 8, !tbaa !29
  store double %i.kg, ptr %i.pf, align 8, !tbaa !29
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pk = extractelement <2 x double> %.sroa.0.0, i64 0
  store double %i.pk, ptr %i.pj, align 8, !tbaa !29
  %i.pl = load i64, ptr %i.pg, align 8
  %.sink.idx.i422 = select i1 %i.pd, i64 0, i64 %i.pl
  %.sink.i423 = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.sink.idx.i422
  %i.pm = getelementptr inbounds nuw i8, ptr %.sink.i423, i64 16
  %i.pn = extractelement <2 x double> %.sroa.0.0, i64 1
  store double %i.pn, ptr %i.pm, align 8, !tbaa !29
  %i.po = load i64, ptr %i.pg, align 8
  %i.pp = shl i64 %i.po, 1
  %.sink.idx.i424 = select i1 %i.pd, i64 0, i64 %i.pp
  %.sink.i425 = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.sink.idx.i424
  %i.pq = getelementptr inbounds nuw i8, ptr %.sink.i425, i64 16
  store double 1.000000e+00, ptr %i.pq, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %94, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.eg unwind label %bb.en

bb.eg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit415
  %i.pr = load i32, ptr %i.pb, align 4, !tbaa !53
  %i.ps = load ptr, ptr %i.pe, align 8, !tbaa !40 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = extractelement <2 x double> %.sroa.12.0, i64 0
  store double %i.pu, ptr %i.pt, align 8, !tbaa !29
  %i.pv = icmp slt i32 %i.pr, 2                   ; 2 uses
  %i.pw = load i64, ptr %i.pg, align 8
  %.sink.idx.i428 = select i1 %i.pv, i64 0, i64 %i.pw
  %.sink.i429 = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.sink.idx.i428
  %i.px = getelementptr inbounds nuw i8, ptr %.sink.i429, i64 16
  %i.py = extractelement <2 x double> %.sroa.12.0, i64 1
  store double %i.py, ptr %i.px, align 8, !tbaa !29
  %i.pz = fmul double %i.kg, %i.os
  %i.qa = load i64, ptr %i.pg, align 8
  %i.qb = zext nneg i32 %i.eg to i64              ; 3 uses
  %i.qc = mul nuw nsw i64 %i.qa, %i.qb
  %.sink.idx.i430 = select i1 %i.pv, i64 0, i64 %i.qc
  %.sink.i431 = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.sink.idx.i430
  %i.qd = getelementptr inbounds nuw i8, ptr %.sink.i431, i64 24
  store double %i.pz, ptr %i.qd, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %94, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.eh unwind label %bb.en

bb.eh:                                            ; preds = %bb.eg
  %i.qe = fcmp ogt double %13, 1.000000e+00
  %i.qf = select i1 %i.qe, double 1.000000e+00, double %13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %96, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %97, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %98, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %99, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #19
  %i.qg = getelementptr inbounds nuw i8, ptr %100, i64 16
  store i32 0, ptr %i.qg, align 8, !tbaa !34
  %i.qh = getelementptr inbounds nuw i8, ptr %100, i64 20
  store i32 0, ptr %i.qh, align 4, !tbaa !35
  store i32 16842752, ptr %100, align 8, !tbaa !30
  %i.qi = getelementptr inbounds nuw i8, ptr %100, i64 8
  store ptr %58, ptr %i.qi, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #19
  %i.qj = getelementptr inbounds nuw i8, ptr %101, i64 16
  store i32 0, ptr %i.qj, align 8, !tbaa !34
  %i.qk = getelementptr inbounds nuw i8, ptr %101, i64 20
  store i32 0, ptr %i.qk, align 4, !tbaa !35
  store i32 16842752, ptr %101, align 8, !tbaa !30
  %i.ql = getelementptr inbounds nuw i8, ptr %101, i64 8
  store ptr %64, ptr %i.ql, align 8, !tbaa !12
  invoke void @_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_(ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull align 8 dereferenceable(32) %98)
          to label %bb.ei unwind label %bb.eo

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #19
  %i.qm = getelementptr inbounds nuw i8, ptr %102, i64 16
  store i32 0, ptr %i.qm, align 8, !tbaa !34
  %i.qn = getelementptr inbounds nuw i8, ptr %102, i64 20
  store i32 0, ptr %i.qn, align 4, !tbaa !35
  store i32 16842752, ptr %102, align 8, !tbaa !30
  %i.qo = getelementptr inbounds nuw i8, ptr %102, i64 8
  store ptr %61, ptr %i.qo, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #19
  %i.qp = getelementptr inbounds nuw i8, ptr %103, i64 16
  store i32 0, ptr %i.qp, align 8, !tbaa !34
  %i.qq = getelementptr inbounds nuw i8, ptr %103, i64 20
  store i32 0, ptr %i.qq, align 4, !tbaa !35
  store i32 16842752, ptr %103, align 8, !tbaa !30
  %i.qr = getelementptr inbounds nuw i8, ptr %103, i64 8
  store ptr %65, ptr %i.qr, align 8, !tbaa !12
  invoke void @_ZN2cv22getUndistortRectanglesERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEERNS_5Rect_IdEES7_(ptr noundef nonnull align 8 dereferenceable(24) %102, ptr noundef nonnull align 8 dereferenceable(24) %103, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %99)
          to label %bb.ej unwind label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #19
  %i.qs = mul nsw i32 %..copy.fca.0.load.sroa.speculated, %..copy.fca.1.load.sroa.speculated
  %.not296 = icmp eq i32 %i.qs, 0                 ; 2 uses
  %.4.copy.fca.0.load.sroa.speculated = select i1 %.not296, i32 %.sroa.0169.0.extract.trunc, i32 %..copy.fca.0.load.sroa.speculated ; 8 uses
  %.4.copy.fca.1.load.sroa.speculated = select i1 %.not296, i32 %.sroa.9.0.extract.trunc, i32 %..copy.fca.1.load.sroa.speculated ; 8 uses
  %108 = insertelement <2 x i32> poison, i32 %.4.copy.fca.0.load.sroa.speculated, i64 0
  %109 = insertelement <2 x i32> %108, i32 %.4.copy.fca.1.load.sroa.speculated, i64 1
  %i.qt = sitofp <2 x i32> %109 to <2 x double>   ; 2 uses
  %i.qu = fmul <2 x double> %.sroa.0.0, %i.qt
  %i.qv = fdiv <2 x double> %i.qu, %i.ad          ; 7 uses
  %i.qw = fmul <2 x double> %.sroa.12.0, %i.qt
  %i.qx = fdiv <2 x double> %i.qw, %i.ad          ; 6 uses
  %i.qy = fcmp ult double %i.qf, 0.000000e+00
  br i1 %i.qy, label %bb.eq, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qz = add nsw i32 %.4.copy.fca.0.load.sroa.speculated, -1
  %i.ra = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.rb = add nsw i32 %.4.copy.fca.1.load.sroa.speculated, -1
  %i.rc = getelementptr inbounds nuw i8, ptr %97, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %98, i64 16
  %i.re = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.rf = sitofp i32 %i.qz to double
  %i.rg = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ri = shufflevector <2 x double> %i.qv, <2 x double> %i.qx, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.rj = fsub <2 x double> %i.rh, %i.ri          ; 2 uses
  %i.rk = sitofp i32 %i.rb to double
  %i.rl = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rn = shufflevector <2 x double> %i.qv, <2 x double> %i.qx, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ro = fsub <2 x double> %i.rm, %i.rn          ; 2 uses
  %i.rp = load <2 x double>, ptr %96, align 16, !tbaa !29 ; 2 uses
  %i.rq = load <2 x double>, ptr %i.ra, align 16, !tbaa !29 ; 2 uses
  %i.rr = load <2 x double>, ptr %97, align 16, !tbaa !29 ; 2 uses
  %i.rs = shufflevector <2 x double> %.sroa.0.0, <2 x double> %.sroa.12.0, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.rt = shufflevector <2 x double> %i.rp, <2 x double> %i.rr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ru = fsub <2 x double> %i.rs, %i.rt
  %i.rv = fdiv <2 x double> %i.ri, %i.ru          ; 2 uses
  %i.rw = shufflevector <2 x double> %.sroa.0.0, <2 x double> %.sroa.12.0, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.rx = shufflevector <2 x double> %i.rp, <2 x double> %i.rr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ry = fsub <2 x double> %i.rw, %i.rx
  %i.rz = fdiv <2 x double> %i.rn, %i.ry          ; 2 uses
  %i.sa = fcmp olt <2 x double> %i.rv, %i.rz
  %i.sb = load <2 x double>, ptr %i.rc, align 16, !tbaa !29 ; 2 uses
  %i.sc = shufflevector <2 x double> %i.rq, <2 x double> %i.sb, <2 x i32> <i32 0, i32 2>
  %i.sd = fadd <2 x double> %i.rt, %i.sc
  %i.se = fsub <2 x double> %i.sd, %i.rs
  %i.sf = select <2 x i1> %i.sa, <2 x double> %i.rz, <2 x double> %i.rv ; 2 uses
  %i.sg = shufflevector <2 x double> %i.rq, <2 x double> %i.sb, <2 x i32> <i32 1, i32 3>
  %i.sh = fadd <2 x double> %i.rx, %i.sg
  %i.si = fsub <2 x double> %i.sh, %i.rw
  %i.sj = fdiv <2 x double> %i.rj, %i.se          ; 2 uses
  %i.sk = fcmp olt <2 x double> %i.sf, %i.sj
  %i.sl = fdiv <2 x double> %i.ro, %i.si          ; 2 uses
  %i.sm = select <2 x i1> %i.sk, <2 x double> %i.sj, <2 x double> %i.sf ; 2 uses
  %i.sn = fcmp olt <2 x double> %i.sm, %i.sl
  %i.so = select <2 x i1> %i.sn, <2 x double> %i.sl, <2 x double> %i.sm ; 2 uses
  %i.sp = extractelement <2 x double> %i.so, i64 0 ; 2 uses
  %i.sq = extractelement <2 x double> %i.so, i64 1 ; 2 uses
  %i.sr = fcmp olt double %i.sq, %i.sp
  %.sroa.speculated551 = select i1 %i.sr, double %i.sp, double %i.sq
  %i.ss = load <2 x double>, ptr %98, align 16, !tbaa !29 ; 2 uses
  %i.st = load <2 x double>, ptr %i.rd, align 16, !tbaa !29 ; 2 uses
  %i.su = load <2 x double>, ptr %99, align 16, !tbaa !29 ; 2 uses
  %i.sv = shufflevector <2 x double> %i.ss, <2 x double> %i.su, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sw = fsub <2 x double> %i.rs, %i.sv
  %i.sx = fdiv <2 x double> %i.ri, %i.sw          ; 2 uses
  %i.sy = shufflevector <2 x double> %i.ss, <2 x double> %i.su, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sz = fsub <2 x double> %i.rw, %i.sy
  %i.ta = fdiv <2 x double> %i.rn, %i.sz          ; 2 uses
  %i.tb = fcmp olt <2 x double> %i.ta, %i.sx
  %i.tc = load <2 x double>, ptr %i.re, align 16, !tbaa !29 ; 2 uses
  %i.td = shufflevector <2 x double> %i.st, <2 x double> %i.tc, <2 x i32> <i32 0, i32 2>
  %i.te = fadd <2 x double> %i.sv, %i.td
  %i.tf = fsub <2 x double> %i.te, %i.rs
  %i.tg = fdiv <2 x double> %i.rj, %i.tf          ; 2 uses
  %i.th = select <2 x i1> %i.tb, <2 x double> %i.ta, <2 x double> %i.sx ; 2 uses
  %i.ti = fcmp olt <2 x double> %i.tg, %i.th
  %i.tj = shufflevector <2 x double> %i.st, <2 x double> %i.tc, <2 x i32> <i32 1, i32 3>
  %i.tk = fadd <2 x double> %i.sy, %i.tj
  %i.tl = fsub <2 x double> %i.tk, %i.rw
  %i.tm = fdiv <2 x double> %i.ro, %i.tl          ; 2 uses
  %i.tn = select <2 x i1> %i.ti, <2 x double> %i.tg, <2 x double> %i.th ; 2 uses
  %i.to = fcmp olt <2 x double> %i.tm, %i.tn
  %i.tp = select <2 x i1> %i.to, <2 x double> %i.tm, <2 x double> %i.tn ; 2 uses
  %i.tq = extractelement <2 x double> %i.tp, i64 0 ; 2 uses
  %i.tr = extractelement <2 x double> %i.tp, i64 1 ; 2 uses
  %i.ts = fcmp olt double %i.tq, %i.tr
  %.sroa.speculated529 = select i1 %i.ts, double %i.tq, double %i.tr
  %i.tt = fsub double 1.000000e+00, %i.qf
  %i.tu = fmul double %i.qf, %.sroa.speculated529
  %i.tv = call double @llvm.fmuladd.f64(double %.sroa.speculated551, double %i.tt, double %i.tu)
  br label %bb.eq

bb.el:                                            ; preds = %_ZN2cv3Mat2atIdEERT_i.exit412
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.em:                                            ; preds = %.body413, %bb.el
  %.pn288 = phi { ptr, i32 } [ %i.ox, %.body413 ], [ %i.tw, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #19
  br label %bb.fs

bb.en:                                            ; preds = %bb.eg, %_ZNK2cv7MatExprcvNS_3MatEEv.exit415
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.eo:                                            ; preds = %bb.eh
  %i.ty = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #19
  br label %bb.fq

bb.ep:                                            ; preds = %bb.ei
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #19
  br label %bb.fq

bb.eq:                                            ; preds = %bb.ek, %bb.ej
  %.0 = phi double [ %i.tv, %bb.ek ], [ 1.000000e+00, %bb.ej ] ; 8 uses
  %i.ua = fmul double %i.kg, %.0                  ; 3 uses
  %i.ub = load i32, ptr %i.pb, align 4, !tbaa !53
  %i.uc = icmp slt i32 %i.ub, 2                   ; 3 uses
  %i.ud = load ptr, ptr %i.pe, align 8, !tbaa !40 ; 5 uses
  %i.ue = load i64, ptr %i.pg, align 8
  %.sink.idx.i445 = select i1 %i.uc, i64 0, i64 %i.ue
  %.sink.i446 = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.sink.idx.i445
  %i.uf = getelementptr inbounds nuw i8, ptr %.sink.i446, i64 8
  store double %i.ua, ptr %i.uf, align 8, !tbaa !29
  store double %i.ua, ptr %i.ud, align 8, !tbaa !29
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uh = extractelement <2 x double> %i.qx, i64 0
  store double %i.uh, ptr %i.ug, align 8, !tbaa !29
  %i.ui = load i64, ptr %i.pg, align 8
  %.sink.idx.i451 = select i1 %i.uc, i64 0, i64 %i.ui
  %.sink.i452 = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.sink.idx.i451
  %i.uj = getelementptr inbounds nuw i8, ptr %.sink.i452, i64 16
  %i.uk = extractelement <2 x double> %i.qx, i64 1
  store double %i.uk, ptr %i.uj, align 8, !tbaa !29
  %i.ul = load i64, ptr %i.pg, align 8
  %i.um = mul nuw nsw i64 %i.ul, %i.qb
  %.sink.idx.i453 = select i1 %i.uc, i64 0, i64 %i.um
  %.sink.i454 = getelementptr inbounds nuw i8, ptr %i.ud, i64 %.sink.idx.i453
  %i.un = getelementptr inbounds nuw i8, ptr %.sink.i454, i64 24 ; 2 uses
  %i.uo = load double, ptr %i.un, align 8, !tbaa !29
  %i.up = fmul double %.0, %i.uo
  store double %i.up, ptr %i.un, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %94, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.er unwind label %bb.ez

bb.er:                                            ; preds = %bb.eq
  %i.uq = load i32, ptr %i.pb, align 4, !tbaa !53
  %i.ur = load ptr, ptr %i.pe, align 8, !tbaa !40 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = extractelement <2 x double> %i.qv, i64 0
  store double %i.ut, ptr %i.us, align 8, !tbaa !29
  %i.uu = icmp slt i32 %i.uq, 2                   ; 2 uses
  %i.uv = load i64, ptr %i.pg, align 8
  %.sink.idx.i457 = select i1 %i.uu, i64 0, i64 %i.uv
  %.sink.i458 = getelementptr inbounds nuw i8, ptr %i.ur, i64 %.sink.idx.i457
  %i.uw = getelementptr inbounds nuw i8, ptr %.sink.i458, i64 16
  %i.ux = extractelement <2 x double> %i.qv, i64 1
  store double %i.ux, ptr %i.uw, align 8, !tbaa !29
  %i.uy = load i64, ptr %i.pg, align 8
  %i.uz = mul nuw nsw i64 %i.uy, %i.qb
  %.sink.idx.i459 = select i1 %i.uu, i64 0, i64 %i.uz
  %.sink.i460 = getelementptr inbounds nuw i8, ptr %i.ur, i64 %.sink.idx.i459
  %i.va = getelementptr inbounds nuw i8, ptr %.sink.i460, i64 24
  store double 0.000000e+00, ptr %i.va, align 8, !tbaa !29
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %94, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.es unwind label %bb.ez

bb.es:                                            ; preds = %bb.er
  %.not299 = icmp eq ptr %15, null
  br i1 %.not299, label %bb.fa, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vb = load <2 x double>, ptr %96, align 16, !tbaa !29
  %i.vc = fsub <2 x double> %i.vb, %.sroa.0.0
  %i.vd = insertelement <2 x double> poison, double %.0, i64 0
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %i.ve, <2 x double> %i.qv) ; 2 uses
  %i.vg = extractelement <2 x double> %i.vf, i64 0
  %i.vh = call double @llvm.ceil.f64(double %i.vg)
  %i.vi = fptosi double %i.vh to i32              ; 3 uses
  %i.vj = extractelement <2 x double> %i.vf, i64 1
  %i.vk = call double @llvm.ceil.f64(double %i.vj)
  %i.vl = fptosi double %i.vk to i32              ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.vn = load double, ptr %i.vm, align 16, !tbaa !135
  %i.vo = fmul double %.0, %i.vn
  %i.vp = call double @llvm.floor.f64(double %i.vo)
  %i.vq = fptosi double %i.vp to i32              ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %96, i64 24
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !136
  %i.vt = fmul double %.0, %i.vs
  %i.vu = call double @llvm.floor.f64(double %i.vt)
  %i.vv = fptosi double %i.vu to i32              ; 3 uses
  %i.vw = icmp slt i32 %i.vq, 1
  %i.vx = icmp slt i32 %i.vv, 1
  %i.vy = select i1 %i.vw, i1 true, i1 %i.vx
  br i1 %i.vy, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vz = icmp slt i32 %.4.copy.fca.0.load.sroa.speculated, 1
  %i.wa = icmp slt i32 %.4.copy.fca.1.load.sroa.speculated, 1
  %i.wb = select i1 %i.vz, i1 true, i1 %i.wa
  br i1 %i.wb, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.wc = icmp slt i32 %i.vi, 0                   ; 3 uses
  %i.wd = call i32 @llvm.smin.i32(i32 %i.vi, i32 0) ; 2 uses
  %i.we = call i32 @llvm.smax.i32(i32 %i.vi, i32 0) ; 3 uses
  %i.wf = add nsw i32 %i.wd, %i.vq
  %i.wg = icmp slt i32 %i.wf, %i.we
  %or.cond617 = select i1 %i.wc, i1 %i.wg, i1 false
  br i1 %or.cond617, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.wh = icmp slt i32 %i.vl, 0
  br i1 %i.wh, label %.cont52.i, label %.cont35.i

.cont52.i:                                        ; preds = %bb.ew
  %i.wi = add nsw i32 %i.vv, %i.vl                ; 2 uses
  %i.wj = icmp slt i32 %i.wi, 0
  br i1 %i.wj, label %bb.ey, label %.cont35.i

.cont35.i:                                        ; preds = %bb.ew, %.cont52.i
  %i.wk = phi i32 [ %.4.copy.fca.1.load.sroa.speculated, %.cont52.i ], [ %i.vv, %bb.ew ]
  %.neg49.pre-phi.i.i = phi i32 [ %i.wi, %.cont52.i ], [ %.4.copy.fca.1.load.sroa.speculated, %bb.ew ]
  %i.wl = phi i32 [ 0, %.cont52.i ], [ %i.vl, %bb.ew ] ; 2 uses
  %.v.v.i = select i1 %i.wc, i32 %i.vq, i32 %.4.copy.fca.0.load.sroa.speculated
  %.v.i = sub i32 %i.wd, %i.we
  %i.wm = add i32 %.v.i, %.v.v.i
  %i.wn = select i1 %i.wc, i32 %.4.copy.fca.0.load.sroa.speculated, i32 %i.vq
  %.sroa.speculated53.i.i = call i32 @llvm.smin.i32(i32 %i.wn, i32 %i.wm) ; 2 uses
  %i.wo = sub nsw i32 %.neg49.pre-phi.i.i, %i.wl
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.wk, i32 %i.wo) ; 2 uses
  %i.wp = icmp slt i32 %.sroa.speculated53.i.i, 1
  %i.wq = icmp slt i32 %.sroa.speculated.i.i, 1
  %i.wr = select i1 %i.wp, i1 true, i1 %i.wq
  br i1 %i.wr, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.cont35.i
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ev, %bb.ex, %.cont35.i, %.cont52.i, %bb.eu, %bb.et
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.we, %.cont35.i ], [ 0, %bb.et ], [ 0, %bb.ex ], [ 0, %bb.eu ], [ 0, %.cont52.i ], [ 0, %bb.ev ]
  %.sroa.0.sroa.9.0.i = phi i32 [ %i.wl, %.cont35.i ], [ 0, %bb.et ], [ 0, %bb.ex ], [ 0, %bb.eu ], [ 0, %.cont52.i ], [ 0, %bb.ev ]
  %.sroa.14.sroa.0.0.i = phi i32 [ %.sroa.speculated53.i.i, %.cont35.i ], [ 0, %bb.et ], [ 0, %bb.ex ], [ 0, %bb.eu ], [ 0, %.cont52.i ], [ 0, %bb.ev ]
  %.sroa.14.sroa.12.0.i = phi i32 [ %.sroa.speculated.i.i, %.cont35.i ], [ 0, %bb.et ], [ 0, %bb.ex ], [ 0, %bb.eu ], [ 0, %.cont52.i ], [ 0, %bb.ev ]
  %.sroa.0.sroa.9.0.insert.ext.i = zext nneg i32 %.sroa.0.sroa.9.0.i to i64
  %.sroa.0.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.9.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.0.sroa.0.0.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.9.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.14.sroa.12.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.12.0.i to i64
  %.sroa.14.sroa.12.0.insert.shift.i = shl nuw nsw i64 %.sroa.14.sroa.12.0.insert.ext.i, 32
  %.sroa.14.sroa.0.0.insert.ext.i = zext nneg i32 %.sroa.14.sroa.0.0.i to i64
  %.sroa.14.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.14.sroa.12.0.insert.shift.i, %.sroa.14.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %15, align 4, !tbaa !27
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i, ptr %.sroa.56.0..sroa_idx, align 4, !tbaa !27
  br label %bb.fa

bb.ez:                                            ; preds = %bb.fh, %bb.er, %bb.eq
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fa:                                            ; preds = %bb.ey, %bb.es
  %.not300 = icmp eq ptr %16, null
  br i1 %.not300, label %bb.fh, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.wt = load <2 x double>, ptr %97, align 16, !tbaa !29
  %i.wu = fsub <2 x double> %i.wt, %.sroa.12.0
  %i.wv = insertelement <2 x double> poison, double %.0, i64 0
  %i.ww = shufflevector <2 x double> %i.wv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wu, <2 x double> %i.ww, <2 x double> %i.qx) ; 2 uses
  %i.wy = extractelement <2 x double> %i.wx, i64 0
  %i.wz = call double @llvm.ceil.f64(double %i.wy)
  %i.xa = fptosi double %i.wz to i32              ; 3 uses
  %i.xb = extractelement <2 x double> %i.wx, i64 1
  %i.xc = call double @llvm.ceil.f64(double %i.xb)
  %i.xd = fptosi double %i.xc to i32              ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %97, i64 16
  %i.xf = load double, ptr %i.xe, align 16, !tbaa !135
  %i.xg = fmul double %.0, %i.xf
  %i.xh = call double @llvm.floor.f64(double %i.xg)
  %i.xi = fptosi double %i.xh to i32              ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %97, i64 24
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !136
  %i.xl = fmul double %.0, %i.xk
  %i.xm = call double @llvm.floor.f64(double %i.xl)
  %i.xn = fptosi double %i.xm to i32              ; 3 uses
  %i.xo = icmp slt i32 %i.xi, 1
  %i.xp = icmp slt i32 %i.xn, 1
  %i.xq = select i1 %i.xo, i1 true, i1 %i.xp
  br i1 %i.xq, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.xr = icmp slt i32 %.4.copy.fca.0.load.sroa.speculated, 1
  %i.xs = icmp slt i32 %.4.copy.fca.1.load.sroa.speculated, 1
  %i.xt = select i1 %i.xr, i1 true, i1 %i.xs
  br i1 %i.xt, label %bb.fg, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xu = icmp slt i32 %i.xa, 0                   ; 3 uses
  %i.xv = call i32 @llvm.smin.i32(i32 %i.xa, i32 0) ; 2 uses
  %i.xw = call i32 @llvm.smax.i32(i32 %i.xa, i32 0) ; 3 uses
  %i.xx = add nsw i32 %i.xv, %i.xi
  %i.xy = icmp slt i32 %i.xx, %i.xw
  %or.cond619 = select i1 %i.xu, i1 %i.xy, i1 false
  br i1 %or.cond619, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.xz = icmp slt i32 %i.xd, 0
  br i1 %i.xz, label %.cont52.i492, label %.cont35.i472

.cont52.i492:                                     ; preds = %bb.fe
  %i.ya = add nsw i32 %i.xn, %i.xd                ; 2 uses
  %i.yb = icmp slt i32 %i.ya, 0
  br i1 %i.yb, label %bb.fg, label %.cont35.i472

.cont35.i472:                                     ; preds = %bb.fe, %.cont52.i492
  %i.yc = phi i32 [ %.4.copy.fca.1.load.sroa.speculated, %.cont52.i492 ], [ %i.xn, %bb.fe ]
  %.neg49.pre-phi.i.i473 = phi i32 [ %i.ya, %.cont52.i492 ], [ %.4.copy.fca.1.load.sroa.speculated, %bb.fe ]
  %i.yd = phi i32 [ 0, %.cont52.i492 ], [ %i.xd, %bb.fe ] ; 2 uses
  %.v.v.i474 = select i1 %i.xu, i32 %i.xi, i32 %.4.copy.fca.0.load.sroa.speculated
  %.v.i475 = sub i32 %i.xv, %i.xw
  %i.ye = add i32 %.v.i475, %.v.v.i474
  %i.yf = select i1 %i.xu, i32 %.4.copy.fca.0.load.sroa.speculated, i32 %i.xi
  %.sroa.speculated53.i.i476 = call i32 @llvm.smin.i32(i32 %i.yf, i32 %i.ye) ; 2 uses
  %i.yg = sub nsw i32 %.neg49.pre-phi.i.i473, %i.yd
  %.sroa.speculated.i.i477 = call i32 @llvm.smin.i32(i32 %i.yc, i32 %i.yg) ; 2 uses
  %i.yh = icmp slt i32 %.sroa.speculated53.i.i476, 1
  %i.yi = icmp slt i32 %.sroa.speculated.i.i477, 1
  %i.yj = select i1 %i.yh, i1 true, i1 %i.yi
  br i1 %i.yj, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %.cont35.i472
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fd, %bb.ff, %.cont35.i472, %.cont52.i492, %bb.fc, %bb.fb
  %.sroa.0.sroa.0.0.i478 = phi i32 [ %i.xw, %.cont35.i472 ], [ 0, %bb.fb ], [ 0, %bb.ff ], [ 0, %bb.fc ], [ 0, %.cont52.i492 ], [ 0, %bb.fd ]
  %.sroa.0.sroa.9.0.i479 = phi i32 [ %i.yd, %.cont35.i472 ], [ 0, %bb.fb ], [ 0, %bb.ff ], [ 0, %bb.fc ], [ 0, %.cont52.i492 ], [ 0, %bb.fd ]
  %.sroa.14.sroa.0.0.i480 = phi i32 [ %.sroa.speculated53.i.i476, %.cont35.i472 ], [ 0, %bb.fb ], [ 0, %bb.ff ], [ 0, %bb.fc ], [ 0, %.cont52.i492 ], [ 0, %bb.fd ]
  %.sroa.14.sroa.12.0.i481 = phi i32 [ %.sroa.speculated.i.i477, %.cont35.i472 ], [ 0, %bb.fb ], [ 0, %bb.ff ], [ 0, %bb.fc ], [ 0, %.cont52.i492 ], [ 0, %bb.fd ]
  %.sroa.0.sroa.9.0.insert.ext.i482 = zext nneg i32 %.sroa.0.sroa.9.0.i479 to i64
  %.sroa.0.sroa.9.0.insert.shift.i483 = shl nuw nsw i64 %.sroa.0.sroa.9.0.insert.ext.i482, 32
  %.sroa.0.sroa.0.0.insert.ext.i484 = zext nneg i32 %.sroa.0.sroa.0.0.i478 to i64
  %.sroa.0.sroa.0.0.insert.insert.i485 = or disjoint i64 %.sroa.0.sroa.9.0.insert.shift.i483, %.sroa.0.sroa.0.0.insert.ext.i484
  %.sroa.14.sroa.12.0.insert.ext.i486 = zext nneg i32 %.sroa.14.sroa.12.0.i481 to i64
  %.sroa.14.sroa.12.0.insert.shift.i487 = shl nuw nsw i64 %.sroa.14.sroa.12.0.insert.ext.i486, 32
  %.sroa.14.sroa.0.0.insert.ext.i488 = zext nneg i32 %.sroa.14.sroa.0.0.i480 to i64
  %.sroa.14.sroa.0.0.insert.insert.i489 = or disjoint i64 %.sroa.14.sroa.12.0.insert.shift.i487, %.sroa.14.sroa.0.0.insert.ext.i488
  store i64 %.sroa.0.sroa.0.0.insert.insert.i485, ptr %16, align 4, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.14.sroa.0.0.insert.insert.i489, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !27
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fa
  %i.yk = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.fi unwind label %bb.ez

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.yk, label %bb.fj, label %bb.fp

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store double 1.000000e+00, ptr %i.c, align 16, !tbaa !29
  %i.yl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.yn = fneg <2 x double> %i.qv                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yl, i8 0, i64 16, i1 false)
  %i.yo = extractelement <2 x double> %i.yn, i64 0
  store double %i.yo, ptr %i.ym, align 8, !tbaa !29
  %i.yp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.yp, align 16, !tbaa !29
  %i.yq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double 0.000000e+00, ptr %i.yq, align 16, !tbaa !29
  %i.yr = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ys = extractelement <2 x double> %i.yn, i64 1
  store double %i.ys, ptr %i.yr, align 8, !tbaa !29
  %i.yt = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.yt, i8 0, i64 24, i1 false)
  store double %i.ua, ptr %i.yu, align 8, !tbaa !29
  %i.yv = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.yw = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.yv, i8 0, i64 16, i1 false)
  %i.yx = fsub <2 x double> %i.qv, %i.qx          ; 2 uses
  %i.yy = extractelement <2 x double> %i.yx, i64 0
  %i.yz = extractelement <2 x double> %i.yx, i64 1
  %i.za = select i1 %i.eh, double %i.yz, double %i.yy
  %i.zb = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.za, i64 1
  %i.zc = insertelement <2 x double> poison, double %i.os, i64 0
  %i.zd = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ze = fdiv <2 x double> %i.zb, %i.zd
  store <2 x double> %i.ze, ptr %i.yw, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %104, i32 noundef 4, i32 noundef 4, i32 noundef 6, ptr noundef nonnull %i.c, i64 noundef 0)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %104, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.fl unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %104) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.fp

bb.fm:                                            ; preds = %bb.fj
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fk
  %i.zg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %104) #19
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.pn303 = phi { ptr, i32 } [ %i.zg, %bb.fn ], [ %i.zf, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  ret void

bb.fq:                                            ; preds = %bb.ez, %bb.fo, %bb.ep, %bb.eo
  %.pn303.pn = phi { ptr, i32 } [ %.pn303, %bb.fo ], [ %i.ws, %bb.ez ], [ %i.ty, %bb.eo ], [ %i.tz, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #19
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.en
  %.pn303.pn.pn = phi { ptr, i32 } [ %.pn303.pn, %bb.fq ], [ %i.tx, %bb.en ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %94) #19
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.em
  %.pn303.pn.pn.pn = phi { ptr, i32 } [ %.pn303.pn.pn, %bb.fr ], [ %.pn288, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #19
  br label %bb.ft

bb.ft:                                            ; preds = %bb.dt, %bb.fs, %bb.cq, %bb.ci, %bb.cg
  %.pn332.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn, %bb.ci ], [ %.pn284.pn, %bb.cq ], [ %i.iu, %bb.cg ], [ %.pn332.pn.pn.pn.pn.pn, %bb.dt ], [ %.pn303.pn.pn.pn, %bb.fs ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #19
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.cf
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn, %bb.ft ], [ %.pn279, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #19
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.cd
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fu ], [ %.pn277, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.cb, %bb.by, %bb.bx, %bb.bw
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %.pn273, %bb.cb ], [ %i.io, %bb.bx ], [ %i.ip, %bb.by ], [ %i.in, %bb.bw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.bv, %bb.bd, %bb.bc
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fw ], [ %i.im, %bb.bv ], [ %i.fu, %bb.bd ], [ %i.ft, %bb.bc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #19
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.bb
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %.pn255.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fy ], [ %.pn253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.am
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fz ], [ %i.eu, %bb.am ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #19
  br label %bb.gb
end_hunk_2
