Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sfmTim?download=true
inline.NumInlined: 177
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Sfm_TimPriorityNodes:bb.a
  %.not9.i.i = icmp eq ptr %i.dp, null
  br i1 %.not9.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ae:                                            ; preds = %bb.ac
  %i.dr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i

bb.af:                                            ; preds = %bb.ab
  %i.ds = icmp samesign ult i32 %i.dl, 1073741823
  %i.dt = shl nuw nsw i32 %i.dl, 1
  %spec.select.i = select i1 %i.ds, i32 %i.dt, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.dl, %spec.select.i
  %.pre72 = load ptr, ptr %i.ct, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i, label %bb.ag, label %Vec_IntPush.exit

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i = icmp eq ptr %.pre72, null
  %i.du = zext nneg i32 %spec.select.i to i64
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = tail call ptr @realloc(ptr noundef nonnull %.pre72, i64 noundef %i.dv) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  %i.dx = tail call noalias ptr @malloc(i64 noundef %i.dv) #17
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %i.dy = phi ptr [ %i.dr, %bb.ae ], [ %i.dq, %bb.ad ], [ %i.dw, %bb.ah ], [ %i.dx, %bb.ai ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i, %bb.ah ], [ %spec.select.i, %bb.ai ]
  store ptr %i.dy, ptr %i.ct, align 8, !tbaa !12
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !27
  %.pre73 = load i32, ptr %i.cq, align 4, !tbaa !26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.af, %Vec_IntGrow.exit11.sink.split.i
  %i.dz = phi i32 [ %i.dl, %.Vec_IntPush.exit_crit_edge ], [ %i.dl, %bb.af ], [ %.pre73, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ea = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre72, %bb.af ], [ %i.dy, %Vec_IntGrow.exit11.sink.split.i ]
  %i.eb = add nsw i32 %i.dz, 1
  store i32 %i.eb, ptr %i.cq, align 4, !tbaa !26
  %i.ec = sext i32 %i.dz to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ec
  store i32 %.val, ptr %i.ed, align 4, !tbaa !19
  %.val42.pre = load i32, ptr %i.cv, align 4, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %Vec_IntPush.exit, %bb.z
  %.val42 = phi i32 [ %.val4274, %bb.y ], [ %.val42.pre, %Vec_IntPush.exit ], [ %.val4274, %bb.z ] ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.ee = sext i32 %.val42 to i64
  %i.ef = icmp slt i64 %indvars.iv.next63, %i.ee
  br i1 %i.ef, label %bb.y, label %.critedge4.loopexit, !llvm.loop !89

.critedge4.loopexit:                              ; preds = %bb.aj
  %.val44.pre = load i32, ptr %i.b, align 4, !tbaa !61
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.x
  %.val44 = phi i32 [ %.val44.pre, %.critedge4.loopexit ], [ %.val4476, %bb.x ] ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.eg = sext i32 %.val44 to i64
  %i.eh = icmp slt i64 %indvars.iv.next66, %i.eg
  br i1 %i.eh, label %bb.x, label %.critedge2.loopexit, !llvm.loop !90

.critedge2.loopexit:                              ; preds = %.critedge4
  %.val41.pre = load i32, ptr %i.cq, align 4, !tbaa !26
  %i.ei = icmp sgt i32 %.val41.pre, 0
  %i.ej = zext i1 %i.ei to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.val41 = phi i32 [ %i.ej, %.critedge2.loopexit ], [ 0, %.critedge ]
  ret i32 %.val41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Sfm_TimNodeIsNonCritical(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val7 = load i32, ptr %i.b, align 8, !tbaa !16
  %i.c = shl nsw i32 %.val7, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val6, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !58
  %i.l = add nsw i32 %i.i, %i.k
  %i.m = getelementptr i8, ptr %1, i64 16
  %.val5 = load i32, ptr %i.m, align 8, !tbaa !16
  %i.n = shl nsw i32 %.val5, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val6, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = tail call noundef i32 @llvm.smax.i32(i32 %i.q, i32 %i.s)
  %i.u = icmp sle i32 %i.l, %i.t
  %i.v = zext i1 %i.u to i32
  ret i32 %i.v
}

