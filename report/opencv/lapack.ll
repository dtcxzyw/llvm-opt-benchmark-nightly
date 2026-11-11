Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lapack?download=true
inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cvL6SVBkSbEiiPKfmS1_mbS1_mbS1_miPfmPh:bb.a
  %indvar.i = phi i64 [ 0, %.preheader140.preheader.i.new ], [ %indvar.next.i.7, %.preheader140.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader140.preheader.i.new ], [ %niter.next.7, %.preheader140.i ]
  %i.l = mul i64 %indvar.i, %i.h
  %scevgep.i = getelementptr i8, ptr %12, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i = or disjoint i64 %indvar.i, 1
  %i.m = mul i64 %indvar.next.i, %i.h
  %scevgep.i.1 = getelementptr i8, ptr %12, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.1, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.1 = or disjoint i64 %indvar.i, 2
  %i.n = mul i64 %indvar.next.i.1, %i.h
  %scevgep.i.2 = getelementptr i8, ptr %12, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.2, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.2 = or disjoint i64 %indvar.i, 3
  %i.o = mul i64 %indvar.next.i.2, %i.h
  %scevgep.i.3 = getelementptr i8, ptr %12, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.3, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.3 = or disjoint i64 %indvar.i, 4
  %i.p = mul i64 %indvar.next.i.3, %i.h
  %scevgep.i.4 = getelementptr i8, ptr %12, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.4, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.4 = or disjoint i64 %indvar.i, 5
  %i.q = mul i64 %indvar.next.i.4, %i.h
  %scevgep.i.5 = getelementptr i8, ptr %12, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.5, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.5 = or disjoint i64 %indvar.i, 6
  %i.r = mul i64 %indvar.next.i.5, %i.h
  %scevgep.i.6 = getelementptr i8, ptr %12, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.6, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.6 = or disjoint i64 %indvar.i, 7
  %i.s = mul i64 %indvar.next.i.6, %i.h
  %scevgep.i.7 = getelementptr i8, ptr %12, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.7, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.7 = add nuw nsw i64 %indvar.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader139.i.loopexit.unr-lcssa, label %.preheader140.i, !llvm.loop !214

.preheader139.i.loopexit.unr-lcssa:               ; preds = %.preheader140.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader139.i, label %.preheader140.i.epil.preheader

.preheader140.i.epil.preheader:                   ; preds = %.preheader139.i.loopexit.unr-lcssa, %.preheader140.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader140.preheader.i ], [ %indvar.next.i.7, %.preheader139.i.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.preheader140.i.epil

.preheader140.i.epil:                             ; preds = %.preheader140.i.epil, %.preheader140.i.epil.preheader
  %indvar.i.epil = phi i64 [ %indvar.i.epil.init, %.preheader140.i.epil.preheader ], [ %indvar.next.i.epil, %.preheader140.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader140.i.epil.preheader ], [ %epil.iter.next, %.preheader140.i.epil ]
  %i.t = mul i64 %indvar.i.epil, %i.h
  %scevgep.i.epil = getelementptr i8, ptr %12, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.epil, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader139.i, label %.preheader140.i.epil, !llvm.loop !215

.preheader139.i:                                  ; preds = %.preheader139.i.loopexit.unr-lcssa, %.preheader140.i.epil, %bb.a
  %i.u = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit

.lr.ph.preheader.i:                               ; preds = %.preheader139.i
  %i.v = shl i64 %3, 30
  %i.w = ashr i64 %i.v, 32
  %i.x = select i1 %.not, i64 1, i64 %i.w         ; 7 uses
  %wide.trip.count174.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %xtraiter57 = and i64 %wide.trip.count174.i, 3  ; 3 uses
  %i.y = icmp ult i32 %.sroa.speculated.i, 4
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter62 = and i64 %wide.trip.count174.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0103143.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.as, %.lr.ph.i ]
  %niter63 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter63.next.3, %.lr.ph.i ]
  %i.z = mul nsw i64 %indvars.iv.i, %i.x
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fpext float %i.ab to double
  %i.ad = fadd double %.0103143.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ae = mul nsw i64 %indvars.iv.next.i, %i.x
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  %i.ah = fpext float %i.ag to double
  %i.ai = fadd double %i.ad, %i.ah
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.aj = mul nsw i64 %indvars.iv.next.i.1, %i.x
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  %i.am = fpext float %i.al to double
  %i.an = fadd double %i.ai, %i.am
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.ao = mul nsw i64 %indvars.iv.next.i.2, %i.x
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !20
  %i.ar = fpext float %i.aq to double
  %i.as = fadd double %i.an, %i.ar                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %.lr.ph166.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !216

