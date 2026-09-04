Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/general?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@vector_saxpy2:bb.a
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.c, align 8, !tbaa !10, !alias.scope !41, !noalias !42
  %wide.load13 = load <2 x double>, ptr %i.d, align 8, !tbaa !10, !alias.scope !41, !noalias !42
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load14 = load <2 x double>, ptr %i.e, align 8, !tbaa !10, !alias.scope !42
  %wide.load15 = load <2 x double>, ptr %i.f, align 8, !tbaa !10, !alias.scope !42
  %i.g = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load14, <2 x double> %wide.load)
  %i.h = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load15, <2 x double> %wide.load13)
  store <2 x double> %i.g, ptr %i.c, align 8, !tbaa !10, !alias.scope !41, !noalias !42
  store <2 x double> %i.h, ptr %i.d, align 8, !tbaa !10, !alias.scope !41, !noalias !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader16
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.ph ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call double @llvm.fmuladd.f64(double %3, double %i.m, double %i.k)
  store double %i.n, ptr %i.j, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader16
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader16 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.o = add nsw i64 %wide.trip.count, -1
  %i.p = icmp eq i64 %indvars.iv.ph, %i.o
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !10
  %i.u = tail call double @llvm.fmuladd.f64(double %3, double %i.t, double %i.r)
  store double %i.u, ptr %i.q, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.y = load double, ptr %i.x, align 8, !tbaa !10
  %i.z = tail call double @llvm.fmuladd.f64(double %3, double %i.y, double %i.w)
  store double %i.z, ptr %i.v, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret ptr %1
}

; Function Attrs: nofree nounwind uwtable
define void @vector_float_take(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.c = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #18
  br label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %mul.ov.i = icmp slt i32 %2, 0
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #18 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.i = shl nuw nsw i64 %i.b, 2
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef %i.i) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.e
  %i.k = phi ptr [ %i.c, %.thread.i ], [ %i.f, %bb.e ] ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %gv_calloc.exit, %bb.a
  %i.l = phi ptr [ %i.k, %gv_calloc.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.n = icmp ult i32 %2, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.h ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !18
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !48
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.s, ptr %i.t, align 4, !tbaa !48
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !48
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  store float %i.y, ptr %i.z, align 4, !tbaa !48
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !48
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.1
  store float %i.ae, ptr %i.af, align 4, !tbaa !48
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !48
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.2
  store float %i.ak, ptr %i.al, align 4, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !43

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !48
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil
  store float %i.aq, ptr %i.ar, align 4, !tbaa !48
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.i, !llvm.loop !44

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @vector_ordering(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !54
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.c = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #18
  br label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %mul.ov.i = icmp slt i32 %0, 0
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #18 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.i = shl nuw nsw i64 %i.b, 2
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef %i.i) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.e
  %i.k = phi ptr [ %i.c, %.thread.i ], [ %i.f, %bb.e ]
  store ptr %i.k, ptr %2, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %gv_calloc.exit, %bb.a
  %i.l = shl nsw i32 %0, 1
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %.not.i24 = icmp eq i32 %0, 0
  br i1 %.not.i24, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %mul.ov.i26 = icmp slt i32 %0, 0
  br i1 %mul.ov.i26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) #18 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %.lr.ph.preheader

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.s = shl nuw nsw i64 %i.m, 3
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.1, i64 noundef %i.s) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

._crit_edge.thread:                               ; preds = %bb.g
  %i.u = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18 ; 2 uses
  %i.v = zext nneg i32 %0 to i64
  tail call void @qsort(ptr noundef %i.u, i64 noundef %i.v, i64 noundef 16, ptr noundef nonnull @comp_ascend) #17
  br label %._crit_edge33

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader54, label %vector.ph.a

vector.ph.a:                                      ; preds = %.lr.ph.preheader
  %n.vec.a = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.a

