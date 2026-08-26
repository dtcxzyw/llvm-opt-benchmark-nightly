Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reduce2_layer?download=true
inline.NumInlined: 13720
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 129
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !1831

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1832

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dy, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ee, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !1833
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !1835
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !1836
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !1837
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !1838, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 9 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !1839, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.7, %bb.u ] ; 9 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.cp, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.7, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27
  %i.bn = fadd float %.sroa.3.016.us.i, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !27
  %i.br = fadd float %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !27
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27
  %i.bz = fadd float %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !27
  %i.cd = fadd float %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !27
  %i.ch = fadd float %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !27
  %i.cl = fadd float %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.co = load float, ptr %i.cn, align 4, !tbaa !27
  %i.cp = fadd float %i.cl, %i.co                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !1840

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.cp, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi float [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  %i.cs = fadd float %.sroa.3.016.us.i.epil, %i.cr ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !1841

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.cp, %._crit_edge.us.i.unr-lcssa ], [ %i.cs, %bb.v ]
  %20 = bitcast float %.lcssa to i32
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i32 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i32 %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !10
  %i.db = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dc = shl i64 %i.db, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.da, ptr align 4 %i.cy, i64 %i.dc, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dd, align 8, !tbaa !149
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.de, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.df = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.dg = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.df, %i.dg
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.df to i64
  %i.dj = add i64 %i.dh, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dr, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ds, %vector.body ]
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !23
  %i.dr = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ds = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1842

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ds, %i.dr
  %i.du = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.df, %.lr.ph.i.i37.preheader ], [ %i.do, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dx, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dw, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dv = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dw = mul nsw i32 %i.dv, %.057.i.i39          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dx, %i.dg
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !1843

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.du, %middle.block ], [ %i.dw, %.lr.ph.i.i37 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dz, align 8, !tbaa !1833
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.ea, align 4, !tbaa !1835
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.eb, align 8, !tbaa !1836
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ec, align 4, !tbaa !1837
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ed, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_.exit42
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ef = ptrtoint ptr %i.cv to i64
  %i.eg = ptrtoint ptr %i.ct to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp ugt i64 %i.eh, 9223372036854775804
  br i1 %i.ei, label %.noexc.i.i, label %bb.ag, !prof !153

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24 ; 5 uses
  store ptr %i.ej, ptr %18, align 8, !tbaa !119
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !144
  %i.en = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp sgt i64 %i.er, 4
  br i1 %i.es, label %bb.ah, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %i.en, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp eq i64 %i.er, 4
  br i1 %i.et, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.en, align 4, !tbaa !23
  store i32 %i.eu, ptr %i.ej, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 %i.er
  store ptr %i.ev, ptr %i.ek, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ew = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !144
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !1844 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !67
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.v

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !1848

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1849

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ab ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ad ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !1850
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !1852
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !1853
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !1854
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !1855, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 3 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !1856, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bk = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.u ] ; 3 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bx, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.1, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27 ; 3 uses
  %i.bn = fcmp ult float %i.bm, 0.000000e+00
  %i.bo = fneg float %i.bm
  %i.bp = select i1 %i.bn, float %i.bo, float %i.bm
  %i.bq = fadd float %.sroa.3.016.us.i, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27 ; 3 uses
  %i.bu = fcmp ult float %i.bt, 0.000000e+00
  %i.bv = fneg float %i.bt
  %i.bw = select i1 %i.bu, float %i.bv, float %i.bt
  %i.bx = fadd float %i.bq, %i.bw                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !1857

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bx, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil.init
  %i.bz = load float, ptr %i.by, align 4, !tbaa !27 ; 3 uses
  %i.ca = fcmp ult float %i.bz, 0.000000e+00
  %i.cb = fneg float %i.bz
  %i.cc = select i1 %i.ca, float %i.cb, float %i.bz
  %i.cd = fadd float %.sroa.3.016.us.i.epil.init, %i.cc
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.bx, %._crit_edge.us.i.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  %20 = bitcast float %.lcssa to i32
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i32 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i32 %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %i.cj, i64 %i.cn, i1 false)
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ab

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.y
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.aa
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !23
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1858

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !1859

