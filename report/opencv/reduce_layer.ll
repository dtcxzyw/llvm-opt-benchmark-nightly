Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reduce_layer?download=true
inline.NumInlined: 8321
inline.NumDeleted: 448
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIhEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !44     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38
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
  %i.v = load i32, ptr %11, align 4, !tbaa !98
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.s

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEE, i64 16), ptr %12, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not6.i.i, label %.lr.ph19.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = add i64 %i.ac, -4
  %i.ae = sub i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check68, label %.lr.ph.i.i.preheader111, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec70 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec70, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next78, %vector.body71 ] ; 2 uses
  %vec.phi73 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.al, %vector.body71 ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.am, %vector.body71 ]
  %i.aj = shl i64 %index72, 2
  %next.gep75 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !77
  %wide.load77 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !77
  %i.al = mul <4 x i32> %wide.load76, %vec.phi73  ; 2 uses
  %i.am = mul <4 x i32> %wide.load77, %vec.phi74  ; 2 uses
  %index.next78 = add nuw i64 %index72, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next78, %n.vec70
  br i1 %i.an, label %middle.block79, label %vector.body71, !llvm.loop !872

middle.block79:                                   ; preds = %vector.body71
  %bin.rdx80 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx80) ; 2 uses
  %cmp.n81 = icmp eq i64 %i.ag, %n.vec70
  br i1 %cmp.n81, label %.lr.ph19.i, label %.lr.ph.i.i.preheader111

.lr.ph.i.i.preheader111:                          ; preds = %.lr.ph.i.i.preheader, %middle.block79
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block79 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block79 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader111, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader111 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !77
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i.i, label %.lr.ph19.i, label %.lr.ph.i.i, !llvm.loop !873

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.y, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.cw, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dc, %bb.aa ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.lr.ph19.i:                                       ; preds = %.lr.ph.i.i, %middle.block79, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block79 ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !879
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !120
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !880
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !881
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !121, !nonnull !100, !align !122
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !123 ; 4 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !124, !nonnull !100, !align !122
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !38  ; 4 uses
  %i.be = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.be, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.lr.ph19.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 6 uses
  %min.iters.check85 = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %min.iters.check85, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %.05.lcssa.i.i, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %wide.trip.count.i, 28
  %n.vec88 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.ph87, %vector.body89
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %vec.phi91 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bi, %vector.body89 ]
  %vec.phi92 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bj, %vector.body89 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %index90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load93 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !38
  %wide.load94 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !38
  %i.bi = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load93, <16 x i8> %vec.phi91) ; 2 uses
  %i.bj = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load94, <16 x i8> %vec.phi92) ; 2 uses
  %index.next95 = add nuw i64 %index90, 32        ; 2 uses
  %i.bk = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bk, label %middle.block96, label %vector.body89, !llvm.loop !874

middle.block96:                                   ; preds = %vector.body89
  %rdx.minmax = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.bi, <16 x i8> %i.bj)
  %i.bl = call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i
  br i1 %cmp.n97, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block96
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec88, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx98 = phi i8 [ %i.bl, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert100 = insertelement <4 x i8> poison, i8 %bc.merge.rdx98, i64 0
  %broadcast.splat101 = shufflevector <4 x i8> %broadcast.splatinsert100, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi103 = phi <4 x i8> [ %broadcast.splat101, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %index102
  %wide.load104 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !38
  %i.bn = call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load104, <4 x i8> %vec.phi103) ; 2 uses
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !875

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bp = call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.bn) ; 2 uses
  %cmp.n106 = icmp eq i64 %n.vec99, %wide.trip.count.i
  br i1 %cmp.n106, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec88, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  %.sroa.4.015.i.ph = phi i8 [ %i.bd, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block96, %vec.epilog.middle.block, %.lr.ph19.i
  %.sroa.4.0.lcssa.i = phi i8 [ %i.bd, %.lr.ph19.i ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bl, %middle.block96 ], [ %..i.i, %.lr.ph.i ]
  store i8 %.sroa.4.0.lcssa.i, ptr %i.bc, align 1, !tbaa !38
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.4.015.i = phi i8 [ %..i.i, %.lr.ph.i ], [ %.sroa.4.015.i.ph, %.lr.ph.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %..i.i = call i8 @llvm.umax.i8(i8 %i.br, i8 %.sroa.4.015.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !876

bb.s:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  br i1 %3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123
  %i.ca = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %bb.am

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEE, i64 16), ptr %13, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.cb, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.y

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.v
  %i.cd = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.w unwind label %bb.y       ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.x unwind label %bb.y       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %.not6.i.i34 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.x
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = add i64 %i.cg, -4
  %i.ci = sub i64 %i.ch, %i.ce                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 3 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi65 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cq, %vector.body ]
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !77
  %wide.load66 = load <4 x i32>, ptr %i.co, align 4, !tbaa !77
  %i.cp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cq = mul <4 x i32> %wide.load66, %vec.phi65  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !877

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader115

.lr.ph.i.i35.preheader115:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.cd, %.lr.ph.i.i35.preheader ], [ %i.cm, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader115, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.cv, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader115 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.cu, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader115 ]
  %i.ct = load i32, ptr %.08.i.i36, align 4, !tbaa !77
  %i.cu = mul nsw i32 %i.ct, %.057.i.i37          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cv, %i.cf
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !878

bb.y:                                             ; preds = %bb.w, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.x
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.x ], [ %i.cs, %middle.block ], [ %i.cu, %.lr.ph.i.i35 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.cx, align 8, !tbaa !879
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.cy, align 4, !tbaa !120
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.cz, align 8, !tbaa !880
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.da, align 4, !tbaa !881
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !127
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.db, align 4, !tbaa !128
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.am

bb.aa:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_.exit40
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dd = ptrtoint ptr %i.bu to i64
  %i.de = ptrtoint ptr %i.bs to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp ugt i64 %i.df, 9223372036854775804
  br i1 %i.dg, label %.noexc.i.i, label %bb.ac, !prof !114

.noexc.i.i:                                       ; preds = %bb.ab
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #21 ; 5 uses
  store ptr %i.dh, ptr %16, align 8, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !78
  %i.dl = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !94
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 4
  br i1 %i.dq, label %bb.ad, label %bb.ae, !prof !115

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.dl, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dr = icmp eq i64 %i.dp, 4
  br i1 %i.dr, label %bb.af, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMinIhEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !44     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38
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
  %i.v = load i32, ptr %11, align 4, !tbaa !98
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.s

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEE, i64 16), ptr %12, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not6.i.i, label %.lr.ph19.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = add i64 %i.ac, -4
  %i.ae = sub i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check68, label %.lr.ph.i.i.preheader111, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec70 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec70, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next78, %vector.body71 ] ; 2 uses
  %vec.phi73 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.al, %vector.body71 ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.am, %vector.body71 ]
  %i.aj = shl i64 %index72, 2
  %next.gep75 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !77
  %wide.load77 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !77
  %i.al = mul <4 x i32> %wide.load76, %vec.phi73  ; 2 uses
  %i.am = mul <4 x i32> %wide.load77, %vec.phi74  ; 2 uses
  %index.next78 = add nuw i64 %index72, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next78, %n.vec70
  br i1 %i.an, label %middle.block79, label %vector.body71, !llvm.loop !882

