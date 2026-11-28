Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seamless_cloning_impl?download=true
inline.NumInlined: 551
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv7Cloning16computeGradientYERKNS_3MatERS1_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7Cloning17computeLaplacianXERKNS_3MatERS1_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %4 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %4, i32 noundef 1, i32 noundef 3, i32 noundef 1)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #16
  %i.a = load ptr, ptr %4, align 8, !tbaa !24, !noalias !76 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(688) %4, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  store i8 -1, ptr %i.j, align 1, !tbaa !28
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 1, ptr %i.l, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !32
  store i32 16842752, ptr %5, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !34
  store ptr %2, ptr %i.p, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !32
  store i32 16842752, ptr %7, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.t, align 8, !tbaa !35
  invoke void @_ZN2cv8filter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_NS_6Point_IiEEdi(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 -1, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.d:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.body
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.e, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7Cloning17computeLaplacianYERKNS_3MatERS1_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %4 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %4, i32 noundef 3, i32 noundef 1, i32 noundef 1)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #16
  %i.a = load ptr, ptr %4, align 8, !tbaa !24, !noalias !79 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(688) %4, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 -1, ptr %i.k, align 1, !tbaa !28
  %i.m = load i32, ptr %i.i, align 4, !tbaa !36
  %i.n = icmp slt i32 %i.m, 2
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.p = load i64, ptr %i.l, align 8
  %.sink.idx.i = select i1 %i.n, i64 0, i64 %i.p
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink.idx.i
  store i8 1, ptr %.sink.i, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !32
  store i32 16842752, ptr %5, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.s, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !34
  store ptr %2, ptr %i.t, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !32
  store i32 16842752, ptr %7, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !35
  invoke void @_ZN2cv8filter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_NS_6Point_IiEEdi(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 -1, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.d:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.body
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.e, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7Cloning3dstERKNS_3MatERS1_b(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 23 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Rect_", align 4        ; 7 uses
  %13 = alloca [2 x %"class.cv::Mat"], align 16   ; 13 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %20 = alloca [2 x %"class.cv::Mat"], align 16   ; 11 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %27 = alloca %"class.cv::Rect_", align 4        ; 7 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = shl nsw i32 %i.d, 1
  %i.f = add nsw i32 %i.e, 2
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, i32 noundef %i.b, i32 noundef %i.f, i32 noundef 5)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #16
  %i.g = load ptr, ptr %9, align 8, !tbaa !24, !noalias !94 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.bc

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #16
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.o = select i1 %3, i32 7, i32 4               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 1, ptr %12, align 4, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.r = load <2 x i32>, ptr %i.a, align 8, !tbaa !42
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.s, ptr %i.q, align 4, !tbaa !42
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 4 dereferenceable(16) %12)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 -1040121856, ptr %10, align 8, !tbaa !34
  store ptr %11, ptr %i.t, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.v = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph152, label %._crit_edge153.split

.lr.ph152:                                        ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 3 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !38  ; 5 uses
  %invariant.op = add i32 %i.ad, 2                ; 7 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge153.split

.lr.ph.preheader:                                 ; preds = %.lr.ph152
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27 ; 3 uses
  %i.ah = zext nneg i32 %i.ad to i64
  %wide.trip.count167 = zext nneg i32 %i.v to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 7 uses
  %invariant.gep189 = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah
  %i.ai = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.aj = add nsw i64 %wide.trip.count167, -1     ; 2 uses
  %i.ak = mul i64 %i.aa, %i.aj
  %i.al = sext i32 %invariant.op to i64
  %i.am = shl nsw i64 %i.al, 2                    ; 2 uses
  %i.an = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.y, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep194 = getelementptr i8, ptr %i.y, i64 %i.am
  %i.aq = mul i64 %i.ac, %i.aj
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq
  %scevgep195 = getelementptr i8, ptr %i.ar, i64 %i.an
  %min.iters.check = icmp ult i32 %i.ad, 12
  %i.as = trunc nsw i64 %i.ai to i32
  %i.at = add i32 %invariant.op, %i.as
  %i.au = icmp slt i32 %i.at, %invariant.op
  %i.av = icmp ugt i64 %i.ai, 4294967295
  %i.aw = or i1 %i.au, %i.av
  %bound0 = icmp ult ptr %i.ag, %scevgep
  %bound1 = icmp ult ptr %scevgep194, %scevgep195
  %found.conflict = and i1 %bound0, %bound1
  %i.ax = or i64 %i.aa, %i.ac
  %i.ay = icmp slt i64 %i.ax, 0
  %i.az = or i1 %found.conflict, %i.ay
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ba = add nsw i64 %wide.trip.count, -1
  %invariant.op203 = add i32 1, %invariant.op
  br label %.lr.ph

