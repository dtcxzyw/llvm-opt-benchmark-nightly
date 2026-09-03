Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv15calcCovarMatrixERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_17_InputOutputArrayEii:bb.a
  %.pn119.pn = phi { ptr, i32 } [ %.pn119, %bb.fg ], [ %i.ka, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %.body268

bb.fi:                                            ; preds = %bb.dw
  %i.kd = icmp slt i32 %4, 0
  %i.ke = select i1 %i.kd, i32 %i.hb, i32 %4
  %i.kf = and i32 %i.ke, 31
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.kf, i32 5) ; 2 uses
  %i.kg = xor i32 %.lobit, 1
  invoke void @_ZN2cv6reduceERKNS_11_InputArrayERKNS_12_OutputArrayEiii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.kg, i32 noundef 1, i32 noundef %.sroa.speculated)
          to label %bb.fj unwind label %bb.ei

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.kh = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc276 unwind label %bb.fn

.noexc276:                                        ; preds = %bb.fj
  %i.ki = icmp eq i32 %i.kh, 65536
  br i1 %i.ki, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.noexc276
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !55, !noalias !867
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %46, ptr noundef nonnull align 8 dereferenceable(208) %i.kk)
          to label %_ZNK2cv11_InputArray6getMatEi.exit279 unwind label %bb.fn

bb.fl:                                            ; preds = %.noexc276
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %46, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit279 unwind label %bb.fn

_ZNK2cv11_InputArray6getMatEi.exit279:            ; preds = %bb.fk, %bb.fl
  %i.kl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %46)
          to label %bb.fm unwind label %bb.fo     ; 0 uses

bb.fm:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit279
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.fq

bb.fn:                                            ; preds = %bb.fl, %bb.fk, %bb.fj
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fo:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit279
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #24
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.pn110 = phi { ptr, i32 } [ %i.kn, %bb.fo ], [ %i.km, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %.body268

bb.fq:                                            ; preds = %bb.es, %bb.fc, %bb.fm
  %.0 = phi i32 [ %.sroa.speculated284, %bb.fc ], [ %.sroa.speculated284, %bb.es ], [ %.sroa.speculated, %bb.fm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  %i.ko = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i32 0, ptr %i.ko, align 8, !tbaa !56
  %i.kp = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 0, ptr %i.kp, align 4, !tbaa !57
  store i32 16842752, ptr %47, align 8, !tbaa !58
  %i.kq = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %35, ptr %i.kq, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  %i.kr = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.kr, align 8, !tbaa !56
  %i.ks = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.ks, align 4, !tbaa !57
  store i32 16842752, ptr %48, align 8, !tbaa !58
  %i.kt = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %36, ptr %i.kt, align 8, !tbaa !55
  %i.ku = and i32 %3, 1
  %i.kv = icmp eq i32 %i.ku, %.lobit
  %i.kw = and i32 %3, 4
  %.not122 = icmp eq i32 %i.kw, 0
  %i.kx = uitofp nneg i32 %i.hg to double
  %i.ky = fdiv double 1.000000e+00, %i.kx
  %i.kz = select i1 %.not122, double 1.000000e+00, double %i.ky
  invoke void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %48, double noundef %i.kz, i32 noundef %.0)
          to label %bb.fr unwind label %bb.fv

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !19
  %.not.i280 = icmp eq i32 %i.lb, 0
  br i1 %.not.i280, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %13)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void

bb.fv:                                            ; preds = %bb.fq
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  br label %.body268

.body268:                                         ; preds = %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %bb.fh, %bb.fp, %bb.fv, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i243, %bb.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %.pn123.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.le, %bb.fv ], [ %.pn119.pn, %bb.fh ], [ %.pn110, %bb.fp ], [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i243 ], [ %.pn112, %bb.el ], [ %i.ix, %bb.ei ], [ %i.ja, %bb.em ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #24
  br label %bb.fw

bb.fw:                                            ; preds = %.body268, %bb.dk
  %.pn123.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn123.pn.pn.pn.pn, %.body268 ], [ %i.gt, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.body, %bb.g
  %.pn158.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn158.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn123.pn.pn.pn.pn.pn, %bb.fw ], [ %i.h, %bb.g ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  resume { ptr, i32 } %.pn158.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #24
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN2cv6reduceERKNS_11_InputArrayERKNS_12_OutputArrayEiii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 23 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %36 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %37 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_diE25__cv_trace_location_fn880)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55, !noalias !874
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.f

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc116 unwind label %bb.g

.noexc116:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc116
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55, !noalias !875
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit119 unwind label %bb.g

bb.e:                                             ; preds = %.noexc116
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit119 unwind label %bb.g