bb.ab:                                            ; preds = %bb.z, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.aa
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.aa ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !1850
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !1852
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !1853
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !1854
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.af, !prof !153

.noexc.i.i:                                       ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !144
  %i.dy = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ag, label %bb.ah, !prof !154

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.ai, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !23
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !144
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !1860 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !1864

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1865

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !1866
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !1868
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !1869
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !1871, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !1872, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27 ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !27 ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bn)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !27 ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.br)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !1873

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi float [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !27 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !1874

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  %i.cd = call noundef float @sqrtf(float noundef %.lcssa) #23
  %20 = bitcast float %i.cd to i32
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i32 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i32 %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %i.cj, i64 %i.cn, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !23
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1875

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !1876

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !1866
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !1868
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !1869
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.ag, !prof !153

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !144
  %i.dy = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ah, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !23
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !144
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !1877 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIfffEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !67
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !1898

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !1899

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.di, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !1900
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !1902
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !1903
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !1904
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !1905, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !1906, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27 ; 2 uses
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !27 ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bn)
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !27 ; 2 uses
  %i.bv = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.br)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !27 ; 2 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !1907

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi float [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi float [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !27 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !1908

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi float [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  %20 = bitcast float %.lcssa to i32
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i32 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i32 %storemerge, ptr %i.bi, align 4
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10
  %i.cl = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cm = shl i64 %i.cl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ck, ptr align 4 %i.ci, i64 %i.cm, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.cn, align 8, !tbaa !149
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.co, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cp = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = ptrtoaddr ptr %i.cp to i64
  %i.ct = add i64 %i.cr, -4
  %i.cu = sub i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 3 uses
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.da, align 4, !tbaa !23
  %i.db = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dc = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !1909

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dc, %i.db
  %i.de = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cp, %.lr.ph.i.i37.preheader ], [ %i.cy, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dh, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dg, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.df = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dg = mul nsw i32 %i.df, %.057.i.i39          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dh, %i.cq
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !1910

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.de, %middle.block ], [ %i.dg, %.lr.ph.i.i37 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dj, align 8, !tbaa !1900
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 4, !tbaa !1902
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dl, align 8, !tbaa !1903
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dm, align 4, !tbaa !1904
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_.exit42
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dp = ptrtoint ptr %i.cf to i64
  %i.dq = ptrtoint ptr %i.cd to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp ugt i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %.noexc.i.i, label %bb.ag, !prof !153

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24 ; 5 uses
  store ptr %i.dt, ptr %18, align 8, !tbaa !119
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !144
  %i.dx = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.dy = load ptr, ptr %i.ce, align 8, !tbaa !42
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 4
  br i1 %i.ec, label %bb.ah, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %i.dx, i64 %i.eb, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ed = icmp eq i64 %i.eb, 4
  br i1 %i.ed, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load i32, ptr %i.dx, align 4, !tbaa !23
  store i32 %i.ee, ptr %i.dt, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ef = getelementptr inbounds i8, ptr %i.dt, i64 %i.eb
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIfffEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eg = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !144
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.em = load i32, ptr %i.el, align 8, !tbaa !1911 ; 2 uses
  %i.en = sext i32 %i.em to i64
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2251

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2252

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dy, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ee, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2253
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !2255
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2256
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !2258, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 9 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !2259, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.7, %bb.u ] ; 9 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.cp, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.7, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !139
  %i.bn = fadd double %.sroa.3.016.us.i, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !139
  %i.br = fadd double %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !139
  %i.bv = fadd double %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !139
  %i.bz = fadd double %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !139
  %i.cd = fadd double %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !139
  %i.ch = fadd double %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !139
  %i.cl = fadd double %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load double, ptr %i.cn, align 8, !tbaa !139
  %i.cp = fadd double %i.cl, %i.co                ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !2260

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.cp, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi double [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !139
  %i.cs = fadd double %.sroa.3.016.us.i.epil, %i.cr ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2261

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.cp, %._crit_edge.us.i.unr-lcssa ], [ %i.cs, %bb.v ]
  %20 = bitcast double %.lcssa to i64
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i64 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i64 %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 2 uses
  %i.cw = icmp eq ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !10
  %i.db = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.dc = shl i64 %i.db, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.da, ptr align 8 %i.cy, i64 %i.dc, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.dd, align 8, !tbaa !149
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.de, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.df = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.dg = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.df, %i.dg
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.df to i64
  %i.dj = add i64 %i.dh, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.dn = shl i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dr, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ds, %vector.body ]
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !23
  %i.dr = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ds = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2262

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ds, %i.dr
  %i.du = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.df, %.lr.ph.i.i37.preheader ], [ %i.do, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.du, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dx, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dw, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dv = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dw = mul nsw i32 %i.dv, %.057.i.i39          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dx, %i.dg
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2263

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.du, %middle.block ], [ %i.dw, %.lr.ph.i.i37 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dz, align 8, !tbaa !2253
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.ea, align 4, !tbaa !2255
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.eb, align 8, !tbaa !2256
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.ec, align 4, !tbaa !2257
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.ed, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_.exit42
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ef = ptrtoint ptr %i.cv to i64
  %i.eg = ptrtoint ptr %i.ct to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp ugt i64 %i.eh, 9223372036854775804
  br i1 %i.ei, label %.noexc.i.i, label %bb.ag, !prof !153

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ej = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #24 ; 5 uses
  store ptr %i.ej, ptr %18, align 8, !tbaa !119
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !144
  %i.en = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp sgt i64 %i.er, 4
  br i1 %i.es, label %bb.ah, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %i.en, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.et = icmp eq i64 %i.er, 4
  br i1 %i.et, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.en, align 4, !tbaa !23
  store i32 %i.eu, ptr %i.ej, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 %i.er
  store ptr %i.ev, ptr %i.ek, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_9ReduceSumIdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ew = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = load ptr, ptr %i.em, align 8, !tbaa !144
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !2264 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
end_hunk_4
begin_hunk_5_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !67
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.v

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2268

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2269

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ab, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ab ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ad ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2270
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !2272
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2273
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2274
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !2275, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 3 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !2276, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bk = icmp eq i32 %.05.lcssa.i.i, 1
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.u ] ; 3 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bx, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.1, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !139 ; 3 uses
  %i.bn = fcmp ult double %i.bm, 0.000000e+00
  %i.bo = fneg double %i.bm
  %i.bp = select i1 %i.bn, double %i.bo, double %i.bm
  %i.bq = fadd double %.sroa.3.016.us.i, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !139 ; 3 uses
  %i.bu = fcmp ult double %i.bt, 0.000000e+00
  %i.bv = fneg double %i.bt
  %i.bw = select i1 %i.bu, double %i.bv, double %i.bt
  %i.bx = fadd double %i.bq, %i.bw                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !2277

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bx, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %.05.lcssa.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil.init
  %i.bz = load double, ptr %i.by, align 8, !tbaa !139 ; 3 uses
  %i.ca = fcmp ult double %i.bz, 0.000000e+00
  %i.cb = fneg double %i.bz
  %i.cc = select i1 %i.ca, double %i.cb, double %i.bz
  %i.cd = fadd double %.sroa.3.016.us.i.epil.init, %i.cc
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.bx, %._crit_edge.us.i.unr-lcssa ], [ %i.cd, %.epil.preheader ]
  %20 = bitcast double %.lcssa to i64
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i64 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i64 %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  br i1 %3, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cl, ptr align 8 %i.cj, i64 %i.cn, i1 false)
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ab

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.y
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.z unwind label %bb.ab      ; 5 uses

