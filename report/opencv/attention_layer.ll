inline.NumInlined: 1129
inline.NumDeleted: 486
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv3dnn18AttentionLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.dz = phi ptr [ %.pre.i48, %.noexc50 ], [ %i.dq, %bb.u ], [ %i.dq, %bb.v ], [ %i.dq, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i40 = icmp eq i64 %i.dc, 0
  br i1 %.not.i40, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit52, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i39, %.noexc51
  %.024.i42 = phi i64 [ %i.ec, %.noexc51 ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i39 ]
  %.02023.i43 = phi ptr [ %i.ea, %.noexc51 ], [ %i.dz, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i39 ] ; 2 uses
  %.02122.i44 = phi ptr [ %i.eb, %.noexc51 ], [ %i.dj, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i39 ] ; 2 uses
  invoke void @_ZN2cv3dnn13fastGemmPackBEbmmPKfmPfRKNS0_11FastGemmOptE(i1 noundef zeroext false, i64 noundef %i.df, i64 noundef %i.dg, ptr noundef %.02122.i44, i64 noundef %i.dk, ptr noundef %.02023.i43, ptr noundef nonnull align 1 dereferenceable(5) %i.d)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %.lr.ph.i41
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.02023.i43, i64 %i.dm
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.02122.i44, i64 %i.df
  %i.ec = add nuw i64 %.024.i42, 1                ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %i.ec, %i.dc
  br i1 %exitcond.not.i45, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit52, label %.lr.ph.i41, !llvm.loop !134

_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit52: ; preds = %.noexc51, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i39
  %i.ed = load i64, ptr %i.bv, align 8, !tbaa !43 ; 3 uses
  %i.ee = load ptr, ptr %i.by, align 8, !tbaa !79
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !75 ; 3 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !124 ; 2 uses
  %i.ei = load ptr, ptr %i.bn, align 8, !tbaa !79 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !75
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !75
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.em
  %i.eo = load i64, ptr %i.bm, align 8, !tbaa !126
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.eq = invoke noundef i64 @_ZN2cv3dnn17fastGemmPackBSizeEmmRKNS0_11FastGemmOptE(i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull align 1 dereferenceable(5) %i.d)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63:                                         ; preds = %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit52
  %i.er = mul i64 %i.eq, %i.ed                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !132
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !133 ; 3 uses
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !87 ; 5 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 2                 ; 3 uses
  %i.ez = icmp ugt i64 %i.er, %i.ey
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc63
  %i.fa = sub nuw i64 %i.er, %i.ey
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr %i.et, i64 noundef %i.fa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.w
  %.pre.i62 = load ptr, ptr %i.ep, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53

bb.x:                                             ; preds = %.noexc63
  %i.fb = icmp ult i64 %i.er, %i.ey
  br i1 %i.fb, label %bb.y, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.er ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.et, %i.fc
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i61

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i61:    ; preds = %bb.y
  store ptr %i.fc, ptr %i.es, align 8, !tbaa !133
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53:        ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i61, %bb.y, %bb.x, %.noexc64
  %i.fd = phi ptr [ %.pre.i62, %.noexc64 ], [ %i.eu, %bb.x ], [ %i.eu, %bb.y ], [ %i.eu, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i54 = icmp eq i64 %i.ed, 0
  br i1 %.not.i54, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit66, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53, %.noexc65
  %.024.i56 = phi i64 [ %i.fg, %.noexc65 ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53 ]
  %.02023.i57 = phi ptr [ %i.fe, %.noexc65 ], [ %i.fd, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53 ] ; 2 uses
  %.02122.i58 = phi ptr [ %i.ff, %.noexc65 ], [ %i.en, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53 ] ; 2 uses
  invoke void @_ZN2cv3dnn13fastGemmPackBEbmmPKfmPfRKNS0_11FastGemmOptE(i1 noundef zeroext false, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef %.02122.i58, i64 noundef %i.eo, ptr noundef %.02023.i57, ptr noundef nonnull align 1 dereferenceable(5) %i.d)
          to label %.noexc65 unwind label %.loopexit

.noexc65:                                         ; preds = %.lr.ph.i55
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.02023.i57, i64 %i.eq
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.02122.i58, i64 %i.eg
  %i.fg = add nuw i64 %.024.i56, 1                ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %i.fg, %i.ed
  br i1 %exitcond.not.i59, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit66, label %.lr.ph.i55, !llvm.loop !134

_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit66: ; preds = %.noexc65, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i53
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 1, ptr %i.fh, align 1, !tbaa !84
  br label %bb.ac

bb.z:                                             ; preds = %bb.a
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.aa:                                            ; preds = %bb.h, %bb.d, %bb.b
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.l, %bb.k
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit:                                        ; preds = %.lr.ph.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i41
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit73 = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.q, %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit, %bb.t, %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit52, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.ac:                                            ; preds = %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit66, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.fl = load ptr, ptr %9, align 8, !tbaa !117   ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fl, %i.fn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i ], [ %i.fl, %bb.ac ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.fo, %i.fn
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ac
  %i.fp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fl, %bb.ac ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !137
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

.body33:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30
  %.pn = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %i.fk, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit73, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %bb.aa, %.body33
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body33 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fj, %bb.aa ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.fi, %bb.z ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer7forwardERSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EESB_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %12 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %13 = alloca %"class.std::vector", align 8      ; 14 uses
  %14 = alloca %"class.std::vector", align 8      ; 12 uses
  %15 = alloca %"class.std::vector", align 8      ; 13 uses
  %i.d = alloca [3 x ptr], align 16               ; 7 uses
  %i.e = alloca [3 x i64], align 16               ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %i.f = alloca [3 x ptr], align 16               ; 7 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.cv::Range", align 4        ; 6 uses
  %21 = alloca %"class.std::function", align 8    ; 9 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %22 = alloca %"struct.cv::MatShape", align 4    ; 12 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %23 = alloca %class.anon.44, align 8            ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %i.p = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %"class.cv::Range", align 4        ; 6 uses
  %27 = alloca %"class.std::function", align 8    ; 9 uses
  %28 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %29 = alloca %"class.cv::Range", align 4        ; 6 uses
  %30 = alloca %"class.std::function", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E25__cv_trace_location_fn272)
  %i.u = load ptr, ptr %12, align 8, !tbaa !138
  %.not628 = icmp eq ptr %i.u, null
  br i1 %.not628, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  invoke void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E22__cv_trace_arg_name273, ptr noundef %i.w)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.y = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %i.y, 7
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.el unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 265 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !84, !range !141, !noundef !142
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !125 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !125
  %i.ah = icmp eq ptr %i.ae, %i.ag
  %i.ai = load ptr, ptr %13, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %i.ak = select i1 %i.ah, ptr %i.aj, ptr %i.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !127 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !43 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !75 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !124 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !126
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.ay = invoke noundef i64 @_ZN2cv3dnn17fastGemmPackBSizeEmmRKNS0_11FastGemmOptE(i64 noundef %i.ar, i64 noundef %i.at, ptr noundef nonnull align 1 dereferenceable(5) %i.ax)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.az = mul i64 %i.ay, %i.ao                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !133 ; 3 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !87 ; 5 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2                 ; 3 uses
  %i.bh = icmp ugt i64 %i.az, %i.bg
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.bi = sub nuw i64 %i.az, %i.bg
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr %i.bb, i64 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc211:                                        ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i

