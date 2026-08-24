Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_convolution?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dpm17ConvolutionEngine8convolveERKNS_3MatES4_iii:bb.a
  %.120.us.epil = phi double [ %.120.us.epil.init, %.epil.preheader ], [ %i.au, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %gep.us, i64 %indvars.iv.epil
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.epil
  %i.at = load double, ptr %i.as, align 8, !tbaa !21
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.at, double %.120.us.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !25

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.ap, %._crit_edge.us.unr-lcssa ], [ %i.au, %bb.b ] ; 2 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge26, label %.lr.ph.us, !llvm.loop !27

._crit_edge26:                                    ; preds = %._crit_edge.us, %.lr.ph25, %bb.a
  %.019.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.lr.ph25 ], [ %.lcssa, %._crit_edge.us ]
  ret double %.019.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv3dpm17ConvolutionEngine8convolveERKNS_3MatES4_iRS2_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge47

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = load ptr, ptr %i.m, align 8
  %i.s = load i64, ptr %i.n, align 8
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = load i64, ptr %i.p, align 8
  %i.v = load i32, ptr %i.q, align 4              ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.j, label %.lr.ph.split.us, label %._crit_edge47

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.x = icmp sgt i32 %i.l, 0
  br i1 %i.x, label %.lr.ph.split.us.split.us, label %.preheader.lr.ph.us.preheader

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph.split.us
  %i.y = zext nneg i32 %i.i to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.aa = icmp ult i32 %i.b, 8
  br i1 %i.aa, label %.preheader.lr.ph.us.epil.preheader, label %.preheader.lr.ph.us.preheader.new

.preheader.lr.ph.us.preheader.new:                ; preds = %.preheader.lr.ph.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader.lr.ph.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.w, label %.preheader.lr.ph.us.us.us.preheader, label %.preheader.lr.ph.us.us.preheader

.preheader.lr.ph.us.us.preheader:                 ; preds = %.lr.ph.split.us.split.us
  %i.ab = zext nneg i32 %i.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 9 uses
  %wide.trip.count67 = zext nneg i32 %i.b to i64  ; 2 uses
  %xtraiter99 = and i64 %wide.trip.count67, 7     ; 3 uses
  %i.ad = icmp ult i32 %i.b, 8
  br i1 %i.ad, label %.preheader.lr.ph.us.us.epil.preheader, label %.preheader.lr.ph.us.us.preheader.new

.preheader.lr.ph.us.us.preheader.new:             ; preds = %.preheader.lr.ph.us.us.preheader
  %unroll_iter103 = and i64 %wide.trip.count67, 2147483640
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us.us.preheader:              ; preds = %.lr.ph.split.us.split.us
  %i.ae = sext i32 %3 to i64
  %wide.trip.count87 = zext nneg i32 %i.b to i64
  %wide.trip.count82 = zext nneg i32 %i.i to i64
  %wide.trip.count77 = zext nneg i32 %i.l to i64
  %wide.trip.count72 = zext nneg i32 %i.v to i64  ; 2 uses
  %xtraiter105 = and i64 %wide.trip.count72, 3    ; 3 uses
  %i.af = icmp ult i32 %i.v, 4
  %unroll_iter110 = and i64 %wide.trip.count72, 2147483644
  %lcmp.mod107.not = icmp eq i64 %xtraiter105, 0
  %lcmp.mod109 = icmp ne i64 %xtraiter105, 0
  br label %.preheader.lr.ph.us.us.us