_ZNK2cv11_InputArray6getMatEi.exit119:            ; preds = %bb.d, %bb.e
  %i.i = load i32, ptr %11, align 8, !tbaa !46    ; 3 uses
  %i.j = and i32 %i.i, 4095                       ; 2 uses
  %i.k = icmp slt i32 %5, 0
  %i.l = select i1 %i.k, i32 %i.i, i32 %5
  %i.m = and i32 %i.l, 31
  %i.n = load i32, ptr %12, align 8, !tbaa !46
  %i.o = and i32 %i.n, 31
  %.sroa.speculated153 = call i32 @llvm.umax.i32(i32 %i.m, i32 %i.o)
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.sroa.speculated153, i32 5) ; 5 uses
  %i.p = and i32 %i.i, 4064
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.n, label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.g:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.h:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.i:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di, ptr noundef nonnull @.str.8, i32 noundef 886) #26
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %13, align 8, !tbaa !37    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.z = load i64, ptr %i.x, align 8, !tbaa !23
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.cj

bb.n:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit119
  %i.ab = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  br i1 %i.ab, label %bb.al, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i32, ptr %12, align 8, !tbaa !46   ; 2 uses
  %i.ad = and i32 %i.ac, 4064
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di, ptr noundef nonnull @.str.8, i32 noundef 892) #26
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.u:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.u
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.t
  %.pn75 = phi { ptr, i32 } [ %i.af, %bb.t ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.ag, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cj

bb.v:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !48
  %i.aq = icmp eq i32 %i.an, %i.ap
  %i.ar = icmp eq i32 %i.an, 1
  %or.cond = or i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di, ptr noundef nonnull @.str.8, i32 noundef 892) #26
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.aa:                                            ; preds = %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %17, align 8, !tbaa !37   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.aa
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !23
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.z
  %.pn77 = phi { ptr, i32 } [ %i.as, %bb.z ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.at, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.cj

bb.ab:                                            ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !49
  %i.bd = icmp eq i32 %i.ba, %i.bc
  %i.be = icmp eq i32 %i.ba, 1
  %or.cond5 = or i1 %i.be, %i.bd
  br i1 %or.cond5, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di, ptr noundef nonnull @.str.8, i32 noundef 892) #26
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ag:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %19, align 8, !tbaa !37   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.ag
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.af
  %.pn79 = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.bg, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.cj

bb.ah:                                            ; preds = %bb.ab
  %i.bm = and i32 %i.ac, 31
  %.not = icmp eq i32 %i.bm, %.sroa.speculated
  br i1 %.not, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.bo, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !58
  store ptr %12, ptr %i.bn, align 8, !tbaa !55
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef %.sroa.speculated, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.cj

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = select i1 %2, i32 %i.br, i32 %i.bt      ; 2 uses
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.bu, i32 noundef %i.bu, i32 noundef %.sroa.speculated, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.am unwind label %bb.bk

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.bv = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc130 unwind label %bb.bl

.noexc130:                                        ; preds = %bb.am
  %i.bw = icmp eq i32 %i.bv, 65536
  br i1 %i.bw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.noexc130
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55, !noalias !876
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %i.by)
          to label %_ZNK2cv11_InputArray6getMatEi.exit133 unwind label %bb.bl

bb.ao:                                            ; preds = %.noexc130
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit133 unwind label %bb.bl

_ZNK2cv11_InputArray6getMatEi.exit133:            ; preds = %bb.an, %bb.ao
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit133
  %i.ce = icmp eq i32 %i.j, %.sroa.speculated
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cg = load <2 x i32>, ptr %i.cf, align 8
  %i.ch = load <2 x i32>, ptr %i.bs, align 8
  %i.ci = shufflevector <2 x i32> %i.cg, <2 x i32> %i.ch, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %.fr = freeze <4 x i32> %i.ci
  %i.cj = icmp slt <4 x i32> %.fr, splat (i32 100)
  %i.ck = bitcast <4 x i1> %i.cj to i4
  %i.cl = icmp eq i4 %i.ck, 0
  %op.rdx = select i1 %i.cl, i1 %i.ce, i1 false
  br i1 %op.rdx, label %bb.aq, label %bb.bz

bb.aq:                                            ; preds = %bb.ap, %_ZNK2cv11_InputArray6getMatEi.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #24
  %i.cm = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.ar unwind label %bb.bm

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.cm, label %bb.bw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !41 ; 6 uses
  %i.cp = icmp slt i32 %i.co, 3
  br i1 %i.cp, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc134 unwind label %bb.bn

.noexc134:                                        ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.64, i32 noundef 109) #26
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc134
  unreachable

bb.av:                                            ; preds = %.noexc134
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.av
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !23
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body

