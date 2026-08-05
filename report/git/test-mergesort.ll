inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@test:bb.a
  %i.bz = lshr i64 %.02022.i, 1
  %i.ca = and i64 %.02022.i, 2
  %.not28.i = icmp eq i64 %i.ca, 0
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %sort_numbers__merge.exit.i
  store i32 %i.bk, ptr @stats.2, align 4, !tbaa !51
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.i
  %.lcssa2538.i = phi i32 [ %i.bk, %._crit_edge.i ], [ %.lcssa2539.i91, %.split.i ] ; 2 uses
  %.lcssa2635.i = phi i32 [ %i.by, %._crit_edge.i ], [ %i.ax, %.split.i ] ; 3 uses
  %.lcssa.lcssa31.i = phi i32 [ %i.bn, %._crit_edge.i ], [ %i.av, %.split.i ]
  %.021.lcssa18.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.split.i ]
  %.1.lcssa17.i = phi ptr [ %spec.select35.i.i, %._crit_edge.i ], [ %.0.i94, %.split.i ]
  %i.cb = add i64 %.023.i93, 1                    ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.021.lcssa18.i
  store ptr %.1.lcssa17.i, ptr %i.cc, align 8, !tbaa !49
  %i.cd = getelementptr i8, ptr %.0.val.i95, i64 8 ; 2 uses
  %.0.val.i = load ptr, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %i.ce = add nsw i32 %.lcssa.lcssa31.i, 1        ; 2 uses
  %.not27.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not27.not.i, label %.preheader.i..split.us.i_crit_edge, label %.split.i

