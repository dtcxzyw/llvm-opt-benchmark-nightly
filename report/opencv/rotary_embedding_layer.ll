begin_hunk_0_@_ZN2cv3dnn24RotaryEmbeddingLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %.not.i.i149 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i149, label %_ZN2cv3dnnL6rotateEPKfPfS2_S2_iiiiib.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gn = invoke noundef zeroext i1 %i.gm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN2cv3dnnL6rotateEPKfPfS2_S2_iiiiib.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #21
  unreachable

bb.ay:                                            ; preds = %.noexc150
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %i.gd, align 8, !tbaa !92 ; 2 uses
  %.not.i5.i147 = icmp eq ptr %i.gr, null
  br i1 %.not.i5.i147, label %_ZNSt14_Function_baseD2Ev.exit6.i148, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = invoke noundef zeroext i1 %i.gr(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6.i148 unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit6.i148:             ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZN2cv3dnnL6rotateEPKfPfS2_S2_iiiiib.exit:        ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN2cv3dnnL6rotateEPKfPfS2_S2_iiiiib.exit, %_ZN2cv3dnnL18rotate_interleavedEPKfPfS2_S2_iiiiib.exit
  %i.gv = load ptr, ptr %20, align 8, !tbaa !62   ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gv, %i.gx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bb, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i ], [ %i.gv, %bb.bb ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #20
  %i.gy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gy, %i.gx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !93

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bb
  %i.gz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.gv, %bb.bb ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !94
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.hf = load ptr, ptr %19, align 8, !tbaa !62   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i153 = icmp eq ptr %i.hf, %i.hh
  br i1 %.not4.i.i.i153, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159, label %.lr.ph.i.i.i154

.lr.ph.i.i.i154:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i154
  %.05.i.i.i155 = phi ptr [ %i.hi, %.lr.ph.i.i.i154 ], [ %i.hf, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i155) #20
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i155, i64 208 ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %i.hi, %i.hh
  br i1 %.not.i.i.i156, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157, label %.lr.ph.i.i.i154, !llvm.loop !93

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157: ; preds = %.lr.ph.i.i.i154
  %.pr.i158 = load ptr, ptr %19, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.hj = phi ptr [ %.pr.i158, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i157 ], [ %i.hf, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i160 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i1.i160, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !94
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i159, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.hp = load ptr, ptr %18, align 8, !tbaa !62   ; 3 uses
  %i.hq = load ptr, ptr %i.s, align 8, !tbaa !61  ; 2 uses
  %.not4.i.i.i162 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not4.i.i.i162, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i168, label %.lr.ph.i.i.i163

.lr.ph.i.i.i163:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161, %.lr.ph.i.i.i163
  %.05.i.i.i164 = phi ptr [ %i.hr, %.lr.ph.i.i.i163 ], [ %i.hp, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i164) #20
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i164, i64 208 ; 2 uses
  %.not.i.i.i165 = icmp eq ptr %i.hr, %i.hq
  br i1 %.not.i.i.i165, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i166, label %.lr.ph.i.i.i163, !llvm.loop !93

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i166: ; preds = %.lr.ph.i.i.i163
  %.pr.i167 = load ptr, ptr %18, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i168

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i168: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i166, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161
  %i.hs = phi ptr [ %.pr.i167, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i166 ], [ %i.hp, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit161 ] ; 3 uses
  %.not.i.i1.i169 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i1.i169, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit170, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i168
  %i.ht = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !94
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hx) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit170

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit170:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i168, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  ret void

.body:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i109, %_ZNSt14_Function_baseD2Ev.exit6.i, %_ZNSt14_Function_baseD2Ev.exit6.i148, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77, %bb.v, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.y, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.dp, %bb.af ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ch, %bb.y ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i77 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i109 ], [ %i.gq, %_ZNSt14_Function_baseD2Ev.exit6.i148 ], [ %i.fx, %_ZNSt14_Function_baseD2Ev.exit6.i ], [ %i.ap, %bb.k ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69 ], [ %i.cg, %bb.v ], [ %i.do, %bb.ae ], [ %i.es, %bb.am ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121 ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #6

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn24RotaryEmbeddingLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  ret i1 %i.a
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #6

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 5 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %10 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %1, align 8, !tbaa !98     ; 13 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 52
  %i.j = icmp ugt i64 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__219) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.e, align 4, !tbaa !63
  %i.l = icmp eq i32 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.n, -1
  %or.cond = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__225) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !tbaa !63   ; 4 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !63
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__231) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %i.r, 3
  %i.v = icmp ne i64 %i.h, 156
  %or.cond103 = or i1 %i.v, %i.u
  br i1 %or.cond103, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZNK2cv8MatShapeixEm.exit.lr.ph, label %._crit_edge

_ZNK2cv8MatShapeixEm.exit.lr.ph:                  ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 2 uses
  br label %_ZNK2cv8MatShapeixEm.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__235) #22
  unreachable

bb.i:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond109.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.i, %.preheader
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.e)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.aa = load ptr, ptr %1, align 8, !tbaa !98    ; 6 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 52
  %i.af = icmp ugt i64 %i.ae, 3
  br i1 %i.af, label %bb.k, label %bb.w

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %11, label %_ZNK2cv8MatShapeixEm.exit69

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i67
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84 ], [ %14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i67 ]
  resume { ptr, i32 } %common.resume.op

