Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reduce_layer?download=true
inline.NumInlined: 8321
inline.NumDeleted: 448
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceSumIfEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !28     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k
  %.pn24 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.t = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %10)
  %i.u = icmp eq i64 %i.t, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %i.u, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.v = load i32, ptr %11, align 4, !tbaa !97
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.u

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEE, i64 16), ptr %12, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = add i64 %i.ab, -4
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec74, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.al, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.am, %vector.body75 ]
  %i.aj = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !66
  %wide.load81 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !66
  %i.al = mul <4 x i32> %wide.load80, %vec.phi77  ; 2 uses
  %i.am = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.an, label %middle.block83, label %vector.body75, !llvm.loop !1849

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.ag, %n.vec74
  br i1 %cmp.n85, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !66
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1850

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.aa, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.ds, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dy, %bb.ac ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block83, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block83 ], [ %i.aq, %.lr.ph.i.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !1851
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !1853
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !1854
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !1856, !nonnull !102, !align !138
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 9 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !1857, !nonnull !102, !align !138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bd = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bd, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.be = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.be, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.7, %bb.s ] ; 9 uses
  %.sroa.4.015.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.cj, %bb.s ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.7, %bb.s ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !1805
  %i.bh = fadd float %.sroa.4.015.us.i, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !1805
  %i.bl = fadd float %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !1805
  %i.bp = fadd float %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !1805
  %i.bt = fadd float %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !1805
  %i.bx = fadd float %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !1805
  %i.cb = fadd float %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !1805
  %i.cf = fadd float %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !1805
  %i.cj = fadd float %i.cf, %i.ci                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.s, !llvm.loop !1858

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.4.015.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.cj, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.t ] ; 2 uses
  %.sroa.4.015.us.i.epil = phi float [ %.sroa.4.015.us.i.epil.init, %.epil.preheader ], [ %i.cm, %bb.t ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !1805
  %i.cm = fadd float %.sroa.4.015.us.i.epil, %i.cl ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEclERKNS_5RangeE.exit, label %bb.t, !llvm.loop !1859

_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEclERKNS_5RangeE.exit: ; preds = %._crit_edge.us.i.unr-lcssa, %bb.t, %.preheader.lr.ph.i
  %storemerge = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.cj, %._crit_edge.us.i.unr-lcssa ], [ %i.cm, %bb.t ]
  store float %storemerge, ptr %i.bc, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ao

bb.u:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !95 ; 2 uses
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !139
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !139
  %i.cv = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cw = shl i64 %i.cv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cu, ptr align 4 %i.cs, i64 %i.cw, i1 false)
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEE, i64 16), ptr %13, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.cx, align 8, !tbaa !128
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cy, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.aa

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.x
  %i.cz = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.da = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.aa      ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not6.i.i34 = icmp eq ptr %i.cz, %i.da
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.z
  %i.db = ptrtoaddr ptr %i.da to i64
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = add i64 %i.db, -4
  %i.de = sub i64 %i.dd, %i.dc                    ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.de, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.dg, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2
  %i.di = getelementptr i8, ptr %i.cz, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dm, %vector.body ]
  %i.dj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !66
  %wide.load70 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !66
  %i.dl = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dm = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !1860

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dm, %i.dl
  %i.do = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader92

.lr.ph.i.i35.preheader92:                         ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.cz, %.lr.ph.i.i35.preheader ], [ %i.di, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader92, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.dr, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader92 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.dq, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader92 ]
  %i.dp = load i32, ptr %.08.i.i36, align 4, !tbaa !66
  %i.dq = mul nsw i32 %i.dp, %.057.i.i37          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.dr, %i.da
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !1861

