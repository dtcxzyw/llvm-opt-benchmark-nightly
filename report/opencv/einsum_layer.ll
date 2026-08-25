Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/einsum_layer?download=true
inline.NumInlined: 2249
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN2cv9Algorithm4readERKNS_8FileNodeE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare noundef ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9subgraphsEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #5

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @_ZN2cv3dnn14dnn5_v202606055Layer7forwardERSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EESB_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15LayerEinsumImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %5 = alloca %"class.std::vector.6", align 8     ; 14 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 21 uses
  %8 = alloca %"struct.cv::MatShape", align 4     ; 8 uses
  %9 = alloca %"struct.cv::MatShape", align 4     ; 7 uses
  %10 = alloca %"struct.cv::MatShape", align 4    ; 4 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %14 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn15LayerEinsumImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E25__cv_trace_location_fn515)
  %i.a = load ptr, ptr %4, align 8, !tbaa !369
  %.not108 = icmp eq ptr %i.a, null
  br i1 %.not108, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  invoke void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv3dnn15LayerEinsumImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E22__cv_trace_arg_name516, ptr noundef %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.e = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !230
  %i.h = sext i32 %i.g to i64
  %i.i = icmp eq i64 %i.e, %i.h
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.k = load i32, ptr %i.f, align 8, !tbaa !230
  %i.l = sext i32 %i.k to i64
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.j, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn15LayerEinsumImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E15__cv_check__517) #22
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.m = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.n = icmp eq i32 %i.m, 7
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cf unwind label %bb.c

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN2cv3dnn15LayerEinsumImpl16preProcessInputsERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.m unwind label %bb.c

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %8)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %9)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %10)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 7 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !159
  %i.q = sext i32 %i.p to i64
  invoke void @_ZN2cv8MatShape7reserveEm(ptr noundef nonnull align 4 dereferenceable(52) %8, i64 noundef %i.q)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.r = load i32, ptr %i.o, align 8, !tbaa !159
  %i.s = sext i32 %i.r to i64
  invoke void @_ZN2cv8MatShape7reserveEm(ptr noundef nonnull align 4 dereferenceable(52) %9, i64 noundef %i.s)
          to label %.preheader112 unwind label %bb.w

.preheader112:                                    ; preds = %bb.s
  %i.t = load i32, ptr %i.o, align 8, !tbaa !159
  %.not126 = icmp eq i32 %i.t, 0
  br i1 %.not126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464
  br label %.invoke

._crit_edge:                                      ; preds = %bb.y, %.preheader112
  %i.v = load i32, ptr %8, align 4, !tbaa !24
  %.not = icmp slt i32 %i.v, 1
  br i1 %.not, label %bb.ag, label %bb.z

bb.t:                                             ; preds = %bb.n, %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.u:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.v:                                             ; preds = %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.w:                                             ; preds = %bb.aj, %bb.ah, %bb.s, %bb.r, %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.invoke:                                          ; preds = %.lr.ph, %bb.y
  %.039114 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.y ] ; 3 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.039114
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = trunc i64 %.039114 to i32
  %i.af = select i1 %i.ad, ptr %8, ptr %9
  invoke void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %i.af, i32 noundef %i.ae)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %.invoke
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.y:                                             ; preds = %.invoke
  %i.ah = add nuw i64 %.039114, 1                 ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !159
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp ult i64 %i.ah, %i.aj
  br i1 %i.ak, label %.invoke, label %._crit_edge, !llvm.loop !372

bb.z:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !143
  %i.an = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.am)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %. = select i1 %i.an, ptr %5, ptr %i.al
  %i.ao = load ptr, ptr %., align 8, !tbaa !143
  invoke void @_ZN2cv3dnn15LayerEinsumImpl9reduceSumERNS_3MatERNS_8MatShapeE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.ao, ptr noundef nonnull align 4 dereferenceable(52) %8)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ap = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ak

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.ae ], [ %i.aq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.at

bb.ag:                                            ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !158 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !158
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ax = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.at)
          to label %bb.ai unwind label %bb.w

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ax, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.az = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ay)
          to label %bb.ak unwind label %bb.w      ; 0 uses

