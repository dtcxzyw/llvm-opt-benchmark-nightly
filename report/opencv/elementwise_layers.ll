Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/elementwise_layers?download=true
inline.NumInlined: 5542
inline.NumDeleted: 1795
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_:bb.a
  %i.eh = sdiv exact i64 %i.eg, 208
  %i.ei = icmp ult i64 %i.eb, %i.eh
  br i1 %i.ei, label %bb.i, label %._crit_edge, !llvm.loop !1219

bb.bt:                                            ; preds = %bb.c, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit88
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !303
  %.not.i106 = icmp eq i32 %i.ek, 0
  br i1 %.not.i106, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit102:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn123, %.thread ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn64.pn.pn.pn.pn, %bb.bn ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %lpad.thr_comm.split-lp, %bb.ay ], [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit102, %bb.d
  %.pn78 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn72.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit102 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn78
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  %i.b = icmp eq i32 %1, 5
  %i.c = or i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE7tryFuseERNS_3PtrINS0_14dnn5_v202606055LayerEEE(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE13getScaleShiftERNS_3MatES5_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS5_EEiRS7_SA_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EEiRS6_S9_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE8getFLOPSERKSt6vectorINS_8MatShapeESaIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !307    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.bd, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ]
  ret i64 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ] ; 2 uses
  %.079 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bd, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ]
  %i.h = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.l = icmp ult i32 %i.i, 8
  br i1 %i.l, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new

