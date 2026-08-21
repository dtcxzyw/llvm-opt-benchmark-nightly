inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@mdsModel:bb.a
  %i.ah = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge49
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str, double noundef %.036.lcssa) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge49, %bb.f, %bb.a
  %.039 = phi ptr [ null, %bb.a ], [ %i.d, %bb.f ], [ %i.d, %._crit_edge49 ]
  ret ptr %.039
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @compute_weighted_apsp_packed(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = mul nsw i32 %i.a, %1                     ; 3 uses
  %i.c = sdiv i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %.off = add i32 %i.b, 1
  %.not.i = icmp ult i32 %.off, 3
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.e = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.b, -1
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef %i.d, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.k = shl nuw nsw i64 %i.d, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef %i.k) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.m = phi ptr [ %i.e, %.thread.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = sext i32 %1 to i64                       ; 3 uses
  %.not.i22 = icmp eq i32 %1, 0
  br i1 %.not.i22, label %gv_calloc.exit26, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit
  %mul.ov.i24 = icmp slt i32 %1, 0
  br i1 %mul.ov.i24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.14, i64 noundef %i.n, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #16 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.t = shl nuw nsw i64 %i.n, 2
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i64 noundef %i.t) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit26:                                 ; preds = %gv_calloc.exit
  %i.v = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.w = add nsw i32 %1, -1                       ; 2 uses
  %wide.trip.count40 = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv34 = phi i32 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next35, %.lr.ph ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.lr.ph ] ; 4 uses
  %.030 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %indvars39 = trunc i64 %indvar to i32
  %i.x = shl nuw nsw i64 %indvar, 2
  %scevgep31 = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = trunc i64 %indvar to i32
  %i.z = sub i32 %i.w, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  tail call void @dijkstra_f(i32 noundef %indvars39, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.q) #15
  %i.ad = shl nsw i64 %.030, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep31, i64 %i.ac, i1 false), !tbaa !51
  %i.ae = zext i32 %indvars.iv34 to i64
  %i.af = add nsw i64 %.030, 1
  %i.ag = add nsw i64 %i.af, %i.ae
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %indvars.iv.next35 = add i32 %indvars.iv34, -1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count40
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %gv_calloc.exit26
  %i.ah = phi ptr [ %i.v, %gv_calloc.exit26 ], [ %i.q, %.lr.ph ]
  tail call void @free(ptr noundef %i.ah) #15
  ret ptr %i.m
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden noundef ptr @compute_apsp_packed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = mul nsw i32 %i.a, %1                     ; 3 uses
  %i.c = sdiv i32 %i.b, 2
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %.off = add i32 %i.b, 1
  %.not.i = icmp ult i32 %.off, 3
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.e = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.b, -1
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.14, i64 noundef %i.d, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.k = shl nuw nsw i64 %i.d, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef %i.k) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.m = phi ptr [ %i.e, %.thread.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.n = sext i32 %1 to i64                       ; 3 uses
  %.not.i22 = icmp eq i32 %1, 0
  br i1 %.not.i22, label %gv_calloc.exit26, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit
  %mul.ov.i24 = icmp slt i32 %1, 0
  br i1 %mul.ov.i24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.14, i64 noundef %i.n, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #16 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.t = shl nuw nsw i64 %i.n, 2
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i64 noundef %i.t) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit26:                                 ; preds = %gv_calloc.exit
  %i.v = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count39 = zext nneg i32 %1 to i64    ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.loopexit ] ; 6 uses
  %.030 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.lcssa, %.loopexit ] ; 3 uses
  %2 = sub nsw i64 %wide.trip.count39, %indvars.iv31 ; 3 uses
  %indvars38 = trunc i64 %indvars.iv31 to i32
  tail call void @bfs(i32 noundef %indvars38, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.q) #15
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, -8                         ; 4 uses
  %i.w = add i64 %indvars.iv31, %n.vec
  %i.x = add i64 %.030, %n.vec                    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv31
  %i.z = getelementptr [4 x i8], ptr %i.m, i64 %.030
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !50
  %wide.load43 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !50
  %i.ac = sitofp <4 x i32> %wide.load to <4 x float>
  %i.ad = sitofp <4 x i32> %wide.load43 to <4 x float>
  %i.ae = getelementptr [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x float> %i.ac, ptr %i.ae, align 4, !tbaa !51
  store <4 x float> %i.ad, ptr %i.af, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv33.ph = phi i64 [ %indvars.iv31, %.lr.ph ], [ %i.w, %middle.block ]
  %indvars.iv.ph = phi i64 [ %.030, %.lr.ph ], [ %i.x, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %scalar.ph ], [ %indvars.iv33.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv33
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !50
  %i.aj = sitofp i32 %i.ai to float
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv
  store float %i.aj, ptr %i.ak, align 4, !tbaa !51
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count39
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !66

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.x, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.loopexit, %gv_calloc.exit26
  %i.al = phi ptr [ %i.v, %gv_calloc.exit26 ], [ %i.q, %.loopexit ]
  tail call void @free(ptr noundef %i.al) #15
  ret ptr %i.m
}

declare hidden void @bfs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @compute_apsp_artificial_weights_packed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %gv_calloc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %1, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.096117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %i.g = add i64 %i.f, %.096117
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = add i64 %i.j, %i.g
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = add i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  %i.s = add i64 %i.r, %i.o                       ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !68

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.096117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %._crit_edge.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.096117.epil = phi i64 [ %.096117.epil.init, %.lr.ph.epil.preheader ], [ %i.v, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv.epil
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = add i64 %i.u, %.096117.epil              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i64 [ %i.s, %._crit_edge.unr-lcssa ], [ %i.v, %.lr.ph.epil ] ; 5 uses
  %.not.i = icmp eq i64 %.lcssa, 0
  br i1 %.not.i, label %gv_calloc.exit.thread164, label %bb.b

gv_calloc.exit.thread164:                         ; preds = %._crit_edge
  %i.w = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit.thread

bb.b:                                             ; preds = %._crit_edge
  %mul.ov.i = icmp ugt i64 %.lcssa, 4611686018427387903
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.14, i64 noundef %.lcssa, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noalias ptr @calloc(i64 noundef %.lcssa, i64 noundef 4) #16 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %gv_calloc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ac = shl nuw i64 %.lcssa, 2
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.15, i64 noundef %i.ac) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %bb.a
  %.not.i108 = icmp eq i32 %1, 0
  br i1 %.not.i108, label %gv_calloc.exit112.thread, label %bb.f

bb.f:                                             ; preds = %gv_calloc.exit
  %i.ae = sext i32 %1 to i64
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.14, i64 noundef %i.ae, i64 noundef 4) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit.thread:                            ; preds = %bb.d, %gv_calloc.exit.thread164
  %.ph166 = phi ptr [ %i.w, %gv_calloc.exit.thread164 ], [ %i.z, %bb.d ] ; 2 uses
  %i.ah = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ai = tail call noalias ptr @calloc(i64 noundef %i.ah, i64 noundef 4) #16 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %gv_calloc.exit112

bb.g:                                             ; preds = %gv_calloc.exit.thread
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.al = shl nuw nsw i64 %i.ah, 2
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.15, i64 noundef %i.al) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit112:                                ; preds = %gv_calloc.exit.thread
  %.not.not = icmp eq ptr %i.b, null
  %wide.trip.count144 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %.not.not, label %.lr.ph134, label %.lr.ph125

gv_calloc.exit112.thread:                         ; preds = %gv_calloc.exit
  %i.an = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16 ; 2 uses
  %.not168.not = icmp eq ptr %i.b, null
  br i1 %.not168.not, label %._crit_edge135, label %._crit_edge126

.lr.ph125:                                        ; preds = %gv_calloc.exit112, %._crit_edge122
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge122 ], [ 0, %gv_calloc.exit112 ] ; 3 uses
  %.095124 = phi ptr [ %i.ax, %._crit_edge122 ], [ %.ph166, %gv_calloc.exit112 ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv146 to i32 ; 2 uses
  tail call void @fill_neighbors_vec_unweighted(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef nonnull %i.ai) #15
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv146 ; 5 uses
end_hunk_0