middle.block79:                                   ; preds = %vector.body71
  %bin.rdx80 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx80) ; 2 uses
  %cmp.n81 = icmp eq i64 %i.ag, %n.vec70
  br i1 %cmp.n81, label %.lr.ph19.i, label %.lr.ph.i.i.preheader111

.lr.ph.i.i.preheader111:                          ; preds = %.lr.ph.i.i.preheader, %middle.block79
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block79 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block79 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader111, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader111 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !77
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i.i, label %.lr.ph19.i, label %.lr.ph.i.i, !llvm.loop !883

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.y, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.cw, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dc, %bb.aa ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.lr.ph19.i:                                       ; preds = %.lr.ph.i.i, %middle.block79, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block79 ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !889
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !134
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !890
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !891
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !135, !nonnull !100, !align !122
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !123 ; 4 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !136, !nonnull !100, !align !122
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !38  ; 4 uses
  %i.be = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.be, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.lr.ph19.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 6 uses
  %min.iters.check85 = icmp ult i32 %.05.lcssa.i.i, 4
  br i1 %min.iters.check85, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %.05.lcssa.i.i, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %wide.trip.count.i, 28
  %n.vec88 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.ph87, %vector.body89
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %vec.phi91 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bi, %vector.body89 ]
  %vec.phi92 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bj, %vector.body89 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %index90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load93 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !38
  %wide.load94 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !38
  %i.bi = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load93, <16 x i8> %vec.phi91) ; 2 uses
  %i.bj = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load94, <16 x i8> %vec.phi92) ; 2 uses
  %index.next95 = add nuw i64 %index90, 32        ; 2 uses
  %i.bk = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bk, label %middle.block96, label %vector.body89, !llvm.loop !884

middle.block96:                                   ; preds = %vector.body89
  %rdx.minmax = call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.bi, <16 x i8> %i.bj)
  %i.bl = call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i
  br i1 %cmp.n97, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block96
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec88, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx98 = phi i8 [ %i.bl, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert100 = insertelement <4 x i8> poison, i8 %bc.merge.rdx98, i64 0
  %broadcast.splat101 = shufflevector <4 x i8> %broadcast.splatinsert100, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi103 = phi <4 x i8> [ %broadcast.splat101, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %index102
  %wide.load104 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !38
  %i.bn = call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load104, <4 x i8> %vec.phi103) ; 2 uses
  %index.next105 = add nuw i64 %index102, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !885

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bp = call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.bn) ; 2 uses
  %cmp.n106 = icmp eq i64 %n.vec99, %wide.trip.count.i
  br i1 %cmp.n106, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec88, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  %.sroa.4.015.i.ph = phi i8 [ %i.bd, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block96, %vec.epilog.middle.block, %.lr.ph19.i
  %.sroa.4.0.lcssa.i = phi i8 [ %i.bd, %.lr.ph19.i ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bl, %middle.block96 ], [ %..i.i, %.lr.ph.i ]
  store i8 %.sroa.4.0.lcssa.i, ptr %i.bc, align 1, !tbaa !38
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.4.015.i = phi i8 [ %..i.i, %.lr.ph.i ], [ %.sroa.4.015.i.ph, %.lr.ph.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %..i.i = call i8 @llvm.umin.i8(i8 %i.br, i8 %.sroa.4.015.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !886

bb.s:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  br i1 %3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123
  %i.ca = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %bb.am

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEE, i64 16), ptr %13, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.cb, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.y

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.v
  %i.cd = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.w unwind label %bb.y       ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.x unwind label %bb.y       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %.not6.i.i34 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.x
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = add i64 %i.cg, -4
  %i.ci = sub i64 %i.ch, %i.ce                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 3 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi65 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cq, %vector.body ]
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !77
  %wide.load66 = load <4 x i32>, ptr %i.co, align 4, !tbaa !77
  %i.cp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cq = mul <4 x i32> %wide.load66, %vec.phi65  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !887

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader115

.lr.ph.i.i35.preheader115:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.cd, %.lr.ph.i.i35.preheader ], [ %i.cm, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader115, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.cv, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader115 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.cu, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader115 ]
  %i.ct = load i32, ptr %.08.i.i36, align 4, !tbaa !77
  %i.cu = mul nsw i32 %i.ct, %.057.i.i37          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cv, %i.cf
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !888

bb.y:                                             ; preds = %bb.w, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.x
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.x ], [ %i.cs, %middle.block ], [ %i.cu, %.lr.ph.i.i35 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.cx, align 8, !tbaa !889
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.cy, align 4, !tbaa !134
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.cz, align 8, !tbaa !890
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.da, align 4, !tbaa !891
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !127
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.db, align 4, !tbaa !128
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.am

bb.aa:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_.exit40
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dd = ptrtoint ptr %i.bu to i64
  %i.de = ptrtoint ptr %i.bs to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp ugt i64 %i.df, 9223372036854775804
  br i1 %i.dg, label %.noexc.i.i, label %bb.ac, !prof !114

.noexc.i.i:                                       ; preds = %bb.ab
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #21 ; 5 uses
  store ptr %i.dh, ptr %16, align 8, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !78
  %i.dl = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !94
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 4
  br i1 %i.dq, label %bb.ad, label %bb.ae, !prof !115

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.dl, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dr = icmp eq i64 %i.dp, 4
  br i1 %i.dr, label %bb.af, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.dn = load i32, ptr %i.dg, align 4, !tbaa !77
  store i32 %i.dn, ptr %i.dc, align 4, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ad, %bb.ae, %bb.af
  %i.do = getelementptr inbounds i8, ptr %i.dc, i64 %i.dk
  store ptr %i.do, ptr %i.dd, align 8, !tbaa !75
  invoke void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %16)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.dp = load ptr, ptr %16, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !78
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ag, %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !204 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 124
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !205
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.dw
  %i.eb = uitofp i64 %i.ea to double
  %i.ec = fmul nnan double %i.eb, f0x3F50000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store i32 0, ptr %17, align 4, !tbaa !127
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %i.dv, ptr %i.ed, align 4, !tbaa !128
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.ec)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEEE, i64 16), ptr %15, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !78
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #22, !inline_history !206
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.aj, %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !78
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #22, !inline_history !206
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i3.i, label %_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !78
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #22, !inline_history !206
  br label %_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEED2Ev.exit

