Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/omnidir?download=true
inline.NumInlined: 4032
inline.NumDeleted: 559
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN2cv7omnidir8internal11findMedian3ERKNS_11_InputArrayE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  ret void

bb.v:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit34
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.body35, %bb.x
  %.pn21 = phi { ptr, i32 } [ %i.ad, %.body35 ], [ %i.au, %bb.x ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  br label %.body

.body:                                            ; preds = %bb.w, %bb.y, %bb.m
  %.pn21.pn.pn = phi { ptr, i32 } [ %i.y, %bb.m ], [ %.pn21, %bb.y ], [ %i.at, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #22
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.v
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %.body ], [ %i.as, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.al

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit37
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ab:                                            ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ac:                                            ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ad:                                            ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn26 = phi { ptr, i32 } [ %i.ba, %bb.af ], [ %i.az, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ag ], [ %i.ay, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.ah ], [ %i.ax, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ab
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ai ], [ %i.aw, %bb.ab ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.aa
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn, %bb.aj ], [ %i.av, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.z
  %.pn26.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn, %bb.ak ], [ %.pn21.pn.pn.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn.pn, %bb.al ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal15computeJacobianERKNS_11_InputArrayES4_S4_RNS_3MatES6_id(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %5, double noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::Range", align 4         ; 5 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %10 = alloca %"class.cv::Range", align 4        ; 5 uses
  %11 = alloca %"class.cv::Range", align 8        ; 4 uses
  %12 = alloca %"class.cv::Range", align 4        ; 5 uses
  %13 = alloca %"class.cv::Range", align 8        ; 4 uses
  %14 = alloca %"class.cv::Range", align 4        ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %20 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %21 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %25 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %27 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::Matx.8", align 8       ; 11 uses
  %30 = alloca %"class.cv::Matx.20", align 16     ; 6 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %36 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %44 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %45 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %50 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %51 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %52 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %53 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %54 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %55 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %56 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %57 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %58 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %59 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %60 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %61 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %62 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %63 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %64 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %65 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %66 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %67 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %68 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %69 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %70 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %71 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %72 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %73 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %74 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %75 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %76 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %77 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %78 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %79 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %80 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %81 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %82 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %83 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %84 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %85 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %86 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %87 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %88 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %89 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %90 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %91 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %92 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %93 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %94 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %95 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %96 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %97 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %98 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %99 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %100 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %101 = alloca %"class.cv::Mat", align 8         ; 8 uses
  %102 = alloca %"class.cv::MatExpr", align 8     ; 10 uses
  %103 = alloca %"class.cv::Scalar_", align 8     ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.c = icmp eq i32 %i.b, 70
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal15computeJacobianERKNS_11_InputArrayES4_S4_RNS_3MatES6_id, ptr noundef nonnull @.str.1, i32 noundef 855) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %15, align 8, !tbaa !25    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn263 = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.gy

bb.h:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.m = icmp eq i32 %i.l, 38
  br i1 %i.m, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal15computeJacobianERKNS_11_InputArrayES4_S4_RNS_3MatES6_id, ptr noundef nonnull @.str.1, i32 noundef 856) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

bb.n:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %17, align 8, !tbaa !25    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %bb.n
  %i.s = load i64, ptr %i.q, align 8, !tbaa !26
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %bb.m
  %.pn261 = phi { ptr, i32 } [ %i.n, %bb.m ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %i.o, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.gy

bb.o:                                             ; preds = %bb.i
  %i.u = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.v = trunc i64 %i.u to i32                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.w = mul nsw i32 %i.v, 6                      ; 6 uses
  %i.x = add nsw i32 %i.w, 10                     ; 8 uses
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %20, i32 noundef %i.x, i32 noundef %i.x, i32 noundef 6)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %19) #22
  %i.y = load ptr, ptr %20, align 8, !tbaa !54, !noalias !579 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(688) %20, ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gx

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ad) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %20, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ae) #22
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.af) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, i32 noundef %i.x, i32 noundef %i.x, i32 noundef 6)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ag = load ptr, ptr %21, align 8, !tbaa !54   ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.s, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ak) #22
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.al) #22
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %22, i32 noundef %i.x, i32 noundef 1, i32 noundef 6)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.an = load ptr, ptr %22, align 8, !tbaa !54   ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(688) %22, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit269 unwind label %bb.v, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit269:              ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ar) #22
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.as) #22
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.au = icmp sgt i32 %i.v, 0                    ; 2 uses
  br i1 %i.au, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.av = shl nsw i32 %i.bd, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2cv3MataSERKNS_7MatExprE.exit269
  %.082.lcssa = phi i32 [ 0, %_ZN2cv3MataSERKNS_7MatExprE.exit269 ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %25, i32 noundef %.082.lcssa, i32 noundef %i.x, i32 noundef 6)
          to label %bb.ab unwind label %bb.ag

bb.r:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.s ], [ %i.aw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.gw

bb.u:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %22) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn164 = phi { ptr, i32 } [ %i.az, %bb.v ], [ %i.ay, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.gw

.lr.ph:                                           ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit269, %bb.x
  %.081359 = phi i32 [ %i.be, %bb.x ], [ 0, %_ZN2cv3MataSERKNS_7MatExprE.exit269 ] ; 2 uses
  %.082358 = phi i32 [ %i.bd, %bb.x ], [ 0, %_ZN2cv3MataSERKNS_7MatExprE.exit269 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ba = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.y     ; 0 uses

.noexc:                                           ; preds = %.lr.ph
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.081359)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.y

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %.noexc
  %i.bb = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nsw i32 %.082358, %i.bc             ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.be = add nuw nsw i32 %.081359, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.v
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !549

bb.y:                                             ; preds = %.noexc, %.lr.ph
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn256 = phi { ptr, i32 } [ %i.bg, %bb.z ], [ %i.bf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.gw

bb.ab:                                            ; preds = %._crit_edge
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #22
  %i.bh = load ptr, ptr %25, align 8, !tbaa !54, !noalias !580 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(688) %25, ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit273 unwind label %.body271

.body271:                                         ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %25) #22
  br label %bb.ah

_ZNK2cv7MatExprcvNS_3MatEEv.exit273:              ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %25, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bn) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bo) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %27, i32 noundef %.082.lcssa, i32 noundef %i.x, i32 noundef 6)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit273
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #22
  %i.bp = load ptr, ptr %27, align 8, !tbaa !54, !noalias !581 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(688) %27, ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit276 unwind label %.body274