.lr.ph166.i.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %.lr.ph166.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph166.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph166.i.unr-lcssa ]
  %.0103143.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.as, %.lr.ph166.i.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0103143.i.epil = phi double [ %.0103143.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ax, %.lr.ph.i.epil ]
  %epil.iter58 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter58.next, %.lr.ph.i.epil ]
  %i.at = mul nsw i64 %indvars.iv.i.epil, %i.x
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fpext float %i.av to double
  %i.ax = fadd double %.0103143.i.epil, %i.aw     ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %.lr.ph166.i, label %.lr.ph.i.epil, !llvm.loop !217

.lr.ph166.i:                                      ; preds = %.lr.ph.i.epil, %.lr.ph166.i.unr-lcssa
  %.lcssa55 = phi double [ %i.as, %.lr.ph166.i.unr-lcssa ], [ %i.ax, %.lr.ph.i.epil ]
  %i.ay = fmul double %.lcssa55, f0x3CC0000000000000 ; 2 uses
  %i.az = icmp eq i32 %spec.select.i, 1
  %i.ba = shl i64 %10, 30
  %i.bb = ashr i64 %i.ba, 32                      ; 4 uses
  %i.bc = shl i64 %5, 30
  %i.bd = ashr i64 %i.bc, 32                      ; 2 uses
  %i.be = select i1 %6, i64 1, i64 %i.bd          ; 8 uses
  %wide.trip.count32.i.i = zext i32 %0 to i64     ; 3 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i to i64 ; 15 uses
  %i.bf = shl i64 %i.a, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 4 uses
  %wide.trip.count32.i112.i = zext i32 %1 to i64  ; 3 uses
  %i.bh = select i1 %6, i64 %i.bd, i64 1          ; 2 uses
  %i.bi = shl i64 %8, 30
  %i.bj = ashr i64 %i.bi, 32                      ; 2 uses
  %i.bk = shl nuw nsw i64 %wide.trip.count.i.i, 3
  br i1 %i.az, label %.lr.ph166.i.split.us.preheader, label %.lr.ph166.i.split.preheader

.lr.ph166.i.split.preheader:                      ; preds = %.lr.ph166.i
  %min.iters.check36 = icmp ult i32 %spec.select.i, 4
  %n.vec38 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n49 = icmp eq i64 %n.vec38, %wide.trip.count.i.i
  %min.iters.check22 = icmp ult i32 %spec.select.i, 4
  %n.vec24 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count.i.i
  %min.iters.check8 = icmp ugt i32 %spec.select.i, 3
  %ident.check.not = icmp eq i64 %i.be, 1
  %or.cond = and i1 %min.iters.check8, %ident.check.not
  %n.vec10 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n19 = icmp eq i64 %n.vec10, %wide.trip.count.i.i
  %xtraiter64 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  %i.bl = add nsw i64 %wide.trip.count.i.i, -1
  %min.iters.check = icmp ult i32 %spec.select.i, 4
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph166.i.split