_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new:            ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02127.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %i.ay, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !136
  %i.o = sext i32 %i.n to i64
  %i.p = mul i64 %.02127.i, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.p, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !136
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !136
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !136
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !136
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !136
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !136
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.at, %i.ax                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !6

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.ay, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ] ; 2 uses
  %.02127.i.epil = phi i64 [ %.02127.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %epil.iter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !136
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %.02127.i.epil, %i.bb           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !1220

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %.lr.ph
  %.021.lcssa.i = phi i64 [ 1, %.lr.ph ], [ %i.ay, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bd = add i64 %.021.lcssa.i, %.079            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1221
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE12forwardSliceEPKfPfimii(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.b = icmp slt i32 %5, %6
  br i1 %i.b, label %.preheader.lr.ph.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br i1 %i.c, label %.preheader.preheader.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 4 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = xor i32 %5, -1
  %i.f = add i32 %6, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = mul i64 %4, %i.g
  %i.i = add i64 %i.h, %wide.trip.count.i
  %i.j = shl i64 %i.i, 2                          ; 2 uses
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.j
  %scevgep15.a = getelementptr i8, ptr %2, i64 %i.j ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %2, %scevgep14
  %bound1 = icmp ult ptr %1, %scevgep15.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %4, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %7 = or i1 %found.conflict, %stride.check
  %bound016 = icmp ult ptr %2, %scevgep
  %bound117 = icmp ult ptr %i.a, %scevgep15.a
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx = or i1 %7, %found.conflict18
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.022.i = phi ptr [ %i.ac, %._crit_edge.i ], [ %1, %.preheader.preheader.i ] ; 3 uses
  %.01721.i = phi i32 [ %i.ab, %._crit_edge.i ], [ %5, %.preheader.preheader.i ]
  %.01820.i = phi ptr [ %i.ad, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.k = load float, ptr %i.a, align 4, !tbaa !526, !alias.scope !1228
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.l = load float, ptr %i.d, align 8, !tbaa !527, !alias.scope !1228
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x float>, ptr %i.m, align 4, !tbaa !253, !alias.scope !1229
  %wide.load19 = load <4 x float>, ptr %i.n, align 4, !tbaa !253, !alias.scope !1229
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %broadcast.splat21) ; 2 uses
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load19, <4 x float> %broadcast.splat21) ; 2 uses
  %i.q = fcmp olt <4 x float> %i.o, splat (float 1.000000e+00)
  %i.r = fcmp olt <4 x float> %i.p, splat (float 1.000000e+00)
  %i.s = select <4 x i1> %i.q, <4 x float> %i.o, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.t = select <4 x i1> %i.r, <4 x float> %i.p, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.u = fcmp ogt <4 x float> %i.s, zeroinitializer
  %i.v = fcmp ogt <4 x float> %i.t, zeroinitializer
  %i.w = select <4 x i1> %i.u, <4 x float> %i.s, <4 x float> zeroinitializer
  %i.x = select <4 x i1> %i.v, <4 x float> %i.t, <4 x float> zeroinitializer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> %i.w, ptr %i.y, align 4, !tbaa !253, !alias.scope !1230, !noalias !1231
  store <4 x float> %i.x, ptr %i.z, align 4, !tbaa !253, !alias.scope !1230, !noalias !1231
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1226

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ab = add nsw i32 %.01721.i, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %4
  %exitcond25.not.i = icmp eq i32 %i.ab, %6
  br i1 %exitcond25.not.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit, label %.preheader.i, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !253
  %i.ag = load float, ptr %i.a, align 4, !tbaa !526
  %i.ah = load float, ptr %i.d, align 8, !tbaa !527
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.af, float %i.ah) ; 2 uses
  %i.aj = fcmp olt float %i.ai, 1.000000e+00
  %i.ak = select i1 %i.aj, float %i.ai, float 1.000000e+00 ; 2 uses
  %i.al = fcmp ogt float %i.ak, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.al, float %i.ak, float 0.000000e+00
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i
  store float %.sroa.speculated.i.i, ptr %i.am, align 4, !tbaa !253
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1227

_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit: ; preds = %._crit_edge.i, %bb.a, %.preheader.lr.ph.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE17getActivationFuncEiRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = tail call noundef ptr @_ZNK2cv3dnn18HardSigmoidFunctor17getActivationFuncEiRSt6vectorIfSaIfEE(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv3dnn18HardSigmoidFunctor17getActivationFuncEiRSt6vectorIfSaIfEE(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 7 uses
  %.not = icmp eq i32 %1, 5
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !253 ; 2 uses
  store <2 x float> %i.b, ptr %i.a, align 8, !tbaa !253
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350
  %i.e = load ptr, ptr %2, align 8, !tbaa !351    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8
  store i64 %i.k, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %2, align 8, !tbaa !351    ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !350
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #23
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.j, ptr %2, align 8, !tbaa !351
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !352
  store ptr %i.r, ptr %i.c, align 8, !tbaa !350
  br label %_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !352  ; 5 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.g                       ; 7 uses
  %.not.i = icmp ult i64 %i.v, 8
  br i1 %.not.i, label %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.a, align 8
  store i64 %i.w, ptr %i.e, align 4
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !352
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.not.i16.i = icmp eq ptr %.pre.i, %i.x
  br i1 %.not.i16.i, label %_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.x, ptr %i.s, align 8, !tbaa !352
  br label %_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit

_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.e
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v ; 2 uses
  %i.y = icmp samesign ugt i64 %i.v, 4
  br i1 %i.y, label %bb.i, label %bb.g, !prof !101

bb.g:                                             ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.z = icmp eq i64 %i.v, 4
  br i1 %i.z, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gepdiff = sub nuw nsw i64 8, %i.v              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.t, ptr nonnull align 4 %.sink.i.i, i64 %gepdiff, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E.exit.i

bb.i:                                             ; preds = %_ZSt9__advanceIPKflEvRT_T0_St26random_access_iterator_tag.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.e, ptr nonnull align 8 %i.a, i64 %i.v, i1 false)
  %.pre21.i = load ptr, ptr %i.s, align 8, !tbaa !352
  %gepdiff6 = sub nuw nsw i64 8, %i.v
  br label %_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E.exit.i

bb.j:                                             ; preds = %bb.g
  %i.aa = extractelement <2 x float> %i.b, i64 0
  store float %i.aa, ptr %i.e, align 4, !tbaa !253
  %i.ab = load float, ptr %.sink.i.i, align 4, !tbaa !253
  store float %i.ab, ptr %i.t, align 4, !tbaa !253
  br label %_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.i, %bb.j, %bb.h
  %gepdiff7 = phi i64 [ 4, %bb.j ], [ %gepdiff6, %bb.i ], [ %gepdiff, %bb.h ]
  %i.ac = phi ptr [ %i.t, %bb.j ], [ %.pre21.i, %bb.i ], [ %i.t, %bb.h ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %gepdiff7
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !352
  br label %_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit

_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit: ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, %bb.f, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %_ZSt22__uninitialized_copy_aIPKfPffET0_T_S4_S3_RSaIT1_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ae = tail call noundef ptr @_ZN2cv3dnn14dnn5_v2026060517getActivationFuncEi(i32 noundef 7)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit
  %.0 = phi ptr [ %i.ae, %_ZNSt6vectorIfSaIfEE13_M_assign_auxIPKfEEvT_S5_St20forward_iterator_tag.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !254    ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !318    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !319
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %i.ad, label %bb.b, label %_ZSt10__invoke_rIvRZN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESA_EUlRKNS0_5RangeEE_JSD_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit, !llvm.loop !1233

_ZSt10__invoke_rIvRZN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESA_EUlRKNS0_5RangeEE_JSD_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn16ElementWiseLayerINS5_18HardSigmoidFunctorEE7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESE_EUlS3_E_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !339
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !254
  store ptr %i.a, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !254
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !353
  store ptr %i.c, ptr %0, align 8, !tbaa !254
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #23
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn16ElementWiseLayerINS2_18HardSigmoidFunctorEE7forwardERKNS1_11_InputArrayERKNS1_12_OutputArrayESB_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE5PBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_18HardSigmoidFunctorEE5PBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !524
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !522  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 5 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %.02469 = load i32, ptr %i.q, align 4, !tbaa !136
  br label %.lr.ph50

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.024 = load i32, ptr %i.t, align 4, !tbaa !136
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.v = load i32, ptr %i.u, align 4, !tbaa !308
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 9 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.v, i32 2)
  %i.x = add nsw i32 %smax, -2
  %i.y = add nsw i32 %i.f, -3
  %.not.not = icmp samesign ugt i32 %i.x, %i.y
  br i1 %.not.not, label %_ZNK2cv8MatShapeixEm.exit37.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit37.preheader:            ; preds = %.lr.ph
  %i.z = zext nneg i32 %i.f to i64
  %i.aa = add nsw i64 %i.z, -2                    ; 2 uses
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.ab = add nsw i32 %i.f, -3
  %i.ac = icmp ult i32 %i.ab, 7
  br i1 %i.ac, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit37.preheader.new

_ZNK2cv8MatShapeixEm.exit37.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit37.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %_ZNK2cv8MatShapeixEm.exit37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2cv8MatShapeixEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader

_ZNK2cv8MatShapeixEm.exit37.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.04446.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %i.dd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %_ZNK2cv8MatShapeixEm.exit37.epil

_ZNK2cv8MatShapeixEm.exit37.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit37.epil, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ] ; 2 uses
  %.04446.epil = phi i64 [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %.04446.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.epil
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !136
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %.04446.epil, %i.af             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil, !llvm.loop !1241

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.epil, %bb.f
  %.044.lcssa = phi i64 [ 1, %bb.f ], [ %i.dd, %._crit_edge.loopexit.unr-lcssa ], [ %i.ag, %_ZNK2cv8MatShapeixEm.exit37.epil ]
  %i.ah = icmp sgt i32 %i.s, 0
  br i1 %i.ah, label %.lr.ph50, label %._crit_edge51.split

.lr.ph50:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %.044.lcssa77 = phi i64 [ 1, %._crit_edge.thread ], [ %.044.lcssa, %._crit_edge ] ; 6 uses
  %.07076 = phi i32 [ 1, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  %.0247175 = phi i32 [ %.02469, %._crit_edge.thread ], [ %.024, %._crit_edge ] ; 3 uses
  %i.ai = sext i32 %i.b to i64                    ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = add i64 %i.aj, %.044.lcssa77
  %i.al = udiv i64 %i.ak, %i.ai                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !319
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.044.lcssa77, i64 %i.ap)
  %i.aq = load i32, ptr %1, align 4, !tbaa !318
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul i64 %i.al, %i.ar                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !252 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !523 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !252 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !97
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.ba, i64 %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !521 ; 5 uses
  %i.bf = sub i64 %.sroa.speculated, %i.as        ; 3 uses
  %i.bg = icmp slt i32 %.0247175, 1
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = icmp slt i32 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %wide.trip.count.i = and i64 %i.bf, 2147483647  ; 4 uses
  %brmerge = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %brmerge, label %._crit_edge51.split, label %.preheader.lr.ph.i.preheader

.preheader.lr.ph.i.preheader:                     ; preds = %.lr.ph50
  %wide.trip.count = zext nneg i32 %.07076 to i64
  %scevgep = getelementptr i8, ptr %i.be, i64 8
  %i.bk = add nsw i32 %.0247175, -1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul i64 %.044.lcssa77, %i.bl
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  %i.bn = mul i64 %i.al, %i.ar
  %i.bo = add i64 %i.bn, %i.bm
  %i.bp = add i64 %i.bo, %wide.trip.count.i
  %6 = shl i64 %i.bp, 2                           ; 2 uses
  %7 = getelementptr i8, ptr %i.ba, i64 %6
  %i.bq = getelementptr i8, ptr %i.au, i64 %6
  %.mask = and i64 %.044.lcssa77, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %i.bf, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br label %.preheader.lr.ph.i

_ZNK2cv8MatShapeixEm.exit37:                      ; preds = %_ZNK2cv8MatShapeixEm.exit37, %_ZNK2cv8MatShapeixEm.exit37.preheader.new
  %indvars.iv = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %indvars.iv.next.7, %_ZNK2cv8MatShapeixEm.exit37 ] ; 9 uses
  %.04446 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %i.dd, %_ZNK2cv8MatShapeixEm.exit37 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit37 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !136
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %.04446, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !136
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !136
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !136
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul i64 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !136
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !136
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !136
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !136
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cy, %i.dc                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit37, !llvm.loop !1242

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !95
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

._crit_edge51.split:                              ; preds = %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit, %.lr.ph50, %._crit_edge
  ret void

.preheader.lr.ph.i:                               ; preds = %.preheader.lr.ph.i.preheader, %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit
  %indvars.iv57 = phi i64 [ 0, %.preheader.lr.ph.i.preheader ], [ %indvars.iv.next58, %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit ] ; 3 uses
  %i.dk = mul i64 %i.aw, %indvars.iv57            ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dk ; 2 uses
  %i.dl = mul i64 %i.bc, %indvars.iv57            ; 2 uses
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.dl ; 3 uses
  %i.dm = getelementptr i8, ptr %7, i64 %i.dl     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.bq, i64 %i.dk
  %bound0 = icmp ult ptr %gep53, %i.dn
  %bound1 = icmp ult ptr %gep, %i.dm
  %found.conflict = and i1 %bound0, %bound1
  %8 = or i1 %found.conflict, %stride.check
  %bound083 = icmp ult ptr %gep53, %scevgep
  %bound184 = icmp ult ptr %i.be, %i.dm
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx = or i1 %8, %found.conflict85
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.022.i = phi ptr [ %i.eg, %._crit_edge.i ], [ %gep, %.preheader.lr.ph.i ] ; 3 uses
  %.01721.i = phi i32 [ %i.ef, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ]
  %.01820.i = phi ptr [ %i.eh, %._crit_edge.i ], [ %gep53, %.preheader.lr.ph.i ] ; 3 uses
  %brmerge93 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge93, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.do = load float, ptr %i.be, align 4, !tbaa !526, !alias.scope !1250
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dp = load float, ptr %i.bj, align 4, !tbaa !527, !alias.scope !1250
  %broadcast.splatinsert87 = insertelement <4 x float> poison, float %i.dp, i64 0
  %broadcast.splat88 = shufflevector <4 x float> %broadcast.splatinsert87, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <4 x float>, ptr %i.dq, align 4, !tbaa !253, !alias.scope !1251
  %wide.load86 = load <4 x float>, ptr %i.dr, align 4, !tbaa !253, !alias.scope !1251
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %broadcast.splat88) ; 2 uses
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load86, <4 x float> %broadcast.splat88) ; 2 uses
  %i.du = fcmp olt <4 x float> %i.ds, splat (float 1.000000e+00)
  %i.dv = fcmp olt <4 x float> %i.dt, splat (float 1.000000e+00)
  %i.dw = select <4 x i1> %i.du, <4 x float> %i.ds, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.dx = select <4 x i1> %i.dv, <4 x float> %i.dt, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.dy = fcmp ogt <4 x float> %i.dw, zeroinitializer
  %i.dz = fcmp ogt <4 x float> %i.dx, zeroinitializer
  %i.ea = select <4 x i1> %i.dy, <4 x float> %i.dw, <4 x float> zeroinitializer
  %i.eb = select <4 x i1> %i.dz, <4 x float> %i.dx, <4 x float> zeroinitializer
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %i.ea, ptr %i.ec, align 4, !tbaa !253, !alias.scope !1252, !noalias !1253
  store <4 x float> %i.eb, ptr %i.ed, align 4, !tbaa !253, !alias.scope !1252, !noalias !1253
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !1247

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ef = add nuw nsw i32 %.01721.i, 1            ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %.044.lcssa77
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %.044.lcssa77
  %exitcond25.not.i = icmp eq i32 %i.ef, %.0247175
  br i1 %exitcond25.not.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit, label %.preheader.i, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !253
  %i.ek = load float, ptr %i.be, align 4, !tbaa !526
  %i.el = load float, ptr %i.bj, align 4, !tbaa !527
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ej, float %i.el) ; 2 uses
  %i.en = fcmp olt float %i.em, 1.000000e+00
  %i.eo = select i1 %i.en, float %i.em, float 1.000000e+00 ; 2 uses
  %i.ep = fcmp ogt float %i.eo, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ep, float %i.eo, float 0.000000e+00
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i
  store float %.sroa.speculated.i.i, ptr %i.eq, align 4, !tbaa !253
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1248