bb.aa:                                            ; preds = %bb.y, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.x
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.z
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.z ], [ %i.do, %middle.block ], [ %i.dq, %.lr.ph.i.i35 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.dt, align 8, !tbaa !1851
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.du, align 4, !tbaa !1853
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.dv, align 8, !tbaa !1854
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.dw, align 4, !tbaa !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !147
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.dx, align 4, !tbaa !149
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ao

bb.ac:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_.exit40
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dz = ptrtoint ptr %i.cp to i64
  %i.ea = ptrtoint ptr %i.cn to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp ugt i64 %i.eb, 9223372036854775804
  br i1 %i.ec, label %.noexc.i.i, label %bb.ae, !prof !125

.noexc.i.i:                                       ; preds = %bb.ad
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ed = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #21 ; 5 uses
  store ptr %i.ed, ptr %16, align 8, !tbaa !65
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !68
  %i.eh = load ptr, ptr %2, align 8, !tbaa !95    ; 3 uses
  %i.ei = load ptr, ptr %i.co, align 8, !tbaa !95
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 4 uses
  %i.em = icmp sgt i64 %i.el, 4
  br i1 %i.em, label %bb.af, label %bb.ag, !prof !126

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %i.eh, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.en = icmp eq i64 %i.el, 4
  br i1 %i.en, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i32, ptr %i.eh, align 4, !tbaa !66
  store i32 %i.eo, ptr %i.ed, align 4, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.af, %bb.ag, %bb.ah
  %i.ep = getelementptr inbounds i8, ptr %i.ed, i64 %i.el
  store ptr %i.ep, ptr %i.ee, align 8, !tbaa !64
  invoke void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceSumIfEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %16)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eq = load ptr, ptr %16, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !68
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !1862 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_8ReduceL1IfEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIhEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb, ptr noundef nonnull @.str.2, i32 noundef 424) #24
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !28     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k
  %.pn24 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.t = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %10)
  %i.u = icmp eq i64 %i.t, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %i.u, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.v = load i32, ptr %11, align 4, !tbaa !97
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.t

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEE, i64 16), ptr %12, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = add i64 %i.ab, -4
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec74, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.al, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.am, %vector.body75 ]
  %i.aj = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !66
  %wide.load81 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !66
  %i.al = mul <4 x i32> %wide.load80, %vec.phi77  ; 2 uses
  %i.am = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.an, label %middle.block83, label %vector.body75, !llvm.loop !1866

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.ag, %n.vec74
  br i1 %cmp.n85, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !66
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1867

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.ab, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.z, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.dd, %bb.z ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dj, %bb.ab ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block83, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block83 ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !1868
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !1870
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !1871
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !1872
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !1873, !nonnull !102, !align !138
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 3 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !1874, !nonnull !102, !align !138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bd = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bd, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.be = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.be, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.s ] ; 3 uses
  %.sroa.4.015.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.br, %bb.s ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.1, %bb.s ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !1805 ; 3 uses
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00
  %i.bi = fneg float %i.bg
  %i.bj = select i1 %i.bh, float %i.bg, float %i.bi
  %i.bk = fadd float %.sroa.4.015.us.i, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !1805 ; 3 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  %i.bp = fneg float %i.bn
  %i.bq = select i1 %i.bo, float %i.bn, float %i.bp
  %i.br = fadd float %i.bk, %i.bq                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.s, !llvm.loop !1875

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.4.015.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.br, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod97)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil.init
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !1805 ; 3 uses
  %i.bu = fcmp ogt float %i.bt, 0.000000e+00
  %i.bv = fneg float %i.bt
  %i.bw = select i1 %i.bu, float %i.bt, float %i.bv
  %i.bx = fadd float %.sroa.4.015.us.i.epil.init, %i.bw
  br label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEclERKNS_5RangeE.exit: ; preds = %.epil.preheader, %._crit_edge.us.i.unr-lcssa, %.preheader.lr.ph.i
  %storemerge = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.br, %._crit_edge.us.i.unr-lcssa ], [ %i.bx, %.epil.preheader ]
  store float %storemerge, ptr %i.bc, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.an

bb.t:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !95 ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  br i1 %3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !139
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ch = shl i64 %i.cg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cf, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %bb.an

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEE, i64 16), ptr %13, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.ci, align 8, !tbaa !128
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cj, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.z

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.w
  %i.ck = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.x unwind label %bb.z       ; 5 uses

bb.x:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.cl = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.y unwind label %bb.z       ; 3 uses

bb.y:                                             ; preds = %bb.x
  %.not6.i.i34 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.y
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %i.co = add i64 %i.cm, -4
  %i.cp = sub i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cx, %vector.body ]
  %i.cu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !66
  %wide.load70 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !66
  %i.cw = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cx = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !1876

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cx, %i.cw
  %i.cz = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader92