.body274:                                         ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %27) #22
  br label %bb.aj

_ZNK2cv7MatExprcvNS_3MatEEv.exit276:              ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %27, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bu) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %27, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #22
  %i.bw = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.bx = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc277 unwind label %bb.ak

.noexc277:                                        ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit276
  %i.by = icmp eq i32 %i.bx, 65536
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc277
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18, !noalias !582
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %i.ca)
          to label %_ZNK2cv11_InputArray6getMatEi.exit280 unwind label %bb.ak

bb.ae:                                            ; preds = %.noexc277
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit280 unwind label %bb.ak

_ZNK2cv11_InputArray6getMatEi.exit280:            ; preds = %bb.ad, %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !33
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.cd = sext i32 %i.w to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cd ; 7 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20
  %i.cg = getelementptr i8, ptr %i.ce, i64 16
  %i.ch = getelementptr i8, ptr %i.ce, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !20
  %i.cj = getelementptr i8, ptr %i.ce, i64 32
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cm = load <2 x double>, ptr %i.cg, align 8, !tbaa !20
  store double %i.cf, ptr %29, align 8, !tbaa !20
  store <2 x double> %i.cm, ptr %i.cl, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %29, i64 24
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %29, i64 32
  store double %i.ci, ptr %i.co, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %29, i64 40
  store double %i.ck, ptr %i.cp, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %29, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.cs = getelementptr i8, ptr %i.ce, i64 48
  %i.ct = getelementptr i8, ptr %i.ce, i64 64
  %i.cu = load <2 x double>, ptr %i.cs, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.cw = load <2 x double>, ptr %i.ct, align 8, !tbaa !20
  store <2 x double> %i.cu, ptr %30, align 16, !tbaa !20
  store <2 x double> %i.cw, ptr %i.cv, align 16, !tbaa !20
  %i.cx = getelementptr i8, ptr %i.ce, i64 40
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !20
  br i1 %i.au, label %.lr.ph361, label %._crit_edge362

.lr.ph361:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit280
  %i.cz = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %31, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %47, i64 20
  %i.dm = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %49, i64 20
  %i.dr = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %55, i64 432
  %i.ec = getelementptr inbounds nuw i8, ptr %55, i64 224
  %i.ed = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %62, i64 432
  %i.em = getelementptr inbounds nuw i8, ptr %62, i64 224
  %i.en = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %65, i64 432
  %i.ep = getelementptr inbounds nuw i8, ptr %65, i64 224
  %i.eq = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %66, i64 432
  %i.es = getelementptr inbounds nuw i8, ptr %66, i64 224
  %i.et = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %72, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %72, i64 12
  %i.ex = getelementptr inbounds nuw i8, ptr %69, i64 432
  %i.ey = getelementptr inbounds nuw i8, ptr %69, i64 224
  %i.ez = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %70, i64 432
  %i.fb = getelementptr inbounds nuw i8, ptr %70, i64 224
  %i.fc = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %74, i64 432
  %i.fe = getelementptr inbounds nuw i8, ptr %74, i64 224
  %i.ff = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %75, i64 432
  %i.fh = getelementptr inbounds nuw i8, ptr %75, i64 224
  %i.fi = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %78, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %78, i64 12
  %i.fm = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %84, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %84, i64 12
  %i.fr = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %80, i64 432
  %i.fu = getelementptr inbounds nuw i8, ptr %80, i64 224
  %i.fv = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %81, i64 432
  %i.fx = getelementptr inbounds nuw i8, ptr %81, i64 224
  %i.fy = getelementptr inbounds nuw i8, ptr %81, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %85, i64 432
  %i.ga = getelementptr inbounds nuw i8, ptr %85, i64 224
  %i.gb = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %88, i64 432
  %i.gd = getelementptr inbounds nuw i8, ptr %88, i64 224
  %i.ge = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %89, i64 432
  %i.gg = getelementptr inbounds nuw i8, ptr %89, i64 224
  %i.gh = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %97, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %97, i64 12
  %i.gl = getelementptr inbounds nuw i8, ptr %93, i64 432
  %i.gm = getelementptr inbounds nuw i8, ptr %93, i64 224
  %i.gn = getelementptr inbounds nuw i8, ptr %93, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %94, i64 432
  %i.gp = getelementptr inbounds nuw i8, ptr %94, i64 224
  %i.gq = getelementptr inbounds nuw i8, ptr %94, i64 16
  %i.gr = insertelement <4 x i32> <i32 0, i32 poison, i32 1, i32 10>, i32 %i.w, i64 1 ; 2 uses
  %i.gs = insertelement <4 x i32> <i32 poison, i32 poison, i32 10, i32 10>, i32 %i.w, i64 0
  %i.gt = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  br label %bb.al

._crit_edge362:                                   ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit335, %_ZNK2cv11_InputArray6getMatEi.exit280
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #22
  %i.gu = sext i32 %i.x to i64                    ; 2 uses
  %i.gv = icmp slt i32 %i.v, -1
  br i1 %i.gv, label %bb.af, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a

bb.af:                                            ; preds = %._crit_edge362
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
          to label %.noexc281 unwind label %bb.gh

.noexc281:                                        ; preds = %bb.af
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a: ; preds = %._crit_edge362
  %i.gw = shl nuw nsw i64 %i.gu, 2                ; 3 uses
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #25
          to label %.noexc282 unwind label %bb.gh ; 6 uses

