Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_match_3d?download=true
inline.NumInlined: 998
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !86
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !178
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !178
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !86
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !179
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !179
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3, double noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Matx.23", align 8       ; 5 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::Matx.24", align 8      ; 5 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %16 = alloca %"class.cv::Matx.20", align 8      ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Matx.23", align 8      ; 5 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %24 = alloca %"class.cv::Matx.24", align 8      ; 5 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %26 = alloca %"class.cv::Matx.23", align 8      ; 5 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %32 = alloca %"class.cv::Matx.24", align 8      ; 5 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %35 = alloca %"class.std::allocator", align 1   ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::allocator", align 1   ; 4 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator", align 1   ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::allocator", align 1   ; 3 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::allocator", align 1   ; 3 uses
  %44 = alloca %"class.std::vector.10", align 8   ; 16 uses
  %45 = alloca %"class.cv::Vec.2", align 8        ; 6 uses
  %46 = alloca %"class.cv::Vec.2", align 8        ; 6 uses
  %47 = alloca %"class.cv::Vec.2", align 8        ; 6 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %49 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %51 = alloca %"class.cv::Vec", align 16         ; 8 uses
  %52 = alloca %"class.cv::Matx.20", align 8      ; 14 uses
  %53 = alloca %"class.cv::Matx.20", align 8      ; 14 uses
  %54 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %55 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %56 = alloca %"class.cv::Vec", align 8          ; 7 uses
  %57 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %58 = alloca %"class.cv::Matx.20", align 8      ; 6 uses
  %59 = alloca %"class.cv::Matx.6", align 8       ; 21 uses
  %60 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %61 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %62 = alloca %"class.cv::Matx.6", align 16      ; 13 uses
  %63 = alloca %"class.cv::Matx.6", align 8       ; 21 uses
  %64 = alloca %"class.cv::Matx.20", align 8      ; 10 uses
  %65 = alloca %"class.cv::Vec", align 8          ; 5 uses
  %66 = alloca %"class.cv::Matx.6", align 16      ; 12 uses
  %67 = alloca %"struct.cv::Ptr", align 16        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !108, !noundef !109
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 152) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv9ExceptionC1ENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_i(ptr noundef nonnull align 8 dereferenceable(148) %i.d, i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 428)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN2cv9ExceptionE, ptr nonnull @_ZN2cv9ExceptionD1Ev) #29
          to label %bb.co unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0119 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %38, align 8, !tbaa !50    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.k = load i64, ptr %i.i, align 8, !tbaa !51
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.1120 = phi i1 [ true, %bb.g ], [ %.0119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0119, %bb.h ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.m = load ptr, ptr %36, align 8, !tbaa !50    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !51
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.r = load ptr, ptr %34, align 8, !tbaa !50    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread: ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.v = load ptr, ptr %34, align 8, !tbaa !50    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread
  %i.y = load i64, ptr %i.w, align 8, !tbaa !51
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !69
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !51
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br i1 %.1120, label %bb.i, label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br i1 %.1120, label %bb.i, label %bb.cn

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread
  %.pn.pn.pn341.ph = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %.pn.pn.pn341 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn.pn.pn341.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %bb.cn

bb.j:                                             ; preds = %bb.a
  %i.af = load i32, ptr %1, align 8, !tbaa !46
  %i.ag = and i32 %i.af, 4095
  %i.ah = icmp eq i32 %i.ag, 5
  br i1 %i.ah, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd, ptr noundef nonnull @.str.1, i32 noundef 431) #29
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.o:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %40, align 8, !tbaa !50   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.o
  %i.an = load i64, ptr %i.al, align 8, !tbaa !51
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.n
  %.pn143 = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.cn

bb.p:                                             ; preds = %bb.j
  %i.ap = fcmp ole double %3, 1.000000e+00
  %i.aq = fcmp ogt double %3, 0.000000e+00
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd, ptr noundef nonnull @.str.1, i32 noundef 432) #29
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %42, align 8, !tbaa !50   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.u
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !51
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.t
  %.pn145 = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.as, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  br label %bb.cn

