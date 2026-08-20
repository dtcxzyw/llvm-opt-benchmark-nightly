inline.NumInlined: 281
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z12filter2DFreqRKN2cv3MatERS0_S2_:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.cn, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !56
  store i32 16842752, ptr %25, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %21, ptr %i.cp, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.cq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.cr, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !51
  store ptr %21, ptr %i.cq, align 8, !tbaa !54
  invoke void @_ZN2cv4idftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 0, i32 noundef 0)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull %7)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.cs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.ac unwind label %bb.ak     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ct) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cu) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret void

bb.ad:                                            ; preds = %bb.b, %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit105

.loopexit.loopexit105:                            ; preds = %.body68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ah, %.body68 ], [ %i.cv, %bb.ad ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %.loopexit

bb.ae:                                            ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.loopexit.loopexit

bb.af:                                            ; preds = %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.loopexit.loopexit

.thread94:                                        ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %.loopexit101

bb.ag:                                            ; preds = %bb.o, %bb.v
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit101.loopexit104

.loopexit101.loopexit104:                         ; preds = %.body86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i74, %bb.ag
  %.pn47 = phi { ptr, i32 } [ %i.bz, %.body86 ], [ %i.cz, %bb.ag ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  br label %.loopexit101

bb.ah:                                            ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %.loopexit101.loopexit

bb.ai:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.al

bb.aj:                                            ; preds = %bb.z
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab, %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pn60 = phi { ptr, i32 } [ %i.dd, %bb.ak ], [ %i.dc, %bb.aj ], [ %i.db, %bb.ai ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %.loopexit101.loopexit

.loopexit101.loopexit:                            ; preds = %bb.al, %bb.ah
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.al ], [ %i.da, %bb.ah ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.de) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  br label %.loopexit101

.loopexit101:                                     ; preds = %.loopexit101.loopexit104, %.loopexit101.loopexit, %.thread98, %.thread94
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.cy, %.thread94 ], [ %i.aw, %.thread98 ], [ %.pn60.pn, %.loopexit101.loopexit ], [ %.pn47, %.loopexit101.loopexit104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit101, %bb.af, %bb.ae
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn, %.loopexit101 ], [ %i.cx, %bb.af ], [ %i.cw, %bb.ae ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.df) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit105, %.loopexit.loopexit, %.thread91
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %.loopexit.loopexit ], [ %i.e, %.thread91 ], [ %.pn, %.loopexit.loopexit105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @_ZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #5

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind writable sret(%"class.cv::Scalar_") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cvdvERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z8fftshiftRKN2cv3MatERS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::Rect_", align 4         ; 6 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %10 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.a = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !19
  %i.d = sdiv <2 x i32> %i.c, splat (i32 2)       ; 4 uses
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !tbaa !48
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %18, align 4, !tbaa !50
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %20 = extractelement <2 x i32> %i.d, i64 1
  %21 = shufflevector <4 x i32> %i.e, <4 x i32> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store <2 x i32> %21, ptr %19, align 4, !tbaa !19
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 %20, ptr %6, align 4, !tbaa !48
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %22, align 4, !tbaa !50
  %23 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x i32> %21, ptr %23, align 4, !tbaa !19
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !tbaa !48
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %25 = extractelement <2 x i32> %i.d, i64 0
  store <2 x i32> %i.d, ptr %24, align 4, !tbaa !19
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %25, ptr %26, align 4, !tbaa !87
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store <4 x i32> %i.e, ptr %10, align 16, !tbaa !19
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !51
  store ptr %11, ptr %i.f, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !51
  store ptr %3, ptr %i.h, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !51
  store ptr %9, ptr %i.j, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !51
  store ptr %11, ptr %i.l, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !51
  store ptr %5, ptr %i.n, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !51
  store ptr %7, ptr %i.p, align 8, !tbaa !54
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.l:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.z

bb.m:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.y

bb.n:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.x

bb.o:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.w

bb.p:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.v

bb.q:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.v

bb.r:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.v

bb.s:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.v

bb.t:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.v

bb.u:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.pn41.pn = phi { ptr, i32 } [ %i.aa, %bb.u ], [ %i.z, %bb.t ], [ %i.y, %bb.s ], [ %i.x, %bb.r ], [ %i.w, %bb.q ], [ %i.v, %bb.p ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %bb.v ], [ %i.u, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.n
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn, %bb.w ], [ %i.t, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn, %bb.x ], [ %i.s, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.l
  %.pn41.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn41.pn.pn.pn.pn, %bb.y ], [ %i.r, %bb.l ]
  resume { ptr, i32 } %.pn41.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv12mulSpectrumsERKNS_11_InputArrayES2_RKNS_12_OutputArrayEib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN2cv4idftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv3absERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #5

declare void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNK2cv17CommandLineParser9getByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbNS_5ParamEPv(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !76
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !76
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !88
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !51
  store ptr %0, ptr %i.o, align 8, !tbaa !54
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_out_of_focus_deblur_filter.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), ptr @_ZL4keysB5cxx11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 214, ptr %i.a, align 8, !tbaa !13
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL4keysB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.b, ptr @_ZL4keysB5cxx11, align 8, !tbaa !15
  %i.c = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(214) %i.b, ptr noundef nonnull align 1 dereferenceable(214) @.str, i64 214, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 8), align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  store i8 0, ptr %i.d, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL4keysB5cxx11, ptr nonnull @__dso_handle) #15 ; 0 uses
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !11, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !14, i64 8, !7, i64 16}
!17 = !{!7, !7, i64 0}
!18 = !{!16, !14, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!22 = distinct !{!22, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !38, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !35, i64 216, !7, i64 224, !36, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!27 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !14, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!35 = !{!"p1 _ZTSSo", !12, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!41 = !{!42, !7, i64 56}
!42 = !{!"_ZTSSt5ctypeIcE", !43, i64 0, !44, i64 16, !36, i64 24, !45, i64 32, !45, i64 40, !46, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!43 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!44 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!45 = !{!"p1 int", !12, i64 0}
!46 = !{!"p1 short", !12, i64 0}
!47 = distinct !{null, null}
!48 = !{!49, !6, i64 0}
!49 = !{!"_ZTSN2cv5Rect_IiEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!50 = !{!49, !6, i64 4}
!51 = !{!52, !6, i64 0}
!52 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !12, i64 8, !53, i64 16}
!53 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!54 = !{!52, !12, i64 8}
!55 = !{!53, !6, i64 0}
!56 = !{!53, !6, i64 4}
!57 = !{!58, !45, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!59 = !{!58, !45, i64 16}
!60 = distinct !{null, null, null, null}
!61 = !{!62, !62, i64 0}
!62 = !{!"double", !7, i64 0}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN2cv7MatExprE", !65, i64 0, !6, i64 8, !66, i64 16, !66, i64 224, !66, i64 432, !62, i64 640, !62, i64 648, !72, i64 656}
!65 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!66 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !67, i64 56, !68, i64 64, !69, i64 72, !71, i64 128}
!67 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!68 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!69 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !70, i64 4, !6, i64 8, !7, i64 12}
!70 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!71 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!72 = !{!"_ZTSN2cv7Scalar_IdEE", !73, i64 0}
!73 = !{!"_ZTSN2cv3VecIdLi4EEE", !74, i64 0}
!74 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!75 = distinct !{null}
!76 = !{!66, !6, i64 0}
!77 = !{!69, !6, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!80 = distinct !{!80, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!83 = distinct !{!83, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!86 = distinct !{!86, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!87 = !{!49, !6, i64 12}
!88 = !{!66, !6, i64 4}
end_hunk_0