.noexc282:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a
  store ptr %i.gx, ptr %98, align 8, !tbaa !75
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 3 uses
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !76
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw ; 2 uses
  %i.hb = add nsw i64 %i.gw, -4                   ; 2 uses
  %i.hc = lshr exact i64 %i.hb, 2
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hb, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc282
  %n.vec = and i64 %i.hd, 9223372036854775800     ; 3 uses
  %i.he = shl i64 %n.vec, 2
  %i.hf = getelementptr i8, ptr %i.gx, i64 %i.he
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.gx, i64 %i.hg ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !60
  store <4 x i32> splat (i32 1), ptr %i.hh, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc282, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.gx, %.noexc282 ], [ %i.hf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.ha
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !557

bb.ag:                                            ; preds = %._crit_edge
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.body271, %bb.ag
  %.pn166 = phi { ptr, i32 } [ %i.bl, %.body271 ], [ %i.hk, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.gv

bb.ai:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit273
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.body274, %bb.ai
  %.pn168 = phi { ptr, i32 } [ %i.bt, %.body274 ], [ %i.hl, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.gu

bb.ak:                                            ; preds = %bb.ae, %bb.ad, %_ZNK2cv7MatExprcvNS_3MatEEv.exit276
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.gt

bb.al:                                            ; preds = %.lr.ph361, %_ZN2cv3MataSERKNS_7MatExprE.exit335
  %.0360 = phi i32 [ 0, %.lr.ph361 ], [ %i.ig, %_ZN2cv3MataSERKNS_7MatExprE.exit335 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.hn = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc283 unwind label %bb.ch ; 0 uses

.noexc283:                                        ; preds = %bb.al
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %.0360)
          to label %bb.am unwind label %bb.ch

bb.am:                                            ; preds = %.noexc283
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store i64 0, ptr %i.da, align 8
  store i32 33619968, ptr %36, align 8, !tbaa !17
  store ptr %31, ptr %i.cz, align 8, !tbaa !18
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.an unwind label %bb.ci

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.ho = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc286 unwind label %bb.ck ; 0 uses

.noexc286:                                        ; preds = %bb.an
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %37, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.0360)
          to label %bb.ao unwind label %bb.ck

bb.ao:                                            ; preds = %.noexc286
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  store i64 0, ptr %i.dc, align 8
  store i32 33619968, ptr %38, align 8, !tbaa !17
  store ptr %32, ptr %i.db, align 8, !tbaa !18
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.ap unwind label %bb.cl

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.hp = load i32, ptr %i.dd, align 8, !tbaa !44
  %i.hq = load i32, ptr %i.de, align 4, !tbaa !45
  %i.hr = mul nsw i32 %i.hq, %i.hp
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %39, ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef 3, i32 noundef %i.hr)
          to label %bb.aq unwind label %bb.cn

bb.aq:                                            ; preds = %bb.ap
  %i.hs = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr noundef nonnull align 8 dereferenceable(208) %39)
          to label %bb.ar unwind label %bb.co     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.ht = load i32, ptr %i.df, align 8, !tbaa !44
  %i.hu = load i32, ptr %i.dg, align 4, !tbaa !45
  %i.hv = mul nsw i32 %i.hu, %i.ht
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %40, ptr noundef nonnull align 8 dereferenceable(208) %32, i32 noundef 2, i32 noundef %i.hv)
          to label %bb.as unwind label %bb.cq

bb.as:                                            ; preds = %bb.ar
  %i.hw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %40)
          to label %bb.at unwind label %bb.cr     ; 0 uses

bb.at:                                            ; preds = %bb.as
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.hx = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc289 unwind label %bb.ct

.noexc289:                                        ; preds = %bb.at
  %i.hy = icmp eq i32 %i.hx, 65536
  br i1 %i.hy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc289
  %i.hz = load ptr, ptr %i.dh, align 8, !tbaa !18, !noalias !583
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %i.hz)
          to label %_ZNK2cv11_InputArray6getMatEi.exit292 unwind label %bb.ct

bb.av:                                            ; preds = %.noexc289
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit292 unwind label %bb.ct

_ZNK2cv11_InputArray6getMatEi.exit292:            ; preds = %bb.au, %bb.av
  %i.ia = mul nuw nsw i32 %.0360, 6               ; 7 uses
  %i.ib = add nuw nsw i32 %i.ia, 3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22, !noalias !584
  store i64 9223372034707292160, ptr %13, align 8, !noalias !584
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !584
  store i32 %i.ia, ptr %14, align 4, !tbaa !40, !noalias !584
  store i32 %i.ib, ptr %i.di, align 4, !tbaa !41, !noalias !584
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %bb.aw unwind label %bb.cu

bb.aw:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit292
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !584
  %i.ic = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(208) %41)
          to label %bb.ax unwind label %bb.cv     ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.id = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc294 unwind label %bb.cy

.noexc294:                                        ; preds = %bb.ax
  %i.ie = icmp eq i32 %i.id, 65536
  br i1 %i.ie, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc294
  %i.if = load ptr, ptr %i.dh, align 8, !tbaa !18, !noalias !585
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(208) %i.if)
          to label %_ZNK2cv11_InputArray6getMatEi.exit297 unwind label %bb.cy

bb.az:                                            ; preds = %.noexc294
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit297 unwind label %bb.cy

end_hunk_0
begin_hunk_1_@_ZN2cv7omnidir8internal15computeJacobianERKNS_11_InputArrayES4_S4_RNS_3MatES6_id:bb.a
bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn226.pn = phi { ptr, i32 } [ %i.lj, %bb.eq ], [ %i.li, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #22
  br label %.body321

.body321:                                         ; preds = %bb.bv, %bb.er
  %.pn226.pn.pn = phi { ptr, i32 } [ %.pn226.pn, %bb.er ], [ %i.jh, %bb.bv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %79) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %80) #22
  br label %bb.es

