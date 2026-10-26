Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/cr3_parser?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6LibRaw14selectCRXFrameEsj:bb.a
  %.145.lcssa = phi i32 [ %i.x, %.critedge.split.loop.exit89 ], [ %umax, %bb.b ], [ %umax, %bb.c ] ; 2 uses
  %i.y = zext i32 %.145.lcssa to i64
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 3 uses
  %.not5159.not = icmp eq i32 %i.ab, 0
  br i1 %.not5159.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.ac = add i32 %.04265, %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.062 = phi i32 [ %i.aq, %bb.i ], [ 0, %.lr.ph.preheader ]
  %.03961 = phi i64 [ %i.ao, %bb.i ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.14360 = phi i32 [ %i.ap, %bb.i ], [ %.04265, %.lr.ph.preheader ] ; 4 uses
  %i.ad = icmp ugt i32 %.14360, %i.e
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !30  ; 2 uses
  %.not50 = icmp eq i32 %i.ae, 0
  br i1 %.not50, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.ag = zext i32 %.14360 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aj = phi i32 [ %i.ai, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ak = icmp eq i32 %.14360, %2
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.03961, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !34
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.an = zext i32 %i.aj to i64
  %i.ao = add nsw i64 %.03961, %i.an
  %i.ap = add i32 %.14360, 1
  %i.aq = add nuw i32 %.062, 1                    ; 2 uses
  %exitcond75.not = icmp eq i32 %i.aq, %i.ab
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.i, %.critedge
  %.143.lcssa = phi i32 [ %.04265, %.critedge ], [ %i.ac, %bb.i ]
  %exitcond79.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond79.not, label %.thread, label %bb.b, !llvm.loop !2

.thread:                                          ; preds = %._crit_edge, %.lr.ph, %.preheader, %bb.h, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ -1, %.preheader ], [ 0, %bb.h ], [ -1, %.lr.ph ], [ -1, %._crit_edge ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14selectCRXTrackEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 16 uses
  %i.b = alloca [16 x i32], align 16              ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384220
  %i.d = load i32, ptr %i.c, align 4, !tbaa !94
  %i.e = shl i32 %i.d, 16                         ; 2 uses
  %i.f = ashr exact i32 %i.e, 16                  ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 382168 ; 6 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %i.f, i32 15)
  %i.i = add nuw nsw i32 %umin, 1                 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.e, 0
  br i1 %i.j, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 3 uses
  %.0156269.epil.init = phi i64 [ 0, %bb.b ], [ %.1157.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod456 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod456)
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv.epil.init ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !95
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !130
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !132
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.u, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  %..0156.epil = tail call i64 @llvm.smax.i64(i64 %i.y, i64 %.0156269.epil.init) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 1
  br i1 %i.ac, label %bb.d, label %.epilog-lcssa

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !32
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.c, %bb.d, %.unr-lcssa
  %.1157.lcssa = phi i64 [ %.1157.1, %.unr-lcssa ], [ %..0156.epil, %bb.d ], [ %..0156.epil, %bb.c ], [ %.0156269.epil.init, %.epil.preheader ] ; 8 uses
  %i.ae = icmp slt i64 %.1157.lcssa, 8
  br i1 %i.ae, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epilog-lcssa
  %min.iters.check = icmp ult i32 %i.f, 7
  br i1 %min.iters.check, label %.lr.ph.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.1157.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %wide.load = load <4 x i64>, ptr %i.a, align 16, !tbaa !25
  %wide.load427 = load <4 x i64>, ptr %i.af, align 16, !tbaa !25
  %i.ag = icmp eq <4 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.ah = icmp eq <4 x i64> %wide.load427, %broadcast.splat ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load428 = load <4 x i32>, ptr %i.b, align 16, !tbaa !32 ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !32 ; 2 uses
  %i.aj = icmp sgt <4 x i32> %wide.load428, splat (i32 1)
  %i.ak = icmp sgt <4 x i32> %wide.load429, splat (i32 1)
  %i.al = select <4 x i1> %i.ag, <4 x i1> %i.aj, <4 x i1> zeroinitializer
  %i.am = select <4 x i1> %i.ah, <4 x i1> %i.ak, <4 x i1> zeroinitializer
  %i.an = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load428, <4 x i32> zeroinitializer)
  %i.ao = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load429, <4 x i32> zeroinitializer)
  %predphi = select <4 x i1> %i.al, <4 x i32> %i.an, <4 x i32> zeroinitializer ; 3 uses
  %predphi430 = select <4 x i1> %i.am, <4 x i32> %i.ao, <4 x i32> zeroinitializer ; 3 uses
  %i.ap = zext <4 x i1> %i.ag to <4 x i32>        ; 2 uses
  %i.aq = zext <4 x i1> %i.ah to <4 x i32>        ; 2 uses
  %i.ar = icmp eq i64 %n.vec, 8
  br i1 %i.ar, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %wide.load.1 = load <4 x i64>, ptr %i.as, align 16, !tbaa !25
  %wide.load427.1 = load <4 x i64>, ptr %i.at, align 16, !tbaa !25
  %i.au = icmp eq <4 x i64> %wide.load.1, %broadcast.splat ; 2 uses
  %i.av = icmp eq <4 x i64> %wide.load427.1, %broadcast.splat ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %wide.load428.1 = load <4 x i32>, ptr %i.aw, align 16, !tbaa !32 ; 2 uses
  %wide.load429.1 = load <4 x i32>, ptr %i.ax, align 16, !tbaa !32 ; 2 uses
  %i.ay = icmp sgt <4 x i32> %wide.load428.1, splat (i32 1)
  %i.az = icmp sgt <4 x i32> %wide.load429.1, splat (i32 1)
  %i.ba = select <4 x i1> %i.au, <4 x i1> %i.ay, <4 x i1> zeroinitializer
  %i.bb = select <4 x i1> %i.av, <4 x i1> %i.az, <4 x i1> zeroinitializer
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi, <4 x i32> %wide.load428.1)
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi430, <4 x i32> %wide.load429.1)
  %predphi.1 = select <4 x i1> %i.ba, <4 x i32> %i.bc, <4 x i32> %predphi
  %predphi430.1 = select <4 x i1> %i.bb, <4 x i32> %i.bd, <4 x i32> %predphi430
  %i.be = zext <4 x i1> %i.au to <4 x i32>
  %predphi431.1 = add nuw nsw <4 x i32> %i.ap, %i.be
  %i.bf = zext <4 x i1> %i.av to <4 x i32>
  %predphi432.1 = add nuw nsw <4 x i32> %i.aq, %i.bf
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %predphi.lcssa = phi <4 x i32> [ %predphi, %vector.ph ], [ %predphi.1, %vector.body.1 ]
  %predphi430.lcssa = phi <4 x i32> [ %predphi430, %vector.ph ], [ %predphi430.1, %vector.body.1 ]
  %predphi431.lcssa = phi <4 x i32> [ %i.ap, %vector.ph ], [ %predphi431.1, %vector.body.1 ]
  %predphi432.lcssa = phi <4 x i32> [ %i.aq, %vector.ph ], [ %predphi432.1, %vector.body.1 ]
  %bin.rdx = add nsw <4 x i32> %predphi432.lcssa, %predphi431.lcssa
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi.lcssa, <4 x i32> %predphi430.lcssa)
  %i.bh = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader451

