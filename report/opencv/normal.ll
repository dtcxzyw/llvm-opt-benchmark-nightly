Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/normal?download=true
inline.NumInlined: 1999
inline.NumDeleted: 608
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(2760) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2760) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(2760) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(2744) dereferenceable(2744) %i.a) #20, !inline_history !296
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(2760) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2760) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv3SRIIfEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(2760) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3SRIIfEC2EiiiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(2744) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2cv15RgbdNormalsImplIfEC2EiiiRKNS_3MatENS_11RgbdNormals17RgbdNormalsMethodE(ptr noundef nonnull align 8 dereferenceable(441) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv3SRIIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #20
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 261
  store i32 %i.d, ptr %i.a, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <2 x float> zeroinitializer, ptr %i.e, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 3 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.j) #20
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33
  %i.l = and i32 %i.k, -4096
  %i.m = or disjoint i32 %i.l, 37
  store i32 %i.m, ptr %i.j, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 3 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.p) #20
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = and i32 %i.q, -4096
  %i.s = or disjoint i32 %i.r, 37
  store i32 %i.s, ptr %i.p, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.t) #20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2536
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.u) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3SRIIfED2Ev(ptr noundef nonnull align 8 dead_on_return(2744) dereferenceable(2744) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv3SRIIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2536
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2120
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1496
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #20
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #20, !inline_history !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20, !inline_history !60
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3SRIIfED0Ev(ptr noundef nonnull align 8 dereferenceable(2744) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv3SRIIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2536
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !297
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !297
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2120
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #20, !inline_history !297
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #20, !inline_history !297
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1704
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #20, !inline_history !297
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1496
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #20, !inline_history !297
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #20, !inline_history !297
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !297
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20, !inline_history !297
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #20, !inline_history !297
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #20, !inline_history !297
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv15RgbdNormalsImplIfEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #20, !inline_history !298
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20, !inline_history !298
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2744) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3SRIIfE5cacheEv(ptr noundef nonnull align 8 dereferenceable(2744) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %3 = alloca %"class.cv::Mat_.37", align 8       ; 9 uses
  %4 = alloca %"class.cv::Mat_.37", align 8       ; 10 uses
  %5 = alloca %"class.cv::Mat_.37", align 8       ; 9 uses
  %6 = alloca %"class.cv::Mat_.37", align 8       ; 12 uses
  %7 = alloca %"class.cv::Matx.38", align 4       ; 5 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.std::vector.92", align 8   ; 13 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::Matx.38", align 16     ; 8 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %35 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !69, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #20
  %i.d = load i32, ptr %3, align 8, !tbaa !33
  %i.e = and i32 %i.d, -4096
  %i.f = or disjoint i32 %i.e, 5
  store i32 %i.f, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #20
  %i.g = load i32, ptr %4, align 8, !tbaa !33
  %i.h = and i32 %i.g, -4096
  %i.i = or disjoint i32 %i.h, 5
  store i32 %i.i, ptr %4, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #20
  %i.j = load i32, ptr %5, align 8, !tbaa !33
  %i.k = and i32 %i.j, -4096
  %i.l = or disjoint i32 %i.k, 5
  store i32 %i.l, ptr %5, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #20
  %i.m = load i32, ptr %6, align 8, !tbaa !33
  %i.n = and i32 %i.m, -4096
  %i.o = or disjoint i32 %i.n, 5
  store i32 %i.o, ptr %6, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.38") align 4 %7, ptr noundef nonnull align 8 dereferenceable(208) %i.t)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv15computeThetaPhiIfEEviiRKNS_4MatxIT_Li3ELi3EEERNS_3MatES7_S7_S7_(i32 noundef %i.q, i32 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.w, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !59
  store ptr %i.u, ptr %i.v, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !59
  store ptr %i.x, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !54
  invoke void @_ZN2cv15getDerivKernelsERKNS_12_OutputArrayES2_iiibi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 1, i32 noundef 0, i32 noundef %i.ab, i1 noundef zeroext true, i32 noundef 5)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !59
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ah, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !59
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !54
  invoke void @_ZN2cv15getDerivKernelsERKNS_12_OutputArrayES2_iiibi(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0, i32 noundef 1, i32 noundef %i.ai, i1 noundef zeroext true, i32 noundef 5)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !65
  %i.am = call noundef float @asinf(float noundef %i.al) #20 ; 3 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !53  ; 4 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !65
  %i.as = call noundef float @asinf(float noundef %i.ar) #20
  %i.at = sdiv i32 %i.an, 2
  %i.au = add nsw i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ba = sext i32 %i.au to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !65
  %i.bd = call noundef float @asinf(float noundef %i.bc) #20 ; 8 uses
  %i.be = load i32, ptr %i.p, align 8, !tbaa !52  ; 3 uses
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = icmp slt i32 %i.aw, 2
  %i.bh = load i64, ptr %i.az, align 8
  %i.bi = sext i32 %i.bf to i64
  %i.bj = mul i64 %i.bh, %i.bi
  %.sink.idx.i = select i1 %i.bg, i64 0, i64 %i.bj
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink.idx.i
  %i.bk = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.ba
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !65
  %i.bm = call noundef float @asinf(float noundef %i.bl) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bn = mul nsw i32 %i.be, %i.an                ; 3 uses
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = icmp slt i32 %i.bn, 0
  br i1 %i.bp, label %bb.g, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #21
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %12, align 8
  br label %bb.h

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bq = mul nuw nsw i64 %i.bo, 12               ; 3 uses
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #23
          to label %.noexc137 unwind label %bb.l  ; 4 uses

.noexc137:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.br, ptr %12, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bq, i1 false), !tbaa !65
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.br, i64 %i.bq
  %.pre = load i32, ptr %i.p, align 8, !tbaa !52
  %.pre232 = load i32, ptr %i.r, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %.noexc137, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.bt = phi i32 [ %i.an, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre232, %.noexc137 ]
  %i.bu = phi i32 [ %i.be, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre, %.noexc137 ]
  %.sink.i136 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bs, %.noexc137 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc137 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %.sink.i136, ptr %i.bw, align 8, !tbaa !97
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bv, align 8, !tbaa !98
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 448
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.bx, i32 noundef %i.bu, i32 noundef %i.bt, i32 noundef 261)
          to label %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit unwind label %bb.m