vector.body.a:                                    ; preds = %vector.body.a, %vector.ph.a
  %index.a = phi i64 [ 0, %vector.ph.a ], [ %index.next.a, %vector.body.a ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph.a ], [ %vec.ind.next, %vector.body.a ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %3 = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %4 = uitofp nneg <2 x i32> %step.add to <2 x double>
  %5 = shl nuw nsw i64 %index.a, 4
  %6 = shl i64 %index.a, 4
  %7 = getelementptr inbounds nuw i8, ptr %i.p, i64 %5
  %8 = getelementptr inbounds nuw i8, ptr %i.p, i64 %6
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %10 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index.a ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.load = load <2 x double>, ptr %10, align 8, !tbaa !10
  %wide.load43 = load <2 x double>, ptr %11, align 8, !tbaa !10
  %interleaved.vec = shufflevector <2 x double> %wide.load, <2 x double> %3, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %7, align 8, !tbaa !10
  %interleaved.vec44 = shufflevector <2 x double> %wide.load43, <2 x double> %4, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec44, ptr %9, align 8, !tbaa !10
  %index.next.a = add nuw i64 %index.a, 4         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.w = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.w, label %middle.block, label %vector.body.a, !llvm.loop !49

middle.block:                                     ; preds = %vector.body.a
  %cmp.n = icmp eq i64 %n.vec.a, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec.a, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader54, %.lr.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader54 ] ; 4 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.a to i32
  %i.y = uitofp nneg i32 %i.x to double
  %.idx.a = shl nuw nsw i64 %indvars.iv.a, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.a ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store double %i.y, ptr %i.aa, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.a
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !10
  store double %i.ac, ptr %i.z, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.ad = zext nneg i32 %0 to i64
  tail call void @qsort(ptr noundef nonnull %i.p, i64 noundef %i.ad, i64 noundef 16, ptr noundef nonnull @comp_ascend) #17
  %i.ae = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %wide.trip.count38 = zext nneg i32 %0 to i64
  %min.iters.check46 = icmp ult i32 %0, 5
  br i1 %min.iters.check46, label %scalar.ph45.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %._crit_edge
  %i.af = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 4, i64 %i.af
  %n.vec48 = sub nsw i64 %wide.trip.count, %i.ah  ; 2 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next51, %vector.body49 ] ; 6 uses
  %i.ai = shl nuw nsw i64 %index50, 4
  %i.aj = shl i64 %index50, 4
  %i.ak = shl i64 %index50, 4
  %i.al = shl i64 %index50, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.au = load double, ptr %i.aq, align 8, !tbaa !10
  %i.av = load double, ptr %i.ar, align 8, !tbaa !10
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = load double, ptr %i.as, align 8, !tbaa !10
  %i.az = load double, ptr %i.at, align 8, !tbaa !10
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = fptosi <2 x double> %i.ax to <2 x i32>
  %i.bd = fptosi <2 x double> %i.bb to <2 x i32>
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index50 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store <2 x i32> %i.bc, ptr %i.be, align 4, !tbaa !18
  store <2 x i32> %i.bd, ptr %i.bf, align 4, !tbaa !18
  %index.next51 = add nuw i64 %index50, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next51, %n.vec48
  br i1 %i.bg, label %scalar.ph45.preheader, label %vector.body49, !llvm.loop !51

scalar.ph45.preheader:                            ; preds = %vector.body49, %._crit_edge
  %indvars.iv35.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec48, %vector.body49 ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %scalar.ph45 ], [ %indvars.iv35.ph, %scalar.ph45.preheader ] ; 3 uses
  %.idx42 = shl nuw nsw i64 %indvars.iv35, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bk = fptosi double %i.bj to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv35
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !18
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33, label %scalar.ph45, !llvm.loop !52