.preheader.lr.ph.us.us.us:                        ; preds = %.preheader.lr.ph.us.us.us.preheader, %._crit_edge.split.us.split.us.us.us.us
  %indvars.iv84 = phi i64 [ 0, %.preheader.lr.ph.us.us.us.preheader ], [ %indvars.iv.next85, %._crit_edge.split.us.split.us.us.us.us ] ; 3 uses
  %i.ag = mul i64 %i.g, %indvars.iv84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ag
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge37.split.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %._crit_edge37.split.us.us.us.us.us.us ], [ 0, %.preheader.lr.ph.us.us.us ] ; 3 uses
  %i.ai = mul nsw i64 %indvars.iv79, %i.ae
  %invariant.gep.us.us.us.us.us = getelementptr [8 x i8], ptr %i.r, i64 %i.ai
  br label %.lr.ph.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader.us.us.us.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us ] ; 3 uses
  %.02934.us.us.us.us.us.us = phi double [ %.lcssa, %._crit_edge.us.us.us.us.us.us ], [ 0.000000e+00, %.preheader.us.us.us.us.us ] ; 2 uses
  %i.aj = add nuw nsw i64 %indvars.iv74, %indvars.iv84
  %i.ak = mul i64 %i.s, %i.aj
  %gep.us.us.us.us.us.us = getelementptr i8, ptr %invariant.gep.us.us.us.us.us, i64 %i.ak ; 5 uses
  %i.al = mul i64 %i.u, %indvars.iv74
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.al ; 5 uses
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.us.new:                     ; preds = %.lr.ph.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.new
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ] ; 6 uses
  %.132.us.us.us.us.us.us = phi double [ %i.bg, %.lr.ph.us.us.us.us.us.us.new ], [ %.02934.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us ]
  %niter111 = phi i64 [ %niter111.next.3, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %gep.us.us.us.us.us.us, i64 %indvars.iv69
  %i.ao = load double, ptr %i.an, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv69
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !21
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.aq, double %.132.us.us.us.us.us.us)
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %gep.us.us.us.us.us.us, i64 %indvars.iv.next70
  %i.at = load double, ptr %i.as, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next70
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ar)
  %indvars.iv.next70.1 = or disjoint i64 %indvars.iv69, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %gep.us.us.us.us.us.us, i64 %indvars.iv.next70.1
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next70.1
  %i.ba = load double, ptr %i.az, align 8, !tbaa !21
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ba, double %i.aw)
  %indvars.iv.next70.2 = or disjoint i64 %indvars.iv69, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %gep.us.us.us.us.us.us, i64 %indvars.iv.next70.2
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next70.2
  %i.bf = load double, ptr %i.be, align 8, !tbaa !21
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bb) ; 3 uses
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %niter111.next.3 = add i64 %niter111, 4         ; 2 uses
  %niter111.ncmp.3 = icmp eq i64 %niter111.next.3, %unroll_iter110
  br i1 %niter111.ncmp.3, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !28

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod107.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us.us
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %indvars.iv.next70.3, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  %.132.us.us.us.us.us.us.epil.init = phi double [ %.02934.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us ], [ %i.bg, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv69.epil = phi i64 [ %indvars.iv.next70.epil, %bb.b ], [ %indvars.iv69.epil.init, %.epil.preheader ] ; 3 uses
  %.132.us.us.us.us.us.us.epil = phi double [ %i.bl, %bb.b ], [ %.132.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter106 = phi i64 [ %epil.iter106.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %gep.us.us.us.us.us.us, i64 %indvars.iv69.epil
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv69.epil
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !21
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %.132.us.us.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next70.epil = add nuw nsw i64 %indvars.iv69.epil, 1
  %epil.iter106.next = add i64 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i64 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %._crit_edge.us.us.us.us.us.us, label %bb.b, !llvm.loop !29

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.b, %._crit_edge.us.us.us.us.us.us.unr-lcssa
  %.lcssa = phi double [ %i.bg, %._crit_edge.us.us.us.us.us.us.unr-lcssa ], [ %i.bl, %bb.b ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge37.split.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !30

._crit_edge37.split.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv79
  store double %.lcssa, ptr %i.bm, align 8, !tbaa !21
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !31

._crit_edge.split.us.split.us.us.us.us:           ; preds = %._crit_edge37.split.us.us.us.us.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge47, label %.preheader.lr.ph.us.us.us, !llvm.loop !32

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us, %.preheader.lr.ph.us.us.preheader.new
  %indvars.iv64 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader.new ], [ %indvars.iv.next65.7, %.preheader.lr.ph.us.us ] ; 9 uses
  %niter104 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader.new ], [ %niter104.next.7, %.preheader.lr.ph.us.us ]
  %i.bn = mul i64 %i.g, %indvars.iv64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bn
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65 = or disjoint i64 %indvars.iv64, 1
  %i.bp = mul i64 %i.g, %indvars.iv.next65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bp
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.1 = or disjoint i64 %indvars.iv64, 2
  %i.br = mul i64 %i.g, %indvars.iv.next65.1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.br
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.2 = or disjoint i64 %indvars.iv64, 3
  %i.bt = mul i64 %i.g, %indvars.iv.next65.2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.3 = or disjoint i64 %indvars.iv64, 4
  %i.bv = mul i64 %i.g, %indvars.iv.next65.3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bv
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.4 = or disjoint i64 %indvars.iv64, 5
  %i.bx = mul i64 %i.g, %indvars.iv.next65.4
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bx
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.5 = or disjoint i64 %indvars.iv64, 6
  %i.bz = mul i64 %i.g, %indvars.iv.next65.5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bz
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.6 = or disjoint i64 %indvars.iv64, 7
  %i.cb = mul i64 %i.g, %indvars.iv.next65.6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cc, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.7 = add nuw nsw i64 %indvars.iv64, 8 ; 2 uses
  %niter104.next.7 = add i64 %niter104, 8         ; 2 uses
  %niter104.ncmp.7 = icmp eq i64 %niter104.next.7, %unroll_iter103
  br i1 %niter104.ncmp.7, label %._crit_edge47.loopexit96.unr-lcssa, label %.preheader.lr.ph.us.us, !llvm.loop !32

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us, %.preheader.lr.ph.us.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.us.preheader.new ], [ %indvars.iv.next.7, %.preheader.lr.ph.us ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.us.preheader.new ], [ %niter.next.7, %.preheader.lr.ph.us ]
  %i.cd = mul i64 %i.g, %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.cf = mul i64 %i.g, %indvars.iv.next
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cf
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.ch = mul i64 %i.g, %indvars.iv.next.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ch
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.cj = mul i64 %i.g, %indvars.iv.next.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cj
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4
  %i.cl = mul i64 %i.g, %indvars.iv.next.3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cl
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5
  %i.cn = mul i64 %i.g, %indvars.iv.next.4
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cn
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.co, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6
  %i.cp = mul i64 %i.g, %indvars.iv.next.5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cp
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cq, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7
  %i.cr = mul i64 %i.g, %indvars.iv.next.6
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cs, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge47.loopexit97.unr-lcssa, label %.preheader.lr.ph.us, !llvm.loop !32

._crit_edge47.loopexit96.unr-lcssa:               ; preds = %.preheader.lr.ph.us.us
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %._crit_edge47, label %.preheader.lr.ph.us.us.epil.preheader

.preheader.lr.ph.us.us.epil.preheader:            ; preds = %._crit_edge47.loopexit96.unr-lcssa, %.preheader.lr.ph.us.us.preheader
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next65.7, %._crit_edge47.loopexit96.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter99, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.preheader.lr.ph.us.us.epil

.preheader.lr.ph.us.us.epil:                      ; preds = %.preheader.lr.ph.us.us.epil, %.preheader.lr.ph.us.us.epil.preheader
  %indvars.iv64.epil = phi i64 [ %indvars.iv64.epil.init, %.preheader.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next65.epil, %.preheader.lr.ph.us.us.epil ] ; 2 uses
  %epil.iter100 = phi i64 [ 0, %.preheader.lr.ph.us.us.epil.preheader ], [ %epil.iter100.next, %.preheader.lr.ph.us.us.epil ]
  %i.ct = mul i64 %i.g, %indvars.iv64.epil
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ct
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %i.ac, i1 false), !tbaa !21
  %indvars.iv.next65.epil = add nuw nsw i64 %indvars.iv64.epil, 1
  %epil.iter100.next = add i64 %epil.iter100, 1   ; 2 uses
  %epil.iter100.cmp.not = icmp eq i64 %epil.iter100.next, %xtraiter99
  br i1 %epil.iter100.cmp.not, label %._crit_edge47, label %.preheader.lr.ph.us.us.epil, !llvm.loop !33