_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit:      ; preds = %bb.h
  %i.by = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.as, i64 1
  %i.ca = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.am, i64 1
  %i.cc = fsub <2 x float> %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.p, align 8, !tbaa !36 ; 3 uses
  %i.cg = add nsw <2 x i32> %i.cf, splat (i32 -1)
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>
  %i.ci = fdiv <2 x float> %i.cc, %i.ch           ; 6 uses
  store <2 x float> %i.ci, ptr %i.cd, align 8, !tbaa !65
  %i.cj = extractelement <2 x i32> %i.cf, i64 0   ; 8 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = extractelement <2 x i32> %i.cf, i64 1   ; 5 uses
  br i1 %i.ck, label %.lr.ph197, label %._crit_edge198

.lr.ph197:                                        ; preds = %_ZN2cv4Mat_INS_3VecIfLi9EEEE6createEii.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cp = icmp sgt i32 %i.cl, 0
  br i1 %i.cp, label %.lr.ph197.split, label %.lr.ph197.split.us.preheader

.lr.ph197.split.us.preheader:                     ; preds = %.lr.ph197
end_hunk_0
begin_hunk_1_@_ZNK2cv3SRIIfE5cacheEv:bb.a
  %i.gz = call float @llvm.fmuladd.f32(float %i.gy, float 0.000000e+00, float %i.fv)
  %i.ha = fadd float %i.ej, %i.gz
  %i.hb = insertelement <2 x float> %i.go, float %i.fn, i64 1
  %i.hc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.hd = insertelement <2 x float> %i.go, float %i.fl, i64 0
  %i.he = fadd <2 x float> %i.hd, %i.hc
  %i.hf = fdiv <2 x float> %i.he, %i.ep           ; 2 uses
  %i.hg = call float @llvm.fmuladd.f32(float %i.fc, float -2.000000e+00, float %i.gs)
  %i.hh = insertelement <2 x float> %i.gw, float %i.ej, i64 0
  %i.hi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> <float 0.000000e+00, float -2.000000e+00>, <2 x float> %i.gx)
  store float %i.hg, ptr %i.gl, align 4
  %i.hj = extractelement <2 x float> %i.hf, i64 0
  store float %i.hj, ptr %.sroa.5154.0..sroa_idx, align 4
  store <2 x float> %i.hi, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.hk = extractelement <2 x float> %i.hf, i64 1
  store float %i.hk, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  store float %i.ha, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  store float %i.gf, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  store float %i.ge, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store float %i.gd, ptr %.sroa.12.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.hl = load i32, ptr %i.r, align 4, !tbaa !53  ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next, %i.hm
  br i1 %i.hn, label %bb.n, label %._crit_edge.loopexit, !llvm.loop !302

_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit:      ; preds = %._crit_edge198
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.ho, align 8, !tbaa !76
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.hp, align 4, !tbaa !77
  %i.hq = load ptr, ptr %i.bv, align 8, !tbaa !98
  %i.hr = load ptr, ptr %12, align 8, !tbaa !96
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 12                ; 2 uses
  %.not.i = icmp ugt i64 %i.hv, 2147483647
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.hv, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_7Point3_IfEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #21
          to label %.noexc142 unwind label %bb.y

