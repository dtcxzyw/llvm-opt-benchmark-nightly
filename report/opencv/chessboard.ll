Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZNK2cv7details10Chessboard5Board7getCellEii:bb.a
  br i1 %epil.iter.cmp.not, label %.preheader, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.epil, !llvm.loop !312

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.epil, %bb.f
  %.sroa.928.0.lcssa = phi ptr [ %i.p, %bb.f ], [ %spec.select34.3, %.preheader.loopexit.unr-lcssa ], [ %spec.select34.epil, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.epil ] ; 3 uses
  %i.t = icmp sgt i32 %2, 0
  br i1 %i.t, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader, label %._crit_edge

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader: ; preds = %.preheader
  %xtraiter55 = and i32 %2, 3                     ; 3 uses
  %i.u = icmp ult i32 %2, 4
  br i1 %i.u, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil.preheader, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader.new

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader.new: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader
  %unroll_iter60 = and i32 %2, 2147483644
  br label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit

_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.preheader.new
  %.sroa.928.038 = phi ptr [ %i.p, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.preheader.new ], [ %spec.select34.3, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit ] ; 2 uses
  %niter = phi i32 [ 0, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.preheader.new ], [ %niter.next.3, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.928.038, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !189  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  %spec.select34 = select i1 %.not.i, ptr %.sroa.928.038, ptr %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select34, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !189  ; 2 uses
  %.not.i.1 = icmp eq ptr %i.y, null
  %spec.select34.1 = select i1 %.not.i.1, ptr %spec.select34, ptr %i.y ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select34.1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !189 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.aa, null
  %spec.select34.2 = select i1 %.not.i.2, ptr %spec.select34.1, ptr %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select34.2, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ac, null
  %spec.select34.3 = select i1 %.not.i.3, ptr %spec.select34.2, ptr %i.ac ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit, !llvm.loop !308

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit
  %lcmp.mod57.not = icmp eq i32 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %._crit_edge, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil.preheader

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader
  %.sroa.928.142.epil.init = phi ptr [ %.sroa.928.0.lcssa, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader ], [ %spec.select36.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i32 %xtraiter55, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil.preheader
  %.sroa.928.142.epil = phi ptr [ %spec.select36.epil, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil ], [ %.sroa.928.142.epil.init, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil.preheader ] ; 2 uses
  %epil.iter56 = phi i32 [ %epil.iter56.next, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil ], [ 0, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.928.142.epil, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %.not.i22.epil = icmp eq ptr %i.ae, null
  %spec.select36.epil = select i1 %.not.i22.epil, ptr %.sroa.928.142.epil, ptr %i.ae ; 2 uses
  %epil.iter56.next = add i32 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i32 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %._crit_edge, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil, !llvm.loop !313

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil, %.preheader
  %.sroa.928.1.lcssa = phi ptr [ %.sroa.928.0.lcssa, %.preheader ], [ %spec.select36.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select36.epil, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.epil ]
  ret ptr %.sroa.928.1.lcssa

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader.new
  %.sroa.928.142 = phi ptr [ %.sroa.928.0.lcssa, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader.new ], [ %spec.select36.3, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit ] ; 2 uses
  %niter61 = phi i32 [ 0, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.preheader.new ], [ %niter61.next.3, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.928.142, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ag, null
  %spec.select36 = select i1 %.not.i22, ptr %.sroa.928.142, ptr %i.ag ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select36, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !190 ; 2 uses
  %.not.i22.1 = icmp eq ptr %i.ai, null
  %spec.select36.1 = select i1 %.not.i22.1, ptr %spec.select36, ptr %i.ai ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select36.1, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !190 ; 2 uses
  %.not.i22.2 = icmp eq ptr %i.ak, null
  %spec.select36.2 = select i1 %.not.i22.2, ptr %spec.select36.1, ptr %i.ak ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select36.2, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !190 ; 2 uses
  %.not.i22.3 = icmp eq ptr %i.am, null
  %spec.select36.3 = select i1 %.not.i22.3, ptr %spec.select36.2, ptr %i.am ; 3 uses
  %niter61.next.3 = add nuw nsw i32 %niter61, 4   ; 2 uses
  %niter61.ncmp.3 = icmp eq i32 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit, !llvm.loop !309
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details10Chessboard5Board9warpImageERKNS_11_InputArrayE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %4 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 5 uses
  %6 = alloca %"class.cv::MatExpr", align 8       ; 9 uses
  %7 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZNK2cv7details10Chessboard5Board18estimateHomographyEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 100)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !256
  %.sroa.2.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.0.0.insert.ext.i = zext i32 %i.b to i64
  %i.e = mul nuw nsw i64 %.sroa.0.0.insert.ext.i, 100
  %i.f = add nuw nsw i64 %i.e, 100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 33619968, ptr %4, align 8, !tbaa !34
  store ptr %0, ptr %i.g, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(688) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.i = mul i64 %.sroa.2.0.insert.ext.i, 429496729600
  %.sroa.7.0.insert.ext = add i64 %i.i, 429496729600
  %.sroa.01.0.insert.ext = and i64 %i.f, 4294967292
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.ext, %.sroa.01.0.insert.ext
  invoke void @_ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %.sroa.01.0.insert.insert, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #33
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #33
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %6) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2cv15warpPerspectiveERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

declare void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv7details10Chessboard5Board4drawERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.cv::Matx.40", align 8      ; 11 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 24 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %26 = alloca %"class.cv::details::Ellipse", align 16 ; 12 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %28 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %30 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %31 = alloca %"class.cv::Scalar_", align 8      ; 8 uses
  %32 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %34 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %35 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %36 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %37 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %38 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %40 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %42 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %43 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %44 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %45 = alloca %"class.cv::Mat", align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !314
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37, !noalias !314
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.g = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  br i1 %i.g, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  invoke void @_ZNK2cv7details10Chessboard5Board18estimateHomographyEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %18, ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 100)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.l

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.i:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.j, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  br label %bb.ec

bb.l:                                             ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.l = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.l
  %i.m = icmp eq i32 %i.l, 65536
  br i1 %i.m, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37, !noalias !317
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.o)
          to label %_ZNK2cv11_InputArray6getMatEi.exit163 unwind label %bb.u

bb.n:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit163 unwind label %bb.u

_ZNK2cv11_InputArray6getMatEi.exit163:            ; preds = %bb.m, %bb.n
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit163
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  %i.p = load i32, ptr %19, align 8, !tbaa !41
  %i.q = and i32 %i.p, 4095
  %i.r = icmp eq i32 %i.q, 5
  br i1 %i.r, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !123
  store i32 16842752, ptr %21, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %19, ptr %i.u, align 8, !tbaa !37
  %i.v = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  %i.w = load double, ptr %i.a, align 8, !tbaa !38
  %i.x = load double, ptr %i.b, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  %i.y = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !34
  store ptr %19, ptr %i.y, align 8, !tbaa !37
  %i.aa = fsub double %i.w, %i.x
  %i.ab = fdiv double 2.550000e+02, %i.aa         ; 2 uses
  %i.ac = fneg double %i.ab
  %i.ad = fmul double %i.x, %i.ac
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 0, double noundef %i.ab, double noundef %i.ad)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  %i.ae = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !123
  store i32 16842752, ptr %23, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %19, ptr %i.ag, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.ah = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !34
  store ptr %19, ptr %i.ah, align 8, !tbaa !37
  invoke void @_ZN2cv13applyColorMapERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 2)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ab

bb.u:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit163
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn110 = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.aj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.eb

bb.x:                                             ; preds = %bb.q, %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  br label %bb.aa

bb.y:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  br label %bb.aa

