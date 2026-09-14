Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut?download=true
inline.NumInlined: 419
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Gia_ManSimEvalOne3:bb.a

.preheader.us.i.us.us:                            ; preds = %._crit_edge.us.i.us.us, %.preheader.lr.ph.i.us.us
  %indvars.iv37.i.us.us = phi i64 [ %indvars.iv.next38.i.us.us, %._crit_edge.us.i.us.us ], [ 0, %.preheader.lr.ph.i.us.us ] ; 3 uses
  %.02032.us.i.us.us = phi i32 [ %spec.select27.us.i.us.us, %._crit_edge.us.i.us.us ], [ -1, %.preheader.lr.ph.i.us.us ]
  %.02231.us.i.us.us = phi i32 [ %spec.select.us.i.us.us, %._crit_edge.us.i.us.us ], [ -1, %.preheader.lr.ph.i.us.us ] ; 2 uses
  %i.y = mul nuw nsw i64 %indvars.iv37.i.us.us, %i.m ; 3 uses
  br i1 %i.q, label %.epil.preheader, label %.preheader.us.i.us.us.new

.preheader.us.i.us.us.new:                        ; preds = %.preheader.us.i.us.us, %.preheader.us.i.us.us.new
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.1, %.preheader.us.i.us.us.new ], [ 0, %.preheader.us.i.us.us ] ; 4 uses
  %.029.us.i.us.us = phi i32 [ %.1.us.i.us.us.1, %.preheader.us.i.us.us.new ], [ 0, %.preheader.us.i.us.us ]
  %niter76 = phi i64 [ %niter76.next.1, %.preheader.us.i.us.us.new ], [ 0, %.preheader.us.i.us.us ]
  %i.z = add nuw nsw i64 %indvars.iv.i.us.us, %i.y
  %i.aa = mul nsw i64 %i.z, %i.l
  %gep.us.i.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.i.us.us, i64 %i.aa
  %i.ab = load i64, ptr %gep.us.i.us.us, align 8, !tbaa !60
  %i.ac = and i64 %i.ab, %i.v
  %.not26.us.i.us.us = icmp eq i64 %i.ac, 0
  %i.ad = trunc nuw nsw i64 %indvars.iv.i.us.us to i32
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = select i1 %.not26.us.i.us.us, i32 0, i32 %i.ae
  %.1.us.i.us.us = or i32 %i.af, %.029.us.i.us.us
  %indvars.iv.next.i.us.us = or disjoint i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %i.ag = add nuw nsw i64 %indvars.iv.next.i.us.us, %i.y
  %i.ah = mul nsw i64 %i.ag, %i.l
  %gep.us.i.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep.us.i.us.us, i64 %i.ah
  %i.ai = load i64, ptr %gep.us.i.us.us.1, align 8, !tbaa !60
  %i.aj = and i64 %i.ai, %i.v
  %.not26.us.i.us.us.1 = icmp eq i64 %i.aj, 0
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i.us.us to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = select i1 %.not26.us.i.us.us.1, i32 0, i32 %i.al
  %.1.us.i.us.us.1 = or i32 %i.am, %.1.us.i.us.us ; 3 uses
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %niter76.next.1 = add i64 %niter76, 2           ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %._crit_edge.us.i.us.us.unr-lcssa, label %.preheader.us.i.us.us.new, !llvm.loop !5