bb.v:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  %i.bb = insertelement <2 x double> poison, double %3, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fdiv <2 x double> <double 1.000000e+00, double f0x401921FB54442D18>, %i.bc ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = fptosi double %i.be to i32              ; 4 uses
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !35
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = tail call double @llvm.floor.f64(double %i.bg)
  %i.bi = fptosi double %i.bh to i32              ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !55
  %i.bl = fptrunc double %i.bk to float
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  store i64 0, ptr %45, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  store i64 0, ptr %46, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  store i64 0, ptr %47, align 8
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv12ppf_match_3d14computeBboxStdENS_3MatERNS_3VecIfLi2EEES4_S4_(ptr noundef nonnull align 8 %48, ptr noundef nonnull align 4 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.bo = fptrunc double %4 to float
  invoke void @_ZN2cv12ppf_match_3d22samplePCByQuantizationENS_3MatERNS_3VecIfLi2EEES4_S4_fi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %49, ptr noundef nonnull align 8 %50, ptr noundef nonnull align 4 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47, float noundef %i.bo, i32 noundef 0)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %i.br = sdiv i32 %i.bq, %i.bf                   ; 2 uses
  %i.bs = add nsw i32 %i.br, 4
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = icmp slt i32 %i.br, -4
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.bx = load ptr, ptr %44, align 8, !tbaa !79
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  %i.cc = icmp ult i64 %i.cb, %i.bt
  br i1 %i.cc, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bz
  %i.ch = shl nuw nsw i64 %i.bt, 4
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #31
          to label %.noexc197 unwind label %bb.ah ; 4 uses

