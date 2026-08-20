inline.NumInlined: 79
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@create_offspring:bb.a
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv125
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !10
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %7, i64 %i.cl
  store i32 0, ptr %i.cm, align 4, !tbaa !10
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next126
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cp
  store i32 0, ptr %i.cq, align 4, !tbaa !10
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next126
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ct
  store i32 0, ptr %i.cu, align 4, !tbaa !10
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter147.next.1 = add nuw i64 %niter147, 2     ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %.lr.ph107.preheader.unr-lcssa, label %.lr.ph104, !llvm.loop !22

._crit_edge108.loopexit.unr-lcssa:                ; preds = %.lr.ph107
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %._crit_edge108, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107.preheader
  %indvars.iv130.epil.init = phi i64 [ 1, %.lr.ph107.preheader ], [ %indvars.iv.next131.3, %._crit_edge108.loopexit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %.lr.ph107.epil

.lr.ph107.epil:                                   ; preds = %.lr.ph107.epil, %.lr.ph107.epil.preheader
  %indvars.iv130.epil = phi i64 [ %indvars.iv130.epil.init, %.lr.ph107.epil.preheader ], [ %indvars.iv.next131.epil, %.lr.ph107.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph107.epil.preheader ], [ %epil.iter.next, %.lr.ph107.epil ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130.epil
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cx
  store i32 0, ptr %i.cy, align 4, !tbaa !10
  %indvars.iv.next131.epil = add nuw nsw i64 %indvars.iv130.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter148
  br i1 %epil.iter.cmp.not, label %._crit_edge108, label %.lr.ph107.epil, !llvm.loop !23

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107.epil, %._crit_edge
  ret void

.lr.ph107:                                        ; preds = %.lr.ph107, %.lr.ph107.preheader.new
  %indvars.iv130 = phi i64 [ 1, %.lr.ph107.preheader.new ], [ %indvars.iv.next131.3, %.lr.ph107 ] ; 5 uses
  %niter152 = phi i64 [ 0, %.lr.ph107.preheader.new ], [ %niter152.next.3, %.lr.ph107 ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !10
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.db
  store i32 0, ptr %i.dc, align 4, !tbaa !10
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !10
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dg
  store i32 0, ptr %i.dh, align 4, !tbaa !10
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !10
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dl
  store i32 0, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !10
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dq
  store i32 0, ptr %i.dr, align 4, !tbaa !10
  %indvars.iv.next131.3 = add nuw nsw i64 %indvars.iv130, 4 ; 2 uses
  %niter152.next.3 = add nuw i64 %niter152, 4     ; 2 uses
  %niter152.ncmp.3 = icmp eq i64 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %._crit_edge108.loopexit.unr-lcssa, label %.lr.ph107, !llvm.loop !24
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define noundef i32 @count_unique_subsets(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %i.c = icmp sgt i32 %1, 1
  %.not34 = icmp sgt i32 %i.b, 0
  %or.cond = select i1 %i.c, i1 %.not34, i1 false
  br i1 %or.cond, label %.lr.ph.us.preheader, label %._crit_edge43

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1                      ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count51 = zext nneg i32 %1 to i64
  %wide.trip.count = zext i32 %i.d to i64
  %exitcond55 = icmp eq i32 %i.d, 2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv48 = phi i64 [ 1, %.lr.ph.us.preheader ], [ %indvars.iv.next49, %._crit_edge.us ] ; 3 uses
  %.03039.us = phi i32 [ 1, %.lr.ph.us.preheader ], [ %spec.select.us, %._crit_edge.us ]
  %i.f = mul nsw i64 %indvars.iv48, %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = add nsw i64 %indvars.iv48, -1
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %.not32.us45 = icmp eq i32 %i.l, %i.n
  %.not32.us45.not = xor i1 %.not32.us45, true    ; 2 uses
  %brmerge = select i1 %.not32.us45.not, i1 true, i1 %exitcond55
  %.mux = select i1 %.not32.us45.not, i32 1, i32 0
  br i1 %brmerge, label %._crit_edge.us, label %.lr.ph57, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.lr.ph.._crit_edge.us.loopexit_crit_edge, label %.lr.ph57, !llvm.loop !25

.lr.ph57:                                         ; preds = %.lr.ph.us, %.lr.ph
  %indvars.iv56 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 2, %.lr.ph.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv56
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv56
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %.not32.us = icmp eq i32 %i.p, %i.r
  br i1 %.not32.us, label %.lr.ph, label %.._crit_edge.us.loopexit_crit_edge, !llvm.loop !25

.._crit_edge.us.loopexit_crit_edge:               ; preds = %.lr.ph57
  br label %._crit_edge.us, !llvm.loop !25

.lr.ph.._crit_edge.us.loopexit_crit_edge:         ; preds = %.lr.ph
  br label %._crit_edge.us, !llvm.loop !25

._crit_edge.us:                                   ; preds = %.lr.ph.us, %.._crit_edge.us.loopexit_crit_edge, %.lr.ph.._crit_edge.us.loopexit_crit_edge
  %.not.lcssa.us = phi i32 [ %.mux, %.lr.ph.us ], [ 0, %.lr.ph.._crit_edge.us.loopexit_crit_edge ], [ 1, %.._crit_edge.us.loopexit_crit_edge ]
  %spec.select.us = add nuw nsw i32 %.not.lcssa.us, %.03039.us ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %._crit_edge43, label %.lr.ph.us, !llvm.loop !26

._crit_edge43:                                    ; preds = %._crit_edge.us, %bb.b
  %.030.lcssa = phi i32 [ 1, %bb.b ], [ %spec.select.us, %._crit_edge.us ] ; 3 uses
  %i.s = uitofp nneg i32 %.030.lcssa to double
  %i.t = fmul nnan double %i.s, 1.000000e+02
  %i.u = sitofp i32 %1 to double
  %i.v = fdiv double %i.t, %i.u
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %3, i32 noundef %.030.lcssa, i32 noundef %1, double noundef %i.v) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge43
  %.0 = phi i32 [ %.030.lcssa, %._crit_edge43 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @genetic_subset_selection(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = mul nsw i32 %i.a, %2                     ; 2 uses
  %i.c = sdiv i32 %i.b, 2                         ; 3 uses
  %i.d = add nsw i32 %1, 2                        ; 6 uses
  %i.e = mul nsw i32 %i.c, %i.d
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #24 ; 6 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #24 ; 2 uses
  %i.j = mul nsw i32 %3, %2                       ; 3 uses
  %i.k = mul nsw i32 %i.j, %i.d
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 4) #25 ; 6 uses
  %i.n = sext i32 %0 to i64                       ; 3 uses
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #25 ; 9 uses
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #25 ; 9 uses
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #25 ; 9 uses
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 4 uses
  %i.v = icmp sgt i32 %i.b, 1
  br i1 %i.v, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.w = icmp sgt i32 %1, 0
  %.not.i = icmp eq i32 %1, 1
  %i.x = sext i32 %1 to i64                       ; 4 uses
  %smax240 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count240 = zext nneg i32 %smax240 to i64 ; 2 uses
  br i1 %i.w, label %.lr.ph.i.preheader.us.preheader, label %generate_random_subset.exit.preheader

generate_random_subset.exit.preheader:            ; preds = %.lr.ph
  %i.y = sext i32 %i.d to i64
  br label %generate_random_subset.exit

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph
  %i.z = zext nneg i32 %i.d to i64
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %generate_random_subset.exit.us
  %indvars.iv237 = phi i64 [ 0, %.lr.ph.i.preheader.us.preheader ], [ %indvars.iv.next238, %generate_random_subset.exit.us ] ; 2 uses
  %i.aa = mul nuw nsw i64 %indvars.iv237, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aa ; 12 uses
  store i32 %1, ptr %i.ab, align 4, !tbaa !10
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.loopexit.i.us
  %.045.i.us = phi i32 [ %.1.i.us, %.loopexit.i.us ], [ 0, %.lr.ph.i.preheader.us ] ; 4 uses
  %i.ac = tail call i32 @rand() #23
  %i.ad = srem i32 %i.ac, %0                      ; 2 uses
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %.045.i.us, i32 0)
  %wide.trip.count.i.us = zext nneg i32 %smax.i.us to i64
  %exitcond.not.i.us310 = icmp slt i32 %.045.i.us, 1
  br i1 %exitcond.not.i.us310, label %.critedge.i.us, label %.lr.ph312

bb.b:                                             ; preds = %.lr.ph312
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %.critedge.i.us, label %.lr.ph312, !llvm.loop !14

.lr.ph312:                                        ; preds = %.lr.ph.i.us, %bb.b
  %indvars.iv.i.us311 = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.i.us ]
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us311, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = icmp eq i32 %i.af, %i.ad
  br i1 %i.ag, label %.loopexit.i.us, label %bb.b, !llvm.loop !14

.critedge.i.us:                                   ; preds = %bb.b, %.lr.ph.i.us
  %i.ah = add nsw i32 %.045.i.us, 1               ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ai
  store i32 %i.ad, ptr %i.aj, align 4, !tbaa !10
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.lr.ph312, %.critedge.i.us
  %.1.i.us = phi i32 [ %i.ah, %.critedge.i.us ], [ %.045.i.us, %.lr.ph312 ] ; 2 uses
  %i.ak = icmp slt i32 %.1.i.us, %1
  br i1 %i.ak, label %.lr.ph.i.us, label %.preheader44.i.us, !llvm.loop !15

.preheader44.i.us:                                ; preds = %.loopexit.i.us
  br i1 %.not.i, label %generate_random_subset.exit.us, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %.preheader44.i.us
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.loopexit.us, %.preheader.preheader.i.us
  %indvars.iv55.i.us = phi i32 [ %1, %.preheader.preheader.i.us ], [ %indvars.iv.next56.i.us, %._crit_edge.i.loopexit.us ] ; 3 uses
  %.03649.i.us = phi i32 [ 1, %.preheader.preheader.i.us ], [ %i.bi, %._crit_edge.i.loopexit.us ]
  %i.al = zext i32 %indvars.iv55.i.us to i64
  %i.am = add nsw i64 %i.al, -1                   ; 3 uses
  %.pre.i.us = load i32, ptr %.phi.trans.insert.i.us, align 4, !tbaa !10 ; 2 uses
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i32 %indvars.iv55.i.us, 2
  br i1 %i.an, label %.lr.ph48.i.us.epil.preheader, label %.preheader.i.us.new

.preheader.i.us.new:                              ; preds = %.preheader.i.us
  %unroll_iter = and i64 %i.am, -2
  br label %.lr.ph48.i.us

.lr.ph48.i.us:                                    ; preds = %bb.e, %.preheader.i.us.new
  %i.ao = phi i32 [ %.pre.i.us, %.preheader.i.us.new ], [ %i.ay, %bb.e ] ; 3 uses
  %indvars.iv52.i.us = phi i64 [ 1, %.preheader.i.us.new ], [ %indvars.iv.next53.i.us.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.us.new ], [ %niter.next.1, %bb.e ]
  %indvars.iv.next53.i.us = add nuw nsw i64 %indvars.iv52.i.us, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next53.i.us ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !10 ; 3 uses
  %i.ar = icmp sgt i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.c, label %.lr.ph48.i.us.1

bb.c:                                             ; preds = %.lr.ph48.i.us
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv52.i.us
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !10
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !10
  br label %.lr.ph48.i.us.1

.lr.ph48.i.us.1:                                  ; preds = %bb.c, %.lr.ph48.i.us
  %i.at = phi i32 [ %i.aq, %.lr.ph48.i.us ], [ %i.ao, %bb.c ] ; 3 uses
  %indvars.iv.next53.i.us.1 = add nuw nsw i64 %indvars.iv52.i.us, 2 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next53.i.us.1 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10 ; 3 uses
  %i.aw = icmp sgt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph48.i.us.1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next53.i.us
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !10
  store i32 %i.at, ptr %i.au, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph48.i.us.1
  %i.ay = phi i32 [ %i.av, %.lr.ph48.i.us.1 ], [ %i.at, %bb.d ] ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.us.unr-lcssa, label %.lr.ph48.i.us, !llvm.loop !17

generate_random_subset.exit.us:                   ; preds = %._crit_edge.i.loopexit.us, %.preheader44.i.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ba = tail call i32 %5(ptr noundef nonnull %i.az, i32 noundef %1, ptr noundef %8) #23
  %i.bb = getelementptr [4 x i8], ptr %i.ab, i64 %i.x
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !10
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count240
  br i1 %exitcond241.not, label %._crit_edge, label %.lr.ph.i.preheader.us, !llvm.loop !27

._crit_edge.i.loopexit.us.unr-lcssa:              ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit.us, label %.lr.ph48.i.us.epil.preheader

.lr.ph48.i.us.epil.preheader:                     ; preds = %._crit_edge.i.loopexit.us.unr-lcssa, %.preheader.i.us
  %.epil.init = phi i32 [ %.pre.i.us, %.preheader.i.us ], [ %i.ay, %._crit_edge.i.loopexit.us.unr-lcssa ] ; 2 uses
  %indvars.iv52.i.us.epil.init = phi i64 [ 1, %.preheader.i.us ], [ %indvars.iv.next53.i.us.1, %._crit_edge.i.loopexit.us.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod330)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv52.i.us.epil.init
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.bg = icmp sgt i32 %.epil.init, %i.bf
  br i1 %i.bg, label %bb.f, label %._crit_edge.i.loopexit.us

bb.f:                                             ; preds = %.lr.ph48.i.us.epil.preheader
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv52.i.us.epil.init
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !10
  store i32 %.epil.init, ptr %i.be, align 4, !tbaa !10
  br label %._crit_edge.i.loopexit.us

._crit_edge.i.loopexit.us:                        ; preds = %.lr.ph48.i.us.epil.preheader, %bb.f, %._crit_edge.i.loopexit.us.unr-lcssa
  %i.bi = add nuw nsw i32 %.03649.i.us, 1         ; 2 uses
  %indvars.iv.next56.i.us = add i32 %indvars.iv55.i.us, -1
  %exitcond59.not.i.us = icmp eq i32 %i.bi, %1
  br i1 %exitcond59.not.i.us, label %generate_random_subset.exit.us, label %.preheader.i.us, !llvm.loop !16

._crit_edge:                                      ; preds = %generate_random_subset.exit, %generate_random_subset.exit.us, %.._crit_edge_crit_edge
  %.pre.i192.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.x, %generate_random_subset.exit.us ], [ %i.x, %generate_random_subset.exit ] ; 4 uses
  %i.bj = sext i32 %i.c to i64                    ; 2 uses
  %i.bk = sext i32 %i.d to i64                    ; 8 uses
  %i.bl = shl nsw i64 %i.bk, 2                    ; 4 uses
  tail call void @qsort(ptr noundef %i.h, i64 noundef %i.bj, i64 noundef %i.bl, ptr noundef nonnull @compare_subsets_by_cost) #23
  %i.bm = add nsw i32 %1, 1                       ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 5 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10 ; 2 uses
  %i.bq = icmp sgt i32 %2, 0                      ; 4 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.br = icmp sgt i32 %1, 0                      ; 2 uses
  %.not89.i = icmp slt i32 %1, 1                  ; 2 uses
  %i.bs = icmp sgt i32 %0, 0                      ; 2 uses
  %i.bt = zext nneg i32 %0 to i64                 ; 2 uses
  %i.bu = sext i32 %2 to i64                      ; 2 uses
  %i.bv = sext i32 %i.j to i64
  %i.bw = zext i32 %i.d to i64                    ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 3 uses
  %wide.trip.count252 = zext nneg i32 %2 to i64
  %wide.trip.count262 = zext nneg i32 %2 to i64
  %wide.trip.count257 = zext nneg i32 %1 to i64
  %wide.trip.count278 = zext nneg i32 %2 to i64   ; 2 uses
  %exitcond280.not313 = icmp slt i32 %3, 1
  br i1 %exitcond280.not313, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count.i187 = zext i32 %i.bm to i64   ; 2 uses
  %i.bx = add nsw i64 %wide.trip.count.i187, -1   ; 8 uses
  %i.by = add nsw i64 %wide.trip.count.i187, -2   ; 3 uses
  %xtraiter331 = and i64 %i.bx, 1
  %i.bz = icmp eq i64 %i.by, 0
  %unroll_iter334 = and i64 %i.bx, -2
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  %lcmp.mod333 = trunc i64 %i.bx to i1
  %xtraiter336 = and i64 %i.bx, 1
  %i.ca = icmp eq i64 %i.by, 0
  %unroll_iter339 = and i64 %i.bx, -2
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  %lcmp.mod338 = trunc i64 %i.bx to i1
  %xtraiter341 = and i64 %i.bx, 3                 ; 3 uses
  %i.cb = icmp ult i64 %i.by, 3
  %unroll_iter344 = and i64 %i.bx, -4
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  %lcmp.mod343 = icmp ne i64 %xtraiter341, 0
  br label %.preheader

generate_random_subset.exit:                      ; preds = %generate_random_subset.exit.preheader, %generate_random_subset.exit
  %indvars.iv = phi i64 [ 0, %generate_random_subset.exit.preheader ], [ %indvars.iv.next, %generate_random_subset.exit ] ; 2 uses
  %i.cc = mul nsw i64 %indvars.iv, %i.y
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cc ; 3 uses
  store i32 %1, ptr %i.cd, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = tail call i32 %5(ptr noundef nonnull %i.ce, i32 noundef %1, ptr noundef %8) #23
  %i.cg = getelementptr [4 x i8], ptr %i.cd, i64 %i.x
end_hunk_0
