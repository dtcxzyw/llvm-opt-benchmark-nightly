inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@compute_hierarchy:bb.a
bb.i:                                             ; preds = %bb.g
  %i.n = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 4) #8 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.q = shl nuw nsw i64 %i.a, 2
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.1, i64 noundef %i.q) #9 ; 0 uses
  tail call fastcc void @graphviz_exit() #10
  unreachable

gv_calloc.exit81:                                 ; preds = %._crit_edge113
  %i.s = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #8 ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !11
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  store ptr %i.n, ptr %5, align 8, !tbaa !11
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %vec.ind, ptr %i.t, align 4, !tbaa !13
  store <4 x i32> %step.add, ptr %i.u, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader121

.lr.ph.preheader121:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader121 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %gv_calloc.exit81
  %i.y = phi ptr [ %i.s, %gv_calloc.exit81 ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph ] ; 9 uses
  tail call void @quicksort_place(ptr noundef %.067, ptr noundef %i.y, i32 noundef %1) #11
  %i.z = add nsw i32 %1, -1                       ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !19
  %i.ag = load i32, ptr %i.y, align 4, !tbaa !13
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !19
  %i.ak = fsub double %i.af, %i.aj
  %i.al = fmul double %3, %i.ak
  %i.am = sitofp i32 %i.z to double
  %i.an = fdiv double %i.al, %i.am                ; 2 uses
  %i.ao = fcmp ogt double %2, %i.an
  %. = select i1 %i.ao, double %2, double %i.an   ; 6 uses
  %i.ap = icmp samesign ugt i32 %1, 1
  br i1 %i.ap, label %.lr.ph97.preheader, label %._crit_edge98.thread

._crit_edge98.thread:                             ; preds = %._crit_edge
  store i32 0, ptr %7, align 4, !tbaa !13
  br label %bb.k

.lr.ph97.preheader:                               ; preds = %._crit_edge
  %wide.trip.count106 = zext nneg i32 %1 to i64   ; 2 uses
  %i.aq = add nsw i64 %wide.trip.count106, -1     ; 6 uses
  %i.ar = add nsw i64 %wide.trip.count106, -2     ; 2 uses
  %xtraiter = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader.new

.lr.ph97.preheader.new:                           ; preds = %.lr.ph97.preheader
  %unroll_iter = and i64 %i.aq, -2
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97, %.lr.ph97.preheader.new
  %indvars.iv103 = phi i64 [ 1, %.lr.ph97.preheader.new ], [ %indvars.iv.next104.1, %.lr.ph97 ] ; 3 uses
  %.06595 = phi i32 [ 0, %.lr.ph97.preheader.new ], [ %.166.1, %.lr.ph97 ]
  %niter = phi i64 [ 0, %.lr.ph97.preheader.new ], [ %niter.next.1, %.lr.ph97 ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv103 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.at, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !13
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !19
  %i.bd = fsub double %i.ax, %i.bc
  %i.be = fcmp ogt double %i.bd, %.
  %i.bf = zext i1 %i.be to i32
  %.166 = add nuw nsw i32 %.06595, %i.bf
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv103
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bm = fsub double %i.bl, %i.ax
  %i.bn = fcmp ogt double %i.bm, %.
  %i.bo = zext i1 %i.bn to i32
  %.166.1 = add nuw nsw i32 %.166, %i.bo          ; 3 uses
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge98.unr-lcssa, label %.lr.ph97, !llvm.loop !21

._crit_edge98.unr-lcssa:                          ; preds = %.lr.ph97
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge98, label %.lr.ph97.epil.preheader

.lr.ph97.epil.preheader:                          ; preds = %._crit_edge98.unr-lcssa, %.lr.ph97.preheader
  %indvars.iv103.epil.init = phi i64 [ 1, %.lr.ph97.preheader ], [ %indvars.iv.next104.1, %._crit_edge98.unr-lcssa ]
  %.06595.epil.init = phi i32 [ 0, %.lr.ph97.preheader ], [ %.166.1, %._crit_edge98.unr-lcssa ]
  %lcmp.mod123 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv103.epil.init ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !13
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !19
  %i.bu = getelementptr i8, ptr %i.bp, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19
  %i.bz = fsub double %i.bt, %i.by
  %i.ca = fcmp ogt double %i.bz, %.
  %i.cb = zext i1 %i.ca to i32
  %.166.epil = add nuw nsw i32 %.06595.epil.init, %i.cb
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %._crit_edge98.unr-lcssa, %.lr.ph97.epil.preheader
  %.166.lcssa = phi i32 [ %.166.1, %._crit_edge98.unr-lcssa ], [ %.166.epil, %.lr.ph97.epil.preheader ] ; 3 uses
  store i32 %.166.lcssa, ptr %7, align 4, !tbaa !13
  %i.cc = icmp eq i32 %.166.lcssa, 0
  br i1 %i.cc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge98.thread, %._crit_edge98
  %i.cd = tail call noalias dereferenceable_or_null(4) ptr @calloc(i64 noundef 1, i64 noundef 4) #8 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.l, label %gv_calloc.exit82

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.1, i64 noundef 4) #9 ; 0 uses
  tail call fastcc void @graphviz_exit() #10
  unreachable