11:                                               ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.15, i32 noundef 103) #22
          to label %12 unwind label %13

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %11
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %7, align 8, !tbaa !55      ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66: ; preds = %13
  %18 = load i64, ptr %16, align 8, !tbaa !28
  %19 = add i64 %18, 1
  call void @_ZdlPvm(ptr noundef %15, i64 noundef %19) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i67: ; preds = %13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit69:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !66
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !66
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit69
  %i.al = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.p, i64 noundef %indvars.iv)
  %i.am = load i32, ptr %i.al, align 4, !tbaa !66
  %i.an = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.q, i64 noundef %indvars.iv)
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
  %i.ap = icmp eq i32 %i.am, %i.ao
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext %i.ap, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__245) #22
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 156
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__256) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !63
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %_ZNK2cv8MatShapeixEm.exit80, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__260) #22
  unreachable

_ZNK2cv8MatShapeixEm.exit80:                      ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !66 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 172
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !66 ; 2 uses
  %i.bd = load i32, ptr %i.p, align 4, !tbaa !63  ; 2 uses
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  %narrow.i81 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.bf = icmp ult i32 %i.be, %narrow.i81
  br i1 %i.bf, label %_ZNK2cv8MatShapeixEm.exit86, label %bb.p

bb.p:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.15, i32 noundef 103) #22
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.r
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !28
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i84: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit86:                      ; preds = %_ZNK2cv8MatShapeixEm.exit80
  %i.bm = zext nneg i32 %i.be to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.bc, ptr %i.bq, align 4, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !66
  call void @_ZN2cv8MatShapeC1ESt16initializer_listIiE(ptr noundef nonnull align 4 dereferenceable(52) %9, ptr nonnull %i.a, i64 3)
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !95 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit86
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.bt, ptr noundef nonnull align 4 dereferenceable(52) %9)
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !95
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !95
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

bb.t:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit86
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bt, ptr noundef nonnull align 4 dereferenceable(52) %9)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bc, ptr %i.by, align 4, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.bp, ptr %i.bz, align 4, !tbaa !66
  call void @_ZN2cv8MatShapeC1ESt16initializer_listIiE(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr nonnull %i.b, i64 3)
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !95 ; 3 uses
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !100
  %.not.i.i87 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i87, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.ca, ptr noundef nonnull align 4 dereferenceable(52) %10)
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !95
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  store ptr %i.cd, ptr %i.bs, align 8, !tbaa !95
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit88

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ca, ptr noundef nonnull align 4 dereferenceable(52) %10)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit88

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit88: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.y

bb.w:                                             ; preds = %._crit_edge
  %i.ce = load i32, ptr %i.p, align 4, !tbaa !63
  %i.cf = icmp eq i32 %i.ce, 3
  br i1 %i.cf, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__272) #22
  unreachable

bb.y:                                             ; preds = %bb.w, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE9push_backEOS1_.exit88
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !63
  switch i32 %i.cg, label %bb.ad [
    i32 4, label %_ZNK2cv8MatShapeixEm.exit94
    i32 3, label %bb.aa
  ]

_ZNK2cv8MatShapeixEm.exit94:                      ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !66
  %i.cj = and i32 %i.ci, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit94
  %i.cl = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i64 noundef 3)
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !66
  %i.cn = and i32 %i.cm, 1
  %i.co = icmp eq i32 %i.cn, 0
  call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext %i.co, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__278) #22
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cp = load i32, ptr %i.m, align 4, !tbaa !29  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %_ZNK2cv8MatShapeixEm.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__280) #22
  unreachable

_ZNK2cv8MatShapeixEm.exit100:                     ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !66
  %i.ct = srem i32 %i.cs, %i.cp
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit100
  %i.cv = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.e, i64 noundef 2)
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !66
  %i.cx = load i32, ptr %i.m, align 4, !tbaa !29
  %i.cy = srem i32 %i.cw, %i.cx
  %i.cz = icmp eq i32 %i.cy, 0
  call void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext %i.cz, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn24RotaryEmbeddingLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__282) #22
  unreachable

bb.ad:                                            ; preds = %bb.y, %_ZNK2cv8MatShapeixEm.exit100, %_ZNK2cv8MatShapeixEm.exit94
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn24RotaryEmbeddingLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ugt i64 %i.f, 12
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 3 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !103    ; 7 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp eq ptr %i.i, %i.j
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %bb.c

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #18 ; 3 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !66
  store i32 %i.p, ptr %i.o, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %4, align 8, !tbaa !103
  store ptr %i.q, ptr %i.r, align 8, !tbaa !101
  store ptr %i.q, ptr %i.h, align 8, !tbaa !104
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #19
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101  ; 7 uses
  %i.u = icmp eq ptr %i.t, %i.j
  %i.v = load i32, ptr %i.c, align 4, !tbaa !66   ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i12.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.c
  %i.w = ptrtoaddr ptr %i.t to i64
  %i.x = sub i64 %i.l, %i.w                       ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !66
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader28

.lr.ph.i.i.i.i.i.i.i.i.preheader28:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader28, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader28 ] ; 3 uses
  store i32 %i.v, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.06.i.i.i.i.i.i.i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !108

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %i.ag = getelementptr i8, ptr %i.t, i64 4
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

.lr.ph.i.i.i.i12.i:                               ; preds = %bb.c
  store i32 %i.v, ptr %i.j, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.ah
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.lr.ph.i.i.i.i12.i
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit

_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.b, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, %.lr.ph.i.i.i.i12.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  br i1 %i.g, label %bb.d, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit14

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !66
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !101
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %5, align 8, !tbaa !103   ; 4 uses
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 3 uses
end_hunk_0