; Function Attrs: nounwind uwtable
define noundef i32 @Sfm_TimEvalRemapping(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x [2 x i32]], align 16         ; 8 uses
  %i.b = alloca [6 x ptr], align 16               ; 6 uses
  %i.c = alloca [6 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.d = tail call i32 @Mio_GateReadPinNum(ptr noundef %3) #15 ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val33 = load ptr, ptr %i.f, align 8, !tbaa !12 ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 8
  %.val32 = load ptr, ptr %i.g, align 8, !tbaa !12 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !12 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val33, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = shl nsw i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val35, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.t, ptr %i.u, align 16, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.val33, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19
  %i.ad = shl nsw i32 %i.ac, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val35, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !91

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod73 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.epil.init
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val33, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val32, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !19
  %i.ap = shl nsw i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val35, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !19
  store i32 0, ptr %i.a, align 16, !tbaa !19
  %i.au = tail call ptr @Mio_GateReadPins(ptr noundef %3) #15 ; 2 uses
  %.not1.i = icmp eq ptr %i.au, null
  br i1 %.not1.i, label %Sfm_TimGateArrival.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %Sfm_TimEdgeArrival.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Sfm_TimEdgeArrival.exit.i ], [ 0, %._crit_edge ] ; 2 uses
  %.092.i = phi ptr [ %i.bq, %Sfm_TimEdgeArrival.exit.i ], [ %i.au, %._crit_edge ] ; 4 uses
  %i.av = phi <2 x i32> [ %i.bp, %Sfm_TimEdgeArrival.exit.i ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.ay = tail call i32 @Mio_PinReadPhase(ptr noundef nonnull %.092.i) #15 ; 2 uses
  %i.az = tail call double @Mio_PinReadDelayBlockRise(ptr noundef nonnull %.092.i) #15
  %i.ba = tail call double @Mio_PinReadDelayBlockFall(ptr noundef nonnull %.092.i) #15
  %i.bb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float>
  %i.be = fmul <2 x float> %i.bd, splat (float 1.000000e+03)
  %i.bf = fptosi <2 x float> %i.be to <2 x i32>   ; 2 uses
  %cond.i.i = icmp eq i32 %i.ay, 1
  br i1 %cond.i.i, label %.lr.ph.i.._crit_edge.i.i_crit_edge, label %bb.c

.lr.ph.i.._crit_edge.i.i_crit_edge:               ; preds = %.lr.ph.i
  %i.bg = load <2 x i32>, ptr %i.ax, align 4, !tbaa !19
  br label %._crit_edge.i.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.bh = load <2 x i32>, ptr %i.ax, align 4, !tbaa !19 ; 2 uses
  %i.bi = add nsw <2 x i32> %i.bh, %i.bf
  %i.bj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.av, <2 x i32> %i.bi) ; 2 uses
  %.not20.i.i = icmp eq i32 %i.ay, 2
  br i1 %.not20.i.i, label %Sfm_TimEdgeArrival.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.._crit_edge.i.i_crit_edge, %bb.c
  %i.bk = phi <2 x i32> [ %i.bj, %bb.c ], [ %i.av, %.lr.ph.i.._crit_edge.i.i_crit_edge ]
  %i.bl = phi <2 x i32> [ %i.bh, %bb.c ], [ %i.bg, %.lr.ph.i.._crit_edge.i.i_crit_edge ]
  %i.bm = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = add nsw <2 x i32> %i.bm, %i.bf
  %i.bo = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bk, <2 x i32> %i.bn)
  br label %Sfm_TimEdgeArrival.exit.i

