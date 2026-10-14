Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/net_impl?download=true
inline.NumInlined: 8390
inline.NumDeleted: 2706
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606053Net4Impl13allocateLayerEiRKSt3mapIiNS1_6detail11LayerShapesESt4lessIiESaISt4pairIKiS6_EEE:bb.a
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !129
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = ptrtoint ptr %i.wk to i64
  %i.wp = sub i64 %i.wn, %i.wo
  call void @_ZdlPvm(ptr noundef nonnull %i.wk, i64 noundef %i.wp) #28
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.fl

bb.fl:                                            ; preds = %bb.c, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit
  %i.wq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !286
  %.not.i249 = icmp eq i32 %i.wr, 0
  br i1 %.not.i249, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ws = landingpad { ptr, i32 }
          catch ptr null
  %i.wt = extractvalue { ptr, i32 } %i.ws, 0
  call void @__clang_call_terminate(ptr %i.wt) #30
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.fl, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret void

bb.fo:                                            ; preds = %._crit_edge287
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fb
  %.pn97 = phi { ptr, i32 } [ %i.ul, %bb.fb ], [ %i.wu, %bb.fo ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #29
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.ez
  %.pn97.pn = phi { ptr, i32 } [ %.pn97, %bb.fp ], [ %i.tx, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.fr

.loopexit:                                        ; preds = %.lr.ph.i239
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fr:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.fq
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %bb.fq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v202606055LayerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #29
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.ey
  %.pn97.pn.pn.pn = phi { ptr, i32 } [ %.pn97.pn.pn, %bb.fr ], [ %i.tw, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.ev, %bb.ds, %bb.cz
  %.pn102 = phi { ptr, i32 } [ %i.ox, %bb.ds ], [ %i.td, %bb.ev ], [ %.pn97.pn.pn.pn, %bb.fs ], [ %i.mt, %bb.cz ]
  %i.wv = load ptr, ptr %16, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i250 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i250, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit251, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ww = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !129
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = ptrtoint ptr %i.wv to i64
  %i.xa = sub i64 %i.wy, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %i.wv, i64 noundef %i.xa) #28
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit251

_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit251: ; preds = %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit251, %bb.l, %bb.n, %bb.aa, %bb.at, %bb.ce, %bb.d
  %.pn105.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.be, %bb.l ], [ %i.bk, %bb.n ], [ %i.fh, %bb.at ], [ %.pn93, %bb.ce ], [ %i.dh, %bb.aa ], [ %.pn102, %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EED2Ev.exit251 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  resume { ptr, i32 } %.pn105.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn14dnn5_v202606056detail11BlobManager21allocateBlobsForLayerERNS2_9LayerDataERKNS2_11LayerShapesERSt6vectorINS2_8LayerPinESaISA_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(576) %1, ptr noundef nonnull align 8 dereferenceable(145) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple", align 8        ; 4 uses
  %5 = alloca %"class.std::tuple.343", align 1    ; 3 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %7 = alloca %"class.std::vector.97", align 8    ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::vector.97", align 8   ; 17 uses
  %11 = alloca %"class.std::vector.63", align 8   ; 14 uses
  %12 = alloca %"class.std::map.324", align 8     ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"struct.cv::dnn::dnn5_v20260605::detail::LayerPin", align 4 ; 11 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn14dnn5_v202606056detail11BlobManager21allocateBlobsForLayerERNS2_9LayerDataERKNS2_11LayerShapesERSt6vectorINS2_8LayerPinESaISA_EEE25__cv_trace_location_fn232)
  %i.b = load ptr, ptr %3, align 8, !tbaa !128    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !290
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606056detail8LayerPinES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606056detail8LayerPinES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !290
  br label %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EE5clearEv.exit

_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv3dnn14dnn5_v202606056detail8LayerPinES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  invoke void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !337
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !344
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 52                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !282
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp eq i64 %i.q, %i.x
  br i1 %i.y, label %bb.e, label %.invoke

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3dnn14dnn5_v202606056detail8LayerPinESaIS4_EE5clearEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit210

bb.d:                                             ; preds = %.invoke, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !337
  %i.ad = load ptr, ptr %7, align 8, !tbaa !344
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 52                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !282
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 2 uses
  %i.ap = icmp eq i64 %i.ah, %i.ao
  br i1 %i.ap, label %bb.f, label %.invoke

.invoke:                                          ; preds = %bb.b, %bb.e
  %i.aq = phi i64 [ %i.ah, %bb.e ], [ %i.q, %bb.b ]
  %i.ar = phi i64 [ %i.ao, %bb.e ], [ %i.x, %bb.b ]
  %i.as = phi ptr [ @_ZZN2cv3dnn14dnn5_v202606056detail11BlobManager21allocateBlobsForLayerERNS2_9LayerDataERKNS2_11LayerShapesERSt6vectorINS2_8LayerPinESaISA_EEE15__cv_check__244, %bb.e ], [ @_ZZN2cv3dnn14dnn5_v202606056detail11BlobManager21allocateBlobsForLayerERNS2_9LayerDataERKNS2_11LayerShapesERSt6vectorINS2_8LayerPinESaISA_EEE15__cv_check__243, %bb.b ]
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.as) #32
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.q, i64 1) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !95 ; 3 uses
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 208               ; 3 uses
  %i.ba = icmp ugt i64 %.sroa.speculated, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = sub nuw i64 %.sroa.speculated, %i.az
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bb)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp ult i64 %.sroa.speculated, %i.az
  br i1 %i.bc, label %bb.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw [208 x i8], ptr %i.av, i64 %.sroa.speculated ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.au, %i.bd
  br i1 %.not.i.i120, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.bd, %bb.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #29
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.au
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !95
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.i, %bb.h, %bb.g
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !337
  %i.bg = load ptr, ptr %7, align 8, !tbaa !344
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 52                ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 3 uses
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !94  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 208               ; 3 uses
  %i.bs = icmp ugt i64 %i.bk, %i.br
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.bt = sub nuw nsw i64 %i.bk, %i.br
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bt)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127 unwind label %bb.d

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.bu = icmp ult i64 %i.bk, %i.br
  br i1 %i.bu, label %bb.l, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw [208 x i8], ptr %i.bn, i64 %i.bk ; 3 uses
  %.not.i.i121 = icmp eq ptr %i.bm, %i.bv
  br i1 %.not.i.i121, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127, label %.lr.ph.i.i.i.i122

