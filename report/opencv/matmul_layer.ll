Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul_layer?download=true
inline.NumInlined: 937
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv3dnn15MatMulLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !83
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !46
  %i.nd = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !189
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 440
  invoke void @_ZN2cv3dnn13fastGemmBatchEmPKmS2_S2_iiifPKfiiS4_iifPfiRNS0_11FastGemmOptE(i64 noundef %i.mf, ptr noundef %i.mg, ptr noundef %i.mi, ptr noundef %i.mk, i32 noundef %i.mm, i32 noundef %i.mo, i32 noundef %i.mq, float noundef %i.ms, ptr noundef %i.m, i32 noundef %i.mu, i32 noundef %i.mw, ptr noundef %i.mc, i32 noundef %i.my, i32 noundef %i.na, float noundef %i.nc, ptr noundef %i.nd, i32 noundef %i.nf, ptr noundef nonnull align 1 dereferenceable(5) %i.ng)
          to label %bb.bz unwind label %bb.bq

bb.bz:                                            ; preds = %.invoke, %bb.bp, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.nh = load ptr, ptr %10, align 8, !tbaa !70   ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.nh, %i.nj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bz, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.nk, %.lr.ph.i.i.i ], [ %i.nh, %bb.bz ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #20
  %i.nk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.nk, %i.nj
  br i1 %.not.i.i.i108, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bz
  %i.nl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.nh, %bb.bz ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.nm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !98
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.nq) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.nr = load ptr, ptr %9, align 8, !tbaa !70    ; 3 uses
  %i.ns = load ptr, ptr %i.p, align 8, !tbaa !74  ; 2 uses
  %.not4.i.i.i109 = icmp eq ptr %i.nr, %i.ns
  br i1 %.not4.i.i.i109, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i115, label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i110
  %.05.i.i.i111 = phi ptr [ %i.nt, %.lr.ph.i.i.i110 ], [ %i.nr, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i111) #20
  %i.nt = getelementptr inbounds nuw i8, ptr %.05.i.i.i111, i64 208 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %i.nt, %i.ns
  br i1 %.not.i.i.i112, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i113, label %.lr.ph.i.i.i110, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i113: ; preds = %.lr.ph.i.i.i110
  %.pr.i114 = load ptr, ptr %9, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i115

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i115: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i113, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.nu = phi ptr [ %.pr.i114, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i113 ], [ %i.nr, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i116 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i1.i116, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit117, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i115
  %i.nv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !98
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %i.nu to i64
  %i.nz = sub i64 %i.nx, %i.ny
  call void @_ZdlPvm(ptr noundef nonnull %i.nu, i64 noundef %i.nz) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit117

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit117:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i115, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.f, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit117
  %i.oa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !118
  %.not.i118 = icmp eq i32 %i.ob, 0
  br i1 %.not.i118, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oc = landingpad { ptr, i32 }
          catch ptr null
  %i.od = extractvalue { ptr, i32 } %i.oc, 0
  call void @__clang_call_terminate(ptr %i.od) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void

bb.cf:                                            ; preds = %bb.bq, %bb.bt, %.body102
  %.pn74.pn = phi { ptr, i32 } [ %.pn66, %.body102 ], [ %.pn70.pn.pn, %bb.bt ], [ %i.js, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.p
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %bb.cf ], [ %i.aw, %bb.p ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.c
  %.pn78 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn74.pn.pn, %bb.cg ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  resume { ptr, i32 } %.pn78
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #7

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn15MatMulLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 1000000, label %bb.f
    i32 3, label %bb.f
    i32 4, label %bb.b
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN2cv3dnn10haveVulkanEv()
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i8, ptr %i.b, align 4, !tbaa !43, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.f = load i8, ptr %i.e, align 1, !tbaa !44, !range !72, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %i.h = icmp eq i32 %1, 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.e, %bb.d
  %i.i = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ %i.h, %bb.e ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %i.i
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #7

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %25 = alloca %"struct.cv::MatShape", align 4    ; 10 uses
  %26 = alloca %"struct.cv::MatShape", align 4    ; 11 uses
  %27 = alloca %"struct.cv::MatShape", align 4    ; 15 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !70
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 208
  %i.p = add nsw i64 %i.o, %i.g
  %i.q = trunc i64 %i.p to i32                    ; 5 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.q, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__59) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = icmp samesign ult i32 %i.q, 4
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.q, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__60) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %25, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %26, ptr noundef nonnull align 4 dereferenceable(52) %.sink)
  %i.z = load i32, ptr %25, align 4, !tbaa !86    ; 3 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %spec.select.i, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__63) #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %26, align 4, !tbaa !86   ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %narrow.i95 = call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %spec.select.i96 = zext nneg i32 %narrow.i95 to i64
  call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %spec.select.i96, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__64) #22
  unreachable

