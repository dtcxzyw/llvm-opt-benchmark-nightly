Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@compute_stressf:bb.a
  %i.di = fadd double %i.cw, %i.dh                ; 3 uses
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %._crit_edge.us72.us.unr-lcssa, label %.lr.ph.us71.us.new, !llvm.loop !159

._crit_edge.us72.us.unr-lcssa:                    ; preds = %.lr.ph.us71.us.new
  br i1 %lcmp.mod200.not, label %._crit_edge.us72.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us72.us.unr-lcssa, %.lr.ph.us71.us
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph.us71.us ], [ %indvars.iv.next120.1, %._crit_edge.us72.us.unr-lcssa ]
  %.054.us67.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us71.us ], [ %i.di, %._crit_edge.us72.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv119.epil.init
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !109 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv136
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !51
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv125
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv136
  %i.dp = load float, ptr %i.do, align 4, !tbaa !51
  %i.dq = fsub float %i.dm, %i.dp                 ; 2 uses
  %i.dr = fmul float %i.dq, %i.dq
  %i.ds = fpext float %i.dr to double
  %i.dt = fadd double %.054.us67.us.epil.init, %i.ds
  br label %._crit_edge.us72.us

._crit_edge.us72.us:                              ; preds = %._crit_edge.us72.us.unr-lcssa, %.epil.preheader
  %.lcssa193 = phi double [ %i.di, %._crit_edge.us72.us.unr-lcssa ], [ %i.dt, %.epil.preheader ]
  %i.du = tail call double @sqrt(double noundef %.lcssa193) #15
  %i.dv = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv123
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !51
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = fdiv double 1.000000e+00, %i.dx
  %i.dz = fsub double %i.dy, %i.du                ; 2 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dx, double %.157.us65.us) ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge60.split.split.us.us.loopexit, label %.lr.ph.us71.us, !llvm.loop !160

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge60.split.split
  %indvars.iv113 = phi i32 [ %indvars.iv.next114, %._crit_edge60.split.split ], [ %i.ce, %.preheader.preheader ] ; 2 uses
  %.04784 = phi double [ %.1.lcssa, %._crit_edge60.split.split ], [ 0.000000e+00, %.preheader.preheader ] ; 3 uses
  %.04883 = phi i32 [ %.149.lcssa, %._crit_edge60.split.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %.05280 = phi i32 [ %i.fc, %._crit_edge60.split.split ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.ec = sub i32 %i.a, %.05280                   ; 3 uses
  %i.ed = sub nsw i32 %3, %.05280
  %.14955 = add i32 %.04883, 1                    ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %.lr.ph59.preheader, label %._crit_edge60.split.split

.lr.ph59.preheader:                               ; preds = %.preheader
  %i.ef = sext i32 %.14955 to i64                 ; 2 uses
  %xtraiter = and i32 %i.ec, 1
  %i.eg = icmp eq i32 %i.cf, %.05280
  br i1 %i.eg, label %.lr.ph59.epil.preheader, label %.lr.ph59.preheader.new

.lr.ph59.preheader.new:                           ; preds = %.lr.ph59.preheader
  %unroll_iter = and i32 %i.ec, -2
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59, %.lr.ph59.preheader.new
  %indvars.iv = phi i64 [ %i.ef, %.lr.ph59.preheader.new ], [ %indvars.iv.next.1, %.lr.ph59 ] ; 3 uses
  %.157 = phi double [ %.04784, %.lr.ph59.preheader.new ], [ %i.et, %.lr.ph59 ]
  %niter = phi i32 [ 0, %.lr.ph59.preheader.new ], [ %niter.next.1, %.lr.ph59 ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !51
  %i.ej = fpext float %i.ei to double             ; 2 uses
  %i.ek = fdiv double 1.000000e+00, %i.ej         ; 2 uses
  %i.el = fmul double %i.ek, %i.ek
  %i.em = tail call double @llvm.fmuladd.f64(double %i.el, double %i.ej, double %.157)
  %i.en = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !51
  %i.eq = fpext float %i.ep to double             ; 2 uses
  %i.er = fdiv double 1.000000e+00, %i.eq         ; 2 uses
  %i.es = fmul double %i.er, %i.er
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double %i.eq, double %i.em) ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge60.split.split.loopexit.unr-lcssa, label %.lr.ph59, !llvm.loop !160

._crit_edge60.split.split.loopexit.unr-lcssa:     ; preds = %.lr.ph59
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge60.split.split.loopexit, label %.lr.ph59.epil.preheader

.lr.ph59.epil.preheader:                          ; preds = %._crit_edge60.split.split.loopexit.unr-lcssa, %.lr.ph59.preheader
  %indvars.iv.epil.init = phi i64 [ %i.ef, %.lr.ph59.preheader ], [ %indvars.iv.next.1, %._crit_edge60.split.split.loopexit.unr-lcssa ]
  %.157.epil.init = phi double [ %.04784, %.lr.ph59.preheader ], [ %i.et, %._crit_edge60.split.split.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i32 %i.ec to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.eu = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !51
  %i.ew = fpext float %i.ev to double             ; 2 uses
  %i.ex = fdiv double 1.000000e+00, %i.ew         ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ew, double %.157.epil.init)
  br label %._crit_edge60.split.split.loopexit

._crit_edge60.split.split.loopexit:               ; preds = %._crit_edge60.split.split.loopexit.unr-lcssa, %.lr.ph59.epil.preheader
  %.lcssa196 = phi double [ %i.et, %._crit_edge60.split.split.loopexit.unr-lcssa ], [ %i.ez, %.lr.ph59.epil.preheader ]
  %i.fa = add i32 %.04883, 2
  %i.fb = add i32 %i.fa, %indvars.iv113
  br label %._crit_edge60.split.split

._crit_edge60.split.split:                        ; preds = %._crit_edge60.split.split.loopexit, %.preheader
  %.1.lcssa = phi double [ %.04784, %.preheader ], [ %.lcssa196, %._crit_edge60.split.split.loopexit ] ; 2 uses
  %.149.lcssa = phi i32 [ %.14955, %.preheader ], [ %i.fb, %._crit_edge60.split.split.loopexit ]
  %i.fc = add nuw nsw i32 %.05280, 1              ; 2 uses
  %indvars.iv.next114 = add i32 %indvars.iv113, -1
  %exitcond118.not = icmp eq i32 %i.fc, %i.a
  br i1 %exitcond118.not, label %._crit_edge, label %.preheader, !llvm.loop !158

._crit_edge:                                      ; preds = %._crit_edge60.split.split, %._crit_edge60.split.split.us.us, %._crit_edge60.split.us.split.us89, %._crit_edge60.split.us.split.us.us.us, %bb.a
  %.047.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1.lcssa.us99, %._crit_edge60.split.split.us.us ], [ %.1.lcssa.us, %._crit_edge60.split.us.split.us89 ], [ %.1.lcssa.us.us, %._crit_edge60.split.us.split.us.us.us ], [ %.1.lcssa, %._crit_edge60.split.split ]
  ret double %.047.lcssa
}

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