._crit_edge.us.i.us.us.unr-lcssa:                 ; preds = %.preheader.us.i.us.us.new
  br i1 %lcmp.mod72.not, label %._crit_edge.us.i.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.us.us.unr-lcssa, %.preheader.us.i.us.us
  %indvars.iv.i.us.us.epil.init = phi i64 [ 0, %.preheader.us.i.us.us ], [ %indvars.iv.next.i.us.us.1, %._crit_edge.us.i.us.us.unr-lcssa ] ; 2 uses
  %.029.us.i.us.us.epil.init = phi i32 [ 0, %.preheader.us.i.us.us ], [ %.1.us.i.us.us.1, %._crit_edge.us.i.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.an = add nuw nsw i64 %indvars.iv.i.us.us.epil.init, %i.y
  %i.ao = mul nsw i64 %i.an, %i.l
  %gep.us.i.us.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us.i.us.us, i64 %i.ao
  %i.ap = load i64, ptr %gep.us.i.us.us.epil, align 8, !tbaa !60
  %i.aq = and i64 %i.ap, %i.v
  %.not26.us.i.us.us.epil = icmp eq i64 %i.aq, 0
  %i.ar = trunc nuw nsw i64 %indvars.iv.i.us.us.epil.init to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = select i1 %.not26.us.i.us.us.epil, i32 0, i32 %i.as
  %.1.us.i.us.us.epil = or i32 %i.at, %.029.us.i.us.us.epil.init
  br label %._crit_edge.us.i.us.us

._crit_edge.us.i.us.us:                           ; preds = %._crit_edge.us.i.us.us.unr-lcssa, %.epil.preheader
  %.1.us.i.us.us.lcssa = phi i32 [ %.1.us.i.us.us.1, %._crit_edge.us.i.us.us.unr-lcssa ], [ %.1.us.i.us.us.epil, %.epil.preheader ] ; 2 uses
  %.not.us.i.us.us = icmp sgt i32 %.02231.us.i.us.us, %.1.us.i.us.us.lcssa
  %spec.select.us.i.us.us = tail call i32 @llvm.smax.i32(i32 %.02231.us.i.us.us, i32 %.1.us.i.us.us.lcssa)
  %i.au = trunc nuw nsw i64 %indvars.iv37.i.us.us to i32
  %spec.select27.us.i.us.us = select i1 %.not.us.i.us.us, i32 %.02032.us.i.us.us, i32 %i.au ; 2 uses
  %indvars.iv.next38.i.us.us = add nuw nsw i64 %indvars.iv37.i.us.us, 1 ; 2 uses
  %exitcond41.not.i.us.us = icmp eq i64 %indvars.iv.next38.i.us.us, %wide.trip.count40.i
  br i1 %exitcond41.not.i.us.us, label %Gia_ManSimEvalMaxValue.exit.loopexit.us.us, label %.preheader.us.i.us.us, !llvm.loop !6

Gia_ManSimEvalMaxValue.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i.us.us
  %i.av = icmp eq i32 %i.s, %spec.select27.us.i.us.us ; 2 uses
  %i.aw = icmp eq i32 %.02333.us.us, -1
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  %.124.us.us = select i1 %i.ax, i32 %i.t, i32 %.02333.us.us ; 2 uses
  %i.ay = zext i1 %i.av to i32
  %.1.us.us = add nuw nsw i32 %.034.us.us, %i.ay  ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %.critedge, label %.preheader.lr.ph.i.us.us, !llvm.loop !128

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us, %.preheader.lr.ph.i.us.preheader.new
  %indvars.iv45 = phi i64 [ 0, %.preheader.lr.ph.i.us.preheader.new ], [ %indvars.iv.next46.1, %.preheader.lr.ph.i.us ] ; 4 uses
  %.034.us = phi i32 [ 0, %.preheader.lr.ph.i.us.preheader.new ], [ %.1.us.1, %.preheader.lr.ph.i.us ]
  %.02333.us = phi i32 [ -1, %.preheader.lr.ph.i.us.preheader.new ], [ %.124.us.1, %.preheader.lr.ph.i.us ] ; 2 uses
  %niter70 = phi i64 [ 0, %.preheader.lr.ph.i.us.preheader.new ], [ %niter70.next.1, %.preheader.lr.ph.i.us ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv45
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22
  %i.bb = icmp eq i32 %i.ba, %i.j                 ; 2 uses
  %i.bc = icmp eq i32 %.02333.us, -1
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  %i.be = trunc nuw nsw i64 %indvars.iv45 to i32
  %.124.us = select i1 %i.bd, i32 %i.be, i32 %.02333.us ; 2 uses
  %i.bf = zext i1 %i.bb to i32
  %.1.us = add nuw nsw i32 %.034.us, %i.bf
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv.next46
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = icmp eq i32 %i.bh, %i.j                 ; 2 uses
  %i.bj = icmp eq i32 %.124.us, -1
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bl = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %.124.us.1 = select i1 %i.bk, i32 %i.bl, i32 %.124.us ; 3 uses
  %i.bm = zext i1 %i.bi to i32
  %.1.us.1 = add nuw nsw i32 %.1.us, %i.bm        ; 3 uses
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter70.next.1 = add i64 %niter70, 2           ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %.critedge.loopexit59.unr-lcssa, label %.preheader.lr.ph.i.us, !llvm.loop !128

Gia_ManSimEvalMaxValue.exit:                      ; preds = %Gia_ManSimEvalMaxValue.exit, %Gia_ManSimEvalMaxValue.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %Gia_ManSimEvalMaxValue.exit.preheader.new ], [ %indvars.iv.next.1, %Gia_ManSimEvalMaxValue.exit ] ; 4 uses
  %.034 = phi i32 [ 0, %Gia_ManSimEvalMaxValue.exit.preheader.new ], [ %.1.1, %Gia_ManSimEvalMaxValue.exit ]
  %.02333 = phi i32 [ -1, %Gia_ManSimEvalMaxValue.exit.preheader.new ], [ %.124.1, %Gia_ManSimEvalMaxValue.exit ] ; 2 uses
  %niter = phi i64 [ 0, %Gia_ManSimEvalMaxValue.exit.preheader.new ], [ %niter.next.1, %Gia_ManSimEvalMaxValue.exit ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = icmp eq i32 %i.bo, -1                   ; 2 uses
  %i.bq = icmp eq i32 %.02333, -1
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %.124 = select i1 %i.br, i32 %i.bs, i32 %.02333 ; 2 uses
  %i.bt = zext i1 %i.bp to i32
  %.1 = add nuw nsw i32 %.034, %i.bt
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv.next
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = icmp eq i32 %i.bv, -1                   ; 2 uses
  %i.bx = icmp eq i32 %.124, -1
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  %i.bz = trunc nuw nsw i64 %indvars.iv.next to i32
  %.124.1 = select i1 %i.by, i32 %i.bz, i32 %.124 ; 3 uses
  %i.ca = zext i1 %i.bw to i32
  %.1.1 = add nuw nsw i32 %.1, %i.ca              ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit60.unr-lcssa, label %Gia_ManSimEvalMaxValue.exit, !llvm.loop !128

.critedge.loopexit59.unr-lcssa:                   ; preds = %.preheader.lr.ph.i.us
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.critedge, label %.preheader.lr.ph.i.us.epil.preheader

.preheader.lr.ph.i.us.epil.preheader:             ; preds = %.critedge.loopexit59.unr-lcssa, %.preheader.lr.ph.i.us.preheader
  %indvars.iv45.epil.init = phi i64 [ 0, %.preheader.lr.ph.i.us.preheader ], [ %indvars.iv.next46.1, %.critedge.loopexit59.unr-lcssa ] ; 2 uses
  %.034.us.epil.init = phi i32 [ 0, %.preheader.lr.ph.i.us.preheader ], [ %.1.us.1, %.critedge.loopexit59.unr-lcssa ]
  %.02333.us.epil.init = phi i32 [ -1, %.preheader.lr.ph.i.us.preheader ], [ %.124.us.1, %.critedge.loopexit59.unr-lcssa ] ; 2 uses
  %lcmp.mod68 = trunc i32 %.val27 to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv45.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22
  %i.cd = icmp eq i32 %i.cc, %i.j                 ; 2 uses
  %i.ce = icmp eq i32 %.02333.us.epil.init, -1
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cg = trunc nuw nsw i64 %indvars.iv45.epil.init to i32
  %.124.us.epil = select i1 %i.cf, i32 %i.cg, i32 %.02333.us.epil.init
  %i.ch = zext i1 %i.cd to i32
  %.1.us.epil = add nuw nsw i32 %.034.us.epil.init, %i.ch
  br label %.critedge

.critedge.loopexit60.unr-lcssa:                   ; preds = %Gia_ManSimEvalMaxValue.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %Gia_ManSimEvalMaxValue.exit.epil.preheader

Gia_ManSimEvalMaxValue.exit.epil.preheader:       ; preds = %.critedge.loopexit60.unr-lcssa, %Gia_ManSimEvalMaxValue.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %Gia_ManSimEvalMaxValue.exit.preheader ], [ %indvars.iv.next.1, %.critedge.loopexit60.unr-lcssa ] ; 2 uses
  %.034.epil.init = phi i32 [ 0, %Gia_ManSimEvalMaxValue.exit.preheader ], [ %.1.1, %.critedge.loopexit60.unr-lcssa ]
  %.02333.epil.init = phi i32 [ -1, %Gia_ManSimEvalMaxValue.exit.preheader ], [ %.124.1, %.critedge.loopexit60.unr-lcssa ] ; 2 uses
  %lcmp.mod63 = trunc i32 %.val27 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val28, i64 %indvars.iv.epil.init
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !22
  %i.ck = icmp eq i32 %i.cj, -1                   ; 2 uses
  %i.cl = icmp eq i32 %.02333.epil.init, -1
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cn = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.124.epil = select i1 %i.cm, i32 %i.cn, i32 %.02333.epil.init
  %i.co = zext i1 %i.ck to i32
  %.1.epil = add nuw nsw i32 %.034.epil.init, %i.co
  br label %.critedge

.critedge:                                        ; preds = %Gia_ManSimEvalMaxValue.exit.epil.preheader, %.critedge.loopexit60.unr-lcssa, %.preheader.lr.ph.i.us.epil.preheader, %.critedge.loopexit59.unr-lcssa, %Gia_ManSimEvalMaxValue.exit.loopexit.us.us, %bb.a
  %.023.lcssa = phi i32 [ -1, %bb.a ], [ %.124.us.epil, %.preheader.lr.ph.i.us.epil.preheader ], [ %.124.us.us, %Gia_ManSimEvalMaxValue.exit.loopexit.us.us ], [ %.124.us.1, %.critedge.loopexit59.unr-lcssa ], [ %.124.1, %.critedge.loopexit60.unr-lcssa ], [ %.124.epil, %Gia_ManSimEvalMaxValue.exit.epil.preheader ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.us.epil, %.preheader.lr.ph.i.us.epil.preheader ], [ %.1.us.us, %Gia_ManSimEvalMaxValue.exit.loopexit.us.us ], [ %.1.us.1, %.critedge.loopexit59.unr-lcssa ], [ %.1.1, %.critedge.loopexit60.unr-lcssa ], [ %.1.epil, %Gia_ManSimEvalMaxValue.exit.epil.preheader ] ; 3 uses
  %i.cp = uitofp nneg i32 %.0.lcssa to double
  %i.cq = fmul nnan double %i.cp, 1.000000e+02
  %i.cr = sitofp i32 %.val27 to double
  %i.cs = fdiv double %i.cq, %i.cr
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.cs, i32 noundef %.0.lcssa, i32 noundef %.val27, i32 noundef %.023.lcssa) ; 0 uses
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManSimInfoTry(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr i8, ptr %0, i64 64
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %.val25, i64 4
  %.val25.val = load i32, ptr %i.c, align 4, !tbaa !25
  %i.d = sdiv i32 %.val, %.val25.val              ; 8 uses
  %i.e = add nuw nsw i32 %i.d, 199
  %2 = sdiv i32 %i.e, 200
  %i.f = getelementptr i8, ptr %0, i64 72
  %.val26 = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr i8, ptr %.val26, i64 4
  %.val26.val = load i32, ptr %i.g, align 4, !tbaa !25 ; 3 uses
  %i.h = mul nsw i32 %.val26.val, %i.d            ; 4 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 4 uses
  %i.j = add i32 %i.h, -1
  %or.cond.i.i = icmp ult i32 %i.j, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.h ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.i, align 8, !tbaa !56
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %spec.store.select.i.i to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #27
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !57
  store i32 %i.h, ptr %i.o, align 4, !tbaa !58
  %i.q = sext i32 %i.h to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.r, i1 false)
  %i.s = icmp sgt i32 %i.d, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdStart.exit
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = zext nneg i32 %i.d to i64                ; 4 uses
  %i.v = icmp sgt i32 %.val26.val, 0
  %wide.trip.count30.i = zext i32 %.val26.val to i64 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.w = add nuw nsw i64 %wide.trip.count30.i, 2305843009213693951
  %i.x = mul i64 %i.w, %i.u
  %i.y = shl i64 %i.x, 3
  %i.z = mul nuw nsw i64 %wide.trip.count30.i, 1600
  %i.aa = shl nuw nsw i64 %i.u, 3
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.y
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_WrdFree.exit39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdFree.exit39 ] ; 6 uses
  %i.ac = trunc i64 %indvars.iv to i32
  %i.ad = mul i32 %i.ac, -200
  %i.ae = add i32 %i.ad, %i.d
  %smin51 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 200)
  %i.af = zext i32 %smin51 to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.ah = mul nuw nsw i64 %indvars.iv, 1600
  %i.ai = mul nuw nsw i64 %indvars.iv, 1600
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ai
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = mul i32 %i.aj, -200
  %i.al = add i32 %i.ak, %i.d
  %smin = tail call i32 @llvm.smin.i32(i32 %i.al, i32 200)
  %i.am = zext i32 %smin to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %scevgep45 = getelementptr i8, ptr %scevgep, i64 %i.an
  %i.ao = mul nuw nsw i64 %indvars.iv, 200        ; 3 uses
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !58
  %i.ap = sdiv i32 %.val.i, %i.d                  ; 3 uses
  %i.aq = trunc nuw i64 %i.ao to i32
  %i.ar = sub nsw i32 %i.d, %i.aq                 ; 4 uses
  %i.as = tail call noundef i32 @llvm.smin.i32(i32 %i.ar, i32 200) ; 2 uses
  %i.at = mul nsw i32 %i.ap, 200                  ; 4 uses
  %i.au = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.av = add i32 %i.at, -1
  %or.cond.i.i.i = icmp ult i32 %i.av, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.at ; 3 uses
  store i32 %spec.store.select.i.i.i, ptr %i.au, align 8, !tbaa !56
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_WrdStart.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = sext i32 %spec.store.select.i.i.i to i64
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #27
  br label %Vec_WrdStart.exit.i