32:                                               ; preds = %bb.j
  %33 = add nsw i64 %spec.select.i, -2            ; 2 uses
  %spec.select.i102 = zext nneg i32 %i.z to i64
  %34 = icmp samesign ult i64 %33, %spec.select.i102
  br i1 %34, label %_ZNK2cv8MatShapeixEm.exit, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %24)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %36 unwind label %37

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %23, align 8, !tbaa !26     ; 2 uses
  %40 = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %37
  %42 = load i64, ptr %40, align 8, !tbaa !20
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %39, i64 noundef %43) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134 ], [ %49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170 ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i200 ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206 ], [ %.pn89, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %32
  %i.ad = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %33
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87 ; 2 uses
  %i.ag = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %25)
  %i.ah = load i32, ptr %26, align 4, !tbaa !86   ; 2 uses
  %narrow.i103 = call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %spec.select.i104 = zext nneg i32 %narrow.i103 to i64
  %i.ai = add nsw i64 %spec.select.i104, -2       ; 2 uses
  %narrow.i105 = call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %spec.select.i106 = zext nneg i32 %narrow.i105 to i64
  %i.aj = icmp ult i64 %i.ai, %spec.select.i106
  br i1 %i.aj, label %_ZNK2cv8MatShapeixEm.exit110, label %bb.l

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %22)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107: ; preds = %bb.n
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i108: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit110:                     ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.aq = load i32, ptr %i.ag, align 4, !tbaa !87 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ai
  %i.at = load i32, ptr %i.as, align 4, !tbaa !87 ; 2 uses
  %i.au = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %26)
  %i.av = load i32, ptr %i.au, align 4, !tbaa !87 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !43, !range !72, !noundef !73
  %i.ay = trunc nuw i8 %i.ax to i1                ; 2 uses
  %i.az = select i1 %i.ay, i32 %i.aq, i32 %i.af   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !44, !range !72, !noundef !73
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = select i1 %i.bc, i32 %i.at, i32 %i.av   ; 3 uses
  %i.be = select i1 %i.ay, i32 %i.af, i32 %i.aq   ; 2 uses
  %i.bf = select i1 %i.bc, i32 %i.av, i32 %i.at   ; 2 uses
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit110
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__73) #22
  unreachable

bb.p:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %27)
  %i.bh = load i32, ptr %25, align 4, !tbaa !86   ; 4 uses
  %.not = icmp eq i32 %i.bh, 2
  %i.bi = load i32, ptr %26, align 4              ; 4 uses
  %.not85 = icmp eq i32 %i.bi, 2
  %or.cond = select i1 %.not, i1 %.not85, i1 false
  br i1 %or.cond, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %narrow.i117 = call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bj = icmp sgt i32 %i.bh, %narrow.i117        ; 6 uses
  %. = select i1 %i.bj, ptr %25, ptr %26          ; 3 uses
  %i.bk = select i1 %i.bj, ptr %26, ptr %25       ; 2 uses
  %i.bl = select i1 %i.bj, i32 %i.bh, i32 %i.bi
  %narrow.i123 = call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %spec.select.i124 = zext nneg i32 %narrow.i123 to i64
  %i.bm = select i1 %i.bj, i32 %i.bi, i32 %i.bh
  %narrow.i125 = call i32 @llvm.smax.i32(i32 %i.bm, i32 0)
  %spec.select.i126 = zext nneg i32 %narrow.i125 to i64
  %i.bn = sub nsw i64 %spec.select.i124, %spec.select.i126
  %i.bo = call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %27, ptr noundef nonnull align 4 dereferenceable(52) %.) ; 0 uses
  %i.bp = load i32, ptr %i.bk, align 4, !tbaa !86 ; 2 uses
  %narrow.i127 = call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %spec.select.i128 = zext nneg i32 %narrow.i127 to i64
  %i.bq = add nsw i64 %spec.select.i128, -2       ; 2 uses
  %.not239 = icmp eq i64 %i.bq, 0
  %.pre = load i32, ptr %27, align 4              ; 3 uses
  br i1 %.not239, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.q
  %.pre251 = call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %.pre252 = zext nneg i32 %.pre251 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %narrow.i144 = call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %spec.select.i145 = zext nneg i32 %narrow.i144 to i64
  %.sroa.sel219 = select i1 %i.bj, ptr %i.ar, ptr %i.ad
  %i.br = load i32, ptr %., align 4, !tbaa !86
  %narrow.i150 = call i32 @llvm.smax.i32(i32 %i.br, i32 1)
  %spec.select.i151 = zext nneg i32 %narrow.i150 to i64
  %..sroa.sel = select i1 %i.bj, ptr %i.ad, ptr %i.ar
  %narrow.i156 = call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %spec.select.i157 = zext nneg i32 %narrow.i156 to i64 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %27, i64 12
  br label %bb.u