.lr.ph.i.i.i.i122:                                ; preds = %bb.l, %.lr.ph.i.i.i.i122
  %.05.i.i.i.i123 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i122 ], [ %i.bv, %bb.l ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i123) #29
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i123, i64 208 ; 2 uses
  %.not.i.i.i.i124 = icmp eq ptr %i.bw, %i.bm
  br i1 %.not.i.i.i.i124, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i125, label %.lr.ph.i.i.i.i122, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i125: ; preds = %.lr.ph.i.i.i.i122
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !95
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i125, %bb.l, %bb.k, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !133
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !337
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !344
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 52
  %.not = icmp ugt i64 %i.by, %i.ce
  br i1 %.not, label %bb.n, label %bb.s

bb.m:                                             ; preds = %bb.g
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.n:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.291, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v202606056detail11BlobManager21allocateBlobsForLayerERNS2_9LayerDataERKNS2_11LayerShapesERSt6vectorINS2_8LayerPinESaISA_EE, ptr noundef nonnull @.str.285, i32 noundef 249) #32
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %8, align 8, !tbaa !108   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !73
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.q ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ch, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.cl

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit127
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !369, !range !288, !noundef !289
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !274
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !266
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = icmp eq i64 %i.cw, 8
  br i1 %i.cx, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !128
  %i.da = invoke noundef i32 @_ZN2cv3dnn14dnn5_v202606056detail11BlobManager13numReferencesERKNS2_8LayerPinE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.cz)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.db = icmp eq i32 %i.da, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.x:                                             ; preds = %bb.t, %bb.v, %bb.s
  %.093 = phi i1 [ %i.db, %bb.v ], [ false, %bb.t ], [ false, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !282 ; 2 uses
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !99  ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i128 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i.i.i128, label %.noexc130, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = icmp ugt i64 %i.dh, 9223372036854775804
  br i1 %i.di, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !75

.noexc.i.i:                                       ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc129 unwind label %bb.ag

.noexc129:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.z
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #31
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge unwind label %bb.ag

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !329 ; 2 uses
  %.pre426 = load ptr, ptr %i.r, align 8, !tbaa !329
  %.pre428 = ptrtoint ptr %.pre426 to i64
  %.pre429 = ptrtoint ptr %.pre to i64
  br label %.noexc130

.noexc130:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge, %bb.y
  %.pre-phi430 = phi i64 [ %.pre429, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge ], [ %i.dg, %bb.y ]
  %.pre-phi = phi i64 [ %.pre428, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge ], [ %i.df, %bb.y ]
  %i.dk = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge ], [ %i.de, %bb.y ] ; 2 uses
  %i.dl = phi ptr [ %i.dj, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc130_crit_edge ], [ null, %bb.y ] ; 6 uses
  store ptr %i.dl, ptr %11, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !282
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dh
end_hunk_0