bb.m:                                             ; preds = %.noexc
  %i.bj = icmp ult i64 %i.az, %i.bg
  br i1 %i.bj, label %bb.n, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.az ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.bk
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.n
  store ptr %i.bk, ptr %i.ba, align 8, !tbaa !133
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i:          ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i, %bb.n, %bb.m, %.noexc211
  %i.bl = phi ptr [ %.pre.i, %.noexc211 ], [ %i.bc, %bb.m ], [ %i.bc, %bb.n ], [ %i.bc, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i, %.noexc212
  %.024.i = phi i64 [ %i.bo, %.noexc212 ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i ]
  %.02023.i = phi ptr [ %i.bm, %.noexc212 ], [ %i.bl, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i ] ; 2 uses
  %.02122.i = phi ptr [ %i.bn, %.noexc212 ], [ %i.am, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i ] ; 2 uses
  invoke void @_ZN2cv3dnn13fastGemmPackBEbmmPKfmPfRKNS0_11FastGemmOptE(i1 noundef zeroext false, i64 noundef %i.ar, i64 noundef %i.at, ptr noundef %.02122.i, i64 noundef %i.av, ptr noundef %.02023.i, ptr noundef nonnull align 1 dereferenceable(5) %i.ax)
          to label %.noexc212 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc212:                                        ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.02023.i, i64 %i.ay
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.02122.i, i64 %i.ar
  %i.bo = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %i.ao
  br i1 %exitcond.not.i, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit, label %.lr.ph.i, !llvm.loop !134

_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit: ; preds = %.noexc212, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !43 ; 3 uses
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !75 ; 3 uses
  %i.bt = load i64, ptr %i.as, align 8, !tbaa !124 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !79
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !75
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.bw
  %i.by = load i64, ptr %i.au, align 8, !tbaa !126
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ca = invoke noundef i64 @_ZN2cv3dnn17fastGemmPackBSizeEmmRKNS0_11FastGemmOptE(i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull align 1 dereferenceable(5) %i.ax)
          to label %.noexc223 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc223:                                        ; preds = %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit
  %i.cb = mul i64 %i.ca, %i.bp                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !132
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !133 ; 3 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !87 ; 5 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 2                 ; 3 uses
  %i.cj = icmp ugt i64 %i.cb, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc223
  %i.ck = sub nuw i64 %i.cb, %i.ci
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.cd, i64 noundef %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc224 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224:                                        ; preds = %bb.o
  %.pre.i222 = load ptr, ptr %i.bz, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213

bb.p:                                             ; preds = %.noexc223
  %i.cl = icmp ult i64 %i.cb, %i.ci
  br i1 %i.cl, label %bb.q, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cb ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %i.cd, %i.cm
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i221

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i221:   ; preds = %bb.q
  store ptr %i.cm, ptr %i.cc, align 8, !tbaa !133
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213:       ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i221, %bb.q, %bb.p, %.noexc224
  %i.cn = phi ptr [ %.pre.i222, %.noexc224 ], [ %i.ce, %bb.p ], [ %i.ce, %bb.q ], [ %i.ce, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i214 = icmp eq i64 %i.bp, 0
  br i1 %.not.i214, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit226, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213, %.noexc225
  %.024.i216 = phi i64 [ %i.cq, %.noexc225 ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213 ]
  %.02023.i217 = phi ptr [ %i.co, %.noexc225 ], [ %i.cn, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213 ] ; 2 uses
  %.02122.i218 = phi ptr [ %i.cp, %.noexc225 ], [ %i.bx, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213 ] ; 2 uses
  invoke void @_ZN2cv3dnn13fastGemmPackBEbmmPKfmPfRKNS0_11FastGemmOptE(i1 noundef zeroext false, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef %.02122.i218, i64 noundef %i.by, ptr noundef %.02023.i217, ptr noundef nonnull align 1 dereferenceable(5) %i.ax)
          to label %.noexc225 unwind label %.loopexit.split-lp.loopexit

.noexc225:                                        ; preds = %.lr.ph.i215
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.02023.i217, i64 %i.ca
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.02122.i218, i64 %i.bs
  %i.cq = add nuw i64 %.024.i216, 1               ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %i.cq, %i.bp
  br i1 %exitcond.not.i219, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit226, label %.lr.ph.i215, !llvm.loop !134

_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit226: ; preds = %.noexc225, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i213
  %i.cr = load i64, ptr %i.an, align 8, !tbaa !43 ; 3 uses
  %i.cs = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !75 ; 3 uses
  %i.cv = load i64, ptr %i.as, align 8, !tbaa !124 ; 2 uses
  %i.cw = load ptr, ptr %i.bu, align 8, !tbaa !79 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !75
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !75
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load i64, ptr %i.au, align 8, !tbaa !126
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.de = invoke noundef i64 @_ZN2cv3dnn17fastGemmPackBSizeEmmRKNS0_11FastGemmOptE(i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(5) %i.ax)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc237:                                        ; preds = %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit226
  %i.df = mul i64 %i.de, %i.cr                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !133 ; 3 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !87 ; 5 uses
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = ashr exact i64 %i.dl, 2                 ; 3 uses
  %i.dn = icmp ugt i64 %i.df, %i.dm
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc237
  %i.do = sub nuw i64 %i.df, %i.dm
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.dh, i64 noundef %i.do, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %bb.r
  %.pre.i236 = load ptr, ptr %i.dd, align 8, !tbaa !87
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227

bb.s:                                             ; preds = %.noexc237
  %i.dp = icmp ult i64 %i.df, %i.dm
  br i1 %i.dp, label %bb.t, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df ; 2 uses
  %.not.i.i.i234 = icmp eq ptr %i.dh, %i.dq
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i235

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i235:   ; preds = %bb.t
  store ptr %i.dq, ptr %i.dg, align 8, !tbaa !133
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227:       ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i235, %bb.t, %bb.s, %.noexc238
  %i.dr = phi ptr [ %.pre.i236, %.noexc238 ], [ %i.di, %bb.s ], [ %i.di, %bb.t ], [ %i.di, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i.i235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i228 = icmp eq i64 %i.cr, 0
  br i1 %.not.i228, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit240, label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227, %.noexc239
  %.024.i230 = phi i64 [ %i.du, %.noexc239 ], [ 0, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227 ]
  %.02023.i231 = phi ptr [ %i.ds, %.noexc239 ], [ %i.dr, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227 ] ; 2 uses
  %.02122.i232 = phi ptr [ %i.dt, %.noexc239 ], [ %i.db, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227 ] ; 2 uses
  invoke void @_ZN2cv3dnn13fastGemmPackBEbmmPKfmPfRKNS0_11FastGemmOptE(i1 noundef zeroext false, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef %.02122.i232, i64 noundef %i.dc, ptr noundef %.02023.i231, ptr noundef nonnull align 1 dereferenceable(5) %i.ax)
          to label %.noexc239 unwind label %.loopexit

.noexc239:                                        ; preds = %.lr.ph.i229
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.02023.i231, i64 %i.de
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.02122.i232, i64 %i.cu
  %i.du = add nuw i64 %.024.i230, 1               ; 2 uses
  %exitcond.not.i233 = icmp eq i64 %i.du, %i.cr
  br i1 %exitcond.not.i233, label %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit240, label %.lr.ph.i229, !llvm.loop !134

_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit240: ; preds = %.noexc239, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit.i227
  store i8 1, ptr %i.aa, align 1, !tbaa !84
  br label %bb.v

bb.u:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i229
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i215
  %lpad.loopexit629 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i
  %lpad.loopexit632 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.l, %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit, %bb.o, %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit226, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %_ZN2cv3dnnL10packWeightEmmmPKfmRSt6vectorIfSaIfEERKNS0_11FastGemmOptE.exit240, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !87 ; 2 uses
  store ptr %i.dx, ptr %i.d, align 16, !tbaa !143
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !143
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ed, ptr %i.eb, align 16, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !133
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.dx to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 10 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !43 ; 4 uses
  %i.em = udiv i64 %i.ej, %i.el
  store i64 %i.em, ptr %i.e, align 16, !tbaa !75
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !133
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.ea to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2
  %i.eu = udiv i64 %i.et, %i.el
  store i64 %i.eu, ptr %i.en, align 8, !tbaa !75
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !133
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ed to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 2
  %i.fc = udiv i64 %i.fb, %i.el
  store i64 %i.fc, ptr %i.ev, align 16, !tbaa !75
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !135 ; 3 uses
  %i.ff = load ptr, ptr %15, align 8, !tbaa !117  ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 208
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !83, !range !141, !noundef !142 ; 2 uses
  %narrow = add nuw nsw i8 %i.fl, 3
  %i.fm = zext nneg i8 %narrow to i64
  %i.fn = icmp eq i64 %i.fj, %i.fm
  br i1 %i.fn, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.2, i32 noundef 299) #25
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %16, align 8, !tbaa !39   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !28
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.z
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.z ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fp, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ey

bb.ab:                                            ; preds = %bb.v
  %i.fv = trunc nuw i8 %i.fl to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !79 ; 3 uses
  br i1 %i.fv, label %bb.ac, label %._ZN2cv3dnnL20precompRotationTableEPfmm.exit_crit_edge

._ZN2cv3dnnL20precompRotationTableEPfmm.exit_crit_edge: ; preds = %bb.ab
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !123
  br label %_ZN2cv3dnnL20precompRotationTableEPfmm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds i8, ptr %i.fe, i64 -184
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !127
  %i.ga = load i64, ptr %i.fx, align 8, !tbaa !75 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !75
  %i.gd = icmp eq i64 %i.ga, %i.gc
  br i1 %i.gd, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.2, i32 noundef 306) #25
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

bb.ah:                                            ; preds = %bb.ae
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %18, align 8, !tbaa !39   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.ah
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !28
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %bb.ag
  %.pn164 = phi { ptr, i32 } [ %i.ge, %bb.ag ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %i.gf, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.ey

bb.ai:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !123 ; 4 uses
  %i.gn = uitofp i64 %i.ga to float
  %i.go = fdiv nnan float 1.000000e+00, %i.gn
  %i.gp = lshr i64 %i.ga, 1                       ; 2 uses
  %i.gq = icmp ne i64 %i.gm, 0
  %i.gr = icmp ne i64 %i.gp, 0
  %or.cond.i = and i1 %i.gr, %i.gq
  br i1 %or.cond.i, label %.lr.ph.i244, label %_ZN2cv3dnnL20precompRotationTableEPfmm.exit

.lr.ph.i244:                                      ; preds = %bb.ai, %._crit_edge.i
  %.022.i = phi i64 [ %i.hg, %._crit_edge.i ], [ 0, %bb.ai ] ; 3 uses
  %i.gs = mul i64 %.022.i, %i.ga
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.gs
  %i.gu = uitofp i64 %.022.i to float
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i244
  %.02021.i = phi i64 [ 0, %.lr.ph.i244 ], [ %i.hf, %bb.aj ] ; 3 uses
  %i.gv = uitofp nneg i64 %.02021.i to float
  %i.gw = fmul nnan float %i.gv, -2.000000e+00
  %i.gx = fmul float %i.go, %i.gw
  %i.gy = fmul float %i.gx, f0x41135D8E
  %i.gz = call noundef float @expf(float noundef %i.gy) #23
  %i.ha = fmul float %i.gz, %i.gu                 ; 2 uses
  %i.hb = call noundef float @sinf(float noundef %i.ha) #23
  %.idx.i = shl nuw i64 %.02021.i, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.i ; 2 uses
  store float %i.hb, ptr %i.hc, align 4, !tbaa !132
  %i.hd = call noundef float @cosf(float noundef %i.ha) #23
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %i.hd, ptr %i.he, align 4, !tbaa !132
  %i.hf = add nuw nsw i64 %.02021.i, 1            ; 2 uses
  %exitcond.not.i245 = icmp eq i64 %i.hf, %i.gp
  br i1 %exitcond.not.i245, label %._crit_edge.i, label %bb.aj, !llvm.loop !144

._crit_edge.i:                                    ; preds = %bb.aj
  %i.hg = add nuw i64 %.022.i, 1                  ; 2 uses
  %exitcond26.not.i = icmp eq i64 %i.hg, %i.gm
  br i1 %exitcond26.not.i, label %_ZN2cv3dnnL20precompRotationTableEPfmm.exit, label %.lr.ph.i244, !llvm.loop !145

_ZN2cv3dnnL20precompRotationTableEPfmm.exit:      ; preds = %._crit_edge.i, %._ZN2cv3dnnL20precompRotationTableEPfmm.exit_crit_edge, %bb.ai
  %i.hh = phi i64 [ %.pre, %._ZN2cv3dnnL20precompRotationTableEPfmm.exit_crit_edge ], [ %i.gm, %bb.ai ], [ %i.gm, %._crit_edge.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !127 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 10 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !122 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 12 uses
  %i.hn = mul i64 %i.hh, %i.hl                    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !79 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !75
  %i.hr = mul i64 %i.hq, %i.hn
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hr ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !75
  %i.hv = mul i64 %i.hu, %i.hn
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store ptr %i.hj, ptr %i.f, align 16, !tbaa !143
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.hs, ptr %i.hx, align 8, !tbaa !143
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.hw, ptr %i.hy, align 16, !tbaa !143
  %i.hz = load ptr, ptr %13, align 8, !tbaa !117  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !125
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !125 ; 2 uses
  %i.ie = icmp eq ptr %i.ib, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 416
  %i.ig = getelementptr inbounds i8, ptr %i.id, i64 -208
  %i.ih = select i1 %i.ie, ptr %i.if, ptr %i.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !127
  store ptr %i.ij, ptr %i.g, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !127
  store ptr %i.il, ptr %i.h, align 8, !tbaa !143
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  store i8 0, ptr %i.in, align 4, !tbaa !146
  %i.io = mul i64 %i.el, 3
  %i.ip = mul i64 %i.io, %i.hl                    ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.ir = load i64, ptr %i.fx, align 8, !tbaa !75
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.it = load i64, ptr %i.is, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.iu = trunc i64 %i.ip to i32
  store i32 0, ptr %20, align 4, !tbaa !147
  %i.iv = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !149
  %i.iw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  %i.ix = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %bb.ak unwind label %bb.ba     ; 8 uses

bb.ak:                                            ; preds = %_ZN2cv3dnnL20precompRotationTableEPfmm.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.iz = getelementptr inbounds i8, ptr %i.fe, i64 -208
  store ptr %0, ptr %i.ix, align 16, !tbaa !150
  %.sroa.5529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.f, ptr %.sroa.5529.0..sroa_idx, align 8, !tbaa !152
  %.sroa.6530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr %i.h, ptr %.sroa.6530.0..sroa_idx, align 16, !tbaa !152
  %.sroa.7531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store ptr %i.d, ptr %.sroa.7531.0..sroa_idx, align 8, !tbaa !152
  %.sroa.8532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store ptr %i.e, ptr %.sroa.8532.0..sroa_idx, align 16, !tbaa !155
  %.sroa.9533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store ptr %i.g, ptr %.sroa.9533.0..sroa_idx, align 8, !tbaa !152
  %.sroa.10534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  store ptr %i.iz, ptr %.sroa.10534.0..sroa_idx, align 16, !tbaa !125
  store ptr %i.ix, ptr %21, align 8, !tbaa !156
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.iy, align 8, !tbaa !157
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.iw, align 8, !tbaa !160
  %i.ja = mul i64 %i.ip, %i.hh
  %i.jb = mul i64 %i.ja, %i.ir
  %i.jc = mul i64 %i.jb, %i.it
  %i.jd = uitofp i64 %i.jc to double
  %i.je = fmul nnan double %i.jd, f0x3F50000000000000
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef align 8 %21, double noundef %i.je)
          to label %bb.al unwind label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !160 ; 2 uses
  %.not.i247 = icmp eq ptr %i.jf, null
  br i1 %.not.i247, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jg = invoke noundef zeroext i1 %i.jf(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  call void @__clang_call_terminate(ptr %i.ji) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.jj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !135
  %i.jl = load ptr, ptr %13, align 8, !tbaa !117
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = sdiv exact i64 %i.jo, 208
  %i.jq = trunc i64 %i.jp to i32                  ; 2 uses
  %i.jr = load ptr, ptr %i.ia, align 8, !tbaa !125
  %i.js = load ptr, ptr %i.ic, align 8, !tbaa !125
  %i.jt = icmp eq ptr %i.jr, %i.js                ; 2 uses
  %i.ju = icmp slt i32 %i.jq, 2
  %or.cond.not = or i1 %i.jt, %i.ju
  br i1 %or.cond.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.jv = icmp sgt i32 %i.jq, 3
  %i.jw = and i1 %i.jt, %i.jv
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ao
  %i.jx = phi i1 [ true, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.jw, %bb.ao ]
  %i.jy = invoke noundef zeroext i1 @_ZN2cv3dnn13mlasAvailableEv()
          to label %bb.aq unwind label %bb.be

bb.aq:                                            ; preds = %bb.ap
  %.not2 = xor i1 %i.jy, true
  %or.cond4 = or i1 %i.jx, %.not2
  %.pre664.a = load i64, ptr %i.hk, align 8, !tbaa !122 ; 7 uses
  br i1 %or.cond4, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not = icmp eq i64 %.pre664.a, 0
  br i1 %.not, label %bb.bi, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jz = load i64, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %.not171 = icmp eq i64 %i.jz, 0
  br i1 %.not171, label %bb.bi, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ka = load i64, ptr %i.hm, align 8, !tbaa !123 ; 2 uses
  %.not172 = icmp eq i64 %i.ka, 0
  br i1 %.not172, label %bb.bi, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kb = load ptr, ptr %i.iq, align 8, !tbaa !79 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !75 ; 2 uses
  %.not173 = icmp eq i64 %i.kc, 0
  br i1 %.not173, label %bb.bi, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !75 ; 2 uses
  %.not174 = icmp eq i64 %i.ke, 0
  br i1 %.not174, label %bb.bi, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kf = trunc i64 %.pre664.a to i32
  %i.kg = trunc i64 %i.jz to i32
  %i.kh = trunc i64 %i.ka to i32                  ; 3 uses
  %i.ki = trunc i64 %i.kc to i32
  %i.kj = trunc i64 %i.ke to i32                  ; 2 uses
  %.sroa.speculated520 = call i32 @llvm.smin.i32(i32 %i.kh, i32 256) ; 4 uses
  %i.kk = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.kk, i32 1) ; 2 uses
  %i.kl = invoke noundef i64 @_ZN2cv3dnn38mlasFlashAttentionBufferBytesPerThreadEiii(i32 noundef %.sroa.speculated520, i32 noundef %.sroa.speculated520, i32 noundef %i.kj)
          to label %bb.ay unwind label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.kn = zext nneg i32 %.sroa.speculated to i64
  %i.ko = mul i64 %i.kl, %i.kn
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.km, i64 noundef %i.ko)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.kp = load ptr, ptr %14, align 8, !tbaa !117
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !127
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !81
  %i.ku = load ptr, ptr %i.km, align 8, !tbaa !85
  %i.kv = invoke noundef zeroext i1 @_ZN2cv3dnn18mlasFlashAttentionEPKfS2_S2_PfiiiiiifiiPvi(ptr noundef %i.hj, ptr noundef %i.hs, ptr noundef %i.hw, ptr noundef %i.kr, i32 noundef %i.kf, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.kh, i32 noundef %i.ki, i32 noundef %i.kj, float noundef %i.kt, i32 noundef %.sroa.speculated520, i32 noundef %.sroa.speculated520, ptr noundef %i.ku, i32 noundef %.sroa.speculated)
          to label %bb.bh unwind label %bb.bg

bb.ba:                                            ; preds = %_ZN2cv3dnnL20precompRotationTableEPfmm.exit
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit251

bb.bb:                                            ; preds = %bb.ak
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %i.iw, align 8, !tbaa !160 ; 2 uses
  %.not.i250 = icmp eq ptr %i.ky, null
  br i1 %.not.i250, label %_ZNSt14_Function_baseD2Ev.exit251, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kz = invoke noundef zeroext i1 %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit251 unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit251:                ; preds = %bb.bc, %bb.bb, %bb.ba
  %.pn168 = phi { ptr, i32 } [ %i.kw, %bb.ba ], [ %i.kx, %bb.bb ], [ %i.kx, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.ex

bb.be:                                            ; preds = %bb.ap
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.bf:                                            ; preds = %bb.aw
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.bg:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.bh:                                            ; preds = %bb.az
  br i1 %i.kv, label %bb.eh, label %._crit_edge662

._crit_edge662:                                   ; preds = %bb.bh
  %.pre663.a = load i64, ptr %i.hk, align 8, !tbaa !122
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge662, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.lf = phi i64 [ %.pre663.a, %._crit_edge662 ], [ %.pre664.a, %bb.av ], [ %.pre664.a, %bb.au ], [ %.pre664.a, %bb.at ], [ %.pre664.a, %bb.as ], [ 0, %bb.ar ], [ %.pre664.a, %bb.aq ]
  %i.lg = load ptr, ptr %15, align 8, !tbaa !117  ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 232 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !127 ; 2 uses
  store ptr %i.lj, ptr %i.i, align 8, !tbaa !143
  %i.lk = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.ll = mul i64 %i.lk, %i.lf                    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.lm = load i64, ptr %i.hm, align 8, !tbaa !123 ; 4 uses
  %i.ln = mul i64 %i.lm, %i.lm                    ; 4 uses
  store i64 %i.ln, ptr %i.j, align 8, !tbaa !75
  %i.lo = load ptr, ptr %i.iq, align 8, !tbaa !79
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !75 ; 2 uses
  %i.lq = mul i64 %i.lp, %i.lm                    ; 3 uses
  %i.lr = icmp ugt i64 %i.ll, 1152921504606846975
  br i1 %i.lr, label %bb.bj, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc252 unwind label %bb.bn

.noexc252:                                        ; preds = %bb.bj
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.bi
  %.not.i.i.i.i = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ls = shl nuw nsw i64 %i.ll, 3                ; 3 uses
  %i.lt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #21
          to label %.noexc253 unwind label %bb.bn ; 11 uses

.noexc253:                                        ; preds = %bb.bk
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.ll ; 5 uses
  store i64 0, ptr %i.lt, align 8, !tbaa !75
  %i.lv = add nsw i64 %i.ll, -1                   ; 4 uses
  %i.lw = icmp eq i64 %i.lv, 0                    ; 3 uses
  br i1 %i.lw, label %bb.bl, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc253
  %i.lx = getelementptr i8, ptr %i.lt, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.lv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.lx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !75
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc253, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ly = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #21
          to label %.noexc261 unwind label %_ZNSt6vectorImSaImEED2Ev.exit404.thread ; 10 uses

.noexc261:                                        ; preds = %bb.bl
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.ll ; 4 uses
  store i64 0, ptr %i.ly, align 8, !tbaa !75
  br i1 %i.lw, label %bb.bm, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i256

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i256: ; preds = %.noexc261
  %i.ma = getelementptr i8, ptr %i.ly, i64 8
  %.idx.i.i.i.i.i.i.i257 = shl nuw nsw i64 %i.lv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ma, i8 0, i64 %.idx.i.i.i.i.i.i.i257, i1 false), !tbaa !75
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc261, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i256
  %i.mb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #21
          to label %.noexc270 unwind label %_ZNSt6vectorImSaImEED2Ev.exit402.thread ; 9 uses

.noexc270:                                        ; preds = %bb.bm
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.ll ; 3 uses
  store i64 0, ptr %i.mb, align 8, !tbaa !75
  br i1 %i.lw, label %.lr.ph.preheader, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271

_ZNSt6vectorImSaImEEC2EmRKS0_.exit271:            ; preds = %.noexc270
  %i.md = getelementptr i8, ptr %i.mb, i64 8
  %.idx.i.i.i.i.i.i.i266 = shl nuw nsw i64 %i.lv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.md, i8 0, i64 %.idx.i.i.i.i.i.i.i266, i1 false), !tbaa !75
  %i.me = trunc i64 %i.ll to i32                  ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc270, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271
  %i.mg = phi i32 [ %i.me, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ 1, %.noexc270 ] ; 2 uses
  %wide.trip.count = and i64 %i.ll, 2147483647
  %xtraiter = and i64 %i.ll, 1
  %i.mh = icmp eq i64 %wide.trip.count, 1
  br i1 %i.mh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ll, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod879 = trunc i64 %i.ll to i1
  call void @llvm.assume(i1 %lcmp.mod879)
  %i.mi = mul i64 %i.lq, %indvars.iv.epil.init    ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.epil.init
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !75
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.epil.init
  store i64 %i.mi, ptr %i.mk, align 8, !tbaa !75
  %i.ml = mul i64 %i.ln, %indvars.iv.epil.init
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.epil.init
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271
  %i.mn = phi i32 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.me, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.mg, %._crit_edge.loopexit.unr-lcssa ], [ %i.mg, %.lr.ph.epil.preheader ]
  %.sroa.0490.0781 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mb, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.mb, %._crit_edge.loopexit.unr-lcssa ], [ %i.mb, %.lr.ph.epil.preheader ] ; 7 uses
  %.sroa.11495.0778 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.mc, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.mc, %._crit_edge.loopexit.unr-lcssa ], [ %i.mc, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.0506.0541548774 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.lt, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.lt, %._crit_edge.loopexit.unr-lcssa ], [ %i.lt, %.lr.ph.epil.preheader ] ; 6 uses
  %.sroa.11511.0538551768 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.lu, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.lu, %._crit_edge.loopexit.unr-lcssa ], [ %i.lu, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.11503.0554763 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.lz, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.lz, %._crit_edge.loopexit.unr-lcssa ], [ %i.lz, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.0498.0557759 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ly, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit271 ], [ %i.ly, %._crit_edge.loopexit.unr-lcssa ], [ %i.ly, %.lr.ph.epil.preheader ] ; 6 uses
  store i8 1, ptr %i.in, align 4, !tbaa !146
  %i.mo = trunc i64 %i.lm to i32                  ; 3 uses
  %i.mp = trunc i64 %i.lp to i32                  ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.mr = load float, ptr %i.mq, align 8, !tbaa !81
  invoke void @_ZN2cv3dnn13fastGemmBatchEmPKmS2_S2_iiifPKfiiS4_iifPfiRNS0_11FastGemmOptE(i64 noundef %i.ll, ptr noundef %.sroa.0506.0541548774, ptr noundef %.sroa.0498.0557759, ptr noundef %.sroa.0490.0781, i32 noundef %i.mo, i32 noundef %i.mo, i32 noundef %i.mp, float noundef %i.mr, ptr noundef %i.hj, i32 noundef %i.mp, i32 noundef 1, ptr noundef %i.hs, i32 noundef 1, i32 noundef %i.mp, float noundef 0.000000e+00, ptr noundef %i.lj, i32 noundef %i.mo, ptr noundef nonnull align 1 dereferenceable(5) %i.im)
          to label %bb.bo unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bk, %bb.bj
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit406