declare hidden void @dijkstra_f(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @embed_graph(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @center_coordinate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @PCA_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @compute_new_weights(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

declare hidden void @ngdijkstra(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden zeroext i1 @iterativePCA_1D(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @right_mult_with_vector_transpose(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @mult_sparse_dense_mat_transpose(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @mult_dense_mat(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc double @compute_stress1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 2, -2147483648) %3, i32 noundef range(i32 0, 4) %4) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  %wide.trip.count155 = zext nneg i32 %3 to i64   ; 4 uses
  br i1 %i.a, label %.preheader90, label %.preheader93

.preheader93:                                     ; preds = %bb.a
  br i1 %i.b, label %.preheader92.us.preheader, label %.preheader92

.preheader92.us.preheader:                        ; preds = %.preheader93
  %wide.trip.count132 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count132, 1
  %i.c = icmp eq i32 %2, 1
  %unroll_iter185 = and i64 %wide.trip.count132, 2147483646
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  %lcmp.mod184 = trunc i32 %2 to i1
  br label %.preheader92.us

.preheader92.us:                                  ; preds = %.preheader92.us.preheader, %._crit_edge100.split.us.us
  %indvars.iv135 = phi i64 [ 0, %.preheader92.us.preheader ], [ %indvars.iv.next136, %._crit_edge100.split.us.us ] ; 6 uses
  %.3104.us = phi double [ 0.000000e+00, %.preheader92.us.preheader ], [ %.4.lcssa.us, %._crit_edge100.split.us.us ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv135 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %._crit_edge100.split.us.us, label %.lr.ph99.us

._crit_edge100.split.us.us:                       ; preds = %bb.c, %.preheader92.us
  %.4.lcssa.us = phi double [ %.3104.us, %.preheader92.us ], [ %.5.us.us, %bb.c ] ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count155
  br i1 %exitcond139.not, label %.loopexit, label %.preheader92.us, !llvm.loop !161

.lr.ph99.us:                                      ; preds = %.preheader92.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph99.us
  %.098.us.us = phi i64 [ 0, %.lr.ph99.us ], [ %i.ac, %bb.c ] ; 3 uses
  %.497.us.us = phi double [ %.3104.us, %.lr.ph99.us ], [ %.5.us.us, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.098.us.us
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %.not.us.us = icmp slt i64 %indvars.iv135, %i.k
  br i1 %.not.us.us, label %.preheader91.us.us.preheader, label %bb.c

.preheader91.us.us.preheader:                     ; preds = %bb.b
  br i1 %i.c, label %.preheader91.us.us.epil.preheader, label %.preheader91.us.us.a

.preheader91.us.us.a:                             ; preds = %.preheader91.us.us.preheader, %.preheader91.us.us.a
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.1, %.preheader91.us.us.a ], [ 0, %.preheader91.us.us.preheader ] ; 3 uses
  %.196.us.us = phi double [ %i.ab, %.preheader91.us.us.a ], [ 0.000000e+00, %.preheader91.us.us.preheader ]
  %niter186 = phi i64 [ %niter186.next.1, %.preheader91.us.us.a ], [ 0, %.preheader91.us.us.preheader ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv135
  %i.o = load double, ptr %i.n, align 8, !tbaa !34
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !34
  %i.r = fsub double %i.o, %i.q                   ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %.196.us.us)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv135
  %i.x = load double, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.k
  %i.z = load double, ptr %i.y, align 8, !tbaa !34
  %i.aa = fsub double %i.x, %i.z                  ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.s) ; 3 uses
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.preheader91.us.us.a, !llvm.loop !162

bb.c:                                             ; preds = %._crit_edge.us.us, %bb.b
  %.5.us.us = phi double [ %.497.us.us, %bb.b ], [ %i.at, %._crit_edge.us.us ] ; 2 uses
  %i.ac = add nuw i64 %.098.us.us, 1              ; 2 uses
  %exitcond134.not = icmp eq i64 %i.ac, %i.e
  br i1 %exitcond134.not, label %._crit_edge100.split.us.us, label %bb.b, !llvm.loop !163

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader91.us.us.a
  br i1 %lcmp.mod182.not, label %._crit_edge.us.us, label %.preheader91.us.us.epil.preheader

.preheader91.us.us.epil.preheader:                ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader91.us.us.preheader
  %indvars.iv129.epil.init = phi i64 [ 0, %.preheader91.us.us.preheader ], [ %indvars.iv.next130.1, %._crit_edge.us.us.unr-lcssa ]
  %.196.us.us.epil.init = phi double [ 0.000000e+00, %.preheader91.us.us.preheader ], [ %i.ab, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv129.epil.init
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv135
  %i.ag = load double, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.k
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !34
  %i.aj = fsub double %i.ag, %i.ai                ; 2 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %.196.us.us.epil.init)
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader91.us.us.epil.preheader
  %.lcssa177 = phi double [ %i.ab, %._crit_edge.us.us.unr-lcssa ], [ %i.ak, %.preheader91.us.us.epil.preheader ]
  %i.al = tail call double @sqrt(double noundef %.lcssa177) #15
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.098.us.us
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50
  %i.ap = sitofp i32 %i.ao to double              ; 2 uses
  %i.aq = fsub double %i.ap, %i.al                ; 2 uses
  %i.ar = fmul double %i.aq, %i.aq
  %i.as = fdiv double %i.ar, %i.ap
  %i.at = fadd double %.497.us.us, %i.as
  br label %bb.c

.preheader90:                                     ; preds = %bb.a
  br i1 %i.b, label %.preheader89.us.preheader, label %.preheader89

.preheader89.us.preheader:                        ; preds = %.preheader90
  %wide.trip.count149 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter194 = and i64 %wide.trip.count149, 1
  %i.au = icmp eq i32 %2, 1
  %unroll_iter198 = and i64 %wide.trip.count149, 2147483646
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod197 = trunc i32 %2 to i1
  br label %.preheader89.us

.preheader89.us:                                  ; preds = %.preheader89.us.preheader, %._crit_edge111.split.us.us
  %indvars.iv152 = phi i64 [ 0, %.preheader89.us.preheader ], [ %indvars.iv.next153, %._crit_edge111.split.us.us ] ; 6 uses
  %.080115.us = phi double [ 0.000000e+00, %.preheader89.us.preheader ], [ %.181.lcssa.us, %._crit_edge111.split.us.us ] ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv152 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %.not122 = icmp eq i64 %i.aw, 0
  br i1 %.not122, label %._crit_edge111.split.us.us, label %.lr.ph110.us

._crit_edge111.split.us.us:                       ; preds = %bb.e, %.preheader89.us
  %.181.lcssa.us = phi double [ %.080115.us, %.preheader89.us ], [ %.2.us.us, %bb.e ] ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %.loopexit, label %.preheader89.us, !llvm.loop !164

.lr.ph110.us:                                     ; preds = %.preheader89.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph110.us
  %.078109.us.us = phi i64 [ 0, %.lr.ph110.us ], [ %i.bu, %bb.e ] ; 3 uses
  %.181108.us.us = phi double [ %.080115.us, %.lr.ph110.us ], [ %.2.us.us, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.078109.us.us
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !50
  %i.bc = sext i32 %i.bb to i64                   ; 4 uses
  %.not88.us.us = icmp slt i64 %indvars.iv152, %i.bc
  br i1 %.not88.us.us, label %.preheader.us.us.preheader, label %bb.e

.preheader.us.us.preheader:                       ; preds = %bb.d
  br i1 %i.au, label %.preheader.us.us.epil.preheader, label %.preheader.us.us.a

.preheader.us.us.a:                               ; preds = %.preheader.us.us.preheader, %.preheader.us.us.a
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.1, %.preheader.us.us.a ], [ 0, %.preheader.us.us.preheader ] ; 3 uses
  %.079107.us.us = phi double [ %i.bt, %.preheader.us.us.a ], [ 0.000000e+00, %.preheader.us.us.preheader ]
  %niter199 = phi i64 [ %niter199.next.1, %.preheader.us.us.a ], [ 0, %.preheader.us.us.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv152
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !34
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bc
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !34
  %i.bj = fsub double %i.bg, %i.bi                ; 2 uses
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %.079107.us.us)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv152
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !34
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bc
  %i.br = load double, ptr %i.bq, align 8, !tbaa !34
  %i.bs = fsub double %i.bp, %i.br                ; 2 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bs, double %i.bk) ; 3 uses
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter199.next.1 = add i64 %niter199, 2         ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %._crit_edge.us.us116.unr-lcssa, label %.preheader.us.us.a, !llvm.loop !165

bb.e:                                             ; preds = %._crit_edge.us.us116, %bb.d
  %.2.us.us = phi double [ %.181108.us.us, %bb.d ], [ %i.cm, %._crit_edge.us.us116 ] ; 2 uses
  %i.bu = add nuw i64 %.078109.us.us, 1           ; 2 uses
  %exitcond151.not = icmp eq i64 %i.bu, %i.aw
  br i1 %exitcond151.not, label %._crit_edge111.split.us.us, label %bb.d, !llvm.loop !166

._crit_edge.us.us116.unr-lcssa:                   ; preds = %.preheader.us.us.a
  br i1 %lcmp.mod195.not, label %._crit_edge.us.us116, label %.preheader.us.us.epil.preheader

.preheader.us.us.epil.preheader:                  ; preds = %._crit_edge.us.us116.unr-lcssa, %.preheader.us.us.preheader
  %indvars.iv146.epil.init = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next147.1, %._crit_edge.us.us116.unr-lcssa ]
  %.079107.us.us.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.preheader ], [ %i.bt, %._crit_edge.us.us116.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146.epil.init
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !8  ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv152
  %i.by = load double, ptr %i.bx, align 8, !tbaa !34
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bc
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !34
  %i.cb = fsub double %i.by, %i.ca                ; 2 uses
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cb, double %.079107.us.us.epil.init)
  br label %._crit_edge.us.us116

._crit_edge.us.us116:                             ; preds = %._crit_edge.us.us116.unr-lcssa, %.preheader.us.us.epil.preheader
  %.lcssa = phi double [ %i.bt, %._crit_edge.us.us116.unr-lcssa ], [ %i.cc, %.preheader.us.us.epil.preheader ]
  %i.cd = tail call double @sqrt(double noundef %.lcssa) #15
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !87
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.078109.us.us
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !50
  %i.ch = sitofp i32 %i.cg to double              ; 3 uses
  %i.ci = fsub double %i.ch, %i.cd                ; 2 uses
  %i.cj = fmul double %i.ci, %i.ci
  %i.ck = fmul nnan double %i.ch, %i.ch
  %i.cl = fdiv double %i.cj, %i.ck
  %i.cm = fadd double %.181108.us.us, %i.cl
  br label %bb.e

.preheader89:                                     ; preds = %.preheader90, %._crit_edge111.split
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %._crit_edge111.split ], [ 0, %.preheader90 ] ; 5 uses
  %.080115 = phi double [ %.181.lcssa, %._crit_edge111.split ], [ 0.000000e+00, %.preheader90 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv141 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !88 ; 5 uses
  %.not121 = icmp eq i64 %i.co, 0
  br i1 %.not121, label %._crit_edge111.split, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader89
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !85 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %xtraiter188 = and i64 %i.co, 1
  %i.cs = icmp eq i64 %i.co, 1
  br i1 %i.cs, label %.epil.preheader187, label %.lr.ph110.new

.lr.ph110.new:                                    ; preds = %.lr.ph110
  %unroll_iter192 = and i64 %i.co, -2
  br label %bb.f

._crit_edge111.split.loopexit.unr-lcssa:          ; preds = %bb.h
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %._crit_edge111.split, label %.epil.preheader187

.epil.preheader187:                               ; preds = %._crit_edge111.split.loopexit.unr-lcssa, %.lr.ph110
  %.078109.epil.init = phi i64 [ 0, %.lr.ph110 ], [ %i.dy, %._crit_edge111.split.loopexit.unr-lcssa ] ; 2 uses
  %.181108.epil.init = phi double [ %.080115, %.lr.ph110 ], [ %.2.1, %._crit_edge111.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod191 = trunc i64 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.078109.epil.init
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !50
  %i.cv = sext i32 %i.cu to i64
  %.not88.epil = icmp slt i64 %indvars.iv141, %i.cv
  br i1 %.not88.epil, label %.preheader.epil, label %._crit_edge111.split

.preheader.epil:                                  ; preds = %.epil.preheader187
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.078109.epil.init
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !50
  %i.cz = sitofp i32 %i.cy to double              ; 2 uses
  %i.da = fmul nnan double %i.cz, %i.cz           ; 2 uses
  %i.db = fdiv double %i.da, %i.da
  %i.dc = fadd double %.181108.epil.init, %i.db
  br label %._crit_edge111.split

._crit_edge111.split:                             ; preds = %._crit_edge111.split.loopexit.unr-lcssa, %.preheader.epil, %.epil.preheader187, %.preheader89
  %.181.lcssa = phi double [ %.080115, %.preheader89 ], [ %.2.1, %._crit_edge111.split.loopexit.unr-lcssa ], [ %.181108.epil.init, %.epil.preheader187 ], [ %i.dc, %.preheader.epil ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count155
  br i1 %exitcond145.not, label %.loopexit, label %.preheader89, !llvm.loop !164

bb.f:                                             ; preds = %bb.h, %.lr.ph110.new
  %.078109 = phi i64 [ 0, %.lr.ph110.new ], [ %i.dy, %bb.h ] ; 4 uses
  %.181108 = phi double [ %.080115, %.lr.ph110.new ], [ %.2.1, %bb.h ] ; 2 uses
  %niter193 = phi i64 [ 0, %.lr.ph110.new ], [ %niter193.next.1, %bb.h ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.078109
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !50
  %i.df = sext i32 %i.de to i64
  %.not88 = icmp slt i64 %indvars.iv141, %i.df
  br i1 %.not88, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.078109
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !50
  %i.dj = sitofp i32 %i.di to double              ; 2 uses
  %i.dk = fmul nnan double %i.dj, %i.dj           ; 2 uses
  %i.dl = fdiv double %i.dk, %i.dk
  %i.dm = fadd double %.181108, %i.dl
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader
  %.2 = phi double [ %.181108, %bb.f ], [ %i.dm, %.preheader ] ; 2 uses
  %i.dn = or disjoint i64 %.078109, 1             ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !50
  %i.dq = sext i32 %i.dp to i64
  %.not88.1 = icmp slt i64 %indvars.iv141, %i.dq
  br i1 %.not88.1, label %.preheader.1, label %bb.h

.preheader.1:                                     ; preds = %bb.g
  %i.dr = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dn
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !50
  %i.du = sitofp i32 %i.dt to double              ; 2 uses
  %i.dv = fmul nnan double %i.du, %i.du           ; 2 uses
  %i.dw = fdiv double %i.dv, %i.dv
  %i.dx = fadd double %.2, %i.dw
  br label %bb.h

bb.h:                                             ; preds = %.preheader.1, %bb.g
  %.2.1 = phi double [ %.2, %bb.g ], [ %i.dx, %.preheader.1 ] ; 3 uses
  %i.dy = add nuw i64 %.078109, 2                 ; 2 uses
  %niter193.next.1 = add nuw i64 %niter193, 2     ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %._crit_edge111.split.loopexit.unr-lcssa, label %bb.f, !llvm.loop !166

.preheader92:                                     ; preds = %.preheader93, %._crit_edge100.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge100.split ], [ 0, %.preheader93 ] ; 5 uses
  %.3104 = phi double [ %.4.lcssa, %._crit_edge100.split ], [ 0.000000e+00, %.preheader93 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !88 ; 5 uses
  %.not119 = icmp eq i64 %i.ea, 0
  br i1 %.not119, label %._crit_edge100.split, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !85 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 3 uses
  %xtraiter = and i64 %i.ea, 1
  %i.ee = icmp eq i64 %i.ea, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph99.new

.lr.ph99.new:                                     ; preds = %.lr.ph99
  %unroll_iter = and i64 %i.ea, -2
  br label %bb.i

._crit_edge100.split.loopexit.unr-lcssa:          ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge100.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge100.split.loopexit.unr-lcssa, %.lr.ph99
  %.098.epil.init = phi i64 [ 0, %.lr.ph99 ], [ %i.fk, %._crit_edge100.split.loopexit.unr-lcssa ] ; 2 uses
  %.497.epil.init = phi double [ %.3104, %.lr.ph99 ], [ %.5.1, %._crit_edge100.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i64 %i.ea to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.098.epil.init
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !50
  %i.eh = sext i32 %i.eg to i64
  %.not.epil = icmp slt i64 %indvars.iv, %i.eh
  br i1 %.not.epil, label %.preheader91.epil, label %._crit_edge100.split

.preheader91.epil:                                ; preds = %.epil.preheader
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !87
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.098.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = sitofp i32 %i.ek to double              ; 3 uses
  %i.em = fmul nnan double %i.el, %i.el
  %i.en = fdiv double %i.em, %i.el
  %i.eo = fadd double %.497.epil.init, %i.en
  br label %._crit_edge100.split

._crit_edge100.split:                             ; preds = %._crit_edge100.split.loopexit.unr-lcssa, %.preheader91.epil, %.epil.preheader, %.preheader92
  %.4.lcssa = phi double [ %.3104, %.preheader92 ], [ %.5.1, %._crit_edge100.split.loopexit.unr-lcssa ], [ %.497.epil.init, %.epil.preheader ], [ %i.eo, %.preheader91.epil ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next, %wide.trip.count155
  br i1 %exitcond128.not, label %.loopexit, label %.preheader92, !llvm.loop !161

bb.i:                                             ; preds = %bb.k, %.lr.ph99.new
  %.098 = phi i64 [ 0, %.lr.ph99.new ], [ %i.fk, %bb.k ] ; 4 uses
  %.497 = phi double [ %.3104, %.lr.ph99.new ], [ %.5.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph99.new ], [ %niter.next.1, %bb.k ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.098
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !50
  %i.er = sext i32 %i.eq to i64
  %.not = icmp slt i64 %indvars.iv, %i.er
  br i1 %.not, label %.preheader91, label %bb.j

.preheader91:                                     ; preds = %bb.i
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !87
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.098
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !50
  %i.ev = sitofp i32 %i.eu to double              ; 3 uses
  %i.ew = fmul nnan double %i.ev, %i.ev
  %i.ex = fdiv double %i.ew, %i.ev
  %i.ey = fadd double %.497, %i.ex
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader91
  %.5 = phi double [ %.497, %bb.i ], [ %i.ey, %.preheader91 ] ; 2 uses
  %i.ez = or disjoint i64 %.098, 1                ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !50
  %i.fc = sext i32 %i.fb to i64
  %.not.1 = icmp slt i64 %indvars.iv, %i.fc
  br i1 %.not.1, label %.preheader91.1, label %bb.k

.preheader91.1:                                   ; preds = %bb.j
  %i.fd = load ptr, ptr %i.ed, align 8, !tbaa !87
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ez
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !50
end_hunk_0