._crit_edge153.split:                             ; preds = %._crit_edge, %.lr.ph152, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.g unwind label %.thread

bb.d:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.e ], [ %i.bb, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.bb

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv164 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next165, %._crit_edge ] ; 3 uses
  %i.bd = mul i64 %i.aa, %indvars.iv164
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 4 uses
  %i.bf = mul i64 %i.ac, %indvars.iv164
  %gep190 = getelementptr i8, ptr %invariant.gep189, i64 %i.bf ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aw
  %brmerge204 = select i1 %brmerge, i1 true, i1 %i.az
  br i1 %brmerge204, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.bg = xor i64 %index, -1
  %i.bh = getelementptr [4 x i8], ptr %gep190, i64 %i.bg ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -12
  %i.bj = getelementptr i8, ptr %i.bh, i64 -28
  %wide.load = load <4 x float>, ptr %i.bi, align 4, !tbaa !46, !alias.scope !95, !noalias !96
  %wide.load197 = load <4 x float>, ptr %i.bj, align 4, !tbaa !46, !alias.scope !95, !noalias !96
  %i.bk = fneg <4 x float> %wide.load
  %i.bl = fneg <4 x float> %wide.load197
  %reverse = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse198 = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bm = trunc nuw nsw i64 %index to i32
  %i.bn = add i32 %invariant.op, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <4 x float> %reverse, ptr %i.bp, align 4, !tbaa !46, !alias.scope !96
  store <4 x float> %reverse198, ptr %i.bq, align 4, !tbaa !46, !alias.scope !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bs = xor i64 %indvars.iv.ph, -1
  %i.bt = getelementptr [4 x i8], ptr %gep190, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !46
  %i.bv = fneg float %i.bu
  %i.bw = trunc nuw nsw i64 %indvars.iv.ph to i32
  %.reass.prol = add i32 %invariant.op, %i.bw
  %i.bx = sext i32 %.reass.prol to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bx
  store float %i.bv, ptr %i.by, align 4, !tbaa !46
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit
end_hunk_0
begin_hunk_1_@_ZN2cv7Cloning3dstERKNS_3MatERS1_b:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !50 ; 6 uses
  %i.cr = icmp slt i32 %i.cq, 3
  br i1 %i.cr, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !28
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.loopexit.loopexit162

bb.k:                                             ; preds = %bb.g
  %i.cy = icmp sgt i32 %i.cq, 0
  br i1 %i.cy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = icmp eq i32 %i.cq, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cz, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %8, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.da = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !42
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.db = icmp eq i32 %i.cq, 0
  %i.dc = zext i1 %i.db to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dd = phi i32 [ %i.da, %bb.l ], [ %i.dc, %bb.m ]
  %i.de = icmp eq i32 %i.cq, 2
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp sgt i32 %i.cq, -1
  %i.di = zext i1 %i.dh to i32
  %i.dj = select i1 %i.de, i32 %i.dg, i32 %i.di
  %.sroa.2.0.insert.ext.i = zext i32 %i.dj to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.dd to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.co) #16
  %i.dk = load ptr, ptr %14, align 8, !tbaa !24, !noalias !97 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.co, i32 noundef -1)
          to label %bb.p unwind label %.body115