.lr.ph166.i.split.us.preheader:                   ; preds = %.lr.ph166.i
  %xtraiter66 = and i64 %wide.trip.count32.i.i, 1
  %i.bm = icmp eq i32 %0, 1
  %unroll_iter71 = and i64 %wide.trip.count32.i.i, 4294967294
  %lcmp.mod68.not = icmp eq i64 %xtraiter66, 0
  %lcmp.mod70 = trunc i32 %0 to i1
  %xtraiter73 = and i64 %wide.trip.count32.i112.i, 1
  %i.bn = icmp eq i32 %1, 1
  %unroll_iter77 = and i64 %wide.trip.count32.i112.i, 4294967294
  %lcmp.mod75.not = icmp eq i64 %xtraiter73, 0
  %lcmp.mod76 = trunc i32 %1 to i1
  br label %.lr.ph166.i.split.us

.lr.ph166.i.split.us:                             ; preds = %.lr.ph166.i.split.us.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us
  %indvars.iv199.i.us = phi i64 [ %indvars.iv.next200.i.us, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ 0, %.lr.ph166.i.split.us.preheader ] ; 2 uses
  %.0104161.i.us = phi ptr [ %i.dq, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ %4, %.lr.ph166.i.split.us.preheader ] ; 5 uses
  %.0105160.i.us = phi ptr [ %i.dr, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ %7, %.lr.ph166.i.split.us.preheader ] ; 4 uses
  %i.bo = mul nsw i64 %indvars.iv199.i.us, %i.x
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !20
  %i.br = fpext float %i.bq to double             ; 2 uses
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ugt double %i.bs, %i.ay
  br i1 %i.bt, label %bb.b, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us

bb.b:                                             ; preds = %.lr.ph166.i.split.us
  %i.bu = fdiv double 1.000000e+00, %i.br
  br i1 %.not.i, label %.lr.ph155.i.us.epil.preheader, label %.lr.ph155.i.us.preheader

.lr.ph155.i.us.preheader:                         ; preds = %bb.b
  br i1 %i.bm, label %.lr.ph155.us.i.epil.preheader, label %.lr.ph155.i.us

.lr.ph155.i.us:                                   ; preds = %.lr.ph155.i.us.preheader, %.lr.ph155.i.us
  %indvars.iv189.i.us = phi i64 [ %indvars.iv.next190.i.us.1, %.lr.ph155.i.us ], [ 0, %.lr.ph155.i.us.preheader ] ; 4 uses
  %.0154.i.us = phi double [ %i.cm, %.lr.ph155.i.us ], [ 0.000000e+00, %.lr.ph155.i.us.preheader ]
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph155.i.us ], [ 0, %.lr.ph155.i.us.preheader ]
  %i.bv = mul nsw i64 %indvars.iv189.i.us, %i.be
  %i.bw = getelementptr inbounds [4 x i8], ptr %.0104161.i.us, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = mul nsw i64 %indvars.iv189.i.us, %i.bb
  %i.bz = getelementptr inbounds [4 x i8], ptr %9, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !20
  %i.cb = fmul float %i.bx, %i.ca
  %i.cc = fpext float %i.cb to double
  %i.cd = fadd double %.0154.i.us, %i.cc
  %indvars.iv.next190.i.us = or disjoint i64 %indvars.iv189.i.us, 1 ; 2 uses
  %i.ce = mul nsw i64 %indvars.iv.next190.i.us, %i.be
  %i.cf = getelementptr inbounds [4 x i8], ptr %.0104161.i.us, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20
  %i.ch = mul nsw i64 %indvars.iv.next190.i.us, %i.bb
  %i.ci = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !20
  %i.ck = fmul float %i.cg, %i.cj
  %i.cl = fpext float %i.ck to double
  %i.cm = fadd double %i.cd, %i.cl                ; 3 uses
  %indvars.iv.next190.i.us.1 = add nuw nsw i64 %indvars.iv189.i.us, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.lr.ph159.preheader.us.i.loopexit.unr-lcssa, label %.lr.ph155.i.us, !llvm.loop !218

.lr.ph155.i.us.epil.preheader:                    ; preds = %bb.b
  %i.cn = load float, ptr %.0104161.i.us, align 4, !tbaa !20
  %i.co = fpext float %i.cn to double
  br label %.lr.ph159.preheader.us.i