_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %bb.al
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(128) %15) #23, !inline_history !206
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.am

bb.am:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEED2Ev.exit, %bb.z, %bb.u, %._crit_edge.i
  ret void

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %16, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = load ptr, ptr %i.df, align 8, !tbaa !78
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIhEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %15) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

_ZNSt6vectorIiSaIiEED2Ev.exit43:                  ; preds = %bb.ao, %bb.an, %bb.ap
  %.pn26 = phi { ptr, i32 } [ %i.ff, %bb.ap ], [ %i.ez, %bb.an ], [ %i.ez, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIhEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !127    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121, !nonnull !100, !align !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124, !nonnull !100, !align !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = icmp slt i32 %i.a, %i.c
  br i1 %i.l, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = sext i32 %i.a to i64
  %wide.trip.count24 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge20:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph19, %._crit_edge
  %indvars.iv21 = phi i64 [ %i.n, %.lr.ph19 ], [ %indvars.iv.next22, %._crit_edge ] ; 2 uses
  %i.o = load i8, ptr %i.g, align 1, !tbaa !38    ; 4 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !120  ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i32 %i.p, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi29 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !38
  %wide.load30 = load <16 x i8>, ptr %i.t, align 1, !tbaa !38
  %i.u = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.v = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load30, <16 x i8> %vec.phi29) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !968

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.x = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.x, %vec.epilog.iter.check ], [ %i.o, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert32 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat33 = shufflevector <4 x i8> %broadcast.splatinsert32, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i8> [ %broadcast.splat33, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %index34
  %wide.load36 = load <4 x i8>, ptr %i.y, align 1, !tbaa !38
  %i.z = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load36, <4 x i8> %vec.phi35) ; 2 uses
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.z) ; 2 uses
  %cmp.n38 = icmp eq i64 %n.vec31, %wide.trip.count
  br i1 %cmp.n38, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  %.sroa.4.015.ph = phi i8 [ %i.o, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.sroa.4.0.lcssa = phi i8 [ %i.o, %bb.b ], [ %i.ab, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %..i, %.lr.ph ]
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv21
  store i8 %.sroa.4.0.lcssa, ptr %i.ac, align 1, !tbaa !38
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge20, label %bb.b, !llvm.loop !970

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.015 = phi i8 [ %..i, %.lr.ph ], [ %.sroa.4.015.ph, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %..i = tail call i8 @llvm.umax.i8(i8 %i.ae, i8 %.sroa.4.015) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !971
}

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIhEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef align 8 %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %36 = alloca %"struct.cv::MatShape", align 4    ; 13 uses
  %37 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIhEEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.noexc102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !114

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc102 unwind label %bb.k

.noexc102:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !78
  %i.q = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.q, i64 %i.u, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc102
  %i.w = icmp eq i64 %i.u, 4
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.q, align 4, !tbaa !77
  store i32 %i.x, ptr %i.m, align 4, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !207, !nonnull !100, !align !122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %36, ptr noundef nonnull align 4 dereferenceable(52) %i.ac)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.l

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %37, ptr noundef nonnull align 4 dereferenceable(52) %36)
          to label %bb.g unwind label %bb.ao

bb.g:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ad = load i32, ptr %37, align 4, !tbaa !98   ; 3 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ad, i32 0) ; 3 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.ae = add nsw i64 %spec.select.i, -1          ; 2 uses
  %narrow.i104 = call i32 @llvm.smax.i32(i32 %i.ad, i32 1) ; 2 uses
  %spec.select.i105 = zext nneg i32 %narrow.i104 to i64
  %i.af = icmp ult i64 %i.ae, %spec.select.i105
  br i1 %i.af, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc106 unwind label %bb.ao

.noexc106:                                        ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.37, i32 noundef 97) #24
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc106
  unreachable

bb.j:                                             ; preds = %.noexc106
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %34, align 8, !tbaa !44   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !38
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.body151

.split:                                           ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !77    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !77
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !77
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !992

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !77
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !993

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !115

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !77
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !77
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !115

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !77
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !77
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !76
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !75
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !78
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIhEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !127    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135, !nonnull !100, !align !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136, !nonnull !100, !align !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = icmp slt i32 %i.a, %i.c
  br i1 %i.l, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = sext i32 %i.a to i64
  %wide.trip.count24 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge20:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph19, %._crit_edge
  %indvars.iv21 = phi i64 [ %i.n, %.lr.ph19 ], [ %indvars.iv.next22, %._crit_edge ] ; 2 uses
  %i.o = load i8, ptr %i.g, align 1, !tbaa !38    ; 4 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !134  ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i32 %i.p, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi29 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !38
  %wide.load30 = load <16 x i8>, ptr %i.t, align 1, !tbaa !38
  %i.u = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.v = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %wide.load30, <16 x i8> %vec.phi29) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !994

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.x = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.x, %vec.epilog.iter.check ], [ %i.o, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert32 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat33 = shufflevector <4 x i8> %broadcast.splatinsert32, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <4 x i8> [ %broadcast.splat33, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %index34
  %wide.load36 = load <4 x i8>, ptr %i.y, align 1, !tbaa !38
  %i.z = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %wide.load36, <4 x i8> %vec.phi35) ; 2 uses
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !995

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.z) ; 2 uses
  %cmp.n38 = icmp eq i64 %n.vec31, %wide.trip.count
  br i1 %cmp.n38, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  %.sroa.4.015.ph = phi i8 [ %i.o, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.sroa.4.0.lcssa = phi i8 [ %i.o, %bb.b ], [ %i.ab, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %..i, %.lr.ph ]
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv21
  store i8 %.sroa.4.0.lcssa, ptr %i.ac, align 1, !tbaa !38
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge20, label %bb.b, !llvm.loop !996

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.015 = phi i8 [ %..i, %.lr.ph ], [ %.sroa.4.015.ph, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %..i = tail call i8 @llvm.umin.i8(i8 %i.ae, i8 %.sroa.4.015) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !997
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMinIhEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef align 8 %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %36 = alloca %"struct.cv::MatShape", align 4    ; 13 uses
  %37 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMinIhEEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.noexc102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !114

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc102 unwind label %bb.k

.noexc102:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !78
  %i.q = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.q, i64 %i.u, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc102
  %i.w = icmp eq i64 %i.u, 4
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.q, align 4, !tbaa !77
  store i32 %i.x, ptr %i.m, align 4, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !213, !nonnull !100, !align !122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %36, ptr noundef nonnull align 4 dereferenceable(52) %i.ac)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.l

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %37, ptr noundef nonnull align 4 dereferenceable(52) %36)
          to label %bb.g unwind label %bb.ao

