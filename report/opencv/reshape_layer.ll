Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reshape_layer?download=true
inline.NumInlined: 766
inline.NumDeleted: 316
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ReshapeLayerImpl9initTimVXEPvRKSt6vectorINS_3PtrINS0_14dnn5_v2026060514BackendWrapperEEESaIS7_EESB_b(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, i1 noundef zeroext %5) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.27") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16ReshapeLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %36 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !83     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp eq i64 %i.f, 52
  %i.i = sext i32 %2 to i64
  %i.j = icmp eq i64 %i.g, %i.i
  %or.cond = or i1 %i.h, %i.j
  br i1 %or.cond, label %bb.b, label %bb.cy

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %3, align 8, !tbaa !83     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !85
  %.not.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.k, ptr %i.l, align 8, !tbaa !85
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.n = phi ptr [ %i.b, %bb.b ], [ %.pre, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not271 = icmp eq ptr %i.n, %i.c
  br i1 %.not271, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE5clearEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 11 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit
  %.022270 = phi i64 [ 0, %.lr.ph ], [ %i.ro, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.u = load i8, ptr %i.o, align 8, !tbaa !68, !range !69, !noundef !78
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.p, align 1, !tbaa !70, !range !69, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !85   ; 3 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.y, ptr noundef nonnull align 4 dereferenceable(52) %i.q)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.y, ptr noundef nonnull align 4 dereferenceable(52) %i.q)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %36)
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !85  ; 3 uses
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !84
  %.not.i.i27 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, ptr noundef nonnull align 4 dereferenceable(52) %36)
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  store ptr %i.af, ptr %i.l, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ac, ptr noundef nonnull align 4 dereferenceable(52) %36)
  %.pre378 = load ptr, ptr %i.l, align 8, !tbaa !92
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.i ], [ %.pre378, %bb.j ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.ah = load ptr, ptr %1, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw [52 x i8], ptr %i.ah, i64 %.022270 ; 13 uses
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8, !tbaa !71 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -52 ; 7 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 5 uses
  %.sroa.18.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.18.0.extract.trunc.i = trunc nuw i64 %.sroa.18.0.extract.shift.i to i32 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !75
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 8 uses
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64 ; 2 uses
  %i.al = load i32, ptr %i.q, align 4, !tbaa !75  ; 3 uses
  %narrow.i130.i = call i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %spec.select.i131.i = zext nneg i32 %narrow.i130.i to i64
  %i.am = icmp eq i64 %.sroa.18.0.extract.shift.i, 2147483647
  %i.an = and i32 %.sroa.0.0.extract.trunc.i, 2147483647
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond.i.i = and i1 %i.am, %i.ao
  br i1 %or.cond.i.i, label %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit
  %i.ap = icmp sgt i32 %.sroa.0.0.extract.trunc.i, -1
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEiE15__cv_check__266) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = icmp sgt i32 %.sroa.18.0.extract.trunc.i, 0
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %narrow.i.i, i32 %.sroa.18.0.extract.trunc.i)
  %i.ar = add i32 %.sroa.18.0.extract.trunc.i, 1
  %i.as = add i32 %i.ar, %narrow.i.i
  %i.at = select i1 %i.aq, i32 %.sroa.speculated.i.i, i32 %i.as ; 5 uses
  %i.au = icmp sgt i32 %i.at, %.sroa.0.0.extract.trunc.i
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEiE15__cv_check__270) #22
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not.i.i28 = icmp samesign ugt i32 %i.at, %narrow.i.i
  br i1 %.not.i.i28, label %bb.p, label %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.at, i32 noundef %narrow.i.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEiE15__cv_check__271) #22
  unreachable