.lr.ph159.i.us:                                   ; preds = %.lr.ph159.preheader.us.i, %.lr.ph159.i.us
  %indvars.iv194.i.us = phi i64 [ %indvars.iv.next195.i.us.1, %.lr.ph159.i.us ], [ 0, %.lr.ph159.preheader.us.i ] ; 4 uses
  %niter78 = phi i64 [ %niter78.next.1, %.lr.ph159.i.us ], [ 0, %.lr.ph159.preheader.us.i ]
  %i.cp = mul nsw i64 %indvars.iv194.i.us, %i.bg
  %i.cq = getelementptr inbounds [4 x i8], ptr %12, i64 %i.cp ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = fpext float %i.cr to double
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv194.i.us
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20
  %i.cv = fpext float %i.cu to double
  %i.cw = tail call double @llvm.fmuladd.f64(double %24, double %i.cv, double %i.cs)
  %i.cx = fptrunc double %i.cw to float
  store float %i.cx, ptr %i.cq, align 4, !tbaa !20
  %indvars.iv.next195.i.us = or disjoint i64 %indvars.iv194.i.us, 1 ; 2 uses
  %i.cy = mul nsw i64 %indvars.iv.next195.i.us, %i.bg
  %i.cz = getelementptr inbounds [4 x i8], ptr %12, i64 %i.cy ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !20
  %i.db = fpext float %i.da to double
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv.next195.i.us
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !20
  %i.de = fpext float %i.dd to double
  %i.df = tail call double @llvm.fmuladd.f64(double %24, double %i.de, double %i.db)
  %i.dg = fptrunc double %i.df to float
  store float %i.dg, ptr %i.cz, align 4, !tbaa !20
  %indvars.iv.next195.i.us.1 = add nuw nsw i64 %indvars.iv194.i.us, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, label %.lr.ph159.i.us, !llvm.loop !219

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa: ; preds = %.lr.ph159.i.us
  br i1 %lcmp.mod75.not, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us, label %.lr.ph159.i.us.epil.preheader

