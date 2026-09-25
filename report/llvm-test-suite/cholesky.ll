Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cholesky?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a

.preheader.._crit_edge_crit_edge.i46:             ; preds = %.preheader.i27
  %.pre.i47 = load double, ptr %i.fz, align 8, !tbaa !9
  br label %._crit_edge.i35

.lr.ph.i30:                                       ; preds = %.preheader.i27
  %i.gc = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv55.i28 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv55.i28 ; 4 uses
  %.promoted.i31 = load double, ptr %i.gd, align 8, !tbaa !9 ; 2 uses
  %xtraiter151 = and i64 %indvars.iv55.i28, 1
  %i.ge = icmp eq i64 %indvars.iv55.i28, 1
  br i1 %i.ge, label %.epil.preheader150, label %.lr.ph.i30.new

.lr.ph.i30.new:                                   ; preds = %.lr.ph.i30
  %unroll_iter157 = and i64 %indvars.iv55.i28, 9223372036854775806
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i30.new
  %indvars.iv.i32 = phi i64 [ 0, %.lr.ph.i30.new ], [ %indvars.iv.next.i33.1, %bb.i ] ; 4 uses
  %i.gf = phi double [ %.promoted.i31, %.lr.ph.i30.new ], [ %i.gr, %bb.i ]
  %niter158 = phi i64 [ 0, %.lr.ph.i30.new ], [ %niter158.next.1, %bb.i ]
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.i32
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !9
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i32
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !9
  %i.gk = fmul double %i.gh, %i.gj
  %i.gl = fsub double %i.gf, %i.gk                ; 2 uses
  store double %i.gl, ptr %i.gd, align 8, !tbaa !9
  %indvars.iv.next.i33 = or disjoint i64 %indvars.iv.i32, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next.i33
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next.i33
  %i.gp = load double, ptr %i.go, align 8, !tbaa !9
  %i.gq = fmul double %i.gn, %i.gp
  %i.gr = fsub double %i.gl, %i.gq                ; 4 uses
  store double %i.gr, ptr %i.gd, align 8, !tbaa !9
  %indvars.iv.next.i33.1 = add nuw nsw i64 %indvars.iv.i32, 2 ; 2 uses
  %niter158.next.1 = add i64 %niter158, 2         ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.i35.loopexit.unr-lcssa, label %bb.i, !llvm.loop !32

._crit_edge.i35.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod154.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod154.not, label %._crit_edge.i35, label %.epil.preheader150