bb.z:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.aa
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !23
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2278

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2279

bb.ab:                                            ; preds = %bb.z, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.aa
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.aa ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !2270
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !2272
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !2273
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !2274
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ae:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.af, !prof !153

.noexc.i.i:                                       ; preds = %bb.ae
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !144
  %i.dy = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ag, label %bb.ah, !prof !154

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.ai, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !23
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL1IdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !144
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !2280 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_5
begin_hunk_6_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2284

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2285

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.dj, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dp, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2286
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !2288
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2289
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2290
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !2291, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !2292, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !139 ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !139 ; 2 uses
  %i.br = call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bn)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !139 ; 2 uses
  %i.bv = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.br)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !139 ; 2 uses
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !2293

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi double [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !139 ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2294

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  %i.cd = call noundef double @sqrt(double noundef %.lcssa) #23
  %20 = bitcast double %i.cd to i64
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i64 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i64 %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42 ; 2 uses
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  %i.cm = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cl, ptr align 8 %i.cj, i64 %i.cn, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.co, align 8, !tbaa !149
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.cp, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cr = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64
  %i.cu = add i64 %i.cs, -4
  %i.cv = sub i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 2
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cx, 9223372036854775800     ; 3 uses
  %i.cy = shl i64 %n.vec, 2
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dd, %vector.body ]
  %i.da = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.db, align 4, !tbaa !23
  %i.dc = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dd = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2295

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cq, %.lr.ph.i.i37.preheader ], [ %i.cz, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.di, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dh, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.dg = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dh = mul nsw i32 %i.dg, %.057.i.i39          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.di, %i.cr
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2296

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.df, %middle.block ], [ %i.dh, %.lr.ph.i.i37 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 8, !tbaa !2286
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dl, align 4, !tbaa !2288
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dm, align 8, !tbaa !2289
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dn, align 4, !tbaa !2290
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_.exit42
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dq = ptrtoint ptr %i.cg to i64
  %i.dr = ptrtoint ptr %i.ce to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp ugt i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %.noexc.i.i, label %bb.ag, !prof !153

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24 ; 5 uses
  store ptr %i.du, ptr %18, align 8, !tbaa !119
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !144
  %i.dy = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.ah, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.dy, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !23
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ec
  store ptr %i.eg, ptr %i.dv, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_8ReduceL2IdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eh = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !144
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.en = load i32, ptr %i.em, align 8, !tbaa !2297 ; 2 uses
  %i.eo = sext i32 %i.en to i64
end_hunk_6
begin_hunk_7_@_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIdddEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
  %i.n = load ptr, ptr %8, align 8, !tbaa !64     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !67
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.s = tail call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %10, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.v, align 8, !tbaa !157
  store i64 17179869185, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %12, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.z = call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %12)
  %i.aa = icmp eq i64 %i.z, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br i1 %i.aa, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %13, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
  %i.ab = load i32, ptr %13, align 4, !tbaa !152
  %i.ac = icmp eq i32 %i.ab, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.ac, label %bb.q, label %bb.w

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEE, i64 16), ptr %14, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !149
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.t

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.q
  %i.af = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.r unwind label %bb.t       ; 5 uses

