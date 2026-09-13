Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/accum_layer?download=true
inline.NumInlined: 686
inline.NumDeleted: 307
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn14AccumLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i123, i64 208 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.et, %i.es
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125, label %.lr.ph.i.i.i122, !llvm.loop !3

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125: ; preds = %.lr.ph.i.i.i122
  %.pr.i126 = load ptr, ptr %20, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i127

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i127: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit120
  %i.eu = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125 ], [ %i.er, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit120 ] ; 3 uses
  %.not.i.i1.i128 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i1.i128, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit129, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i127
  %i.ev = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ey) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit129

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit129:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i127, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.ba

bb.ax:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit111
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.ay ], [ %i.ez, %bb.ax ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.body93

bb.ba:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit129, %bb.am
  %i.fb = invoke noundef i64 @_ZNK2cv3Mat5totalEii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef 1, i32 noundef 2147483647)
          to label %bb.bb unwind label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.016144, i64 %i.fb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.fe = load ptr, ptr %15, align 8, !tbaa !74   ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sdiv exact i64 %i.fh, 208
  %i.fj = load i8, ptr %i.ah, align 8, !tbaa !57, !range !79, !noundef !80
  %i.fk = zext nneg i8 %i.fj to i64
  %i.fl = sub nsw i64 %i.fi, %i.fk
  %i.fm = icmp ugt i64 %i.fl, %indvars.iv.next
  br i1 %i.fm, label %bb.w, label %._crit_edge, !llvm.loop !127

.body93:                                          ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i99, %bb.az, %bb.ap
  %.pn36 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.az ], [ %i.dz, %bb.ap ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i90 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i99 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  br label %bb.bc

bb.bc:                                            ; preds = %.body93, %bb.ao
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %.body93 ], [ %i.dy, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body84

.body84:                                          ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i81, %bb.bc
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %bb.bc ], [ %i.dx, %bb.an ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i81 ] ; 2 uses
  %i.fn = load ptr, ptr %17, align 8, !tbaa !132  ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i130, label %.body64, label %bb.bd

bb.bd:                                            ; preds = %.body84
  %i.fo = load ptr, ptr %i.ae, align 8, !tbaa !133
  br label %.body64.sink.split

.body64.sink.split:                               ; preds = %bb.o, %bb.bd
  %.sink184 = phi ptr [ %i.fo, %bb.bd ], [ %i.bf, %bb.o ]
  %.sink183 = phi ptr [ %i.fn, %bb.bd ], [ %i.bd, %bb.o ] ; 2 uses
  %.pn36.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.bd ], [ %i.bc, %bb.o ]
  %i.fp = ptrtoint ptr %.sink184 to i64
  %i.fq = ptrtoint ptr %.sink183 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.sink183, i64 noundef %i.fr) #21
  br label %.body64

.body64:                                          ; preds = %.body64.sink.split, %.body84, %bb.n
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %.pn36.pn.pn, %.body84 ], [ %.pn36.pn.pn.pn.ph, %.body64.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body

.body:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body64, %bb.t
  %.pn36.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn36.pn.pn.pn, %.body64 ], [ %i.cj, %bb.u ], [ %i.ck, %bb.v ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48 ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.be

bb.be:                                            ; preds = %.body, %bb.c
  %.pn36.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn.pn, %.body ], [ %i.d, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  resume { ptr, i32 } %.pn36.pn.pn.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(156), i32 noundef) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn14AccumLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %17 = alloca %"struct.cv::MatShape", align 4    ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %17)
  %i.a = load ptr, ptr %1, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62   ; 3 uses
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57, !range !79, !noundef !80
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !84     ; 5 uses
  br i1 %i.f, label %bb.b, label %.preheader133

.preheader133:                                    ; preds = %bb.a
  %.not159 = icmp eq ptr %i.h, %i.i
  br i1 %.not159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader133
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 52
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 52                  ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.s = add nsw i64 %i.q, -2
  br label %.lr.ph156

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3dnn14AccumLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.22, i32 noundef 37) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %18, align 8, !tbaa !33    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !27
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn58 = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.ap

._crit_edge157:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit84
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.bp)
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !86  ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !72 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2
  br i1 %i.ad, label %_ZNK2cv8MatShapeixEm.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge157
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100 ], [ %.pn60.pn, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %._crit_edge157
  %.not132 = icmp eq i32 %i.ac, 3
  br i1 %.not132, label %bb.k, label %_ZNK2cv8MatShapeixEm.exit70

bb.k:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !27
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit70:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.aq = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !62
  %i.as = getelementptr inbounds i8, ptr %i.aa, i64 -28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !62
  br label %bb.ao

.lr.ph156:                                        ; preds = %.preheader, %_ZNK2cv8MatShapeixEm.exit84
  %indvars.iv165 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next166, %_ZNK2cv8MatShapeixEm.exit84 ] ; 3 uses
  %.043154 = phi i32 [ 0, %.preheader ], [ %i.bp, %_ZNK2cv8MatShapeixEm.exit84 ]
  %i.au = getelementptr inbounds nuw [52 x i8], ptr %i.i, i64 %indvars.iv165 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !62
  %i.ax = icmp eq i32 %i.aw, %i.c
  br i1 %i.ax, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.lr.ph156
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv3dnn14AccumLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.22, i32 noundef 40) #23
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.r:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %20, align 8, !tbaa !33   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.r
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !27
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.q
  %.pn60 = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.az, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.ap