bb.z:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.x ], [ %i.an, %bb.z ], [ %i.am, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ea

bb.ab:                                            ; preds = %bb.t, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  invoke void @_ZNK2cv7details10Chessboard5Board10getCornersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %25, ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !251 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !256 ; 4 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.preheader312.lr.ph, label %._crit_edge336.split

.preheader312.lr.ph:                              ; preds = %bb.ac
  %i.at = icmp sgt i32 %i.ap, 0
  %46 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %31, i64 24
  br i1 %i.at, label %.preheader312.preheader, label %.preheader311

.preheader312.preheader:                          ; preds = %.preheader312.lr.ph
  %i.bi = load ptr, ptr %25, align 8, !tbaa !188
  %.8..8..8..sroa_idx426 = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 20
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 24
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 12
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.preheader, %._crit_edge
  %.099331 = phi i32 [ %.2101, %._crit_edge ], [ 0, %.preheader312.preheader ]
  %.0102330 = phi i32 [ %i.ck, %._crit_edge ], [ 0, %.preheader312.preheader ] ; 2 uses
  %.sroa.0301.0329 = phi ptr [ %i.ff, %._crit_edge ], [ %i.bi, %.preheader312.preheader ]
  %i.bj = mul i32 %.0102330, 100
  %i.bk = add i32 %i.bj, 100
  %i.bl = sitofp i32 %i.bk to double              ; 3 uses
  %i.bm = fadd double %i.bl, -4.000000e+01
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0 ; 2 uses
  %47 = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = insertelement <2 x double> %i.bn, double %i.bm, i64 1 ; 3 uses
  br label %bb.ae

.preheader311:                                    ; preds = %._crit_edge, %.preheader312.lr.ph
  %.not386 = icmp eq i32 %i.ar, 1
  br i1 %.not386, label %._crit_edge336.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader311
  %i.bo = icmp sgt i32 %i.ap, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 16
  br i1 %i.bo, label %.preheader.preheader, label %._crit_edge336.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ch = add nsw i32 %i.ap, -2
  %i.ci = add nsw i32 %i.ar, -2
  br label %.preheader

bb.ad:                                            ; preds = %bb.ab
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit274

._crit_edge:                                      ; preds = %bb.as
  %i.ck = add nuw nsw i32 %.0102330, 1            ; 2 uses
  %exitcond337.not = icmp eq i32 %i.ck, %i.ar
  br i1 %exitcond337.not, label %.preheader311, label %.preheader312, !llvm.loop !320

bb.ae:                                            ; preds = %.preheader312, %bb.as
  %.1100327 = phi i32 [ %.099331, %.preheader312 ], [ %.2101, %bb.as ] ; 3 uses
  %.0105325 = phi i32 [ 0, %.preheader312 ], [ %i.fe, %bb.as ] ; 2 uses
  %.sroa.0301.1323 = phi ptr [ %.sroa.0301.0329, %.preheader312 ], [ %i.ff, %bb.as ] ; 4 uses
  %i.cl = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  br i1 %i.cl, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = load float, ptr %.sroa.0301.1323, align 4, !tbaa !175
  %i.cn = fcmp uno float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33, !noalias !321
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %16, ptr noundef nonnull align 8 dereferenceable(208) %27)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.co = mul i32 %.0105325, 100
  %i.cp = add i32 %i.co, 100
  %i.cq = load <2 x double>, ptr %i.ax, align 8
  %49 = load double, ptr %i.ay, align 8, !tbaa !38, !noalias !324 ; 2 uses
  %i.cr = load double, ptr %i.az, align 8, !tbaa !38, !noalias !324 ; 2 uses
  %50 = load <4 x double>, ptr %16, align 8, !tbaa !38, !noalias !324 ; 5 uses
  %i.cs = load double, ptr %i.au, align 8, !tbaa !38, !noalias !324
  %i.ct = load <2 x double>, ptr %46, align 8
  %51 = extractelement <4 x double> %50, i64 0
  %i.cu = load <2 x double>, ptr %i.av, align 8, !tbaa !38, !noalias !324 ; 2 uses
  %52 = load <2 x double>, ptr %i.aw, align 8
  %53 = shufflevector <4 x double> %50, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %54 = shufflevector <2 x double> %i.cu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %55 = shufflevector <4 x double> %50, <4 x double> %54, <2 x i32> <i32 1, i32 4>
  %56 = shufflevector <4 x double> %50, <4 x double> %54, <2 x i32> <i32 2, i32 5>
  %57 = sitofp i32 %i.cp to double
  %i.cv = insertelement <2 x double> poison, double %57, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %58 = fadd <2 x double> %i.cw, <double -4.000000e+01, double -0.000000e+00> ; 2 uses
  %59 = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %60 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %58, <2 x double> zeroinitializer) ; 2 uses
  %61 = insertelement <2 x double> poison, double %49, i64 0
  %i.cx = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %48, <2 x double> %60)
  %62 = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cz = shufflevector <2 x double> %62, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = fadd <2 x double> %i.cz, %i.cy            ; 2 uses
  %i.da = extractelement <2 x double> %60, i64 1
  %i.db = call double @llvm.fmuladd.f64(double %49, double %i.bl, double %i.da)
  %i.dc = fadd double %i.cr, %i.db
  %64 = extractelement <2 x double> %58, i64 0    ; 2 uses
  %65 = call double @llvm.fmuladd.f64(double %51, double %64, double 0.000000e+00)
  %66 = call double @llvm.fmuladd.f64(double %i.cs, double %64, double 0.000000e+00)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %53, <2 x double> %i.cw, <2 x double> zeroinitializer) ; 3 uses
  %67 = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %69 = insertelement <2 x double> %68, double %65, i64 0
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %67, <2 x double> %48, <2 x double> %69)
  %70 = shufflevector <4 x double> %50, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.df = fadd <2 x double> %70, %i.de
  %71 = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = insertelement <2 x double> %i.dd, double %66, i64 0
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %71, <2 x double> %48, <2 x double> %72)
  %73 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fadd <2 x double> %73, %i.dg
  %74 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %47, <2 x double> %i.dd)
  %75 = fadd <2 x double> %56, %74
  %76 = insertelement <2 x double> poison, double %i.dc, i64 0
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = fdiv <2 x double> %75, %77
  %79 = fptrunc <2 x double> %78 to <2 x float>   ; 3 uses
  %i.di = fdiv <2 x double> %i.df, %63
  %i.dj = fptrunc <2 x double> %i.di to <2 x float>
  %i.dk = fdiv <2 x double> %i.dh, %63
  %i.dl = fptrunc <2 x double> %i.dk to <2 x float>
  %i.dm = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fsub <2 x float> %i.dj, %i.dm           ; 3 uses
  %80 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = fsub <2 x float> %i.dl, %80             ; 3 uses
  %i.dp = fpext <2 x float> %i.dn to <2 x double> ; 2 uses
  %i.dq = fpext <2 x float> %i.do to <2 x double> ; 2 uses
  %i.dr = fmul <2 x double> %i.dq, %i.dq
  %i.ds = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dp, <2 x double> %i.dr)
  %i.dt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ds)
  %i.du = fptrunc <2 x double> %i.dt to <2 x float> ; 3 uses
  %shift = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.do, %shift
  %i.dv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dw = extractelement <2 x float> %i.dn, i64 0
  %i.dx = extractelement <2 x float> %i.dn, i64 1
  %i.dy = call noundef float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.dv)
  %i.dz = extractelement <2 x float> %i.du, i64 0
  %i.ea = fdiv float %i.dy, %i.dz
  %i.eb = extractelement <2 x float> %i.du, i64 1
  %i.ec = fdiv float %i.ea, %i.eb
  %i.ed = call noundef float @acosf(float noundef %i.ec) #33, !noalias !321 ; 2 uses
  store <2 x float> %79, ptr %26, align 16, !alias.scope !321
  store <2 x float> %i.du, ptr %.8..8..8..sroa_idx426, align 8, !alias.scope !321
  store float %i.ed, ptr %.16..16..16..sroa_idx, align 16, !tbaa !160, !alias.scope !321
  %i.ee = fneg float %i.ed                        ; 2 uses
  %i.ef = call noundef float @cosf(float noundef %i.ee) #33, !noalias !321
  store float %i.ef, ptr %.20..20..20..sroa_idx, align 4, !tbaa !163, !alias.scope !321
  %i.eg = call noundef float @sinf(float noundef %i.ee) #33, !noalias !321
  store float %i.eg, ptr %.24..24..24..sroa_idx, align 8, !tbaa !164, !alias.scope !321
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33, !noalias !321
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store i64 0, ptr %i.bb, align 8
  store i32 50397184, ptr %28, align 8, !tbaa !34
  store ptr %19, ptr %i.ba, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  store <2 x double> splat (double 2.000000e+02), ptr %29, align 16, !tbaa !38, !alias.scope !327
  store <2 x double> splat (double 2.000000e+02), ptr %i.bc, align 16, !tbaa !38, !alias.scope !327
  %.0..0..0. = load <4 x float>, ptr %26, align 16
  %i.eh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.0..0..0.)
  %.4..4..4. = load <4 x float>, ptr %.4..4..4..sroa_idx, align 4
  %i.ei = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.4..4..4.)
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ei to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.8..8..8. = load <4 x float>, ptr %.8..8..8..sroa_idx, align 8
  %i.ej = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.8..8..8.)
  %.12..12..12. = load <4 x float>, ptr %.12..12..12..sroa_idx, align 4 ; 2 uses
  %i.ek = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.12..12..12.)
  %.sroa.2.0.insert.ext.i4.i = zext i32 %i.ek to i64
  %.sroa.2.0.insert.shift.i5.i = shl nuw i64 %.sroa.2.0.insert.ext.i4.i, 32
  %.sroa.0.0.insert.ext.i6.i = zext i32 %i.ej to i64
  %.sroa.0.0.insert.insert.i7.i = or disjoint i64 %.sroa.2.0.insert.shift.i5.i, %.sroa.0.0.insert.ext.i6.i
  %i.el = extractelement <4 x float> %.12..12..12., i64 1
  %i.em = fpext float %i.el to double
  %i.en = fdiv double %i.em, f0xC00921FB54442D18
  %i.eo = call double @llvm.fmuladd.f64(double %i.en, double 1.800000e+02, double 3.600000e+02)
  invoke void @_ZN2cv7ellipseERKNS_17_InputOutputArrayENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 %.sroa.0.0.insert.insert.i.i, i64 %.sroa.0.0.insert.insert.i7.i, double noundef %i.eo, double noundef 0.000000e+00, double noundef 3.600000e+02, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit unwind label %bb.an

_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %bb.as

bb.ak:                                            ; preds = %bb.ae
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ah
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %bb.ai
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.pn149.pn = phi { ptr, i32 } [ %i.es, %bb.an ], [ %i.er, %bb.am ], [ %i.eq, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %.body

bb.ap:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  store i64 0, ptr %i.be, align 8
  store i32 50397184, ptr %30, align 8, !tbaa !34
  store ptr %19, ptr %i.bd, align 8, !tbaa !37
  %i.et = load float, ptr %.sroa.0301.1323, align 4, !tbaa !175
  %i.eu = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ev = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0301.1323, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !176
  %i.ey = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ez = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ey)
  %.sroa.2.0.insert.ext.i = zext i32 %i.ez to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ev to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.fa = mul nsw i32 %.1100327, 20
  %i.fb = sitofp i32 %i.fa to double              ; 3 uses
  store double %i.fb, ptr %31, align 8, !tbaa !38
  store double %i.fb, ptr %i.bf, align 8, !tbaa !38
  store double %i.fb, ptr %i.bg, align 8, !tbaa !38
  store double 2.550000e+02, ptr %i.bh, align 8, !tbaa !38
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 %.sroa.0.0.insert.insert.i, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  %i.fc = add nsw i32 %.1100327, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %.body

bb.as:                                            ; preds = %_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit, %bb.aq
  %.2101 = phi i32 [ %i.fc, %bb.aq ], [ %.1100327, %_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit ] ; 2 uses
  %i.fe = add nuw nsw i32 %.0105325, 1            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0301.1323, i64 8 ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !330

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge334
  %.0104335 = phi i32 [ %i.fg, %._crit_edge334 ], [ 0, %.preheader.preheader ] ; 13 uses
  %.not.i = icmp eq i32 %.0104335, 0              ; 3 uses
  %i.fg = add nuw i32 %.0104335, 1                ; 4 uses
  %xtraiter = and i32 %.0104335, 3                ; 3 uses
  %i.fh = icmp ult i32 %.0104335, 4
  %unroll_iter = and i32 %.0104335, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod389 = icmp ne i32 %xtraiter, 0
  %xtraiter397 = and i32 %.0104335, 3             ; 3 uses
  %i.fi = icmp ult i32 %.0104335, 4
  %unroll_iter402 = and i32 %.0104335, -4
  %lcmp.mod399.not = icmp eq i32 %xtraiter397, 0
  %lcmp.mod401 = icmp ne i32 %xtraiter397, 0
  %xtraiter411 = and i32 %i.fg, 3                 ; 3 uses
  %i.fj = icmp ult i32 %.0104335, 3
  %unroll_iter416 = and i32 %i.fg, -4
  %lcmp.mod413.not = icmp eq i32 %xtraiter411, 0
  %lcmp.mod415 = icmp ne i32 %xtraiter411, 0
  br label %bb.at