Sfm_TimEdgeArrival.exit.i:                        ; preds = %._crit_edge.i.i, %bb.c
  %i.bp = phi <2 x i32> [ %i.bo, %._crit_edge.i.i ], [ %i.bj, %bb.c ] ; 4 uses
  store <2 x i32> %i.bp, ptr %i.a, align 16, !tbaa !19
  %i.bq = tail call ptr @Mio_PinReadNext(ptr noundef nonnull %.092.i) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %Sfm_TimGateArrival.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

Sfm_TimGateArrival.exit.loopexit:                 ; preds = %Sfm_TimEdgeArrival.exit.i
  %i.br = extractelement <2 x i32> %i.bp, i64 0
  %i.bs = extractelement <2 x i32> %i.bp, i64 1
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.br, i32 %i.bs)
  br label %Sfm_TimGateArrival.exit

Sfm_TimGateArrival.exit:                          ; preds = %Sfm_TimGateArrival.exit.loopexit, %._crit_edge
  %i.bu = phi i32 [ %i.bt, %Sfm_TimGateArrival.exit.loopexit ], [ 0, %._crit_edge ]
  %i.bv = icmp eq ptr %5, null
  br i1 %i.bv, label %bb.j, label %bb.d

bb.d:                                             ; preds = %Sfm_TimGateArrival.exit
  %i.bw = tail call i32 @Mio_GateReadPinNum(ptr noundef nonnull %5) #15 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %bb.d
  %i.by = getelementptr i8, ptr %1, i64 8
  %i.bz = getelementptr i8, ptr %2, i64 8
  %i.ca = getelementptr i8, ptr %0, i64 40
  %wide.trip.count61 = zext nneg i32 %i.bw to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph55, %bb.g
  %indvars.iv58 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next59, %bb.g ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv58
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !24  ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 16
  br i1 %i.cd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val31 = load ptr, ptr %i.by, align 8, !tbaa !12
  %i.ce = sext i8 %i.cc to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val31, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19
  %.val = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %.val34 = load ptr, ptr %i.ca, align 8, !tbaa !12
  %i.ck = shl nsw i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.val34, i64 %i.cl
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.cm, %bb.f ], [ %i.a, %bb.e ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv58
  store ptr %.sink, ptr %i.cn, align 8, !tbaa !20
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge56, label %bb.e, !llvm.loop !92

._crit_edge56:                                    ; preds = %bb.g, %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 6 uses
  store i32 0, ptr %i.cp, align 4, !tbaa !19
  store i32 0, ptr %i.co, align 8, !tbaa !19
  %i.cq = call ptr @Mio_GateReadPins(ptr noundef nonnull %5) #15 ; 2 uses
  %.not1.i36 = icmp eq ptr %i.cq, null
  br i1 %.not1.i36, label %Sfm_TimGateArrival.exit48, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %._crit_edge56, %Sfm_TimEdgeArrival.exit.i44
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i40, %Sfm_TimEdgeArrival.exit.i44 ], [ 0, %._crit_edge56 ] ; 2 uses
  %.092.i39 = phi ptr [ %i.dt, %Sfm_TimEdgeArrival.exit.i44 ], [ %i.cq, %._crit_edge56 ] ; 4 uses
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i38, 1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i38
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !20 ; 4 uses
  %i.ct = call i32 @Mio_PinReadPhase(ptr noundef nonnull %.092.i39) #15 ; 2 uses
  %i.cu = call double @Mio_PinReadDelayBlockRise(ptr noundef nonnull %.092.i39) #15
  %i.cv = fptrunc double %i.cu to float
  %i.cw = fmul float %i.cv, 1.000000e+03
  %i.cx = fptosi float %i.cw to i32               ; 2 uses
  %i.cy = call double @Mio_PinReadDelayBlockFall(ptr noundef nonnull %.092.i39) #15
  %i.cz = fptrunc double %i.cy to float
  %i.da = fmul float %i.cz, 1.000000e+03
  %i.db = fptosi float %i.da to i32               ; 2 uses
  %cond.i.i41 = icmp eq i32 %i.ct, 1
  %.pre.i.i42 = load i32, ptr %i.co, align 8, !tbaa !19 ; 2 uses
  br i1 %cond.i.i41, label %._crit_edge.i.i46, label %bb.h