.lr.ph159.i.us.epil.preheader:                    ; preds = %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, %.lr.ph159.preheader.us.i
  %indvars.iv194.i.us.epil.init = phi i64 [ 0, %.lr.ph159.preheader.us.i ], [ %indvars.iv.next195.i.us.1, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.dh = mul nsw i64 %indvars.iv194.i.us.epil.init, %i.bg
  %i.di = getelementptr inbounds [4 x i8], ptr %12, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  %i.dk = fpext float %i.dj to double
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv194.i.us.epil.init
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dn = fpext float %i.dm to double
  %i.do = tail call double @llvm.fmuladd.f64(double %24, double %i.dn, double %i.dk)
  %i.dp = fptrunc double %i.do to float
  store float %i.dp, ptr %i.di, align 4, !tbaa !20
  br label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us: ; preds = %.lr.ph159.i.us.epil.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, %.lr.ph166.i.split.us
  %indvars.iv.next200.i.us = add nuw nsw i64 %indvars.iv199.i.us, 1 ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %.0104161.i.us, i64 %i.bh
  %i.dr = getelementptr inbounds [4 x i8], ptr %.0105160.i.us, i64 %i.bj
  %exitcond203.not.i.us = icmp eq i64 %indvars.iv.next200.i.us, %wide.trip.count174.i
  br i1 %exitcond203.not.i.us, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph166.i.split.us, !llvm.loop !220

.lr.ph159.preheader.us.i.loopexit.unr-lcssa:      ; preds = %.lr.ph155.i.us
  br i1 %lcmp.mod68.not, label %.lr.ph159.preheader.us.i, label %.lr.ph155.us.i.epil.preheader

.lr.ph155.us.i.epil.preheader:                    ; preds = %.lr.ph159.preheader.us.i.loopexit.unr-lcssa, %.lr.ph155.i.us.preheader
  %indvars.iv189.us.i.epil.init = phi i64 [ 0, %.lr.ph155.i.us.preheader ], [ %indvars.iv.next190.i.us.1, %.lr.ph159.preheader.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.0154.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph155.i.us.preheader ], [ %i.cm, %.lr.ph159.preheader.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %15 = mul nsw i64 %indvars.iv189.us.i.epil.init, %i.be
  %16 = getelementptr inbounds [4 x i8], ptr %.0104161.i.us, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !20
  %18 = mul nsw i64 %indvars.iv189.us.i.epil.init, %i.bb
  %19 = getelementptr inbounds [4 x i8], ptr %9, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !20
  %21 = fmul float %17, %20
  %22 = fpext float %21 to double
  %23 = fadd double %.0154.us.i.epil.init, %22
  br label %.lr.ph159.preheader.us.i

.lr.ph159.preheader.us.i:                         ; preds = %.lr.ph155.us.i.epil.preheader, %.lr.ph159.preheader.us.i.loopexit.unr-lcssa, %.lr.ph155.i.us.epil.preheader
  %.1.us.i = phi double [ %i.co, %.lr.ph155.i.us.epil.preheader ], [ %i.cm, %.lr.ph159.preheader.us.i.loopexit.unr-lcssa ], [ %23, %.lr.ph155.us.i.epil.preheader ]
  %24 = fmul double %i.bu, %.1.us.i               ; 3 uses
  br i1 %i.bn, label %.lr.ph159.i.us.epil.preheader, label %.lr.ph159.i.us

.lr.ph166.i.split:                                ; preds = %.lr.ph166.i.split.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ 0, %.lr.ph166.i.split.preheader ] ; 2 uses
  %.0104161.i = phi ptr [ %i.hb, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ %4, %.lr.ph166.i.split.preheader ] ; 6 uses
  %.0105160.i = phi ptr [ %i.hc, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ %7, %.lr.ph166.i.split.preheader ] ; 2 uses
  %i.ds = mul nsw i64 %indvars.iv199.i, %i.x
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !20
  %i.dv = fpext float %i.du to double             ; 2 uses
  %i.dw = tail call noundef double @llvm.fabs.f64(double %i.dv)
  %i.dx = fcmp ugt double %i.dw, %i.ay
  br i1 %i.dx, label %bb.c, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

bb.c:                                             ; preds = %.lr.ph166.i.split
  %i.dy = fdiv double 1.000000e+00, %i.dv         ; 6 uses
  br i1 %.not.i, label %.preheader135.i, label %.preheader138.i

.preheader138.i:                                  ; preds = %bb.c
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

.preheader135.i:                                  ; preds = %bb.c
  br i1 %i.g, label %.lr.ph152.i.preheader, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

.lr.ph152.i.preheader:                            ; preds = %.preheader135.i
  br i1 %or.cond, label %vector.ph9, label %.lr.ph152.i.preheader51

vector.ph9:                                       ; preds = %.lr.ph152.i.preheader
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body13

vector.body13:                                    ; preds = %vector.body13, %vector.ph9
  %index14 = phi i64 [ 0, %vector.ph9 ], [ %index.next17, %vector.body13 ] ; 3 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %.0104161.i, i64 %index14 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %wide.load15 = load <2 x float>, ptr %i.dz, align 4, !tbaa !20
  %wide.load16 = load <2 x float>, ptr %i.ea, align 4, !tbaa !20
  %i.eb = fpext <2 x float> %wide.load15 to <2 x double>
  %i.ec = fpext <2 x float> %wide.load16 to <2 x double>
  %i.ed = fmul <2 x double> %broadcast.splat12, %i.eb
  %i.ee = fmul <2 x double> %broadcast.splat12, %i.ec
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index14 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x double> %i.ed, ptr %i.ef, align 8, !tbaa !18
  store <2 x double> %i.ee, ptr %i.eg, align 8, !tbaa !18
  %index.next17 = add nuw i64 %index14, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next17, %n.vec10
  br i1 %i.eh, label %middle.block18, label %vector.body13, !llvm.loop !221

middle.block18:                                   ; preds = %vector.body13
  br i1 %cmp.n19, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i.preheader51

.lr.ph152.i.preheader51:                          ; preds = %.lr.ph152.i.preheader, %middle.block18
  %indvars.iv184.i.ph = phi i64 [ 0, %.lr.ph152.i.preheader ], [ %n.vec10, %middle.block18 ] ; 5 uses
  br i1 %lcmp.mod65.not, label %.lr.ph152.i.prol.loopexit, label %.lr.ph152.i.prol

.lr.ph152.i.prol:                                 ; preds = %.lr.ph152.i.preheader51
  %i.ei = mul nsw i64 %indvars.iv184.i.ph, %i.be
  %i.ej = getelementptr inbounds [4 x i8], ptr %.0104161.i, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !20
  %i.el = fpext float %i.ek to double
  %i.em = fmul double %i.dy, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv184.i.ph
  store double %i.em, ptr %i.en, align 8, !tbaa !18
  %indvars.iv.next185.i.prol = or disjoint i64 %indvars.iv184.i.ph, 1
  br label %.lr.ph152.i.prol.loopexit

.lr.ph152.i.prol.loopexit:                        ; preds = %.lr.ph152.i.prol, %.lr.ph152.i.preheader51
  %indvars.iv184.i.unr = phi i64 [ %indvars.iv184.i.ph, %.lr.ph152.i.preheader51 ], [ %indvars.iv.next185.i.prol, %.lr.ph152.i.prol ]
  %i.eo = icmp eq i64 %indvars.iv184.i.ph, %i.bl
  br i1 %i.eo, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader138.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.bk, i1 false), !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.i.preheader.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02023.i.i = phi ptr [ %i.fk, %._crit_edge.i.i ], [ %9, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ep = mul nsw i64 %indvars.iv29.i.i, %i.be
  %i.eq = getelementptr inbounds [4 x i8], ptr %.0104161.i, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !20 ; 2 uses
  br i1 %min.iters.check36, label %scalar.ph35.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert39 = insertelement <2 x float> poison, float %i.er, i64 0
  %broadcast.splat40 = shufflevector <2 x float> %broadcast.splatinsert39, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph37
  %index42 = phi i64 [ 0, %vector.ph37 ], [ %index.next47, %vector.body41 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index42 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load43 = load <2 x double>, ptr %i.es, align 8, !tbaa !18
  %wide.load44 = load <2 x double>, ptr %i.et, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.02023.i.i, i64 %index42 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %wide.load45 = load <2 x float>, ptr %i.eu, align 4, !tbaa !20
  %wide.load46 = load <2 x float>, ptr %i.ev, align 4, !tbaa !20
  %i.ew = fmul <2 x float> %broadcast.splat40, %wide.load45
  %i.ex = fmul <2 x float> %broadcast.splat40, %wide.load46
  %i.ey = fpext <2 x float> %i.ew to <2 x double>
  %i.ez = fpext <2 x float> %i.ex to <2 x double>
  %i.fa = fadd <2 x double> %wide.load43, %i.ey
  %i.fb = fadd <2 x double> %wide.load44, %i.ez
  store <2 x double> %i.fa, ptr %i.es, align 8, !tbaa !18
  store <2 x double> %i.fb, ptr %i.et, align 8, !tbaa !18
  %index.next47 = add nuw i64 %index42, 4         ; 2 uses
  %i.fc = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.fc, label %middle.block48, label %vector.body41, !llvm.loop !222

middle.block48:                                   ; preds = %vector.body41
  br i1 %cmp.n49, label %._crit_edge.i.i, label %scalar.ph35.preheader

scalar.ph35.preheader:                            ; preds = %.lr.ph.i.i, %middle.block48
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec38, %middle.block48 ]
  br label %scalar.ph35

scalar.ph35:                                      ; preds = %scalar.ph35.preheader, %scalar.ph35
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph35 ], [ %indvars.iv.i.i.ph, %scalar.ph35.preheader ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.02023.i.i, i64 %indvars.iv.i.i
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !20
  %i.fh = fmul float %i.er, %i.fg
  %i.fi = fpext float %i.fh to double
  %i.fj = fadd double %i.fe, %i.fi
  store double %i.fj, ptr %i.fd, align 8, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph35, !llvm.loop !223

._crit_edge.i.i:                                  ; preds = %scalar.ph35, %middle.block48
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %.02023.i.i, i64 %i.bb
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %wide.trip.count32.i.i
  br i1 %exitcond33.not.i.i, label %.lr.ph150.i.preheader, label %.lr.ph.i.i, !llvm.loop !224

.lr.ph150.i.preheader:                            ; preds = %._crit_edge.i.i
  br i1 %min.iters.check22, label %.lr.ph150.i.preheader52, label %vector.ph23

vector.ph23:                                      ; preds = %.lr.ph150.i.preheader
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat26 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph23
  %index28 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body27 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index28 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load29 = load <2 x double>, ptr %i.fl, align 8, !tbaa !18
  %wide.load30 = load <2 x double>, ptr %i.fm, align 8, !tbaa !18
  %i.fn = fmul <2 x double> %broadcast.splat26, %wide.load29
  %i.fo = fmul <2 x double> %broadcast.splat26, %wide.load30
  store <2 x double> %i.fn, ptr %i.fl, align 8, !tbaa !18
  store <2 x double> %i.fo, ptr %i.fm, align 8, !tbaa !18
  %index.next31 = add nuw i64 %index28, 4         ; 2 uses
  %i.fp = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.fp, label %middle.block32, label %vector.body27, !llvm.loop !225

middle.block32:                                   ; preds = %vector.body27
  br i1 %cmp.n33, label %.lr.ph.i114.i.preheader, label %.lr.ph150.i.preheader52

.lr.ph150.i.preheader52:                          ; preds = %.lr.ph150.i.preheader, %middle.block32
  %indvars.iv179.i.ph = phi i64 [ 0, %.lr.ph150.i.preheader ], [ %n.vec24, %middle.block32 ]
  br label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader52, %.lr.ph150.i
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %.lr.ph150.i ], [ %indvars.iv179.i.ph, %.lr.ph150.i.preheader52 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv179.i ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !18
  %i.fs = fmul double %i.dy, %i.fr
  store double %i.fs, ptr %i.fq, align 8, !tbaa !18
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %wide.trip.count.i.i
  br i1 %exitcond183.not.i, label %.lr.ph.i114.i.preheader, label %.lr.ph150.i, !llvm.loop !226

.lr.ph152.i:                                      ; preds = %.lr.ph152.i.prol.loopexit, %.lr.ph152.i
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %.lr.ph152.i ], [ %indvars.iv184.i.unr, %.lr.ph152.i.prol.loopexit ] ; 4 uses
  %i.ft = mul nsw i64 %indvars.iv184.i, %i.be
  %i.fu = getelementptr inbounds [4 x i8], ptr %.0104161.i, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !20
  %i.fw = fpext float %i.fv to double
  %i.fx = fmul double %i.dy, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv184.i
  store double %i.fx, ptr %i.fy, align 8, !tbaa !18
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.fz = mul nsw i64 %indvars.iv.next185.i, %i.be
  %i.ga = getelementptr inbounds [4 x i8], ptr %.0104161.i, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !20
  %i.gc = fpext float %i.gb to double
  %i.gd = fmul double %i.dy, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next185.i
  store double %i.gd, ptr %i.ge, align 8, !tbaa !18
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 2 uses
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %wide.trip.count.i.i
  br i1 %exitcond188.not.i.1, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i, !llvm.loop !227

.lr.ph.i114.i.preheader:                          ; preds = %.lr.ph150.i, %.lr.ph152.i.prol.loopexit, %.lr.ph152.i, %middle.block32, %middle.block18
  br label %.lr.ph.i114.i

end_hunk_0
