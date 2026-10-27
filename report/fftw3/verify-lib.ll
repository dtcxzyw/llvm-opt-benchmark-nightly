Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-lib?download=true
inline.NumInlined: 53
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@aphase_shift:bb.a
  store <4 x double> %interleaved.vec, ptr %i.ab, align 8, !tbaa !18, !alias.scope !95, !noalias !94
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us ] ; 4 uses
  br i1 %lcmp.mod79.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = add nuw nsw i64 %indvars.iv.ph, %i.v    ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.af ; 3 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18
  %i.ak = fmul double %i.aj, %i.w
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.t, double %i.ak)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.af ; 2 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !18
  %i.an = load double, ptr %i.ag, align 8, !tbaa !18
  %i.ao = load double, ptr %i.ai, align 8, !tbaa !18
  %i.ap = fmul double %i.t, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.s, double %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store double %i.aq, ptr %i.ar, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp eq i64 %indvars.iv.ph, %i.k
  br i1 %i.as, label %._crit_edge.us.us, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.v
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv, %i.v       ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.at ; 3 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = fmul double %i.ax, %i.w
  %i.az = tail call double @llvm.fmuladd.f64(double %i.av, double %i.t, double %i.ay)
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 2 uses
  store double %i.az, ptr %i.ba, align 8, !tbaa !18
  %i.bb = load double, ptr %i.au, align 8, !tbaa !18
  %i.bc = load double, ptr %i.aw, align 8, !tbaa !18
  %i.bd = fmul double %i.t, %i.bc
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.s, double %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store double %i.be, ptr %i.bf, align 8, !tbaa !18
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.reass ; 3 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = fmul double %i.bj, %i.w
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.t, double %i.bk)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.reass ; 2 uses
  store double %i.bl, ptr %i.bm, align 8, !tbaa !18
  %i.bn = load double, ptr %i.bg, align 8, !tbaa !18
  %i.bo = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bp = fmul double %i.t, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.s, double %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %i.bq, ptr %i.br, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond49.not.1 = icmp eq i64 %indvars.iv.next.1, %i.g
  br i1 %exitcond49.not.1, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !92

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %i.h
  br i1 %exitcond54.not, label %._crit_edge42.split.us.us, label %.lr.ph.us.us, !llvm.loop !4

._crit_edge42.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !5

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge42.split
  %.03643 = phi i32 [ %i.dl, %._crit_edge42.split ], [ 0, %.preheader.preheader ]
  br i1 %i.f, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.040 = phi i32 [ %i.df, %.preheader.new ], [ 0, %.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.preheader.new ], [ 0, %.preheader ]
  %i.bs = uitofp nneg i32 %.040 to double
  %i.bt = fmul double %i.b, %i.bs                 ; 2 uses
  %i.bu = tail call double @sin(double noundef %i.bt) #13 ; 0 uses
  %i.bv = tail call double @cos(double noundef %i.bt) #13 ; 0 uses
  %i.bw = or disjoint i32 %.040, 1
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fmul nnan double %i.b, %i.bx            ; 2 uses
  %i.bz = tail call double @sin(double noundef %i.by) #13 ; 0 uses
  %i.ca = tail call double @cos(double noundef %i.by) #13 ; 0 uses
  %i.cb = or disjoint i32 %.040, 2
  %i.cc = uitofp nneg i32 %i.cb to double
  %i.cd = fmul nnan double %i.b, %i.cc            ; 2 uses
  %i.ce = tail call double @sin(double noundef %i.cd) #13 ; 0 uses
  %i.cf = tail call double @cos(double noundef %i.cd) #13 ; 0 uses
  %i.cg = or disjoint i32 %.040, 3
  %i.ch = uitofp nneg i32 %i.cg to double
  %i.ci = fmul nnan double %i.b, %i.ch            ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #13 ; 0 uses
  %i.ck = tail call double @cos(double noundef %i.ci) #13 ; 0 uses
  %i.cl = or disjoint i32 %.040, 4
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = fmul nnan double %i.b, %i.cm            ; 2 uses
  %i.co = tail call double @sin(double noundef %i.cn) #13 ; 0 uses
  %i.cp = tail call double @cos(double noundef %i.cn) #13 ; 0 uses
  %i.cq = or disjoint i32 %.040, 5
  %i.cr = uitofp nneg i32 %i.cq to double
  %i.cs = fmul nnan double %i.b, %i.cr            ; 2 uses
  %i.ct = tail call double @sin(double noundef %i.cs) #13 ; 0 uses
  %i.cu = tail call double @cos(double noundef %i.cs) #13 ; 0 uses
  %i.cv = or disjoint i32 %.040, 6
  %i.cw = uitofp nneg i32 %i.cv to double
  %i.cx = fmul nnan double %i.b, %i.cw            ; 2 uses
  %i.cy = tail call double @sin(double noundef %i.cx) #13 ; 0 uses
  %i.cz = tail call double @cos(double noundef %i.cx) #13 ; 0 uses
  %i.da = or disjoint i32 %.040, 7
  %i.db = uitofp nneg i32 %i.da to double
  %i.dc = fmul nnan double %i.b, %i.db            ; 2 uses
  %i.dd = tail call double @sin(double noundef %i.dc) #13 ; 0 uses
  %i.de = tail call double @cos(double noundef %i.dc) #13 ; 0 uses
  %i.df = add nuw nsw i32 %.040, 8                ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge42.split.unr-lcssa, label %.preheader.new, !llvm.loop !4