._crit_edge336.split:                             ; preds = %._crit_edge334, %bb.ac, %.preheader.lr.ph, %.preheader311
  %i.fk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !48
  %i.fo = load i32, ptr %19, align 8, !tbaa !41
  %i.fp = and i32 %i.fo, 4095
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.fl, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.dp unwind label %bb.dv

._crit_edge334:                                   ; preds = %bb.do
  %exitcond339.not = icmp eq i32 %.0104335, %i.ci
  br i1 %exitcond339.not, label %._crit_edge336.split, label %.preheader, !llvm.loop !331

bb.at:                                            ; preds = %.preheader, %bb.do
  %.0103332 = phi i32 [ 0, %.preheader ], [ %i.pc, %bb.do ] ; 15 uses
  %i.fq = load i32, ptr %i.aq, align 8, !tbaa !256
  %.not = icmp slt i32 %.0104335, %i.fq
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fr = load i32, ptr %i.ao, align 4, !tbaa !251
  %.not305 = icmp slt i32 %.0103332, %i.fr
  br i1 %.not305, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc166 unwind label %bb.bk

.noexc166:                                        ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv7details10Chessboard5Board7getCellEii, ptr noundef nonnull @.str.1, i32 noundef 2283) #32
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %.noexc166
  unreachable

bb.ax:                                            ; preds = %.noexc166
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ax
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !46
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %.body

bb.ay:                                            ; preds = %bb.au
  %i.fy = load ptr, ptr %i.bp, align 8, !tbaa !230 ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader
end_hunk_0
begin_hunk_1_@_ZNK2cv7details10Chessboard5Board10getCornersEb:bb.a
  %.sroa.978.0.ph = phi ptr [ %i.dc, %bb.r ], [ %.0, %bb.l ] ; 3 uses
  %..ph = phi i64 [ 16, %bb.r ], [ 24, %bb.l ]
  %.ph188 = phi i1 [ false, %bb.r ], [ true, %bb.l ]
  br label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64
  %i.bh = phi ptr [ %i.cz, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64 ], [ %.ph, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer ] ; 10 uses
  %.promoted122125 = phi ptr [ %.promoted122124, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64 ], [ %.promoted122125.ph, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer ] ; 3 uses
  %i.bi = phi ptr [ %i.da, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64 ], [ %.ph187, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer ] ; 10 uses
  %. = phi i64 [ 16, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64 ], [ %..ph, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer ] ; 2 uses
  %i.bj = phi i1 [ false, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64 ], [ %.ph188, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer ]
  br i1 %2, label %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38, label %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28

_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.978.0.ph, i64 %.
  %.04.i.i30 = load ptr, ptr %i.bk, align 8, !tbaa !188 ; 2 uses
  %i.bl = load float, ptr %.04.i.i30, align 4, !tbaa !175
  %i.bm = fcmp uno float %i.bl, 0.000000e+00
  br i1 %i.bm, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64, label %bb.m

bb.m:                                             ; preds = %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i.i30, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !176
  %i.bp = fcmp uno float %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64, label %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38

_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38: ; preds = %bb.m, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.978.0.ph, i64 %.
  %.04.i.i41 = load ptr, ptr %i.bq, align 8, !tbaa !188 ; 2 uses
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !239
  %.not.i49 = icmp eq ptr %i.bh, %i.br
  br i1 %.not.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38
  %i.bs = load i64, ptr %.04.i.i41, align 4
  store i64 %i.bs, ptr %i.bh, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.h, align 8, !tbaa !231
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64

bb.o:                                             ; preds = %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38
  %i.bu = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i51, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i52)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #35
          to label %.noexc63 unwind label %.loopexit ; 10 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = load i64, ptr %.04.i.i41, align 4
  store i64 %i.cg, ptr %i.cf, align 4
  %.not10.i.i.i.i.i53 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not10.i.i.i.i.i53, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %.noexc63
  %i.ch = ptrtoaddr ptr %i.ce to i64
  %i.ci = add i64 %i.bu, -8
  %i.cj = sub i64 %i.ci, %i.bv                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.cj, 24
  %i.cm = sub i64 %i.bv, %i.ch
  %diff.check169 = icmp ugt i64 %i.cm, -32
  %or.cond185 = or i1 %min.iters.check171, %diff.check169
  br i1 %or.cond185, label %.lr.ph.i.i.i.i.i54.preheader186, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec173 = and i64 %i.cl, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec173, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bi, i64 %i.cn
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.cq = shl i64 %index175, 3                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.ce, i64 %i.cq ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.bi, i64 %i.cq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.cr = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load178 = load <2 x i64>, ptr %next.gep177, align 4, !alias.scope !364, !noalias !361
  %wide.load179 = load <2 x i64>, ptr %i.cr, align 4, !alias.scope !364, !noalias !361
  %i.cs = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %wide.load178, ptr %next.gep176, align 4, !alias.scope !361, !noalias !364
  store <2 x i64> %wide.load179, ptr %i.cs, align 4, !alias.scope !361, !noalias !364
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ct, label %middle.block181, label %vector.body174, !llvm.loop !366

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.cl, %n.vec173
  br i1 %cmp.n182, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54.preheader186

.lr.ph.i.i.i.i.i54.preheader186:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block181
  %.012.i.i.i.i.i55.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.co, %middle.block181 ]
  %.0911.i.i.i.i.i56.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cp, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader186, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader186 ] ; 2 uses
  %.0911.i.i.i.i.i56 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader186 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.cu = load i64, ptr %.0911.i.i.i.i.i56, align 4, !alias.scope !364, !noalias !361
  store i64 %i.cu, ptr %.012.i.i.i.i.i55, align 4, !alias.scope !361, !noalias !364
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i56, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.cv, %i.bh
  br i1 %.not.i.i.i.i.i57, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54, !llvm.loop !367

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block181, %.noexc63
  %.0.lcssa.i.i.i.i.i59 = phi ptr [ %i.ce, %.noexc63 ], [ %i.co, %middle.block181 ], [ %i.cw, %.lr.ph.i.i.i.i.i54 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i59, i64 8 ; 2 uses
  %.not.i23.i.i60 = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i60, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bw) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61: ; preds = %bb.q, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58
  store ptr %i.ce, ptr %0, align 8, !tbaa !233
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !231
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !239
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64: ; preds = %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28, %bb.m, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61, %bb.n
  %i.cz = phi ptr [ %i.bh, %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28 ], [ %i.bh, %bb.m ], [ %i.cx, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61 ], [ %i.bt, %bb.n ] ; 3 uses
  %.promoted122124 = phi ptr [ %.promoted122125, %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28 ], [ %.promoted122125, %bb.m ], [ %i.ce, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61 ], [ %.promoted122125, %bb.n ] ; 3 uses
  %i.da = phi ptr [ %i.bi, %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28 ], [ %i.bi, %bb.m ], [ %i.ce, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61 ], [ %i.bi, %bb.n ] ; 2 uses
  br i1 %i.bj, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74, label %bb.r, !llvm.loop !368

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.978.0.ph, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !190 ; 2 uses
  %.not.i66 = icmp eq ptr %i.dc, null
  br i1 %.not.i66, label %bb.s, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer, !llvm.loop !368

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !189 ; 2 uses
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %.loopexit115, label %bb.l, !llvm.loop !369

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit116, %.loopexit.split-lp117
  %i.df = phi ptr [ %i.s, %.loopexit.split-lp117 ], [ %i.s, %.loopexit116 ], [ %i.bh, %.loopexit ], [ %i.bh, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ], [ %lpad.loopexit118, %.loopexit116 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %0, align 8, !tbaa !233   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.body
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dj) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.body, %bb.t
  resume { ptr, i32 } %.pn