bb.g:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ad = load i32, ptr %37, align 4, !tbaa !98   ; 3 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ad, i32 0) ; 3 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.ae = add nsw i64 %spec.select.i, -1          ; 2 uses
  %narrow.i104 = call i32 @llvm.smax.i32(i32 %i.ad, i32 1) ; 2 uses
  %spec.select.i105 = zext nneg i32 %narrow.i104 to i64
  %i.af = icmp ult i64 %i.ae, %spec.select.i105
  br i1 %i.af, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc106 unwind label %bb.ao

.noexc106:                                        ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.37, i32 noundef 97) #24
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc106
  unreachable

bb.j:                                             ; preds = %.noexc106
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %34, align 8, !tbaa !44   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !38
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.body151

.split:                                           ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 12 ; 10 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  store i32 1, ptr %i.an, align 4, !tbaa !77
  %i.ao = icmp sgt i32 %i.ad, 1
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIaEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !44     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38
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
  %i.v = load i32, ptr %11, align 4, !tbaa !98
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.s

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEE, i64 16), ptr %12, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not6.i.i, label %.lr.ph19.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = add i64 %i.ac, -4
  %i.ae = sub i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check68, label %.lr.ph.i.i.preheader111, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec70 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec70, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next78, %vector.body71 ] ; 2 uses
  %vec.phi73 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.al, %vector.body71 ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.am, %vector.body71 ]
  %i.aj = shl i64 %index72, 2
  %next.gep75 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !77
  %wide.load77 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !77
  %i.al = mul <4 x i32> %wide.load76, %vec.phi73  ; 2 uses
  %i.am = mul <4 x i32> %wide.load77, %vec.phi74  ; 2 uses
  %index.next78 = add nuw i64 %index72, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next78, %n.vec70
  br i1 %i.an, label %middle.block79, label %vector.body71, !llvm.loop !1150

middle.block79:                                   ; preds = %vector.body71
  %bin.rdx80 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx80) ; 2 uses
  %cmp.n81 = icmp eq i64 %i.ag, %n.vec70
  br i1 %cmp.n81, label %.lr.ph19.i, label %.lr.ph.i.i.preheader111

.lr.ph.i.i.preheader111:                          ; preds = %.lr.ph.i.i.preheader, %middle.block79
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block79 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block79 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader111, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader111 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !77
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i.i, label %.lr.ph19.i, label %.lr.ph.i.i, !llvm.loop !1151

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.y, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.cw, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dc, %bb.aa ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.lr.ph19.i:                                       ; preds = %.lr.ph.i.i, %middle.block79, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block79 ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !1157
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !269
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !1158
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !270, !nonnull !100, !align !122
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !123 ; 4 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !271, !nonnull !100, !align !122
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !38  ; 4 uses
  %i.be = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.be, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.lr.ph19.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 6 uses
  %min.iters.check85 = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %min.iters.check85, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %.05.lcssa.i.i, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %wide.trip.count.i, 24
  %n.vec88 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.ph87, %vector.body89
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %vec.phi91 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bi, %vector.body89 ]
  %vec.phi92 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bj, %vector.body89 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %index90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load93 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !38
  %wide.load94 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !38
  %i.bi = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load93, <16 x i8> %vec.phi91) ; 2 uses
  %i.bj = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load94, <16 x i8> %vec.phi92) ; 2 uses
  %index.next95 = add nuw i64 %index90, 32        ; 2 uses
  %i.bk = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bk, label %middle.block96, label %vector.body89, !llvm.loop !1152

middle.block96:                                   ; preds = %vector.body89
  %rdx.minmax = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.bi, <16 x i8> %i.bj)
  %i.bl = call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i
  br i1 %cmp.n97, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block96
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec88, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx98 = phi i8 [ %i.bl, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert100 = insertelement <8 x i8> poison, i8 %bc.merge.rdx98, i64 0
  %broadcast.splat101 = shufflevector <8 x i8> %broadcast.splatinsert100, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi103 = phi <8 x i8> [ %broadcast.splat101, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %index102
  %wide.load104 = load <8 x i8>, ptr %i.bm, align 1, !tbaa !38
  %i.bn = call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load104, <8 x i8> %vec.phi103) ; 2 uses
  %index.next105 = add nuw i64 %index102, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1153

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bp = call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.bn) ; 2 uses
  %cmp.n106 = icmp eq i64 %n.vec99, %wide.trip.count.i
  br i1 %cmp.n106, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec88, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  %.sroa.4.015.i.ph = phi i8 [ %i.bd, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block96, %vec.epilog.middle.block, %.lr.ph19.i
  %.sroa.4.0.lcssa.i = phi i8 [ %i.bd, %.lr.ph19.i ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bl, %middle.block96 ], [ %..i.i, %.lr.ph.i ]
  store i8 %.sroa.4.0.lcssa.i, ptr %i.bc, align 1, !tbaa !38
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.4.015.i = phi i8 [ %..i.i, %.lr.ph.i ], [ %.sroa.4.015.i.ph, %.lr.ph.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %..i.i = call i8 @llvm.smax.i8(i8 %i.br, i8 %.sroa.4.015.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1154

bb.s:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  br i1 %3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123
  %i.ca = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %bb.am

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEE, i64 16), ptr %13, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.cb, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.y

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.v
  %i.cd = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.w unwind label %bb.y       ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.x unwind label %bb.y       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %.not6.i.i34 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.x
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = add i64 %i.cg, -4
  %i.ci = sub i64 %i.ch, %i.ce                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 3 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi65 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cq, %vector.body ]
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !77
  %wide.load66 = load <4 x i32>, ptr %i.co, align 4, !tbaa !77
  %i.cp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cq = mul <4 x i32> %wide.load66, %vec.phi65  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1155

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader115

.lr.ph.i.i35.preheader115:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.cd, %.lr.ph.i.i35.preheader ], [ %i.cm, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader115, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.cv, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader115 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.cu, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader115 ]
  %i.ct = load i32, ptr %.08.i.i36, align 4, !tbaa !77
  %i.cu = mul nsw i32 %i.ct, %.057.i.i37          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cv, %i.cf
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !1156