Vec_WrdStart.exit.i:                              ; preds = %bb.d, %bb.c
  %i.az = phi ptr [ %i.ay, %bb.d ], [ null, %bb.c ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !57
  store i32 %i.at, ptr %i.ba, align 4, !tbaa !58
  %i.bc = sext i32 %i.at to i64
  %i.bd = shl nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bd, i1 false)
  %i.be = icmp sgt i32 %i.ap, 0
  %i.bf = icmp sgt i32 %i.ar, 0                   ; 2 uses
  %or.cond.i = and i1 %i.bf, %i.be
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %Vec_WrdZoneExtract.exit

.preheader.lr.ph.split.i:                         ; preds = %Vec_WrdStart.exit.i
  %.val23.i = load ptr, ptr %i.t, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count33.i = zext nneg i32 %i.ap to i64 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.as to i64 ; 5 uses
  %invariant.gep36.i = getelementptr [8 x i8], ptr %.val23.i, i64 %i.ao ; 2 uses
  %scevgep50 = getelementptr i8, ptr %i.az, i64 -1600
  %i.bg = mul nuw nsw i64 %wide.trip.count33.i, 1600
  %i.bh = getelementptr i8, ptr %scevgep50, i64 %i.bg
  %scevgep52 = getelementptr i8, ptr %i.bh, i64 %i.ag
  %i.bi = add nsw i64 %wide.trip.count33.i, -1
  %i.bj = mul i64 %i.aa, %i.bi
  %i.bk = getelementptr i8, ptr %.val23.i, i64 %i.ah
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %scevgep53 = getelementptr i8, ptr %i.bl, i64 %i.ag
  %min.iters.check58 = icmp slt i32 %i.ar, 4
  %bound054 = icmp ult ptr %i.az, %scevgep53
  %bound155 = icmp ult ptr %invariant.gep36.i, %scevgep52
  %found.conflict56 = and i1 %bound054, %bound155
  %n.vec60 = and i64 %wide.trip.count.i, 252      ; 3 uses
  %cmp.n67 = icmp eq i64 %n.vec60, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next31.i, %._crit_edge.i ] ; 3 uses
  %i.bm = mul nuw nsw i64 %indvars.iv30.i, %i.u
  %gep37.i = getelementptr [8 x i8], ptr %invariant.gep36.i, i64 %i.bm ; 6 uses
  %invariant.gep.i.idx = mul nuw nsw i64 %indvars.iv30.i, 1600
  %invariant.gep.i = getelementptr i8, ptr %i.az, i64 %invariant.gep.i.idx ; 6 uses
  %brmerge = select i1 %min.iters.check58, i1 true, i1 %found.conflict56
  br i1 %brmerge, label %scalar.ph57.preheader, label %vector.body61