.body115:                                         ; preds = %bb.o
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.co) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #16
  br label %.loopexit.loopexit162

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dp) #16
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dq) #16
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.ds = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.dt, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !34
  store ptr %15, ptr %i.ds, align 8, !tbaa !35
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %13, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.du, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.dv, align 4, !tbaa !32
  store i32 16842752, ptr %17, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.dw, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.dy, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !34
  store ptr %15, ptr %i.dx, align 8, !tbaa !35
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %i.o, i32 noundef 0)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull %13)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !38
  %i.ea = load i32, ptr %i.a, align 8, !tbaa !37
  %i.eb = shl nsw i32 %i.ea, 1
  %i.ec = add nsw i32 %i.eb, 2
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, i32 noundef %i.dz, i32 noundef %i.ec, i32 noundef 5)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ed = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.z, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eh) #16
  %i.ei = getelementptr inbounds nuw i8, ptr %19, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ei) #16
  %i.ej = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ej) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.ek = load i32, ptr %i.c, align 4, !tbaa !38  ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph159, label %._crit_edge160.split

.lr.ph159:                                        ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !44
  %i.eq = load i32, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.er = icmp sgt i32 %i.eq, 0
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 232
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 336
  %i.ev = load i64, ptr %i.eu, align 16           ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ex = load i32, ptr %i.ew, align 4            ; 3 uses
  br i1 %i.er, label %.lr.ph156.preheader, label %._crit_edge160.split

.lr.ph156.preheader:                              ; preds = %.lr.ph159
  %wide.trip.count177 = zext nneg i32 %i.ek to i64
  %wide.trip.count172 = zext nneg i32 %i.eq to i64 ; 2 uses
  %xtraiter199 = and i64 %wide.trip.count172, 1
  %i.ey = icmp eq i32 %i.eq, 1
  %unroll_iter = and i64 %wide.trip.count172, 2147483646
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  %lcmp.mod201 = trunc i32 %i.eq to i1
  br label %.lr.ph156

._crit_edge160.split:                             ; preds = %._crit_edge157, %.lr.ph159, %_ZN2cv3MataSERKNS_7MatExprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.ab unwind label %.thread143

.thread:                                          ; preds = %._crit_edge153.split
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.u:                                             ; preds = %bb.h, %bb.n
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit162

.loopexit.loopexit162:                            ; preds = %.body115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.u
  %.pn84 = phi { ptr, i32 } [ %i.do, %.body115 ], [ %i.fa, %bb.u ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %.loopexit.loopexit

bb.w:                                             ; preds = %bb.q
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %.loopexit.loopexit

bb.x:                                             ; preds = %bb.r
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.y:                                             ; preds = %bb.s
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn92 = phi { ptr, i32 } [ %i.ff, %bb.z ], [ %i.fe, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %.loopexit.loopexit

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %._crit_edge157
  %indvars.iv174 = phi i64 [ 0, %.lr.ph156.preheader ], [ %indvars.iv.next175, %._crit_edge157 ] ; 3 uses
  %i.fg = mul i64 %i.ep, %indvars.iv174
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fg ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.et, i64 %indvars.iv174 ; 3 uses
  br i1 %i.ey, label %.epil.preheader, label %.lr.ph156.new

._crit_edge157.unr-lcssa:                         ; preds = %.lr.ph156.new
  br i1 %lcmp.mod200.not, label %._crit_edge157, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge157.unr-lcssa, %.lr.ph156
  %indvars.iv169.epil.init = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next170.1, %._crit_edge157.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod201)
  %i.fi = mul i64 %i.ev, %indvars.iv169.epil.init
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.fi
  %i.fj = getelementptr inbounds nuw i8, ptr %gep.epil, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !46 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv169.epil.init
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store float %i.fk, ptr %i.fm, align 4, !tbaa !46
  %i.fn = fneg float %i.fk
  %i.fo = trunc i64 %indvars.iv169.epil.init to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.ex, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fr
  store float %i.fn, ptr %i.fs, align 4, !tbaa !46
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.unr-lcssa, %.epil.preheader
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge160.split, label %.lr.ph156, !llvm.loop !90

.lr.ph156.new:                                    ; preds = %.lr.ph156, %.lr.ph156.new
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.1, %.lr.ph156.new ], [ 0, %.lr.ph156 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph156.new ], [ 0, %.lr.ph156 ]
  %i.ft = mul i64 %i.ev, %indvars.iv169
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !46 ; 2 uses
  %indvars.iv.next170 = or disjoint i64 %indvars.iv169, 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next170
  store float %i.fv, ptr %i.fw, align 4, !tbaa !46
  %i.fx = fneg float %i.fv
  %i.fy = trunc i64 %indvars.iv169 to i32
  %i.fz = xor i32 %i.fy, -1
  %i.ga = add i32 %i.ex, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gb
  store float %i.fx, ptr %i.gc, align 4, !tbaa !46
  %i.gd = mul i64 %i.ev, %indvars.iv.next170
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gd
  %i.ge = getelementptr inbounds nuw i8, ptr %gep.1, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !46 ; 2 uses
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next170.1
  store float %i.gf, ptr %i.gg, align 4, !tbaa !46
  %i.gh = fneg float %i.gf
  %i.gi = trunc i64 %indvars.iv.next170 to i32
  %i.gj = xor i32 %i.gi, -1
  %i.gk = add i32 %i.ex, %i.gj
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.gl
  store float %i.gh, ptr %i.gm, align 4, !tbaa !46
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge157.unr-lcssa, label %.lr.ph156.new, !llvm.loop !91