bb.y:                                             ; preds = %bb.w, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.x
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.x ], [ %i.cs, %middle.block ], [ %i.cu, %.lr.ph.i.i35 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.cx, align 8, !tbaa !1157
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.cy, align 4, !tbaa !269
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.cz, align 8, !tbaa !1158
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.da, align 4, !tbaa !1159
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !127
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.db, align 4, !tbaa !128
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.am

bb.aa:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_.exit40
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dd = ptrtoint ptr %i.bu to i64
  %i.de = ptrtoint ptr %i.bs to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp ugt i64 %i.df, 9223372036854775804
  br i1 %i.dg, label %.noexc.i.i, label %bb.ac, !prof !114

.noexc.i.i:                                       ; preds = %bb.ab
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #21 ; 5 uses
  store ptr %i.dh, ptr %16, align 8, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !78
  %i.dl = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !94
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 4
  br i1 %i.dq, label %bb.ad, label %bb.ae, !prof !115

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.dl, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dr = icmp eq i64 %i.dp, 4
  br i1 %i.dr, label %bb.af, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
end_hunk_4
begin_hunk_5_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMinIaEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %8, align 8, !tbaa !44     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !38
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
  %i.v = load i32, ptr %11, align 4, !tbaa !98
  %i.w = icmp eq i32 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.w, label %bb.o, label %bb.s

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEE, i64 16), ptr %12, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i unwind label %bb.r

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i: ; preds = %bb.o
  %i.z = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.p unwind label %bb.r       ; 5 uses

bb.p:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %.not6.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not6.i.i, label %.lr.ph19.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = add i64 %i.ac, -4
  %i.ae = sub i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check68, label %.lr.ph.i.i.preheader111, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec70 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec70, 2
  %i.ai = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next78, %vector.body71 ] ; 2 uses
  %vec.phi73 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.al, %vector.body71 ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph69 ], [ %i.am, %vector.body71 ]
  %i.aj = shl i64 %index72, 2
  %next.gep75 = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep75, i64 16
  %wide.load76 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !77
  %wide.load77 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !77
  %i.al = mul <4 x i32> %wide.load76, %vec.phi73  ; 2 uses
  %i.am = mul <4 x i32> %wide.load77, %vec.phi74  ; 2 uses
  %index.next78 = add nuw i64 %index72, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next78, %n.vec70
  br i1 %i.an, label %middle.block79, label %vector.body71, !llvm.loop !1160

middle.block79:                                   ; preds = %vector.body71
  %bin.rdx80 = mul <4 x i32> %i.am, %i.al
  %i.ao = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx80) ; 2 uses
  %cmp.n81 = icmp eq i64 %i.ag, %n.vec70
  br i1 %cmp.n81, label %.lr.ph19.i, label %.lr.ph.i.i.preheader111

.lr.ph.i.i.preheader111:                          ; preds = %.lr.ph.i.i.preheader, %middle.block79
  %.08.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block79 ]
  %.057.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.preheader ], [ %i.ao, %middle.block79 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader111, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %.057.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader111 ]
  %i.ap = load i32, ptr %.08.i.i, align 4, !tbaa !77
  %i.aq = mul nsw i32 %i.ap, %.057.i.i            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ab
  br i1 %.not.i.i, label %.lr.ph19.i, label %.lr.ph.i.i, !llvm.loop !1161

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit43, %bb.y, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.r ], [ %i.cw, %bb.y ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dc, %bb.aa ], [ %.pn26, %_ZNSt6vectorIiSaIiEED2Ev.exit43 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i, %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %12) #23
  br label %common.resume

.lr.ph19.i:                                       ; preds = %.lr.ph.i.i, %middle.block79, %bb.q
  %.05.lcssa.i.i = phi i32 [ 1, %bb.q ], [ %i.ao, %middle.block79 ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.05.lcssa.i.i, ptr %i.at, align 8, !tbaa !1167
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.05.lcssa.i.i, ptr %i.au, align 4, !tbaa !277
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.av, align 8, !tbaa !1168
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 36
  store i32 1, ptr %i.aw, align 4, !tbaa !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !278, !nonnull !100, !align !122
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !123 ; 4 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !279, !nonnull !100, !align !122
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !38  ; 4 uses
  %i.be = icmp sgt i32 %.05.lcssa.i.i, 0
  br i1 %i.be, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.lr.ph19.i
  %wide.trip.count.i = zext nneg i32 %.05.lcssa.i.i to i64 ; 6 uses
  %min.iters.check85 = icmp ult i32 %.05.lcssa.i.i, 8
  br i1 %min.iters.check85, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %.05.lcssa.i.i, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph87

vector.ph87:                                      ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %wide.trip.count.i, 24
  %n.vec88 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.ph87, %vector.body89
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next95, %vector.body89 ] ; 2 uses
  %vec.phi91 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bi, %vector.body89 ]
  %vec.phi92 = phi <16 x i8> [ %broadcast.splat, %vector.ph87 ], [ %i.bj, %vector.body89 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %index90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load93 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !38
  %wide.load94 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !38
  %i.bi = call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load93, <16 x i8> %vec.phi91) ; 2 uses
  %i.bj = call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load94, <16 x i8> %vec.phi92) ; 2 uses
  %index.next95 = add nuw i64 %index90, 32        ; 2 uses
  %i.bk = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bk, label %middle.block96, label %vector.body89, !llvm.loop !1162