_ZNSt6vectorImSaImEED2Ev.exit404.thread:          ; preds = %bb.bl
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

_ZNSt6vectorImSaImEED2Ev.exit402.thread:          ; preds = %bb.bm
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.mv = mul i64 %i.lq, %indvars.iv              ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !75
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv
  store i64 %i.mv, ptr %i.mx, align 8, !tbaa !75
  %i.my = mul i64 %i.ln, %indvars.iv
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !75
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.na = mul i64 %i.lq, %indvars.iv.next         ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv.next
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !75
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next
  store i64 %i.na, ptr %i.nc, align 8, !tbaa !75
  %i.nd = mul i64 %i.ln, %indvars.iv.next
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.next
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !75
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !161

bb.bo:                                            ; preds = %._crit_edge
  %i.nf = load ptr, ptr %i.jj, align 8, !tbaa !135
  %i.ng = load ptr, ptr %13, align 8, !tbaa !117  ; 2 uses
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = sdiv exact i64 %i.nj, 208
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = load ptr, ptr %i.ia, align 8, !tbaa !125
  %i.nn = load ptr, ptr %i.ic, align 8, !tbaa !125
  %i.no = icmp eq ptr %i.nm, %i.nn                ; 2 uses
  %or.cond.v = select i1 %i.no, i32 3, i32 1
  %or.cond = icmp slt i32 %or.cond.v, %i.nl
  br i1 %or.cond, label %.critedge, label %bb.dk