bb.ak:                                            ; preds = %bb.ag, %bb.ai, %bb.aj, %bb.ac
  %i.ba = load i32, ptr %i.f, align 8, !tbaa !230 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.bc = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.bd = load ptr, ptr %5, align 8
  %spec.select106 = select i1 %i.bc, ptr %i.bd, ptr %7
  invoke void @_ZN2cv3dnn15LayerEinsumImpl14FinalizeOutputERKNS_3MatERKNS_8MatShapeE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(208) %spec.select106, ptr noundef nonnull align 4 dereferenceable(52) %9)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.be = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %bb.ao unwind label %bb.aq     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %.pre = load i32, ptr %i.f, align 8, !tbaa !230
  br label %bb.as

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn61 = phi { ptr, i32 } [ %i.bg, %bb.aq ], [ %i.bf, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.ak
  %i.bh = phi i32 [ %.pre, %bb.ao ], [ %i.ba, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %bb.as
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %bb.aw

._crit_edge125:                                   ; preds = %bb.bl, %bb.as
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bp = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %i.bo)
          to label %bb.bq unwind label %bb.bu     ; 5 uses

bb.at:                                            ; preds = %bb.ar, %bb.af, %bb.x, %bb.w
  %.pn76 = phi { ptr, i32 } [ %i.ag, %bb.x ], [ %.pn61, %bb.ar ], [ %.pn, %bb.af ], [ %i.z, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.v
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.at ], [ %i.y, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.u
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.au ], [ %i.x, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cn

bb.aw:                                            ; preds = %.lr.ph124, %bb.bl
  %indvars.iv132.a = phi i64 [ 1, %.lr.ph124 ], [ %indvars.iv.next133, %bb.bl ] ; 6 uses
  %.038121 = phi i1 [ false, %.lr.ph124 ], [ %spec.select, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %13)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.bq = load i32, ptr %i.o, align 8, !tbaa !159
  %i.br = sext i32 %i.bq to i64
  invoke void @_ZN2cv8MatShape7reserveEm(ptr noundef nonnull align 4 dereferenceable(52) %13, i64 noundef %i.br)
          to label %.preheader111 unwind label %bb.ay

.preheader111:                                    ; preds = %bb.ax
  %i.bs = load i32, ptr %i.o, align 8, !tbaa !159 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph116, label %._crit_edge117

._crit_edge117:                                   ; preds = %bb.bb, %.preheader111
  %i.bu = load i32, ptr %i.f, align 8, !tbaa !230
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp eq i64 %indvars.iv132.a, %i.bw
  %spec.select = select i1 %i.bx, i1 true, i1 %.038121 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %14)
          to label %.preheader unwind label %bb.bc

.preheader:                                       ; preds = %._crit_edge117
  %i.by = load i32, ptr %i.bk, align 8, !tbaa !194
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph119, label %._crit_edge120

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.lr.ph116:                                        ; preds = %.preheader111, %bb.bb
  %i.cb = phi i32 [ %i.cj, %bb.bb ], [ %i.bs, %.preheader111 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ 0, %.preheader111 ] ; 3 uses
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !27
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp eq i64 %indvars.iv132.a, %i.cf
  br i1 %i.cg, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.lr.ph116
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %13, i32 noundef %i.ch)
          to label %._crit_edge134 unwind label %bb.ba