.loopexit115:                                     ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7details10Chessboard5Board18estimateSearchAreaENS_3MatEiifi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::details::Ellipse") align 4 captures(none) initializes((0, 28)) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %"class.cv::Matx.40", align 8       ; 11 uses
  %i.a = add nsw i32 %3, 1
  %i.b = mul nsw i32 %5, %i.a
  %i.c = sitofp i32 %i.b to double                ; 3 uses
  %i.d = add nsw i32 %2, 1
  %i.e = mul nsw i32 %5, %i.d
  %i.f = sitofp i32 %i.e to double                ; 3 uses
  %i.g = sitofp i32 %5 to float
  %i.h = fmul float %4, %i.g
  %i.i = fpext float %i.h to double               ; 2 uses
  %i.j = fsub double %i.c, %i.i                   ; 3 uses
  %i.k = fsub double %i.f, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.o = load <2 x double>, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 56
  %9 = load double, ptr %i.p, align 8, !tbaa !38, !noalias !370 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %10 = load double, ptr %i.q, align 8, !tbaa !38, !noalias !370 ; 2 uses
  %11 = load <4 x double>, ptr %6, align 8, !tbaa !38, !noalias !370 ; 5 uses
  %12 = load double, ptr %7, align 8, !tbaa !38, !noalias !370
  %13 = load <2 x double>, ptr %i.l, align 8
  %14 = extractelement <4 x double> %11, i64 0
  %15 = load <2 x double>, ptr %i.m, align 8, !tbaa !38, !noalias !370 ; 2 uses
  %16 = load <2 x double>, ptr %8, align 8
  %17 = shufflevector <4 x double> %11, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.r = insertelement <2 x double> poison, double %i.c, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.s, <2 x double> zeroinitializer) ; 3 uses
  %19 = shufflevector <2 x double> %15, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %20 = shufflevector <4 x double> %11, <4 x double> %19, <2 x i32> <i32 1, i32 4>
  %i.t = insertelement <2 x double> poison, double %i.f, i64 0 ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.u, <2 x double> %18)
  %22 = shufflevector <4 x double> %11, <4 x double> %19, <2 x i32> <i32 2, i32 5>
  %23 = fadd <2 x double> %22, %21
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x double> poison, double %i.j, i64 0
  %26 = insertelement <2 x double> %25, double %i.c, i64 1
  %27 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %26, <2 x double> zeroinitializer) ; 2 uses
  %28 = insertelement <2 x double> poison, double %9, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %30 = insertelement <2 x double> %i.t, double %i.k, i64 1 ; 3 uses
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %30, <2 x double> %27)
  %32 = insertelement <2 x double> poison, double %10, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fadd <2 x double> %33, %31               ; 2 uses
  %34 = extractelement <2 x double> %27, i64 1
  %35 = call double @llvm.fmuladd.f64(double %9, double %i.f, double %34)
  %36 = fadd double %10, %35
  %37 = call double @llvm.fmuladd.f64(double %14, double %i.j, double 0.000000e+00)
  %38 = call double @llvm.fmuladd.f64(double %12, double %i.j, double 0.000000e+00)
  %i.x = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %40 = insertelement <2 x double> %39, double %37, i64 0
  %i.y = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %30, <2 x double> %40)
  %41 = shufflevector <4 x double> %11, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.z = fadd <2 x double> %41, %i.y
  %42 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x double> %18, double %38, i64 0
  %43 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %30, <2 x double> %i.aa)
  %44 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = fadd <2 x double> %44, %43
  %46 = insertelement <2 x double> poison, double %36, i64 0
  %47 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x double> %23, %47
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float> ; 3 uses
  %i.ad = fdiv <2 x double> %i.z, %i.w
  %i.ae = fptrunc <2 x double> %i.ad to <2 x float>
  %48 = fdiv <2 x double> %45, %i.w
  %49 = fptrunc <2 x double> %48 to <2 x float>
  %50 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = fsub <2 x float> %i.ae, %50               ; 3 uses
  %52 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fsub <2 x float> %49, %52               ; 3 uses
  %i.ag = fpext <2 x float> %51 to <2 x double>   ; 2 uses
  %i.ah = fpext <2 x float> %i.af to <2 x double> ; 2 uses
  %i.ai = fmul <2 x double> %i.ah, %i.ah
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.ai)
  %i.ak = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aj)
  %i.al = fptrunc <2 x double> %i.ak to <2 x float> ; 3 uses
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.af, %shift
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = extractelement <2 x float> %51, i64 0
  %i.ao = extractelement <2 x float> %51, i64 1
  %i.ap = call noundef float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.am)
  %i.aq = extractelement <2 x float> %i.al, i64 0
  %i.ar = fdiv float %i.ap, %i.aq
  %i.as = extractelement <2 x float> %i.al, i64 1
  %i.at = fdiv float %i.ar, %i.as
  %i.au = call noundef float @acosf(float noundef %i.at) #33 ; 2 uses
  store <2 x float> %i.ac, ptr %0, align 4
  store <2 x float> %i.al, ptr %24, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.au, ptr %i.av, align 4, !tbaa !160
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = fneg float %i.au                        ; 2 uses
  %i.ay = call noundef float @cosf(float noundef %i.ax) #33
  store float %i.ay, ptr %i.aw, align 4, !tbaa !163
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = call noundef float @sinf(float noundef %i.ax) #33
  store float %i.ba, ptr %i.az, align 4, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret void
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board12estimatePoseERKNS_5Size_IfEERKNS_11_InputArrayERKNS_12_OutputArrayESC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %8 = alloca %"class.std::vector.34", align 8    ; 14 uses
  %9 = alloca %"class.std::vector.45", align 8    ; 14 uses
  %10 = alloca %"class.std::vector.34", align 8   ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !373
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37, !noalias !373
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %7, align 8, !tbaa !41
  %i.f = and i32 %i.e, 4095                       ; 2 uses
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.n, %.thread, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.f, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv7details10Chessboard5Board12estimatePoseERKNS_5Size_IfEERKNS_11_InputArrayERKNS_12_OutputArrayESC_E16__cv_check__1508) #32
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %i.k = icmp slt i32 %i.j, 3
  br i1 %i.k, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.77, i32 noundef 109) #32
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.body

bb.k:                                             ; preds = %bb.g
  %or.cond.not = icmp eq i32 %i.j, 2
  br i1 %or.cond.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.r, align 4
  %i.s = icmp eq i32 %.sroa.gep.val, 3
  %i.t = icmp eq i32 %.val, 3
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.p, label %.thread

bb.m:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.k, %bb.l
  %i.w = invoke i64 @_ZNK2cv8MatShapeclEv(ptr noundef nonnull align 4 dereferenceable(52) %i.i)
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %.thread
  invoke void @_ZN2cv6detail17check_failed_autoENS_5Size_IiEES2_RKNS0_12CheckContextE(i64 %i.w, i64 12884901891, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv7details10Chessboard5Board12estimatePoseERKNS_5Size_IfEERKNS_11_InputArrayERKNS_12_OutputArrayESC_E16__cv_check__1509) #32
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !209
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !209
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.ba, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !20 ; 3 uses
  %i.ae = load <2 x float>, ptr %1, align 4, !tbaa !10
  %i.af = add nsw <2 x i32> %i.ad, splat (i32 1)
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fdiv <2 x float> %i.ae, %i.ah           ; 2 uses
  %i.aj = extractelement <2 x i32> %i.ad, i64 1   ; 3 uses
  %i.ak = sub nsw i32 1, %i.aj
  %i.al = sitofp i32 %i.ak to float
  %i.am = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.an = fmul float %i.am, %i.al
  %i.ao = fmul float %i.an, 5.000000e-01
  %i.ap = fptosi float %i.ao to i32
  %i.aq = extractelement <2 x i32> %i.ad, i64 0   ; 3 uses
  %i.ar = sub nsw i32 1, %i.aq
  %i.as = sitofp i32 %i.ar to float
  %i.at = fmul float %i.am, %i.as
  %i.au = fmul float %i.at, 5.000000e-01
  %i.av = fptosi float %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZNK2cv7details10Chessboard5Board10getCornersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %10, ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %10, align 8, !tbaa !188  ; 7 uses
  %i.ax = icmp sgt i32 %i.aq, 0
  br i1 %i.ax, label %.preheader.lr.ph, label %._crit_edge107.split

.preheader.lr.ph:                                 ; preds = %bb.r
  %i.ay = icmp sgt i32 %i.aj, 0
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = sitofp i32 %i.ap to float
  %i.be = fneg float %i.bd
  %i.bf = sitofp i32 %i.av to float
  %i.bg = fneg float %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br i1 %i.ay, label %.preheader.preheader, label %._crit_edge107.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bj = shufflevector <2 x float> <float poison, float -0.000000e+00>, <2 x float> %i.ai, <2 x i32> <i32 3, i32 1>
  %i.bk = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bg, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.bl = phi ptr [ %i.ey, %._crit_edge ], [ null, %.preheader.preheader ]
  %i.bm = phi ptr [ %i.ez, %._crit_edge ], [ null, %.preheader.preheader ]
end_hunk_1
begin_hunk_2_@_ZN2cv7details10Chessboard5Board10growBottomERKNS_3MatERNS_5flann5IndexE:bb.a
  %next.gep362 = getelementptr i8, ptr %i.ef, i64 %i.fc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.fd = getelementptr i8, ptr %next.gep362, i64 16
  %wide.load363 = load <2 x i64>, ptr %next.gep362, align 4, !alias.scope !638, !noalias !635
  %wide.load364 = load <2 x i64>, ptr %i.fd, align 4, !alias.scope !638, !noalias !635
  %i.fe = getelementptr i8, ptr %next.gep361, i64 16
  store <2 x i64> %wide.load363, ptr %next.gep361, align 4, !alias.scope !635, !noalias !638
  store <2 x i64> %wide.load364, ptr %i.fe, align 4, !alias.scope !635, !noalias !638
  %index.next365 = add nuw i64 %index360, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next365, %n.vec358
  br i1 %i.ff, label %middle.block366, label %vector.body359, !llvm.loop !640

middle.block366:                                  ; preds = %vector.body359
  %cmp.n367 = icmp eq i64 %i.ex, %n.vec358
  br i1 %cmp.n367, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i125, label %.lr.ph.i.i.i.i.i121.preheader374

.lr.ph.i.i.i.i.i121.preheader374:                 ; preds = %.lr.ph.i.i.i.i.i121.preheader, %middle.block366
  %.012.i.i.i.i.i122.ph = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i121.preheader ], [ %i.fa, %middle.block366 ]
  %.0911.i.i.i.i.i123.ph = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i121.preheader ], [ %i.fb, %middle.block366 ]
  br label %.lr.ph.i.i.i.i.i121