bb.aw:                                            ; preds = %bb.as
  %i.cw = icmp sgt i32 %i.co, 0
  br i1 %i.cw, label %bb.ax, label %.thread.i

.thread.i:                                        ; preds = %bb.aw
  %i.cx = icmp eq i32 %i.co, 0
  %i.cy = zext i1 %i.cx to i32
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 84
  %i.da = icmp eq i32 %i.co, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %12, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = select i1 %i.da, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.co, 1
  br i1 %.not.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %.thread.i
  %i.dc = phi i32 [ %i.cy, %.thread.i ], [ %i.db, %bb.ax ]
  %i.dd = icmp sgt i32 %i.co, -1
  %i.de = zext i1 %i.dd to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.df = phi i32 [ %i.dc, %bb.ay ], [ %i.db, %bb.ax ]
  %i.dg = phi i32 [ %i.de, %bb.ay ], [ %.val, %bb.ax ]
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !41 ; 6 uses
  %i.dj = icmp slt i32 %i.di, 3
  br i1 %i.dj, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc144 unwind label %bb.bo

.noexc144:                                        ; preds = %bb.ba
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.64, i32 noundef 109) #26
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc144
  unreachable

bb.bc:                                            ; preds = %.noexc144
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %bb.bc
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !23
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.bd:                                            ; preds = %bb.az
  %i.dq = icmp sgt i32 %i.di, 0
  br i1 %i.dq, label %bb.be, label %.thread.i138

.thread.i138:                                     ; preds = %bb.bd
  %i.dr = icmp eq i32 %i.di, 0
  %i.ds = zext i1 %i.dr to i32
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 84
  %i.du = icmp eq i32 %i.di, 2
  %.sroa.gep161 = getelementptr inbounds nuw i8, ptr %11, i64 88
  %.sroa.gep161.val = load i32, ptr %.sroa.gep161, align 8
  %.val164 = load i32, ptr %i.dt, align 4         ; 2 uses
  %i.dv = select i1 %i.du, i32 %.sroa.gep161.val, i32 %.val164 ; 2 uses
  %.not.i143 = icmp eq i32 %i.di, 1
  br i1 %.not.i143, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %.thread.i138
  %i.dw = phi i32 [ %i.ds, %.thread.i138 ], [ %i.dv, %bb.be ]
  %i.dx = icmp sgt i32 %i.di, -1
  %i.dy = zext i1 %i.dx to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.dz = phi i32 [ %i.dw, %bb.bf ], [ %i.dv, %bb.be ]
  %i.ea = phi i32 [ %i.dy, %bb.bf ], [ %.val164, %bb.be ]
  %i.eb = icmp eq i32 %i.df, %i.dz
  %i.ec = icmp eq i32 %i.dg, %i.ea
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.ee = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.ee, align 8, !tbaa !56
  %i.ef = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i32 0, ptr %i.ef, align 4, !tbaa !57
  store i32 16842752, ptr %24, align 8, !tbaa !58
  %i.eg = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %11, ptr %i.eg, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.eh = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 0, ptr %i.eh, align 8, !tbaa !56
  %i.ei = getelementptr inbounds nuw i8, ptr %25, i64 20
  store i32 0, ptr %i.ei, align 4, !tbaa !57
  store i32 16842752, ptr %25, align 8, !tbaa !58
  %i.ej = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %12, ptr %i.ej, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 0, ptr %i.el, align 8
  store i32 33619968, ptr %26, align 8, !tbaa !58
  store ptr %23, ptr %i.ek, align 8, !tbaa !55
  %i.em = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bi unwind label %bb.bp

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN2cv8subtractERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i32 noundef -1)
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.bw

bb.bk:                                            ; preds = %bb.al
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bl:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bm:                                            ; preds = %bb.aq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bn:                                            ; preds = %bb.at
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bo:                                            ; preds = %bb.ba
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bp:                                            ; preds = %bb.bi, %bb.bh
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body

