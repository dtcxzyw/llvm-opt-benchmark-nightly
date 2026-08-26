Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/global_motion?download=true
inline.NumInlined: 998
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv9videostabL49estimateGlobMotionLeastSquaresTranslationAndScaleEiPNS_6Point_IfEES3_Pf:bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !27 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %.sink.idx.i68 = select i1 %i.cr, i64 0, i64 %i.cv
  %.sink.i69 = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sink.idx.i68
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink.i69, i64 4
  store float %i.co, ptr %i.cw, align 4, !tbaa !57
  store float %i.co, ptr %i.ct, align 4, !tbaa !57
  %i.cx = icmp slt i32 %i.ck, 2                   ; 2 uses
  %i.cy = load i64, ptr %i.cn, align 8
  %.sink.idx.i72 = select i1 %i.cx, i64 0, i64 %i.cy
  %.sink.i73 = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink.idx.i72
  %i.cz = load float, ptr %.sink.i73, align 4, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !57
  %i.db = load i64, ptr %i.cn, align 8
  %i.dc = shl i64 %i.db, 1
  %.sink.idx.i76 = select i1 %i.cx, i64 0, i64 %i.dc
  %.sink.i77 = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.sink.idx.i76
  %i.dd = load float, ptr %.sink.i77, align 4, !tbaa !57
  %i.de = load i64, ptr %i.cu, align 8
  %.sink.idx.i78 = select i1 %i.cr, i64 0, i64 %i.de
  %.sink.i79 = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sink.idx.i78
  %i.df = getelementptr inbounds nuw i8, ptr %.sink.i79, i64 8
  store float %i.dd, ptr %i.df, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 0)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(688) %21, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(688) %20, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #24
  %i.dg = load ptr, ptr %19, align 8, !tbaa !44, !noalias !73 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body80

.body80:                                          ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #24
  br label %bb.ae

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dl) #24
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dm) #24
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dn) #24
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.do) #24
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dp) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dq) #24
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dr) #24
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ds) #24
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.dt) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void

bb.z:                                             ; preds = %bb.r
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.body.i, %bb.z
  %.pn52 = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.du, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ah

bb.ab:                                            ; preds = %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.w
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.body80, %bb.ad
  %.pn54 = phi { ptr, i32 } [ %i.dk, %.body80 ], [ %i.dx, %bb.ad ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %20) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ae ], [ %i.dw, %bb.ac ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %21) #24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %bb.af ], [ %i.dv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.aa
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn, %bb.ag ], [ %.pn52, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.q, %bb.l
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn, %bb.ah ], [ %.pn48.pn.pn, %bb.q ], [ %i.bs, %bb.l ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
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
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.d = load float, ptr %i.c, align 4
  %.sroa_idx67.epil = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load float, ptr %.sroa_idx67.epil, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.g = fneg float %i.e
  %i.h = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %6 = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %7 = insertelement <2 x float> %i.i, float %i.e, i64 1
  %8 = fmul <2 x float> %i.h, %7
  %i.j = insertelement <2 x float> poison, float %i.d, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %6, <2 x float> %8)
  %i.m = fadd <2 x float> %.epil.init, %i.l
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.n = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil.preheader ] ; 4 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.n, %i.n
  %9 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = extractelement <2 x float> %i.n, i64 1   ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %9) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.q) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %5, i32 noundef 3, i32 noundef 3, i32 noundef 5)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #24
  %i.r = load ptr, ptr %5, align 8, !tbaa !44, !noalias !76 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(688) %5, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %._crit_edge
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.v

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %i.w = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.y = load float, ptr %i.x, align 4
  %.sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %.sroa_idx67, align 4    ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ab = fneg float %i.z
  %i.ac = load <2 x float>, ptr %i.aa, align 4    ; 2 uses
  %10 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %11 = insertelement <2 x float> %i.ad, float %i.z, i64 1
  %12 = fmul <2 x float> %i.ac, %11
  %i.ae = insertelement <2 x float> poison, float %i.y, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %10, <2 x float> %12)
  %i.ah = fadd <2 x float> %i.w, %i.ag
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4
  %.sroa_idx67.1 = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load float, ptr %.sroa_idx67.1, align 4 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.am = fneg float %i.ak
  %i.an = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %13 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %14 = insertelement <2 x float> %i.ao, float %i.ak, i64 1
  %15 = fmul <2 x float> %i.an, %14
  %i.ap = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %13, <2 x float> %15)
  %i.as = fadd <2 x float> %i.ah, %i.ar           ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !79

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.at) #24
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.au) #24
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.av) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aw = fcmp une float %i.q, 0.000000e+00
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ax = fneg float %i.o
  %i.ay = fdiv float %i.ax, %sqrt                 ; 2 uses
  %i.az = fdiv float %i.p, %sqrt                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store float %i.az, ptr %i.bd, align 4, !tbaa !57
  %i.bf = icmp slt i32 %i.bb, 2                   ; 2 uses
  %i.bg = load i64, ptr %i.be, align 8
  %.sink.idx.i = select i1 %i.bf, i64 0, i64 %i.bg
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink.idx.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  store float %i.az, ptr %i.bh, align 4, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %i.ay, ptr %i.bi, align 4, !tbaa !57
  %i.bj = load i64, ptr %i.be, align 8
  %.sink.idx.i50 = select i1 %i.bf, i64 0, i64 %i.bj
  %.sink.i51 = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink.idx.i50
  %i.bk = fneg float %i.ay
  store float %i.bk, ptr %.sink.i51, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %4, align 4, !tbaa !57
  br i1 %i.a, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = icmp slt i32 %i.bm, 2
  %i.br = load i64, ptr %i.bp, align 8
  %.sink.idx.i56 = select i1 %i.bq, i64 0, i64 %i.br
  %.sink.i57 = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sink.idx.i56
  %wide.trip.count87 = zext nneg i32 %1 to i64
  br label %bb.e