middle.block96:                                   ; preds = %vector.body89
  %rdx.minmax = call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.bi, <16 x i8> %i.bj)
  %i.bl = call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec88, %wide.trip.count.i
  br i1 %cmp.n97, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block96
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec88, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx98 = phi i8 [ %i.bl, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert100 = insertelement <8 x i8> poison, i8 %bc.merge.rdx98, i64 0
  %broadcast.splat101 = shufflevector <8 x i8> %broadcast.splatinsert100, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi103 = phi <8 x i8> [ %broadcast.splat101, %vec.epilog.ph ], [ %i.bn, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %index102
  %wide.load104 = load <8 x i8>, ptr %i.bm, align 1, !tbaa !38
  %i.bn = call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load104, <8 x i8> %vec.phi103) ; 2 uses
  %index.next105 = add nuw i64 %index102, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bp = call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.bn) ; 2 uses
  %cmp.n106 = icmp eq i64 %n.vec99, %wide.trip.count.i
  br i1 %cmp.n106, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec88, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  %.sroa.4.015.i.ph = phi i8 [ %i.bd, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block96, %vec.epilog.middle.block, %.lr.ph19.i
  %.sroa.4.0.lcssa.i = phi i8 [ %i.bd, %.lr.ph19.i ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bl, %middle.block96 ], [ %..i.i, %.lr.ph.i ]
  store i8 %.sroa.4.0.lcssa.i, ptr %i.bc, align 1, !tbaa !38
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.4.015.i = phi i8 [ %..i.i, %.lr.ph.i ], [ %.sroa.4.015.i.ph, %.lr.ph.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %..i.i = call i8 @llvm.smin.i8(i8 %i.br, i8 %.sroa.4.015.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1164

bb.s:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !94 ; 2 uses
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  br i1 %3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !123
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123
  %i.ca = call noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %bb.am

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEE, i64 16), ptr %13, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.cb, align 8, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %1, ptr %i.cc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.s)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33 unwind label %bb.y

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33: ; preds = %bb.v
  %i.cd = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.w unwind label %bb.y       ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %i.cf = invoke noundef ptr @_ZN2cv8MatShape3endEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
          to label %bb.x unwind label %bb.y       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %.not6.i.i34 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not6.i.i34, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader

.lr.ph.i.i35.preheader:                           ; preds = %bb.x
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = add i64 %i.cg, -4
  %i.ci = sub i64 %i.ch, %i.ce                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph.i.i35.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i35.preheader
  %n.vec = and i64 %i.ck, 9223372036854775800     ; 3 uses
  %i.cl = shl i64 %n.vec, 2
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi65 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cq, %vector.body ]
  %i.cn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !77
  %wide.load66 = load <4 x i32>, ptr %i.co, align 4, !tbaa !77
  %i.cp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cq = mul <4 x i32> %wide.load66, %vec.phi65  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1165

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.cq, %i.cp
  %i.cs = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35.preheader115

.lr.ph.i.i35.preheader115:                        ; preds = %.lr.ph.i.i35.preheader, %middle.block
  %.08.i.i36.ph = phi ptr [ %i.cd, %.lr.ph.i.i35.preheader ], [ %i.cm, %middle.block ]
  %.057.i.i37.ph = phi i32 [ 1, %.lr.ph.i.i35.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.preheader115, %.lr.ph.i.i35
  %.08.i.i36 = phi ptr [ %i.cv, %.lr.ph.i.i35 ], [ %.08.i.i36.ph, %.lr.ph.i.i35.preheader115 ] ; 2 uses
  %.057.i.i37 = phi i32 [ %i.cu, %.lr.ph.i.i35 ], [ %.057.i.i37.ph, %.lr.ph.i.i35.preheader115 ]
  %i.ct = load i32, ptr %.08.i.i36, align 4, !tbaa !77
  %i.cu = mul nsw i32 %i.ct, %.057.i.i37          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i36, i64 4 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cv, %i.cf
  br i1 %.not.i.i38, label %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_.exit40, label %.lr.ph.i.i35, !llvm.loop !1166

bb.y:                                             ; preds = %bb.w, %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit.i33, %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %13) #23
  br label %common.resume

_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_.exit40: ; preds = %.lr.ph.i.i35, %middle.block, %bb.x
  %.05.lcssa.i.i39 = phi i32 [ 1, %bb.x ], [ %i.cs, %middle.block ], [ %i.cu, %.lr.ph.i.i35 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.05.lcssa.i.i39, ptr %i.cx, align 8, !tbaa !1167
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.05.lcssa.i.i39, ptr %i.cy, align 4, !tbaa !277
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 1, ptr %i.cz, align 8, !tbaa !1168
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 36
  store i32 1, ptr %i.da, align 4, !tbaa !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 0, ptr %14, align 4, !tbaa !127
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 1, ptr %i.db, align 4, !tbaa !128
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef f0x3F50000000000000)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.am

bb.aa:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_.exit40
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.dd = ptrtoint ptr %i.bu to i64
  %i.de = ptrtoint ptr %i.bs to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp ugt i64 %i.df, 9223372036854775804
  br i1 %i.dg, label %.noexc.i.i, label %bb.ac, !prof !114

.noexc.i.i:                                       ; preds = %bb.ab
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.dh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #21 ; 5 uses
  store ptr %i.dh, ptr %16, align 8, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !78
  %i.dl = load ptr, ptr %2, align 8, !tbaa !94    ; 3 uses
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !94
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 4
  br i1 %i.dq, label %bb.ad, label %bb.ae, !prof !115

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.dl, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dr = icmp eq i64 %i.dp, 4
  br i1 %i.dr, label %bb.af, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
end_hunk_5
begin_hunk_6_@_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEE3runERKNS_3MatERS6_St6vectorIiSaIiEEb:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.dn = load i32, ptr %i.dg, align 4, !tbaa !77
  store i32 %i.dn, ptr %i.dc, align 4, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.ad, %bb.ae, %bb.af
  %i.do = getelementptr inbounds i8, ptr %i.dc, i64 %i.dk
  store ptr %i.do, ptr %i.dd, align 8, !tbaa !75
  invoke void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 %16)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.dp = load ptr, ptr %16, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !78
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ag, %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !346 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 124
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !347
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.dw
  %i.eb = uitofp i64 %i.ea to double
  %i.ec = fmul nnan double %i.eb, f0x3F50000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store i32 0, ptr %17, align 4, !tbaa !127
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %i.dv, ptr %i.ed, align 4, !tbaa !128
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %i.ec)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEEE, i64 16), ptr %15, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i41, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !78
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #22, !inline_history !348
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.aj, %bb.ai
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !78
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #22, !inline_history !348
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i3.i, label %_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !78
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #22, !inline_history !348
  br label %_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEED2Ev.exit