._crit_edge:                                      ; preds = %bb.aj, %.._crit_edge_crit_edge
  %spec.select.i132.pre-phi = phi i64 [ %.pre252, %.._crit_edge_crit_edge ], [ %spec.select.i157, %bb.aj ] ; 2 uses
  %narrow.i129 = call i32 @llvm.smax.i32(i32 %.pre, i32 0)
  %spec.select.i130 = zext nneg i32 %narrow.i129 to i64 ; 2 uses
  %i.bt = add nsw i64 %spec.select.i130, -2       ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %spec.select.i132.pre-phi
  br i1 %i.bu, label %_ZN2cv8MatShapeixEm.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %19, align 8, !tbaa !26   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !20
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i134: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bt
  store i32 %i.az, ptr %i.cc, align 4, !tbaa !87
  %44 = add nsw i64 %spec.select.i130, -1         ; 2 uses
  %45 = icmp samesign ult i64 %44, %spec.select.i132.pre-phi
  br i1 %45, label %_ZN2cv8MatShapeixEm.exit143, label %46

46:                                               ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %47 unwind label %48

47:                                               ; preds = %46
  unreachable

48:                                               ; preds = %46
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = load ptr, ptr %17, align 8, !tbaa !26     ; 2 uses
  %51 = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140: ; preds = %48
  %53 = load i64, ptr %51, align 8, !tbaa !20
  %54 = add i64 %53, 1
  call void @_ZdlPvm(ptr noundef %50, i64 noundef %54) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141: ; preds = %48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit143:                      ; preds = %_ZN2cv8MatShapeixEm.exit
  %55 = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %44
  store i32 %i.bd, ptr %55, align 4, !tbaa !87
  br label %bb.ao

bb.u:                                             ; preds = %.lr.ph, %bb.aj
  %.076235 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %bb.aj ] ; 7 uses
  %exitcond.not = icmp eq i64 %.076235, %spec.select.i145
  br i1 %exitcond.not, label %bb.v, label %_ZNK2cv8MatShapeixEm.exit149

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146: ; preds = %bb.x
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !20
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i147: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit149:                     ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel219, i64 %.076235
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !87 ; 3 uses
  %i.cl = add nuw nsw i64 %.076235, %i.bn         ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %spec.select.i151
  br i1 %i.cm, label %_ZNK2cv8MatShapeixEm.exit155, label %bb.y

bb.y:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152: ; preds = %bb.aa
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !20
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i153: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit155:                     ; preds = %_ZNK2cv8MatShapeixEm.exit149
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %..sroa.sel, i64 %i.cl
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !87 ; 2 uses
  %i.cv = icmp eq i32 %i.ck, 1
  %i.cw = icmp eq i32 %i.cu, 1                    ; 2 uses
  %or.cond.not223 = select i1 %i.cv, i1 true, i1 %i.cw
  %.not88 = icmp eq i32 %i.ck, %i.cu
  %or.cond91 = select i1 %or.cond.not223, i1 true, i1 %.not88
  br i1 %or.cond91, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit155
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.cx = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.bk, i64 noundef %.076235)
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !87
  %i.cz = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %., i64 noundef %i.cl)
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !87
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull @.str.42, i64 noundef %.076235, i32 noundef %i.cy, i64 noundef %.076235, i32 noundef %i.da)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.25, i32 noundef 85) #22
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %28, align 8, !tbaa !26   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.bl