.critedge:                                        ; preds = %bb.bo
  %.v = select i1 %i.no, i64 624, i64 208
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.v ; 3 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !162
  %i.nr = and i32 %i.nq, 4095                     ; 2 uses
  %i.ns = icmp eq i32 %i.nr, 5
  br i1 %i.ns, label %bb.bt, label %bb.br

bb.bp:                                            ; preds = %._crit_edge
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.bq:                                            ; preds = %bb.br
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.br:                                            ; preds = %.critedge
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.nr, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E15__cv_check__434) #25
          to label %bb.bs unwind label %bb.bq

bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %22, ptr noundef nonnull align 4 dereferenceable(52) %i.nv)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.bv

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.nw = load i32, ptr %22, align 4, !tbaa !118  ; 11 uses
  store i32 %i.nw, ptr %i.k, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store ptr %i.k, ptr %23, align 8, !tbaa !163
  %i.nx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %22, ptr %i.nx, align 8, !tbaa !165
  %i.ny = add i32 %i.nw, -4                       ; 2 uses
  %i.nz = icmp sgt i32 %i.nw, 4
  br i1 %i.nz, label %.lr.ph640, label %._crit_edge641

.lr.ph640:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.oa = getelementptr inbounds nuw i8, ptr %22, i64 12
  %wide.trip.count653 = zext nneg i32 %i.ny to i64
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bw
  %indvars.iv.next649 = add nuw nsw i64 %indvars.iv648, 1 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next649, %wide.trip.count653
  br i1 %exitcond654.not, label %._crit_edge641, label %bb.bw, !llvm.loop !167

._crit_edge641:                                   ; preds = %bb.bu, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ob = icmp sgt i32 %i.nw, 3
  br i1 %i.ob, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread: ; preds = %._crit_edge641
  %i.oc = zext nneg i32 %i.ny to i64
  %i.od = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.oc
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !121
  br label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit309

bb.bv:                                            ; preds = %bb.bt
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.bw:                                            ; preds = %.lr.ph640, %bb.bu
  %indvars.iv648 = phi i64 [ 0, %.lr.ph640 ], [ %indvars.iv.next649, %bb.bu ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv648
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !121
  %.not191 = icmp eq i32 %i.oi, 1
  br i1 %.not191, label %bb.bu, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.oj = load ptr, ptr %25, align 8, !tbaa !39
  %i.ok = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.ol = trunc i64 %i.ok to i32
  %i.om = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.on = trunc i64 %i.om to i32
  %i.oo = load i64, ptr %i.hm, align 8, !tbaa !123
  %i.op = trunc i64 %i.oo to i32
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull @.str.36, ptr noundef %i.oj, i32 noundef %i.ol, i32 noundef %i.on, i32 noundef %i.op)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.2, i32 noundef 453) #25
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.bx
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.cc:                                            ; preds = %bb.by
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

bb.cd:                                            ; preds = %bb.bz
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ot = load ptr, ptr %24, align 8, !tbaa !39   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.cd
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !28
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277, %bb.cc
  %.pn192 = phi { ptr, i32 } [ %i.or, %bb.cc ], [ %i.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277 ], [ %i.os, %bb.cd ] ; 2 uses
  %i.oy = load ptr, ptr %25, align 8, !tbaa !39   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !28
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.cb
  %.pn192.pn = phi { ptr, i32 } [ %i.oq, %bb.cb ], [ %.pn192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %.pn192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit: ; preds = %._crit_edge641
  %i.pd = icmp eq i32 %i.nw, 3
  br i1 %i.pd, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit309, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit
  %i.pe = icmp sgt i32 %i.nw, 1
  br i1 %i.pe, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit331, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit300

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit300: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291
  %i.pf = icmp eq i32 %i.nw, 1
  br i1 %i.pf, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread.thread

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread.thread: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit300
  %i.pg = load i64, ptr %i.hm, align 8, !tbaa !123
  br label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit309: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread
  %i.ph = phi i32 [ %i.of, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit.thread ], [ 1, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit ] ; 2 uses
  %i.pi = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.pj = trunc i64 %i.pi to i32
  %.not.i310 = icmp eq i32 %i.ph, 1               ; 2 uses
  %.not8.i = icmp eq i32 %i.ph, %i.pj
  %or.cond.i311 = or i1 %.not.i310, %.not8.i
  br i1 %or.cond.i311, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %.noexc315 unwind label %bb.de

.noexc315:                                        ; preds = %bb.ce
  %i.pk = load ptr, ptr %11, align 8, !tbaa !39
  %i.pl = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.pm = trunc i64 %i.pl to i32
  %i.pn = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.po = trunc i64 %i.pn to i32
  %i.pp = load i64, ptr %i.hm, align 8, !tbaa !123
  %i.pq = trunc i64 %i.pp to i32                  ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.46, ptr noundef %i.pk, i32 noundef %i.pm, i32 noundef %i.po, i32 noundef %i.pq, i32 noundef %i.pq, ptr noundef nonnull @.str.37)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %.noexc315
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_, ptr noundef nonnull @.str.2, i32 noundef 464) #25
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %.noexc315
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312

bb.ci:                                            ; preds = %bb.cf
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = load ptr, ptr %10, align 8, !tbaa !39   ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313: ; preds = %bb.ci
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !28
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313, %bb.ch
  %.pn.i = phi { ptr, i32 } [ %i.pr, %bb.ch ], [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313 ], [ %i.ps, %bb.ci ]
  %i.py = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !28
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit309
  %i.qd = zext nneg i32 %i.nw to i64
  %i.qe = getelementptr [4 x i8], ptr %22, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !121 ; 3 uses
  %i.qg = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.qh = trunc i64 %i.qg to i32
  %.not.i318 = icmp eq i32 %i.qf, 1               ; 2 uses
  %.not8.i319 = icmp eq i32 %i.qf, %i.qh
  %or.cond.i320 = or i1 %.not.i318, %.not8.i319
  br i1 %or.cond.i320, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit331, label %bb.cj

bb.cj:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %.noexc328 unwind label %bb.de

.noexc328:                                        ; preds = %bb.cj
  %i.qi = load ptr, ptr %9, align 8, !tbaa !39
  %i.qj = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.qk = trunc i64 %i.qj to i32
  %i.ql = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = load i64, ptr %i.hm, align 8, !tbaa !123
  %i.qo = trunc i64 %i.qn to i32                  ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.46, ptr noundef %i.qi, i32 noundef %i.qk, i32 noundef %i.qm, i32 noundef %i.qo, i32 noundef %i.qo, ptr noundef nonnull @.str.38)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %.noexc328
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_, ptr noundef nonnull @.str.2, i32 noundef 464) #25
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  unreachable

bb.cm:                                            ; preds = %.noexc328
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321

bb.cn:                                            ; preds = %bb.ck
  %i.qq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qr = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i326: ; preds = %bb.cn
  %i.qu = load i64, ptr %i.qs, align 8, !tbaa !28
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i326, %bb.cm
  %.pn.i322 = phi { ptr, i32 } [ %i.qp, %bb.cm ], [ %i.qq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i326 ], [ %i.qq, %bb.cn ]
  %i.qw = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.qy = icmp eq ptr %i.qw, %i.qx
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321
  %i.qz = load i64, ptr %i.qx, align 8, !tbaa !28
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.ra) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit331: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit
  %.not.i318808 = phi i1 [ %.not.i318, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit ], [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291 ] ; 2 uses
  %i.rb = phi i32 [ %i.qf, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit ], [ 1, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291 ]
  %.not.i310792807 = phi i1 [ %.not.i310, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit ], [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit291 ]
  %.pn878 = zext i32 %i.nw to i64
  %.pn877 = getelementptr [4 x i8], ptr %22, i64 %.pn878
  %.in876 = getelementptr i8, ptr %.pn877, i64 8
  %i.rc = load i32, ptr %.in876, align 4, !tbaa !121 ; 4 uses
  %.pn875 = zext i32 %i.nw to i64
  %.pn874 = getelementptr [4 x i8], ptr %22, i64 %.pn875
  %.in = getelementptr i8, ptr %.pn874, i64 4
  %i.rd = load i32, ptr %.in, align 4, !tbaa !121 ; 4 uses
  %i.re = load i64, ptr %i.hm, align 8, !tbaa !123 ; 3 uses
  %i.rf = trunc i64 %i.re to i32                  ; 2 uses
  %.not.i332 = icmp eq i32 %i.rd, 1               ; 3 uses
  %.not8.i333 = icmp eq i32 %i.rd, %i.rf
  %or.cond.i334 = or i1 %.not.i332, %.not8.i333
  br i1 %or.cond.i334, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345, label %bb.co

bb.co:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit331
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %.noexc342 unwind label %bb.de