_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %bb.al
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(128) %15) #23, !inline_history !348
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.am

bb.am:                                            ; preds = %_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEED2Ev.exit, %bb.z, %bb.u, %._crit_edge.i
  ret void

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %16, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fb = load ptr, ptr %i.df, align 8, !tbaa !78
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_15ReduceLogSumExpIaEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %15) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

_ZNSt6vectorIiSaIiEED2Ev.exit43:                  ; preds = %bb.ao, %bb.an, %bb.ap
  %.pn26 = phi { ptr, i32 } [ %i.ff, %bb.ap ], [ %i.ez, %bb.an ], [ %i.ez, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMaxIaEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !127    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !270, !nonnull !100, !align !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !271, !nonnull !100, !align !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = icmp slt i32 %i.a, %i.c
  br i1 %i.l, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = sext i32 %i.a to i64
  %wide.trip.count24 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge20:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph19, %._crit_edge
  %indvars.iv21 = phi i64 [ %i.n, %.lr.ph19 ], [ %indvars.iv.next22, %._crit_edge ] ; 2 uses
  %i.o = load i8, ptr %i.g, align 1, !tbaa !38    ; 4 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !269  ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i32 %i.p, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi29 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !38
  %wide.load30 = load <16 x i8>, ptr %i.t, align 1, !tbaa !38
  %i.u = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.v = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load30, <16 x i8> %vec.phi29) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.x = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.x, %vec.epilog.iter.check ], [ %i.o, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert32 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat33 = shufflevector <8 x i8> %broadcast.splatinsert32, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <8 x i8> [ %broadcast.splat33, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %index34
  %wide.load36 = load <8 x i8>, ptr %i.y, align 1, !tbaa !38
  %i.z = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load36, <8 x i8> %vec.phi35) ; 2 uses
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.z) ; 2 uses
  %cmp.n38 = icmp eq i64 %n.vec31, %wide.trip.count
  br i1 %cmp.n38, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  %.sroa.4.015.ph = phi i8 [ %i.o, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.sroa.4.0.lcssa = phi i8 [ %i.o, %bb.b ], [ %i.ab, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %..i, %.lr.ph ]
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv21
  store i8 %.sroa.4.0.lcssa, ptr %i.ac, align 1, !tbaa !38
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge20, label %bb.b, !llvm.loop !1248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.015 = phi i8 [ %..i, %.lr.ph ], [ %.sroa.4.015.ph, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %..i = tail call i8 @llvm.smax.i8(i8 %i.ae, i8 %.sroa.4.015) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1249
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIaEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef align 8 %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %36 = alloca %"struct.cv::MatShape", align 4    ; 13 uses
  %37 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIaEEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.noexc102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !114

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc102 unwind label %bb.k

.noexc102:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !78
  %i.q = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.q, i64 %i.u, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc102
  %i.w = icmp eq i64 %i.u, 4
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.q, align 4, !tbaa !77
  store i32 %i.x, ptr %i.m, align 4, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !349, !nonnull !100, !align !122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %36, ptr noundef nonnull align 4 dereferenceable(52) %i.ac)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.l

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %37, ptr noundef nonnull align 4 dereferenceable(52) %36)
          to label %bb.g unwind label %bb.ao

bb.g:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ad = load i32, ptr %37, align 4, !tbaa !98   ; 3 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ad, i32 0) ; 3 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.ae = add nsw i64 %spec.select.i, -1          ; 2 uses
  %narrow.i104 = call i32 @llvm.smax.i32(i32 %i.ad, i32 1) ; 2 uses
  %spec.select.i105 = zext nneg i32 %narrow.i104 to i64
  %i.af = icmp ult i64 %i.ae, %spec.select.i105
  br i1 %i.af, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc106 unwind label %bb.ao

.noexc106:                                        ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.37, i32 noundef 97) #24
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc106
  unreachable

bb.j:                                             ; preds = %.noexc106
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %34, align 8, !tbaa !44   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !38
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.body151

.split:                                           ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 12 ; 10 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  store i32 1, ptr %i.an, align 4, !tbaa !77
  %i.ao = icmp sgt i32 %i.ad, 1