bb.es:                                            ; preds = %.body321, %bb.eo
  %.pn226.pn.pn.pn = phi { ptr, i32 } [ %.pn226.pn.pn, %.body321 ], [ %i.lh, %bb.eo ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %81) #22
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.en
  %.pn226.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn226.pn.pn.pn, %bb.es ], [ %i.lg, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  br label %bb.fq

bb.eu:                                            ; preds = %bb.bx
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ev:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit327
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ew:                                            ; preds = %bb.bz, %bb.by
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.ex:                                            ; preds = %bb.ca
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ey:                                            ; preds = %bb.cb
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ez:                                            ; preds = %bb.cc
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit329
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %91) #22
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.pn232 = phi { ptr, i32 } [ %i.lq, %bb.fa ], [ %i.lp, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %85) #22
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ey
  %.pn232.pn = phi { ptr, i32 } [ %.pn232, %bb.fb ], [ %i.lo, %bb.ey ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %88) #22
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ex
  %.pn232.pn.pn = phi { ptr, i32 } [ %.pn232.pn, %bb.fc ], [ %i.ln, %bb.ex ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %90) #22
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.ew
  %.pn232.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn, %bb.fd ], [ %i.lm, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %89) #22
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.ev
  %.pn232.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn, %bb.fe ], [ %i.ll, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #22
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.eu
  %.pn232.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn, %bb.ff ], [ %i.lk, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #22
  br label %bb.fq

bb.fh:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit331
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fi:                                            ; preds = %bb.ce, %bb.cd
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fj:                                            ; preds = %bb.cf
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fk:                                            ; preds = %bb.cg
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fl:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit333
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %96) #22
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pn239 = phi { ptr, i32 } [ %i.lv, %bb.fl ], [ %i.lu, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %93) #22
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fj
  %.pn239.pn = phi { ptr, i32 } [ %.pn239, %bb.fm ], [ %i.lt, %bb.fj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %95) #22
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fi
  %.pn239.pn.pn = phi { ptr, i32 } [ %.pn239.pn, %bb.fn ], [ %i.ls, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %94) #22
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fh
  %.pn239.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn, %bb.fo ], [ %i.lr, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #22
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fg, %bb.et, %bb.em
  %.pn239.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn, %bb.fp ], [ %.pn232.pn.pn.pn.pn.pn, %bb.fg ], [ %.pn226.pn.pn.pn.pn, %bb.et ], [ %.pn223.pn, %bb.em ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %73) #22
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.ej
  %.pn239.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn, %bb.fq ], [ %.pn220.pn, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.ef, %bb.dy, %bb.dn, %bb.dk
  %.pn239.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn, %bb.fr ], [ %.pn216.pn.pn, %bb.ef ], [ %.pn210.pn.pn.pn.pn, %bb.dy ], [ %.pn207.pn, %bb.dn ], [ %.pn204.pn, %bb.dk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %57) #22
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.dh
  %.pn239.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn, %bb.fs ], [ %i.kn, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #22
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.dg
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn, %bb.ft ], [ %i.km, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #22
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.df
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fu ], [ %.pn202, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.dd
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %i.kk, %bb.dd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.dc, %bb.cx, %bb.cs, %bb.cp, %bb.cm, %bb.cj
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fw ], [ %.pn191.pn, %bb.dc ], [ %.pn188.pn, %bb.cx ], [ %.pn186, %bb.cs ], [ %.pn184, %bb.cp ], [ %.pn181.pn, %bb.cm ], [ %.pn178.pn, %bb.cj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.gs

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.lw = getelementptr inbounds nuw i8, ptr %98, i64 8
  store ptr %i.ha, ptr %i.lw, align 8, !tbaa !84
  invoke void @_ZN2cv7omnidir8internal9flags2idxEiRSt6vectorIiSaIiEEi(i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %98, i32 noundef %i.v)
          to label %bb.fy unwind label %bb.gi

bb.fy:                                            ; preds = %.loopexit
  invoke void @_ZN2cv7omnidir8internal9subMatrixERKNS_3MatERS2_RKSt6vectorIiSaIiEESA_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(24) %98)
          to label %bb.fz unwind label %bb.gi

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #22
  %i.lx = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #25
          to label %.noexc341 unwind label %bb.gj ; 3 uses

.noexc341:                                        ; preds = %bb.fz
  store ptr %i.lx, ptr %99, align 8, !tbaa !75
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 3 uses
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !76
  store i32 1, ptr %i.lx, align 4, !tbaa !60
  %i.ma = getelementptr inbounds nuw i8, ptr %99, i64 8
  store ptr %i.ly, ptr %i.ma, align 8, !tbaa !84
  invoke void @_ZN2cv7omnidir8internal9subMatrixERKNS_3MatERS2_RKSt6vectorIiSaIiEESA_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %99, ptr noundef nonnull align 8 dereferenceable(24) %98)
          to label %bb.ga unwind label %bb.gk

bb.ga:                                            ; preds = %.noexc341
  %i.mb = load ptr, ptr %99, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.mc = load ptr, ptr %i.lz, align 8, !tbaa !76
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.mb to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.mf) #24
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #22
  store double %6, ptr %103, align 8, !tbaa !20
  %i.mg = getelementptr inbounds nuw i8, ptr %103, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mg, i8 0, i64 24, i1 false)
  invoke void @_ZN2cvplERKNS_3MatERKNS_7Scalar_IdEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %102, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(32) %103)
          to label %bb.gd unwind label %bb.gm

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %101) #22
  %i.mh = load ptr, ptr %102, align 8, !tbaa !54, !noalias !592 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !56
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8
  invoke void %i.mk(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, ptr noundef nonnull align 8 dereferenceable(688) %102, ptr noundef nonnull align 8 dereferenceable(208) %101, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit345 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body343

_ZNK2cv7MatExprcvNS_3MatEEv.exit345:              ; preds = %bb.gd
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %100, ptr noundef nonnull align 8 dereferenceable(208) %101, i32 noundef 0)
          to label %bb.gf unwind label %bb.gn

bb.gf:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit345
  %i.mm = load ptr, ptr %100, align 8, !tbaa !54  ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !56
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  invoke void %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.mm, ptr noundef nonnull align 8 dereferenceable(688) %100, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit347 unwind label %bb.go, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit347:              ; preds = %bb.gf
  %i.mq = getelementptr inbounds nuw i8, ptr %100, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mq) #22
  %i.mr = getelementptr inbounds nuw i8, ptr %100, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mr) #22
  %i.ms = getelementptr inbounds nuw i8, ptr %100, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ms) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %101) #22
  %i.mt = getelementptr inbounds nuw i8, ptr %102, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mt) #22
  %i.mu = getelementptr inbounds nuw i8, ptr %102, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mu) #22
  %i.mv = getelementptr inbounds nuw i8, ptr %102, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.mv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  %i.mw = load ptr, ptr %98, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i348 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i348, label %_ZNSt6vectorIiSaIiEED2Ev.exit349, label %bb.gg