_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i: ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit, %bb.o
  %.sroa.028.0.i.i = phi i64 [ %.sroa.0.0.copyload, %bb.o ], [ 0, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.430.0.i.i = phi i32 [ %i.at, %bb.o ], [ %narrow.i.i, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.430.0.i.i.fr = freeze i32 %.sroa.430.0.i.i ; 24 uses
  %.sroa.0.0.extract.trunc258.i = trunc i64 %.sroa.028.0.i.i to i32 ; 5 uses
  %i.av = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %i.q)
  %i.aw = icmp ne i64 %i.av, 0                    ; 2 uses
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !75
  %.fr.i.i = freeze i32 %i.ax                     ; 5 uses
  %i.ay = icmp sgt i32 %.fr.i.i, 0
  %i.az = and i1 %i.aw, %i.ay
  br i1 %i.az, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %._crit_edge.i

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i
  %i.ba = zext nneg i32 %.fr.i.i to i64
  br label %_ZNK2cv8MatShapeixEm.exit.i

._crit_edge.i:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i
  %.096.in.lcssa.i = phi i1 [ %i.aw, %_ZN2cv3dnn14dnn5_v20260605L20normalize_axis_rangeERKNS_5RangeEi.exit.i ], [ %i.bd, %_ZNK2cv8MatShapeixEm.exit.i ]
  br i1 %.096.in.lcssa.i, label %bb.q, label %.thread.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i211.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i226.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i241.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i86
  %common.resume.op = phi { ptr, i32 } [ %i.oh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i86 ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn111.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234.i ], [ %.pn114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i ], [ %.pn117.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237.i ], [ %.pn123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179.i ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i ], [ %i.oq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i211.i ], [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i226.i ], [ %i.qw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i241.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i ], [ %.pn120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i ]
  resume { ptr, i32 } %common.resume.op

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK2cv8MatShapeixEm.exit.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !71
  %i.bd = icmp sgt i32 %i.bc, 0                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next.i, %i.ba
  %i.bf = select i1 %i.be, i1 %i.bd, i1 false
  br i1 %i.bf, label %_ZNK2cv8MatShapeixEm.exit.i, label %._crit_edge.i, !llvm.loop !136

bb.q:                                             ; preds = %._crit_edge.i
  %.not273.i = icmp slt i32 %.fr.i.i, 1
  br i1 %.not273.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bg = zext nneg i32 %.fr.i.i to i64           ; 2 uses
  %xtraiter748 = and i64 %i.bg, 7                 ; 3 uses
  %i.bh = icmp ult i32 %.fr.i.i, 8
  br i1 %i.bh, label %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter753 = and i64 %i.bg, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i.i

_ZNK2cv8MatShapeixEm.exit.i.i:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %_ZNK2cv8MatShapeixEm.exit.i.i ] ; 9 uses
  %.02129.i.i = phi i64 [ 1, %.lr.ph.i.i.new ], [ %i.cu, %_ZNK2cv8MatShapeixEm.exit.i.i ]
  %niter754 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter754.next.7, %_ZNK2cv8MatShapeixEm.exit.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul i64 %.02129.i.i, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !71
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !71
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !71
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !71
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !71
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul i64 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !71
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul i64 %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !71
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul i64 %i.cp, %i.ct                    ; 3 uses
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter754.next.7 = add i64 %niter754, 8         ; 2 uses
  %niter754.ncmp.7 = icmp eq i64 %niter754.next.7, %unroll_iter753
  br i1 %niter754.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i.i, !llvm.loop !2

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i
  %lcmp.mod750.not = icmp eq i64 %xtraiter748, 0
  br i1 %lcmp.mod750.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i, label %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa ]
  %.02129.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %i.cu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod752 = icmp ne i64 %xtraiter748, 0
  call void @llvm.assume(i1 %lcmp.mod752)
  br label %_ZNK2cv8MatShapeixEm.exit.i.i.epil