bb.ab:                                            ; preds = %._crit_edge160.split
  %i.gn = getelementptr inbounds nuw i8, ptr %20, i64 208 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.go = load i32, ptr %i.cp, align 8, !tbaa !50 ; 6 uses
  %i.gp = icmp slt i32 %i.go, 3
  br i1 %i.gp, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc126 unwind label %bb.ar

.noexc126:                                        ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #17
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc126
  unreachable

bb.ae:                                            ; preds = %.noexc126
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119: ; preds = %bb.ae
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !28
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit146.loopexit161

bb.af:                                            ; preds = %bb.ab
  %i.gw = icmp sgt i32 %i.go, 0
  br i1 %i.gw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gx = icmp eq i32 %i.go, 2
  %.sroa.gep138 = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.gep138.val = load i32, ptr %.sroa.gep138, align 8
  %.val = load i32, ptr %i.df, align 4            ; 2 uses
  %i.gy = select i1 %i.gx, i32 %.sroa.gep138.val, i32 %.val
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gz = icmp eq i32 %i.go, 0
  %i.ha = zext i1 %i.gz to i32
  %.pre = load i32, ptr %i.df, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hb = phi i32 [ %.val, %bb.ag ], [ %.pre, %bb.ah ]
  %i.hc = phi i32 [ %i.gy, %bb.ag ], [ %i.ha, %bb.ah ]
  %i.hd = icmp eq i32 %i.go, 2
  %i.he = icmp sgt i32 %i.go, -1
  %i.hf = zext i1 %i.he to i32
  %i.hg = select i1 %i.hd, i32 %i.hb, i32 %i.hf
  %.sroa.2.0.insert.ext.i122 = zext i32 %i.hg to i64
  %.sroa.2.0.insert.shift.i123 = shl nuw i64 %.sroa.2.0.insert.ext.i122, 32
  %.sroa.0.0.insert.ext.i124 = zext i32 %i.hc to i64
  %.sroa.0.0.insert.insert.i125 = or disjoint i64 %.sroa.2.0.insert.shift.i123, %.sroa.0.0.insert.ext.i124
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, i64 %.sroa.0.0.insert.insert.i125, i32 noundef 5)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.gn) #16
  %i.hh = load ptr, ptr %21, align 8, !tbaa !24, !noalias !98 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.gn, i32 noundef -1)
          to label %bb.ak unwind label %.body130

.body130:                                         ; preds = %bb.aj
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gn) #16
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #16
  br label %.loopexit146.loopexit161

bb.ak:                                            ; preds = %bb.aj
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hm) #16
  %i.hn = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.hn) #16
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ho) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.hq, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !34
  store ptr %15, ptr %i.hp, align 8, !tbaa !35
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %20, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.hr = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.hr, align 8, !tbaa !31
  %i.hs = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.hs, align 4, !tbaa !32
  store i32 16842752, ptr %23, align 8, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %15, ptr %i.ht, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.hu = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.hv, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !34
  store ptr %15, ptr %i.hu, align 8, !tbaa !35
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef %i.o, i32 noundef 0)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull %20)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %25, ptr noundef nonnull align 8 dereferenceable(208) %i.gn)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.hw = load ptr, ptr %25, align 8, !tbaa !24   ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !26
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull align 8 dereferenceable(688) %25, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit134 unwind label %bb.aw, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit134:              ; preds = %bb.ao
  %i.ia = getelementptr inbounds nuw i8, ptr %25, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ia) #16
  %i.ib = getelementptr inbounds nuw i8, ptr %25, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ib) #16
  %i.ic = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ic) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  store i32 0, ptr %27, align 4, !tbaa !40
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 1, ptr %i.id, align 4, !tbaa !41
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.if = load <2 x i32>, ptr %i.a, align 8, !tbaa !42
  %i.ig = shufflevector <2 x i32> %i.if, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ig, ptr %i.ie, align 4, !tbaa !42
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 4 dereferenceable(16) %27)
          to label %bb.ap unwind label %bb.ay