vector.body61:                                    ; preds = %.preheader.i, %vector.body61
  %index62 = phi i64 [ %index.next65, %vector.body61 ], [ 0, %.preheader.i ] ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %gep37.i, i64 %index62 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %wide.load63 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !60, !alias.scope !142
  %wide.load64 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !60, !alias.scope !142
  %i.bp = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index62 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x i64> %wide.load63, ptr %i.bp, align 8, !tbaa !60, !alias.scope !143, !noalias !142
  store <2 x i64> %wide.load64, ptr %i.bq, align 8, !tbaa !60, !alias.scope !143, !noalias !142
  %index.next65 = add nuw i64 %index62, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.br, label %middle.block66, label %vector.body61, !llvm.loop !132

middle.block66:                                   ; preds = %vector.body61
  br i1 %cmp.n67, label %._crit_edge.i, label %scalar.ph57.preheader

scalar.ph57.preheader:                            ; preds = %.preheader.i, %middle.block66
  %indvars.iv.i.ph = phi i64 [ %n.vec60, %middle.block66 ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph57.prol.loopexit, label %scalar.ph57.prol

scalar.ph57.prol:                                 ; preds = %scalar.ph57.preheader, %scalar.ph57.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph57.prol ], [ %indvars.iv.i.ph, %scalar.ph57.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph57.prol ], [ 0, %scalar.ph57.preheader ]
  %i.bs = getelementptr [8 x i8], ptr %gep37.i, i64 %indvars.iv.i.prol
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !60
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store i64 %i.bt, ptr %gep.i.prol, align 8, !tbaa !60
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph57.prol.loopexit, label %scalar.ph57.prol, !llvm.loop !133