_ZNK2cv8MatShapeixEm.exit.i.i.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ], [ %indvars.iv.i.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader ] ; 2 uses
  %.02129.i.i.epil = phi i64 [ %i.cy, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ], [ %.02129.i.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader ]
  %epil.iter749 = phi i64 [ %epil.iter749.next, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.epil
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !71
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul i64 %.02129.i.i.epil, %i.cx         ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter749.next = add i64 %epil.iter749, 1   ; 2 uses
  %epil.iter749.cmp.not = icmp eq i64 %epil.iter749.next, %xtraiter748
  br i1 %epil.iter749.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i, label %_ZNK2cv8MatShapeixEm.exit.i.i.epil, !llvm.loop !137

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.i.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa
  %.lcssa639 = phi i64 [ %i.cu, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i.unr-lcssa ], [ %i.cy, %_ZNK2cv8MatShapeixEm.exit.i.i.epil ]
  %i.cz = shl i64 %.lcssa639, 32
  %i.da = ashr exact i64 %i.cz, 32
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i, %bb.q
  %.021.lcssa.i.i = phi i64 [ 1, %bb.q ], [ %i.da, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.i ] ; 3 uses
  %.not.not292.i = icmp sgt i32 %.sroa.430.0.i.i.fr, %.sroa.0.0.extract.trunc258.i
  %.pre379 = load i32, ptr %i.ai, align 4, !tbaa !75
  %.pre380 = freeze i32 %.pre379                  ; 3 uses
  %narrow.i.i75 = call i32 @llvm.smax.i32(i32 %.pre380, i32 0) ; 4 uses
  br i1 %.not.not292.i, label %.lr.ph.i.preheader, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i
  %.pre382 = call i32 @llvm.smax.i32(i32 %.pre380, i32 1)
  %.pre383 = zext i32 %.sroa.430.0.i.i.fr to i64
  br label %._crit_edge296.i

.lr.ph.i.preheader:                               ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i
  %.not25.i78 = icmp ugt i32 %.sroa.430.0.i.i.fr, %narrow.i.i75
  %narrow.i26.i83 = call i32 @llvm.smax.i32(i32 %.pre380, i32 1) ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 9 uses
  %i.dc = zext i32 %.sroa.430.0.i.i.fr to i64     ; 5 uses
  br i1 %.not25.i78, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader
  %spec.store.select.i76.us = add nsw i32 %.sroa.430.0.i.i.fr, -1
  %41 = icmp sgt i32 %.sroa.430.0.i.i.fr, 0
  br i1 %41, label %.split202.us, label %.split.us

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.x
  %.092.in294.i = phi i32 [ %.092295.i, %bb.x ], [ %.sroa.430.0.i.i.fr, %.lr.ph.i.preheader ] ; 5 uses
  %.093293.i = phi i1 [ %.194.i, %bb.x ], [ false, %.lr.ph.i.preheader ]
  %i.dd = icmp ne i32 %.092.in294.i, 0
  %umin.neg = sext i1 %i.dd to i32
  %i.de = add i32 %.092.in294.i, %umin.neg
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = sub nsw i64 %i.dc, %i.df                ; 2 uses
  %.092295.i = add nsw i32 %.092.in294.i, -1      ; 3 uses
  %spec.store.select.i76 = call i32 @llvm.usub.sat.i32(i32 %.092.in294.i, i32 1) ; 8 uses
  %42 = icmp sgt i32 %spec.store.select.i76, -1
  br i1 %42, label %bb.r, label %.split.us

.split.us:                                        ; preds = %.lr.ph.i, %.lr.ph.i.us
  %.us-phi = phi i32 [ %spec.store.select.i76.us, %.lr.ph.i.us ], [ %spec.store.select.i76, %.lr.ph.i ]
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 0, i32 noundef %.us-phi, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__165) #22
  unreachable

bb.r:                                             ; preds = %.lr.ph.i
  %.not.i77 = icmp samesign ugt i32 %spec.store.select.i76, %.sroa.430.0.i.i.fr
  br i1 %.not.i77, label %.split198.us, label %.preheader.i79

.split198.us:                                     ; preds = %bb.r
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %spec.store.select.i76, i32 noundef %.sroa.430.0.i.i.fr, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__166) #22
  unreachable

.preheader.i79:                                   ; preds = %bb.r
  %i.dh = icmp samesign ult i32 %spec.store.select.i76, %.sroa.430.0.i.i.fr
  br i1 %i.dh, label %.lr.ph.i82, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93

.lr.ph.i82:                                       ; preds = %.preheader.i79
  %i.di = call i32 @llvm.usub.sat.i32(i32 %narrow.i26.i83, i32 %spec.store.select.i76)
  %i.dj = xor i32 %spec.store.select.i76, -1
  %i.dk = add nsw i32 %.sroa.430.0.i.i.fr, %i.dj
  %.not33.not.i84 = icmp ugt i32 %i.di, %i.dk
  br i1 %.not33.not.i84, label %.lr.ph.split.i88, label %bb.s