.lr.ph.preheader451:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv321.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0150272.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  %.0152271.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.k, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.k ] ; 5 uses
  %.0156269 = phi i64 [ 0, %.new ], [ %.1157.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.k ]
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !95
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !130
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !131
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.br, %i.bo
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !132
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %i.bs, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.bw, ptr %i.bx, align 16, !tbaa !25
  %..0156 = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 %.0156269) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 92
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20 ; 2 uses
  %i.ca = icmp ugt i32 %i.bz, 1
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.bz, ptr %i.cb, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1157 = phi i64 [ %..0156, %bb.g ], [ %..0156, %bb.f ], [ %.0156269, %bb.e ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.h, i64 %indvars.iv.next ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !95
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !130
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !131
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !132
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cm, %i.cp                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !25
  %..0156.1 = tail call i64 @llvm.smax.i64(i64 %i.cq, i64 %.1157) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 92
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !20 ; 2 uses
  %i.cu = icmp ugt i32 %i.ct, 1
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1157.1 = phi i64 [ %..0156.1, %bb.j ], [ %..0156.1, %bb.i ], [ %.1157, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.n, %middle.block
  %.1153.lcssa = phi i32 [ %i.bh, %middle.block ], [ %.1153, %bb.n ]
  %.1151.lcssa = phi i32 [ %i.bg, %middle.block ], [ %.1151, %bb.n ] ; 2 uses
  %i.cw = icmp ne i32 %.1153.lcssa, 0             ; 3 uses
  %i.cx = icmp sgt i32 %.1151.lcssa, 1
  %or.cond = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %or.cond, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread, label %.lr.ph279.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader451, %bb.n
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.n ], [ %indvars.iv321.ph, %.lr.ph.preheader451 ] ; 3 uses
  %.0150272 = phi i32 [ %.1151, %bb.n ], [ %.0150272.ph, %.lr.ph.preheader451 ] ; 2 uses
  %.0152271 = phi i32 [ %.1153, %bb.n ], [ %.0152271.ph, %.lr.ph.preheader451 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv321
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.da = icmp eq i64 %i.cz, %.1157.lcssa
  br i1 %i.da, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.db = add nsw i32 %.0150272, 1                ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv321
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.0152. = tail call i32 @llvm.smax.i32(i32 %.0152271, i32 %i.dd)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m, %bb.l
  %.1153 = phi i32 [ %.0152., %bb.m ], [ %.0152271, %bb.l ], [ %.0152271, %.lr.ph ] ; 2 uses
  %.1151 = phi i32 [ %i.db, %bb.m ], [ %i.db, %bb.l ], [ %.0150272, %.lr.ph ] ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count
  br i1 %exitcond325.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

.lr.ph279.preheader:                              ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !135 ; 2 uses
  %. = select i1 %i.cw, i32 0, i32 %i.dg          ; 5 uses
  %.391 = select i1 %i.cw, i32 %i.dg, i32 0
  %xtraiter457 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.dh = icmp ult i32 %i.f, 3
  br i1 %i.dh, label %.lr.ph279.epil.preheader, label %.lr.ph279.preheader.new

.lr.ph279.preheader.new:                          ; preds = %.lr.ph279.preheader
  %unroll_iter461 = and i64 %wide.trip.count, 28
  br label %.lr.ph279

._crit_edge280.unr-lcssa:                         ; preds = %.lr.ph279
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %._crit_edge280, label %.lr.ph279.epil.preheader

.lr.ph279.epil.preheader:                         ; preds = %._crit_edge280.unr-lcssa, %.lr.ph279.preheader
  %indvars.iv326.epil.init = phi i64 [ 0, %.lr.ph279.preheader ], [ %indvars.iv.next327.3, %._crit_edge280.unr-lcssa ]
  %.0141277.epil.init = phi i32 [ 0, %.lr.ph279.preheader ], [ %.1142.3, %._crit_edge280.unr-lcssa ]
  %.0144275.epil.init = phi i32 [ -1, %.lr.ph279.preheader ], [ %.2.3, %._crit_edge280.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter457, 0
  tail call void @llvm.assume(i1 %lcmp.mod460)
  br label %.lr.ph279.epil

.lr.ph279.epil:                                   ; preds = %.lr.ph279.epil, %.lr.ph279.epil.preheader
  %indvars.iv326.epil = phi i64 [ %indvars.iv326.epil.init, %.lr.ph279.epil.preheader ], [ %indvars.iv.next327.epil, %.lr.ph279.epil ] ; 3 uses
  %.0141277.epil = phi i32 [ %.0141277.epil.init, %.lr.ph279.epil.preheader ], [ %.1142.epil, %.lr.ph279.epil ] ; 2 uses
  %.0144275.epil = phi i32 [ %.0144275.epil.init, %.lr.ph279.epil.preheader ], [ %.2.epil, %.lr.ph279.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph279.epil.preheader ], [ %epil.iter.next, %.lr.ph279.epil ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv326.epil
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !25
  %i.dk = icmp eq i64 %i.dj, %.1157.lcssa         ; 2 uses
  %.not181.epil = icmp sle i32 %.0141277.epil, %.
  %i.dl = select i1 %i.dk, i1 %.not181.epil, i1 false
  %i.dm = trunc nuw nsw i64 %indvars.iv326.epil to i32
  %.2.epil = select i1 %i.dl, i32 %i.dm, i32 %.0144275.epil ; 2 uses
  %i.dn = zext i1 %i.dk to i32
  %.1142.epil = add nuw nsw i32 %.0141277.epil, %i.dn
  %indvars.iv.next327.epil = add nuw nsw i64 %indvars.iv326.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter457
  br i1 %epil.iter.cmp.not, label %._crit_edge280, label %.lr.ph279.epil, !llvm.loop !125

._crit_edge280:                                   ; preds = %.lr.ph279.epil, %._crit_edge280.unr-lcssa
  %.2.lcssa = phi i32 [ %.2.3, %._crit_edge280.unr-lcssa ], [ %.2.epil, %.lr.ph279.epil ] ; 3 uses
  %or.cond3 = icmp ult i32 %.2.lcssa, 16
  br i1 %or.cond3, label %bb.o, label %_ZN6LibRaw14selectCRXFrameEsj.exit.thread

.lr.ph279:                                        ; preds = %.lr.ph279, %.lr.ph279.preheader.new
  %indvars.iv326 = phi i64 [ 0, %.lr.ph279.preheader.new ], [ %indvars.iv.next327.3, %.lr.ph279 ] ; 6 uses
  %.0141277 = phi i32 [ 0, %.lr.ph279.preheader.new ], [ %.1142.3, %.lr.ph279 ] ; 2 uses
  %.0144275 = phi i32 [ -1, %.lr.ph279.preheader.new ], [ %.2.3, %.lr.ph279 ]
  %niter462 = phi i64 [ 0, %.lr.ph279.preheader.new ], [ %niter462.next.3, %.lr.ph279 ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv326
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !25
  %i.dq = icmp eq i64 %i.dp, %.1157.lcssa         ; 2 uses
  %.not181 = icmp sle i32 %.0141277, %.
  %i.dr = select i1 %i.dq, i1 %.not181, i1 false
  %i.ds = trunc nuw nsw i64 %indvars.iv326 to i32
  %.2 = select i1 %i.dr, i32 %i.ds, i32 %.0144275
  %i.dt = zext i1 %i.dq to i32
  %.1142 = add nuw nsw i32 %.0141277, %i.dt       ; 2 uses
  %indvars.iv.next327 = or disjoint i64 %indvars.iv326, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next327
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !25
  %i.dw = icmp eq i64 %i.dv, %.1157.lcssa         ; 2 uses
  %.not181.1 = icmp sle i32 %.1142, %.
  %i.dx = select i1 %i.dw, i1 %.not181.1, i1 false
  %i.dy = trunc nuw nsw i64 %indvars.iv.next327 to i32
  %.2.1 = select i1 %i.dx, i32 %i.dy, i32 %.2
  %i.dz = zext i1 %i.dw to i32
  %.1142.1 = add nuw nsw i32 %.1142, %i.dz        ; 2 uses
  %indvars.iv.next327.1 = or disjoint i64 %indvars.iv326, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next327.1
  %i.eb = load i64, ptr %i.ea, align 16, !tbaa !25
  %i.ec = icmp eq i64 %i.eb, %.1157.lcssa         ; 2 uses
  %.not181.2 = icmp sle i32 %.1142.1, %.
  %i.ed = select i1 %i.ec, i1 %.not181.2, i1 false
end_hunk_0
begin_hunk_1_@_ZN6LibRaw8parseCR3EyyRsPcS0_S0_y:bb.a
  %i.zc = getelementptr i8, ptr %i.g, i64 4
  %i.zd = load i8, ptr %i.zc, align 1
  %i.ze = zext i8 %i.zd to i32
  %i.zf = or i32 %i.zb, %i.ze
  %i.zg = icmp ne i32 %i.zf, 0
  %i.zh = zext i1 %i.zg to i32
  %.not403 = icmp eq i32 %i.zh, 0
  br i1 %.not403, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yr, i64 72
  store i32 3, ptr %i.zi, align 8, !tbaa !95
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dg, %bb.dh, %bb.di, %bb.df, %bb.de, %bb.dd, %.thread467
  %i.zj = icmp eq i16 %.2, 1
  br i1 %i.zj, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.zk = add i64 %.2314, %.2294444
  %i.zl = sub i64 %.2300443, %.2314
  %i.zm = call noundef i32 @_ZN6LibRaw8parseCR3EyyRsPcS0_S0_y(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.zk, i64 noundef %i.zl, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(2) %6, i64 noundef %7) ; 2 uses
  %.not404 = icmp eq i32 %i.zm, 0
  br i1 %.not404, label %bb.dl, label %.thread486.loopexit

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %.13 = phi i32 [ 0, %bb.dk ], [ %.1282, %bb.dj ]
  %i.zn = add i64 %.0289445, %.0287517            ; 2 uses
  %i.zo = add i64 %i.zn, 8                        ; 3 uses
  %i.zp = icmp ule i64 %i.zo, %i.s
  %i.zq = icmp ult i64 %i.zo, %7
  %i.zr = and i1 %i.zp, %i.zq
  br i1 %i.zr, label %bb.c, label %.thread486.loopexit

.thread486.loopexit:                              ; preds = %bb.i, %bb.i, %bb.dc, %bb.db, %bb.ct, %bb.cs, %bb.br, %bb.bt, %bb.bu, %bb.bs, %bb.bj, %bb.bl, %bb.bm, %bb.bk, %bb.bb, %bb.bd, %bb.be, %bb.bc, %bb.al, %bb.an, %bb.ao, %bb.am, %bb.cy, %bb.cz, %bb.k, %bb.dk, %bb.m, %bb.q, %bb.af, %bb.bz, %bb.p, %bb.ch, %bb.cc, %bb.o, %bb.dl
  %.15.ph = phi i32 [ %.13, %bb.dl ], [ -11, %bb.dc ], [ -9, %bb.ct ], [ -6, %bb.br ], [ -6, %bb.bt ], [ -6, %bb.bu ], [ -6, %bb.bj ], [ -6, %bb.bl ], [ -6, %bb.bm ], [ -5, %bb.bb ], [ -5, %bb.bd ], [ -5, %bb.be ], [ -4, %bb.al ], [ -4, %bb.an ], [ -4, %bb.ao ], [ -8, %bb.cc ], [ -7, %bb.ch ], [ -11, %bb.db ], [ -3, %bb.p ], [ -9, %bb.cs ], [ -7, %bb.bz ], [ %.1282, %bb.af ], [ -3, %bb.q ], [ -6, %bb.bs ], [ -6, %bb.bk ], [ -5, %bb.bc ], [ -3, %bb.o ], [ -2, %bb.m ], [ %i.zm, %bb.dk ], [ 0, %bb.k ], [ 0, %bb.i ], [ -10, %bb.cz ], [ -10, %bb.cy ], [ -4, %bb.am ], [ 0, %bb.i ]
  %.pre = load i16, ptr %3, align 2, !tbaa !165
  %i.zs = add i16 %.pre, -1
  br label %.thread486

.thread486:                                       ; preds = %.thread486.loopexit, %bb.b
  %i.zt = phi i16 [ %i.l, %bb.b ], [ %i.zs, %.thread486.loopexit ] ; 3 uses
  %.15 = phi i32 [ 0, %bb.b ], [ %.15.ph, %.thread486.loopexit ]
  store i16 %i.zt, ptr %3, align 2, !tbaa !165
  %i.zu = icmp sgt i16 %i.zt, -1
  br i1 %i.zu, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.thread486
  %i.zv = zext nneg i16 %i.zt to i64
  %i.zw = shl nuw nsw i64 %i.zv, 2
  %i.zx = getelementptr inbounds nuw i8, ptr %4, i64 %i.zw
  store i8 0, ptr %i.zx, align 1, !tbaa !164
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread486
  store i16 %i.q, ptr %i.p, align 8, !tbaa !105
  br label %bb.do

bb.do:                                            ; preds = %bb.a, %bb.dn
  %.1 = phi i32 [ %.15, %bb.dn ], [ -14, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6LibRaw14parse_tiff_ifdEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw10parse_exifEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw9parse_gpsEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

declare void @_ZN6LibRaw16parse_gps_librawEx(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN6LibRaw19crxParseImageHeaderEPhix(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13parseCR3_FreeEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384220 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !94
  %i.c = shl i32 %i.b, 16
  %i.d = ashr exact i32 %i.c, 16                  ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 382168
  %umin = tail call i32 @llvm.umin.i32(i32 %i.d, i32 15)
  %i.g = add nuw nsw i32 %umin, 1
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  store i32 -1, ptr %i.a, align 4, !tbaa !94
  br label %bb.j

bb.c:                                             ; preds = %.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %indvars.iv ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.j)
  store ptr null, ptr %i.i, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.l)
  store ptr null, ptr %i.k, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %.not24 = icmp eq ptr %i.n, null
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.n)
  store ptr null, ptr %i.m, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i32 0, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  store i32 0, ptr %i.p, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.r, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !183

bb.j:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !109, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long long", !11, i64 0}
!16 = !{!"any pointer", !11, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"p1 long long", !16, i64 0}
!19 = !{!"_ZTS17crx_data_header_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !15, i64 64, !12, i64 72, !16, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !17, i64 104, !12, i64 112, !18, i64 120}
!20 = !{!19, !12, i64 92}
!21 = !{!19, !12, i64 112}
!22 = !{!19, !18, i64 120}
!23 = !{!19, !12, i64 88}
!24 = !{!19, !16, i64 80}
!25 = !{!15, !15, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"_ZTS21crx_sample_to_chunk_t", !12, i64 0, !12, i64 4, !12, i64 8}
!28 = !{!27, !12, i64 0}
!29 = !{!27, !12, i64 4}
!30 = !{!19, !12, i64 96}
!31 = !{!19, !17, i64 104}
!32 = !{!12, !12, i64 0}
!33 = !{!19, !15, i64 64}
!34 = !{!19, !12, i64 56}
!35 = !{!"p1 short", !16, i64 0}
!36 = !{!"short", !11, i64 0}
!37 = !{!"double", !11, i64 0}
!38 = !{!"_ZTS20libraw_image_sizes_t", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !36, i64 12, !36, i64 14, !12, i64 16, !37, i64 24, !12, i64 32, !11, i64 36, !36, i64 164, !11, i64 166}
!39 = !{!"p1 omnipotent char", !16, i64 0}
!40 = !{!"_ZTS16libraw_iparams_t", !11, i64 0, !11, i64 4, !11, i64 68, !11, i64 132, !11, i64 196, !11, i64 260, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !11, i64 348, !11, i64 384, !11, i64 420, !12, i64 428, !39, i64 432}
!41 = !{!"float", !11, i64 0}
!42 = !{!"_ZTS18libraw_nikonlens_t", !41, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7}
!43 = !{!"_ZTS16libraw_dnglens_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!44 = !{!"_ZTS24libraw_makernotes_lens_t", !15, i64 0, !11, i64 8, !36, i64 136, !36, i64 138, !15, i64 144, !36, i64 152, !36, i64 154, !11, i64 156, !36, i64 220, !11, i64 222, !11, i64 238, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !15, i64 320, !11, i64 328, !15, i64 456, !11, i64 464, !15, i64 592, !11, i64 600, !36, i64 728, !41, i64 732}
!45 = !{!"_ZTS17libraw_lensinfo_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !11, i64 20, !11, i64 148, !11, i64 276, !11, i64 404, !36, i64 532, !42, i64 536, !43, i64 544, !44, i64 560}
!46 = !{!"_ZTS13libraw_area_t", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6}
!47 = !{!"_ZTS25libraw_canon_makernotes_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !12, i64 32, !11, i64 36, !36, i64 52, !36, i64 54, !11, i64 56, !36, i64 58, !36, i64 60, !36, i64 62, !36, i64 64, !36, i64 66, !36, i64 68, !36, i64 70, !36, i64 72, !36, i64 74, !36, i64 76, !36, i64 78, !36, i64 80, !36, i64 82, !12, i64 84, !41, i64 88, !36, i64 92, !36, i64 94, !36, i64 96, !36, i64 98, !12, i64 100, !36, i64 104, !12, i64 108, !12, i64 112, !36, i64 116, !12, i64 120, !46, i64 124, !46, i64 132, !46, i64 140, !46, i64 148, !46, i64 156, !11, i64 164}
!48 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6}
!49 = !{!"_ZTS25libraw_nikon_makernotes_t", !37, i64 0, !36, i64 8, !36, i64 10, !11, i64 12, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 34, !11, i64 54, !11, i64 58, !11, i64 62, !11, i64 66, !11, i64 67, !11, i64 68, !11, i64 69, !11, i64 70, !11, i64 71, !11, i64 73, !11, i64 74, !11, i64 75, !11, i64 76, !11, i64 77, !11, i64 78, !11, i64 82, !11, i64 86, !36, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !11, i64 112, !11, i64 144, !11, i64 145, !11, i64 146, !12, i64 148, !12, i64 152, !12, i64 156, !11, i64 160, !11, i64 162, !36, i64 170, !48, i64 172, !36, i64 180, !36, i64 182, !36, i64 184, !12, i64 188, !11, i64 192, !11, i64 212, !12, i64 232, !11, i64 236, !12, i64 248, !39, i64 256, !36, i64 264, !36, i64 266, !11, i64 268, !36, i64 270, !37, i64 272, !37, i64 280, !37, i64 288}
!50 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !12, i64 0, !37, i64 8, !11, i64 16, !11, i64 24, !11, i64 88, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !11, i64 168, !11, i64 200, !12, i64 264, !11, i64 268, !11, i64 276, !11, i64 288}
!51 = !{!"_ZTS18libraw_fuji_info_t", !41, i64 0, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !36, i64 12, !36, i64 14, !36, i64 16, !36, i64 18, !11, i64 20, !11, i64 53, !41, i64 88, !36, i64 92, !36, i64 94, !11, i64 96, !36, i64 100, !12, i64 104, !12, i64 108, !36, i64 112, !11, i64 114, !36, i64 120, !36, i64 122, !36, i64 124, !36, i64 126, !36, i64 128, !12, i64 132, !36, i64 136, !11, i64 138, !11, i64 151, !11, i64 156, !12, i64 164, !36, i64 168, !12, i64 172, !36, i64 176, !11, i64 178, !11, i64 196, !12, i64 324, !12, i64 328, !12, i64 332, !11, i64 336, !12, i64 344}
!52 = !{!"_ZTS27libraw_olympus_makernotes_t", !11, i64 0, !36, i64 6, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 72, !36, i64 82, !11, i64 84, !36, i64 88, !36, i64 90, !11, i64 92, !11, i64 352, !36, i64 392, !11, i64 394, !11, i64 396, !11, i64 404, !36, i64 416, !36, i64 418, !36, i64 420, !36, i64 422, !37, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !12, i64 452, !36, i64 456, !36, i64 458}
!53 = !{!"_ZTS18libraw_sony_info_t", !36, i64 0, !11, i64 2, !11, i64 3, !12, i64 4, !11, i64 8, !12, i64 12, !11, i64 16, !11, i64 17, !36, i64 18, !11, i64 20, !11, i64 24, !11, i64 25, !36, i64 26, !11, i64 28, !11, i64 38, !11, i64 39, !11, i64 40, !36, i64 48, !11, i64 50, !11, i64 51, !11, i64 52, !36, i64 54, !12, i64 56, !36, i64 60, !11, i64 62, !36, i64 66, !36, i64 68, !36, i64 70, !36, i64 72, !36, i64 74, !36, i64 76, !36, i64 78, !12, i64 80, !41, i64 84, !36, i64 88, !12, i64 92, !12, i64 96, !36, i64 100, !11, i64 102, !12, i64 124, !36, i64 128, !12, i64 132, !11, i64 136, !11, i64 137, !36, i64 138, !36, i64 140, !36, i64 142, !36, i64 144, !36, i64 146, !36, i64 148, !36, i64 150, !36, i64 152, !36, i64 154, !12, i64 156, !36, i64 160, !11, i64 162, !41, i64 180}
!54 = !{!"_ZTS25libraw_kodak_makernotes_t", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !11, i64 12, !11, i64 48, !11, i64 84, !11, i64 120, !11, i64 156, !11, i64 192, !36, i64 228, !36, i64 230, !36, i64 232, !36, i64 234, !41, i64 236, !41, i64 240}
!55 = !{!"_ZTS29libraw_panasonic_makernotes_t", !36, i64 0, !36, i64 2, !11, i64 4, !12, i64 36, !41, i64 40, !11, i64 44, !36, i64 56, !36, i64 58, !12, i64 60, !12, i64 64}
!56 = !{!"_ZTS26libraw_pentax_makernotes_t", !11, i64 0, !11, i64 4, !11, i64 8, !36, i64 12, !12, i64 16, !12, i64 20, !36, i64 24, !11, i64 26, !36, i64 30, !11, i64 32, !11, i64 33, !36, i64 34}
!57 = !{!"_ZTS22libraw_p1_makernotes_t", !11, i64 0, !11, i64 64, !11, i64 128, !11, i64 384}
!58 = !{!"_ZTS25libraw_ricoh_makernotes_t", !36, i64 0, !11, i64 4, !11, i64 12, !36, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !36, i64 40, !36, i64 42, !36, i64 44, !36, i64 46, !36, i64 48, !36, i64 50, !37, i64 56, !37, i64 64}
!59 = !{!"_ZTS27libraw_samsung_makernotes_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 40, !37, i64 88, !12, i64 96, !11, i64 100}
!60 = !{!"_ZTS24libraw_metadata_common_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64, !11, i64 66, !41, i64 196, !11, i64 200, !12, i64 296}
!61 = !{!"_ZTS19libraw_makernotes_t", !47, i64 0, !49, i64 168, !50, i64 464, !51, i64 848, !52, i64 1200, !53, i64 1664, !54, i64 1848, !55, i64 2092, !56, i64 2160, !57, i64 2196, !58, i64 2648, !59, i64 2720, !60, i64 2856}
!62 = !{!"_ZTS21libraw_shootinginfo_t", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !36, i64 12, !11, i64 14, !11, i64 78}
!63 = !{!"_ZTS22libraw_output_params_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 64, !11, i64 112, !41, i64 128, !41, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !12, i64 240, !12, i64 244, !41, i64 248, !41, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !41, i64 288, !41, i64 292, !12, i64 296, !12, i64 300}
!64 = !{!"any p2 pointer", !16, i64 0}
!65 = !{!"p2 omnipotent char", !64, i64 0}
!66 = !{!"_ZTS26libraw_raw_unpack_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !41, i64 28, !11, i64 32, !65, i64 40}
!67 = !{!"_ZTS5ph1_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !41, i64 32}
!68 = !{!"_ZTS19libraw_dng_levels_t", !12, i64 0, !11, i64 4, !12, i64 16420, !11, i64 16424, !41, i64 32840, !11, i64 32844, !11, i64 32860, !11, i64 32868, !12, i64 32884, !11, i64 32888, !11, i64 32904, !41, i64 32920, !41, i64 32924, !11, i64 32928}
!69 = !{!"_ZTS18libraw_colordata_t", !11, i64 0, !11, i64 131072, !12, i64 147488, !12, i64 147492, !12, i64 147496, !11, i64 147500, !41, i64 147516, !41, i64 147520, !11, i64 147524, !11, i64 147652, !11, i64 147668, !11, i64 147684, !11, i64 147732, !11, i64 147780, !11, i64 147828, !67, i64 147876, !41, i64 147912, !41, i64 147916, !11, i64 147920, !11, i64 147984, !11, i64 148048, !11, i64 148112, !11, i64 148176, !11, i64 148193, !16, i64 148264, !12, i64 148272, !11, i64 148276, !11, i64 148308, !68, i64 148648, !11, i64 181624, !11, i64 185720, !12, i64 187000, !11, i64 187004, !12, i64 187076, !12, i64 187080}
!70 = !{!"long", !11, i64 0}
!71 = !{!"_ZTS17libraw_gps_info_t", !11, i64 0, !11, i64 12, !11, i64 24, !41, i64 36, !11, i64 40, !11, i64 41, !11, i64 42, !11, i64 43, !11, i64 44}
!72 = !{!"_ZTS17libraw_imgother_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !70, i64 16, !12, i64 24, !11, i64 28, !71, i64 156, !11, i64 204, !11, i64 716, !11, i64 780}
!73 = !{!"_ZTS24LibRaw_thumbnail_formats", !11, i64 0}
!74 = !{!"_ZTS18libraw_thumbnail_t", !73, i64 0, !36, i64 4, !36, i64 6, !12, i64 8, !12, i64 12, !39, i64 16}
!75 = !{!"_ZTS23libraw_thumbnail_list_t", !12, i64 0, !11, i64 8}
!76 = !{!"p1 float", !16, i64 0}
!77 = !{!"_ZTS31libraw_internal_output_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !36, i64 12, !36, i64 14}
!78 = !{!"_ZTS16libraw_rawdata_t", !16, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !76, i64 32, !76, i64 40, !76, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !38, i64 512, !77, i64 696, !69, i64 712}
!79 = !{!"_ZTS13libraw_data_t", !35, i64 0, !38, i64 8, !40, i64 192, !45, i64 632, !61, i64 1928, !62, i64 5088, !63, i64 5232, !66, i64 5536, !12, i64 5584, !12, i64 5588, !69, i64 5592, !72, i64 192680, !74, i64 193480, !75, i64 193504, !78, i64 193768, !16, i64 381568}
!80 = !{!"p1 _ZTS10LibRaw_TLS", !16, i64 0}
!81 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !16, i64 0}
!82 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!83 = !{!"_ZTS15internal_data_t", !81, i64 0, !82, i64 8, !12, i64 16, !39, i64 24, !15, i64 32, !15, i64 40, !11, i64 48}
!84 = !{!"_ZTS13output_data_t", !17, i64 0, !17, i64 8}
!85 = !{!"_ZTS15identify_data_t", !12, i64 0, !15, i64 8, !15, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!86 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !11, i64 0}
!87 = !{!"_ZTS12pana8_tags_t", !11, i64 0, !11, i64 24, !36, i64 36, !11, i64 38, !11, i64 46, !11, i64 80, !11, i64 114, !36, i64 148, !36, i64 150, !11, i64 152, !11, i64 192, !11, i64 204, !11, i64 224, !11, i64 234}
!88 = !{!"_ZTS15unpacker_data_t", !36, i64 0, !11, i64 2, !11, i64 10, !12, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !86, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !15, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !87, i64 192, !11, i64 440, !12, i64 2488, !12, i64 2492, !36, i64 2496, !36, i64 2498, !12, i64 2500, !12, i64 2504, !12, i64 2508, !12, i64 2512, !12, i64 2516, !12, i64 2520, !12, i64 2524, !11, i64 2528, !36, i64 2608}
!89 = !{!"_ZTS22libraw_internal_data_t", !83, i64 0, !77, i64 64, !84, i64 80, !85, i64 96, !88, i64 136}
!90 = !{!"p1 _ZTS6decode", !16, i64 0}
!91 = !{!"_ZTS13libraw_memmgr", !64, i64 0, !12, i64 8}
!92 = !{!"_ZTS18libraw_callbacks_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144}
!93 = !{!"_ZTS6LibRaw", !79, i64 8, !80, i64 381584, !89, i64 381592, !11, i64 384344, !90, i64 433496, !90, i64 433504, !11, i64 433512, !91, i64 768232, !92, i64 768248, !11, i64 768400, !11, i64 768416, !11, i64 768432, !16, i64 768448, !16, i64 768456, !16, i64 768464, !70, i64 768472, !16, i64 768480, !16, i64 768488, !16, i64 768496, !16, i64 768504}
!94 = !{!93, !12, i64 384220}
!95 = !{!19, !12, i64 72}
!96 = !{!93, !15, i64 381632}
!97 = !{!93, !12, i64 193496}
!98 = !{!93, !12, i64 193512}
!99 = !{!"_ZTS23libraw_thumbnail_item_t", !86, i64 0, !36, i64 4, !36, i64 6, !36, i64 8, !12, i64 12, !12, i64 16, !15, i64 24}
!100 = !{!99, !15, i64 24}
!101 = !{!99, !86, i64 0}
!102 = !{!99, !12, i64 12}
!103 = !{!99, !36, i64 8}
!104 = !{!99, !12, i64 16}
!105 = !{!93, !36, i64 381728}
!106 = !{!93, !81, i64 381592}
!107 = !{!"vtable pointer", !10, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!110 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!111 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !110, line: 109, baseType: !111)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!114 = !{!112, !113}
!115 = !DISubroutineType(types: !114)
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !{!116, !113, !112, !116}
!118 = !DISubroutineType(types: !117)
!119 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !3, file: !109, line: 102, type: !118, scopeLine: 102, containingType: !3, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!120 = !{!93, !16, i64 768280}
!121 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !3, file: !109, line: 103, type: !115, scopeLine: 103, containingType: !3, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!122 = !{!93, !16, i64 768296}
!123 = distinct !{!123, !26}
!124 = distinct !{!124, !26, !133, !134}
!125 = distinct !{!125, !136}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !136}
!129 = distinct !{!129, !26}
!130 = !{!19, !12, i64 20}
!131 = !{!19, !12, i64 4}
!132 = !{!19, !12, i64 8}
!133 = !{!"llvm.loop.unroll.runtime.disable"}
!134 = !{!"llvm.loop.isvectorized", i32 1}
!135 = !{!93, !12, i64 5556}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = !{!93, !12, i64 528}
!138 = !{!93, !15, i64 381760}
!139 = !{!93, !15, i64 381800}
!140 = !{!93, !36, i64 18}
!141 = !{!93, !36, i64 16}
!142 = !{!93, !11, i64 768416}
!143 = !{!19, !12, i64 32}
!144 = !{!93, !12, i64 381836}
!145 = !{!19, !12, i64 28}
!146 = !{!99, !36, i64 4}
!147 = !{!99, !36, i64 6}
!148 = !{!93, !12, i64 544}
!149 = !{!93, !12, i64 384216}
!150 = !{!93, !12, i64 381712}
!151 = !{!"_ZTS10tiff_ifd_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !15, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !18, i64 72, !12, i64 80, !18, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !41, i64 124, !15, i64 128, !15, i64 136, !12, i64 144, !11, i64 148, !68, i64 488, !12, i64 33464}
!152 = !{!151, !12, i64 4}
!153 = !{!151, !12, i64 20}
!154 = !{!93, !12, i64 48}
!155 = !{!41, !41, i64 0}
!156 = distinct !{!156, !26}
!157 = distinct !{!157, !26}
!158 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !3, file: !109, line: 104, type: !115, scopeLine: 104, containingType: !3, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!159 = !{!93, !36, i64 384224}
!160 = distinct !{!160, !26}
!161 = distinct !{!161, !26}
!162 = distinct !{!162, !26}
!163 = distinct !{!163, !26}
!164 = !{!11, !11, i64 0}
!165 = !{!36, !36, i64 0}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!168 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 18, baseType: !168)
!170 = !{!116, !113, !166, !169, !169}
!171 = !DISubroutineType(types: !170)
!172 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !3, file: !109, line: 101, type: !171, scopeLine: 101, containingType: !3, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!173 = !{!116, !113}
!174 = !DISubroutineType(types: !173)
!175 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !3, file: !109, line: 105, type: !174, scopeLine: 105, containingType: !3, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!176 = !{!"_ZTSZN6LibRaw8parseCR3EyyRsPcS0_S0_yE3$_0", !11, i64 0, !36, i64 6}
!177 = !{!176, !36, i64 6}
!178 = !{!93, !12, i64 628}
!179 = !{!93, !39, i64 632}
!180 = !{!93, !12, i64 381816}
!181 = !{!93, !12, i64 381812}
!182 = !{!27, !12, i64 8}
end_hunk_1