.lr.ph.i.i35.preheader92:                         ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.ck, %.lr.ph.i.i35.preheader ], [ %i.ct, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader92, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.dc, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader92 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.db, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader92 ]
  %i.da = load i32, ptr %.08.i.i36, align 4, !tbaa !66
  %i.db = mul nsw i32 %i.da, %.057.i.i37          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.dc, %i.cl
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !1877

bb.z:                                             ; preds = %bb.x, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.w
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.y
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.y ], [ %i.cz, %middle.block ], [ %i.db, %.lr.ph.i.i35 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.de, align 8, !tbaa !1868
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.df, align 4, !tbaa !1870
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.dg, align 8, !tbaa !1871
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.dh, align 4, !tbaa !1872
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !147
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.di, align 4, !tbaa !149
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.an

bb.ab:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_.exit40
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ac:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dk = ptrtoint ptr %i.ca to i64
  %i.dl = ptrtoint ptr %i.by to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = icmp ugt i64 %i.dm, 9223372036854775804
  br i1 %i.dn, label %.noexc.i.i, label %bb.ad, !prof !125

.noexc.i.i:                                       ; preds = %bb.ac
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.do = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #21 ; 5 uses
  store ptr %i.do, ptr %16, align 8, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !68
  %i.ds = load ptr, ptr %2, align 8, !tbaa !95    ; 3 uses
  %i.dt = load ptr, ptr %i.bz, align 8, !tbaa !95
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp sgt i64 %i.dw, 4
  br i1 %i.dx, label %bb.ae, label %bb.af, !prof !126

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.do, ptr align 4 %i.ds, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.af:                                            ; preds = %bb.ad
  %i.dy = icmp eq i64 %i.dw, 4
  br i1 %i.dy, label %bb.ag, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.ds, align 4, !tbaa !66
  store i32 %i.dz, ptr %i.do, align 4, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ae, %bb.af, %bb.ag
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 %i.dw
  store ptr %i.ea, ptr %i.dp, align 8, !tbaa !64
  invoke void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_8ReduceL1IfEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %16)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eb = load ptr, ptr %16, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !68
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ah, %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1878 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_8ReduceL2IfEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k
  %.pn24 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.t = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %10)
  %i.u = icmp eq i64 %i.t, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %i.u, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.v = load i32, ptr %11, align 4, !tbaa !97
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.u

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEE, i64 16), ptr %12, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = add i64 %i.ab, -4
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec74, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.al, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.am, %vector.body75 ]
  %i.aj = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !66
  %wide.load81 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !66
  %i.al = mul <4 x i32> %wide.load80, %vec.phi77  ; 2 uses
  %i.am = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.an, label %middle.block83, label %vector.body75, !llvm.loop !1882

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.ag, %n.vec74
  br i1 %cmp.n85, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !66
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1883

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.aa, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.dd, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dj, %bb.ac ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block83, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block83 ], [ %i.aq, %.lr.ph.i.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !1884
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !1886
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !1887
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !1888
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !1889, !nonnull !102, !align !138
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 5 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !1890, !nonnull !102, !align !138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bd = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bd, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.be = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.be, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.s ] ; 5 uses
  %.sroa.5.017.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bt, %bb.s ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.s ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !1805 ; 2 uses
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %.sroa.5.017.us.i)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !1805 ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bh)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !1805 ; 2 uses
  %i.bp = call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bl)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !1805 ; 2 uses
  %i.bt = call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bp) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.s, !llvm.loop !1891

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.5.017.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bt, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.t ] ; 2 uses
  %.sroa.5.017.us.i.epil = phi float [ %.sroa.5.017.us.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.t ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !1805 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %.sroa.5.017.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.t, !llvm.loop !1892

._crit_edge.us.i:                                 ; preds = %bb.t, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.bt, %._crit_edge.us.i.unr-lcssa ], [ %i.bw, %bb.t ]
  %i.bx = call noundef float @sqrtf(float noundef %.lcssa) #23
  br label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi float [ %i.bx, %._crit_edge.us.i ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  store float %storemerge, ptr %i.bc, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ao

bb.u:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !95 ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !139
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !139
  %i.cg = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ch = shl i64 %i.cg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cf, ptr align 4 %i.cd, i64 %i.ch, i1 false)
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEE, i64 16), ptr %13, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.ci, align 8, !tbaa !128
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cj, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.aa

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.x
  %i.ck = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.cl = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.aa      ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not6.i.i34 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.z
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %i.co = add i64 %i.cm, -4
  %i.cp = sub i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cx, %vector.body ]
  %i.cu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !66
  %wide.load70 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !66
  %i.cw = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cx = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !1893

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cx, %i.cw
  %i.cz = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader92