.noexc197:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %44, align 8, !tbaa !79   ; 5 uses
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc197, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.ci, %.noexc197 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %i.cj, %.noexc197 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.cm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !206, !noalias !205
  store ptr null, ptr %i.cl, align 8, !tbaa !83, !alias.scope !206, !noalias !205
  store <2 x ptr> %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !89, !alias.scope !205, !noalias !206
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !98, !alias.scope !206, !noalias !205
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.ck
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc197
  %.not.i8.i = icmp eq ptr %i.cj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cj to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cs) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ci, ptr %44, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store ptr %i.ct, ptr %i.cd, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.bt
  store ptr %i.cu, ptr %i.bv, align 8, !tbaa !110
  %.pre = load i32, ptr %i.bp, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit: ; preds = %bb.ab, %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.cv = phi i32 [ %i.bq, %bb.ab ], [ %.pre, %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph390, label %._crit_edge

.lr.ph390:                                        ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %68 = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %49, i64 128 ; 2 uses
  %70 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %71 = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %72 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %52, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %52, i64 40 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %52, i64 56 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %52, i64 64 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %53, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.dm = mul i32 %i.bn, %i.bi
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.dq = fpext float %i.bl to double
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.du = sitofp i32 %i.bi to double              ; 2 uses
  %.not391 = icmp eq i32 %i.bn, 0
  %i.dv = icmp slt i32 %i.bi, 1
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.el = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %64, i64 56
  %i.fo = getelementptr inbounds nuw i8, ptr %64, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %62, i64 96
  %i.gi = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %62, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.gl = getelementptr inbounds nuw i8, ptr %62, i64 112
  %i.gm = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.gn = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %63, i64 56
  %i.gq = getelementptr inbounds nuw i8, ptr %63, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %63, i64 72
  %i.gs = getelementptr inbounds nuw i8, ptr %63, i64 80
  %i.gt = getelementptr inbounds nuw i8, ptr %63, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %63, i64 96
  %i.gv = getelementptr inbounds nuw i8, ptr %63, i64 104
  %i.gw = getelementptr inbounds nuw i8, ptr %63, i64 112
  %i.gx = getelementptr inbounds nuw i8, ptr %63, i64 120
  %i.gy = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %59, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %59, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %59, i64 56
  %i.hg = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %66, i64 48
  %i.hi = getelementptr inbounds nuw i8, ptr %59, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %59, i64 72
  %i.hk = getelementptr inbounds nuw i8, ptr %59, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %59, i64 88
  %i.hm = getelementptr inbounds nuw i8, ptr %66, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %66, i64 80
  %i.ho = getelementptr inbounds nuw i8, ptr %59, i64 96
  %i.hp = getelementptr inbounds nuw i8, ptr %59, i64 104
  %i.hq = getelementptr inbounds nuw i8, ptr %59, i64 112
  %i.hr = getelementptr inbounds nuw i8, ptr %59, i64 120
  %i.hs = getelementptr inbounds nuw i8, ptr %66, i64 96
  %i.ht = getelementptr inbounds nuw i8, ptr %66, i64 112
  %i.hu = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.hw = zext nneg i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bi to i64        ; 2 uses
  %brmerge = select i1 %.not391, i1 true, i1 %i.dv
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hx = icmp eq i32 %i.bi, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod453 = trunc i32 %i.bi to i1
  br label %bb.ai

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %.lcssa = phi i32 [ %i.cv, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit ], [ %i.zc, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.hy = sdiv i32 %.lcssa, %i.bf
  invoke void @_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cb unwind label %bb.cj

bb.ad:                                            ; preds = %bb.v
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ae:                                            ; preds = %bb.w
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #26
  br label %bb.cm

bb.af:                                            ; preds = %bb.x
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ag:                                            ; preds = %bb.y
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #26
  br label %bb.cl

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, %bb.aa
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ai:                                            ; preds = %.lr.ph390, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next403, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.ie = load ptr, ptr %68, align 8, !tbaa !57
  %i.if = load i64, ptr %69, align 8, !tbaa !58
  %i.ig = mul i64 %i.if, %indvars.iv402
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ig ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.il = load float, ptr %i.ik, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %i.im = load float, ptr %i.ii, align 4, !tbaa !53
  %i.in = load <2 x float>, ptr %i.ih, align 4, !tbaa !53
  %i.io = fpext <2 x float> %i.in to <2 x double> ; 2 uses
  %i.ip = fpext float %i.im to double             ; 2 uses
  %i.iq = load <2 x float>, ptr %i.ij, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %52, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %53, i8 0, i64 72, i1 false)
  %i.ir = call noalias ptr @calloc(i64 noundef %i.dn, i64 noundef 4) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store <2 x double> %i.io, ptr %54, align 16, !tbaa !36, !alias.scope !207
  store double %i.ip, ptr %i.do, align 16, !tbaa !36, !alias.scope !207
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.is = fpext <2 x float> %i.iq to <2 x double> ; 5 uses
  store <2 x double> %i.is, ptr %55, align 16, !tbaa !36, !alias.scope !208
  %i.it = fpext float %i.il to double             ; 3 uses
  store double %i.it, ptr %i.dp, align 16, !tbaa !36, !alias.scope !208
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.iu = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph371, label %.preheader354

.lr.ph371:                                        ; preds = %bb.aj
  %i.iw = load double, ptr %70, align 8
  %i.ix = load double, ptr %71, align 16
  %i.iy = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iz = extractelement <2 x double> %i.is, i64 0
  %i.ja = extractelement <2 x double> %i.is, i64 1
  %i.jb = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.al

.preheader354:                                    ; preds = %.loopexit, %bb.aj
  br i1 %brmerge, label %._crit_edge383, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader354, %._crit_edge.us
  %.080382.us = phi i32 [ %i.jx, %._crit_edge.us ], [ 0, %.preheader354 ] ; 4 uses
  %.0127381.us = phi i32 [ %.2129.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0130380.us = phi i32 [ %.2132.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0133379.us = phi i32 [ %.2135.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %i.jc = mul i32 %.080382.us, %i.bi              ; 3 uses
  br i1 %i.hx, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv398 = phi i64 [ %indvars.iv.next399.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.1128374.us = phi i32 [ %.2129.us.1, %.preheader.us.new ], [ %.0127381.us, %.preheader.us ] ; 2 uses
  %.1131373.us = phi i32 [ %.2132.us.1, %.preheader.us.new ], [ %.0130380.us, %.preheader.us ]
  %.1134372.us = phi i32 [ %.2135.us.1, %.preheader.us.new ], [ %.0133379.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.jd = trunc nuw nsw i64 %indvars.iv398 to i32 ; 2 uses
  %i.je = add i32 %i.jc, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !63 ; 2 uses
  %i.ji = icmp ugt i32 %i.jh, %.1128374.us        ; 2 uses
  %.2132.us = select i1 %i.ji, i32 %i.jd, i32 %.1131373.us
  %.2129.us = call i32 @llvm.umax.i32(i32 %i.jh, i32 %.1128374.us) ; 2 uses
  store i32 0, ptr %i.jg, align 4, !tbaa !63
  %i.jj = trunc i64 %indvars.iv398 to i32
  %i.jk = or disjoint i32 %i.jj, 1                ; 2 uses
  %i.jl = add i32 %i.jc, %i.jk
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jm ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !63 ; 2 uses
  %i.jp = icmp ugt i32 %i.jo, %.2129.us           ; 2 uses
  %i.jq = or i1 %i.jp, %i.ji
  %.2135.us.1 = select i1 %i.jq, i32 %.080382.us, i32 %.1134372.us ; 3 uses
  %.2132.us.1 = select i1 %i.jp, i32 %i.jk, i32 %.2132.us ; 3 uses
  %.2129.us.1 = call i32 @llvm.umax.i32(i32 %i.jo, i32 %.2129.us) ; 3 uses
  store i32 0, ptr %i.jn, align 4, !tbaa !63
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !187

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv398.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next399.1, %._crit_edge.us.unr-lcssa ]
  %.1128374.us.epil.init = phi i32 [ %.0127381.us, %.preheader.us ], [ %.2129.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.1131373.us.epil.init = phi i32 [ %.0130380.us, %.preheader.us ], [ %.2132.us.1, %._crit_edge.us.unr-lcssa ]
  %.1134372.us.epil.init = phi i32 [ %.0133379.us, %.preheader.us ], [ %.2135.us.1, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod453)
  %i.jr = trunc nuw nsw i64 %indvars.iv398.epil.init to i32 ; 2 uses
  %i.js = add i32 %i.jc, %i.jr
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !63 ; 2 uses
  %i.jw = icmp ugt i32 %i.jv, %.1128374.us.epil.init ; 2 uses
  %.2135.us.epil = select i1 %i.jw, i32 %.080382.us, i32 %.1134372.us.epil.init
  %.2132.us.epil = select i1 %i.jw, i32 %i.jr, i32 %.1131373.us.epil.init
  %.2129.us.epil = call i32 @llvm.umax.i32(i32 %i.jv, i32 %.1128374.us.epil.init)
  store i32 0, ptr %i.ju, align 4, !tbaa !63
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.2135.us.lcssa = phi i32 [ %.2135.us.1, %._crit_edge.us.unr-lcssa ], [ %.2135.us.epil, %.epil.preheader ] ; 2 uses
  %.2132.us.lcssa = phi i32 [ %.2132.us.1, %._crit_edge.us.unr-lcssa ], [ %.2132.us.epil, %.epil.preheader ] ; 2 uses
  %.2129.us.lcssa = phi i32 [ %.2129.us.1, %._crit_edge.us.unr-lcssa ], [ %.2129.us.epil, %.epil.preheader ] ; 2 uses
  %i.jx = add nuw i32 %.080382.us, 1              ; 2 uses
  %exitcond401.not = icmp eq i32 %i.jx, %i.bn
  br i1 %exitcond401.not, label %._crit_edge383.loopexit, label %.preheader.us, !llvm.loop !188

bb.ak:                                            ; preds = %bb.ai
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %bb.ca

bb.al:                                            ; preds = %.lr.ph371, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv402, %indvars.iv
  br i1 %.not, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jz = load ptr, ptr %68, align 8, !tbaa !57
  %i.ka = load i64, ptr %69, align 8, !tbaa !58
  %i.kb = mul i64 %i.ka, %indvars.iv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kb ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !53
  %i.kf = fpext float %i.ke to double             ; 3 uses
  %i.kg = load <2 x float>, ptr %i.kc, align 4, !tbaa !53
  %i.kh = fpext <2 x float> %i.kg to <2 x double> ; 4 uses
  %i.ki = fsub <2 x double> %i.kh, %i.io          ; 3 uses
  %i.kj = fsub double %i.kf, %i.ip                ; 3 uses
  %i.kk = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.kl = call double @llvm.fmuladd.f64(double %i.kk, double %i.kk, double 0.000000e+00)
  %i.km = extractelement <2 x double> %i.ki, i64 1 ; 2 uses
  %i.kn = call double @llvm.fmuladd.f64(double %i.km, double %i.km, double %i.kl)
  %i.ko = call double @llvm.fmuladd.f64(double %i.kj, double %i.kj, double %i.kn)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.ko) ; 3 uses
  %i.kp = fcmp ugt double %sqrt.i, f0x3E80000000000000
  br i1 %i.kp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !53
  %i.ks = fpext float %i.kr to double             ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !53
  %i.kv = fpext float %i.ku to double             ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !53
  %i.ky = fpext float %i.kx to double             ; 2 uses
  %i.kz = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.la = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x double> %i.ki, %i.lb          ; 2 uses
  %i.ld = fmul double %i.kj, %i.kz
  %i.le = insertelement <2 x double> %i.is, double %i.ky, i64 1
  %i.lf = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lf, <2 x double> zeroinitializer)
  %i.lh = insertelement <2 x double> %i.jb, double %i.kv, i64 1
  %i.li = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.li, <2 x double> %i.lg)
  %i.lk = insertelement <2 x double> %i.iy, double %i.ks, i64 1
  %i.ll = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.lm, <2 x double> %i.lj) ; 2 uses
  %i.lo = extractelement <2 x double> %i.ln, i64 0
  %i.lp = call noundef double @acos(double noundef %i.lo) #26
  %i.lq = extractelement <2 x double> %i.ln, i64 1
  %i.lr = call noundef double @acos(double noundef %i.lq) #26
  %i.ls = call double @llvm.fmuladd.f64(double %i.iz, double %i.ky, double 0.000000e+00)
  %i.lt = call double @llvm.fmuladd.f64(double %i.ja, double %i.kv, double %i.ls)
  %i.lu = call noundef double @llvm.fmuladd.f64(double %i.it, double %i.ks, double %i.lt)
  %i.lv = call noundef double @acos(double noundef %i.lu) #26
  %i.lw = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %i.lv, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.6309.0 = phi double [ %i.lr, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.ly = phi <2 x double> [ %i.lx, %bb.an ], [ zeroinitializer, %bb.am ]
  %i.lz = load double, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %i.ma = load double, ptr %i.cy, align 8, !tbaa !36, !noalias !209
  %i.mb = extractelement <2 x double> %i.kh, i64 0
  %i.mc = call double @llvm.fmuladd.f64(double %i.ma, double %i.mb, double 0.000000e+00)
  %i.md = load double, ptr %i.cz, align 8, !tbaa !36, !noalias !209
  %i.me = extractelement <2 x double> %i.kh, i64 1 ; 2 uses
  %i.mf = call double @llvm.fmuladd.f64(double %i.md, double %i.me, double %i.mc)
  %i.mg = load <2 x double>, ptr %i.da, align 8, !tbaa !36, !noalias !209
  %i.mh = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.mi = shufflevector <2 x double> %i.mh, <2 x double> %i.kh, <2 x i32> <i32 0, i32 2>
  %i.mj = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mf, i64 0
  %i.mk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.mi, <2 x double> %i.mj) ; 2 uses
  %i.ml = load double, ptr %i.dc, align 8, !tbaa !36, !noalias !209
  %i.mm = extractelement <2 x double> %i.mk, i64 1
  %i.mn = call double @llvm.fmuladd.f64(double %i.ml, double %i.me, double %i.mm)
  %i.mo = load double, ptr %i.dd, align 8, !tbaa !36, !noalias !209
  %i.mp = call double @llvm.fmuladd.f64(double %i.mo, double %i.kf, double %i.mn)
  %i.mq = extractelement <2 x double> %i.mk, i64 0
  %i.mr = fadd double %i.mq, %i.iw
  %i.ms = fadd double %i.mp, %i.ix                ; 2 uses
  %i.mt = fneg double %i.ms
  %i.mu = call double @atan2(double noundef %i.mt, double noundef %i.mr) #26 ; 4 uses
  %i.mv = fcmp uno double %i.mu, 0.000000e+00
  br i1 %i.mv, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mw = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = fdiv <2 x double> %i.ly, %i.mx          ; 2 uses
  %i.mz = extractelement <2 x double> %i.my, i64 0
  %i.na = fptosi double %i.mz to i32
  %i.nb = mul i32 %i.na, -1789642873              ; 2 uses
  %i.nc = call i32 @llvm.fshl.i32(i32 %i.nb, i32 %i.nb, i32 11)
  %i.nd = mul i32 %i.nc, 718793509
  %i.ne = xor i32 %i.nd, -1914584186
  %i.nf = add i32 %i.ne, -1162247668              ; 2 uses
  %i.ng = mul i32 %i.nf, 3
  %i.nh = add i32 %i.ng, 1390208809
  %i.ni = extractelement <2 x double> %i.my, i64 1
  %i.nj = fptosi double %i.ni to i32
  %i.nk = mul i32 %i.nj, 1713515327               ; 2 uses
  %i.nl = call i32 @llvm.fshl.i32(i32 %i.nk, i32 %i.nk, i32 11)
  %i.nm = mul i32 %i.nl, 1107688271
  %i.nn = xor i32 %i.nh, %i.nm
  %i.no = fdiv double %.sroa.6309.0, %i.lz
  %i.np = fptosi double %i.no to i32
  %i.nq = mul i32 %i.np, 718793509                ; 2 uses
  %i.nr = call i32 @llvm.fshl.i32(i32 %i.nq, i32 %i.nq, i32 11)
  %i.ns = mul i32 %i.nr, -1789642873
  %i.nt = xor i32 %i.ns, 68777331
  %i.nu = add i32 %i.nf, %i.nt
  %i.nv = mul i32 %i.nu, 3
  %i.nw = add i32 %i.nv, 944331445                ; 3 uses
  %i.nx = add i32 %i.nn, %i.nw                    ; 2 uses
  %i.ny = mul i32 %i.nx, 3
  %i.nz = add i32 %i.ny, 1390208809
  %i.oa = call i32 @llvm.fshl.i32(i32 %i.nw, i32 %i.nw, i32 17)
  %i.ob = fdiv double %sqrt.i, %i.dq
  %i.oc = fptosi double %i.ob to i32
  %i.od = mul i32 %i.oc, 1107688271               ; 2 uses
  %i.oe = call i32 @llvm.fshl.i32(i32 %i.od, i32 %i.od, i32 11)
  %i.of = mul i32 %i.oe, 1713515327
  %i.og = xor i32 %i.oa, %i.of
  %i.oh = add i32 %i.og, %i.nx
  %i.oi = mul i32 %i.oh, 3
  %i.oj = add i32 %i.oi, 944331445
  %i.ok = xor i32 %i.oj, 16                       ; 2 uses
  %i.ol = add i32 %i.nz, %i.ok                    ; 3 uses
  %i.om = add i32 %i.ol, %i.ok                    ; 2 uses
  %i.on = lshr i32 %i.om, 16
  %i.oo = xor i32 %i.on, %i.om
  %i.op = mul i32 %i.oo, -2048144789              ; 2 uses
  %i.oq = lshr i32 %i.op, 13
  %i.or = xor i32 %i.oq, %i.op
  %i.os = mul i32 %i.or, -1028477387              ; 2 uses
  %i.ot = lshr i32 %i.os, 16
  %i.ou = xor i32 %i.ot, %i.os
  %i.ov = lshr i32 %i.ol, 16
  %i.ow = xor i32 %i.ov, %i.ol
  %i.ox = mul i32 %i.ow, -2048144789              ; 2 uses
  %i.oy = lshr i32 %i.ox, 13
  %i.oz = xor i32 %i.oy, %i.ox
  %i.pa = mul i32 %i.oz, -1028477387              ; 2 uses
  %i.pb = lshr i32 %i.pa, 16
  %i.pc = xor i32 %i.pb, %i.pa
  %i.pd = add i32 %i.ou, %i.pc
  %i.pe = call double @sin(double noundef %i.mu) #26
  %i.pf = fmul double %i.ms, %i.pe
  %i.pg = fcmp olt double %i.pf, 0.000000e+00
  %i.ph = fneg double %i.mu
  %.0125 = select i1 %i.pg, double %i.ph, double %i.mu
  %i.pi = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.pj = invoke noundef ptr @_ZN2cv12ppf_match_3d24hashtableGetBucketHashedEPNS0_8HSHTBL_iEj(ptr noundef %i.pi, i32 noundef %i.pd)
          to label %.preheader353 unwind label %bb.ar ; 2 uses

.preheader353:                                    ; preds = %bb.ap
  %.not184368 = icmp eq ptr %i.pj, null
  br i1 %.not184368, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader353
  %i.pk = load ptr, ptr %i.ds, align 8, !tbaa !57
  %i.pl = load i64, ptr %i.dt, align 8, !tbaa !58
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph, %bb.aq
  %.0124369 = phi ptr [ %i.pj, %.lr.ph ], [ %i.qk, %bb.aq ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.0124369, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !212 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !61
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !62
  %i.ps = sext i32 %i.pr to i64
  %i.pt = mul i64 %i.pl, %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !53
  %i.px = fpext float %i.pw to double
  %i.py = fadd double %.0125, %i.px
  %i.pz = fadd double %i.py, f0x401921FB54442D18
  %i.qa = fmul double %i.pz, %i.du
  %i.qb = fdiv double %i.qa, f0x402921FB54442D18
  %i.qc = fptosi double %i.qb to i32
  %i.qd = mul nsw i32 %i.pp, %i.bi
  %i.qe = add nsw i32 %i.qd, %i.qc
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.qf ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !63
  %i.qi = add i32 %i.qh, 1
  store i32 %i.qi, ptr %i.qg, align 4, !tbaa !63
  %i.qj = getelementptr inbounds nuw i8, ptr %.0124369, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !213 ; 2 uses
  %.not184 = icmp eq ptr %i.qk, null
  br i1 %.not184, label %.loopexit, label %bb.aq, !llvm.loop !191

bb.ar:                                            ; preds = %bb.ap
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit:                                        ; preds = %bb.aq, %.preheader353, %bb.ao, %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qm = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %indvars.iv.next, %i.qn
  br i1 %i.qo, label %bb.al, label %.preheader354, !llvm.loop !192

._crit_edge383.loopexit:                          ; preds = %._crit_edge.us
  %i.qp = sitofp i32 %.2132.us.lcssa to double
  %i.qq = fmul nnan double %i.qp, f0x402921FB54442D18
  %i.qr = zext i32 %.2129.us.lcssa to i64
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %.preheader354, %._crit_edge383.loopexit
  %.0133.lcssa = phi i32 [ 0, %.preheader354 ], [ %.2135.us.lcssa, %._crit_edge383.loopexit ] ; 2 uses
  %.0130.lcssa = phi double [ 0.000000e+00, %.preheader354 ], [ %i.qq, %._crit_edge383.loopexit ]
  %.0127.lcssa = phi i64 [ 0, %.preheader354 ], [ %i.qr, %._crit_edge383.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %58, i8 0, i64 72, i1 false), !tbaa !36
  %73 = load double, ptr %52, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %74 = load double, ptr %i.cy, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %i.qs = load double, ptr %i.db, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %75 = load double, ptr %72, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %76 = load double, ptr %i.cz, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %77 = load double, ptr %i.dc, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %78 = load double, ptr %i.cx, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %i.qt = load double, ptr %i.da, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %i.qu = load double, ptr %i.dd, align 8, !tbaa !36, !noalias !214 ; 2 uses
  store double %73, ptr %53, align 8
  store double %74, ptr %i.de, align 8
  store double %i.qs, ptr %i.df, align 8
  store double %75, ptr %i.dg, align 8
  store double %76, ptr %i.dh, align 8
  store double %77, ptr %i.di, align 8
  store double %78, ptr %i.dj, align 8
  store double %i.qt, ptr %i.dk, align 8
  store double %i.qu, ptr %i.dl, align 8, !tbaa !51
  %i.qv = fneg double %73
  %79 = fneg double %74
  %80 = fneg double %i.qs
  %81 = fneg double %75
  %82 = fneg double %i.qu
  %83 = load double, ptr %71, align 16, !tbaa !36, !noalias !215 ; 3 uses
  %84 = insertelement <2 x double> poison, double %78, i64 0
  %85 = insertelement <2 x double> %84, double %76, i64 1
  %86 = fneg <2 x double> %85
  %87 = load <2 x double>, ptr %51, align 16, !tbaa !36, !noalias !215 ; 4 uses
  %88 = extractelement <2 x double> %87, i64 0    ; 2 uses
  %89 = call double @llvm.fmuladd.f64(double %i.qv, double %88, double 0.000000e+00)
  %90 = extractelement <2 x double> %87, i64 1
  %91 = call double @llvm.fmuladd.f64(double %79, double %90, double %89)
  %92 = call double @llvm.fmuladd.f64(double %80, double %83, double %91)
  %93 = call double @llvm.fmuladd.f64(double %81, double %88, double 0.000000e+00)
  %i.qw = insertelement <2 x double> <double 0.000000e+00, double poison>, double %93, i64 1
  %94 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %86, <2 x double> %87, <2 x double> %i.qw)
  %95 = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.qx = insertelement <2 x double> %95, double %77, i64 1
  %96 = fneg <2 x double> %i.qx
  %97 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qy = insertelement <2 x double> %97, double %83, i64 1
  %98 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %i.qy, <2 x double> %94) ; 2 uses
  %99 = extractelement <2 x double> %98, i64 0
  %i.qz = call double @llvm.fmuladd.f64(double %82, double %83, double %99)
  store double %92, ptr %56, align 8
  %100 = extractelement <2 x double> %98, i64 1
  store double %100, ptr %.sroa.5273.0..sroa_idx, align 8
  store double %i.qz, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %59, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %26, i8 0, i64 96, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store i32 -1056833530, ptr %27, align 8, !tbaa !67
  store ptr %53, ptr %i.dx, align 8, !tbaa !68
  store i64 12884901891, ptr %i.dw, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  store i32 -1056833530, ptr %28, align 8, !tbaa !67
  store ptr %56, ptr %i.dz, align 8, !tbaa !68
  store i64 12884901889, ptr %i.dy, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  store i32 -1040056314, ptr %29, align 8, !tbaa !67
  store ptr %26, ptr %i.ea, align 8, !tbaa !68
  store i64 12884901892, ptr %i.eb, align 8, !tbaa !63
  invoke void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %.noexc198 unwind label %bb.bs

.noexc198:                                        ; preds = %._crit_edge383
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  store i32 -1056833530, ptr %30, align 8, !tbaa !67
  store ptr %26, ptr %i.ed, align 8, !tbaa !68
  store i64 12884901892, ptr %i.ec, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ee, align 8, !tbaa !36
  store i32 -1056833530, ptr %31, align 8, !tbaa !67
  store ptr %32, ptr %i.eg, align 8, !tbaa !68
  store i64 4294967300, ptr %i.ef, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  store i32 -1040056314, ptr %33, align 8, !tbaa !67
  store ptr %59, ptr %i.eh, align 8, !tbaa !68
  store i64 17179869188, ptr %i.ei, align 8, !tbaa !63
  invoke void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.as unwind label %bb.bs

bb.as:                                            ; preds = %.noexc198
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.ra = load ptr, ptr %i.ej, align 8, !tbaa !57
  %i.rb = load i64, ptr %i.ek, align 8, !tbaa !58
  %i.rc = sext i32 %.0133.lcssa to i64
  %i.rd = mul i64 %i.rb, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rd ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !53
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 20
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  %i.rk = load <2 x float>, ptr %i.re, align 4, !tbaa !53
  %i.rl = fpext <2 x float> %i.rk to <2 x double>
  store <2 x double> %i.rl, ptr %60, align 16, !tbaa !36, !alias.scope !216
  %i.rm = fpext float %i.rg to double
  store double %i.rm, ptr %i.el, align 16, !tbaa !36, !alias.scope !216
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26
  %i.rn = load <2 x float>, ptr %i.rh, align 4, !tbaa !53
  %i.ro = fpext <2 x float> %i.rn to <2 x double>
  store <2 x double> %i.ro, ptr %61, align 16, !tbaa !36, !alias.scope !217
  %i.rp = fpext float %i.rj to double
  store double %i.rp, ptr %i.em, align 16, !tbaa !36, !alias.scope !217
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(72) %58, ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %bb.at unwind label %bb.bt

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %62, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %18, i8 0, i64 96, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store i32 -1056833530, ptr %19, align 8, !tbaa !67
  store ptr %58, ptr %i.eo, align 8, !tbaa !68
  store i64 12884901891, ptr %i.en, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store i32 -1056833530, ptr %20, align 8, !tbaa !67
  store ptr %57, ptr %i.eq, align 8, !tbaa !68
  store i64 12884901889, ptr %i.ep, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store i32 -1040056314, ptr %21, align 8, !tbaa !67
  store ptr %18, ptr %i.er, align 8, !tbaa !68
  store i64 12884901892, ptr %i.es, align 8, !tbaa !63
  invoke void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %.noexc200 unwind label %bb.bu

.noexc200:                                        ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store i32 -1056833530, ptr %22, align 8, !tbaa !67
  store ptr %18, ptr %i.eu, align 8, !tbaa !68
  store i64 12884901892, ptr %i.et, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ev, align 8, !tbaa !36
  store i32 -1056833530, ptr %23, align 8, !tbaa !67
  store ptr %24, ptr %i.ex, align 8, !tbaa !68
  store i64 4294967300, ptr %i.ew, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store i32 -1040056314, ptr %25, align 8, !tbaa !67
  store ptr %62, ptr %i.ey, align 8, !tbaa !68
  store i64 17179869188, ptr %i.ez, align 8, !tbaa !63
  invoke void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.au unwind label %bb.bu

bb.au:                                            ; preds = %.noexc200
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.rq = fdiv double %.0130.lcssa, %i.du
  %i.rr = fadd double %i.rq, f0xC01921FB54442D18  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %63, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %64, i8 0, i64 72, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %65, i8 0, i64 24, i1 false)
  %i.rs = call double @sin(double noundef %i.rr) #26 ; 2 uses
  %i.rt = call double @cos(double noundef %i.rr) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, i8 0, i64 56, i1 false), !tbaa !36, !alias.scope !218
  store double 1.000000e+00, ptr %16, align 8, !tbaa !36, !alias.scope !218
  store double 1.000000e+00, ptr %i.fb, align 8, !tbaa !36, !alias.scope !218
  store double 1.000000e+00, ptr %i.fc, align 8, !tbaa !36, !alias.scope !218
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %15, align 16, !tbaa !63
  store i32 153, ptr %i.fd, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fe, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ff, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc203 unwind label %bb.bv

.noexc203:                                        ; preds = %bb.au
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.fg, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %16, i64 noundef 0)
          to label %.noexc204 unwind label %bb.bv

.noexc204:                                        ; preds = %.noexc203
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i64 0, ptr %i.fi, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !67
  store ptr %15, ptr %i.fh, align 8, !tbaa !68
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %.noexc204
  %i.ru = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body

bb.aw:                                            ; preds = %.noexc204
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store i32 -1040056314, ptr %17, align 8, !tbaa !67
  store ptr %64, ptr %i.fj, align 8, !tbaa !68
  store i64 12884901891, ptr %i.fk, align 8, !tbaa !63
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.body

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  store double %i.rt, ptr %i.fl, align 8, !tbaa !36
  %i.rw = fneg double %i.rs
  store double %i.rw, ptr %i.fm, align 8, !tbaa !36
  store double %i.rs, ptr %i.fn, align 8, !tbaa !36
  store double %i.rt, ptr %i.fo, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 96, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 -1056833530, ptr %6, align 8, !tbaa !67
end_hunk_0