.noexc342:                                        ; preds = %bb.co
  %i.rg = load ptr, ptr %7, align 8, !tbaa !39
  %i.rh = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.ri = trunc i64 %i.rh to i32
  %i.rj = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.rk = trunc i64 %i.rj to i32
  %i.rl = load i64, ptr %i.hm, align 8, !tbaa !123
  %i.rm = trunc i64 %i.rl to i32                  ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.46, ptr noundef %i.rg, i32 noundef %i.ri, i32 noundef %i.rk, i32 noundef %i.rm, i32 noundef %i.rm, ptr noundef nonnull @.str.39)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %.noexc342
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_, ptr noundef nonnull @.str.2, i32 noundef 464) #25
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  unreachable

bb.cr:                                            ; preds = %.noexc342
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i335

bb.cs:                                            ; preds = %bb.cp
  %i.ro = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rp = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.rr = icmp eq ptr %i.rp, %i.rq
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340: ; preds = %bb.cs
  %i.rs = load i64, ptr %i.rq, align 8, !tbaa !28
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i335: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340, %bb.cr
  %.pn.i336 = phi { ptr, i32 } [ %i.rn, %bb.cr ], [ %i.ro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340 ], [ %i.ro, %bb.cs ]
  %i.ru = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i335
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !28
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit331
  %.not.i346 = icmp eq i32 %i.rc, 1               ; 3 uses
  %.not8.i347 = icmp eq i32 %i.rc, %i.rf
  %or.cond.i348 = or i1 %.not.i346, %.not8.i347
  br i1 %or.cond.i348, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359, label %bb.ct

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliE_clEi.exit300
  %i.rz = zext nneg i32 %i.nw to i64
  %i.sa = getelementptr [4 x i8], ptr %22, i64 %i.rz
  %i.sb = getelementptr i8, ptr %i.sa, i64 8
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !121 ; 3 uses
  %i.sd = load i64, ptr %i.hm, align 8, !tbaa !123 ; 2 uses
  %i.se = trunc i64 %i.sd to i32
  %.not.i346851 = icmp eq i32 %i.sc, 1            ; 2 uses
  %.not8.i347852 = icmp eq i32 %i.sc, %i.se
  %or.cond.i348853 = or i1 %.not.i346851, %.not8.i347852
  br i1 %or.cond.i348853, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread, label %bb.ct

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread.thread, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread
  %.not.i346851873 = phi i1 [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread.thread ], [ %.not.i346851, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread ]
  %i.sf = phi i64 [ %i.pg, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread.thread ], [ %i.sd, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread ]
  %.ph872 = phi i32 [ 1, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread.thread ], [ %i.sc, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  br label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge

bb.ct:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345.thread, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUlvE_clB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %.noexc356 unwind label %bb.de

.noexc356:                                        ; preds = %bb.ct
  %i.sg = load ptr, ptr %5, align 8, !tbaa !39
  %i.sh = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.si = trunc i64 %i.sh to i32
  %i.sj = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.sk = trunc i64 %i.sj to i32
  %i.sl = load i64, ptr %i.hm, align 8, !tbaa !123
  %i.sm = trunc i64 %i.sl to i32                  ; 2 uses
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.46, ptr noundef %i.sg, i32 noundef %i.si, i32 noundef %i.sk, i32 noundef %i.sm, i32 noundef %i.sm, ptr noundef nonnull @.str.40)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %.noexc356
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_, ptr noundef nonnull @.str.2, i32 noundef 464) #25
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  unreachable

bb.cw:                                            ; preds = %.noexc356
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i349

bb.cx:                                            ; preds = %bb.cu
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sp = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354: ; preds = %bb.cx
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !28
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i349: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354, %bb.cw
  %.pn.i350 = phi { ptr, i32 } [ %i.sn, %bb.cw ], [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354 ], [ %i.so, %bb.cx ]
  %i.su = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i351: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i349
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !28
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body275

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  br i1 %.not.i310792807, label %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge, label %bb.cy

_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge: ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359
  %.not.i332847854867 = phi i1 [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread ], [ %.not.i332, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359 ]
  %i.sz = phi i64 [ %i.sf, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread ], [ %i.re, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359 ]
  %i.ta = phi i32 [ %.ph872, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread ], [ %i.rc, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359 ]
  %i.tb = phi i32 [ 1, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread ], [ %i.rd, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359 ]
  %.not.i318808845856865 = phi i1 [ true, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread ], [ %.not.i318808, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359 ]
  %.not.i346857863 = phi i1 [ %.not.i346851873, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359.thread ], [ %.not.i346, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359 ]
  %.pre665 = sext i32 %i.tb to i64
  %.pre666 = sext i32 %i.ta to i64
  br label %bb.cz

bb.cy:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359
  %i.tc = sext i32 %i.rb to i64
  %i.td = sext i32 %i.rd to i64                   ; 2 uses
  %i.te = mul nsw i64 %i.td, %i.tc
  %i.tf = sext i32 %i.rc to i64                   ; 2 uses
  %i.tg = mul i64 %i.te, %i.tf
  br label %bb.cz

bb.cz:                                            ; preds = %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge, %bb.cy
  %.not.i332847854866 = phi i1 [ %.not.i332847854867, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %.not.i332, %bb.cy ]
  %i.th = phi i64 [ %i.sz, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %i.re, %bb.cy ]
  %.not.i318808845856864 = phi i1 [ %.not.i318808845856865, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %.not.i318808, %bb.cy ]
  %.not.i346857862 = phi i1 [ %.not.i346857863, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %.not.i346, %bb.cy ]
  %.pre-phi667 = phi i64 [ %.pre666, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %i.tf, %bb.cy ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre665, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %i.td, %bb.cy ]
  %i.ti = phi i64 [ 0, %_ZZN2cv3dnn18AttentionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_ENKUliiPKcE_clEiiS9_.exit359._crit_edge ], [ %i.tg, %bb.cy ]
  store i64 %i.ti, ptr %i.l, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  %i.tj = mul nsw i64 %.pre-phi667, %.pre-phi
  %i.tk = select i1 %.not.i318808845856864, i64 0, i64 %i.tj
  store i64 %i.tk, ptr %i.m, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  %i.tl = select i1 %.not.i332847854866, i64 0, i64 %.pre-phi667
  store i64 %i.tl, ptr %i.n, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  %i.tm = zext i1 %.not.i346857862 to i8
  store i8 %i.tm, ptr %i.o, align 1, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  %i.tn = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !127
  store ptr %i.to, ptr %i.p, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store i32 0, ptr %26, align 4, !tbaa !147
  %i.tp = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 %i.mn, ptr %i.tp, align 4, !tbaa !149
  %i.tq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 32, i1 false)
  %i.tr = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %bb.da unwind label %bb.df     ; 9 uses

bb.da:                                            ; preds = %bb.cz
  %i.ts = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %0, ptr %i.tr, align 16, !tbaa !150
  %.sroa.5467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store ptr %i.p, ptr %.sroa.5467.0..sroa_idx, align 8, !tbaa !152
  %.sroa.6468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store ptr %i.l, ptr %.sroa.6468.0..sroa_idx, align 16, !tbaa !155
  %.sroa.7469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  store ptr %i.m, ptr %.sroa.7469.0..sroa_idx, align 8, !tbaa !155
  %.sroa.8470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  store ptr %i.i, ptr %.sroa.8470.0..sroa_idx, align 16, !tbaa !152
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 40
  store ptr %i.j, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !155
  %.sroa.10471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 48
  store ptr %i.n, ptr %.sroa.10471.0..sroa_idx, align 16, !tbaa !155
  %.sroa.11472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  store ptr %i.o, ptr %.sroa.11472.0..sroa_idx, align 8, !tbaa !169
  store ptr %i.tr, ptr %27, align 8, !tbaa !156
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.ts, align 8, !tbaa !157
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.tq, align 8, !tbaa !160
  %i.tt = mul i64 %i.th, %i.ll
  %i.tu = uitofp i64 %i.tt to double
  %i.tv = fmul nnan double %i.tu, f0x3F50000000000000
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef align 8 %27, double noundef %i.tv)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %bb.da
  %i.tw = load ptr, ptr %i.tq, align 8, !tbaa !160 ; 2 uses
  %.not.i361 = icmp eq ptr %i.tw, null
  br i1 %.not.i361, label %_ZNSt14_Function_baseD2Ev.exit362, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tx = invoke noundef zeroext i1 %i.tw(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit362 unwind label %bb.dd ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.ty = landingpad { ptr, i32 }
          catch ptr null
  %i.tz = extractvalue { ptr, i32 } %i.ty, 0
  call void @__clang_call_terminate(ptr %i.tz) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit362:                ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.dk

bb.de:                                            ; preds = %bb.ct, %bb.co, %bb.cj, %bb.ce
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %.body275

bb.df:                                            ; preds = %bb.cz
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit364

bb.dg:                                            ; preds = %bb.da
  %i.uc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ud = load ptr, ptr %i.tq, align 8, !tbaa !160 ; 2 uses
  %.not.i363 = icmp eq ptr %i.ud, null
  br i1 %.not.i363, label %_ZNSt14_Function_baseD2Ev.exit364, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ue = invoke noundef zeroext i1 %i.ud(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit364 unwind label %bb.di ; 0 uses

bb.di:                                            ; preds = %bb.dh
  %i.uf = landingpad { ptr, i32 }
          catch ptr null
  %i.ug = extractvalue { ptr, i32 } %i.uf, 0
  call void @__clang_call_terminate(ptr %i.ug) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit364:                ; preds = %bb.dh, %bb.dg, %bb.df
  %.pn178 = phi { ptr, i32 } [ %i.ub, %bb.df ], [ %i.uc, %bb.dg ], [ %i.uc, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  br label %.body275

.body275:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i324, %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i338, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %.pn192.pn.pn.pn = phi { ptr, i32 } [ %.pn.i336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i338 ], [ %.pn192.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %.pn178, %_ZNSt14_Function_baseD2Ev.exit364 ], [ %.pn.i350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i352 ], [ %i.ua, %bb.de ], [ %.pn.i322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i324 ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  br label %bb.dj

bb.dj:                                            ; preds = %.body275, %bb.bv
  %.pn192.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn192.pn.pn.pn, %.body275 ], [ %i.og, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.du

bb.dk:                                            ; preds = %bb.bo, %_ZNSt14_Function_baseD2Ev.exit362
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.uh = getelementptr inbounds nuw i8, ptr %i.lg, i64 280
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %28, ptr noundef nonnull align 4 dereferenceable(52) %i.uh)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit366 unwind label %bb.dt

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit366: ; preds = %bb.dk
  %i.ui = load i32, ptr %28, align 4, !tbaa !118
  %narrow.i367 = call i32 @llvm.smax.i32(i32 %i.ui, i32 0)
  %i.uj = add nsw i32 %narrow.i367, -1
  invoke void @_ZN2cv3dnn7softmaxERNS_3MatERKS1_i(ptr noundef nonnull align 8 dereferenceable(208) %i.lh, ptr noundef nonnull align 8 dereferenceable(208) %i.lh, i32 noundef %i.uj)
          to label %bb.dl unwind label %bb.dt

bb.dl:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit366
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %.not.i.i.i369 = icmp eq ptr %.sroa.0490.0781, null
  br i1 %.not.i.i.i369, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.uk = ptrtoint ptr %.sroa.11495.0778 to i64
  %i.ul = ptrtoint ptr %.sroa.0490.0781 to i64
  %i.um = sub i64 %i.uk, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0490.0781, i64 noundef %i.um) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.dl, %bb.dm
  %.not.i.i.i370 = icmp eq ptr %.sroa.0498.0557759, null
  br i1 %.not.i.i.i370, label %_ZNSt6vectorImSaImEED2Ev.exit371, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.un = ptrtoint ptr %.sroa.11503.0554763 to i64
  %i.uo = ptrtoint ptr %.sroa.0498.0557759 to i64
  %i.up = sub i64 %i.un, %i.uo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0498.0557759, i64 noundef %i.up) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit371

_ZNSt6vectorImSaImEED2Ev.exit371:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.dn
  %.not.i.i.i372 = icmp eq ptr %.sroa.0506.0541548774, null
  br i1 %.not.i.i.i372, label %_ZNSt6vectorImSaImEED2Ev.exit373, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit371
  %i.uq = ptrtoint ptr %.sroa.11511.0538551768 to i64
  %i.ur = ptrtoint ptr %.sroa.0506.0541548774 to i64
  %i.us = sub i64 %i.uq, %i.ur
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0506.0541548774, i64 noundef %i.us) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit373