.noexc142:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit
  store i32 -2130509755, ptr %13, align 8, !tbaa !59
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %12, ptr %i.hw, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 3, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.hx, align 8, !tbaa !76
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.hy, align 4, !tbaa !77
  store i32 16842752, ptr %14, align 8, !tbaa !59
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %15, ptr %i.hz, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef 3, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.ia, align 8, !tbaa !76
  %i.ib = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.ib, align 4, !tbaa !77
  store i32 16842752, ptr %17, align 8, !tbaa !59
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %18, ptr %i.ic, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.id = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.id, align 8, !tbaa !76
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.ie, align 4, !tbaa !77
  store i32 16842752, ptr %20, align 8, !tbaa !59
  %i.if = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.t, ptr %i.if, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #20
  %i.ig = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.ig, align 8, !tbaa !76
  %i.ih = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.ih, align 4, !tbaa !77
  store i32 16842752, ptr %21, align 8, !tbaa !59
  %i.ii = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %22, ptr %i.ii, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.ij = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ik, align 8
  store i32 -2113863643, ptr %23, align 8, !tbaa !59
  store ptr %i.dw, ptr %i.ij, align 8, !tbaa !21
  %i.il = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.il, double noundef 0.000000e+00)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.im = load i32, ptr %i.p, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %24, ptr noundef nonnull align 8 dereferenceable(208) %i.dw, i32 noundef 2, i32 noundef %i.im)
          to label %bb.u unwind label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.in = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi2EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %i.dw, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.v unwind label %bb.ag      ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.io = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.io, align 8, !tbaa !76
  %i.ip = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.ip, align 4, !tbaa !77
  store i32 -2130640859, ptr %25, align 8, !tbaa !59
  %i.iq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.dw, ptr %i.iq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %27) #20
  %i.ir = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.ir, align 8, !tbaa !76
  %i.is = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.is, align 4, !tbaa !77
  store i32 16842752, ptr %26, align 8, !tbaa !59
  %i.it = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %27, ptr %i.it, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.iv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %i.iw, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !59
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.iy = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 0, ptr %i.iz, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !59
  store ptr %i.ix, ptr %i.iy, align 8, !tbaa !21
  invoke void @_ZN2cv11convertMapsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_ib(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef 35, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 2 uses
  %i.jb = load i32, ptr %i.p, align 8, !tbaa !52
  %i.jc = load i32, ptr %i.r, align 4, !tbaa !53
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.ja, i32 noundef %i.jb, i32 noundef %i.jc, i32 noundef 37)
          to label %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit144 unwind label %bb.m

_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit144:   ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIfLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.38") align 4 %30, ptr noundef nonnull align 8 dereferenceable(208) %i.t)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit144
  %36 = load <4 x float>, ptr %30, align 16
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.je = load float, ptr %i.jd, align 8, !tbaa !65
  %i.jf = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jg = load float, ptr %i.jf, align 16, !tbaa !65
  %i.jh = insertelement <2 x float> %37, float %i.jg, i64 1
  %i.ji = fdiv <2 x float> splat (float 1.000000e+00), %i.jh ; 2 uses
  %i.jj = extractelement <2 x float> %i.ji, i64 1
  %i.jk = fpext float %i.jj to double
  %i.jl = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !65
  %i.jn = fpext float %i.jm to double
  %i.jo = load i32, ptr %i.p, align 8, !tbaa !52  ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %bb.x
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 2124
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.jt = load i32, ptr %i.r, align 4, !tbaa !53  ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph206.split.preheader, label %._crit_edge207

.lr.ph206.split.preheader:                        ; preds = %.lr.ph206
  %i.jv = insertelement <2 x float> poison, float %i.am, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.bd, i64 1
  %i.jx = extractelement <2 x float> %i.ji, i64 0
  br label %.lr.ph206.split

