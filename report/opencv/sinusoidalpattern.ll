Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sinusoidalpattern?download=true
inline.NumInlined: 996
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv16structured_light34SinusoidalPatternProfilometry_Impl19computeDftMagnitudeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  store i64 0, ptr %i.l, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !78
  store ptr %6, ptr %i.k, align 8, !tbaa !34
  invoke void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store <2 x double> splat (double 1.000000e+00), ptr %10, align 16, !tbaa !95, !alias.scope !160
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.n, align 16, !tbaa !95, !alias.scope !160
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !82
  store i32 16842752, ptr %3, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.q, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1056833530, ptr %4, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %10, ptr %i.s, align 8, !tbaa !34
  store i64 17179869185, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 -1040121856, ptr %5, align 8, !tbaa !78
  store ptr %i.d, ptr %i.t, align 8, !tbaa !34
  %i.v = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i32 noundef -1)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.x, align 4, !tbaa !82
  store i32 16842752, ptr %11, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.d, ptr %i.y, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.aa, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !78
  store ptr %i.d, ptr %i.z, align 8, !tbaa !34
  invoke void @_ZN2cv3logERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %14, align 4, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ae = load <2 x i32>, ptr %i.ab, align 8, !tbaa !96
  %i.af = and <2 x i32> %i.ae, splat (i32 -2)
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ag, ptr %i.ad, align 4, !tbaa !96
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %14)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.n

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.g unwind label %bb.o       ; 0 uses

bb.g:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.aj, align 4, !tbaa !82
  store i32 16842752, ptr %15, align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.d, ptr %i.ak, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.am, align 8
  store i32 50397184, ptr %16, align 8, !tbaa !78
  store ptr %i.d, ptr %i.al, align 8, !tbaa !34
  %i.an = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 32, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.j:                                             ; preds = %bb.c, %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.r

bb.l:                                             ; preds = %.noexc, %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.r

bb.m:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.r

bb.n:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn31 = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.at, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.h, %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %.pn31, %bb.p ], [ %i.as, %bb.m ], [ %i.ar, %bb.l ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aw) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn33.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv16structured_light34SinusoidalPatternProfilometry_Impl24findMaxInHalvesTransformERKNS_11_InputArrayERNS_6Point_IiEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Rect_", align 4         ; 8 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Rect_", align 4         ; 8 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %16 = load <2 x i32>, ptr %i.f, align 8, !tbaa !96
  %17 = sdiv <2 x i32> %16, splat (i32 2)         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !63, !range !64, !noundef !65
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.j = load i32, ptr %i.e, align 4, !tbaa !75
  %18 = extractelement <2 x i32> %17, i64 0       ; 2 uses
  %i.k = add nsw i32 %18, -5                      ; 2 uses
  store i32 0, ptr %7, align 4, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.j, ptr %i.m, align 4, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.k, ptr %i.n, align 4, !tbaa !94
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.e

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.p = add nsw i32 %18, 5
  %i.q = load i32, ptr %i.e, align 4, !tbaa !75
  store i32 0, ptr %9, align 4, !tbaa !91
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.p, ptr %i.r, align 4, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.q, ptr %i.s, align 4, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.k, ptr %i.t, align 4, !tbaa !94
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %9)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit58 unwind label %bb.h

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit58:             ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit58
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn48 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ad

bb.h:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit58
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn50 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ad

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %19 = extractelement <2 x i32> %17, i64 1       ; 2 uses
  %i.z = add nsw i32 %19, -5                      ; 2 uses
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !76
  store i32 0, ptr %11, align 4, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !94
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit59 unwind label %bb.n

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit59:             ; preds = %bb.k
  %i.ae = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit59
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.af = add nsw i32 %19, 5
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !76
  store i32 %i.af, ptr %13, align 4, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.z, ptr %i.ai, align 4, !tbaa !93
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !94
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %13)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit60 unwind label %bb.q

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit60:             ; preds = %bb.l
  %i.ak = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.m unwind label %bb.r       ; 0 uses

bb.m:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit60
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit59
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.al, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ad

bb.q:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit60
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn46 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.an, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ad

bb.t:                                             ; preds = %bb.d, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.ap, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.aq, align 4, !tbaa !82
  store i32 16842752, ptr %14, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %4, ptr %i.ar, align 8, !tbaa !34
  %i.as = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.at, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.au, align 4, !tbaa !82
  store i32 16842752, ptr %15, align 8, !tbaa !78
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %5, ptr %i.av, align 8, !tbaa !34
  %i.aw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ax = load i8, ptr %i.g, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !80
  %20 = extractelement <2 x i32> %17, i64 0
  %i.bb = add nsw i32 %20, 5
  %i.bc = add i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !80
  br label %bb.ac

bb.z:                                             ; preds = %bb.u, %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ad