_ZNSt6vectorImSaImEED2Ev.exit373:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit371, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.ut = load ptr, ptr %15, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.uu = load ptr, ptr %14, align 8, !tbaa !117
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !127
  store ptr %i.uw, ptr %i.q, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 440
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !127 ; 2 uses
  store ptr %i.uy, ptr %i.r, align 8, !tbaa !143
  %i.uz = load ptr, ptr %i.li, align 8, !tbaa !127
  %i.va = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.vb = load i64, ptr %i.ek, align 8, !tbaa !43
  %i.vc = mul i64 %i.vb, %i.va                    ; 14 uses
  %i.vd = load i64, ptr %i.hm, align 8, !tbaa !123 ; 4 uses
  %i.ve = mul i64 %i.vd, %i.vd                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #23
  %i.vf = load ptr, ptr %i.iq, align 8, !tbaa !79
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !75 ; 3 uses
  store i64 %i.vh, ptr %i.s, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #23
  %i.vi = mul i64 %i.vh, %i.vd                    ; 4 uses
  store i64 %i.vi, ptr %i.t, align 8, !tbaa !75
  %i.vj = icmp ugt i64 %i.vc, 1152921504606846975
  br i1 %i.vj, label %bb.dp, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374

bb.dp:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit373
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc380 unwind label %bb.dy

.noexc380:                                        ; preds = %bb.dp
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit373
  %.not.i.i.i.i375 = icmp eq i64 %i.vc, 0
  br i1 %.not.i.i.i.i375, label %._crit_edge645, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374
  %i.vk = shl nuw nsw i64 %i.vc, 3                ; 3 uses
  %i.vl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vk) #21
          to label %.noexc381 unwind label %bb.dy ; 11 uses

.noexc381:                                        ; preds = %bb.dq
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %i.vc ; 5 uses
  store i64 0, ptr %i.vl, align 8, !tbaa !75
  %i.vn = add nsw i64 %i.vc, -1                   ; 4 uses
  %i.vo = icmp eq i64 %i.vn, 0                    ; 3 uses
  br i1 %i.vo, label %bb.dr, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i376

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i376: ; preds = %.noexc381
  %i.vp = getelementptr i8, ptr %i.vl, i64 8
  %.idx.i.i.i.i.i.i.i377 = shl nuw nsw i64 %i.vn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vp, i8 0, i64 %.idx.i.i.i.i.i.i.i377, i1 false), !tbaa !75
  br label %bb.dr

bb.dr:                                            ; preds = %.noexc381, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i376
  %i.vq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vk) #21
          to label %.noexc390 unwind label %_ZNSt6vectorImSaImEED2Ev.exit441.thread ; 10 uses

.noexc390:                                        ; preds = %bb.dr
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %i.vc ; 4 uses
  store i64 0, ptr %i.vq, align 8, !tbaa !75
  br i1 %i.vo, label %bb.ds, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385: ; preds = %.noexc390
  %i.vs = getelementptr i8, ptr %i.vq, i64 8
  %.idx.i.i.i.i.i.i.i386 = shl nuw nsw i64 %i.vn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vs, i8 0, i64 %.idx.i.i.i.i.i.i.i386, i1 false), !tbaa !75
  br label %bb.ds

bb.ds:                                            ; preds = %.noexc390, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i385
  %i.vt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vk) #21
          to label %.noexc399 unwind label %_ZNSt6vectorImSaImEED2Ev.exit439.thread ; 9 uses

.noexc399:                                        ; preds = %bb.ds
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vc ; 3 uses
  store i64 0, ptr %i.vt, align 8, !tbaa !75
  br i1 %i.vo, label %.lr.ph644.preheader, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400

_ZNSt6vectorImSaImEEC2EmRKS0_.exit400:            ; preds = %.noexc399
  %i.vv = getelementptr i8, ptr %i.vt, i64 8
  %.idx.i.i.i.i.i.i.i395 = shl nuw nsw i64 %i.vn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vv, i8 0, i64 %.idx.i.i.i.i.i.i.i395, i1 false), !tbaa !75
  %i.vw = trunc i64 %i.vc to i32                  ; 3 uses
  %i.vx = icmp sgt i32 %i.vw, 0
  br i1 %i.vx, label %.lr.ph644.preheader, label %._crit_edge645

.lr.ph644.preheader:                              ; preds = %.noexc399, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400
  %i.vy = phi i32 [ %i.vw, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ 1, %.noexc399 ] ; 2 uses
  %wide.trip.count658 = and i64 %i.vc, 2147483647
  %xtraiter880 = and i64 %i.vc, 1
  %i.vz = icmp eq i64 %wide.trip.count658, 1
  br i1 %i.vz, label %.lr.ph644.epil.preheader, label %.lr.ph644.preheader.new

.lr.ph644.preheader.new:                          ; preds = %.lr.ph644.preheader
  %unroll_iter883 = and i64 %i.vc, 2147483646
  br label %.lr.ph644

._crit_edge645.loopexit.unr-lcssa:                ; preds = %.lr.ph644
  %lcmp.mod881.not = icmp eq i64 %xtraiter880, 0
  br i1 %lcmp.mod881.not, label %._crit_edge645, label %.lr.ph644.epil.preheader

.lr.ph644.epil.preheader:                         ; preds = %._crit_edge645.loopexit.unr-lcssa, %.lr.ph644.preheader
  %indvars.iv655.epil.init = phi i64 [ 0, %.lr.ph644.preheader ], [ %indvars.iv.next656.1, %._crit_edge645.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod882 = trunc i64 %i.vc to i1
  call void @llvm.assume(i1 %lcmp.mod882)
  %i.wa = mul i64 %i.ve, %indvars.iv655.epil.init
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %indvars.iv655.epil.init
  store i64 %i.wa, ptr %i.wb, align 8, !tbaa !75
  %i.wc = mul i64 %i.vi, %indvars.iv655.epil.init ; 2 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv655.epil.init
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !75
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv655.epil.init
  store i64 %i.wc, ptr %i.we, align 8, !tbaa !75
  br label %._crit_edge645

._crit_edge645:                                   ; preds = %.lr.ph644.epil.preheader, %._crit_edge645.loopexit.unr-lcssa, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400
  %i.wf = phi i32 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vw, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vy, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vy, %.lr.ph644.epil.preheader ]
  %.sroa.11.0830 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vu, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vu, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vu, %.lr.ph644.epil.preheader ] ; 2 uses
  %.sroa.0445.0828 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vt, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vt, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vt, %.lr.ph644.epil.preheader ] ; 7 uses
  %.sroa.11464.0565572824 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vm, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vm, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vm, %.lr.ph644.epil.preheader ] ; 3 uses
  %.sroa.0459.0562575822 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vl, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vl, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vl, %.lr.ph644.epil.preheader ] ; 6 uses
  %.sroa.0451.0578819 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vq, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vq, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vq, %.lr.ph644.epil.preheader ] ; 6 uses
  %.sroa.11456.0581815 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i374 ], [ %i.vr, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit400 ], [ %i.vr, %._crit_edge645.loopexit.unr-lcssa ], [ %i.vr, %.lr.ph644.epil.preheader ] ; 2 uses
  store i8 1, ptr %i.in, align 4, !tbaa !146
  %i.wg = trunc i64 %i.vd to i32                  ; 3 uses
  %i.wh = trunc i64 %i.vh to i32                  ; 3 uses
  invoke void @_ZN2cv3dnn13fastGemmBatchEmPKmS2_S2_iiifPKfiiS4_iifPfiRNS0_11FastGemmOptE(i64 noundef %i.vc, ptr noundef %.sroa.0459.0562575822, ptr noundef %.sroa.0451.0578819, ptr noundef %.sroa.0445.0828, i32 noundef %i.wg, i32 noundef %i.wh, i32 noundef %i.wg, float noundef 1.000000e+00, ptr noundef %i.uz, i32 noundef %i.wg, i32 noundef 1, ptr noundef %i.hw, i32 noundef %i.wh, i32 noundef 1, float noundef 0.000000e+00, ptr noundef %i.uy, i32 noundef %i.wh, ptr noundef nonnull align 1 dereferenceable(5) %i.im)
          to label %bb.dz unwind label %bb.eo

bb.dt:                                            ; preds = %bb.dk, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit366
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dj, %bb.bq, %bb.bp
  %.pn192.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nt, %bb.bp ], [ %i.wi, %bb.dt ], [ %.pn192.pn.pn.pn.pn, %bb.dj ], [ %i.nu, %bb.bq ] ; 2 uses
  %.not.i.i.i401 = icmp eq ptr %.sroa.0490.0781, null
  br i1 %.not.i.i.i401, label %_ZNSt6vectorImSaImEED2Ev.exit402, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wj = ptrtoint ptr %.sroa.11495.0778 to i64
  %i.wk = ptrtoint ptr %.sroa.0490.0781 to i64
  %i.wl = sub i64 %i.wj, %i.wk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0490.0781, i64 noundef %i.wl) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit402

_ZNSt6vectorImSaImEED2Ev.exit402:                 ; preds = %bb.dv, %bb.du
  %.not.i.i.i403 = icmp eq ptr %.sroa.0498.0557759, null
  br i1 %.not.i.i.i403, label %_ZNSt6vectorImSaImEED2Ev.exit404, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit402.thread, %_ZNSt6vectorImSaImEED2Ev.exit402
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn595 = phi { ptr, i32 } [ %i.mu, %_ZNSt6vectorImSaImEED2Ev.exit402.thread ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit402 ]
  %.sroa.0506.0541547593 = phi ptr [ %i.lt, %_ZNSt6vectorImSaImEED2Ev.exit402.thread ], [ %.sroa.0506.0541548774, %_ZNSt6vectorImSaImEED2Ev.exit402 ]
  %.sroa.11511.0538550591 = phi ptr [ %i.lu, %_ZNSt6vectorImSaImEED2Ev.exit402.thread ], [ %.sroa.11511.0538551768, %_ZNSt6vectorImSaImEED2Ev.exit402 ]
  %.sroa.11503.0553590 = phi ptr [ %i.lz, %_ZNSt6vectorImSaImEED2Ev.exit402.thread ], [ %.sroa.11503.0554763, %_ZNSt6vectorImSaImEED2Ev.exit402 ]
  %.sroa.0498.0556589 = phi ptr [ %i.ly, %_ZNSt6vectorImSaImEED2Ev.exit402.thread ], [ %.sroa.0498.0557759, %_ZNSt6vectorImSaImEED2Ev.exit402 ] ; 2 uses
  %i.wm = ptrtoint ptr %.sroa.11503.0553590 to i64
  %i.wn = ptrtoint ptr %.sroa.0498.0556589 to i64
  %i.wo = sub i64 %i.wm, %i.wn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0498.0556589, i64 noundef %i.wo) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit404