._crit_edge134:                                   ; preds = %bb.az
  %.pre135 = load i32, ptr %i.o, align 8, !tbaa !159
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bb:                                            ; preds = %._crit_edge134, %.lr.ph116
  %i.cj = phi i32 [ %.pre135, %._crit_edge134 ], [ %i.cb, %.lr.ph116 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph116, label %._crit_edge117, !llvm.loop !373

._crit_edge120:                                   ; preds = %bb.bd, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.cm = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bf unwind label %bb.bm

bb.bc:                                            ; preds = %._crit_edge117
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph119:                                        ; preds = %.preheader, %bb.bd
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %bb.bd ], [ 0, %.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv129
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !27
  invoke void @_ZN2cv8MatShape12emplace_backEi(ptr noundef nonnull align 4 dereferenceable(52) %14, i32 noundef %i.cp)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %.lr.ph119
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.cq = load i32, ptr %i.bk, align 8, !tbaa !194
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i64 %indvars.iv.next130, %i.cr
  br i1 %i.cs, label %.lr.ph119, label %._crit_edge120, !llvm.loop !374

bb.be:                                            ; preds = %.lr.ph119
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bf:                                            ; preds = %._crit_edge120
  %i.cu = load ptr, ptr %5, align 8
  %spec.select107 = select i1 %i.cm, ptr %i.cu, ptr %7
  %i.cv = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.cv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.cw = load ptr, ptr %i.bm, align 8, !tbaa !134
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.cx = phi ptr [ %i.cw, %bb.bh ], [ %14, %bb.bg ]
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !143
  %i.cz = getelementptr inbounds nuw [208 x i8], ptr %i.cy, i64 %indvars.iv132.a
  %i.da = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cz)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.110 = select i1 %i.da, ptr %5, ptr %i.bn
  %.pn109.a = load ptr, ptr %.110, align 8, !tbaa !143
  %i.db = getelementptr inbounds nuw [208 x i8], ptr %.pn109.a, i64 %indvars.iv132.a
  %i.dc = load ptr, ptr %i.bm, align 8, !tbaa !134
  %i.dd = getelementptr inbounds nuw [52 x i8], ptr %i.dc, i64 %indvars.iv132.a
  invoke void @_ZN2cv3dnn15LayerEinsumImpl22pairwiseOperandProcessERKNS_3MatERKNS_8MatShapeES4_S7_S7_b(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(208) %spec.select107, ptr noundef nonnull align 4 dereferenceable(52) %i.cx, ptr noundef nonnull align 8 dereferenceable(208) %i.db, ptr noundef nonnull align 4 dereferenceable(52) %i.dd, ptr noundef nonnull align 4 dereferenceable(52) %13, i1 noundef zeroext %spec.select)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.de = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %15)
          to label %bb.bl unwind label %bb.bn     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132.a, 1 ; 2 uses
  %i.df = load i32, ptr %i.f, align 8, !tbaa !230
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next133, %i.dg
  br i1 %i.dh, label %bb.aw, label %._crit_edge125, !llvm.loop !375

bb.bm:                                            ; preds = %bb.bj, %bb.bi, %bb.bf, %._crit_edge120
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn70 = phi { ptr, i32 } [ %i.dj, %bb.bn ], [ %i.di, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body

.body:                                            ; preds = %bb.be, %bb.bo, %bb.bc
  %.pn72 = phi { ptr, i32 } [ %i.cn, %bb.bc ], [ %.pn70, %bb.bo ], [ %i.ct, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.bp

bb.bp:                                            ; preds = %.body, %bb.ba, %bb.ay
  %.pn74 = phi { ptr, i32 } [ %i.ci, %bb.ba ], [ %.pn72, %.body ], [ %i.ca, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.cn

bb.bq:                                            ; preds = %._crit_edge125
  %i.dk = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %i.bo)
          to label %bb.br unwind label %bb.bu     ; 3 uses

bb.br:                                            ; preds = %bb.bq
  %.not6.i = icmp eq ptr %i.bp, %i.dk
  br i1 %.not6.i, label %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.br
  %i.dl = ptrtoaddr ptr %i.dk to i64
  %i.dm = ptrtoaddr ptr %i.bp to i64
  %i.dn = add i64 %i.dl, -4
  %i.do = sub i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = lshr i64 %i.do, 2
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.do, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.dq, 9223372036854775800     ; 3 uses
  %i.dr = shl i64 %n.vec, 2
  %i.ds = getelementptr i8, ptr %i.bp, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dv, %vector.body ]
  %vec.phi152 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dw, %vector.body ]
  %i.dt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !27
  %wide.load153 = load <4 x i32>, ptr %i.du, align 4, !tbaa !27
  %i.dv = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dw = mul <4 x i32> %wide.load153, %vec.phi152 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dw, %i.dv
  %i.dy = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit, label %.lr.ph.i.preheader174

.lr.ph.i.preheader174:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi ptr [ %i.bp, %.lr.ph.i.preheader ], [ %i.ds, %middle.block ]
  %.057.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader174, %.lr.ph.i
  %.08.i = phi ptr [ %i.eb, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader174 ] ; 2 uses
  %.057.i = phi i32 [ %i.ea, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader174 ]
  %i.dz = load i32, ptr %.08.i, align 4, !tbaa !27
  %i.ea = mul nsw i32 %i.dz, %.057.i              ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.eb, %i.dk
  br i1 %.not.i, label %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit, label %.lr.ph.i, !llvm.loop !377

_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.br
  %.05.lcssa.i = phi i32 [ 1, %bb.br ], [ %i.dy, %middle.block ], [ %i.ea, %.lr.ph.i ] ; 2 uses
  %i.ec = sext i32 %.05.lcssa.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %16, ptr noundef nonnull align 4 dereferenceable(52) %i.ed)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.bv

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit
  %i.ee = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %16)
          to label %bb.bs unwind label %bb.bw     ; 5 uses

