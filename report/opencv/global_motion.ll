Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/global_motion?download=true
inline.NumInlined: 998
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv9videostabL49estimateGlobMotionLeastSquaresTranslationAndScaleEiPNS_6Point_IfEES3_Pf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.e
  %.pn54.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn, %bb.ai ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.d
  %.pn54.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn, %bb.aj ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.c
  %.pn54.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn.pn, %bb.ak ], [ %i.z, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv9videostabL38estimateGlobMotionLeastSquaresRotationEiPNS_6Point_IfEES3_Pf(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.d = load float, ptr %i.c, align 4
  %.sroa_idx67.epil = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load float, ptr %.sroa_idx67.epil, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.g = fneg float %i.e
  %i.h = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = insertelement <2 x float> %i.i, float %i.e, i64 1
  %i.k = fmul <2 x float> %i.h, %i.j
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = insertelement <2 x float> poison, float %i.d, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.h, <2 x float> %i.l)
  %i.p = fadd <2 x float> %.epil.init, %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.q = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil.preheader ] ; 2 uses
  %i.r = extractelement <2 x float> %i.q, i64 1   ; 3 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = extractelement <2 x float> %i.q, i64 0   ; 3 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.u) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef 3, i32 noundef 3, i32 noundef 5)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #24
  %i.v = load ptr, ptr %5, align 8, !tbaa !44, !noalias !148 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.z

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %i.aa = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4
  %.sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %.sroa_idx67, align 4   ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.af = fneg float %i.ad
  %i.ag = load <2 x float>, ptr %i.ae, align 4    ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ad, i64 1
  %i.aj = fmul <2 x float> %i.ag, %i.ai
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.ag, <2 x float> %i.ak)
  %i.ao = fadd <2 x float> %i.aa, %i.an
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4
  %.sroa_idx67.1 = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %.sroa_idx67.1, align 4 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.at = fneg float %i.ar
  %i.au = load <2 x float>, ptr %i.as, align 4    ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ar, i64 1
  %i.ax = fmul <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.au, <2 x float> %i.ay)
  %i.bc = fadd <2 x float> %i.ao, %i.bb           ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !146

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bd) #24
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bg = fcmp une float %i.u, 0.000000e+00
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.bh = fneg float %i.r
  %i.bi = fdiv float %i.bh, %sqrt                 ; 2 uses
  %i.bj = fdiv float %i.t, %sqrt                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store float %i.bj, ptr %i.bn, align 4, !tbaa !49
  %i.bp = icmp slt i32 %i.bl, 2                   ; 2 uses
  %i.bq = load i64, ptr %i.bo, align 8
  %.sink.idx.i = select i1 %i.bp, i64 0, i64 %i.bq
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink.idx.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  store float %i.bj, ptr %i.br, align 4, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.bi, ptr %i.bs, align 4, !tbaa !49
  %i.bt = load i64, ptr %i.bo, align 8
  %.sink.idx.i50 = select i1 %i.bp, i64 0, i64 %i.bt
  %.sink.i51 = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink.idx.i50
  %i.bu = fneg float %i.bi
  store float %i.bu, ptr %.sink.i51, align 4, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %4, align 4, !tbaa !49
  br i1 %i.a, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = icmp slt i32 %i.bw, 2
  %i.cb = load i64, ptr %i.bz, align 8
  %.sink.idx.i56 = select i1 %i.ca, i64 0, i64 %i.cb
  %.sink.i57 = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sink.idx.i56
  %wide.trip.count87 = zext nneg i32 %1 to i64
  br label %bb.e

._crit_edge81:                                    ; preds = %bb.e, %bb.d
  %i.cc = phi float [ 0.000000e+00, %bb.d ], [ %i.cv, %bb.e ]
  %i.cd = sitofp i32 %1 to float
  %i.ce = fdiv float %i.cc, %i.cd
  %i.cf = call noundef float @sqrtf(float noundef %i.ce) #24
  store float %i.cf, ptr %4, align 4, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph80, %bb.e
  %i.cg = phi float [ 0.000000e+00, %.lr.ph80 ], [ %i.cv, %bb.e ]
  %indvars.iv84 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next85, %bb.e ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv84
  %6 = load <2 x float>, ptr %i.ch, align 4       ; 2 uses
  %i.cj = load <2 x float>, ptr %i.ci, align 4
  %i.ck = load <2 x float>, ptr %i.by, align 4, !tbaa !49 ; 2 uses
  %i.cl = load <2 x float>, ptr %.sink.i57, align 4, !tbaa !49 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cn = fneg <2 x float> %i.cm
  %i.co = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.co, <2 x float> %i.cj)
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cr = fneg <2 x float> %i.cq
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %7, <2 x float> %i.cp) ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.cs           ; 2 uses
  %shift = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ct, %shift
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cv = fadd float %i.cg, %i.cu                 ; 3 uses
  store float %i.cv, ptr %4, align 4, !tbaa !49
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge81, label %bb.e, !llvm.loop !147

