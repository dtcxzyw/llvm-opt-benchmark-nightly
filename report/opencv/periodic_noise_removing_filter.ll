inline.NumInlined: 299
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z7calcPSDRKN2cv3MatERS0_i:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.bi, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !50
  store ptr %13, ptr %i.bh, align 8, !tbaa !52
  invoke void @_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %17, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.bj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.p unwind label %bb.ab      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ai, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store <2 x double> splat (double 1.000000e+00), ptr %21, align 16, !tbaa !57, !alias.scope !82
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bk, align 16, !tbaa !57, !alias.scope !82
  invoke void @_ZN2cvplERKNS_3MatERKNS_7Scalar_IdEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %20, align 8, !tbaa !70   ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull align 8 dereferenceable(688) %20, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef -1)
          to label %bb.s unwind label %bb.ad, !inline_history !85

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bp) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %20, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bq) #15
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.br) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.bs = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.bt, align 4, !tbaa !49
  store i32 16842752, ptr %22, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %19, ptr %i.bu, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.bv = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.bw, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !50
  store ptr %19, ptr %i.bv, align 8, !tbaa !52
  invoke void @_ZN2cv3logERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.bx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.u unwind label %bb.ag      ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.ai

bb.v:                                             ; preds = %bb.b, %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit68

.loopexit.loopexit68:                             ; preds = %.body56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ah, %.body56 ], [ %i.by, %bb.v ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  br label %.loopexit

bb.w:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.loopexit.loopexit

bb.x:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.loopexit.loopexit

bb.y:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.z:                                             ; preds = %_ZN2cv3Mat2atIfEERT_i.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.aj

bb.aa:                                            ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.aj

bb.ab:                                            ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ac:                                            ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %20) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn44 = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %i.cf, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.ah

bb.af:                                            ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.ah

bb.ag:                                            ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn49 = phi { ptr, i32 } [ %i.ci, %bb.ag ], [ %i.ch, %bb.af ], [ %.pn44, %bb.ae ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.aj

bb.ai:                                            ; preds = %bb.u, %bb.p
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cj) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.aj:                                            ; preds = %bb.ah, %bb.ab, %bb.aa, %bb.z
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.ah ], [ %i.ce, %bb.ab ], [ %i.cd, %bb.aa ], [ %i.cc, %bb.z ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.aj, %bb.y, %bb.x, %bb.w
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.aj ], [ %i.cb, %bb.y ], [ %i.ca, %bb.x ], [ %i.bz, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ck) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit68, %.loopexit.loopexit, %.thread64
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %.loopexit.loopexit ], [ %i.e, %.thread64 ], [ %.pn, %.loopexit.loopexit68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn49.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z8fftshiftRKN2cv3MatERS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %4 = alloca %"class.cv::Rect_", align 16        ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Rect_", align 16        ; 5 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %8 = alloca %"class.cv::Rect_", align 16        ; 5 uses
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
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !56
  %i.d = sdiv <2 x i32> %i.c, splat (i32 2)       ; 2 uses
  %i.e = shufflevector <2 x i32> %i.d, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %18 = shufflevector <2 x i32> %i.d, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %19 = shufflevector <4 x i32> %18, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  store <4 x i32> %19, ptr %4, align 16, !tbaa !56
  call void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %20 = shufflevector <4 x i32> %18, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 0>
  store <4 x i32> %20, ptr %6, align 16, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %21 = shufflevector <4 x i32> %18, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  store <4 x i32> %21, ptr %8, align 16, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store <4 x i32> %i.e, ptr %10, align 16, !tbaa !56
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
  store i32 33619968, ptr %12, align 8, !tbaa !50
  store ptr %11, ptr %i.f, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !50
  store ptr %3, ptr %i.h, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !50
  store ptr %9, ptr %i.j, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.m, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !50
  store ptr %11, ptr %i.l, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !50
  store ptr %5, ptr %i.n, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !50
  store ptr %7, ptr %i.p, align 8, !tbaa !52
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

declare void @_ZN2cv9normalizeERKNS_11_InputArrayERKNS_17_InputOutputArrayEddiiS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #5

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_Z17synthesizeFilterHRN2cv3MatENS_6Point_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %4 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %5 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %6 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %8 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %10 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %.sroa.018.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.6.0.extract.shift = lshr i64 %1, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  %.sroa.6.0.insert.shift23 = and i64 %1, -4294967296
  %.sroa.018.0.insert.ext19 = and i64 %1, 4294967295
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %i.c = sub nsw i32 %i.b, %.sroa.6.0.extract.trunc
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  %i.f = sub nsw i32 %i.e, %.sroa.018.0.extract.trunc
  %.sroa.4.0.insert.ext = zext i32 %i.c to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32 ; 2 uses
  %.sroa.0.0.insert.ext = zext i32 %i.f to i64    ; 2 uses
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %3, align 8, !tbaa !50
  store ptr %0, ptr %i.g, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.j, align 8
  store i32 50397184, ptr %5, align 8, !tbaa !50
  store ptr %0, ptr %i.i, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.sroa.07.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.018.0.insert.ext19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %.sroa.07.0.insert.insert, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 50397184, ptr %7, align 8, !tbaa !50
  store ptr %0, ptr %i.k, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %.sroa.06.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift23, %.sroa.0.0.insert.ext
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %.sroa.06.0.insert.insert, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.n, align 8
  store i32 50397184, ptr %9, align 8, !tbaa !50
  store ptr %0, ptr %i.m, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %.sroa.0.0.insert.insert, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z12filter2DFreqRKN2cv3MatERS0_S2_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca [2 x %"class.cv::Mat"], align 16    ; 13 uses
  %8 = alloca %"class.cv::Mat_", align 8          ; 12 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca [2 x %"class.cv::Mat"], align 16   ; 11 uses
  %16 = alloca %"class.cv::Mat_", align 8         ; 13 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #15
  %i.a = load i32, ptr %8, align 8, !tbaa !62
  %i.b = and i32 %i.a, -4096
  %i.c = or disjoint i32 %i.b, 5
  store i32 %i.c, ptr %8, align 8, !tbaa !62
  %i.d = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %_ZN2cv4Mat_IfEC2EONS_3MatE.exit unwind label %.thread91 ; 0 uses

.thread91:                                        ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

_ZN2cv4Mat_IfEC2EONS_3MatE.exit:                  ; preds = %bb.a
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8) #15
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !69   ; 6 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !17
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.loopexit.loopexit105