_ZNK2cv3dnn18BaseDefaultFunctorINS0_18HardSigmoidFunctorEE5applyEPKfPfiimii.exit.loopexit: ; preds = %._crit_edge.i
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge51.split, label %.preheader.lr.ph.i, !llvm.loop !1249
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_18HardSigmoidFunctorEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEE8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %13 = alloca %"class.cv::dnn::ElementWiseLayer<cv::dnn::SeluFunctor>::PBody", align 8 ; 11 uses
  %14 = alloca %"class.cv::Range", align 4        ; 6 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::dnn::ElementWiseLayer<cv::dnn::SeluFunctor>::PBody", align 8 ; 11 uses
  %19 = alloca %"class.cv::Range", align 4        ; 6 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn16ElementWiseLayerINS0_11SeluFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_E25__cv_trace_location_fn228)
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bc unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !245
  %i.f = load ptr, ptr %5, align 8, !tbaa !246    ; 2 uses
  %.not124 = icmp eq ptr %i.e, %i.f
  br i1 %.not124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %19, i64 4
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_:bb.a
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 208
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %bb.i, label %._crit_edge, !llvm.loop !1260

bb.bc:                                            ; preds = %bb.c, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit88
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !303
  %.not.i103 = icmp eq i32 %i.db, 0
  br i1 %.not.i103, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #25
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit99:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ah ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn64.pn.pn.pn.pn, %bb.aw ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit99, %bb.d
  %.pn78 = phi { ptr, i32 } [ %i.c, %bb.d ], [ %.pn72.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit99 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn78
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(164) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  %i.b = icmp eq i32 %1, 5
  %i.c = or i1 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE7tryFuseERNS_3PtrINS0_14dnn5_v202606055LayerEEE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE13getScaleShiftERNS_3MatES5_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS5_EEiRS7_SA_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EEiRS6_S9_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE8getFLOPSERKSt6vectorINS_8MatShapeESaIS5_EES9_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !307    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.bd, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ]
  ret i64 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ] ; 2 uses
  %.079 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bd, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ]
  %i.h = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.l = icmp ult i32 %i.i, 8
  br i1 %i.l, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new