bb.ap:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  %i.ih = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %i.ii, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !34
  store ptr %2, ptr %i.ih, align 8, !tbaa !35
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ij) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ik) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

.thread143:                                       ; preds = %._crit_edge160.split
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit146

bb.ar:                                            ; preds = %bb.ac, %bb.ai
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit146.loopexit161

.loopexit146.loopexit161:                         ; preds = %.body130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120, %bb.ar
  %.pn94 = phi { ptr, i32 } [ %i.hl, %.body130 ], [ %i.im, %bb.ar ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %.loopexit146.sink.split

bb.as:                                            ; preds = %bb.ak
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %.loopexit146.loopexit

bb.at:                                            ; preds = %bb.al
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %.loopexit146.loopexit

bb.au:                                            ; preds = %bb.am
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit146.loopexit

bb.av:                                            ; preds = %bb.an
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ao
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %25) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn102 = phi { ptr, i32 } [ %i.ir, %bb.aw ], [ %i.iq, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  br label %.loopexit146.loopexit

bb.ay:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit134
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.ap
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn104.pn = phi { ptr, i32 } [ %i.it, %bb.az ], [ %i.is, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  br label %.loopexit146.loopexit

.loopexit146.loopexit:                            ; preds = %bb.ba, %bb.ax, %bb.au, %bb.at, %bb.as
  %.pn104.pn.pn = phi { ptr, i32 } [ %.pn104.pn, %bb.ba ], [ %.pn102, %bb.ax ], [ %i.ip, %bb.au ], [ %i.io, %bb.at ], [ %i.in, %bb.as ]
  %i.iu = getelementptr inbounds nuw i8, ptr %20, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.iu) #16
  br label %.loopexit146.sink.split

.loopexit146.sink.split:                          ; preds = %.loopexit146.loopexit, %.loopexit146.loopexit161
  %.pn104.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn94, %.loopexit146.loopexit161 ], [ %.pn104.pn.pn, %.loopexit146.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #16
  br label %.loopexit146

.loopexit146:                                     ; preds = %.loopexit146.sink.split, %.thread143
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %i.il, %.thread143 ], [ %.pn104.pn.pn.pn.ph, %.loopexit146.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit146, %bb.aa, %bb.x, %bb.w, %bb.v
  %.pn104.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn, %.loopexit146 ], [ %.pn92, %bb.aa ], [ %i.fd, %bb.x ], [ %i.fc, %bb.w ], [ %i.fb, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.iv) #16
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.loopexit, %.loopexit.loopexit162
  %.pn104.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn84, %.loopexit.loopexit162 ], [ %.pn104.pn.pn.pn.pn, %.loopexit.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.thread
  %.pn104.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ez, %.thread ], [ %.pn104.pn.pn.pn.pn.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %bb.f
  %.pn104.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn, %.loopexit ], [ %.pn.pn, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.body
  %.pn104.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn.pn.pn.pn.pn, %bb.bb ], [ %i.k, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  resume { ptr, i32 } %.pn104.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7Cloning5solveERKNS_3MatERS1_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1368) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #16
  invoke void @_ZN2cv7Cloning3dstERKNS_3MatERS1_b(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %4, i1 noundef zeroext false)
          to label %.preheader75 unwind label %bb.b

.preheader75:                                     ; preds = %bb.a
  %i.e = add i32 %i.d, -2
  %i.f = icmp sgt i32 %i.d, 2                     ; 2 uses
  br i1 %i.f, label %.lr.ph79, label %._crit_edge80.split

.lr.ph79:                                         ; preds = %.preheader75
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = icmp sgt i32 %i.b, 2
  br i1 %i.k, label %.lr.ph79.split, label %._crit_edge80.split