sort_numbers.exit:                                ; preds = %bb.i, %._crit_edge
  %.0..0. = phi ptr [ null, %._crit_edge ], [ %.1.us.i, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cf = icmp ugt i32 %2, 1
  br i1 %i.cf, label %bb.o, label %sane_qsort.exit

bb.o:                                             ; preds = %sort_numbers.exit
  tail call void @qsort(ptr noundef %i.f, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 4, ptr noundef nonnull @compare_ints) #20
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %sort_numbers.exit, %bb.o
  %i.cg = icmp ne i32 %2, 0                       ; 3 uses
  %i.ch = icmp ne ptr %.0..0., null               ; 3 uses
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph107, label %._crit_edge108.thread

.lr.ph107:                                        ; preds = %sane_qsort.exit, %bb.r
  %.051106 = phi ptr [ %i.cn, %bb.r ], [ %.0..0., %sane_qsort.exit ] ; 3 uses
  %.047105 = phi i32 [ %.1, %bb.r ], [ 1, %sane_qsort.exit ] ; 3 uses
  %.048104 = phi i32 [ %spec.select, %bb.r ], [ 1, %sane_qsort.exit ]
  %.153103 = phi i64 [ %i.cw, %bb.r ], [ 0, %sane_qsort.exit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.153103
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !22
  %i.cl = load i32, ptr %.051106, align 8, !tbaa !45 ; 2 uses
  %.not57 = icmp eq i32 %i.ck, %i.cl
  %spec.select = select i1 %.not57, i32 %.048104, i32 0 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.051106, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !55 ; 4 uses
  %.not58.not.not = icmp ne ptr %i.cn, null       ; 2 uses
  br i1 %.not58.not.not, label %bb.p, label %.thread

.thread:                                          ; preds = %.lr.ph107
  %i.co = add nuw i64 %.153103, 1
  %i.cp = icmp ult i64 %i.co, %i.c
  br label %._crit_edge108

bb.p:                                             ; preds = %.lr.ph107
  %i.cq = load i32, ptr %i.cn, align 8, !tbaa !45
  %i.cr = icmp eq i32 %i.cl, %i.cq
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.051106, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !48
  %.not59 = icmp slt i32 %i.ct, %i.cv
  %spec.select60 = select i1 %.not59, i32 %.047105, i32 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1 = phi i32 [ %.047105, %bb.p ], [ %spec.select60, %bb.q ] ; 2 uses
  %i.cw = add nuw i64 %.153103, 1                 ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.c
  br i1 %i.cx, label %.lr.ph107, label %._crit_edge108, !llvm.loop !57

._crit_edge108:                                   ; preds = %bb.r, %.thread
  %.str.29.mux = phi ptr [ @.str.31, %.thread ], [ @.str.30, %bb.r ]
  %i.cy = phi i1 [ %i.cp, %.thread ], [ false, %bb.r ] ; 2 uses
  %.1142 = phi i32 [ %.047105, %.thread ], [ %.1, %bb.r ]
  %i.cz = icmp eq i32 %spec.select, 0
  %brmerge = or i1 %i.cy, %.not58.not.not
  %brmerge187 = select i1 %brmerge, i1 true, i1 %i.cz
  %.str.29.mux.mux = select i1 %i.cy, ptr @.str.29, ptr %.str.29.mux
  br i1 %brmerge187, label %.thread155, label %bb.s

._crit_edge108.thread:                            ; preds = %sane_qsort.exit
  %brmerge147 = select i1 %i.cg, i1 true, i1 %i.ch
  %.str.29.mux148 = select i1 %i.ch, ptr @.str.30, ptr @.str.33
  %spec.select214 = select i1 %i.cg, ptr @.str.29, ptr %.str.29.mux148
  %spec.select215 = sext i1 %brmerge147 to i32
  br label %.thread155

bb.s:                                             ; preds = %._crit_edge108
  %.1142.fr = freeze i32 %.1142
  %i.da = icmp eq i32 %.1142.fr, 0                ; 2 uses
  %spec.select188 = select i1 %i.da, ptr @.str.32, ptr @.str.33
  %i.db = sext i1 %i.da to i32
  br label %.thread155

.thread155:                                       ; preds = %._crit_edge108.thread, %bb.s, %._crit_edge108
  %.046 = phi ptr [ %spec.select214, %._crit_edge108.thread ], [ %.str.29.mux.mux, %._crit_edge108 ], [ %spec.select188, %bb.s ]
  %.0 = phi i32 [ %spec.select215, %._crit_edge108.thread ], [ -1, %._crit_edge108 ], [ %i.db, %bb.s ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !15
  %i.dd = load ptr, ptr %1, align 8, !tbaa !17
  %i.de = load i32, ptr @stats.0, align 4, !tbaa !54
  %i.df = load i32, ptr @stats.1, align 4, !tbaa !53
  %i.dg = load i32, ptr @stats.2, align 4, !tbaa !51
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %i.dc, ptr noundef %i.dd, i32 noundef %2, i32 noundef %3, i32 noundef %i.de, i32 noundef %i.df, i32 noundef %i.dg, ptr noundef nonnull %.046) ; 0 uses
  %.not4.i = icmp eq ptr %.0..0., null
  br i1 %.not4.i, label %clear_numbers.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.thread155, %.lr.ph.i61
  %.05.i = phi ptr [ %i.dj, %.lr.ph.i61 ], [ %.0..0., %.thread155 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !55 ; 2 uses
  tail call void @free(ptr noundef nonnull %.05.i) #20
  %.not.i62 = icmp eq ptr %i.dj, null
  br i1 %.not.i62, label %clear_numbers.exit, label %.lr.ph.i61, !llvm.loop !58

clear_numbers.exit:                               ; preds = %.lr.ph.i61, %.thread155
  tail call void @free(ptr noundef %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compare_ints(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = load i32, ptr %1, align 4, !tbaa !22
  %i.c = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_sawtooth(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = srem i32 %i.c, %2
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.d, ptr %i.e, align 4, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.g = srem i32 %i.f, %2
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.g, ptr %i.h, align 4, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !59

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.i = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.j = srem i32 %i.i, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i32 %i.j, ptr %i.k, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_rand(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.056.a = phi i64 [ 0, %.lr.ph.preheader ], [ %niter.next.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 1, %.lr.ph.preheader ], [ %i.c, %.lr.ph ]
  %i.b = mul nuw nsw i64 %niter, 48271
  %i.c = urem i64 %i.b, 2147483647                ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = urem i32 %i.d, %2
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.056.a
  store i32 %i.e, ptr %i.f, align 4, !tbaa !22
  %niter.next.1 = add nuw nsw i64 %.056.a, 1      ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count
  br i1 %niter.ncmp.1, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_stagger(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.09 = add i32 %2, 1                            ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = mul i32 %.09, %i.c
  %i.e = srem i32 %i.d, %1
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.e, ptr %i.f, align 4, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.h = mul i32 %.09, %i.g
  %i.i = srem i32 %i.h, %1
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.i, ptr %i.j, align 4, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.k = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.l = mul i32 %.09, %i.k
  %i.m = srem i32 %i.l, %1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i32 %i.m, ptr %i.n, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_plateau(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.b = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.ind, <4 x i32> %broadcast.splat)
  %i.c = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %step.add, <4 x i32> %broadcast.splat)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %i.b, ptr %i.d, align 4, !tbaa !22
  store <4 x i32> %i.c, ptr %i.e, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader10

.lr.ph.preheader10:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader10, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader10 ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %2)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.h, ptr %i.i, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_shuffle(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.014 = phi i32 [ 1, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 2 uses
  %.0713 = phi i32 [ 0, %.lr.ph.preheader ], [ %.18, %.lr.ph ] ; 2 uses
  %.01011 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.c, %.lr.ph ]
  %i.b = mul nuw nsw i64 %.01011, 48271
  %i.c = urem i64 %i.b, 2147483647                ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = urem i32 %i.d, %2
  %.not = icmp eq i32 %i.e, 0                     ; 3 uses
  %i.f = add nsw i32 %.0713, 2                    ; 2 uses
  %i.g = add nsw i32 %.014, 2                     ; 2 uses
  %.18 = select i1 %.not, i32 %.0713, i32 %i.f
  %.1 = select i1 %.not, i32 %i.g, i32 %.014
  %i.h = select i1 %.not, i32 %i.g, i32 %i.f
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.h, ptr %i.i, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @mode_copy(ptr nofree readnone captures(none) %0, i32 %1) #12 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mode_reverse(ptr nofree noundef captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = add nsw i64 %i.b, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv17 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next18, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv17 ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 1
  %i.f = load i32, ptr %i.e, align 1
  store i32 %i.f, ptr %i.d, align 1
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.g = icmp slt i64 %indvars.iv.next18, %indvars.iv.next
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mode_reverse_1st_half(ptr nofree noundef captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 3
  br i1 %i.a, label %.lr.ph.preheader.i, label %mode_reverse.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = add nsw i64 %i.c, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next18.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.d, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv17.i ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 1
end_hunk_0