.epil.preheader150:                               ; preds = %._crit_edge.i35.loopexit.unr-lcssa, %.lr.ph.i30
  %indvars.iv.i32.epil.init = phi i64 [ 0, %.lr.ph.i30 ], [ %indvars.iv.next.i33.1, %._crit_edge.i35.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init153 = phi double [ %.promoted.i31, %.lr.ph.i30 ], [ %i.gr, %._crit_edge.i35.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i64 %indvars.iv55.i28 to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.i32.epil.init
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i32.epil.init
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !9
  %i.gw = fmul double %i.gt, %i.gv
  %i.gx = fsub double %.epil.init153, %i.gw       ; 2 uses
  store double %i.gx, ptr %i.gd, align 8, !tbaa !9
  br label %._crit_edge.i35

._crit_edge.i35:                                  ; preds = %.epil.preheader150, %._crit_edge.i35.loopexit.unr-lcssa, %.preheader.._crit_edge_crit_edge.i46
  %i.gy = phi double [ %.pre.i47, %.preheader.._crit_edge_crit_edge.i46 ], [ %i.gr, %._crit_edge.i35.loopexit.unr-lcssa ], [ %i.gx, %.epil.preheader150 ]
  %i.gz = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv55.i28
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv55.i28
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !9
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv55.i28
  %i.hd = fdiv double %i.gy, %i.hb
  store double %i.hd, ptr %i.hc, align 8, !tbaa !9
  %indvars.iv.next56.i36 = add nuw nsw i64 %indvars.iv55.i28, 1 ; 2 uses
  %exitcond59.not.i37 = icmp eq i64 %indvars.iv.next56.i36, %indvars.iv64.i24
  br i1 %exitcond59.not.i37, label %.lr.ph48.i38, label %.preheader.i27, !llvm.loop !33

bb.j:                                             ; preds = %bb.j, %.lr.ph48.i38.new
  %indvars.iv60.i40 = phi i64 [ 0, %.lr.ph48.i38.new ], [ %indvars.iv.next61.i41.3, %bb.j ] ; 5 uses
  %i.he = phi double [ %.promoted50.i39, %.lr.ph48.i38.new ], [ %i.hx, %bb.j ]
  %niter167 = phi i64 [ 0, %.lr.ph48.i38.new ], [ %niter167.next.3, %bb.j ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv60.i40
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !9 ; 2 uses
  %i.hh = fmul double %i.hg, %i.hg
  %i.hi = fsub double %i.he, %i.hh                ; 2 uses
  store double %i.hi, ptr %i.ga, align 8, !tbaa !9
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv60.i40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9 ; 2 uses
  %i.hm = fmul double %i.hl, %i.hl
  %i.hn = fsub double %i.hi, %i.hm                ; 2 uses
  store double %i.hn, ptr %i.ga, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv60.i40
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !9 ; 2 uses
  %i.hr = fmul double %i.hq, %i.hq
  %i.hs = fsub double %i.hn, %i.hr                ; 2 uses
  store double %i.hs, ptr %i.ga, align 8, !tbaa !9
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv60.i40
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !9 ; 2 uses
  %i.hw = fmul double %i.hv, %i.hv
  %i.hx = fsub double %i.hs, %i.hw                ; 4 uses
  store double %i.hx, ptr %i.ga, align 8, !tbaa !9
  %indvars.iv.next61.i41.3 = add nuw nsw i64 %indvars.iv60.i40, 4 ; 2 uses
  %niter167.next.3 = add i64 %niter167, 4         ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %._crit_edge49.i43.loopexit.unr-lcssa, label %bb.j, !llvm.loop !34

._crit_edge49.i43.loopexit.unr-lcssa:             ; preds = %bb.j
  %lcmp.mod163.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod163.not, label %._crit_edge49.i43, label %.epil.preheader159

.epil.preheader159:                               ; preds = %._crit_edge49.i43.loopexit.unr-lcssa, %.lr.ph48.i38
  %indvars.iv60.i40.epil.init = phi i64 [ 0, %.lr.ph48.i38 ], [ %indvars.iv.next61.i41.3, %._crit_edge49.i43.loopexit.unr-lcssa ]
  %.epil.init162 = phi double [ %.promoted50.i39, %.lr.ph48.i38 ], [ %i.hx, %._crit_edge49.i43.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter160, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader159
  %indvars.iv60.i40.epil = phi i64 [ %indvars.iv60.i40.epil.init, %.epil.preheader159 ], [ %indvars.iv.next61.i41.epil, %bb.k ] ; 2 uses
  %i.hy = phi double [ %.epil.init162, %.epil.preheader159 ], [ %i.ic, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader159 ], [ %epil.iter.next, %bb.k ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv60.i40.epil
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !9 ; 2 uses
  %i.ib = fmul double %i.ia, %i.ia
  %i.ic = fsub double %i.hy, %i.ib                ; 3 uses
  store double %i.ic, ptr %i.ga, align 8, !tbaa !9
  %indvars.iv.next61.i41.epil = add nuw nsw i64 %indvars.iv60.i40.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter160
  br i1 %epil.iter.cmp.not, label %._crit_edge49.i43, label %bb.k, !llvm.loop !35

._crit_edge49.i43:                                ; preds = %._crit_edge49.i43.loopexit.unr-lcssa, %bb.k, %.preheader43.._crit_edge49_crit_edge.i48
  %i.id = phi double [ %.pre70.i49, %.preheader43.._crit_edge49_crit_edge.i48 ], [ %i.hx, %._crit_edge49.i43.loopexit.unr-lcssa ], [ %i.ic, %bb.k ]
  %i.ie = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv64.i24
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv64.i24
  %i.ig = call double @sqrt(double noundef %i.id) #15, !tbaa !7
  store double %i.ig, ptr %i.if, align 8, !tbaa !9
  %indvars.iv.next65.i44 = add nuw nsw i64 %indvars.iv64.i24, 1 ; 2 uses
  %exitcond67.not.i45 = icmp eq i64 %indvars.iv.next65.i44, 2000
  br i1 %exitcond67.not.i45, label %.preheader.i50, label %.preheader44.i23, !llvm.loop !36

.preheader.i50:                                   ; preds = %._crit_edge49.i43, %bb.m
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.m ], [ 0, %._crit_edge49.i43 ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv39.i ; 2 uses
  %i.ii = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv39.i ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.1, %.preheader.i50
  %indvars.iv.i51 = phi i64 [ 0, %.preheader.i50 ], [ %indvars.iv.next.i52.1, %.critedge.i.1 ] ; 5 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.i51
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !9 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i51
  %i.im = load double, ptr %i.il, align 8, !tbaa !9 ; 2 uses
  %i.in = fsub double %i.ik, %i.im
  %i.io = call double @llvm.fabs.f64(double %i.in)
  %i.ip = fcmp ule double %i.io, 1.000000e-05
  br i1 %i.ip, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.l
  %indvars.iv.i51.lcssa = phi i64 [ %indvars.iv.i51, %bb.l ], [ %indvars.iv.next.i52, %.critedge.i ]
  %.lcssa127 = phi double [ %i.ik, %bb.l ], [ %i.iv, %.critedge.i ]
  %.lcssa = phi double [ %i.im, %bb.l ], [ %i.ix, %.critedge.i ]
  %i.iq = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv.i51.lcssa to i32 ; 2 uses
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.is, ptr noundef nonnull @.str.2, i32 noundef %i.iq, i32 noundef %i.ir, double noundef %.lcssa127, i32 noundef %i.iq, i32 noundef %i.ir, double noundef %.lcssa, double noundef 1.000000e-05) #18 ; 0 uses
  br label %bb.p

.critedge.i:                                      ; preds = %bb.l
  %indvars.iv.next.i52 = or disjoint i64 %indvars.iv.i51, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next.i52
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !9 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next.i52
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !9 ; 2 uses
  %i.iy = fsub double %i.iv, %i.ix
  %i.iz = call double @llvm.fabs.f64(double %i.iy)
  %i.ja = fcmp ule double %i.iz, 1.000000e-05
  br i1 %i.ja, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %exitcond.not.i53.1 = icmp eq i64 %indvars.iv.next.i52.1, 2000
  br i1 %exitcond.not.i53.1, label %bb.m, label %bb.l, !llvm.loop !37

bb.m:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i50, !llvm.loop !38

check_FP.exit:                                    ; preds = %bb.m
  %i.jb = call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #19 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32000
  store i8 0, ptr %i.jc, align 1, !tbaa !49
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.o, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.o ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv20.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i54
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i54 ], [ %indvars.iv.next.i56, %bb.n ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.i55
  %2 = shl nuw nsw i64 %indvars.iv.i55, 4
  %3 = getelementptr inbounds nuw i8, ptr %i.jb, i64 %2
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !9  ; 4 uses
  %4 = lshr i64 %i.jf, 56
  %5 = trunc nuw i64 %4 to i8
  %6 = insertelement <2 x i64> poison, i64 %i.jf, i64 0
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> zeroinitializer
  %8 = lshr <2 x i64> %7, <i64 40, i64 48>
  %9 = trunc <2 x i64> %8 to <2 x i8>
  %10 = insertelement <4 x i64> poison, i64 %i.jf, i64 0
  %11 = shufflevector <4 x i64> %10, <4 x i64> poison, <4 x i32> zeroinitializer
  %12 = lshr <4 x i64> %11, <i64 8, i64 16, i64 24, i64 32>
  %13 = trunc <4 x i64> %12 to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.jf to i8
  %14 = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %15 = shufflevector <4 x i8> %13, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <8 x i8> %14, <8 x i8> %15, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <2 x i8> %9, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x i8> %16, <8 x i8> %17, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %19 = insertelement <8 x i8> %18, i8 %5, i64 7
  %20 = and <8 x i8> %19, splat (i8 15)
  %21 = or disjoint <8 x i8> %20, splat (i8 48)
  %i.jg = shufflevector <8 x i8> %21, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.jg, ptr %3, align 1, !tbaa !49
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, 2000
  br i1 %exitcond.not.i57, label %bb.o, label %bb.n, !llvm.loop !39

bb.o:                                             ; preds = %bb.n
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ji = call i32 @fputs(ptr noundef nonnull %i.jb, ptr noundef %i.jh) #16 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i54, !llvm.loop !40

print_array.exit:                                 ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.jb) #15
  call void @free(ptr noundef %i.e) #15
  call void @free(ptr noundef nonnull %i.k) #15
  br label %bb.p

bb.p:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !41, !42, !43}
!15 = distinct !{!15, !41, !42}
!16 = distinct !{!16, !41}
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !41, !42, !43}
!22 = distinct !{!22, !41, !42}
!23 = distinct !{!23, !41}
!24 = distinct !{!24, !41}
!25 = distinct !{!25, !41, !42, !43}
!26 = distinct !{!26, !41, !42}
!27 = distinct !{!27, !41}
!28 = distinct !{!28, !41}
!29 = distinct !{!29, !41}
!30 = distinct !{!30, !41}
!31 = distinct !{!31, !41}
!32 = distinct !{!32, !41}
!33 = distinct !{!33, !41}
!34 = distinct !{!34, !41}
!35 = distinct !{!35, !48}
!36 = distinct !{!36, !41}
!37 = distinct !{!37, !41}
!38 = distinct !{!38, !41}
!39 = distinct !{!39, !41}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!18}
!45 = !{!19}
!46 = !{!20}
!47 = !{!19, !18}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!5, !5, i64 0}
end_hunk_0