._crit_edge47.loopexit97.unr-lcssa:               ; preds = %.preheader.lr.ph.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge47, label %.preheader.lr.ph.us.epil.preheader

.preheader.lr.ph.us.epil.preheader:               ; preds = %._crit_edge47.loopexit97.unr-lcssa, %.preheader.lr.ph.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next.7, %._crit_edge47.loopexit97.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %.preheader.lr.ph.us.epil

.preheader.lr.ph.us.epil:                         ; preds = %.preheader.lr.ph.us.epil, %.preheader.lr.ph.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.lr.ph.us.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.lr.ph.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.us.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.us.epil ]
  %i.cv = mul i64 %i.g, %indvars.iv.epil
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cv
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cw, i8 0, i64 %i.z, i1 false), !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge47, label %.preheader.lr.ph.us.epil, !llvm.loop !34

._crit_edge47:                                    ; preds = %._crit_edge47.loopexit97.unr-lcssa, %.preheader.lr.ph.us.epil, %._crit_edge47.loopexit96.unr-lcssa, %.preheader.lr.ph.us.us.epil, %._crit_edge.split.us.split.us.us.us.us, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !13, i64 64, !14, i64 72, !16, i64 128}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!13 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!14 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !15, i64 4, !5, i64 8, !6, i64 12}
!15 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!16 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!17 = !{!9, !10, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!9, !5, i64 12}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
end_hunk_0