bb.r:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.ag = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.s unwind label %bb.t       ; 3 uses

bb.s:                                             ; preds = %bb.r
  %.not6.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not6.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.af to i64
  %i.aj = add i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check74 = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check74, label %.lr.ph.i.i.preheader90, label %vector.ph75

vector.ph75:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec76 = and i64 %i.am, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec76, 2
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next84, %vector.body77 ] ; 2 uses
  %vec.phi79 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.ar, %vector.body77 ]
  %vec.phi80 = phi <4 x i32> [ splat (i32 1), %vector.ph75 ], [ %i.as, %vector.body77 ]
  %i.ap = shl i64 %index78, 2
  %next.gep81 = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load82 = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !23
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23
  %i.ar = mul <4 x i32> %wide.load82, %vec.phi79  ; 2 uses
  %i.as = mul <4 x i32> %wide.load83, %vec.phi80  ; 2 uses
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.at, label %middle.block85, label %vector.body77, !llvm.loop !2318

middle.block85:                                   ; preds = %vector.body77
  %bin.rdx86 = mul <4 x i32> %i.as, %i.ar
  %i.au = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.am, %n.vec76
  br i1 %cmp.n87, label %.preheader.lr.ph.i, label %.lr.ph.i.i.preheader90

.lr.ph.i.i.preheader90:                           ; preds = %.lr.ph.i.i.preheader, %middle.block85
  %.08.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block85 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader90, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader90 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aw, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader90 ]
  %i.av = load i32, ptr %.08.i.i, align 4, !tbaa !23
  %i.aw = mul nsw i32 %i.av, %.057.i.i            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.ag
  br i1 %.not.i.i, label %.preheader.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !2319

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.ae, %_ZNSt6vectorIiSaIiEED2Ev.exit45, %bb.ac, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.di, %bb.ac ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %bb.ae ], [ %.pn28, %_ZNSt6vectorIiSaIiEED2Ev.exit45 ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.r, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %14) #23
  br label %common.resume