bb.f:                                             ; preds = %bb.c, %._crit_edge81
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv9videostabL35estimateGlobMotionLeastSquaresRigidEiPNS_6Point_IfEES3_Pf(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::Mat_", align 8          ; 14 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::SVD", align 8          ; 11 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::Mat_", align 8         ; 14 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Rect_", align 16       ; 5 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %1, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init206 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %i.c = phi <2 x float> [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.k, %.lr.ph.epil ]
  %i.d = phi <2 x float> [ %.epil.init206, %.lr.ph.epil.preheader ], [ %i.h, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !49
  %i.h = fadd <2 x float> %i.d, %i.g              ; 2 uses
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !49
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fadd <2 x float> %i.c, %i.j              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !149

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.l = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil ]
  %i.m = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil ]
  %i.n = sitofp i32 %1 to float                   ; 2 uses
  %i.o = fdiv float 1.000000e+00, %i.n
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fmul <2 x float> %i.q, %i.m              ; 6 uses
  %i.s = fmul <2 x float> %i.q, %i.l              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i32 noundef 2, i32 noundef 2, i32 noundef 5)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #24
  %i.t = load i32, ptr %7, align 8, !tbaa !54
  %i.u = and i32 %i.t, -4096
  %i.v = or disjoint i32 %i.u, 5
  store i32 %i.v, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #24
  %i.w = load ptr, ptr %8, align 8, !tbaa !44, !noalias !159 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %._crit_edge
  %i.ab = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %i.aa, %bb.b ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %i.ad = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bg, %.lr.ph ]
  %i.ae = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !49
  %i.ai = fadd <2 x float> %i.ae, %i.ah
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !49
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = fadd <2 x float> %i.ad, %i.ak
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ao = load <2 x float>, ptr %i.am, align 4, !tbaa !49
  %i.ap = fadd <2 x float> %i.ai, %i.ao
  %i.aq = load <2 x float>, ptr %i.an, align 4, !tbaa !49
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.as = fadd <2 x float> %i.al, %i.ar
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.av = load <2 x float>, ptr %i.at, align 4, !tbaa !49
  %i.aw = fadd <2 x float> %i.ap, %i.av
  %i.ax = load <2 x float>, ptr %i.au, align 4, !tbaa !49
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = fadd <2 x float> %i.as, %i.ay
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.bc = load <2 x float>, ptr %i.ba, align 4, !tbaa !49
  %i.bd = fadd <2 x float> %i.aw, %i.bc           ; 3 uses
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !49
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fadd <2 x float> %i.az, %i.bf           ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !152

bb.d:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bi) #24
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %i.a, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %.fr169 = freeze i32 %i.bl
  %i.bp = icmp slt i32 %.fr169, 2
  br i1 %i.bp, label %.lr.ph162.split.us, label %.lr.ph162.split.preheader

.lr.ph162.split.preheader:                        ; preds = %.lr.ph162
  %wide.trip.count178 = zext nneg i32 %1 to i64
  %i.bq = extractelement <2 x float> %i.s, i64 0
  %i.br = extractelement <2 x float> %i.s, i64 1
  br label %.lr.ph162.split

.lr.ph162.split.us:                               ; preds = %.lr.ph162
  %i.bs = load <2 x float>, ptr %i.bn, align 4, !tbaa !49 ; 2 uses
  %wide.trip.count183 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter210 = and i64 %wide.trip.count183, 1
  %i.bt = icmp eq i32 %1, 1
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph162.split.us.new

.lr.ph162.split.us.new:                           ; preds = %.lr.ph162.split.us
  %unroll_iter216 = and i64 %wide.trip.count183, 2147483646
  br label %bb.e

end_hunk_0