.lr.ph.i.i.i.i.i121:                              ; preds = %.lr.ph.i.i.i.i.i121.preheader374, %.lr.ph.i.i.i.i.i121
  %.012.i.i.i.i.i122 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i121 ], [ %.012.i.i.i.i.i122.ph, %.lr.ph.i.i.i.i.i121.preheader374 ] ; 2 uses
  %.0911.i.i.i.i.i123 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i121 ], [ %.0911.i.i.i.i.i123.ph, %.lr.ph.i.i.i.i.i121.preheader374 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.fg = load i64, ptr %.0911.i.i.i.i.i123, align 4, !alias.scope !638, !noalias !635
  store i64 %i.fg, ptr %.012.i.i.i.i.i122, align 4, !alias.scope !635, !noalias !638
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i123, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i122, i64 8 ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq ptr %i.fh, %i.ea
  br i1 %.not.i.i.i.i.i124, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i125, label %.lr.ph.i.i.i.i.i121, !llvm.loop !641

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i125: ; preds = %.lr.ph.i.i.i.i.i121, %middle.block366, %.noexc130
  %.0.lcssa.i.i.i.i.i126 = phi ptr [ %i.eq, %.noexc130 ], [ %i.fa, %middle.block366 ], [ %i.fi, %.lr.ph.i.i.i.i.i121 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i126, i64 8
  %.not.i23.i.i127 = icmp eq ptr %i.ef, null
  br i1 %.not.i23.i.i127, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i128, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i125
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ei) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i128

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i128: ; preds = %bb.ag, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i125
  store ptr %i.eq, ptr %5, align 8, !tbaa !233
  store ptr %i.fj, ptr %i.t, align 8, !tbaa !231
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.fk, ptr %i.u, align 8, !tbaa !239
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit131

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit131: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i128, %bb.ae, %bb.s, %bb.y, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit, %bb.ab
  %.3 = phi i32 [ %i.dx, %bb.ab ], [ %i.as, %bb.s ], [ %.018322, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ], [ %i.dw, %bb.y ], [ %i.dx, %bb.ae ], [ %i.dx, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i128 ] ; 3 uses
  br i1 %.sroa.0174.1316, label %bb.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit131
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.11177.1319, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !190 ; 2 uses
  %.not.i133 = icmp eq ptr %i.fm, null
  br i1 %.not.i133, label %bb.ai, label %bb.i

bb.ai:                                            ; preds = %bb.ah
  %i.fn = sitofp i32 %.3 to double
  %i.fo = load ptr, ptr %i.t, align 8, !tbaa !231
  %i.fp = load ptr, ptr %5, align 8, !tbaa !233
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3
  %i.fu = uitofp i64 %i.ft to double
  %i.fv = fmul nnan double %i.fu, 5.000000e-01
  %i.fw = fcmp olt double %i.fv, %i.fn
  br i1 %i.fw, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fx = invoke noundef zeroext i1 @_ZN2cv7details10Chessboard5Board14checkRowColumnERKSt6vectorINS_6Point_IfEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.fx, label %bb.am, label %.critedge

bb.al:                                            ; preds = %bb.am, %bb.aj
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN2cv7details10Chessboard5Board12addRowBottomERKSt6vectorINS_6Point_IfEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.critedge unwind label %bb.al

.critedge:                                        ; preds = %bb.k, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit, %bb.s, %bb.am, %bb.ai, %bb.ak
  %.337 = phi i1 [ true, %bb.am ], [ false, %bb.ai ], [ false, %bb.ak ], [ false, %bb.s ], [ false, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backEOS2_.exit ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.fz = load ptr, ptr %5, align 8, !tbaa !233   ; 3 uses
  %.not.i.i.i141 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.ga = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gd) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.critedge, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.337

.body:                                            ; preds = %.loopexit281, %.loopexit.split-lp282, %.loopexit, %.loopexit.split-lp, %bb.al, %.body98, %bb.ac
  %.pn45.pn = phi { ptr, i32 } [ %i.fy, %bb.al ], [ %i.aj, %.body98 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.dz, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit283, %.loopexit281 ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ge = load ptr, ptr %5, align 8, !tbaa !233   ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143, label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.gf = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gi) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143: ; preds = %.body, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn45.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143 ]
  resume { ptr, i32 } %.pn48.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board11checkUniqueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.34", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZNK2cv7details10Chessboard5Board10getCornersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %1, ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !188    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188  ; 4 uses
  %.not21 = icmp eq ptr %i.a, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not151932 = icmp eq ptr %i.d, %i.c
  %or.cond = select i1 %.not21, i1 true, i1 %.not151932
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.not1519 = icmp eq ptr %i.e, %i.c
  br i1 %.not1519, label %.loopexit, label %.lr.ph, !llvm.loop !642