bb.aa:                                            ; preds = %bb.w, %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x
  %i.bf = load i32, ptr %3, align 4, !tbaa !79
  %21 = extractelement <2 x i32> %17, i64 1
  %i.bg = add nsw i32 %21, 5
  %i.bh = add i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %3, align 4, !tbaa !79
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.bi = load double, ptr %i.a, align 8, !tbaa !95
  %i.bj = fcmp une double %i.bi, -1.000000e+00
  %i.bk = load double, ptr %i.b, align 8
  %i.bl = fcmp une double %i.bk, -1.000000e+00
  %or.cond.not = select i1 %i.bj, i1 %i.bl, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %or.cond.not

bb.ad:                                            ; preds = %bb.aa, %bb.z, %bb.s, %bb.p, %bb.j, %bb.g
  %.pn54.pn = phi { ptr, i32 } [ %i.be, %bb.aa ], [ %i.bd, %bb.z ], [ %.pn50, %bb.j ], [ %.pn48, %bb.g ], [ %.pn46, %bb.s ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn54.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16structured_light34SinusoidalPatternProfilometry_Impl17computeInverseDftERKNS_11_InputArrayERKNS_12_OutputArrayEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !82
  store i32 16842752, ptr %4, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !78
  store ptr %i.d, ptr %i.h, align 8, !tbaa !34
  call void @_ZN2cv4idftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 34, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !82
  store i32 16842752, ptr %6, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.l, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !78
  store ptr %i.d, ptr %i.m, align 8, !tbaa !34
  call void @_ZN2cv4idftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16structured_light34SinusoidalPatternProfilometry_Impl17computeFtPhaseMapERKNS_11_InputArrayES4_RKNS_12_OutputArrayE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.cv::Mat"], align 16    ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #28
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #28
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 4 uses
  %i.k = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.d, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 5)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.c, %bb.b
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull %4)
          to label %.preheader51 unwind label %bb.d

.preheader51:                                     ; preds = %bb.e
  %i.n = icmp sgt i32 %i.h, 0
  br i1 %i.n, label %.preheader50.lr.ph, label %.preheader

.preheader50.lr.ph:                               ; preds = %.preheader51
  %i.o = icmp sgt i32 %i.j, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 212 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 336 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 6 uses
  br i1 %i.o, label %.preheader50.lr.ph.split, label %.preheader

.preheader50.lr.ph.split:                         ; preds = %.preheader50.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !44
  %.fr57 = freeze i32 %i.ab
  %i.ac = icmp slt i32 %.fr57, 2
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !45  ; 3 uses
  %wide.trip.count79 = zext nneg i32 %i.h to i64  ; 2 uses
  %wide.trip.count69 = zext nneg i32 %i.j to i64  ; 2 uses
  br i1 %i.ac, label %.preheader50.us.preheader, label %.preheader50

.preheader50.us.preheader:                        ; preds = %.preheader50.lr.ph.split
  %wide.trip.count74 = zext nneg i32 %i.j to i64
  br label %.preheader50.us

.preheader50.us:                                  ; preds = %.preheader50.us.preheader, %._crit_edge.split.us.us
  %indvars.iv76 = phi i64 [ 0, %.preheader50.us.preheader ], [ %indvars.iv.next77, %._crit_edge.split.us.us ] ; 8 uses
  %i.ae = load i32, ptr %i.q, align 4
  %.fr = freeze i32 %i.ae
  %i.af = icmp slt i32 %.fr, 2
  %i.ag = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ah = load i32, ptr %i.t, align 4
  %i.ai = icmp slt i32 %i.ah, 2                   ; 2 uses
  %i.aj = load ptr, ptr %i.u, align 8             ; 2 uses
  br i1 %i.af, label %.lr.ph.split.us.us.split.us, label %.lr.ph.split.us.us.split

.lr.ph.split.us.us.split.us:                      ; preds = %.preheader50.us, %bb.h
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %bb.h ], [ 0, %.preheader50.us ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv71
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !46
  %.not.us.us.us = icmp eq i8 %i.al, 0
  br i1 %.not.us.us.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.us.split.us
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv71
  %i.an = load float, ptr %i.am, align 4, !tbaa !85
  %i.ao = load i64, ptr %i.v, align 16
  %i.ap = mul i64 %i.ao, %indvars.iv76
  %.sink.idx.i44.us.us.us = select i1 %i.ai, i64 0, i64 %i.ap
  %.sink.i45.us.us.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink.idx.i44.us.us.us
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i45.us.us.us, i64 %indvars.iv71
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !85
  %i.as = fpext float %i.ar to double
  %i.at = fpext float %i.an to double
  %i.au = call double @atan2(double noundef %i.as, double noundef %i.at) #28
  %i.av = load i32, ptr %i.w, align 4, !tbaa !44
  %i.aw = icmp slt i32 %i.av, 2
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.ay = load i64, ptr %i.y, align 8
  %i.az = mul i64 %i.ay, %indvars.iv76
  %.sink.idx.i46.us.us.us = select i1 %i.aw, i64 0, i64 %i.az
  %.sink.i47.us.us.us = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i46.us.us.us
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sink.i47.us.us.us, i64 %indvars.iv71
  %i.bb = fptrunc double %i.au to float
  store float %i.bb, ptr %i.ba, align 4, !tbaa !85
end_hunk_0