bb.gg:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit347
  %i.mx = load ptr, ptr %i.gz, align 8, !tbaa !76
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mw to i64
  %i.na = sub i64 %i.my, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.na) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit349

_ZNSt6vectorIiSaIiEED2Ev.exit349:                 ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit347, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  ret void

bb.gh:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a, %bb.af
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit353

bb.gi:                                            ; preds = %bb.fy, %.loopexit
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gj:                                            ; preds = %bb.fz
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit351

bb.gk:                                            ; preds = %.noexc341
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %99, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i350 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i350, label %_ZNSt6vectorIiSaIiEED2Ev.exit351, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ng = load ptr, ptr %i.lz, align 8, !tbaa !76
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.nf to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit351

_ZNSt6vectorIiSaIiEED2Ev.exit351:                 ; preds = %bb.gl, %bb.gk, %bb.gj
  %.pn170 = phi { ptr, i32 } [ %i.nd, %bb.gj ], [ %i.ne, %bb.gk ], [ %i.ne, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #22
  br label %bb.gq

bb.gm:                                            ; preds = %bb.gc
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gn:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit345
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body343

bb.go:                                            ; preds = %bb.gf
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %100) #22
  br label %.body343

.body343:                                         ; preds = %bb.gn, %bb.go, %bb.ge
  %.pn172.pn = phi { ptr, i32 } [ %i.ml, %bb.ge ], [ %i.nm, %bb.go ], [ %i.nl, %bb.gn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %101) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %102) #22
  br label %bb.gp

bb.gp:                                            ; preds = %.body343, %bb.gm
  %.pn172.pn.pn = phi { ptr, i32 } [ %.pn172.pn, %.body343 ], [ %i.nk, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #22
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %_ZNSt6vectorIiSaIiEED2Ev.exit351, %bb.gi
  %.pn172.pn.pn.pn = phi { ptr, i32 } [ %.pn172.pn.pn, %bb.gp ], [ %.pn170, %_ZNSt6vectorIiSaIiEED2Ev.exit351 ], [ %i.nc, %bb.gi ] ; 2 uses
  %i.nn = load ptr, ptr %98, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i352 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i352, label %_ZNSt6vectorIiSaIiEED2Ev.exit353, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.no = load ptr, ptr %i.gz, align 8, !tbaa !76
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nn to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef %i.nr) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit353