._crit_edge42.split.unr-lcssa:                    ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge42.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge42.split.unr-lcssa, %.preheader
  %.040.epil.init = phi i32 [ 0, %.preheader ], [ %i.df, %._crit_edge42.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.040.epil = phi i32 [ %.040.epil.init, %.epil.preheader ], [ %i.dk, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.dg = uitofp nneg i32 %.040.epil to double
  %i.dh = fmul double %i.b, %i.dg                 ; 2 uses
  %i.di = tail call double @sin(double noundef %i.dh) #13 ; 0 uses
  %i.dj = tail call double @cos(double noundef %i.dh) #13 ; 0 uses
  %i.dk = add nuw nsw i32 %.040.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge42.split, label %bb.b, !llvm.loop !93

._crit_edge42.split:                              ; preds = %bb.b, %._crit_edge42.split.unr-lcssa
  %i.dl = add nuw nsw i32 %.03643, 1              ; 2 uses
  %exitcond47.not = icmp eq i32 %i.dl, %3
  br i1 %exitcond47.not, label %._crit_edge.split, label %.preheader, !llvm.loop !5

._crit_edge.split:                                ; preds = %._crit_edge42.split, %._crit_edge42.split.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ascale(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp eq i32 %2, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count, 4
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 16
  %bound0 = icmp ult ptr %0, %i.e
  %bound1 = icmp ult ptr %1, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.f = load double, ptr %1, align 8, !tbaa !18, !alias.scope !101
  %broadcast.splatinsert22 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat23 = shufflevector <2 x double> %broadcast.splatinsert22, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !18, !alias.scope !101
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat27 = shufflevector <2 x double> %broadcast.splatinsert26, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %3 = fneg <2 x double> %broadcast.splat27
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.h, align 8, !tbaa !18, !alias.scope !102, !noalias !101 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec21 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.i = fmul <2 x double> %strided.vec21, %3
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat23, <2 x double> %i.i)
  %i.k = fmul <2 x double> %strided.vec21, %broadcast.splat23
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat27, <2 x double> %i.k)
  %interleaved.vec = shufflevector <2 x double> %i.j, <2 x double> %i.l, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.h, align 8, !tbaa !18, !alias.scope !102, !noalias !101
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.ph ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  %i.r = load double, ptr %1, align 8, !tbaa !18
  %i.s = load double, ptr %i.b, align 8, !tbaa !18
  %i.t = fneg double %i.s
  %i.u = fmul double %i.q, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.o, double %i.r, double %i.u)
  store double %i.v, ptr %i.n, align 8, !tbaa !18
  %i.w = load double, ptr %i.b, align 8, !tbaa !18
  %i.x = load double, ptr %1, align 8, !tbaa !18
  %i.y = fmul double %i.q, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.o, double %i.w, double %i.y)
  store double %i.z, ptr %i.p, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aa = add nsw i64 %wide.trip.count, -1
  %i.ab = icmp eq i64 %indvars.iv.ph, %i.aa
  br i1 %i.ab, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = load double, ptr %1, align 8, !tbaa !18
  %i.ah = load double, ptr %i.b, align 8, !tbaa !18
  %i.ai = fneg double %i.ah
  %i.aj = fmul double %i.af, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ag, double %i.aj)
  store double %i.ak, ptr %i.ac, align 8, !tbaa !18
  %i.al = load double, ptr %i.b, align 8, !tbaa !18
  %i.am = load double, ptr %1, align 8, !tbaa !18
  %i.an = fmul double %i.af, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.al, double %i.an)
  store double %i.ao, ptr %i.ae, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %i.au = load double, ptr %1, align 8, !tbaa !18
  %i.av = load double, ptr %i.b, align 8, !tbaa !18
  %i.aw = fneg double %i.av
  %i.ax = fmul double %i.at, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.au, double %i.ax)
  store double %i.ay, ptr %i.aq, align 8, !tbaa !18
  %i.az = load double, ptr %i.b, align 8, !tbaa !18
  %i.ba = load double, ptr %1, align 8, !tbaa !18
  %i.bb = fmul double %i.at, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.as, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @acmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, double noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader.preheader.i, label %aerror.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 3 uses
  %i.b = phi <2 x double> [ zeroinitializer, %.preheader.preheader.i ], [ %i.ah, %.preheader.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.i
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !18 ; 4 uses
  %i.f = fcmp olt <2 x double> %i.e, zeroinitializer
  %i.g = fneg <2 x double> %i.e
  %i.h = select <2 x i1> %i.f, <2 x double> %i.g, <2 x double> %i.e ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 2 uses
  %i.j = extractelement <2 x double> %i.h, i64 1  ; 2 uses
  %i.k = fcmp ogt double %i.i, %i.j
  %i.l = select i1 %i.k, double %i.i, double %i.j ; 2 uses
  %i.m = load <2 x double>, ptr %i.d, align 8, !tbaa !18 ; 4 uses
  %i.n = fsub <2 x double> %i.e, %i.m             ; 3 uses
  %i.o = fcmp olt <2 x double> %i.n, zeroinitializer
  %i.p = fneg <2 x double> %i.n
  %i.q = select <2 x i1> %i.o, <2 x double> %i.p, <2 x double> %i.n ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 0  ; 2 uses
  %i.s = extractelement <2 x double> %i.q, i64 1  ; 2 uses
  %i.t = fcmp olt <2 x double> %i.m, zeroinitializer
  %i.u = fneg <2 x double> %i.m
  %i.v = select <2 x i1> %i.t, <2 x double> %i.u, <2 x double> %i.m ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0  ; 2 uses
  %i.x = extractelement <2 x double> %i.v, i64 1  ; 2 uses
  %i.y = fcmp ogt double %i.w, %i.x
  %i.z = fcmp ogt double %i.r, %i.s
  %i.aa = select i1 %i.z, double %i.r, double %i.s
  %i.ab = select i1 %i.y, double %i.w, double %i.x ; 2 uses
  %i.ac = fcmp olt double %i.l, %i.ab
  %i.ad = select i1 %i.ac, double %i.l, double %i.ab
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.aa, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x double> %i.b, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x double> %i.b, <2 x double> %i.af ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.b, label %.preheader.i, !llvm.loop !6

bb.b:                                             ; preds = %.preheader.i
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = extractelement <2 x double> %i.ah, i64 1
  %i.ak = fdiv double %i.aj, %i.ai                ; 3 uses
  %i.al = fcmp uno double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.c, label %aerror.exit

bb.c:                                             ; preds = %bb.b
  tail call void @bench_assertion_failed(ptr noundef nonnull @.str.6, i32 noundef 53, ptr noundef nonnull @.str.7) #13
  br label %aerror.exit

aerror.exit:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.028.i = phi double [ %i.ak, %bb.b ], [ %i.ak, %bb.c ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.am = fcmp ogt double %.028.i, %4
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %aerror.exit
  tail call void (ptr, ...) @ovtpvt_err(ptr noundef nonnull @.str, double noundef %.028.i, ptr noundef %3) #13
  %i.an = icmp sgt i32 %2, 300
  %i.ao = load i32, ptr @verbose, align 4
  %i.ap = icmp slt i32 %i.ao, 3
  %or.cond = select i1 %i.an, i1 %i.ap, i1 false
  %i.aq = select i1 %or.cond, i32 300, i32 %2     ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !18
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @ovtpvt_err(ptr noundef nonnull @.str.1, i32 noundef %i.ba, double noundef %i.at, double noundef %i.av, double noundef %i.ax, double noundef %i.az) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  tail call void @bench_exit(i32 noundef 1) #13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %aerror.exit
  ret double %.028.i
}

declare void @ovtpvt_err(ptr noundef, ...) local_unnamed_addr #10

declare void @bench_exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local double @impulse(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph102, label %._crit_edge103.thread141

._crit_edge103.thread141:                         ; preds = %bb.a
  %i.b = tail call fastcc double @impulse0(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11)
  br label %._crit_edge108

end_hunk_0