.lr.ph.i.i35.preheader92:                         ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.ck, %.lr.ph.i.i35.preheader ], [ %i.ct, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader92, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.dc, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader92 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.db, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader92 ]
  %i.da = load i32, ptr %.08.i.i36, align 4, !tbaa !66
  %i.db = mul nsw i32 %i.da, %.057.i.i37          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.dc, %i.cl
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !1894

bb.aa:                                            ; preds = %bb.y, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.z
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.z ], [ %i.cz, %middle.block ], [ %i.db, %.lr.ph.i.i35 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.de, align 8, !tbaa !1884
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.df, align 4, !tbaa !1886
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.dg, align 8, !tbaa !1887
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.dh, align 4, !tbaa !1888
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !147
  %i.di = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.di, align 4, !tbaa !149
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ao

bb.ac:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_.exit40
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dk = ptrtoint ptr %i.ca to i64
  %i.dl = ptrtoint ptr %i.by to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = icmp ugt i64 %i.dm, 9223372036854775804
  br i1 %i.dn, label %.noexc.i.i, label %bb.ae, !prof !125

.noexc.i.i:                                       ; preds = %bb.ad
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.do = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #21 ; 5 uses
  store ptr %i.do, ptr %16, align 8, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !68
  %i.ds = load ptr, ptr %2, align 8, !tbaa !95    ; 3 uses
  %i.dt = load ptr, ptr %i.bz, align 8, !tbaa !95
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp sgt i64 %i.dw, 4
  br i1 %i.dx, label %bb.af, label %bb.ag, !prof !126

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.do, ptr align 4 %i.ds, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dy = icmp eq i64 %i.dw, 4
  br i1 %i.dy, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load i32, ptr %i.ds, align 4, !tbaa !66
  store i32 %i.dz, ptr %i.do, align 4, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.af, %bb.ag, %bb.ah
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 %i.dw
  store ptr %i.ea, ptr %i.dp, align 8, !tbaa !64
  invoke void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_8ReduceL2IfEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %16)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eb = load ptr, ptr %16, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !68
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1895 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceSumSquareIfEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIhEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb, ptr noundef nonnull @.str.2, i32 noundef 424) #24
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !28     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k
  %.pn24 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %10, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.t = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %10)
  %i.u = icmp eq i64 %i.t, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  br i1 %i.u, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %11, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
  %i.v = load i32, ptr %11, align 4, !tbaa !97
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.u

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEE, i64 16), ptr %12, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = add i64 %i.ab, -4
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check72, label %.lr.ph.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec74 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec74, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 2 uses
  %vec.phi77 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.al, %vector.body75 ]
  %vec.phi78 = phi <4 x i32> [ splat (i32 1), %vector.ph73 ], [ %i.am, %vector.body75 ]
  %i.aj = shl i64 %index76, 2
  %next.gep79 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !66
  %wide.load81 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !66
  %i.al = mul <4 x i32> %wide.load80, %vec.phi77  ; 2 uses
  %i.am = mul <4 x i32> %wide.load81, %vec.phi78  ; 2 uses
  %index.next82 = add nuw i64 %index76, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.an, label %middle.block83, label %vector.body75, !llvm.loop !1916