_ZNSt6vectorIiSaIiEED2Ev.exit353:                 ; preds = %bb.gr, %bb.gq, %bb.gh
  %.pn172.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nb, %bb.gh ], [ %.pn172.pn.pn.pn, %bb.gq ], [ %.pn172.pn.pn.pn, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #22
  br label %bb.gs

bb.gs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit353, %bb.fx
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %.pn172.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit353 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.ak
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gs ], [ %i.hm, %bb.ak ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.aj
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gt ], [ %.pn168, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.ah
  %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gu ], [ %.pn166, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.gw

bb.gw:                                            ; preds = %bb.aa, %bb.gv, %bb.w, %bb.t
  %.pn256.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %.pn164, %bb.w ], [ %.pn256, %bb.aa ], [ %.pn239.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.body
  %.pn256.pn.pn.pn = phi { ptr, i32 } [ %.pn256.pn.pn, %bb.gw ], [ %i.ac, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn263.pn = phi { ptr, i32 } [ %.pn263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn256.pn.pn.pn, %bb.gx ]
  resume { ptr, i32 } %.pn263.pn
}

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cvmiERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cvplERKNS_3MatERKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal9flags2idxEiRSt6vectorIiSaIiEEi(i32 noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul nsw i32 %2, 6                        ; 9 uses
  %i.b = icmp slt i32 %2, -1
  br i1 %i.b, label %.noexc, label %.noexc41

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
  unreachable

.noexc41:                                         ; preds = %bb.a
  %3 = add nsw i32 %i.a, 10
  %4 = sext i32 %3 to i64                         ; 2 uses
  %i.c = shl nuw nsw i64 %4, 2                    ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c ; 2 uses
  %i.f = add nsw i64 %i.c, -4                     ; 2 uses
  %i.g = lshr exact i64 %i.f, 2
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc41
  %n.vec = and i64 %i.h, 9223372036854775800      ; 3 uses
  %i.i = shl i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !60
  store <4 x i32> splat (i32 1), ptr %i.l, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc41, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %.noexc41 ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !594

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %4
  %i.o = load ptr, ptr %1, align 8, !tbaa !75     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  store ptr %i.d, ptr %1, align 8, !tbaa !75
  store ptr %i.e, ptr %i.p, align 8, !tbaa !84
  store ptr %5, ptr %i.q, align 8, !tbaa !76
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.v = icmp sgt i32 %0, 255
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !75
  %i.x = sext i32 %i.a to i64
  %i.y = getelementptr [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !60
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  store i32 0, ptr %i.aa, align 4, !tbaa !60
  %i.ab = add nsw i32 %0, -256
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.0 = phi i32 [ %i.ab, %bb.c ], [ %0, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.ac = icmp sgt i32 %.0, 127
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.a to i64
  %i.ae = load ptr, ptr %1, align 8, !tbaa !75
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  store i32 0, ptr %i.af, align 4, !tbaa !60
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !60
  %i.ah = add nsw i32 %.0, -128
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.ah, %bb.e ], [ %.0, %bb.d ]  ; 3 uses
  %i.ai = icmp sgt i32 %.1, 63
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %1, align 8, !tbaa !75
  %i.ak = sext i32 %i.a to i64
  %i.al = getelementptr [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 20
  store i32 0, ptr %i.am, align 4, !tbaa !60
  %i.an = add nsw i32 %.1, -64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %i.an, %bb.g ], [ %.1, %bb.f ]  ; 3 uses
  %i.ao = icmp sgt i32 %.2, 31
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %1, align 8, !tbaa !75
  %i.aq = sext i32 %i.a to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 36
  store i32 0, ptr %i.as, align 4, !tbaa !60
  %i.at = add nsw i32 %.2, -32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi i32 [ %i.at, %bb.i ], [ %.2, %bb.h ]  ; 3 uses
  %i.au = icmp sgt i32 %.3, 15
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %1, align 8, !tbaa !75
  %i.aw = sext i32 %i.a to i64
  %i.ax = getelementptr [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 32
  store i32 0, ptr %i.ay, align 4, !tbaa !60
  %i.az = add nsw i32 %.3, -16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4 = phi i32 [ %i.az, %bb.k ], [ %.3, %bb.j ]  ; 3 uses
  %i.ba = icmp sgt i32 %.4, 7
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %1, align 8, !tbaa !75
  %i.bc = sext i32 %i.a to i64
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 28
  store i32 0, ptr %i.be, align 4, !tbaa !60
  %i.bf = add nsw i32 %.4, -8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5 = phi i32 [ %i.bf, %bb.m ], [ %.4, %bb.l ]  ; 3 uses
  %i.bg = icmp sgt i32 %.5, 3
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %1, align 8, !tbaa !75
  %i.bi = sext i32 %i.a to i64
  %i.bj = getelementptr [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 24
  store i32 0, ptr %i.bk, align 4, !tbaa !60
  %i.bl = add nsw i32 %.5, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.6 = phi i32 [ %i.bl, %bb.o ], [ %.5, %bb.n ]
  %i.bm = icmp sgt i32 %.6, 1
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %1, align 8, !tbaa !75
  %i.bo = sext i32 %i.a to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 4, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal9subMatrixERKNS_3MatERS2_RKSt6vectorIiSaIiEESA_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::Range", align 8         ; 4 uses
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.cv::Range", align 4        ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !38
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv7omnidir8internal9subMatrixERKNS_3MatERS2_RKSt6vectorIiSaIiEESA_, ptr noundef nonnull @.str.1, i32 noundef 2010) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %12, align 8, !tbaa !25    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.at

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !42
end_hunk_1
begin_hunk_2_@_ZN2cv7omnidir8internal16encodeParametersERKNS_11_InputArrayES4_S4_S4_dRKNS_12_OutputArrayE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !754
  store i64 9223372034707292160, ptr %6, align 8, !noalias !754
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !754
  store i32 %i.dm, ptr %7, align 4, !tbaa !40, !noalias !754
  %i.eq = trunc i64 %indvars.iv.next to i32
  %i.er = mul i32 %i.eq, 6
  store i32 %i.er, ptr %i.bw, align 4, !tbaa !41, !noalias !754
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.bf unwind label %bb.bp

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !754
  store i64 0, ptr %i.by, align 8
  store i32 -1040121856, ptr %31, align 8, !tbaa !17
  store ptr %32, ptr %i.bx, align 8, !tbaa !18
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.bg unwind label %bb.bq

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ak, !llvm.loop !747

bb.bh:                                            ; preds = %.noexc98, %_ZN2cv3Mat2atINS_3VecIdLi3EEEEERT_i.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %bb.as
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bj:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.au
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn60.pn = phi { ptr, i32 } [ %i.ev, %bb.bk ], [ %i.eu, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #22
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.bl ], [ %i.et, %bb.bi ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  br label %.body

.body:                                            ; preds = %bb.bh, %bb.ar, %bb.bm
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn, %bb.bm ], [ %i.es, %bb.bh ], [ %i.di, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.bt

bb.bn:                                            ; preds = %.noexc104, %_ZN2cv3Mat2atINS_3VecIdLi3EEEEERT_i.exit103
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body106

bb.bo:                                            ; preds = %bb.bd
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bp:                                            ; preds = %bb.be
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bf
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn65.pn = phi { ptr, i32 } [ %i.ez, %bb.bq ], [ %i.ey, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #22
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %bb.br ], [ %i.ex, %bb.bo ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #22
  br label %.body106

.body106:                                         ; preds = %bb.bn, %bb.bc, %bb.bs
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %bb.bs ], [ %i.ew, %bb.bn ], [ %i.ep, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.bt

._crit_edge:                                      ; preds = %bb.bg, %_ZNK2cv11_InputArray6getMatEi.exit97
  %i.fa = load double, ptr %20, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !33
  %i.fd = sext i32 %i.ao to i64
  %i.fe = getelementptr [8 x i8], ptr %i.fc, i64 %i.fd ; 10 uses
  store double %i.fa, ptr %i.fe, align 8, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !20
  %i.fh = getelementptr i8, ptr %i.fe, i64 8
  store double %i.fg, ptr %i.fh, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !20
  %i.fk = getelementptr i8, ptr %i.fe, i64 16
  store double %i.fj, ptr %i.fk, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !20
  %i.fn = getelementptr i8, ptr %i.fe, i64 24
  store double %i.fm, ptr %i.fn, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !20
  %i.fq = getelementptr i8, ptr %i.fe, i64 32
  store double %i.fp, ptr %i.fq, align 8, !tbaa !20
  %i.fr = getelementptr i8, ptr %i.fe, i64 40
  store double %4, ptr %i.fr, align 8, !tbaa !20
  %i.fs = load double, ptr %22, align 8, !tbaa !20
  %i.ft = getelementptr i8, ptr %i.fe, i64 48
  store double %i.fs, ptr %i.ft, align 8, !tbaa !20
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !20
  %i.fw = getelementptr i8, ptr %i.fe, i64 56
  store double %i.fv, ptr %i.fw, align 8, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !20
  %i.fz = getelementptr i8, ptr %i.fe, i64 64
  store double %i.fy, ptr %i.fz, align 8, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !20
  %i.gc = getelementptr i8, ptr %i.fe, i64 72
  store double %i.gb, ptr %i.gc, align 8, !tbaa !20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.bt:                                            ; preds = %.body, %.body106
  %.pn65.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %.body ], [ %.pn65.pn.pn.pn, %.body106 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.aj
  %.pn65.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn, %bb.bt ], [ %i.cf, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.ai, %bb.ah
  %.pn65.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn.pn, %bb.bu ], [ %i.ce, %bb.ai ], [ %.pn58, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ae
  %.pn65.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %.pn56, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ab
  %.pn65.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %i.bz, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bx ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn65.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal9fillFixedERNS_3MatEii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %4 = alloca %"class.std::vector.34", align 8    ; 9 uses
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = mul nsw i32 %2, 6
  %i.b = add nsw i32 %i.a, 10                     ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp slt i32 %2, -1
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25
          to label %.noexc25 unwind label %bb.n   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a
  store ptr %i.f, ptr %4, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e ; 2 uses
  %i.j = add nsw i64 %i.e, -4                     ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc25
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !tbaa !60
  store <4 x i32> splat (i32 1), ptr %i.p, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc25, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.f, %.noexc25 ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 4, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !756

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.s, align 8, !tbaa !84
  invoke void @_ZN2cv7omnidir8internal9flags2idxEiRSt6vectorIiSaIiEEi(i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %.loopexit
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.b, i32 noundef 1, i32 noundef 6)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef %i.b, i32 noundef 1, i32 noundef 6)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.q, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.x) #22
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.y) #22
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.z) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.ab = load ptr, ptr %4, align 8, !tbaa !75    ; 5 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 2                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %.fr38 = freeze i32 %i.aj
  %i.ak = icmp slt i32 %.fr38, 2
  %i.al = load i32, ptr %3, align 8
  %i.am = and i32 %i.al, 16384
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %wide.trip.count44 = and i64 %i.af, 2147483647  ; 2 uses
  br i1 %i.ak, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %bb.m ], [ 0, %.lr.ph ] ; 6 uses
  %.035.us = phi i32 [ %.1.us, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv41
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !60
  %.not.us = icmp eq i32 %i.bf, 0
  br i1 %.not.us, label %bb.m, label %_ZN2cv3Mat2atIdEERT_i.exit.us

_ZN2cv3Mat2atIdEERT_i.exit.us:                    ; preds = %.lr.ph.split.us
  %i.bg = add nsw i32 %.035.us, 1
  %i.bh = sext i32 %.035.us to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !20
  %i.bk = load i32, ptr %i.ay, align 4, !tbaa !59
  %i.bl = icmp slt i32 %i.bk, 2
  br i1 %i.bl, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us
  %i.bm = load i32, ptr %0, align 8, !tbaa !38
  %i.bn = and i32 %i.bm, 16384
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = load i32, ptr %i.az, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  %or.cond.i27.us = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond.i27.us, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = load i32, ptr %i.ba, align 8, !tbaa !60
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.bb, align 4, !tbaa !45 ; 3 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv41 to i32  ; 2 uses
  %i.bv = sdiv i32 %i.bu, %i.bt                   ; 2 uses
  %i.bw = mul nsw i32 %i.bv, %i.bt                ; 0 uses
  %.recomposed = srem i32 %i.bu, %i.bt
  %i.bx = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.by = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.bz = sext i32 %i.bv to i64
  %i.ca = mul i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  %i.cc = sext i32 %.recomposed to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  br label %_ZN2cv3Mat2atIdEERT_i.exit29.us

bb.j:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.cf = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.cg = mul i64 %i.cf, %indvars.iv41
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg
  br label %_ZN2cv3Mat2atIdEERT_i.exit29.us

bb.k:                                             ; preds = %bb.g
  %i.ci = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv41
  br label %_ZN2cv3Mat2atIdEERT_i.exit29.us

bb.l:                                             ; preds = %_ZN2cv3Mat2atIdEERT_i.exit.us
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv41
  br label %_ZN2cv3Mat2atIdEERT_i.exit29.us

_ZN2cv3Mat2atIdEERT_i.exit29.us:                  ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0.i28.us = phi ptr [ %i.cl, %bb.l ], [ %i.cj, %bb.k ], [ %i.ch, %bb.j ], [ %i.cd, %bb.i ]
  store double %i.bj, ptr %.0.i28.us, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %_ZN2cv3Mat2atIdEERT_i.exit29.us, %.lr.ph.split.us
  %.1.us = phi i32 [ %i.bg, %_ZN2cv3Mat2atIdEERT_i.exit29.us ], [ %.035.us, %.lr.ph.split.us ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !757

._crit_edge:                                      ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ad, %bb.m, %._crit_edge
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.co) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a, %bb.b
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

bb.o:                                             ; preds = %bb.d, %bb.c, %.loopexit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.p:                                             ; preds = %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.f
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.q ], [ %i.cr, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ae

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %.lr.ph ] ; 6 uses
  %.035 = phi i32 [ %.1, %bb.ad ], [ 0, %.lr.ph ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !60
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split
  %i.cv = add nsw i32 %.035, 1
  %i.cw = load i32, ptr %i.ao, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.cx
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cy = sext i32 %.035 to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.cy
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.u:                                             ; preds = %bb.s
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.da = sext i32 %.035 to i64
  %i.db = mul i64 %i.ax, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.db
  br label %_ZN2cv3Mat2atIdEERT_i.exit

bb.w:                                             ; preds = %bb.u
  %i.dd = sdiv i32 %.035, %i.at                   ; 2 uses
  %i.de = mul nsw i32 %i.dd, %i.at                ; 0 uses
  %.recomposed54 = srem i32 %.035, %i.at
  %i.df = sext i32 %i.dd to i64
  %i.dg = mul i64 %i.ax, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.dg
  %i.di = sext i32 %.recomposed54 to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.di
  br label %_ZN2cv3Mat2atIdEERT_i.exit

_ZN2cv3Mat2atIdEERT_i.exit:                       ; preds = %bb.t, %bb.v, %bb.w
  %.0.i = phi ptr [ %i.dj, %bb.w ], [ %i.cz, %bb.t ], [ %i.dc, %bb.v ]
  %i.dk = load double, ptr %.0.i, align 8, !tbaa !20
  %i.dl = load i32, ptr %i.ay, align 4, !tbaa !59
  %i.dm = icmp slt i32 %i.dl, 2
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2cv3Mat2atIdEERT_i.exit
  %i.dn = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIdEERT_i.exit29

bb.y:                                             ; preds = %_ZN2cv3Mat2atIdEERT_i.exit
  %i.dp = load i32, ptr %0, align 8, !tbaa !38
  %i.dq = and i32 %i.dp, 16384
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = load i32, ptr %i.az, align 4
  %i.dt = icmp eq i32 %i.ds, 1
  %or.cond.i27 = select i1 %i.dr, i1 true, i1 %i.dt
  br i1 %or.cond.i27, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.du = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIdEERT_i.exit29

bb.aa:                                            ; preds = %bb.y
  %i.dw = load i32, ptr %i.ba, align 8, !tbaa !60
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.dz = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.ea = mul i64 %i.dz, %indvars.iv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  br label %_ZN2cv3Mat2atIdEERT_i.exit29

bb.ac:                                            ; preds = %bb.aa
  %i.ec = load i32, ptr %i.bb, align 4, !tbaa !45 ; 3 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ee = sdiv i32 %i.ed, %i.ec                   ; 2 uses
  %i.ef = mul nsw i32 %i.ee, %i.ec                ; 0 uses
  %.recomposed55 = srem i32 %i.ed, %i.ec
  %i.eg = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.eh = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.ei = sext i32 %i.ee to i64
  %i.ej = mul i64 %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ej
  %i.el = sext i32 %.recomposed55 to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el
  br label %_ZN2cv3Mat2atIdEERT_i.exit29

_ZN2cv3Mat2atIdEERT_i.exit29:                     ; preds = %bb.x, %bb.z, %bb.ab, %bb.ac
  %.0.i28 = phi ptr [ %i.do, %bb.x ], [ %i.dv, %bb.z ], [ %i.eb, %bb.ab ], [ %i.em, %bb.ac ]
  store double %i.dk, ptr %.0.i28, align 8, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split, %_ZN2cv3Mat2atIdEERT_i.exit29
  %.1 = phi i32 [ %i.cv, %_ZN2cv3Mat2atIdEERT_i.exit29 ], [ %.035, %.lr.ph.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count44
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split, !llvm.loop !757

bb.ae:                                            ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.cq, %bb.o ] ; 2 uses
  %i.en = load ptr, ptr %4, align 8, !tbaa !75    ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %bb.af, %bb.ae, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.n ], [ %.pn.pn, %bb.ae ], [ %.pn.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef double @_ZN2cv4normERKNS_11_InputArrayEiS2_(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7omnidir8internal16decodeParametersERKNS_11_InputArrayERKNS_12_OutputArrayES7_S7_S7_Rd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Range", align 8        ; 4 uses
  %13 = alloca %"class.cv::Range", align 4        ; 5 uses
  %14 = alloca %"class.cv::Range", align 8        ; 4 uses
  %15 = alloca %"class.cv::Range", align 4        ; 5 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Matx.8", align 8       ; 12 uses
  %19 = alloca %"class.cv::Matx.20", align 16     ; 7 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %22 = alloca %"class.cv::Vec", align 8          ; 5 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Vec", align 8          ; 5 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %26 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %27 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %28 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %31 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 3, i32 noundef 3, i32 noundef 6, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, i8 0, i64 72, i1 false), !tbaa !20
  %i.b = tail call noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = add i32 %i.c, -10                        ; 3 uses
  %i.e = sdiv i32 %i.d, 6                         ; 6 uses
  %i.f = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1, i32 noundef %i.e, i32 noundef 70, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 1, i32 noundef %i.e, i32 noundef 70, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = tail call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, i32 noundef 4, i32 noundef 6, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.i = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !768
  %i.j = icmp eq i32 %i.i, 65536
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18, !noalias !768
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.j, %bb.k
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi1ELi4EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.20") align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.m = call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !769
  %i.n = icmp eq i32 %i.m, 65536
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18, !noalias !769
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.p)
  br label %_ZNK2cv11_InputArray6getMatEi.exit106

bb.n:                                             ; preds = %bb.l
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit106

_ZNK2cv11_InputArray6getMatEi.exit106:            ; preds = %bb.m, %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.s = mul nsw i32 %i.e, 6
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t ; 7 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !20
  %i.w = getelementptr i8, ptr %i.u, i64 16
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !20
  %i.z = getelementptr i8, ptr %i.u, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !20
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ab = load <2 x double>, ptr %i.w, align 8, !tbaa !20
  store double %i.v, ptr %18, align 8
  store <2 x double> %i.ab, ptr %.sroa.4172.0..sroa_idx, align 8
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store double 0.000000e+00, ptr %.sroa.6174.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store double %i.y, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40
  store double %i.aa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !26
  %i.ac = getelementptr i8, ptr %i.u, i64 48
  %i.ad = getelementptr i8, ptr %i.u, i64 64
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.af = load <2 x double>, ptr %i.ad, align 8, !tbaa !20
  store <2 x double> %i.ae, ptr %19, align 16
  store <2 x double> %i.af, ptr %.sroa.5.0..sroa_idx, align 16
  %i.ag = getelementptr i8, ptr %i.u, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !20
  store double %i.ah, ptr %5, align 8, !tbaa !20
  %i.ai = sext i32 %i.e to i64                    ; 3 uses
  %i.aj = icmp slt i32 %i.d, -5
  br i1 %i.aj, label %bb.o, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit106
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #23
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNK2cv11_InputArray6getMatEi.exit106
  %.off = add i32 %i.c, -5
  %.not.i.i.i.i = icmp ult i32 %.off, 11
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit117, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ak = mul nuw nsw i64 %i.ai, 24               ; 6 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25
          to label %.lr.ph.preheader.i.i.i.i.i110 unwind label %bb.r ; 5 uses

.lr.ph.preheader.i.i.i.i.i110:                    ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.ak, i1 false), !tbaa !20
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25
          to label %.noexc116 unwind label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit148.thread ; 4 uses

.noexc116:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i110
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.an, i8 0, i64 %i.ak, i1 false), !tbaa !20
  %scevgep.i.i.i.i.i111 = getelementptr i8, ptr %i.an, i64 %i.ak
  %i.ap = ptrtoint ptr %i.ao to i64
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit117

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EEC2EmRKS3_.exit117: ; preds = %.noexc116, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i198 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc116 ], [ null, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ] ; 2 uses
end_hunk_2
