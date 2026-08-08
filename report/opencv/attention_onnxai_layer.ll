inline.NumInlined: 682
inline.NumDeleted: 300
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv3dnn24AttentionOnnxAiLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a

bb.cz:                                            ; preds = %bb.cy
  %i.ns = ptrtoint ptr %.sroa.16.1 to i64
  %i.nt = ptrtoint ptr %.sroa.0459.1 to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0459.1, i64 noundef %i.nu) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit375

_ZNSt6vectorImSaImEED2Ev.exit375:                 ; preds = %bb.br, %bb.cy, %bb.cz
  %.pn202.pn602 = phi { ptr, i32 } [ %.pn202.pn, %bb.cz ], [ %.pn202.pn, %bb.cy ], [ %i.in, %bb.br ] ; 2 uses
  %.sroa.0500.2601 = phi ptr [ %.sroa.0500.2, %bb.cz ], [ %.sroa.0500.2, %bb.cy ], [ %.sroa.0500.0, %bb.br ] ; 3 uses
  %.sroa.16508.2600 = phi ptr [ %.sroa.16508.2, %bb.cz ], [ %.sroa.16508.2, %bb.cy ], [ %.sroa.16508.0, %bb.br ]
  %.sroa.0489.2599 = phi ptr [ %.sroa.0489.2, %bb.cz ], [ %.sroa.0489.2, %bb.cy ], [ %.sroa.0489.0, %bb.br ] ; 3 uses
  %.sroa.17.2598 = phi ptr [ %.sroa.17.2, %bb.cz ], [ %.sroa.17.2, %bb.cy ], [ %.sroa.17.0, %bb.br ]
  %.sroa.0468.2597 = phi ptr [ %.sroa.0468.2, %bb.cz ], [ %.sroa.0468.2, %bb.cy ], [ %.sroa.0468.0, %bb.br ] ; 3 uses
  %.sroa.16486.2596 = phi ptr [ %.sroa.16486.2, %bb.cz ], [ %.sroa.16486.2, %bb.cy ], [ %.sroa.16486.0, %bb.br ]
  %.sroa.0478.2595 = phi ptr [ %.sroa.0478.2, %bb.cz ], [ %.sroa.0478.2, %bb.cy ], [ %.sroa.0478.0, %bb.br ] ; 3 uses
  %.sroa.16497.2594 = phi ptr [ %.sroa.16497.2, %bb.cz ], [ %.sroa.16497.2, %bb.cy ], [ %.sroa.16497.0, %bb.br ]
  %.not.i.i.i376 = icmp eq ptr %.sroa.0468.2597, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorImSaImEED2Ev.exit377, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit375
  %i.nv = ptrtoint ptr %.sroa.17.2598 to i64
  %i.nw = ptrtoint ptr %.sroa.0468.2597 to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0468.2597, i64 noundef %i.nx) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit377

_ZNSt6vectorImSaImEED2Ev.exit377:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit375, %bb.da
  %.not.i.i.i378 = icmp eq ptr %.sroa.0478.2595, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorImSaImEED2Ev.exit379, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit377
  %i.ny = ptrtoint ptr %.sroa.16486.2596 to i64
  %i.nz = ptrtoint ptr %.sroa.0478.2595 to i64
  %i.oa = sub i64 %i.ny, %i.nz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0478.2595, i64 noundef %i.oa) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit379

_ZNSt6vectorImSaImEED2Ev.exit379:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit377, %bb.db
  %.not.i.i.i380 = icmp eq ptr %.sroa.0489.2599, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorImSaImEED2Ev.exit381, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit379
  %i.ob = ptrtoint ptr %.sroa.16497.2594 to i64
  %i.oc = ptrtoint ptr %.sroa.0489.2599 to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0489.2599, i64 noundef %i.od) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit381

_ZNSt6vectorImSaImEED2Ev.exit381:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit379, %bb.dc
  %.not.i.i.i382 = icmp eq ptr %.sroa.0500.2601, null
  br i1 %.not.i.i.i382, label %.body, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit381
  %i.oe = ptrtoint ptr %.sroa.16508.2600 to i64
  %i.of = ptrtoint ptr %.sroa.0500.2601 to i64
  %i.og = sub i64 %i.oe, %i.of
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0500.2601, i64 noundef %i.og) #20
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bk, %bb.bj, %bb.dd, %_ZNSt6vectorImSaImEED2Ev.exit381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i290, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i263, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i236, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i218, %bb.aw, %bb.av
  %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.av ], [ %i.gr, %bb.bk ], [ %.pn202.pn602, %bb.dd ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i218 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i236 ], [ %.pn193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i263 ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i290 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fm, %bb.aw ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i227 ], [ %i.fn, %bb.ax ], [ %i.gq, %bb.bj ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i254 ], [ %i.fo, %bb.ay ], [ %.pn202.pn602, %_ZNSt6vectorImSaImEED2Ev.exit381 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281 ], [ %i.fp, %bb.az ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  resume { ptr, i32 } %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #6

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn24AttentionOnnxAiLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  ret i1 %i.a
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.19") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.19") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.19") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.19") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.19") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE(ptr dead_on_unwind writable sret(%"struct.cv::Ptr.19") align 8, ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #6

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #6

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn24AttentionOnnxAiLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %12 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.b = alloca [4 x i32], align 4                ; 7 uses
  %13 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.c = alloca [4 x i32], align 4                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.f = load ptr, ptr %1, align 8, !tbaa !197    ; 11 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 52                  ; 2 uses
  %i.k = icmp ugt i64 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24AttentionOnnxAiLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__70) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.j, 5
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24AttentionOnnxAiLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__71) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.f, align 4, !tbaa !182  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !182
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.r = load i32, ptr %i.q, align 4, !tbaa !182
  %i.s = icmp eq i32 %i.m, %i.r
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24AttentionOnnxAiLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__74) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.m, 4                      ; 2 uses
  br i1 %i.t, label %_ZNK2cv8MatShapeixEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.v = load i32, ptr %i.u, align 4, !tbaa !63
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.y = load i32, ptr %i.x, align 4, !tbaa !62
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = icmp eq i32 %i.m, 3
  %or.cond = and i1 %i.aa, %i.z
  br i1 %or.cond, label %_ZNK2cv8MatShapeixEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24AttentionOnnxAiLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__80) #23
  unreachable

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.h, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !183 ; 3 uses
  %i.ad = add nsw i32 %i.m, -2
  %i.ae = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !183 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !183 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ae
  %i.am = load i32, ptr %i.al, align 4, !tbaa !183 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74 ; 7 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.ab, label %bb.l

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170
  %common.resume.op = phi { ptr, i32 } [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170 ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 441
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !75, !range !171, !noundef !172
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 965
  %i.at = load i8, ptr %i.as, align 1, !tbaa !198, !range !171, !noundef !172
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 880
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 872 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51 ; 8 uses
  %i.bb = load ptr, ptr %i.ay, align 8            ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bd) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = tail call i32 @memcmp(ptr noundef %i.bg, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.bi = sub i64 %i.bd, %i.ba
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.bj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.bj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056KCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !184

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056KCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bk = icmp eq ptr %.19.i.i.i, %i.ax
  br i1 %i.bk, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056KCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !51 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.ba) ; 2 uses
  %i.bn = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.bn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bq = tail call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.bp, i64 noundef %.sroa.speculated.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.br = sub i64 %i.ba, %i.bm
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.br, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bs = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bs, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.u

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056KCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv3dnn24AttentionOnnxAiLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 92) #23
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !28
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bu, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