._crit_edge81:                                    ; preds = %bb.e, %bb.d
  %i.bs = phi float [ 0.000000e+00, %bb.d ], [ %i.cq, %bb.e ]
  %i.bt = sitofp i32 %1 to float
  %i.bu = fdiv float %i.bs, %i.bt
  %i.bv = call noundef float @sqrtf(float noundef %i.bu) #24
  store float %i.bv, ptr %4, align 4, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph80, %bb.e
  %i.bw = phi float [ 0.000000e+00, %.lr.ph80 ], [ %i.cq, %bb.e ]
  %indvars.iv84 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next85, %bb.e ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4
  %.sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load float, ptr %.sroa_idx65, align 4
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv84
  %i.cb = load <2 x float>, ptr %i.ca, align 4
  %i.cc = load <2 x float>, ptr %i.bo, align 4, !tbaa !57 ; 2 uses
  %i.cd = load <2 x float>, ptr %.sink.i57, align 4, !tbaa !57 ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = fneg <2 x float> %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.cb)
  %i.cj = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.ck = fneg <2 x float> %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.ci) ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %i.cn           ; 2 uses
  %shift = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop95 = fadd <2 x float> %i.co, %shift
  %i.cp = extractelement <2 x float> %foldExtExtBinop95, i64 0
  %i.cq = fadd float %i.bw, %i.cp                 ; 3 uses
  store float %i.cq, ptr %4, align 4, !tbaa !57
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge81, label %bb.e, !llvm.loop !80

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
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init206 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod209)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %i.c = phi <2 x float> [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.g, %.lr.ph.epil ]
  %i.d = phi <2 x float> [ %.epil.init206, %.lr.ph.epil.preheader ], [ %i.j, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !57
  %i.g = fadd <2 x float> %i.c, %i.f              ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !57
  %i.j = fadd <2 x float> %i.d, %i.i              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !81

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.k = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  %i.l = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.bb, %._crit_edge.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.m = sitofp i32 %1 to float                   ; 2 uses
  %i.n = fdiv float 1.000000e+00, %i.m
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.k              ; 6 uses
  %i.r = fmul <2 x float> %i.p, %i.l              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i32 noundef 2, i32 noundef 2, i32 noundef 5)
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #24
  %i.s = load i32, ptr %7, align 8, !tbaa !66
  %i.t = and i32 %i.s, -4096
  %i.u = or disjoint i32 %i.t, 5
  store i32 %i.u, ptr %7, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #24
  %i.v = load ptr, ptr %8, align 8, !tbaa !44, !noalias !83 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %._crit_edge
  %i.aa = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
end_hunk_0