.lr.ph.split.i88:                                 ; preds = %.lr.ph.i82
  %i.dl = zext nneg i32 %spec.store.select.i76 to i64 ; 2 uses
  %xtraiter755 = and i64 %i.dg, 7                 ; 3 uses
  %i.dm = sub nsw i64 %i.df, %i.dc
  %i.dn = icmp ugt i64 %i.dm, -8
  br i1 %i.dn, label %_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader, label %.lr.ph.split.i88.new

.lr.ph.split.i88.new:                             ; preds = %.lr.ph.split.i88
  %unroll_iter760 = and i64 %i.dg, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i89

.split202.us:                                     ; preds = %.lr.ph.i.us
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.sroa.430.0.i.i.fr, i32 noundef %narrow.i.i75, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #22
  unreachable

_ZNK2cv8MatShapeixEm.exit.i89:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i89, %.lr.ph.split.i88.new
  %indvars.iv.i90 = phi i64 [ %i.dl, %.lr.ph.split.i88.new ], [ %indvars.iv.next.i92.7, %_ZNK2cv8MatShapeixEm.exit.i89 ] ; 9 uses
  %.02129.i91 = phi i64 [ 1, %.lr.ph.split.i88.new ], [ %i.fa, %_ZNK2cv8MatShapeixEm.exit.i89 ]
  %niter761 = phi i64 [ 0, %.lr.ph.split.i88.new ], [ %niter761.next.7, %_ZNK2cv8MatShapeixEm.exit.i89 ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !71
  %i.dq = sext i32 %i.dp to i64
  %i.dr = mul i64 %.02129.i91, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !71
  %i.dv = sext i32 %i.du to i64
  %i.dw = mul i64 %i.dr, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !71
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul i64 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !71
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul i64 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !71
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul i64 %i.eg, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !71
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul i64 %i.el, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load i32, ptr %i.es, align 4, !tbaa !71
  %i.eu = sext i32 %i.et to i64
  %i.ev = mul i64 %i.eq, %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !71
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul i64 %i.ev, %i.ez                    ; 3 uses
  %indvars.iv.next.i92.7 = add nuw nsw i64 %indvars.iv.i90, 8 ; 2 uses
  %niter761.next.7 = add i64 %niter761, 8         ; 2 uses
  %niter761.ncmp.7.not = icmp eq i64 %niter761.next.7, %unroll_iter760
  br i1 %niter761.ncmp.7.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i89, !llvm.loop !2

bb.s:                                             ; preds = %.lr.ph.i82
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #22
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %bb.u
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !25
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i86: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i89
  %lcmp.mod757.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod757.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93, label %_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa, %.lr.ph.split.i88
  %indvars.iv.i90.epil.init = phi i64 [ %i.dl, %.lr.ph.split.i88 ], [ %indvars.iv.next.i92.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa ]
  %.02129.i91.epil.init = phi i64 [ 1, %.lr.ph.split.i88 ], [ %i.fa, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa ]
  %lcmp.mod759 = icmp ne i64 %xtraiter755, 0
  call void @llvm.assume(i1 %lcmp.mod759)
  br label %_ZNK2cv8MatShapeixEm.exit.i89.epil

_ZNK2cv8MatShapeixEm.exit.i89.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i89.epil, %_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader
  %indvars.iv.i90.epil = phi i64 [ %indvars.iv.i90.epil.init, %_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader ], [ %indvars.iv.next.i92.epil, %_ZNK2cv8MatShapeixEm.exit.i89.epil ] ; 2 uses
  %.02129.i91.epil = phi i64 [ %.02129.i91.epil.init, %_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader ], [ %i.fk, %_ZNK2cv8MatShapeixEm.exit.i89.epil ]
  %epil.iter756 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i89.epil.preheader ], [ %epil.iter756.next, %_ZNK2cv8MatShapeixEm.exit.i89.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i90.epil
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !71
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul i64 %.02129.i91.epil, %i.fj         ; 2 uses
  %indvars.iv.next.i92.epil = add nuw nsw i64 %indvars.iv.i90.epil, 1
  %epil.iter756.next = add i64 %epil.iter756, 1   ; 2 uses
  %epil.iter756.cmp.not = icmp eq i64 %epil.iter756.next, %xtraiter755
  br i1 %epil.iter756.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93, label %_ZNK2cv8MatShapeixEm.exit.i89.epil, !llvm.loop !138

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i89.epil, %.preheader.i79
  %.021.lcssa.i81 = phi i64 [ 1, %.preheader.i79 ], [ %i.fa, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93.loopexit.unr-lcssa ], [ %i.fk, %_ZNK2cv8MatShapeixEm.exit.i89.epil ]
  %.not.i29 = icmp eq i64 %.021.lcssa.i81, %.021.lcssa.i.i ; 2 uses
  br i1 %.093293.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93
  br i1 %.not.i29, label %bb.w, label %._crit_edge296.i

bb.w:                                             ; preds = %bb.v
  %i.fl = icmp eq i32 %.092295.i, 0
  br i1 %i.fl, label %._crit_edge296.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93
  %.194.i = phi i1 [ true, %bb.w ], [ %.not.i29, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit93 ]
  %.not.not.i = icmp sgt i32 %.092295.i, %.sroa.0.0.extract.trunc258.i
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge296.i, !llvm.loop !139

._crit_edge296.i:                                 ; preds = %bb.x, %bb.w, %bb.v, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge
  %.pre-phi = phi i64 [ %.pre383, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge ], [ %i.dc, %bb.v ], [ %i.dc, %bb.w ], [ %i.dc, %bb.x ] ; 2 uses
  %narrow.i26.i63.pre-phi = phi i32 [ %.pre382, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge ], [ %narrow.i26.i83, %bb.v ], [ %narrow.i26.i83, %bb.w ], [ %narrow.i26.i83, %bb.x ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.extract.trunc258.i, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.i.._crit_edge296.i_crit_edge ], [ %.sroa.0.0.extract.trunc258.i, %bb.x ], [ 0, %bb.w ], [ %.092.in294.i, %bb.v ] ; 5 uses
  %.not25.i = icmp ugt i32 %.sroa.430.0.i.i.fr, %narrow.i.i75
  %43 = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 9 uses
  br i1 %.not25.i, label %._crit_edge296.i.split.us.a, label %._crit_edge296.i.split

._crit_edge296.i.split.us.a:                      ; preds = %._crit_edge296.i
  %44 = icmp eq i32 %.sroa.0.0.i, -1
  %spec.store.select.i.us = select i1 %44, i32 0, i32 %.sroa.0.0.i ; 2 uses
  %45 = icmp sgt i32 %spec.store.select.i.us, -1
  br i1 %45, label %bb.y, label %.split230.us

bb.y:                                             ; preds = %._crit_edge296.i.split.us.a
  %.not.i59.us = icmp samesign ugt i32 %spec.store.select.i.us, %.sroa.430.0.i.i.fr
  br i1 %.not.i59.us, label %.split233.us, label %.split237.us

._crit_edge296.i.split:                           ; preds = %._crit_edge296.i, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73
  %.sroa.0.1.i = phi i32 [ %i.hw, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73 ], [ %.sroa.0.0.i, %._crit_edge296.i ] ; 9 uses
  %i.fm = icmp eq i32 %.sroa.0.1.i, -1
  %spec.store.select.i = select i1 %i.fm, i32 0, i32 %.sroa.0.1.i ; 6 uses
  %i.fn = icmp sgt i32 %spec.store.select.i, -1
  br i1 %i.fn, label %bb.z, label %.split230.us

.split230.us:                                     ; preds = %._crit_edge296.i.split, %._crit_edge296.i.split.us.a
  %.us-phi231 = phi i32 [ %.sroa.0.0.i, %._crit_edge296.i.split.us.a ], [ %.sroa.0.1.i, %._crit_edge296.i.split ]
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef 0, i32 noundef %.us-phi231, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__165) #22
  unreachable