.lr.ph:                                           ; preds = %bb.a, %.critedge.loopexit
  %i.f = phi ptr [ %i.e, %.critedge.loopexit ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.011.02233 = phi ptr [ %i.f, %.critedge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %.val = load float, ptr %.sroa.011.02233, align 4, !tbaa !175
  %i.g = getelementptr i8, ptr %.sroa.011.02233, i64 4
  %.val3 = load float, ptr %i.g, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.020, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.h, %i.c
  br i1 %.not15, label %.critedge.loopexit, label %bb.c, !llvm.loop !643

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.06.020 = phi ptr [ %i.f, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %.val4 = load float, ptr %.sroa.06.020, align 4, !tbaa !175
  %i.i = getelementptr i8, ptr %.sroa.06.020, i64 4
  %.val5 = load float, ptr %i.i, align 4
  %i.j = fcmp oeq float %.val, %.val4
  %i.k = fcmp oeq float %.val3, %.val5
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge.loopexit, %bb.c, %bb.a
  %.not18 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ true, %.critedge.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !239
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.q) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i1 %.not18
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv7details10Chessboard5Board15validateCornersERKNS_3MatERNS_5flann5IndexES5_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, float noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Matx.40", align 8       ; 15 uses
  %6 = alloca %"class.cv::Matx.40", align 8       ; 15 uses
  %7 = alloca %"class.cv::Point_", align 8        ; 12 uses
  %8 = alloca %"class.cv::details::Ellipse", align 8 ; 13 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::details::Ellipse", align 8 ; 13 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.std::vector.34", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
  br i1 %i.f, label %bb.ac, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49.peel.begin

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49.peel.begin: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !230  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %.sroa_idx41.i = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %.in.peel = load ptr, ptr %i.h, align 8, !tbaa !188
  %i.u = load float, ptr %.in.peel, align 4, !tbaa !175
  %i.v = fcmp ord float %i.u, 0.000000e+00
  br i1 %i.v, label %.peel.newph, label %bb.c

bb.c:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !644
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.w = load <2 x double>, ptr %i.m, align 8
  %13 = load double, ptr %i.n, align 8, !tbaa !38, !noalias !647 ; 2 uses
  %i.x = load double, ptr %.sroa_idx41.i, align 8, !tbaa !38, !noalias !647 ; 2 uses
  %14 = load <4 x double>, ptr %6, align 8, !tbaa !38, !noalias !647 ; 5 uses
  %i.y = load double, ptr %i.j, align 8, !tbaa !38, !noalias !647
  %15 = load <2 x double>, ptr %i.i, align 8
  %16 = extractelement <4 x double> %14, i64 0
  %i.z = load <2 x double>, ptr %i.k, align 8, !tbaa !38, !noalias !647 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.l, align 8
  %17 = shufflevector <4 x double> %14, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %18 = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %19 = shufflevector <4 x double> %14, <4 x double> %18, <2 x i32> <i32 1, i32 4>
  %20 = shufflevector <4 x double> %14, <4 x double> %18, <2 x i32> <i32 2, i32 5>
  %i.ab = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> <double 6.000000e+01, double 1.000000e+02>, <2 x double> zeroinitializer) ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %13, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> <double 1.000000e+02, double 6.000000e+01>, <2 x double> %i.ac)
  %22 = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fadd <2 x double> %i.af, %21              ; 2 uses
  %i.ag = extractelement <2 x double> %i.ac, i64 1
  %i.ah = call double @llvm.fmuladd.f64(double %13, double 1.000000e+02, double %i.ag)
  %i.ai = fadd double %i.x, %i.ah
  %24 = call double @llvm.fmuladd.f64(double %16, double 6.000000e+01, double 0.000000e+00)
  %25 = call double @llvm.fmuladd.f64(double %i.y, double 6.000000e+01, double 0.000000e+00)
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> splat (double 1.000000e+02), <2 x double> zeroinitializer) ; 3 uses
  %26 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %28 = insertelement <2 x double> %27, double %24, i64 0
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> <double 1.000000e+02, double 6.000000e+01>, <2 x double> %28)
  %29 = shufflevector <4 x double> %14, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.al = fadd <2 x double> %29, %i.ak
  %30 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> %i.aj, double %25, i64 0
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> <double 1.000000e+02, double 6.000000e+01>, <2 x double> %31)
  %32 = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fadd <2 x double> %32, %i.am
  %33 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> splat (double 1.000000e+02), <2 x double> %i.aj)
  %34 = fadd <2 x double> %20, %33
  %35 = insertelement <2 x double> poison, double %i.ai, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = fdiv <2 x double> %34, %36
  %38 = fptrunc <2 x double> %37 to <2 x float>   ; 3 uses
  %i.ao = fdiv <2 x double> %i.al, %23
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float>
  %i.aq = fdiv <2 x double> %i.an, %23
  %i.ar = fptrunc <2 x double> %i.aq to <2 x float>
  %i.as = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fsub <2 x float> %i.ap, %i.as           ; 3 uses
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fsub <2 x float> %i.ar, %39             ; 3 uses
  %i.av = fpext <2 x float> %i.at to <2 x double> ; 2 uses
  %i.aw = fpext <2 x float> %i.au to <2 x double> ; 2 uses
  %i.ax = fmul <2 x double> %i.aw, %i.aw
  %i.ay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.av, <2 x double> %i.ax)
  %i.az = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ay)
  %i.ba = fptrunc <2 x double> %i.az to <2 x float> ; 3 uses
  %shift.peel = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.peel = fmul <2 x float> %i.au, %shift.peel
  %i.bb = extractelement <2 x float> %foldExtExtBinop.peel, i64 0
  %i.bc = extractelement <2 x float> %i.at, i64 0
  %i.bd = extractelement <2 x float> %i.at, i64 1
  %i.be = call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.bb)
  %i.bf = extractelement <2 x float> %i.ba, i64 0
  %i.bg = fdiv float %i.be, %i.bf
  %i.bh = extractelement <2 x float> %i.ba, i64 1
  %i.bi = fdiv float %i.bg, %i.bh
  %i.bj = call noundef float @acosf(float noundef %i.bi) #33, !noalias !644 ; 2 uses
  store <2 x float> %38, ptr %8, align 8, !alias.scope !644
  store <2 x float> %i.ba, ptr %i.o, align 8, !alias.scope !644
  store float %i.bj, ptr %i.p, align 8, !tbaa !160, !alias.scope !644
  %i.bk = fneg float %i.bj                        ; 2 uses
  %i.bl = call noundef float @cosf(float noundef %i.bk) #33, !noalias !644
  store float %i.bl, ptr %i.q, align 4, !tbaa !163, !alias.scope !644
  %i.bm = call noundef float @sinf(float noundef %i.bk) #33, !noalias !644
  store float %i.bm, ptr %i.r, align 8, !tbaa !164, !alias.scope !644
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !644
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  %i.bn = load float, ptr %i.s, align 8, !tbaa !191
  %i.bo = load float, ptr %i.t, align 4, !tbaa !204
  %i.bp = call noundef float @_ZN2cv7details10Chessboard5Board12findMaxPointERNS_5flann5IndexERKNS_3MatERKNS0_7EllipseEffRNS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(28) %8, float noundef %i.bn, float noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.bq = call noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fcmp ult float %i.bq, %4
  br i1 %i.br, label %bb.e, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55.peel

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55.peel: ; preds = %bb.d
  %.04.i.i51.peel = load ptr, ptr %i.h, align 8, !tbaa !188
  %i.bs = load i64, ptr %7, align 8
  store i64 %i.bs, ptr %.04.i.i51.peel, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55.peel, %bb.d
  %.134.peel = phi i32 [ 1, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55.peel ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.peel.newph

.peel.newph:                                      ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49.peel.begin, %bb.e
  %.2.peel = phi i32 [ %.134.peel, %bb.e ], [ 1, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49.peel.begin ]
  br label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49: ; preds = %bb.k, %.peel.newph
  %.032193 = phi i32 [ 1, %.peel.newph ], [ %i.dw, %bb.k ] ; 2 uses
  %.033191 = phi i32 [ %.2.peel, %.peel.newph ], [ %.2, %bb.k ] ; 3 uses
  %.sroa.10118.0189 = phi ptr [ %i.h, %.peel.newph ], [ %i.dy, %bb.k ] ; 3 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %.sroa.10118.0189, i64 8
  %.in = load ptr, ptr %.in.in, align 8, !tbaa !188
  %i.bt = load float, ptr %.in, align 4, !tbaa !175
  %i.bu = fcmp ord float %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49
  %i.bv = add nsw i32 %.033191, 1
  br label %bb.k

bb.g:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !650
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.h unwind label %.loopexit207

bb.h:                                             ; preds = %bb.g
  %i.bw = mul i32 %.032193, 100
  %i.bx = add i32 %i.bw, 100
  %i.by = load <2 x double>, ptr %i.m, align 8
  %40 = load double, ptr %i.n, align 8, !tbaa !38, !noalias !652 ; 2 uses
  %i.bz = load double, ptr %.sroa_idx41.i, align 8, !tbaa !38, !noalias !652 ; 2 uses
  %41 = load <4 x double>, ptr %6, align 8, !tbaa !38, !noalias !652 ; 5 uses
  %i.ca = load double, ptr %i.j, align 8, !tbaa !38, !noalias !652
  %i.cb = load <2 x double>, ptr %i.i, align 8
  %42 = extractelement <4 x double> %41, i64 0
  %i.cc = load <2 x double>, ptr %i.k, align 8, !tbaa !38, !noalias !652 ; 2 uses
  %43 = load <2 x double>, ptr %i.l, align 8
  %44 = shufflevector <4 x double> %41, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %45 = shufflevector <2 x double> %i.cc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %46 = shufflevector <4 x double> %41, <4 x double> %45, <2 x i32> <i32 1, i32 4>
  %47 = shufflevector <4 x double> %41, <4 x double> %45, <2 x i32> <i32 2, i32 5>
  %48 = sitofp i32 %i.bx to double
  %i.cd = insertelement <2 x double> poison, double %48, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %49 = fadd <2 x double> %i.ce, <double -4.000000e+01, double -0.000000e+00> ; 2 uses
  %50 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %51 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %49, <2 x double> zeroinitializer) ; 2 uses
  %52 = insertelement <2 x double> poison, double %40, i64 0
  %i.cf = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> <double 1.000000e+02, double 6.000000e+01>, <2 x double> %51)
  %53 = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ch = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = fadd <2 x double> %i.ch, %i.cg            ; 2 uses
  %i.ci = extractelement <2 x double> %51, i64 1
  %i.cj = call double @llvm.fmuladd.f64(double %40, double 1.000000e+02, double %i.ci)
  %i.ck = fadd double %i.bz, %i.cj
  %55 = extractelement <2 x double> %49, i64 0    ; 2 uses
  %56 = call double @llvm.fmuladd.f64(double %42, double %55, double 0.000000e+00)
  %57 = call double @llvm.fmuladd.f64(double %i.ca, double %55, double 0.000000e+00)
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %i.ce, <2 x double> zeroinitializer) ; 3 uses
  %58 = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %60 = insertelement <2 x double> %59, double %56, i64 0
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %58, <2 x double> <double 1.000000e+02, double 6.000000e+01>, <2 x double> %60)
  %61 = shufflevector <4 x double> %41, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cn = fadd <2 x double> %61, %i.cm
  %62 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = insertelement <2 x double> %i.cl, double %57, i64 0
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> <double 1.000000e+02, double 6.000000e+01>, <2 x double> %63)
  %64 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fadd <2 x double> %64, %i.co
  %65 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> splat (double 1.000000e+02), <2 x double> %i.cl)
  %66 = fadd <2 x double> %47, %65
  %67 = insertelement <2 x double> poison, double %i.ck, i64 0
  %68 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = fdiv <2 x double> %66, %68
  %70 = fptrunc <2 x double> %69 to <2 x float>   ; 3 uses
  %i.cq = fdiv <2 x double> %i.cn, %54
  %i.cr = fptrunc <2 x double> %i.cq to <2 x float>
  %i.cs = fdiv <2 x double> %i.cp, %54
  %i.ct = fptrunc <2 x double> %i.cs to <2 x float>
  %i.cu = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fsub <2 x float> %i.cr, %i.cu           ; 3 uses
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fsub <2 x float> %i.ct, %71             ; 3 uses
  %i.cx = fpext <2 x float> %i.cv to <2 x double> ; 2 uses
  %i.cy = fpext <2 x float> %i.cw to <2 x double> ; 2 uses
  %i.cz = fmul <2 x double> %i.cy, %i.cy
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cx, <2 x double> %i.cz)
  %i.db = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.da)
  %i.dc = fptrunc <2 x double> %i.db to <2 x float> ; 3 uses
  %shift = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.cw, %shift
  %i.dd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = extractelement <2 x float> %i.cv, i64 0
  %i.df = extractelement <2 x float> %i.cv, i64 1
  %i.dg = call noundef float @llvm.fmuladd.f32(float %i.de, float %i.df, float %i.dd)
  %i.dh = extractelement <2 x float> %i.dc, i64 0
  %i.di = fdiv float %i.dg, %i.dh
  %i.dj = extractelement <2 x float> %i.dc, i64 1
  %i.dk = fdiv float %i.di, %i.dj
  %i.dl = call noundef float @acosf(float noundef %i.dk) #33, !noalias !650 ; 2 uses
  store <2 x float> %70, ptr %8, align 8, !alias.scope !650
  store <2 x float> %i.dc, ptr %i.o, align 8, !alias.scope !650
  store float %i.dl, ptr %i.p, align 8, !tbaa !160, !alias.scope !650
  %i.dm = fneg float %i.dl                        ; 2 uses
  %i.dn = call noundef float @cosf(float noundef %i.dm) #33, !noalias !650
  store float %i.dn, ptr %i.q, align 4, !tbaa !163, !alias.scope !650
  %i.do = call noundef float @sinf(float noundef %i.dm) #33, !noalias !650
  store float %i.do, ptr %i.r, align 8, !tbaa !164, !alias.scope !650
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !650
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  %i.dp = load float, ptr %i.s, align 8, !tbaa !191
  %i.dq = load float, ptr %i.t, align 4, !tbaa !204
  %i.dr = call noundef float @_ZN2cv7details10Chessboard5Board12findMaxPointERNS_5flann5IndexERKNS_3MatERKNS0_7EllipseEffRNS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(28) %8, float noundef %i.dp, float noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ds = call noundef float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp ult float %i.ds, %4
  br i1 %i.dt, label %bb.j, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55: ; preds = %bb.h
  %i.du = add nsw i32 %.033191, 1
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.10118.0189, i64 8
  %.04.i.i51 = load ptr, ptr %spec.select, align 8, !tbaa !188
  %i.dv = load i64, ptr %7, align 8
  store i64 %i.dv, ptr %.04.i.i51, align 4
  br label %bb.j

.loopexit207:                                     ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit207
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit207 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ab