bb.ae:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit155
  br i1 %i.cw, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.dh = icmp samesign ult i64 %i.cl, %spec.select.i157
  br i1 %i.dh, label %_ZN2cv8MatShapeixEm.exit161, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158: ; preds = %bb.ai
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !20
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i159: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit161:                      ; preds = %bb.af
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cl
  store i32 %i.ck, ptr %i.do, align 4, !tbaa !87
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2cv8MatShapeixEm.exit161, %bb.ae
  %i.dp = add nuw nsw i64 %.076235, 1             ; 2 uses
  %exitcond248.not = icmp eq i64 %i.dp, %i.bq
  br i1 %exitcond248.not, label %._crit_edge, label %bb.u, !llvm.loop !193

bb.ak:                                            ; preds = %bb.p
  call void @_ZN2cv8MatShape6resizeEmi(ptr noundef nonnull align 4 dereferenceable(52) %27, i64 noundef 2, i32 noundef 0)
  %i.dq = load i32, ptr %27, align 4, !tbaa !86
  %i.dr = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 %i.az, ptr %i.dr, align 4, !tbaa !87
  %i.ds = icmp sgt i32 %i.dq, 1
  br i1 %i.ds, label %_ZN2cv8MatShapeixEm.exit172, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 97) #22
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169: ; preds = %bb.an
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !20
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i170: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit172:                      ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 %i.bd, ptr %i.dz, align 4, !tbaa !87
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN2cv8MatShapeixEm.exit172, %_ZN2cv8MatShapeixEm.exit143
  %i.ea = icmp eq i32 %i.q, 3
  br i1 %i.ea, label %bb.ap, label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.eb = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !71  ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -52
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 -136
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink301 = phi ptr [ %i.eg, %bb.ar ], [ %i.ef, %bb.aq ]
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %29, ptr noundef nonnull align 4 dereferenceable(52) %.sink301)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !64 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !87 ; 2 uses
  %i.em = icmp eq i32 %i.el, 1
  %i.en = icmp eq i32 %i.el, %i.bd
  %or.cond220 = select i1 %i.em, i1 true, i1 %i.en
  br i1 %or.cond220, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %29, i64 noundef 0)
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !87
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__104) #22
  unreachable

bb.av:                                            ; preds = %bb.as
  %i.eq = icmp sgt i32 %i.ei, 1
  br i1 %i.eq, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.er = load i32, ptr %27, align 4, !tbaa !86   ; 3 uses
  %i.es = load i32, ptr %29, align 4, !tbaa !86   ; 3 uses
  %narrow.i185 = call i32 @llvm.smax.i32(i32 %i.es, i32 0)
  %i.et = icmp sgt i32 %i.er, %narrow.i185        ; 4 uses
  %i.eu = select i1 %i.et, i32 %i.er, i32 %i.es   ; 2 uses
  %narrow.i191 = call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %spec.select.i192 = zext nneg i32 %narrow.i191 to i64
  %i.ev = select i1 %i.et, i32 %i.es, i32 %i.er   ; 3 uses
  %narrow.i193 = call i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %spec.select.i194 = zext nneg i32 %narrow.i193 to i64 ; 2 uses
  %i.ew = sub nsw i64 %spec.select.i192, %spec.select.i194
  %.not240 = icmp slt i32 %i.ev, 1
  br i1 %.not240, label %.loopexit, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.aw
  %spec.select.i198 = zext nneg i32 %i.ev to i64
  %narrow.i203 = call i32 @llvm.smax.i32(i32 %i.eu, i32 1)
  %spec.select.i204 = zext nneg i32 %narrow.i203 to i64
  %.sroa.gep213 = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 2 uses
  %.sroa.gep214 = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  %.sroa.sel = select i1 %i.et, ptr %.sroa.gep213, ptr %.sroa.gep214
  %.2.sroa.sel = select i1 %i.et, ptr %.sroa.gep214, ptr %.sroa.gep213
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit208
  %i.ex = add nuw nsw i64 %.0236, 1               ; 2 uses
  %exitcond250.not = icmp eq i64 %i.ex, %spec.select.i194
  br i1 %exitcond250.not, label %.loopexit, label %bb.ay, !llvm.loop !194