gv_calloc.exit82:                                 ; preds = %bb.k
  store ptr %i.cd, ptr %6, align 8, !tbaa !11
  store i32 %1, ptr %i.cd, align 4, !tbaa !13
  br label %.loopexit

bb.m:                                             ; preds = %._crit_edge98
  %i.ch = zext nneg i32 %.166.lcssa to i64        ; 2 uses
  %i.ci = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ch, i64 noundef 4) #8 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.n, label %.lr.ph101.preheader

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cl = shl nuw nsw i64 %i.ch, 2
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.1, i64 noundef %i.cl) #9 ; 0 uses
  tail call fastcc void @graphviz_exit() #10
  unreachable

.lr.ph101.preheader:                              ; preds = %bb.m
  store ptr %i.ci, ptr %6, align 8, !tbaa !11
  %xtraiter124 = and i64 %i.aq, 1
  %i.cn = icmp eq i64 %i.ar, 0
  br i1 %i.cn, label %.lr.ph101.epil.preheader, label %.lr.ph101.preheader.new

.lr.ph101.preheader.new:                          ; preds = %.lr.ph101.preheader
  %unroll_iter127 = and i64 %i.aq, -2
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.q, %.lr.ph101.preheader.new
  %indvars.iv108 = phi i64 [ 1, %.lr.ph101.preheader.new ], [ %indvars.iv.next109.1, %bb.q ] ; 5 uses
  %.0100 = phi i32 [ 0, %.lr.ph101.preheader.new ], [ %.1.1, %bb.q ] ; 3 uses
  %niter128 = phi i64 [ 0, %.lr.ph101.preheader.new ], [ %niter128.next.1, %bb.q ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv108 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !19 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.co, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !19
  %i.cy = fsub double %i.cs, %i.cx
  %i.cz = fcmp ogt double %i.cy, %.
  br i1 %i.cz, label %bb.o, label %.lr.ph101.1

bb.o:                                             ; preds = %.lr.ph101
  %i.da = add nsw i32 %.0100, 1
  %i.db = sext i32 %.0100 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.db
  %i.dd = trunc nuw nsw i64 %indvars.iv108 to i32
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !13
  br label %.lr.ph101.1

.lr.ph101.1:                                      ; preds = %.lr.ph101, %bb.o
  %.1 = phi i32 [ %i.da, %bb.o ], [ %.0100, %.lr.ph101 ] ; 3 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv108
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.de = load i32, ptr %9, align 4, !tbaa !13
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !19
  %i.di = fsub double %i.dh, %i.cs
  %i.dj = fcmp ogt double %i.di, %.
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph101.1
  %i.dk = add nsw i32 %.1, 1
  %i.dl = sext i32 %.1 to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dl
  %i.dn = trunc i64 %indvars.iv108 to i32
  %10 = add i32 %i.dn, 1
  store i32 %10, ptr %i.dm, align 4, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph101.1
  %.1.1 = phi i32 [ %i.dk, %bb.p ], [ %.1, %.lr.ph101.1 ] ; 2 uses
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph101, !llvm.loop !22

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.q
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.loopexit, label %.lr.ph101.epil.preheader

.lr.ph101.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph101.preheader
  %indvars.iv108.epil.init = phi i64 [ 1, %.lr.ph101.preheader ], [ %indvars.iv.next109.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.0100.epil.init = phi i32 [ 0, %.lr.ph101.preheader ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod126 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv108.epil.init ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !13
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !19
  %i.dt = getelementptr i8, ptr %i.do, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !13
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %.067, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !19
  %i.dy = fsub double %i.ds, %i.dx
  %i.dz = fcmp ogt double %i.dy, %.
  br i1 %i.dz, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %.lr.ph101.epil.preheader
  %i.ea = sext i32 %.0100.epil.init to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ea
  %i.ec = trunc nuw nsw i64 %indvars.iv108.epil.init to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.r, %.lr.ph101.epil.preheader, %gv_calloc.exit82
  br i1 %.not, label %.thread, label %bb.s

.thread:                                          ; preds = %gv_calloc.exit, %.loopexit
  %.16892 = phi ptr [ %.067, %.loopexit ], [ %i.j, %gv_calloc.exit ]
  %.07191 = phi i32 [ 0, %.loopexit ], [ 1, %gv_calloc.exit ]
  tail call void @free(ptr noundef %.16892) #11
  br label %bb.s

bb.s:                                             ; preds = %.thread, %.loopexit
  %.07190 = phi i32 [ %.07191, %.thread ], [ 0, %.loopexit ]
  ret i32 %.07190
}

declare hidden i32 @compute_y_coords(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @quicksort_place(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef 1) #12
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { cold nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !17, !16}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
end_hunk_0