bb.bq:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.et = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i32 0, ptr %i.et, align 8, !tbaa !56
  %i.eu = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i32 0, ptr %i.eu, align 4, !tbaa !57
  store i32 16842752, ptr %27, align 8, !tbaa !58
  %i.ev = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %12, ptr %i.ev, align 8, !tbaa !55
  %38 = load i32, ptr %i.bs, align 8, !tbaa !48
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 8
  %39 = load i32, ptr %i.ew, align 8, !tbaa !48
  %40 = load i32, ptr %i.bq, align 4, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %12, i64 12
  %41 = load i32, ptr %i.ex, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %42 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i64 0, ptr %43, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !58
  store ptr %23, ptr %42, align 8, !tbaa !55
  %44 = sdiv i32 %40, %41
  %45 = sdiv i32 %38, %39
  invoke void @_ZN2cv6repeatERKNS_11_InputArrayEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %27, i32 noundef %45, i32 noundef %44, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.ey = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 0, ptr %i.ey, align 8, !tbaa !56
  %i.ez = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %i.ez, align 4, !tbaa !57
  store i32 16842752, ptr %29, align 8, !tbaa !58
  %i.fa = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %11, ptr %i.fa, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 0, ptr %i.fb, align 8, !tbaa !56
  %i.fc = getelementptr inbounds nuw i8, ptr %30, i64 20
  store i32 0, ptr %i.fc, align 4, !tbaa !57
  store i32 16842752, ptr %30, align 8, !tbaa !58
  %i.fd = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %23, ptr %i.fd, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 0, ptr %i.ff, align 8
  store i32 33619968, ptr %31, align 8, !tbaa !58
  store ptr %23, ptr %i.fe, align 8, !tbaa !55
  %i.fg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN2cv8subtractERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i32 noundef -1)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bq
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %.body

bb.bv:                                            ; preds = %bb.bs, %bb.br
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %.body

bb.bw:                                            ; preds = %bb.bj, %bb.bt, %bb.ar
  %.0 = phi ptr [ %11, %bb.ar ], [ %23, %bb.bt ], [ %23, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  %i.fj = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i32 0, ptr %i.fj, align 8, !tbaa !56
  %i.fk = getelementptr inbounds nuw i8, ptr %32, i64 20
  store i32 0, ptr %i.fk, align 4, !tbaa !57
  store i32 16842752, ptr %32, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0, ptr %i.fl, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %i.fm = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 0, ptr %i.fm, align 8, !tbaa !56
  %i.fn = getelementptr inbounds nuw i8, ptr %33, i64 20
  store i32 0, ptr %i.fn, align 4, !tbaa !57
  store i32 16842752, ptr %33, align 8, !tbaa !58
  %i.fo = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %.0, ptr %i.fo, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %35) #24
  %i.fp = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 0, ptr %i.fp, align 8, !tbaa !56
  %i.fq = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i32 0, ptr %i.fq, align 4, !tbaa !57
  store i32 16842752, ptr %34, align 8, !tbaa !58
  %i.fr = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %35, ptr %i.fr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.fs = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i64 0, ptr %i.ft, align 8
  store i32 33619968, ptr %36, align 8, !tbaa !58
  store ptr %22, ptr %i.fs, align 8, !tbaa !55
  %i.fu = select i1 %2, i32 1, i32 2
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, double noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %34, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef %i.fu)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.ce

bb.by:                                            ; preds = %bb.bw
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136, %bb.bo, %bb.by, %bb.bv, %bb.bu, %bb.bp, %bb.bm
  %.pn99.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.by ], [ %i.es, %bb.bp ], [ %i.fi, %bb.bv ], [ %i.fh, %bb.bu ], [ %i.ep, %bb.bm ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.eq, %bb.bn ], [ %i.er, %bb.bo ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i136 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.ch

bb.bz:                                            ; preds = %bb.ap
  %i.fw = invoke noundef nonnull ptr @_ZN2cv12cpu_baseline20getMulTransposedFuncEiib(i32 noundef %i.j, i32 noundef %.sroa.speculated, i1 noundef zeroext %2)
          to label %_ZN2cvL20getMulTransposedFuncEiib.exit unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN2cvL20getMulTransposedFuncEiib.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

_ZN2cvL20getMulTransposedFuncEiib.exit:           ; preds = %bb.bz
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %12, double noundef %4)
          to label %bb.cb unwind label %bb.ca

bb.cb:                                            ; preds = %_ZN2cvL20getMulTransposedFuncEiib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %i.fy = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 0, ptr %i.fz, align 8
  store i32 50397184, ptr %37, align 8, !tbaa !58
  store ptr %22, ptr %i.fy, align 8, !tbaa !55
  invoke void @_ZN2cv12completeSymmERKNS_17_InputOutputArrayEb(ptr noundef nonnull align 8 dereferenceable(24) %37, i1 noundef zeroext false)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc, %bb.bx
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !19
  %.not.i149 = icmp eq i32 %i.gc, 0
  br i1 %.not.i149, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %10)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

bb.ch:                                            ; preds = %bb.ca, %bb.cd, %.body
  %.pn99.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn, %.body ], [ %i.ga, %bb.cd ], [ %i.fx, %bb.ca ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #24
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bl
  %.pn99.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn, %bb.ch ], [ %i.eo, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.cj

bb.cj:                                            ; preds = %bb.bk, %bb.ci, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %bb.ak ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.t, %bb.h ], [ %.pn99.pn.pn.pn.pn.pn.pn, %bb.ci ], [ %i.en, %bb.bk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #24
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.g
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cj ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
end_hunk_0