_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new:            ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02127.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %i.ay, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !136
  %i.o = sext i32 %i.n to i64
  %i.p = mul i64 %.02127.i, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !136
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.p, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !136
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !136
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !136
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !136
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !136
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !136
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.at, %i.ax                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !6

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.ay, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ] ; 2 uses
  %.02127.i.epil = phi i64 [ %.02127.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %epil.iter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !136
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %.02127.i.epil, %i.bb           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !1261

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %.lr.ph
  %.021.lcssa.i = phi i64 [ 1, %.lr.ph ], [ %i.ay, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bd = add i64 %.021.lcssa.i, %.079            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1262
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE12forwardSliceEPKfPfimii(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.b = icmp slt i32 %5, %6
  %i.c = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 6 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.d = xor i32 %5, -1
  %i.e = add i32 %6, %i.d
  %i.f = zext i32 %i.e to i64
  %i.g = mul i64 %4, %i.f
  %i.h = add i64 %i.g, %wide.trip.count.i
  %i.i = shl i64 %i.h, 2                          ; 2 uses
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.i
  %scevgep15.a = getelementptr i8, ptr %2, i64 %i.i ; 2 uses
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %2, %scevgep14
  %bound1 = icmp ult ptr %1, %scevgep15.a
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %4, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %7 = or i1 %found.conflict, %stride.check
  %bound016 = icmp ult ptr %2, %scevgep
  %bound117 = icmp ult ptr %i.a, %scevgep15.a
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx = or i1 %7, %found.conflict18
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %wide.trip.count.i, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.022.i = phi ptr [ %i.ac, %._crit_edge.i ], [ %1, %.preheader.preheader.i ] ; 5 uses
  %.01721.i = phi i32 [ %i.ab, %._crit_edge.i ], [ %5, %.preheader.preheader.i ]
  %.01820.i = phi ptr [ %i.ad, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.k = load float, ptr %i.a, align 8, !tbaa !544, !alias.scope !1269
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x float>, ptr %i.l, align 4, !tbaa !253, !alias.scope !1270 ; 2 uses
  %wide.load19 = load <4 x float>, ptr %i.m, align 4, !tbaa !253, !alias.scope !1270 ; 2 uses
  %i.n = fcmp ogt <4 x float> %wide.load, %broadcast.splat
  %i.o = fcmp ogt <4 x float> %wide.load19, %broadcast.splat
  %i.p = select <4 x i1> %i.n, <4 x float> %wide.load, <4 x float> zeroinitializer
  %i.q = select <4 x i1> %i.o, <4 x float> %wide.load19, <4 x float> zeroinitializer
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %i.p, ptr %i.r, align 4, !tbaa !253, !alias.scope !1271, !noalias !1272
  store <4 x float> %i.q, ptr %i.s, align 4, !tbaa !253, !alias.scope !1271, !noalias !1272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1267

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i.ph
  %i.v = load float, ptr %i.u, align 4, !tbaa !253 ; 2 uses
  %i.w = load float, ptr %i.a, align 8, !tbaa !544
  %i.x = fcmp ogt float %i.v, %i.w
  %i.y = select i1 %i.x, float %i.v, float 0.000000e+00
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i.ph
  store float %i.y, ptr %i.z, align 4, !tbaa !253
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.aa = icmp eq i64 %indvars.iv.i.ph, %i.j
  br i1 %i.aa, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ab = add nsw i32 %.01721.i, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %4
  %exitcond25.not.i = icmp eq i32 %i.ab, %6
  br i1 %exitcond25.not.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit, label %.preheader.i, !llvm.loop !68

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !253 ; 2 uses
  %i.ag = load float, ptr %i.a, align 8, !tbaa !544
  %i.ah = fcmp ogt float %i.af, %i.ag
  %i.ai = select i1 %i.ah, float %i.af, float 0.000000e+00
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i
  store float %i.ai, ptr %i.aj, align 4, !tbaa !253
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.next.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !253 ; 2 uses
  %i.am = load float, ptr %i.a, align 8, !tbaa !544
  %i.an = fcmp ogt float %i.al, %i.am
  %i.ao = select i1 %i.an, float %i.al, float 0.000000e+00
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.next.i
  store float %i.ao, ptr %i.ap, align 4, !tbaa !253
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1268

_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit: ; preds = %._crit_edge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE17getActivationFuncEiRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(164) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE5PBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16ElementWiseLayerINS0_22ThresholdedReluFunctorEE5PBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !542
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !540  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !329  ; 5 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load i32, ptr %i.h, align 4, !tbaa !308
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !94     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !95
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %.02467 = load i32, ptr %i.q, align 4, !tbaa !136
  %i.r = load i32, ptr %1, align 4, !tbaa !318
  %i.s = sext i32 %i.r to i64
  br label %.lr.ph50

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !136  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.024 = load i32, ptr %i.v, align 4, !tbaa !136
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.x = load i32, ptr %i.w, align 4, !tbaa !308
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 9 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 2)
  %i.z = add nsw i32 %smax, -2
  %i.aa = add nsw i32 %i.f, -3
  %.not.not = icmp samesign ugt i32 %i.z, %i.aa
  br i1 %.not.not, label %_ZNK2cv8MatShapeixEm.exit37.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit37.preheader:            ; preds = %.lr.ph
  %i.ab = zext nneg i32 %i.f to i64
  %i.ac = add nsw i64 %i.ab, -2                   ; 2 uses
  %xtraiter = and i64 %i.ac, 7                    ; 3 uses
  %i.ad = add nsw i32 %i.f, -3
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit37.preheader.new

_ZNK2cv8MatShapeixEm.exit37.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit37.preheader
  %unroll_iter = and i64 %i.ac, -8
  br label %_ZNK2cv8MatShapeixEm.exit37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK2cv8MatShapeixEm.exit37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil.preheader

_ZNK2cv8MatShapeixEm.exit37.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.04446.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader ], [ %i.dh, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %_ZNK2cv8MatShapeixEm.exit37.epil

_ZNK2cv8MatShapeixEm.exit37.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit37.epil, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ] ; 2 uses
  %.04446.epil = phi i64 [ %i.ai, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ %.04446.epil.init, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit37.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit37.epil.preheader ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.epil
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !136
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %.04446.epil, %i.ah             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK2cv8MatShapeixEm.exit37.epil, !llvm.loop !1273

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit37.epil, %bb.f
  %.044.lcssa = phi i64 [ 1, %bb.f ], [ %i.dh, %._crit_edge.loopexit.unr-lcssa ], [ %i.ai, %_ZNK2cv8MatShapeixEm.exit37.epil ] ; 2 uses
  %i.aj = sext i32 %i.b to i64                    ; 2 uses
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = add i64 %i.ak, %.044.lcssa
  %i.am = udiv i64 %i.al, %i.aj                   ; 2 uses
  %i.an = load i32, ptr %1, align 4, !tbaa !318
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.am, %i.ao
  %i.aq = icmp sgt i32 %i.u, 0
  br i1 %i.aq, label %.lr.ph50, label %._crit_edge51.split

.lr.ph50:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %i.ar = phi i64 [ %i.s, %._crit_edge.thread ], [ %i.ap, %._crit_edge ] ; 4 uses
  %i.as = phi i64 [ 1, %._crit_edge.thread ], [ %i.am, %._crit_edge ]
  %.044.lcssa75 = phi i64 [ 1, %._crit_edge.thread ], [ %.044.lcssa, %._crit_edge ] ; 5 uses
  %.06874 = phi i32 [ 1, %._crit_edge.thread ], [ %i.u, %._crit_edge ]
  %.0246973 = phi i32 [ %.02467, %._crit_edge.thread ], [ %.024, %._crit_edge ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !319
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.as, %i.av
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.044.lcssa75, i64 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !539 ; 6 uses
  %i.az = sub i64 %.sroa.speculated, %i.ar        ; 4 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp sgt i32 %.0246973, 0
  %i.bc = icmp sgt i32 %i.ba, 0
  %or.cond.i = and i1 %i.bb, %i.bc
  %wide.trip.count.i = and i64 %i.az, 2147483647  ; 5 uses
  br i1 %or.cond.i, label %.lr.ph50.split, label %._crit_edge51.split

.lr.ph50.split:                                   ; preds = %.lr.ph50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !541 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !252 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !97 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bi, i64 %i.ar
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !252 ; 2 uses
  %i.bm = load i64, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %invariant.gep52 = getelementptr [4 x i8], ptr %i.bl, i64 %i.ar
  %wide.trip.count = zext nneg i32 %.06874 to i64
  %scevgep = getelementptr i8, ptr %i.ay, i64 4
  %i.bn = add nsw i32 %.0246973, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul i64 %.044.lcssa75, %i.bo
  %i.bq = add i64 %i.bp, %i.ar
  %i.br = add i64 %i.bq, %wide.trip.count.i
  %i.bs = shl i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bi, i64 %i.bs
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  %.mask = and i64 %.044.lcssa75, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %i.az, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter89 = and i64 %i.az, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br label %.preheader.preheader.i

_ZNK2cv8MatShapeixEm.exit37:                      ; preds = %_ZNK2cv8MatShapeixEm.exit37, %_ZNK2cv8MatShapeixEm.exit37.preheader.new
  %indvars.iv = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %indvars.iv.next.7, %_ZNK2cv8MatShapeixEm.exit37 ] ; 9 uses
  %.04446 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %i.dh, %_ZNK2cv8MatShapeixEm.exit37 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit37.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit37 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !136
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %.04446, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !136
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !136
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !136
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !136
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !136
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !136
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !136
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul i64 %i.dc, %i.dg                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit37, !llvm.loop !1274

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.61, i32 noundef 103) #22
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.i
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !95
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

._crit_edge51.split:                              ; preds = %_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit.loopexit, %.lr.ph50, %._crit_edge
  ret void

.preheader.preheader.i:                           ; preds = %.lr.ph50.split, %_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit.loopexit
  %indvars.iv55 = phi i64 [ 0, %.lr.ph50.split ], [ %indvars.iv.next56, %_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit.loopexit ] ; 5 uses
  %i.do = mul i64 %i.bm, %indvars.iv55
  %scevgep81 = getelementptr i8, ptr %i.bt, i64 %i.do
  %i.dp = mul i64 %i.bk, %indvars.iv55
  %scevgep82 = getelementptr i8, ptr %i.bu, i64 %i.dp ; 2 uses
  %i.dq = mul i64 %i.bk, %indvars.iv55
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dq ; 3 uses
  %i.dr = mul i64 %i.bm, %indvars.iv55
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %i.dr ; 2 uses
  %bound0 = icmp ult ptr %gep, %scevgep81
  %bound1 = icmp ult ptr %gep53, %scevgep82
  %found.conflict = and i1 %bound0, %bound1
  %6 = or i1 %found.conflict, %stride.check
  %bound083 = icmp ult ptr %gep, %scevgep
  %bound184 = icmp ult ptr %i.ay, %scevgep82
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx = or i1 %6, %found.conflict85
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.022.i = phi ptr [ %i.ek, %._crit_edge.i ], [ %gep53, %.preheader.preheader.i ] ; 5 uses
  %.01721.i = phi i32 [ %i.ej, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01820.i = phi ptr [ %i.el, %._crit_edge.i ], [ %gep, %.preheader.preheader.i ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ds = load float, ptr %i.ay, align 4, !tbaa !544, !alias.scope !1282
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ds, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !253, !alias.scope !1283 ; 2 uses
  %wide.load86 = load <4 x float>, ptr %i.du, align 4, !tbaa !253, !alias.scope !1283 ; 2 uses
  %i.dv = fcmp ogt <4 x float> %wide.load, %broadcast.splat
  %i.dw = fcmp ogt <4 x float> %wide.load86, %broadcast.splat
  %i.dx = select <4 x i1> %i.dv, <4 x float> %wide.load, <4 x float> zeroinitializer
  %i.dy = select <4 x i1> %i.dw, <4 x float> %wide.load86, <4 x float> zeroinitializer
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x float> %i.dx, ptr %i.dz, align 4, !tbaa !253, !alias.scope !1284, !noalias !1285
  store <4 x float> %i.dy, ptr %i.ea, align 4, !tbaa !253, !alias.scope !1284, !noalias !1285
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !1279

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  br i1 %lcmp.mod90.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i.ph
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !253 ; 2 uses
  %i.ee = load float, ptr %i.ay, align 4, !tbaa !544
  %i.ef = fcmp ogt float %i.ed, %i.ee
  %i.eg = select i1 %i.ef, float %i.ed, float 0.000000e+00
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i.ph
  store float %i.eg, ptr %i.eh, align 4, !tbaa !253
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ei = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.ei, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ej = add nuw nsw i32 %.01721.i, 1            ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %.044.lcssa75
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %.044.lcssa75
  %exitcond25.not.i = icmp eq i32 %i.ej, %.0246973
  br i1 %exitcond25.not.i, label %_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit.loopexit, label %.preheader.i, !llvm.loop !68

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !253 ; 2 uses
  %i.eo = load float, ptr %i.ay, align 4, !tbaa !544
  %i.ep = fcmp ogt float %i.en, %i.eo
  %i.eq = select i1 %i.ep, float %i.en, float 0.000000e+00
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.i
  store float %i.eq, ptr %i.er, align 4, !tbaa !253
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %indvars.iv.next.i
  %i.et = load float, ptr %i.es, align 4, !tbaa !253 ; 2 uses
  %i.eu = load float, ptr %i.ay, align 4, !tbaa !544
  %i.ev = fcmp ogt float %i.et, %i.eu
  %i.ew = select i1 %i.ev, float %i.et, float 0.000000e+00
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.01820.i, i64 %indvars.iv.next.i
  store float %i.ew, ptr %i.ex, align 4, !tbaa !253
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1280

_ZNK2cv3dnn18BaseDefaultFunctorINS0_22ThresholdedReluFunctorEE5applyEPKfPfiimii.exit.loopexit: ; preds = %._crit_edge.i
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond58.not, label %._crit_edge51.split, label %.preheader.preheader.i, !llvm.loop !1281
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_22ThresholdedReluFunctorEEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_22ThresholdedReluFunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(164) %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_22ThresholdedReluFunctorEEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16ElementWiseLayerINS1_22ThresholdedReluFunctorEEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !253
  store <2 x float> %i.c, ptr %i.a, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.e = load float, ptr %i.d, align 4, !tbaa !1286
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.e, ptr %i.f, align 8, !tbaa !546
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.6", align 8     ; 12 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %13 = alloca %"class.cv::dnn::ElementWiseLayer<cv::dnn::PowerFunctor>::PBody", align 8 ; 11 uses
  %14 = alloca %"class.cv::Range", align 4        ; 6 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::dnn::ElementWiseLayer<cv::dnn::PowerFunctor>::PBody", align 8 ; 11 uses
  %19 = alloca %"class.cv::Range", align 4        ; 6 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn16ElementWiseLayerINS0_12PowerFunctorEE7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES9_E25__cv_trace_location_fn228)
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bh unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_2