middle.block83:                                   ; preds = %vector.body75
  %bin.rdx84 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx84) ; 2 uses
  %cmp.n85 = icmp eq i64 %i.ag, %n.vec74
  br i1 %cmp.n85, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block83
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block83 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block83 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !66
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.aa
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1917

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.ac, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.aa, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.dc, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.di, %bb.ac ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block83, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block83 ], [ %i.aq, %.lr.ph.i.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !1918
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !1920
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !1921
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !1922
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !1923, !nonnull !102, !align !138
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !139 ; 5 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !1924, !nonnull !102, !align !138
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bd = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bd, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.be = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.be, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.s ] ; 5 uses
  %.sroa.4.015.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bt, %bb.s ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.s ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !1805 ; 2 uses
  %i.bh = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %.sroa.4.015.us.i)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !1805 ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bh)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !1805 ; 2 uses
  %i.bp = call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bl)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !1805 ; 2 uses
  %i.bt = call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.bp) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.s, !llvm.loop !1925

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEclERKNS_5RangeE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.4.015.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bt, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.t ] ; 2 uses
  %.sroa.4.015.us.i.epil = phi float [ %.sroa.4.015.us.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.t ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !1805 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %.sroa.4.015.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEclERKNS_5RangeE.exit, label %bb.t, !llvm.loop !1926

_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEclERKNS_5RangeE.exit: ; preds = %._crit_edge.us.i.unr-lcssa, %bb.t, %.preheader.lr.ph.i
  %storemerge = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.bt, %._crit_edge.us.i.unr-lcssa ], [ %i.bw, %bb.t ]
  store float %storemerge, ptr %i.bc, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ao

bb.u:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.ca = icmp eq ptr %i.bx, %i.bz
  br i1 %i.ca, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !139
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !139
  %i.cf = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cg = shl i64 %i.cf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.cc, i64 %i.cg, i1 false)
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEE, i64 16), ptr %13, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.ch, align 8, !tbaa !128
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.ci, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.aa

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.x
  %i.cj = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.ck = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.aa      ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not6.i.i34 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.z
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %i.cm = ptrtoaddr ptr %i.cj to i64
  %i.cn = add i64 %i.cl, -4
  %i.co = sub i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 3 uses
  %i.cr = shl i64 %n.vec, 2
  %i.cs = getelementptr i8, ptr %i.cj, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cw, %vector.body ]
  %i.ct = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !66
  %wide.load70 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !66
  %i.cv = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cw = mul <4 x i32> %wide.load70, %vec.phi69  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !1927

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cw, %i.cv
  %i.cy = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader92

.lr.ph.i.i35.preheader92:                         ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.cj, %.lr.ph.i.i35.preheader ], [ %i.cs, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader92, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.db, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader92 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.da, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader92 ]
  %i.cz = load i32, ptr %.08.i.i36, align 4, !tbaa !66
  %i.da = mul nsw i32 %i.cz, %.057.i.i37          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.db, %i.ck
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !1928

bb.aa:                                            ; preds = %bb.y, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.x
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.z
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.z ], [ %i.cy, %middle.block ], [ %i.da, %.lr.ph.i.i35 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.dd, align 8, !tbaa !1918
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.de, align 4, !tbaa !1920
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.df, align 8, !tbaa !1921
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.dg, align 4, !tbaa !1922
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !147
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !149
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ao

bb.ac:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_.exit40
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ad:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dj = ptrtoint ptr %i.bz to i64
  %i.dk = ptrtoint ptr %i.bx to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp ugt i64 %i.dl, 9223372036854775804
  br i1 %i.dm, label %.noexc.i.i, label %bb.ae, !prof !125

.noexc.i.i:                                       ; preds = %bb.ad
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #21 ; 5 uses
  store ptr %i.dn, ptr %16, align 8, !tbaa !65
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !68
  %i.dr = load ptr, ptr %2, align 8, !tbaa !95    ; 3 uses
  %i.ds = load ptr, ptr %i.by, align 8, !tbaa !95
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 4 uses
  %i.dw = icmp sgt i64 %i.dv, 4
  br i1 %i.dw, label %bb.af, label %bb.ag, !prof !126

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dn, ptr align 4 %i.dr, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dx = icmp eq i64 %i.dv, 4
  br i1 %i.dx, label %bb.ah, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i32, ptr %i.dr, align 4, !tbaa !66
  store i32 %i.dy, ptr %i.dn, align 4, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dz = getelementptr inbounds i8, ptr %i.dn, i64 %i.dv
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !64
  invoke void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceSumSquareIfEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %16)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ea = load ptr, ptr %16, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = load ptr, ptr %i.dq, align 8, !tbaa !68
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !1929 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
end_hunk_3