bb.z:                                             ; preds = %._crit_edge296.i.split
  %.not.i59 = icmp samesign ugt i32 %spec.store.select.i, %.sroa.430.0.i.i.fr
  br i1 %.not.i59, label %.split233.us, label %.preheader.i

.split233.us:                                     ; preds = %bb.z, %bb.y
  %.us-phi235 = phi i32 [ %.sroa.0.0.i, %bb.y ], [ %.sroa.0.1.i, %bb.z ]
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.us-phi235, i32 noundef %.sroa.430.0.i.i.fr, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__166) #22
  unreachable

.preheader.i:                                     ; preds = %bb.z
  %i.fo = icmp samesign ult i32 %spec.store.select.i, %.sroa.430.0.i.i.fr
  br i1 %i.fo, label %.lr.ph.i62, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73

.lr.ph.i62:                                       ; preds = %.preheader.i
  %i.fp = call i32 @llvm.usub.sat.i32(i32 %narrow.i26.i63.pre-phi, i32 %spec.store.select.i)
  %i.fq = xor i32 %spec.store.select.i, -1
  %i.fr = add nsw i32 %.sroa.430.0.i.i.fr, %i.fq
  %.not33.not.i64 = icmp ugt i32 %i.fp, %i.fr
  br i1 %.not33.not.i64, label %.lr.ph.split.i68, label %bb.aa