bb.j:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55, %bb.h
  %.134 = phi i32 [ %i.du, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit55 ], [ %.033191, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.2 = phi i32 [ %i.bv, %bb.f ], [ %.134, %bb.j ] ; 2 uses
  %i.dw = add nuw nsw i32 %.032193, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.10118.0189, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !190 ; 2 uses
  %.not17.i = icmp eq ptr %i.dy, null
  br i1 %.not17.i, label %.loopexit208, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit49, !llvm.loop !653

.loopexit208:                                     ; preds = %bb.k
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.sroa_idx41.i70 = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.w, %.loopexit208
  %.3 = phi i32 [ %.2, %.loopexit208 ], [ %.6.lcssa, %bb.w ]
  %.029 = phi i32 [ 1, %.loopexit208 ], [ %i.jh, %bb.w ] ; 2 uses
  %.028 = phi ptr [ %i.dz, %.loopexit208 ], [ %i.jg, %bb.w ] ; 2 uses
  %i.ek = mul i32 %.029, 100
  %i.el = add i32 %i.ek, 100
  %i.em = sitofp i32 %i.el to double              ; 4 uses
  %i.en = fadd double %i.em, -4.000000e+01
  %i.eo = insertelement <2 x double> poison, double %i.em, i64 0 ; 2 uses
  %72 = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %73 = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 6 uses
  br label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer: ; preds = %bb.v, %bb.l
  %..ph = phi i64 [ 16, %bb.v ], [ 24, %bb.l ]    ; 2 uses
  %.ph = phi i1 [ false, %bb.v ], [ true, %bb.l ]
  %.sroa.1099.0.ph = phi ptr [ %i.je, %bb.v ], [ %.028, %bb.l ] ; 5 uses
  %.4.ph = phi i32 [ %.6.lcssa, %bb.v ], [ %.3, %bb.l ] ; 3 uses
  %.1.ph = phi i32 [ %.lcssa, %bb.v ], [ 0, %bb.l ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.1099.0.ph, i64 %..ph
  %.in159.peel = load ptr, ptr %i.ep, align 8, !tbaa !188
  %i.eq = load float, ptr %.in159.peel, align 4, !tbaa !175
  %i.er = fcmp ord float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !654
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.n unwind label %.loopexit.split-lp211

bb.n:                                             ; preds = %bb.m
  %i.es = mul i32 %.1.ph, 100
  %i.et = add i32 %i.es, 100
  %i.eu = load <2 x double>, ptr %i.ee, align 8
  %74 = load double, ptr %i.ef, align 8, !tbaa !38, !noalias !657 ; 2 uses
  %i.ev = load double, ptr %.sroa_idx41.i70, align 8, !tbaa !38, !noalias !657 ; 2 uses
  %75 = load <4 x double>, ptr %5, align 8, !tbaa !38, !noalias !657 ; 5 uses
  %i.ew = load double, ptr %i.eb, align 8, !tbaa !38, !noalias !657
  %i.ex = load <2 x double>, ptr %i.ea, align 8
  %76 = extractelement <4 x double> %75, i64 0
  %i.ey = load <2 x double>, ptr %i.ec, align 8, !tbaa !38, !noalias !657 ; 2 uses
  %77 = load <2 x double>, ptr %i.ed, align 8
  %78 = shufflevector <4 x double> %75, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %79 = shufflevector <2 x double> %i.ey, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %80 = shufflevector <4 x double> %75, <4 x double> %79, <2 x i32> <i32 1, i32 4>
  %81 = shufflevector <4 x double> %75, <4 x double> %79, <2 x i32> <i32 2, i32 5>
  %82 = sitofp i32 %i.et to double
  %i.ez = insertelement <2 x double> poison, double %82, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %83 = fadd <2 x double> %i.fa, <double -4.000000e+01, double -0.000000e+00> ; 2 uses
  %84 = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %85 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %84, <2 x double> %83, <2 x double> zeroinitializer) ; 2 uses
  %86 = insertelement <2 x double> poison, double %74, i64 0
  %i.fb = shufflevector <2 x double> %86, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %73, <2 x double> %85)
  %87 = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fd = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> zeroinitializer
  %88 = fadd <2 x double> %i.fd, %i.fc            ; 2 uses
  %i.fe = extractelement <2 x double> %85, i64 1
  %i.ff = call double @llvm.fmuladd.f64(double %74, double %i.em, double %i.fe)
  %i.fg = fadd double %i.ev, %i.ff
  %89 = extractelement <2 x double> %83, i64 0    ; 2 uses
  %90 = call double @llvm.fmuladd.f64(double %76, double %89, double 0.000000e+00)
  %91 = call double @llvm.fmuladd.f64(double %i.ew, double %89, double 0.000000e+00)
  %i.fh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %78, <2 x double> %i.fa, <2 x double> zeroinitializer) ; 3 uses
  %92 = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %93 = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %94 = insertelement <2 x double> %93, double %90, i64 0
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %92, <2 x double> %73, <2 x double> %94)
  %95 = shufflevector <4 x double> %75, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fj = fadd <2 x double> %95, %i.fi
  %96 = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %97 = insertelement <2 x double> %i.fh, double %91, i64 0
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %96, <2 x double> %73, <2 x double> %97)
  %98 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fadd <2 x double> %98, %i.fk
  %99 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %80, <2 x double> %72, <2 x double> %i.fh)
  %100 = fadd <2 x double> %81, %99
  %101 = insertelement <2 x double> poison, double %i.fg, i64 0
  %102 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> zeroinitializer
  %103 = fdiv <2 x double> %100, %102
  %104 = fptrunc <2 x double> %103 to <2 x float> ; 3 uses
  %i.fm = fdiv <2 x double> %i.fj, %88
  %i.fn = fptrunc <2 x double> %i.fm to <2 x float>
  %i.fo = fdiv <2 x double> %i.fl, %88
  %i.fp = fptrunc <2 x double> %i.fo to <2 x float>
  %i.fq = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fsub <2 x float> %i.fn, %i.fq           ; 3 uses
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = fsub <2 x float> %i.fp, %105            ; 3 uses
  %i.ft = fpext <2 x float> %i.fr to <2 x double> ; 2 uses
  %i.fu = fpext <2 x float> %i.fs to <2 x double> ; 2 uses
  %i.fv = fmul <2 x double> %i.fu, %i.fu
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.ft, <2 x double> %i.fv)
  %i.fx = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fw)
  %i.fy = fptrunc <2 x double> %i.fx to <2 x float> ; 3 uses
  %shift202.peel = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop203.peel = fmul <2 x float> %i.fs, %shift202.peel
  %i.fz = extractelement <2 x float> %foldExtExtBinop203.peel, i64 0
  %i.ga = extractelement <2 x float> %i.fr, i64 0
  %i.gb = extractelement <2 x float> %i.fr, i64 1
  %i.gc = call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.gb, float %i.fz)
  %i.gd = extractelement <2 x float> %i.fy, i64 0
  %i.ge = fdiv float %i.gc, %i.gd
  %i.gf = extractelement <2 x float> %i.fy, i64 1
  %i.gg = fdiv float %i.ge, %i.gf
  %i.gh = call noundef float @acosf(float noundef %i.gg) #33, !noalias !654 ; 2 uses
  store <2 x float> %104, ptr %10, align 8, !alias.scope !654
  store <2 x float> %i.fy, ptr %i.eg, align 8, !alias.scope !654
  store float %i.gh, ptr %i.eh, align 8, !tbaa !160, !alias.scope !654
  %i.gi = fneg float %i.gh                        ; 2 uses
  %i.gj = call noundef float @cosf(float noundef %i.gi) #33, !noalias !654
  store float %i.gj, ptr %i.ei, align 4, !tbaa !163, !alias.scope !654
  %i.gk = call noundef float @sinf(float noundef %i.gi) #33, !noalias !654
  store float %i.gk, ptr %i.ej, align 8, !tbaa !164, !alias.scope !654
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !654
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #33
  %i.gl = load float, ptr %i.s, align 8, !tbaa !191
  %i.gm = load float, ptr %i.t, align 4, !tbaa !204
  %i.gn = call noundef float @_ZN2cv7details10Chessboard5Board12findMaxPointERNS_5flann5IndexERKNS_3MatERKNS0_7EllipseEffRNS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(28) %10, float noundef %i.gl, float noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.go = fcmp ugt float %4, %i.gn
  br i1 %i.go, label %bb.o, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78.peel

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78.peel: ; preds = %bb.n
  %i.gp = add nsw i32 %.4.ph, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.1099.0.ph, i64 %..ph
  %.04.i.i74.peel = load ptr, ptr %i.gq, align 8, !tbaa !188
  %i.gr = load i64, ptr %7, align 8
  store i64 %i.gr, ptr %.04.i.i74.peel, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78.peel, %bb.n
  %.5.peel = phi i32 [ %i.gp, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78.peel ], [ %.4.ph, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.q

bb.p:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer
  %i.gs = add nsw i32 %.4.ph, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.6.peel = phi i32 [ %i.gs, %bb.p ], [ %.5.peel, %bb.o ] ; 4 uses
  %i.gt = add nuw nsw i32 %.1.ph, 1               ; 2 uses
  br i1 %.ph, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer.peel.newph, label %bb.v

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer.peel.newph: ; preds = %bb.q
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.1099.0.ph, i64 16
  %i.gv = mul i32 %i.gt, 100
  %i.gw = add i32 %i.gv, 100
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fadd <2 x double> %i.gz, <double -4.000000e+01, double -0.000000e+00> ; 2 uses
  %106 = extractelement <2 x double> %i.ha, i64 0 ; 2 uses
  %i.hb = add nsw i32 %.6.peel, 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.1099.0.ph, i64 16
  %i.hd = add nsw i32 %.6.peel, 1
  %.in159 = load ptr, ptr %i.gu, align 8, !tbaa !188
  %i.he = load float, ptr %.in159, align 4, !tbaa !175
  %i.hf = fcmp ord float %i.he, 0.000000e+00
  br i1 %i.hf, label %.loopexit215, label %bb.r

bb.r:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer.peel.newph
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !660
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.s unwind label %.loopexit210

bb.s:                                             ; preds = %bb.r
  %i.hg = load <2 x double>, ptr %i.ee, align 8
  %107 = load double, ptr %i.ef, align 8, !tbaa !38, !noalias !662 ; 2 uses
  %i.hh = load double, ptr %.sroa_idx41.i70, align 8, !tbaa !38, !noalias !662 ; 2 uses
  %108 = load <4 x double>, ptr %5, align 8, !tbaa !38, !noalias !662 ; 5 uses
  %i.hi = load double, ptr %i.eb, align 8, !tbaa !38, !noalias !662
  %109 = load <2 x double>, ptr %i.ea, align 8
  %110 = extractelement <4 x double> %108, i64 0
  %i.hj = load <2 x double>, ptr %i.ec, align 8, !tbaa !38, !noalias !662 ; 2 uses
  %i.hk = load <2 x double>, ptr %i.ed, align 8
  %111 = shufflevector <4 x double> %108, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %112 = shufflevector <2 x double> %i.hj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %113 = shufflevector <4 x double> %108, <4 x double> %112, <2 x i32> <i32 1, i32 4>
  %114 = shufflevector <4 x double> %108, <4 x double> %112, <2 x i32> <i32 2, i32 5>
  %i.hl = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.ha, <2 x double> zeroinitializer) ; 2 uses
  %i.hn = insertelement <2 x double> poison, double %107, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %115 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %73, <2 x double> %i.hm)
  %116 = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hp = shufflevector <2 x double> %116, <2 x double> poison, <2 x i32> zeroinitializer
  %117 = fadd <2 x double> %i.hp, %115            ; 2 uses
  %i.hq = extractelement <2 x double> %i.hm, i64 1
  %i.hr = call double @llvm.fmuladd.f64(double %107, double %i.em, double %i.hq)
  %i.hs = fadd double %i.hh, %i.hr
  %118 = call double @llvm.fmuladd.f64(double %110, double %106, double 0.000000e+00)
  %119 = call double @llvm.fmuladd.f64(double %i.hi, double %106, double 0.000000e+00)
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.gz, <2 x double> zeroinitializer) ; 3 uses
  %120 = shufflevector <2 x double> %109, <2 x double> poison, <2 x i32> zeroinitializer
  %121 = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %122 = insertelement <2 x double> %121, double %118, i64 0
  %i.hu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %120, <2 x double> %73, <2 x double> %122)
  %123 = shufflevector <4 x double> %108, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.hv = fadd <2 x double> %123, %i.hu
  %124 = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %125 = insertelement <2 x double> %i.ht, double %119, i64 0
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %124, <2 x double> %73, <2 x double> %125)
  %126 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fadd <2 x double> %126, %i.hw
  %127 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> %72, <2 x double> %i.ht)
  %128 = fadd <2 x double> %114, %127
  %129 = insertelement <2 x double> poison, double %i.hs, i64 0
  %130 = shufflevector <2 x double> %129, <2 x double> poison, <2 x i32> zeroinitializer
  %131 = fdiv <2 x double> %128, %130
  %132 = fptrunc <2 x double> %131 to <2 x float> ; 3 uses
  %i.hy = fdiv <2 x double> %i.hv, %117
  %i.hz = fptrunc <2 x double> %i.hy to <2 x float>
  %i.ia = fdiv <2 x double> %i.hx, %117
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float>
  %i.ic = shufflevector <2 x float> %132, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fsub <2 x float> %i.hz, %i.ic           ; 3 uses
  %133 = shufflevector <2 x float> %132, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ie = fsub <2 x float> %i.ib, %133            ; 3 uses
  %i.if = fpext <2 x float> %i.id to <2 x double> ; 2 uses
  %i.ig = fpext <2 x float> %i.ie to <2 x double> ; 2 uses
  %i.ih = fmul <2 x double> %i.ig, %i.ig
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.if, <2 x double> %i.ih)
  %i.ij = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ii)
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float> ; 3 uses
  %shift202 = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop203 = fmul <2 x float> %i.ie, %shift202
  %i.il = extractelement <2 x float> %foldExtExtBinop203, i64 0
  %i.im = extractelement <2 x float> %i.id, i64 0
  %i.in = extractelement <2 x float> %i.id, i64 1
  %i.io = call noundef float @llvm.fmuladd.f32(float %i.im, float %i.in, float %i.il)
  %i.ip = extractelement <2 x float> %i.ik, i64 0
  %i.iq = fdiv float %i.io, %i.ip
  %i.ir = extractelement <2 x float> %i.ik, i64 1
  %i.is = fdiv float %i.iq, %i.ir
  %i.it = call noundef float @acosf(float noundef %i.is) #33, !noalias !660 ; 2 uses
  store <2 x float> %132, ptr %10, align 8, !alias.scope !660
  store <2 x float> %i.ik, ptr %i.eg, align 8, !alias.scope !660
  store float %i.it, ptr %i.eh, align 8, !tbaa !160, !alias.scope !660
  %i.iu = fneg float %i.it                        ; 2 uses
  %i.iv = call noundef float @cosf(float noundef %i.iu) #33, !noalias !660
  store float %i.iv, ptr %i.ei, align 4, !tbaa !163, !alias.scope !660
  %i.iw = call noundef float @sinf(float noundef %i.iu) #33, !noalias !660
  store float %i.iw, ptr %i.ej, align 8, !tbaa !164, !alias.scope !660
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !660
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #33
  %i.ix = load float, ptr %i.s, align 8, !tbaa !191
  %i.iy = load float, ptr %i.t, align 4, !tbaa !204
  %i.iz = call noundef float @_ZN2cv7details10Chessboard5Board12findMaxPointERNS_5flann5IndexERKNS_3MatERKNS0_7EllipseEffRNS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(28) %10, float noundef %i.ix, float noundef %i.iy, ptr noundef nonnull align 4 dereferenceable(8) %7)
  %i.ja = fcmp ugt float %4, %i.iz
  br i1 %i.ja, label %bb.u, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78