_ZNSt6vectorImSaImEED2Ev.exit404:                 ; preds = %bb.dw, %_ZNSt6vectorImSaImEED2Ev.exit402
  %.sroa.0506.0540 = phi ptr [ %.sroa.0506.0541547593, %bb.dw ], [ %.sroa.0506.0541548774, %_ZNSt6vectorImSaImEED2Ev.exit402 ] ; 2 uses
  %.sroa.11511.0537 = phi ptr [ %.sroa.11511.0538550591, %bb.dw ], [ %.sroa.11511.0538551768, %_ZNSt6vectorImSaImEED2Ev.exit402 ]
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn595, %bb.dw ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit402 ] ; 2 uses
  %.not.i.i.i405 = icmp eq ptr %.sroa.0506.0540, null
  br i1 %.not.i.i.i405, label %_ZNSt6vectorImSaImEED2Ev.exit406, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit404.thread, %_ZNSt6vectorImSaImEED2Ev.exit404
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn603 = phi { ptr, i32 } [ %i.mt, %_ZNSt6vectorImSaImEED2Ev.exit404.thread ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit404 ]
  %.sroa.11511.0537602 = phi ptr [ %i.lu, %_ZNSt6vectorImSaImEED2Ev.exit404.thread ], [ %.sroa.11511.0537, %_ZNSt6vectorImSaImEED2Ev.exit404 ]
  %.sroa.0506.0540601 = phi ptr [ %i.lt, %_ZNSt6vectorImSaImEED2Ev.exit404.thread ], [ %.sroa.0506.0540, %_ZNSt6vectorImSaImEED2Ev.exit404 ] ; 2 uses
  %i.wp = ptrtoint ptr %.sroa.11511.0537602 to i64
  %i.wq = ptrtoint ptr %.sroa.0506.0540601 to i64
  %i.wr = sub i64 %i.wp, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0506.0540601, i64 noundef %i.wr) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit406

_ZNSt6vectorImSaImEED2Ev.exit406:                 ; preds = %bb.dx, %_ZNSt6vectorImSaImEED2Ev.exit404, %bb.bn
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ms, %bb.bn ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit404 ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn603, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %bb.ex

bb.dy:                                            ; preds = %bb.dq, %bb.dp
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit443

_ZNSt6vectorImSaImEED2Ev.exit441.thread:          ; preds = %bb.dr
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

_ZNSt6vectorImSaImEED2Ev.exit439.thread:          ; preds = %bb.ds
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

.lr.ph644:                                        ; preds = %.lr.ph644, %.lr.ph644.preheader.new
  %indvars.iv655 = phi i64 [ 0, %.lr.ph644.preheader.new ], [ %indvars.iv.next656.1, %.lr.ph644 ] ; 7 uses
  %niter884 = phi i64 [ 0, %.lr.ph644.preheader.new ], [ %niter884.next.1, %.lr.ph644 ]
  %i.wv = mul i64 %i.ve, %indvars.iv655
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %indvars.iv655
  store i64 %i.wv, ptr %i.ww, align 8, !tbaa !75
  %i.wx = mul i64 %i.vi, %indvars.iv655           ; 2 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv655
  store i64 %i.wx, ptr %i.wy, align 8, !tbaa !75
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv655
  store i64 %i.wx, ptr %i.wz, align 8, !tbaa !75
  %indvars.iv.next656 = or disjoint i64 %indvars.iv655, 1 ; 5 uses
  %i.xa = mul i64 %i.ve, %indvars.iv.next656
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %indvars.iv.next656
  store i64 %i.xa, ptr %i.xb, align 8, !tbaa !75
  %i.xc = mul i64 %i.vi, %indvars.iv.next656      ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.next656
  store i64 %i.xc, ptr %i.xd, align 8, !tbaa !75
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next656
  store i64 %i.xc, ptr %i.xe, align 8, !tbaa !75
  %indvars.iv.next656.1 = add nuw nsw i64 %indvars.iv655, 2 ; 2 uses
  %niter884.next.1 = add i64 %niter884, 2         ; 2 uses
  %niter884.ncmp.1 = icmp eq i64 %niter884.next.1, %unroll_iter883
  br i1 %niter884.ncmp.1, label %._crit_edge645.loopexit.unr-lcssa, label %.lr.ph644, !llvm.loop !171

bb.dz:                                            ; preds = %._crit_edge645
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  store i32 0, ptr %29, align 4, !tbaa !147
  %i.xf = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 %i.wf, ptr %i.xf, align 4, !tbaa !149
  %i.xg = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 32, i1 false)
  %i.xh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %bb.ea unwind label %bb.ep     ; 6 uses

bb.ea:                                            ; preds = %bb.dz
  %i.xi = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.t, ptr %i.xh, align 16, !tbaa !155
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !150
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store ptr %i.r, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !152
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !152
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  store ptr %i.s, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !155
  store ptr %i.xh, ptr %30, align 8, !tbaa !156
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.xi, align 8, !tbaa !157
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn18AttentionLayerImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.xg, align 8, !tbaa !160
  %i.xj = load i64, ptr %i.hm, align 8, !tbaa !123
  %i.xk = mul i64 %i.xj, %i.vc
  %i.xl = load i64, ptr %i.s, align 8, !tbaa !75
  %i.xm = mul i64 %i.xk, %i.xl
  %i.xn = uitofp i64 %i.xm to double
  %i.xo = fmul nnan double %i.xn, f0x3F50000000000000
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef align 8 %30, double noundef %i.xo)
          to label %bb.eb unwind label %bb.eq

bb.eb:                                            ; preds = %bb.ea
  %i.xp = load ptr, ptr %i.xg, align 8, !tbaa !160 ; 2 uses
  %.not.i408 = icmp eq ptr %i.xp, null
  br i1 %.not.i408, label %_ZNSt14_Function_baseD2Ev.exit409, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.xq = invoke noundef zeroext i1 %i.xp(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit409 unwind label %bb.ed ; 0 uses

bb.ed:                                            ; preds = %bb.ec
  %i.xr = landingpad { ptr, i32 }
          catch ptr null
  %i.xs = extractvalue { ptr, i32 } %i.xr, 0
  call void @__clang_call_terminate(ptr %i.xs) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit409:                ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %.not.i.i.i410 = icmp eq ptr %.sroa.0445.0828, null
  br i1 %.not.i.i.i410, label %_ZNSt6vectorImSaImEED2Ev.exit411, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit409
  %i.xt = ptrtoint ptr %.sroa.11.0830 to i64
  %i.xu = ptrtoint ptr %.sroa.0445.0828 to i64
  %i.xv = sub i64 %i.xt, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0445.0828, i64 noundef %i.xv) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit411

_ZNSt6vectorImSaImEED2Ev.exit411:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit409, %bb.ee
  %.not.i.i.i412 = icmp eq ptr %.sroa.0451.0578819, null
  br i1 %.not.i.i.i412, label %_ZNSt6vectorImSaImEED2Ev.exit413, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit411
  %i.xw = ptrtoint ptr %.sroa.11456.0581815 to i64
  %i.xx = ptrtoint ptr %.sroa.0451.0578819 to i64
  %i.xy = sub i64 %i.xw, %i.xx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0451.0578819, i64 noundef %i.xy) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit413

_ZNSt6vectorImSaImEED2Ev.exit413:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit411, %bb.ef
  %.not.i.i.i414 = icmp eq ptr %.sroa.0459.0562575822, null
  br i1 %.not.i.i.i414, label %_ZNSt6vectorImSaImEED2Ev.exit415, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit413
  %i.xz = ptrtoint ptr %.sroa.11464.0565572824 to i64
  %i.ya = ptrtoint ptr %.sroa.0459.0562575822 to i64
  %i.yb = sub i64 %i.xz, %i.ya
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0459.0562575822, i64 noundef %i.yb) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit415

_ZNSt6vectorImSaImEED2Ev.exit415:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit413, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %bb.eh

bb.eh:                                            ; preds = %bb.bh, %_ZNSt6vectorImSaImEED2Ev.exit415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.yc = load ptr, ptr %15, align 8, !tbaa !117  ; 3 uses
  %i.yd = load ptr, ptr %i.fd, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.yc, %i.yd
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.eh, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ye, %.lr.ph.i.i.i ], [ %i.yc, %bb.eh ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #23
  %i.ye = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i416 = icmp eq ptr %i.ye, %i.yd
  br i1 %.not.i.i.i416, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.eh
  %i.yf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.yc, %bb.eh ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.yf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.yg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !137
  %i.yi = ptrtoint ptr %i.yh to i64
  %i.yj = ptrtoint ptr %i.yf to i64
  %i.yk = sub i64 %i.yi, %i.yj
  call void @_ZdlPvm(ptr noundef nonnull %i.yf, i64 noundef %i.yk) #22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.yl = load ptr, ptr %14, align 8, !tbaa !117  ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i417 = icmp eq ptr %i.yl, %i.yn
  br i1 %.not4.i.i.i417, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i423, label %.lr.ph.i.i.i418

.lr.ph.i.i.i418:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i418
  %.05.i.i.i419 = phi ptr [ %i.yo, %.lr.ph.i.i.i418 ], [ %i.yl, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i419) #23
  %i.yo = getelementptr inbounds nuw i8, ptr %.05.i.i.i419, i64 208 ; 2 uses
  %.not.i.i.i420 = icmp eq ptr %i.yo, %i.yn
  br i1 %.not.i.i.i420, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i421, label %.lr.ph.i.i.i418, !llvm.loop !136

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i421: ; preds = %.lr.ph.i.i.i418
  %.pr.i422 = load ptr, ptr %14, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i423

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i423: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i421, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.yp = phi ptr [ %.pr.i422, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i421 ], [ %i.yl, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i424 = icmp eq ptr %i.yp, null
  br i1 %.not.i.i1.i424, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425, label %bb.ej

bb.ej:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i423
  %i.yq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !137
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yp to i64
  %i.yu = sub i64 %i.ys, %i.yt
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef %i.yu) #22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i423, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.yv = load ptr, ptr %13, align 8, !tbaa !117  ; 3 uses
  %i.yw = load ptr, ptr %i.jj, align 8, !tbaa !135 ; 2 uses
  %.not4.i.i.i426 = icmp eq ptr %i.yv, %i.yw
  br i1 %.not4.i.i.i426, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i432, label %.lr.ph.i.i.i427

.lr.ph.i.i.i427:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425, %.lr.ph.i.i.i427
  %.05.i.i.i428 = phi ptr [ %i.yx, %.lr.ph.i.i.i427 ], [ %i.yv, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i428) #23
  %i.yx = getelementptr inbounds nuw i8, ptr %.05.i.i.i428, i64 208 ; 2 uses
  %.not.i.i.i429 = icmp eq ptr %i.yx, %i.yw
  br i1 %.not.i.i.i429, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i430, label %.lr.ph.i.i.i427, !llvm.loop !136

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i430: ; preds = %.lr.ph.i.i.i427
  %.pr.i431 = load ptr, ptr %13, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i432

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i432: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i430, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425
  %i.yy = phi ptr [ %.pr.i431, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i430 ], [ %i.yv, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit425 ] ; 3 uses
  %.not.i.i1.i433 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i1.i433, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit434, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i432
  %i.yz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !137
  %i.zb = ptrtoint ptr %i.za to i64
  %i.zc = ptrtoint ptr %i.yy to i64
  %i.zd = sub i64 %i.zb, %i.zc
  call void @_ZdlPvm(ptr noundef nonnull %i.yy, i64 noundef %i.zd) #22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit434

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit434:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i432, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.el

bb.el:                                            ; preds = %bb.f, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit434
  %i.ze = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !172
  %.not.i435 = icmp eq i32 %i.zf, 0
  br i1 %.not.i435, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %12)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.zg = landingpad { ptr, i32 }
          catch ptr null
  %i.zh = extractvalue { ptr, i32 } %i.zg, 0
  call void @__clang_call_terminate(ptr %i.zh) #24
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  ret void