.lr.ph.split.i68:                                 ; preds = %.lr.ph.i62
  %i.fs = zext nneg i32 %spec.store.select.i to i64 ; 4 uses
  %i.ft = sub nsw i64 %.pre-phi, %i.fs            ; 2 uses
  %xtraiter762 = and i64 %i.ft, 7                 ; 3 uses
  %i.fu = sub nsw i64 %i.fs, %.pre-phi
  %i.fv = icmp ugt i64 %i.fu, -8
  br i1 %i.fv, label %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader, label %.lr.ph.split.i68.new

.lr.ph.split.i68.new:                             ; preds = %.lr.ph.split.i68
  %unroll_iter767 = and i64 %i.ft, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i69

.split237.us:                                     ; preds = %bb.y
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %.sroa.430.0.i.i.fr, i32 noundef %narrow.i.i75, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #22
  unreachable

_ZNK2cv8MatShapeixEm.exit.i69:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i69, %.lr.ph.split.i68.new
  %indvars.iv.i70 = phi i64 [ %i.fs, %.lr.ph.split.i68.new ], [ %indvars.iv.next.i72.7, %_ZNK2cv8MatShapeixEm.exit.i69 ] ; 9 uses
  %.02129.i71 = phi i64 [ 1, %.lr.ph.split.i68.new ], [ %i.hi, %_ZNK2cv8MatShapeixEm.exit.i69 ]
  %niter768 = phi i64 [ 0, %.lr.ph.split.i68.new ], [ %niter768.next.7, %_ZNK2cv8MatShapeixEm.exit.i69 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !71
  %i.fy = sext i32 %i.fx to i64
  %i.fz = mul i64 %.02129.i71, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !71
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul i64 %i.fz, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !71
  %i.gi = sext i32 %i.gh to i64
  %i.gj = mul i64 %i.ge, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !71
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul i64 %i.gj, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !71
  %i.gs = sext i32 %i.gr to i64
  %i.gt = mul i64 %i.go, %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !71
  %i.gx = sext i32 %i.gw to i64
  %i.gy = mul i64 %i.gt, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !71
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.gy, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 28
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !71
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul i64 %i.hd, %i.hh                    ; 3 uses
  %indvars.iv.next.i72.7 = add nuw nsw i64 %indvars.iv.i70, 8 ; 2 uses
  %niter768.next.7 = add i64 %niter768, 8         ; 2 uses
  %niter768.ncmp.7 = icmp eq i64 %niter768.next.7, %unroll_iter767
  br i1 %niter768.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i69, !llvm.loop !2

bb.aa:                                            ; preds = %.lr.ph.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #22
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hm = icmp eq ptr %i.hk, %i.hl
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.ac
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !25
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.ho) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i66: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i69
  %lcmp.mod764.not = icmp eq i64 %xtraiter762, 0
  br i1 %lcmp.mod764.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73, label %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa, %.lr.ph.split.i68
  %indvars.iv.i70.epil.init = phi i64 [ %i.fs, %.lr.ph.split.i68 ], [ %indvars.iv.next.i72.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa ]
  %.02129.i71.epil.init = phi i64 [ 1, %.lr.ph.split.i68 ], [ %i.hi, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa ]
  %lcmp.mod766 = icmp ne i64 %xtraiter762, 0
  call void @llvm.assume(i1 %lcmp.mod766)
  br label %_ZNK2cv8MatShapeixEm.exit.i69.epil