bb.ay:                                            ; preds = %.lr.ph238, %bb.ax
  %.0236 = phi i64 [ 0, %.lr.ph238 ], [ %i.ex, %bb.ax ] ; 4 uses
  %exitcond249.not = icmp eq i64 %.0236, %spec.select.i198
  br i1 %exitcond249.not, label %bb.az, label %_ZNK2cv8MatShapeixEm.exit202

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199: ; preds = %bb.bb
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !20
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i200: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit202:                     ; preds = %bb.ay
  %i.fe = add nuw nsw i64 %.0236, %i.ew           ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %spec.select.i204
  br i1 %i.ff, label %_ZNK2cv8MatShapeixEm.exit208, label %bb.bc

bb.bc:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205: ; preds = %bb.be
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !20
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i206: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit208:                     ; preds = %_ZNK2cv8MatShapeixEm.exit202
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %.0236
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !87 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.2.sroa.sel, i64 %i.fe
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !87 ; 2 uses
  %i.fq = icmp eq i32 %i.fn, 1
  %i.fr = icmp eq i32 %i.fp, 1
  %.not86 = icmp eq i32 %i.fn, %i.fp
  %i.fs = or i1 %i.fr, %.not86
  %or.cond92 = select i1 %i.fq, i1 true, i1 %i.fs
  br i1 %or.cond92, label %bb.ax, label %bb.bf

bb.bf:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @__func__._ZNK2cv3dnn15MatMulLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.25, i32 noundef 112) #22
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  unreachable

bb.bi:                                            ; preds = %bb.bf
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.bj:                                            ; preds = %bb.bg
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %30, align 8, !tbaa !26   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.bj
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !20
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.bi ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %i.fu, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.bl

.loopexit:                                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit, %bb.ao
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  ret i1 false

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn89 = phi { ptr, i32 } [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %common.resume
}

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer8getTypesERKSt6vectorIiSaIiEEiiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn15MatMulLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %12 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv3dnn15MatMulLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_, ptr noundef nonnull @.str.25, i32 noundef 125) #22
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %9, align 8, !tbaa !26     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull align 4 dereferenceable(52) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %1, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.s, %bb.i ], [ %i.r, %bb.h ]
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %.sink)
  %i.t = load i32, ptr %11, align 4, !tbaa !86    ; 2 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.u = add nsw i64 %spec.select.i, -2           ; 2 uses
  %narrow.i33 = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %spec.select.i34 = zext nneg i32 %narrow.i33 to i64
  %i.v = icmp ult i64 %i.u, %spec.select.i34
  br i1 %i.v, label %_ZNK2cv8MatShapeixEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !20
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.u
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !87 ; 2 uses
  %i.af = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %11)
  %i.ag = load i32, ptr %12, align 4, !tbaa !86   ; 2 uses
  %narrow.i35 = call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %spec.select.i36 = zext nneg i32 %narrow.i35 to i64
  %i.ah = add nsw i64 %spec.select.i36, -2        ; 2 uses
  %narrow.i37 = call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %spec.select.i38 = zext nneg i32 %narrow.i37 to i64
  %i.ai = icmp ult i64 %i.ah, %spec.select.i38
  br i1 %i.ai, label %_ZNK2cv8MatShapeixEm.exit42, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.14, i32 noundef 103) #22
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.p
  %i.an = load i64, ptr %i.al, align 8, !tbaa !20
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit42:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ap = load i32, ptr %i.af, align 4, !tbaa !87 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ah
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !87
  %i.at = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !43, !range !72, !noundef !73
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !44, !range !72, !noundef !73
  %i.az = load ptr, ptr %2, align 8, !tbaa !122   ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !86 ; 4 uses
  %i.bb = icmp sgt i32 %i.ba, 2
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeixEm.exit42
  %spec.select.i44 = zext nneg i32 %i.ba to i64   ; 2 uses
  %spec.select.i46 = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 9 uses
  %i.bd = add nsw i64 %spec.select.i44, -3
  %.not.not = icmp samesign ult i64 %i.bd, %spec.select.i46
  br i1 %.not.not, label %.lr.ph.split, label %bb.q

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.be = add nsw i64 %spec.select.i44, -2        ; 2 uses
  %xtraiter = and i64 %i.be, 7                    ; 3 uses
  %i.bf = add nsw i32 %i.ba, -3
end_hunk_0