bb.eo:                                            ; preds = %._crit_edge645
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.ep:                                            ; preds = %bb.dz
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit437

bb.eq:                                            ; preds = %bb.ea
  %i.zk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zl = load ptr, ptr %i.xg, align 8, !tbaa !160 ; 2 uses
  %.not.i436 = icmp eq ptr %i.zl, null
  br i1 %.not.i436, label %_ZNSt14_Function_baseD2Ev.exit437, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.zm = invoke noundef zeroext i1 %i.zl(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit437 unwind label %bb.es ; 0 uses

bb.es:                                            ; preds = %bb.er
  %i.zn = landingpad { ptr, i32 }
          catch ptr null
  %i.zo = extractvalue { ptr, i32 } %i.zn, 0
  call void @__clang_call_terminate(ptr %i.zo) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit437:                ; preds = %bb.er, %bb.eq, %bb.ep
  %.pn185 = phi { ptr, i32 } [ %i.zj, %bb.ep ], [ %i.zk, %bb.eq ], [ %i.zk, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.et

bb.et:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit437, %bb.eo
  %.pn185.pn = phi { ptr, i32 } [ %.pn185, %_ZNSt14_Function_baseD2Ev.exit437 ], [ %i.zi, %bb.eo ] ; 2 uses
  %.not.i.i.i438 = icmp eq ptr %.sroa.0445.0828, null
  br i1 %.not.i.i.i438, label %_ZNSt6vectorImSaImEED2Ev.exit439, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.zp = ptrtoint ptr %.sroa.11.0830 to i64
  %i.zq = ptrtoint ptr %.sroa.0445.0828 to i64
  %i.zr = sub i64 %i.zp, %i.zq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0445.0828, i64 noundef %i.zr) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit439

_ZNSt6vectorImSaImEED2Ev.exit439:                 ; preds = %bb.eu, %bb.et
  %.not.i.i.i440 = icmp eq ptr %.sroa.0451.0578819, null
  br i1 %.not.i.i.i440, label %_ZNSt6vectorImSaImEED2Ev.exit441, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit439.thread, %_ZNSt6vectorImSaImEED2Ev.exit439
  %.pn185.pn.pn617 = phi { ptr, i32 } [ %i.wu, %_ZNSt6vectorImSaImEED2Ev.exit439.thread ], [ %.pn185.pn, %_ZNSt6vectorImSaImEED2Ev.exit439 ]
  %.sroa.11464.0565571615 = phi ptr [ %i.vm, %_ZNSt6vectorImSaImEED2Ev.exit439.thread ], [ %.sroa.11464.0565572824, %_ZNSt6vectorImSaImEED2Ev.exit439 ]
  %.sroa.0459.0562574613 = phi ptr [ %i.vl, %_ZNSt6vectorImSaImEED2Ev.exit439.thread ], [ %.sroa.0459.0562575822, %_ZNSt6vectorImSaImEED2Ev.exit439 ]
  %.sroa.0451.0577612 = phi ptr [ %i.vq, %_ZNSt6vectorImSaImEED2Ev.exit439.thread ], [ %.sroa.0451.0578819, %_ZNSt6vectorImSaImEED2Ev.exit439 ] ; 2 uses
  %.sroa.11456.0580611 = phi ptr [ %i.vr, %_ZNSt6vectorImSaImEED2Ev.exit439.thread ], [ %.sroa.11456.0581815, %_ZNSt6vectorImSaImEED2Ev.exit439 ]
  %i.zs = ptrtoint ptr %.sroa.11456.0580611 to i64
  %i.zt = ptrtoint ptr %.sroa.0451.0577612 to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0451.0577612, i64 noundef %i.zu) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit441

_ZNSt6vectorImSaImEED2Ev.exit441:                 ; preds = %bb.ev, %_ZNSt6vectorImSaImEED2Ev.exit439
  %.sroa.11464.0564 = phi ptr [ %.sroa.11464.0565571615, %bb.ev ], [ %.sroa.11464.0565572824, %_ZNSt6vectorImSaImEED2Ev.exit439 ]
  %.sroa.0459.0561 = phi ptr [ %.sroa.0459.0562574613, %bb.ev ], [ %.sroa.0459.0562575822, %_ZNSt6vectorImSaImEED2Ev.exit439 ] ; 2 uses
  %.pn185.pn.pn.pn = phi { ptr, i32 } [ %.pn185.pn.pn617, %bb.ev ], [ %.pn185.pn, %_ZNSt6vectorImSaImEED2Ev.exit439 ] ; 2 uses
  %.not.i.i.i442 = icmp eq ptr %.sroa.0459.0561, null
  br i1 %.not.i.i.i442, label %_ZNSt6vectorImSaImEED2Ev.exit443, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit441.thread, %_ZNSt6vectorImSaImEED2Ev.exit441
  %.pn185.pn.pn.pn625 = phi { ptr, i32 } [ %i.wt, %_ZNSt6vectorImSaImEED2Ev.exit441.thread ], [ %.pn185.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit441 ]
  %.sroa.0459.0561624 = phi ptr [ %i.vl, %_ZNSt6vectorImSaImEED2Ev.exit441.thread ], [ %.sroa.0459.0561, %_ZNSt6vectorImSaImEED2Ev.exit441 ] ; 2 uses
  %.sroa.11464.0564623 = phi ptr [ %i.vm, %_ZNSt6vectorImSaImEED2Ev.exit441.thread ], [ %.sroa.11464.0564, %_ZNSt6vectorImSaImEED2Ev.exit441 ]
  %i.zv = ptrtoint ptr %.sroa.11464.0564623 to i64
  %i.zw = ptrtoint ptr %.sroa.0459.0561624 to i64
  %i.zx = sub i64 %i.zv, %i.zw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0459.0561624, i64 noundef %i.zx) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit443

_ZNSt6vectorImSaImEED2Ev.exit443:                 ; preds = %bb.ew, %_ZNSt6vectorImSaImEED2Ev.exit441, %bb.dy
  %.pn185.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ws, %bb.dy ], [ %.pn185.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit441 ], [ %.pn185.pn.pn.pn625, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %bb.ex

bb.ex:                                            ; preds = %bb.bf, %bb.bg, %bb.be, %_ZNSt6vectorImSaImEED2Ev.exit443, %_ZNSt6vectorImSaImEED2Ev.exit406, %_ZNSt14_Function_baseD2Ev.exit251
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn168, %_ZNSt14_Function_baseD2Ev.exit251 ], [ %i.lc, %bb.be ], [ %.pn185.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit443 ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit406 ], [ %i.le, %bb.bg ], [ %i.ld, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.ey

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ex ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ey, %bb.u
  %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ey ], [ %i.dv, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit629, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit632, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ez

bb.ez:                                            ; preds = %.loopexit.split-lp, %bb.c
  %.pn209 = phi { ptr, i32 } [ %i.x, %bb.c ], [ %.pn192.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  resume { ptr, i32 } %.pn209
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #6

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn18AttentionLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
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
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 3 uses
  %7 = alloca %"struct.cv::MatShape", align 4     ; 10 uses
  %8 = alloca %"struct.cv::MatShape", align 4     ; 6 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 4 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %12 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  %13 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.7", align 1 ; 3 uses
  %18 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.h = load ptr, ptr %1, align 8, !tbaa !175    ; 9 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !117  ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 208
  %i.u = add nsw i64 %i.t, %i.l
  %i.v = trunc i64 %i.u to i32                    ; 4 uses
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.v, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__169) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.x = icmp samesign ult i32 %i.v, 5
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.v, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__170) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.y = icmp eq ptr %i.p, %i.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %.sink = select i1 %i.y, ptr %i.aa, ptr %i.z
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %7, ptr noundef nonnull align 4 dereferenceable(52) %.sink)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !125
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !125 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %1, align 8, !tbaa !175
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -136
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink156 = phi ptr [ %i.ag, %bb.g ], [ %i.af, %bb.f ]
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %8, ptr noundef nonnull align 4 dereferenceable(52) %.sink156)
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !118 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 3
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %spec.select.i, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__175) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %7, align 4, !tbaa !118   ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %_ZNK2cv8MatShapeixEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %narrow.i75 = call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %spec.select.i76 = zext nneg i32 %narrow.i75 to i64
  call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %spec.select.i76, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__176) #25
  unreachable

common.resume:                                    ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122
  %common.resume.op = phi { ptr, i32 } [ %.pn69.pn.pn, %bb.ar ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122 ]
  resume { ptr, i32 } %common.resume.op

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !121 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !121
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %_ZNK2cv8MatShapeixEm.exit91, label %bb.l

bb.l:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.ar = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %i.h, i64 noundef 2)
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !121
  %i.at = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %7, i64 noundef 0)
  %i.au = load i32, ptr %i.at, align 4, !tbaa !121
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.as, i32 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__178) #25
  unreachable

_ZNK2cv8MatShapeixEm.exit91:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !121
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !121
  %i.az = icmp eq i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit91
  %i.ba = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %7, i64 noundef 1)
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !121
  %i.bc = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShapeixEm(ptr noundef nonnull align 4 dereferenceable(52) %8, i64 noundef 0)
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !121
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn18AttentionLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E15__cv_check__179) #25
  unreachable

bb.n:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit91
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !82 ; 2 uses
  switch i64 %i.bf, label %bb.p [
    i64 3, label %bb.o
    i64 2, label %_ZNK2cv8MatShapeixEm.exit113
  ]

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %1, align 8, !tbaa !175
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.bg)
  br label %bb.s

_ZNK2cv8MatShapeixEm.exit113:                     ; preds = %bb.n
  %i.bh = load i32, ptr %i.al, align 4, !tbaa !121
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bk = mul nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.an, ptr %i.bl, align 4, !tbaa !121
  call void @_ZN2cv8MatShapeC1ESt16initializer_listIiE(ptr noundef nonnull align 4 dereferenceable(52) %9, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
end_hunk_0