bb.e:                                             ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit
  %i.p = icmp sgt i32 %i.h, 0
  br i1 %i.p, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.q = icmp eq i32 %i.h, 0
  %i.r = zext i1 %i.q to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.t = icmp eq i32 %i.h, 2
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56   ; 2 uses
  %.not.i = icmp eq i32 %i.h, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.s, align 4, !tbaa !56
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.y = phi i32 [ %i.r, %.thread.i ], [ %i.w, %bb.f ]
  %i.z = icmp sgt i32 %i.h, -1
  %i.aa = zext i1 %i.z to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i32 [ %i.w, %bb.g ], [ %i.y, %bb.h ]
  %i.ac = phi i32 [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ac to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
          to label %bb.j unwind label %bb.ad

bb.j:                                             ; preds = %bb.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #15
  %i.ad = load ptr, ptr %10, align 8, !tbaa !70, !noalias !88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.f, i32 noundef -1)
          to label %bb.k unwind label %.body68

.body68:                                          ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #15
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #15
  br label %.loopexit.loopexit105

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ai) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aj) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ak) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.am, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !50
  store ptr %11, ptr %i.al, align 8, !tbaa !52
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %7, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.l unwind label %bb.ae

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.ao, align 4, !tbaa !49
  store i32 16842752, ptr %13, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.ap, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.ar, align 8
  store i32 33619968, ptr %14, align 8, !tbaa !50
  store ptr %11, ptr %i.aq, align 8, !tbaa !52
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef 2, i32 noundef 0)
          to label %bb.m unwind label %bb.af

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %17, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.n unwind label %.thread94

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #15
  %i.as = load i32, ptr %16, align 8, !tbaa !62
  %i.at = and i32 %i.as, -4096
  %i.au = or disjoint i32 %i.at, 5
  store i32 %i.au, ptr %16, align 8, !tbaa !62
  %i.av = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %_ZN2cv4Mat_IfEC2EONS_3MatE.exit72 unwind label %.thread98 ; 0 uses

.thread98:                                        ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %.loopexit101

_ZN2cv4Mat_IfEC2EONS_3MatE.exit72:                ; preds = %bb.n
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %16) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !69 ; 6 uses
  %i.ba = icmp slt i32 %i.az, 3
  br i1 %i.ba, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc82 unwind label %bb.ag

.noexc82:                                         ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #14
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc82
  unreachable

bb.q:                                             ; preds = %.noexc82
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73: ; preds = %bb.q
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i74: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.loopexit101.loopexit104

bb.r:                                             ; preds = %_ZN2cv4Mat_IfEC2EONS_3MatE.exit72
  %i.bh = icmp sgt i32 %i.az, 0
  br i1 %i.bh, label %bb.s, label %.thread.i76