_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78: ; preds = %bb.s
  %.04.i.i74 = load ptr, ptr %i.hc, align 8, !tbaa !188
  %i.jb = load i64, ptr %7, align 8
  store i64 %i.jb, ptr %.04.i.i74, align 4
  br label %bb.u

.loopexit210:                                     ; preds = %bb.r
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp211:                            ; preds = %bb.m
  %lpad.loopexit.split-lp213 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp211, %.loopexit210
  %lpad.phi214 = phi { ptr, i32 } [ %lpad.loopexit212, %.loopexit210 ], [ %lpad.loopexit.split-lp213, %.loopexit.split-lp211 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ab

bb.u:                                             ; preds = %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78, %bb.s
  %.5 = phi i32 [ %i.hb, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit78 ], [ %.6.peel, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.u, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer.peel.newph
  %.6 = phi i32 [ %.5, %bb.u ], [ %i.hd, %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer.peel.newph ]
  %i.jc = add nuw nsw i32 %.1.ph, 2
  br label %bb.v

bb.v:                                             ; preds = %.loopexit215, %bb.q
  %.6.lcssa = phi i32 [ %.6.peel, %bb.q ], [ %.6, %.loopexit215 ] ; 4 uses
  %.lcssa = phi i32 [ %i.gt, %bb.q ], [ %i.jc, %.loopexit215 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.1099.0.ph, i64 48
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !190 ; 2 uses
  %.not.i80 = icmp eq ptr %i.je, null
  br i1 %.not.i80, label %bb.w, label %_ZN2cv7details10Chessboard5Board9PointIterdeEv.exit67.outer, !llvm.loop !663

bb.w:                                             ; preds = %bb.v
  %i.jf = getelementptr inbounds nuw i8, ptr %.028, i64 56
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !189 ; 2 uses
  %i.jh = add nuw nsw i32 %.029, 1
  %.not = icmp eq ptr %i.jg, null
  br i1 %.not, label %bb.x, label %bb.l, !llvm.loop !664

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @_ZNK2cv7details10Chessboard5Board10getCornersEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %i.ji = load ptr, ptr %12, align 8, !tbaa !188  ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !188 ; 4 uses
  %.not160167 = icmp eq ptr %i.ji, %i.jk
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 2 uses
  %.not161165199 = icmp eq ptr %i.jl, %i.jk
  %or.cond = select i1 %.not160167, i1 true, i1 %.not161165199
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %bb.y
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %.not161165 = icmp eq ptr %i.jm, %i.jk
  br i1 %.not161165, label %.loopexit, label %.lr.ph, !llvm.loop !665

.lr.ph:                                           ; preds = %bb.x, %.critedge.loopexit
  %i.jn = phi ptr [ %i.jm, %.critedge.loopexit ], [ %i.jl, %bb.x ] ; 3 uses
  %.sroa.091.0168200 = phi ptr [ %i.jn, %.critedge.loopexit ], [ %i.ji, %bb.x ] ; 2 uses
  %.val = load float, ptr %.sroa.091.0168200, align 4, !tbaa !175
  %i.jo = getelementptr i8, ptr %.sroa.091.0168200, i64 4
  %.val41 = load float, ptr %i.jo, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.086.0166, i64 8 ; 2 uses
  %.not161 = icmp eq ptr %i.jp, %i.jk
  br i1 %.not161, label %.critedge.loopexit, label %bb.z, !llvm.loop !666

bb.z:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.086.0166 = phi ptr [ %i.jn, %.lr.ph ], [ %i.jp, %bb.y ] ; 3 uses
  %.val42 = load float, ptr %.sroa.086.0166, align 4, !tbaa !175
  %i.jq = getelementptr i8, ptr %.sroa.086.0166, i64 4
  %.val43 = load float, ptr %i.jq, align 4
  %i.jr = fcmp oeq float %.val, %.val42
  %i.js = fcmp oeq float %.val41, %.val43
  %i.jt = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %i.jt, label %.loopexit, label %bb.y

.loopexit:                                        ; preds = %.critedge.loopexit, %bb.z, %bb.x
  %.237 = phi i32 [ %.6.lcssa, %bb.x ], [ -1, %bb.z ], [ %.6.lcssa, %.critedge.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !239
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ji to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jy) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.loopexit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.ac

bb.ab:                                            ; preds = %bb.t, %bb.i
  %.pn = phi { ptr, i32 } [ %lpad.phi214, %bb.t ], [ %lpad.phi, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %.pn

bb.ac:                                            ; preds = %bb.a, %bb.b, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %.338 = phi i32 [ %.237, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.338
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board15validateContourEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.34", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZNK2cv7details10Chessboard5Board10getContourEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.34") align 8 %1, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = load ptr, ptr %1, align 8, !tbaa !233    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.f, 32
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr i8, ptr %i.c, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load <4 x float>, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %.val30 = load float, ptr %i.g, align 4, !tbaa !176
  %i.l = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %.val24 = load float, ptr %i.i, align 4, !tbaa !176
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.n = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.p = fsub <2 x float> %i.n, %i.o
  %i.q = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.r = shufflevector <2 x float> %i.q, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.t = fsub <2 x float> %i.r, %i.s
  %i.u = fpext <2 x float> %i.p to <2 x double>   ; 3 uses
  %i.v = fpext <2 x float> %i.t to <2 x double>   ; 3 uses
  %i.w = fmul <2 x double> %i.v, %i.v
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.u, <2 x double> %i.w)
  %i.y = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.x) ; 2 uses
  %i.z = fdiv <2 x double> %i.u, %i.y             ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  %i.ab = fptrunc double %i.aa to float           ; 2 uses
  %i.ac = extractelement <2 x double> %i.z, i64 1
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  %i.ae = fdiv <2 x double> %i.v, %i.y
  %i.af = fptrunc <2 x double> %i.ae to <2 x float> ; 2 uses
  %i.ag = load <2 x float>, ptr %i.j, align 4, !tbaa !10 ; 2 uses
  %i.ah = insertelement <2 x float> %i.l, float %.val24, i64 1
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 3 uses
  %i.ak = insertelement <2 x float> %i.o, float %.val30, i64 1
  %i.al = fsub <2 x float> %i.ak, %i.ag
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 3 uses
  %i.an = shufflevector <2 x double> %i.aj, <2 x double> %i.am, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ao = fmul <2 x double> %i.an, %i.an
  %i.ap = shufflevector <2 x double> %i.aj, <2 x double> %i.am, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.ap, <2 x double> %i.ao)
  %i.ar = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aq) ; 2 uses
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x double> %i.aj, %i.as          ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = fptrunc double %i.au to float           ; 2 uses
  %i.aw = extractelement <2 x double> %i.at, i64 1
  %i.ax = fptrunc double %i.aw to float           ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fdiv <2 x double> %i.am, %i.ay          ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = fptrunc double %i.ba to float           ; 2 uses
  %i.bc = extractelement <2 x double> %i.az, i64 1
  %i.bd = fptrunc double %i.bc to float           ; 2 uses
  %i.be = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.bf = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.bg = fmul float %i.be, %i.bf
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.ad, float %i.bg)
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  %i.bj = fcmp ogt float %i.bi, f0x3F51B3F3
  br i1 %i.bj, label %.thread, label %bb.c

end_hunk_2