end_hunk_6
begin_hunk_7_@_ZNK2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMaxIaEEEclERKNS_5RangeE:bb.a
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us, %.lr.ph50.split.us
  %.sroa.038.048.us = phi ptr [ %i.ai, %.lr.ph50.split.us ], [ %i.bl, %._crit_edge.us ] ; 2 uses
  %.sroa.4.047.us = phi i8 [ %i.an, %.lr.ph50.split.us ], [ %..i.us.lcssa, %._crit_edge.us ] ; 3 uses
  %i.av = load i32, ptr %.sroa.038.048.us, align 4, !tbaa !77
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.aw ; 3 uses
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.sroa.4.047.us, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi70 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !38
  %wide.load71 = load <16 x i8>, ptr %i.az, align 1, !tbaa !38
  %i.ba = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.bb = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load71, <16 x i8> %vec.phi70) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1260

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.ba, <16 x i8> %i.bb)
  %i.bd = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.bd, %vec.epilog.iter.check ], [ %.sroa.4.047.us, %vector.main.loop.iter.check ]
  %broadcast.splatinsert73 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat74 = shufflevector <8 x i8> %broadcast.splatinsert73, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index75 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi76 = phi <8 x i8> [ %broadcast.splat74, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 %index75
  %wide.load77 = load <8 x i8>, ptr %i.be, align 1, !tbaa !38
  %i.bf = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load77, <8 x i8> %vec.phi76) ; 2 uses
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next78, %n.vec72
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.bf) ; 2 uses
  br i1 %cmp.n79, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec72, %vec.epilog.middle.block ]
  %.sroa.4.144.us.ph = phi i8 [ %.sroa.4.047.us, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.4.144.us = phi i8 [ %..i.us, %vec.epilog.scalar.ph ], [ %.sroa.4.144.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bi = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !38
  %..i.us = tail call i8 @llvm.smax.i8(i8 %i.bj, i8 %.sroa.4.144.us) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.as ; 2 uses
  %i.bk = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.bk, label %vec.epilog.scalar.ph, label %._crit_edge.us, !llvm.loop !1262

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %..i.us.lcssa = phi i8 [ %i.bh, %vec.epilog.middle.block ], [ %i.bd, %middle.block ], [ %..i.us, %vec.epilog.scalar.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.038.048.us, i64 4 ; 2 uses
  %.not43.us = icmp eq ptr %i.bl, %i.ao
  br i1 %.not43.us, label %._crit_edge51, label %iter.check

._crit_edge51:                                    ; preds = %._crit_edge.us, %.lr.ph50, %bb.b
  %.sroa.4.0.lcssa = phi i8 [ %i.an, %bb.b ], [ %i.an, %.lr.ph50 ], [ %..i.us.lcssa, %._crit_edge.us ]
  %i.bm = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv58
  store i8 %.sroa.4.0.lcssa, ptr %i.bm, align 1, !tbaa !38
  %i.bn = add i64 %.03154, 1                      ; 2 uses
  %i.bo = load i32, ptr %i.l, align 8, !tbaa !352
  %i.bp = sext i32 %i.bo to i64
  %.not = icmp ult i64 %i.bn, %i.bp
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge51
  %i.bq = add i64 %.03353, 1                      ; 4 uses
  %i.br = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !76  ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = icmp ult i64 %i.bq, %i.bw
  br i1 %i.bx, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !77
  %i.ca = sext i32 %i.bz to i64
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge51
  %i.cb = load i32, ptr %i.n, align 4, !tbaa !353
  %i.cc = sext i32 %i.cb to i64
  %i.cd = add i64 %.03055, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.134 = phi i64 [ %i.bq, %bb.d ], [ %i.bq, %bb.c ], [ %.03353, %bb.e ]
  %.132 = phi i64 [ 0, %bb.d ], [ 0, %bb.c ], [ %i.bn, %bb.e ]
  %.1 = phi i64 [ %i.ca, %bb.d ], [ %.03055, %bb.c ], [ %i.cd, %bb.e ]
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1263
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn15ReduceLayerImpl16ReduceAllInvokerINS1_9ReduceMinIaEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !127    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278, !nonnull !100, !align !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279, !nonnull !100, !align !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = icmp slt i32 %i.a, %i.c
  br i1 %i.l, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = sext i32 %i.a to i64
  %wide.trip.count24 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge20:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph19, %._crit_edge
  %indvars.iv21 = phi i64 [ %i.n, %.lr.ph19 ], [ %indvars.iv.next22, %._crit_edge ] ; 2 uses
  %i.o = load i8, ptr %i.g, align 1, !tbaa !38    ; 4 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !277  ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i32 %i.p, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi29 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <16 x i8>, ptr %i.s, align 1, !tbaa !38
  %wide.load30 = load <16 x i8>, ptr %i.t, align 1, !tbaa !38
  %i.u = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.v = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load30, <16 x i8> %vec.phi29) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1264

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.u, <16 x i8> %i.v)
  %i.x = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.x, %vec.epilog.iter.check ], [ %i.o, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert32 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat33 = shufflevector <8 x i8> %broadcast.splatinsert32, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi35 = phi <8 x i8> [ %broadcast.splat33, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %index34
  %wide.load36 = load <8 x i8>, ptr %i.y, align 1, !tbaa !38
  %i.z = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load36, <8 x i8> %vec.phi35) ; 2 uses
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1265

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.z) ; 2 uses
  %cmp.n38 = icmp eq i64 %n.vec31, %wide.trip.count
  br i1 %cmp.n38, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  %.sroa.4.015.ph = phi i8 [ %i.o, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.sroa.4.0.lcssa = phi i8 [ %i.o, %bb.b ], [ %i.ab, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %..i, %.lr.ph ]
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv21
  store i8 %.sroa.4.0.lcssa, ptr %i.ac, align 1, !tbaa !38
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %._crit_edge20, label %bb.b, !llvm.loop !1266

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.015 = phi i8 [ %..i, %.lr.ph ], [ %.sroa.4.015.ph, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %..i = tail call i8 @llvm.smin.i8(i8 %i.ae, i8 %.sroa.4.015) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1267
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMinIaEEEC2ERKNS_3MatERS6_St6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef align 8 %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %36 = alloca %"struct.cv::MatShape", align 4    ; 13 uses
  %37 = alloca %"struct.cv::MatShape", align 4    ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"struct.cv::MatShape", align 4    ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv3dnn15ReduceLayerImpl13ReduceInvokerINS1_9ReduceMinIaEEEE, i64 16), ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %.noexc102, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 9223372036854775804
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !114

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc102 unwind label %bb.k

.noexc102:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !78
  %i.q = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !94
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp sgt i64 %i.u, 4
  br i1 %i.v, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.q, i64 %i.u, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc102
  %i.w = icmp eq i64 %i.u, 4
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.q, align 4, !tbaa !77
  store i32 %i.x, ptr %i.m, align 4, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.u
  store ptr %i.y, ptr %i.n, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !355, !nonnull !100, !align !122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %36, ptr noundef nonnull align 4 dereferenceable(52) %i.ac)
          to label %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit unwind label %bb.l

_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %37, ptr noundef nonnull align 4 dereferenceable(52) %36)
          to label %bb.g unwind label %bb.ao

bb.g:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5shapeERKNS_3MatE.exit
  %i.ad = load i32, ptr %37, align 4, !tbaa !98   ; 3 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ad, i32 0) ; 3 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.ae = add nsw i64 %spec.select.i, -1          ; 2 uses
  %narrow.i104 = call i32 @llvm.smax.i32(i32 %i.ad, i32 1) ; 2 uses
  %spec.select.i105 = zext nneg i32 %narrow.i104 to i64
  %i.af = icmp ult i64 %i.ae, %spec.select.i105
  br i1 %i.af, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc106 unwind label %bb.ao

.noexc106:                                        ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.37, i32 noundef 97) #24
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc106
  unreachable

bb.j:                                             ; preds = %.noexc106
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %34, align 8, !tbaa !44   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !38
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.body151

.split:                                           ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 12 ; 10 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  store i32 1, ptr %i.an, align 4, !tbaa !77
  %i.ao = icmp sgt i32 %i.ad, 1
end_hunk_7