.thread.i76:                                      ; preds = %bb.r
  %i.bi = icmp eq i32 %i.az, 0
  %i.bj = zext i1 %i.bi to i32
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.bl = icmp eq i32 %i.az, 2
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56 ; 2 uses
  %.not.i81 = icmp eq i32 %i.az, 1
  br i1 %.not.i81, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr %i.bk, align 4, !tbaa !56
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.thread.i76
  %i.bq = phi i32 [ %i.bj, %.thread.i76 ], [ %i.bo, %bb.s ]
  %i.br = icmp sgt i32 %i.az, -1
  %i.bs = zext i1 %i.br to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bt = phi i32 [ %i.bo, %bb.t ], [ %i.bq, %bb.u ]
  %i.bu = phi i32 [ %i.bp, %bb.t ], [ %i.bs, %bb.u ]
  %.sroa.2.0.insert.ext.i77 = zext i32 %i.bu to i64
  %.sroa.2.0.insert.shift.i78 = shl nuw i64 %.sroa.2.0.insert.ext.i77, 32
  %.sroa.0.0.insert.ext.i79 = zext i32 %i.bt to i64
  %.sroa.0.0.insert.insert.i80 = or disjoint i64 %.sroa.2.0.insert.shift.i78, %.sroa.0.0.insert.ext.i79
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, i64 %.sroa.0.0.insert.insert.i80, i32 noundef 5)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ax) #15
  %i.bv = load ptr, ptr %18, align 8, !tbaa !70, !noalias !91 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.ax, i32 noundef -1)
          to label %bb.x unwind label %.body86

.body86:                                          ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ax) #15
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #15
  br label %.loopexit101.loopexit104

bb.x:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ca) #15
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cb) #15
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.cd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.ce, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !50
  store ptr %19, ptr %i.cd, align 8, !tbaa !52
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %15, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %21) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 0, ptr %i.cf, align 8, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 0, ptr %i.cg, align 4, !tbaa !49
  store i32 16842752, ptr %22, align 8, !tbaa !50
  %i.ch = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %11, ptr %i.ch, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.ci = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.ci, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.cj, align 4, !tbaa !49
  store i32 16842752, ptr %23, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %19, ptr %i.ck, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.cl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.cm, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !50
  store ptr %21, ptr %i.cl, align 8, !tbaa !52
  invoke void @_ZN2cv12mulSpectrumsERKNS_11_InputArrayES2_RKNS_12_OutputArrayEib(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 0, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.cn, align 8, !tbaa !47
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !49
  store i32 16842752, ptr %25, align 8, !tbaa !50
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %21, ptr %i.cp, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.cq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.cr, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !50
  store ptr %21, ptr %i.cq, align 8, !tbaa !52
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

declare noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv17CommandLineParserD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #5

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

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv12mulSpectrumsERKNS_11_InputArrayES2_RKNS_12_OutputArrayEib(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN2cv4idftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cvplERKNS_3MatERKNS_7Scalar_IdEE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN2cv3logERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

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
  %i.b = load i32, ptr %0, align 8, !tbaa !62
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !62
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !62     ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !94
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
  store i32 -2113863675, ptr %3, align 8, !tbaa !50
  store ptr %0, ptr %i.o, align 8, !tbaa !52
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_periodic_noise_removing_filter.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), ptr @_ZL4keysB5cxx11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 113, ptr %i.a, align 8, !tbaa !13
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL4keysB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.b, ptr @_ZL4keysB5cxx11, align 8, !tbaa !15
  %i.c = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(113) %i.b, ptr noundef nonnull align 1 dereferenceable(113) @.str, i64 113, i1 false)
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
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!21 = distinct !{!21, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !37, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !34, i64 216, !7, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!26 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !14, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!34 = !{!"p1 _ZTSSo", !12, i64 0}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!40 = !{!41, !7, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !35, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!44 = !{!"p1 int", !12, i64 0}
!45 = !{!"p1 short", !12, i64 0}
!46 = distinct !{null, null}
!47 = !{!48, !6, i64 0}
!48 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!49 = !{!48, !6, i64 4}
!50 = !{!51, !6, i64 0}
!51 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !12, i64 8, !48, i64 16}
!52 = !{!51, !12, i64 8}
!53 = !{!54, !6, i64 0}
!54 = !{!"_ZTSN2cv5Rect_IiEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!55 = !{!54, !6, i64 4}
!56 = !{!6, !6, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !7, i64 0}
!59 = !{!60, !44, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!61 = !{!60, !44, i64 16}
!62 = !{!63, !6, i64 0}
!63 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !64, i64 56, !65, i64 64, !66, i64 72, !68, i64 128}
!64 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!65 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!66 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !67, i64 4, !6, i64 8, !7, i64 12}
!67 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!68 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!69 = !{!66, !6, i64 0}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSN2cv7MatExprE", !72, i64 0, !6, i64 8, !63, i64 16, !63, i64 224, !63, i64 432, !58, i64 640, !58, i64 648, !73, i64 656}
!72 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!73 = !{!"_ZTSN2cv7Scalar_IdEE", !74, i64 0}
!74 = !{!"_ZTSN2cv3VecIdLi4EEE", !75, i64 0}
!75 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!78 = distinct !{!78, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!79 = !{!63, !11, i64 24}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !7, i64 0}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!84 = distinct !{!84, !"_ZN2cv7Scalar_IdE3allEd"}
!85 = distinct !{null}
!86 = !{!63, !6, i64 8}
!87 = !{!63, !6, i64 12}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!90 = distinct !{!90, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!93 = distinct !{!93, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!94 = !{!63, !6, i64 4}
end_hunk_0