bb.s:                                             ; preds = %.lr.ph156
  %i.bf = load i32, ptr %i.au, align 4, !tbaa !72
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %_ZNK2cv8MatShapeixEm.exit84, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %bb.v
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit84:                      ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !62
  %i.bp = add nsw i32 %i.bo, %.043154             ; 2 uses
  %indvars.iv.next166 = add nuw i64 %indvars.iv165, 1
  %exitcond168.not = icmp eq i64 %indvars.iv165, %i.s
  br i1 %exitcond168.not, label %._crit_edge157, label %.lr.ph156, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.ak, %.preheader133
  %.0130.lcssa = phi i32 [ -1, %.preheader133 ], [ %.sroa.speculated123, %bb.ak ] ; 3 uses
  %.0129.lcssa = phi i32 [ -1, %.preheader133 ], [ %.sroa.speculated, %bb.ak ] ; 3 uses
  %.040.lcssa = phi i32 [ 0, %.preheader133 ], [ %i.de, %bb.ak ]
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %.040.lcssa)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !56 ; 3 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.am, label %bb.al

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ak
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ak ] ; 2 uses
  %.040150 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.de, %bb.ak ]
  %.0129149 = phi i32 [ -1, %.lr.ph.preheader ], [ %.sroa.speculated, %bb.ak ]
  %.0130148 = phi i32 [ -1, %.lr.ph.preheader ], [ %.sroa.speculated123, %bb.ak ]
  %i.bs = getelementptr inbounds nuw [52 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !72 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %_ZNK2cv8MatShapeixEm.exit90, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.y
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !27
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i88: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit90:                      ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !62
  %.not131 = icmp eq i32 %i.bt, 2
  br i1 %.not131, label %bb.z, label %_ZNK2cv8MatShapeixEm.exit96

bb.z:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit90
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %bb.ab
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit96:                      ; preds = %_ZNK2cv8MatShapeixEm.exit90
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !62
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0129149, i32 %i.cl) ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.bt, 3
  br i1 %i.cm, label %_ZNK2cv8MatShapeixEm.exit102, label %bb.ac

bb.ac:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.20, i32 noundef 103) #23
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.ae
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !27
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit102:                     ; preds = %_ZNK2cv8MatShapeixEm.exit96
  %i.ct = load i32, ptr %i.cb, align 4, !tbaa !62
  %i.cu = icmp eq i32 %i.ct, %i.c
  br i1 %i.cu, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv3dnn14AccumLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.22, i32 noundef 63) #23
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.aj:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.aj
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ai ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.cw, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ap

bb.ak:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit102
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !62
  %.sroa.speculated123 = call i32 @llvm.smax.i32(i32 %.0130148, i32 %i.dd) ; 2 uses
  %i.de = add nsw i32 %i.cd, %.040150             ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !142

bb.al:                                            ; preds = %._crit_edge
  %i.df = sitofp i32 %i.br to double
  %i.dg = insertelement <2 x i32> poison, i32 %.0129.lcssa, i64 0
  %i.dh = insertelement <2 x i32> %i.dg, i32 %.0130.lcssa, i64 1
  %i.di = insertelement <2 x i32> poison, i32 %i.br, i64 0
  %i.dj = shufflevector <2 x i32> %i.di, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dk = sdiv <2 x i32> %i.dh, %i.dj
  %i.dl = sitofp <2 x i32> %i.dk to <2 x double>
  %i.dm = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul nnan <2 x double> %i.dn, %i.dl
  %i.dp = fptosi <2 x double> %i.do to <2 x i32>
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.dr = load <2 x i32>, ptr %i.dq, align 4, !tbaa !62
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ds = phi <2 x i32> [ %i.dp, %bb.al ], [ %i.dr, %bb.am ] ; 2 uses
  %i.dt = extractelement <2 x i32> %i.ds, i64 0   ; 2 uses
  %.not55 = icmp sgt i32 %i.dt, %.0129.lcssa
  %i.du = extractelement <2 x i32> %i.ds, i64 1   ; 2 uses
  %.not56 = icmp sgt i32 %i.du, %.0130.lcssa
end_hunk_0