.preheader.lr.ph.i:                               ; preds = %.lr.ph.i.i, %middle.block85, %bb.s
  %.05.lcssa.i.i = phi i32 [ 1, %bb.s ], [ %i.au, %middle.block85 ], [ %i.aw, %.lr.ph.i.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.az, align 8, !tbaa !2320
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.ba, align 4, !tbaa !2322
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i32 1, ptr %i.bb, align 8, !tbaa !2323
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 36
  store i32 1, ptr %i.bc, align 4, !tbaa !2324
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !2325, !nonnull !151, !align !222
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 5 uses
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !2326, !nonnull !151, !align !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.bj, label %.preheader.us.preheader.i, label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bk = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %i.bk, label %.epil.preheader, label %.preheader.us.preheader.i.new

.preheader.us.preheader.i.new:                    ; preds = %.preheader.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %indvars.iv.next.i.3, %bb.u ] ; 5 uses
  %.sroa.3.016.us.i = phi double [ 0.000000e+00, %.preheader.us.preheader.i.new ], [ %i.bz, %bb.u ]
  %niter = phi i64 [ 0, %.preheader.us.preheader.i.new ], [ %niter.next.3, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !139 ; 2 uses
  %i.bn = call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %.sroa.3.016.us.i)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !139 ; 2 uses
  %i.br = call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bn)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !139 ; 2 uses
  %i.bv = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.br)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !139 ; 2 uses
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bv) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %bb.u, !llvm.loop !2327

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.3.016.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.preheader.i ], [ %i.bz, %._crit_edge.us.i.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.sroa.3.016.us.i.epil = phi double [ %.sroa.3.016.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.epil
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !139 ; 2 uses
  %i.cc = call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %.sroa.3.016.us.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.v, !llvm.loop !2328

._crit_edge.us.i:                                 ; preds = %bb.v, %._crit_edge.us.i.unr-lcssa
  %.lcssa = phi double [ %i.bz, %._crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.v ]
  %20 = bitcast double %.lcssa to i64
  br label %_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit

_ZNK2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEclERKNS_5RangeE.exit: ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %storemerge = phi i64 [ %20, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  store i64 %storemerge, ptr %i.bi, align 8
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.w:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br i1 %i.cg, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10
  %i.cl = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.cm = shl i64 %i.cl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ck, ptr align 8 %i.ci, i64 %i.cm, i1 false)
  br label %bb.aq

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEE, i64 16), ptr %15, align 8, !tbaa !73
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %0, ptr %i.cn, align 8, !tbaa !149
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %1, ptr %i.co, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.y)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35 unwind label %bb.ac

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35: ; preds = %bb.z
  %i.cp = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.aa unwind label %bb.ac     ; 5 uses