bb.bs:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ef = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %16)
          to label %bb.bt unwind label %bb.bw     ; 3 uses

bb.bt:                                            ; preds = %bb.bs
  %.not6.i87 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not6.i87, label %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit93, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %bb.bt
  %i.eg = ptrtoaddr ptr %i.ef to i64
  %i.eh = ptrtoaddr ptr %i.ee to i64
  %i.ei = add i64 %i.eg, -4
  %i.ej = sub i64 %i.ei, %i.eh                    ; 2 uses
  %i.ek = lshr i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check155 = icmp ult i64 %i.ej, 28
  br i1 %min.iters.check155, label %.lr.ph.i88.preheader171, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i88.preheader
  %n.vec157 = and i64 %i.el, 9223372036854775800  ; 3 uses
  %i.em = shl i64 %n.vec157, 2
  %i.en = getelementptr i8, ptr %i.ee, i64 %i.em
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next165, %vector.body158 ] ; 2 uses
  %vec.phi160 = phi <4 x i32> [ splat (i32 1), %vector.ph156 ], [ %i.eq, %vector.body158 ]
  %vec.phi161 = phi <4 x i32> [ splat (i32 1), %vector.ph156 ], [ %i.er, %vector.body158 ]
  %i.eo = shl i64 %index159, 2
  %next.gep162 = getelementptr i8, ptr %i.ee, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load163 = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !27
  %wide.load164 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !27
  %i.eq = mul <4 x i32> %wide.load163, %vec.phi160 ; 2 uses
  %i.er = mul <4 x i32> %wide.load164, %vec.phi161 ; 2 uses
  %index.next165 = add nuw i64 %index159, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next165, %n.vec157
  br i1 %i.es, label %middle.block166, label %vector.body158, !llvm.loop !378

middle.block166:                                  ; preds = %vector.body158
  %bin.rdx167 = mul <4 x i32> %i.er, %i.eq
  %i.et = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx167) ; 2 uses
  %cmp.n168 = icmp eq i64 %i.el, %n.vec157
  br i1 %cmp.n168, label %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit93, label %.lr.ph.i88.preheader171

.lr.ph.i88.preheader171:                          ; preds = %.lr.ph.i88.preheader, %middle.block166
  %.08.i89.ph = phi ptr [ %i.ee, %.lr.ph.i88.preheader ], [ %i.en, %middle.block166 ]
  %.057.i90.ph = phi i32 [ 1, %.lr.ph.i88.preheader ], [ %i.et, %middle.block166 ]
  br label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader171, %.lr.ph.i88
  %.08.i89 = phi ptr [ %i.ew, %.lr.ph.i88 ], [ %.08.i89.ph, %.lr.ph.i88.preheader171 ] ; 2 uses
  %.057.i90 = phi i32 [ %i.ev, %.lr.ph.i88 ], [ %.057.i90.ph, %.lr.ph.i88.preheader171 ]
  %i.eu = load i32, ptr %.08.i89, align 4, !tbaa !27
  %i.ev = mul nsw i32 %i.eu, %.057.i90            ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i89, i64 4 ; 2 uses
  %.not.i91 = icmp eq ptr %i.ew, %i.ef
  br i1 %.not.i91, label %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit93, label %.lr.ph.i88, !llvm.loop !379

_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit93: ; preds = %.lr.ph.i88, %middle.block166, %bb.bt
  %.05.lcssa.i92 = phi i32 [ 1, %bb.bt ], [ %i.et, %middle.block166 ], [ %i.ev, %.lr.ph.i88 ] ; 2 uses
  %i.ex = icmp eq i32 %.05.lcssa.i, %.05.lcssa.i92
  br i1 %i.ex, label %bb.bz, label %bb.bx

bb.bu:                                            ; preds = %bb.bq, %._crit_edge125
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bv:                                            ; preds = %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bw:                                            ; preds = %bb.bx, %bb.bs, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bx:                                            ; preds = %_ZSt10accumulateIPiiSt10multipliesIiEET0_T_S4_S3_T1_.exit93
  %i.fb = sext i32 %.05.lcssa.i92 to i64
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.ec, i64 noundef %i.fb, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn15LayerEinsumImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E15__cv_check__612) #22
          to label %bb.by unwind label %bb.bw
end_hunk_0