bb.y:                                             ; preds = %bb.o
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.p
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.s, %bb.r
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kb, %bb.ab ], [ %i.ka, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn104.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn, %bb.ac ], [ %i.jz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.pn104.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn, %bb.ad ], [ %i.jy, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.au

bb.af:                                            ; preds = %bb.t
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.u
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn113 = phi { ptr, i32 } [ %i.kd, %bb.ag ], [ %i.kc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.au

bb.ai:                                            ; preds = %bb.v
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.au

bb.aj:                                            ; preds = %_ZN2cv4Mat_INS_3VecIfLi2EEEE6createEii.exit144
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.lr.ph206.split:                                  ; preds = %.lr.ph206.split.preheader, %._crit_edge203
  %i.kg = phi i32 [ %i.kp, %._crit_edge203 ], [ %i.jo, %.lr.ph206.split.preheader ]
  %i.kh = phi i32 [ %i.kq, %._crit_edge203 ], [ %i.jt, %.lr.ph206.split.preheader ] ; 2 uses
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %._crit_edge203 ], [ 0, %.lr.ph206.split.preheader ] ; 3 uses
  %i.ki = trunc nuw nsw i64 %indvars.iv226 to i32
  %i.kj = uitofp nneg i32 %i.ki to double
  %i.kk = fsub double %i.kj, %i.jn
  %i.kl = fmul double %i.kk, %i.jk
  %i.km = fptrunc double %i.kl to float           ; 3 uses
  %i.kn = icmp sgt i32 %i.kh, 0
  br i1 %i.kn, label %.lr.ph202, label %._crit_edge203

.lr.ph202:                                        ; preds = %.lr.ph206.split
  %i.ko = fmul float %i.km, %i.km
  br label %bb.ak

._crit_edge203.loopexit:                          ; preds = %bb.ak
  %.pre234 = load i32, ptr %i.p, align 8, !tbaa !52
  br label %._crit_edge203

._crit_edge203:                                   ; preds = %._crit_edge203.loopexit, %.lr.ph206.split
  %i.kp = phi i32 [ %.pre234, %._crit_edge203.loopexit ], [ %i.kg, %.lr.ph206.split ] ; 2 uses
  %i.kq = phi i32 [ %i.lo, %._crit_edge203.loopexit ], [ %i.kh, %.lr.ph206.split ]
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.kr = sext i32 %i.kp to i64
  %i.ks = icmp slt i64 %indvars.iv.next227, %i.kr
  br i1 %i.ks, label %.lr.ph206.split, label %._crit_edge207, !llvm.loop !303

bb.ak:                                            ; preds = %.lr.ph202, %bb.ak
  %indvars.iv223 = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next224, %bb.ak ] ; 3 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv223 to i32
  %i.ku = uitofp nneg i32 %i.kt to float
  %i.kv = fsub float %i.ku, %i.je
  %i.kw = fmul float %i.jx, %i.kv                 ; 3 uses
  %i.kx = call noundef float @atanf(float noundef %i.kw) #20
  %i.ky = call float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.ko)
  %i.kz = fadd float %i.ky, 1.000000e+00
  %sqrt = call float @llvm.sqrt.f32(float %i.kz)
  %i.la = fdiv float %i.km, %sqrt
  %i.lb = call noundef float @asinf(float noundef %i.la) #20
  %i.lc = load i32, ptr %i.jq, align 4, !tbaa !61
  %i.ld = icmp slt i32 %i.lc, 2
  %i.le = load ptr, ptr %i.jr, align 8, !tbaa !63
  %i.lf = load i64, ptr %i.js, align 8
  %i.lg = mul i64 %i.lf, %indvars.iv226
  %.sink.idx.i145 = select i1 %i.ld, i64 0, i64 %i.lg
  %.sink.i146 = getelementptr inbounds nuw i8, ptr %i.le, i64 %.sink.idx.i145
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.sink.i146, i64 %indvars.iv223
  %i.li = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lb, i64 1
  %i.lk = fsub <2 x float> %i.lj, %i.jw
  %i.ll = load <2 x float>, ptr %i.cd, align 8, !tbaa !65
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ln = fdiv <2 x float> %i.lk, %i.lm
  store <2 x float> %i.ln, ptr %i.lh, align 4
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.lo = load i32, ptr %i.r, align 4, !tbaa !53  ; 2 uses
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv.next224, %i.lp
  br i1 %i.lq, label %bb.ak, label %._crit_edge203.loopexit, !llvm.loop !304

._crit_edge207:                                   ; preds = %._crit_edge203, %.lr.ph206, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.lr = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i32 0, ptr %i.lr, align 8, !tbaa !76
  %i.ls = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 0, ptr %i.ls, align 4, !tbaa !77
  store i32 -2130640859, ptr %31, align 8, !tbaa !59
  %i.lt = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %i.ja, ptr %i.lt, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #20
  %i.lu = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.lu, align 8, !tbaa !76
  %i.lv = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i32 0, ptr %i.lv, align 4, !tbaa !77
  store i32 16842752, ptr %32, align 8, !tbaa !59
  %i.lw = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %33, ptr %i.lw, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ly = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i64 0, ptr %i.lz, align 8
  store i32 33619968, ptr %34, align 8, !tbaa !59
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.mb = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.mc, align 8
  store i32 33619968, ptr %35, align 8, !tbaa !59
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !21
  invoke void @_ZN2cv11convertMapsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_ib(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef 35, i1 noundef zeroext false)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %._crit_edge207
end_hunk_1