.lr.ph79.split:                                   ; preds = %.lr.ph79
  %i.l = add nsw i32 %i.b, -2                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 6 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !56   ; 3 uses
  %wide.trip.count100 = zext i32 %i.e to i64      ; 3 uses
  %wide.trip.count = zext i32 %i.l to i64         ; 6 uses
  %i.q = shl nuw nsw i64 %wide.trip.count100, 2
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.q
  %i.r = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep137 = getelementptr i8, ptr %i.o, i64 %i.r
  %i.s = add nsw i64 %wide.trip.count100, -1
  %i.t = mul i64 %i.j, %i.s
  %i.u = getelementptr i8, ptr %i.h, i64 %i.t
  %scevgep138 = getelementptr i8, ptr %i.u, i64 %i.r ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 4
  %bound0 = icmp ult ptr %i.h, %scevgep137
  %bound1 = icmp ult ptr %i.o, %scevgep138
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.j, 0
  %i.v = or i1 %found.conflict, %stride.check
  %bound0139 = icmp ult ptr %i.h, %scevgep
  %bound1140 = icmp ult ptr %i.p, %scevgep138
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %i.v, %found.conflict141
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.w = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge80.split:                              ; preds = %._crit_edge, %.lr.ph79, %.preheader75
  invoke void @_ZN2cv7Cloning3dstERKNS_3MatERS1_b(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %2, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge80.split, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.x

.lr.ph:                                           ; preds = %.lr.ph79.split, %._crit_edge
  %indvars.iv97 = phi i64 [ 0, %.lr.ph79.split ], [ %indvars.iv.next98, %._crit_edge ] ; 3 uses
  %i.y = mul i64 %i.j, %indvars.iv97
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv97 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !46, !alias.scope !118
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %wide.load = load <4 x float>, ptr %i.ac, align 4, !tbaa !46, !alias.scope !119
  %i.ad = fadd <4 x float> %wide.load, %broadcast.splat
  %i.ae = fadd <4 x float> %i.ad, splat (float -4.000000e+00)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %wide.load142 = load <4 x float>, ptr %i.af, align 4, !tbaa !46, !alias.scope !120, !noalias !121
  %i.ag = fdiv <4 x float> %wide.load142, %i.ae
  store <4 x float> %i.ag, ptr %i.af, align 4, !tbaa !46, !alias.scope !120, !noalias !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !46
  %i.ak = load float, ptr %i.aa, align 4, !tbaa !46
  %i.al = fadd float %i.aj, %i.ak
  %i.am = fadd float %i.al, -4.000000e+00
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.ph ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !46
  %i.ap = fdiv float %i.ao, %i.am
  store float %i.ap, ptr %i.an, align 4, !tbaa !46
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %indvars.iv.ph, %i.w
  br i1 %i.aq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge80.split, label %.lr.ph, !llvm.loop !104

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !46
  %i.at = load float, ptr %i.aa, align 4, !tbaa !46
  %i.au = fadd float %i.as, %i.at
  %i.av = fadd float %i.au, -4.000000e+00
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !46
  %i.ay = fdiv float %i.ax, %i.av
  store float %i.ay, ptr %i.aw, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.ba = load float, ptr %i.az, align 4, !tbaa !46
  %i.bb = load float, ptr %i.aa, align 4, !tbaa !46
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fadd float %i.bc, -4.000000e+00
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !46
  %i.bg = fdiv float %i.bf, %i.bd
  store float %i.bg, ptr %i.be, align 4, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !105

bb.c:                                             ; preds = %._crit_edge80.split
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.bl = icmp sgt i32 %i.b, 0                    ; 2 uses
  br i1 %i.bl, label %.lr.ph83.preheader, label %.preheader

.lr.ph83.preheader:                               ; preds = %bb.c
  %wide.trip.count105 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count105, 3   ; 3 uses
  %i.bm = icmp ult i32 %i.b, 4
  br i1 %i.bm, label %.lr.ph83.epil.preheader, label %.lr.ph83.preheader.new

.lr.ph83.preheader.new:                           ; preds = %.lr.ph83.preheader
  %unroll_iter = and i64 %wide.trip.count105, 2147483644
end_hunk_1