._crit_edge33:                                    ; preds = %scalar.ph45, %._crit_edge.thread
  %i.bm = phi ptr [ %i.u, %._crit_edge.thread ], [ %i.p, %scalar.ph45 ]
  tail call void @free(ptr noundef %i.bm) #17
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @comp_ascend(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.c = fcmp ogt double %i.a, %i.b
  %i.d = fcmp olt double %i.a, %i.b
  %. = sext i1 %i.d to i32
  %.0 = select i1 %i.c, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define void @vector_sort_int(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  tail call void @qsort(ptr noundef %1, i64 noundef %i.a, i64 noundef 4, ptr noundef nonnull @comp_ascend_int) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @comp_ascend_int(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !18
  %i.b = load i32, ptr %1, align 4, !tbaa !18
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define double @distance_cropped(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.i, label %distance.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1
  %i.c = mul nsw i32 %3, %1
  %i.d = sext i32 %i.b to i64
  %i.e = sext i32 %i.c to i64
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %0, i64 %i.d ; 5 uses
  %invariant.gep26.i = getelementptr [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %1, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %.024.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.v, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.g = load double, ptr %gep.i, align 8, !tbaa !10
  %gep27.i = getelementptr [8 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.i
  %i.h = load double, ptr %gep27.i, align 8, !tbaa !10
  %i.i = fsub double %i.g, %i.h                   ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %.024.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.k = load double, ptr %gep.i.1, align 8, !tbaa !10
  %gep27.i.1 = getelementptr [8 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.next.i
  %i.l = load double, ptr %gep27.i.1, align 8, !tbaa !10
  %i.m = fsub double %i.k, %i.l                   ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.j)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.o = load double, ptr %gep.i.2, align 8, !tbaa !10
  %gep27.i.2 = getelementptr [8 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.next.i.1
  %i.p = load double, ptr %gep27.i.2, align 8, !tbaa !10
  %i.q = fsub double %i.o, %i.p                   ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.n)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.s = load double, ptr %gep.i.3, align 8, !tbaa !10
  %gep27.i.3 = getelementptr [8 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.next.i.2
  %i.t = load double, ptr %gep27.i.3, align 8, !tbaa !10
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.r) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %distance.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

distance.exit.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %distance.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %distance.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %distance.exit.loopexit.unr-lcssa ]
  %.024.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.v, %distance.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %.024.i.epil = phi double [ %.024.i.epil.init, %.epil.preheader ], [ %i.z, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  %i.w = load double, ptr %gep.i.epil, align 8, !tbaa !10
  %gep27.i.epil = getelementptr [8 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.i.epil
  %i.x = load double, ptr %gep27.i.epil, align 8, !tbaa !10
  %i.y = fsub double %i.w, %i.x                   ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %.024.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %distance.exit, label %bb.c, !llvm.loop !55

distance.exit:                                    ; preds = %distance.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %distance.exit.loopexit.unr-lcssa ], [ %i.z, %bb.c ]
  %i.aa = tail call double @sqrt(double noundef %.0.lcssa.i) #17
  %i.ab = tail call nsz double @llvm.maxnum.f64(double %i.aa, double 1.000000e-15)
  ret double %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define double @distance(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1
  %i.c = mul nsw i32 %3, %1
  %i.d = sext i32 %i.b to i64
  %i.e = sext i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.d ; 5 uses
  %invariant.gep26 = getelementptr [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %1, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %.024 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.v, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.g = load double, ptr %gep, align 8, !tbaa !10
  %gep27 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv
  %i.h = load double, ptr %gep27, align 8, !tbaa !10
  %i.i = fsub double %i.g, %i.h                   ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %.024)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.k = load double, ptr %gep.1, align 8, !tbaa !10
  %gep27.1 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next
  %i.l = load double, ptr %gep27.1, align 8, !tbaa !10
  %i.m = fsub double %i.k, %i.l                   ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.j)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.o = load double, ptr %gep.2, align 8, !tbaa !10
  %gep27.2 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.1
  %i.p = load double, ptr %gep27.2, align 8, !tbaa !10
  %i.q = fsub double %i.o, %i.p                   ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.n)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.s = load double, ptr %gep.3, align 8, !tbaa !10
  %gep27.3 = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.next.2
  %i.t = load double, ptr %gep27.3, align 8, !tbaa !10
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.r) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.024.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %.024.epil = phi double [ %.024.epil.init, %.epil.preheader ], [ %i.z, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.w = load double, ptr %gep.epil, align 8, !tbaa !10
  %gep27.epil = getelementptr [8 x i8], ptr %invariant.gep26, i64 %indvars.iv.epil
  %i.x = load double, ptr %gep27.epil, align 8, !tbaa !10
  %i.y = fsub double %i.w, %i.x                   ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %.024.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !56

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.z, %bb.c ]
  %i.aa = tail call double @sqrt(double noundef %.0.lcssa) #17
  ret double %i.aa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable
define double @point_distance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %2, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.014 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = fsub double %i.d, %i.f                   ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %.014)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = fsub double %i.j, %i.l                   ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.h)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.p = load double, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.r = load double, ptr %i.q, align 8, !tbaa !10
  %i.s = fsub double %i.p, %i.r                   ; 2 uses
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.n)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.v = load double, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.x = load double, ptr %i.w, align 8, !tbaa !10
  %i.y = fsub double %i.v, %i.x                   ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.t) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.014.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.014.epil = phi double [ %.014.epil.init, %.lr.ph.epil.preheader ], [ %i.af, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !10
  %i.ae = fsub double %i.ab, %i.ad                ; 2 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %.014.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !58

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.epil ]
  %i.ag = tail call double @sqrt(double noundef %.0.lcssa) #17
  ret double %i.ag
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @strip_dir(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.017 = phi i1 [ true, %bb.b ], [ %.129, %bb.f ] ; 2 uses
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.h, %bb.f ]  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !59    ; 2 uses
  %i.d = icmp eq i8 %i.c, 46
  %or.cond = select i1 %.017, i1 %i.d, i1 false
  br i1 %or.cond, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.c
  store i8 0, ptr %i.b, align 1, !tbaa !59
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %.not22 = icmp eq i8 %i.c, 47
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.f = getelementptr i8, ptr %i.e, i64 1
  br label %.loopexit

bb.e:                                             ; preds = %.thread, %._crit_edge
  %.129 = phi i1 [ false, %.thread ], [ %.017, %._crit_edge ]
  %i.g = icmp eq i64 %.0, 0
  br i1 %i.g, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = add i64 %.0, -1
  br label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a
  %.119 = phi ptr [ null, %bb.a ], [ %i.f, %bb.d ], [ %0, %bb.e ]
  ret ptr %.119
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #13 {
bb.a:
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { cold nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !11, !12}
!25 = !{!20}
!26 = !{!21}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !12}
!34 = !{!30}
!35 = !{!31}
!36 = distinct !{!36, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !11, !12, !13}
!40 = distinct !{!40, !11, !12}
!41 = !{!37}
!42 = !{!38}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !14}
!45 = !{!"p1 float", !15, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"float", !5, i64 0}
!48 = !{!47, !47, i64 0}
!49 = distinct !{!49, !11, !12, !13}
!50 = distinct !{!50, !11, !13, !12}
!51 = distinct !{!51, !11, !12, !13}
!52 = distinct !{!52, !11, !13, !12}
!53 = !{!"p1 int", !15, i64 0}
!54 = !{!53, !53, i64 0}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !14}
!59 = !{!5, !5, i64 0}
end_hunk_0