._crit_edge.i.i46:                                ; preds = %.lr.ph.i37
  %.pre1.i.i47 = load i32, ptr %i.cp, align 4, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i37
  %i.dc = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.dd = add nsw i32 %i.dc, %i.cx
  %i.de = call noundef i32 @llvm.smax.i32(i32 %.pre.i.i42, i32 %i.dd) ; 2 uses
  store i32 %i.de, ptr %i.co, align 8, !tbaa !19
  %i.df = load i32, ptr %i.cp, align 4, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !19
  %i.di = add nsw i32 %i.dh, %i.db
  %i.dj = call noundef i32 @llvm.smax.i32(i32 %i.df, i32 %i.di) ; 2 uses
  store i32 %i.dj, ptr %i.cp, align 4, !tbaa !19
  %.not20.i.i43 = icmp eq i32 %i.ct, 2
  br i1 %.not20.i.i43, label %Sfm_TimEdgeArrival.exit.i44, label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i46
  %i.dk = phi i32 [ %.pre1.i.i47, %._crit_edge.i.i46 ], [ %i.dj, %bb.h ]
  %i.dl = phi i32 [ %.pre.i.i42, %._crit_edge.i.i46 ], [ %i.de, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !19
  %i.do = add nsw i32 %i.dn, %i.cx
  %i.dp = call noundef i32 @llvm.smax.i32(i32 %i.dl, i32 %i.do)
  store i32 %i.dp, ptr %i.co, align 8, !tbaa !19
  %i.dq = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.dr = add nsw i32 %i.dq, %i.db
  %i.ds = call noundef i32 @llvm.smax.i32(i32 %i.dk, i32 %i.dr)
  store i32 %i.ds, ptr %i.cp, align 4, !tbaa !19
  br label %Sfm_TimEdgeArrival.exit.i44

Sfm_TimEdgeArrival.exit.i44:                      ; preds = %bb.i, %bb.h
  %i.dt = call ptr @Mio_PinReadNext(ptr noundef nonnull %.092.i39) #15 ; 2 uses
  %.not.i45 = icmp eq ptr %i.dt, null
  br i1 %.not.i45, label %Sfm_TimGateArrival.exit48, label %.lr.ph.i37, !llvm.loop !0

Sfm_TimGateArrival.exit48:                        ; preds = %Sfm_TimEdgeArrival.exit.i44, %._crit_edge56
  %i.du = load i32, ptr %i.co, align 8, !tbaa !19
  %i.dv = load i32, ptr %i.cp, align 4, !tbaa !19
  %i.dw = call noundef i32 @llvm.smax.i32(i32 %i.du, i32 %i.dv)
  br label %bb.j

bb.j:                                             ; preds = %Sfm_TimGateArrival.exit, %Sfm_TimGateArrival.exit48
  %.028 = phi i32 [ %i.dw, %Sfm_TimGateArrival.exit48 ], [ %i.bu, %Sfm_TimGateArrival.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.028
}

declare i32 @Mio_GateReadPinNum(ptr noundef) local_unnamed_addr #3

declare ptr @Mio_GateReadPins(ptr noundef) local_unnamed_addr #3

declare ptr @Mio_PinReadNext(ptr noundef) local_unnamed_addr #3

declare i32 @Mio_PinReadPhase(ptr noundef) local_unnamed_addr #3

declare double @Mio_PinReadDelayBlockRise(ptr noundef) local_unnamed_addr #3

declare double @Mio_PinReadDelayBlockFall(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val6 = load i32, ptr %i.a, align 4, !tbaa !26
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val5 = load i32, ptr %i.b, align 4, !tbaa !26
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %.val6, i32 %.val5)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2}
end_hunk_0