scalar.ph57.prol.loopexit:                        ; preds = %scalar.ph57.prol, %scalar.ph57.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph57.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph57.prol ]
  %i.bu = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge.i, label %scalar.ph57

scalar.ph57:                                      ; preds = %scalar.ph57.prol.loopexit, %scalar.ph57
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph57 ], [ %indvars.iv.i.unr, %scalar.ph57.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr [8 x i8], ptr %gep37.i, i64 %indvars.iv.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !60
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.bx, ptr %gep.i, align 8, !tbaa !60
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %gep37.i, i64 %indvars.iv.next.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !60
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.bz, ptr %gep.i.1, align 8, !tbaa !60
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %gep37.i, i64 %indvars.iv.next.i.1
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !60
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.cb, ptr %gep.i.2, align 8, !tbaa !60
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %gep37.i, i64 %indvars.iv.next.i.2
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !60
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.cd, ptr %gep.i.3, align 8, !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph57, !llvm.loop !134

._crit_edge.i:                                    ; preds = %scalar.ph57.prol.loopexit, %scalar.ph57, %middle.block66
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %Vec_WrdZoneExtract.exit, label %.preheader.i, !llvm.loop !1

Vec_WrdZoneExtract.exit:                          ; preds = %._crit_edge.i, %Vec_WrdStart.exit.i
  %i.ce = tail call ptr @Gia_ManSimulateWordsOut(ptr noundef %0, ptr noundef nonnull %i.au) #26 ; 3 uses
  %or.cond.i28 = and i1 %i.v, %i.bf
  br i1 %or.cond.i28, label %.preheader.lr.ph.split.i29, label %Vec_WrdZoneInsert.exit

.preheader.lr.ph.split.i29:                       ; preds = %Vec_WrdZoneExtract.exit
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val20.i = load ptr, ptr %i.cf, align 8, !tbaa !57 ; 3 uses
  %wide.trip.count.i30 = zext nneg i32 %i.as to i64 ; 5 uses
  %invariant.gep33.i = getelementptr [8 x i8], ptr %i.n, i64 %i.ao ; 2 uses
  %i.cg = getelementptr i8, ptr %.val20.i, i64 %i.z
  %scevgep46 = getelementptr i8, ptr %i.cg, i64 -1600
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.an
  %min.iters.check = icmp slt i32 %i.ar, 4
  %bound0 = icmp ult ptr %invariant.gep33.i, %scevgep47
  %bound1 = icmp ult ptr %.val20.i, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i30, 252      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i30
  %xtraiter69 = and i64 %wide.trip.count.i30, 3   ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br label %.preheader.i31

.preheader.i31:                                   ; preds = %._crit_edge.i37, %.preheader.lr.ph.split.i29
  %indvars.iv27.i = phi i64 [ 0, %.preheader.lr.ph.split.i29 ], [ %indvars.iv.next28.i, %._crit_edge.i37 ] ; 3 uses
  %i.ch = mul nuw nsw i64 %indvars.iv27.i, %i.u
  %invariant.gep.i32.idx = mul nuw nsw i64 %indvars.iv27.i, 1600
  %invariant.gep.i32 = getelementptr i8, ptr %.val20.i, i64 %invariant.gep.i32.idx ; 6 uses
  %gep34.i = getelementptr [8 x i8], ptr %invariant.gep33.i, i64 %i.ch ; 6 uses
  %brmerge72 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge72, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i31, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i31 ] ; 3 uses
  %i.ci = getelementptr [8 x i8], ptr %invariant.gep.i32, i64 %index ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !226
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #30
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !49
  %i.s = load i32, ptr %i.c, align 4, !tbaa !225  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #30 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !227
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !225 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !225
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !25
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !25 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #30
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !26
  %.pre = load i32, ptr %i.al, align 4, !tbaa !25
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !25
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !22
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !69
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !49
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @Abc_NtkCreateObj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{!4, !28}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{!7, !28}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!18 = !{!"Vec_Wec_t_", !13, i64 0, !13, i64 4, !17, i64 8}
!19 = !{!18, !13, i64 4}
!20 = !{!18, !13, i64 0}
!21 = !{!18, !17, i64 8}
!22 = !{!13, !13, i64 0}
!23 = !{!"p1 int", !16, i64 0}
!24 = !{!"Vec_Int_t_", !13, i64 0, !13, i64 4, !23, i64 8}
!25 = !{!24, !13, i64 4}
!26 = !{!24, !13, i64 0}
!27 = !{!24, !23, i64 8}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!"p1 omnipotent char", !16, i64 0}
!31 = !{!"p1 _ZTS10Gia_Obj_t_", !16, i64 0}
!32 = !{!"p1 _ZTS10Gia_Rpr_t_", !16, i64 0}
!33 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!34 = !{!"p1 _ZTS10Vec_Str_t_", !16, i64 0}
!35 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!36 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!37 = !{!"p1 _ZTS10Gia_Plc_t_", !16, i64 0}
!38 = !{!"p1 _ZTS10Gia_Man_t_", !16, i64 0}
!39 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!40 = !{!"float", !12, i64 0}
!41 = !{!"p1 _ZTS10Vec_Vec_t_", !16, i64 0}
!42 = !{!"long", !12, i64 0}
!43 = !{!"p1 _ZTS10Vec_Wrd_t_", !16, i64 0}
!44 = !{!"p1 _ZTS10Vec_Bit_t_", !16, i64 0}
!45 = !{!"p1 _ZTS10Gia_Dat_t_", !16, i64 0}
!46 = !{!"Gia_Man_t_", !30, i64 0, !30, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !31, i64 32, !23, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !17, i64 64, !17, i64 72, !24, i64 80, !24, i64 96, !13, i64 112, !13, i64 116, !13, i64 120, !24, i64 128, !23, i64 144, !23, i64 152, !17, i64 160, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !23, i64 184, !32, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !13, i64 224, !13, i64 228, !23, i64 232, !13, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !33, i64 272, !33, i64 280, !17, i64 288, !16, i64 296, !17, i64 304, !17, i64 312, !34, i64 320, !30, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !35, i64 376, !35, i64 384, !36, i64 392, !24, i64 400, !24, i64 416, !17, i64 432, !17, i64 440, !17, i64 448, !17, i64 456, !17, i64 464, !17, i64 472, !17, i64 480, !17, i64 488, !17, i64 496, !17, i64 504, !17, i64 512, !30, i64 520, !37, i64 528, !38, i64 536, !39, i64 544, !39, i64 552, !17, i64 560, !17, i64 568, !17, i64 576, !17, i64 584, !17, i64 592, !13, i64 600, !40, i64 604, !40, i64 608, !17, i64 616, !23, i64 624, !13, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !17, i64 664, !17, i64 672, !17, i64 680, !17, i64 688, !17, i64 696, !17, i64 704, !17, i64 712, !17, i64 720, !17, i64 728, !41, i64 736, !39, i64 744, !16, i64 752, !16, i64 760, !16, i64 768, !42, i64 776, !42, i64 784, !16, i64 792, !23, i64 800, !13, i64 808, !13, i64 812, !13, i64 816, !13, i64 820, !13, i64 824, !13, i64 828, !13, i64 832, !13, i64 836, !13, i64 840, !13, i64 844, !13, i64 848, !13, i64 852, !43, i64 856, !43, i64 864, !43, i64 872, !43, i64 880, !17, i64 888, !17, i64 896, !17, i64 904, !44, i64 912, !13, i64 920, !13, i64 924, !13, i64 928, !17, i64 936, !13, i64 944, !13, i64 948, !17, i64 952, !17, i64 960, !36, i64 968, !43, i64 976, !17, i64 984, !17, i64 992, !13, i64 1000, !13, i64 1004, !43, i64 1008, !24, i64 1016, !24, i64 1032, !24, i64 1048, !45, i64 1064, !34, i64 1072, !34, i64 1080, !13, i64 1088, !13, i64 1092, !13, i64 1096, !13, i64 1100, !34, i64 1104, !17, i64 1112, !17, i64 1120, !17, i64 1128, !36, i64 1136}
!47 = !{!46, !30, i64 0}
!48 = !{!46, !30, i64 8}
!49 = !{!46, !31, i64 32}
!50 = !{!"Gia_Obj_t_", !13, i64 0, !13, i64 3, !13, i64 3, !13, i64 3, !13, i64 4, !13, i64 7, !13, i64 7, !13, i64 7, !13, i64 8}
!51 = !{!50, !13, i64 8}
!52 = !{!46, !17, i64 64}
!53 = !{!46, !17, i64 72}
!54 = !{!"p1 long", !16, i64 0}
!55 = !{!"Vec_Wrd_t_", !13, i64 0, !13, i64 4, !54, i64 8}
!56 = !{!55, !13, i64 0}
!57 = !{!55, !54, i64 8}
!58 = !{!55, !13, i64 4}
!59 = !{!12, !12, i64 0}
!60 = !{!42, !42, i64 0}
!61 = !{!43, !43, i64 0}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"timespec", !42, i64 0, !42, i64 8}
!65 = !{!64, !42, i64 0}
!66 = !{!64, !42, i64 8}
!67 = !{!46, !13, i64 176}
!68 = !{!46, !23, i64 624}
!69 = !{!46, !13, i64 24}
!70 = !{!46, !13, i64 16}
!71 = !{!"any p2 pointer", !16, i64 0}
!72 = !{!"p1 _ZTS9Nm_Man_t_", !16, i64 0}
!73 = !{!"p1 _ZTS10Abc_Ntk_t_", !16, i64 0}
!74 = !{!"p1 _ZTS10Abc_Des_t_", !16, i64 0}
!75 = !{!"double", !12, i64 0}
!76 = !{!"p1 _ZTS12Mem_Fixed_t_", !16, i64 0}
!77 = !{!"p1 _ZTS11Mem_Step_t_", !16, i64 0}
!78 = !{!"p1 _ZTS14Abc_ManTime_t_", !16, i64 0}
!79 = !{!"p1 float", !16, i64 0}
!80 = !{!"Abc_Ntk_t_", !13, i64 0, !13, i64 4, !30, i64 8, !30, i64 16, !72, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !12, i64 96, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !73, i64 160, !13, i64 168, !74, i64 176, !73, i64 184, !13, i64 192, !13, i64 196, !13, i64 200, !75, i64 208, !13, i64 216, !24, i64 224, !76, i64 240, !77, i64 248, !16, i64 256, !78, i64 264, !16, i64 272, !40, i64 280, !13, i64 284, !17, i64 288, !36, i64 296, !23, i64 304, !35, i64 312, !36, i64 320, !73, i64 328, !16, i64 336, !16, i64 344, !73, i64 352, !16, i64 360, !16, i64 368, !17, i64 376, !17, i64 384, !30, i64 392, !79, i64 400, !36, i64 408, !17, i64 416, !17, i64 424, !36, i64 432, !17, i64 440, !17, i64 448, !17, i64 456}
!81 = !{!80, !30, i64 8}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = !{!46, !23, i64 232}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !28}
!99 = distinct !{!99, !28}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !28, !62, !63}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !28, !62}
!109 = !{!104}
!110 = !{!105}
!111 = distinct !{!111, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !28, !62, !63}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !28, !62}
!117 = !{!112}
!118 = !{!113}
!119 = distinct !{!119, !28}
!120 = distinct !{!120, !28}
!121 = distinct !{!121, !28}
!122 = distinct !{!122, !28, !62, !63}
!123 = distinct !{!123, !28, !63, !62}
!124 = distinct !{!124, !28}
!125 = distinct !{!125, !28, !62, !63}
!126 = distinct !{!126, !28, !63, !62}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28}
!129 = distinct !{!129, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !28, !62, !63}
!133 = distinct !{!133, !29}
!134 = distinct !{!134, !28, !62}
!135 = distinct !{!135, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !28, !62, !63}
!139 = distinct !{!139, !29}
!140 = distinct !{!140, !28, !62}
!141 = distinct !{!141, !28}
!142 = !{!130}
!143 = !{!131}
!144 = !{!136}
!145 = !{!137}
!146 = distinct !{!146, !28}
!147 = distinct !{!147, !28}
!148 = distinct !{!148, !28}
!149 = distinct !{!149, !28}
!150 = !{!54, !54, i64 0}
!151 = !{!46, !17, i64 160}
!152 = distinct !{!152, !28}
!153 = distinct !{!153, !28}
!154 = distinct !{!154, !29}
!155 = distinct !{!155, !28}
!156 = distinct !{!156, !28}
end_hunk_1