_ZNK2cv8MatShapeixEm.exit.i69.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i69.epil, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader
  %indvars.iv.i70.epil = phi i64 [ %indvars.iv.i70.epil.init, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader ], [ %indvars.iv.next.i72.epil, %_ZNK2cv8MatShapeixEm.exit.i69.epil ] ; 2 uses
  %.02129.i71.epil = phi i64 [ %.02129.i71.epil.init, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader ], [ %i.hs, %_ZNK2cv8MatShapeixEm.exit.i69.epil ]
  %epil.iter763 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i69.epil.preheader ], [ %epil.iter763.next, %_ZNK2cv8MatShapeixEm.exit.i69.epil ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %indvars.iv.i70.epil
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !71
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul i64 %.02129.i71.epil, %i.hr         ; 2 uses
  %indvars.iv.next.i72.epil = add nuw nsw i64 %indvars.iv.i70.epil, 1
  %epil.iter763.next = add i64 %epil.iter763, 1   ; 2 uses
  %epil.iter763.cmp.not = icmp eq i64 %epil.iter763.next, %xtraiter762
  br i1 %epil.iter763.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73, label %_ZNK2cv8MatShapeixEm.exit.i69.epil, !llvm.loop !140

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i69.epil, %.preheader.i
  %.021.lcssa.i61 = phi i64 [ 1, %.preheader.i ], [ %i.hi, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73.loopexit.unr-lcssa ], [ %i.hs, %_ZNK2cv8MatShapeixEm.exit.i69.epil ]
  %i.ht = icmp ne i64 %.021.lcssa.i61, %.021.lcssa.i.i
  %i.hu = icmp sgt i32 %.sroa.0.1.i, 0
  %i.hv = and i1 %i.hu, %i.ht
  %i.hw = add nsw i32 %.sroa.0.1.i, -1
  br i1 %i.hv, label %._crit_edge296.i.split, label %bb.ad, !llvm.loop !141

bb.ad:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit73
  %i.hx = call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %i.ai, i32 noundef %.sroa.0.1.i, i32 noundef %.sroa.430.0.i.i.fr)
  %i.hy = icmp eq i64 %i.hx, %.021.lcssa.i.i
  br i1 %i.hy, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv3dnnL25computeShapeByReshapeMaskERKNS_8MatShapeES3_NS_5RangeERS1_, ptr noundef nonnull @.str.6, i32 noundef 109) #22
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.ai:                                            ; preds = %bb.af
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !25
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.hz, %bb.ah ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ia, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %common.resume

bb.aj:                                            ; preds = %bb.ad
  %i.ig = icmp sgt i32 %.sroa.0.1.i, -1
  br i1 %i.ig, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj, %._crit_edge.i
  %.sroa.0.2269.i = phi i32 [ %.sroa.0.1.i, %bb.aj ], [ %.sroa.0.0.extract.trunc258.i, %._crit_edge.i ] ; 3 uses
  %.not105.i = icmp sgt i32 %.sroa.0.2269.i, %.sroa.430.0.i.i.fr
  %.not106.i = icmp samesign ugt i32 %.sroa.430.0.i.i.fr, %narrow.i.i
  %or.cond.i = or i1 %.not106.i, %.not105.i
  br i1 %or.cond.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv3dnnL25computeShapeByReshapeMaskERKNS_8MatShapeES3_NS_5RangeERS1_, ptr noundef nonnull @.str.6, i32 noundef 112) #22
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i

bb.ao:                                            ; preds = %bb.al
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = load ptr, ptr %23, align 8, !tbaa !31   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i: ; preds = %bb.ao
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !25
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i, %bb.an
  %.pn107.i = phi { ptr, i32 } [ %i.ih, %bb.an ], [ %i.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i ], [ %i.ii, %bb.ao ]
end_hunk_0