bb.u:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056KCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 96
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !185
  %i.cc = add nsw i32 %i.cb, %i.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 928
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !52 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 920 ; 2 uses
  %.not10.i.i.i111 = icmp eq ptr %i.ce, null
  br i1 %.not10.i.i.i111, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056VCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %.lr.ph.i.i.i112

.lr.ph.i.i.i112:                                  ; preds = %bb.u, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118
  %.012.i.i.i113 = phi ptr [ %.1.i.i.i123, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118 ], [ %i.ce, %bb.u ] ; 4 uses
  %.0811.i.i.i114 = phi ptr [ %.19.i.i.i120, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118 ], [ %i.cf, %bb.u ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i113, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i115 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ch) ; 2 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i115, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i136, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i116

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i116: ; preds = %.lr.ph.i.i.i112
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i113, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !57
  %i.cl = tail call i32 @memcmp(ptr noundef %i.ck, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i.i.i115) #21 ; 2 uses
  %.not.i.i.i.i.i.i117 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i.i117, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i136, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i136: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i116, %.lr.ph.i.i.i112
  %i.cm = sub i64 %i.ch, %i.ba
  %spec.select7.i.i.i.i.i.i.i137 = tail call i64 @llvm.smax.i64(i64 %i.cm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i138 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i137, i64 2147483647)
  %.0.i6.i.i.i.i.i.i139 = trunc nsw i64 %.08.i.i.i.i.i.i.i138 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i136, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i116
  %.0.i.i.i.i.i.i119 = phi i32 [ %i.cl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i116 ], [ %.0.i6.i.i.i.i.i.i139, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i136 ]
  %i.cn = icmp slt i32 %.0.i.i.i.i.i.i119, 0      ; 2 uses
  %.19.i.i.i120 = select i1 %i.cn, ptr %.0811.i.i.i114, ptr %.012.i.i.i113 ; 5 uses
  %.1.in.v.i.i.i121 = select i1 %i.cn, i64 24, i64 16
  %.1.in.i.i.i122 = getelementptr inbounds nuw i8, ptr %.012.i.i.i113, i64 %.1.in.v.i.i.i121
  %.1.i.i.i123 = load ptr, ptr %.1.in.i.i.i122, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %.1.i.i.i123, null
  br i1 %.not.i.i.i124, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056VCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i112, !llvm.loop !191

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056VCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i118
  %i.co = icmp eq ptr %.19.i.i.i120, %i.cf
  br i1 %i.co, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056VCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv3dnn14dnn5_v202606056VCacheEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i120, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !51 ; 2 uses
  %.sroa.speculated.i.i.i.i.i125 = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.ba) ; 2 uses
  %i.cr = icmp eq i64 %.sroa.speculated.i.i.i.i.i125, 0
  br i1 %i.cr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i132, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i126

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i126: ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i120, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.cu = tail call i32 @memcmp(ptr noundef %i.bb, ptr noundef %i.ct, i64 noundef %.sroa.speculated.i.i.i.i.i125) #21 ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i.i127, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i132, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056VCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i132: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i126, %bb.v
  %i.cv = sub i64 %i.ba, %i.cq
  %spec.select7.i.i.i.i.i.i133 = tail call i64 @llvm.smax.i64(i64 %i.cv, i64 -2147483648)
  %.08.i.i.i.i.i.i134 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i133, i64 2147483647)
  %.0.i6.i.i.i.i.i135 = trunc nsw i64 %.08.i.i.i.i.i.i134 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056VCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv3dnn14dnn5_v202606056VCacheESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i126, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i132
  %.0.i.i.i.i.i129 = phi i32 [ %i.cu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i126 ], [ %.0.i6.i.i.i.i.i135, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i132 ]
  %i.cw = icmp slt i32 %.0.i.i.i.i.i129, 0
end_hunk_0