bb.aa:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35
  %i.cq = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not6.i.i36 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not6.i.i36, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %bb.ab
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = ptrtoaddr ptr %i.cp to i64
  %i.ct = add i64 %i.cr, -4
  %i.cu = sub i64 %i.ct, %i.cs                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 2
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 28
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.cw, 9223372036854775800     ; 3 uses
  %i.cx = shl i64 %n.vec, 2
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi71 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.dc, %vector.body ]
  %i.cz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load72 = load <4 x i32>, ptr %i.da, align 4, !tbaa !23
  %i.db = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dc = mul <4 x i32> %wide.load72, %vec.phi71  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !2329

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.dc, %i.db
  %i.de = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37.preheader94

.lr.ph.i.i37.preheader94:                         ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.08.i.i38.ph = phi ptr [ %i.cp, %.lr.ph.i.i37.preheader ], [ %i.cy, %middle.block ]
  %.057.i.i39.ph = phi i32 [ 1, %.lr.ph.i.i37.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader94, %.lr.ph.i.i37
  %.08.i.i38 = phi ptr [ %i.dh, %.lr.ph.i.i37 ], [ %.08.i.i38.ph, %.lr.ph.i.i37.preheader94 ] ; 2 uses
  %.057.i.i39 = phi i32 [ %i.dg, %.lr.ph.i.i37 ], [ %.057.i.i39.ph, %.lr.ph.i.i37.preheader94 ]
  %i.df = load i32, ptr %.08.i.i38, align 4, !tbaa !23
  %i.dg = mul nsw i32 %i.df, %.057.i.i39          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i38, i64 4 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.dh, %i.cq
  br i1 %.not.i.i40, label %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42, label %.lr.ph.i.i37, !llvm.loop !2330

bb.ac:                                            ; preds = %bb.aa, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i35, %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %15) #23
  br label %common.resume

_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42: ; preds = %.lr.ph.i.i37, %middle.block, %bb.ab
  %.05.lcssa.i.i41 = phi i32 [ 1, %bb.ab ], [ %i.de, %middle.block ], [ %i.dg, %.lr.ph.i.i37 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.05.lcssa.i.i41, ptr %i.dj, align 8, !tbaa !2320
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %.05.lcssa.i.i41, ptr %i.dk, align 4, !tbaa !2322
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1, ptr %i.dl, align 8, !tbaa !2323
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 1, ptr %i.dm, align 4, !tbaa !2324
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i32 0, ptr %16, align 4, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !37
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef f0x3F50000000000000)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN2cv3dnn16Reduce2LayerImpl16ReduceAllInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_.exit42
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.af:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.dp = ptrtoint ptr %i.cf to i64
  %i.dq = ptrtoint ptr %i.cd to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 3 uses
  %i.ds = icmp ugt i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %.noexc.i.i, label %bb.ag, !prof !153

.noexc.i.i:                                       ; preds = %bb.af
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.dt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24 ; 5 uses
  store ptr %i.dt, ptr %18, align 8, !tbaa !119
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !144
  %i.dx = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.dy = load ptr, ptr %i.ce, align 8, !tbaa !42
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 4
  br i1 %i.ec, label %bb.ah, label %bb.ai, !prof !154

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %i.dx, i64 %i.eb, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ed = icmp eq i64 %i.eb, 4
  br i1 %i.ed, label %bb.aj, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load i32, ptr %i.dx, align 4, !tbaa !23
  store i32 %i.ee, ptr %i.dt, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ef = getelementptr inbounds i8, ptr %i.dt, i64 %i.eb
  store ptr %i.ef, ptr %i.du, align 8, !tbaa !118
  invoke void @_ZN2cv3dnn16Reduce2LayerImpl13ReduceInvokerINS1_15ReduceSumSquareIdddEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %18)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.eg = load ptr, ptr %18, align 8, !tbaa !119  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eh = load ptr, ptr %i.dw, align 8, !tbaa !144
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.em = load i32, ptr %i.el, align 8, !tbaa !2331 ; 2 uses
  %i.en = sext i32 %i.em to i64
end_hunk_7
