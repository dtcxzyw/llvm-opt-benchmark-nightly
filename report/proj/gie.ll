inline.NumInlined: 207
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZL11opt_ordinalP7OPTARGSPKc:bb.a
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread77, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ar, ptr noundef nonnull dereferenceable(1) %1) #32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.ay = or disjoint i32 %i.ax, 192
  br label %.thread77

bb.p:                                             ; preds = %bb.n
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #32
  %i.ba = icmp ugt i64 %i.az, 2
  br i1 %i.ba, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  %i.bd = icmp eq i8 %i.bc, 61
  br i1 %i.bd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.bf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %1) #32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bi = load i8, ptr %i.ar, align 1, !tbaa !25  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !18
  %i.bm = icmp eq ptr %i.bl, null
  %i.bn = zext i8 %i.bi to i32
  %spec.select68 = select i1 %i.bm, i32 0, i32 %i.bn
  br label %.thread77

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, 64
  br i1 %exitcond100.not, label %.thread77, label %.thread73.split.split, !llvm.loop !30

.thread77:                                        ; preds = %bb.t, %.thread73.split.split, %bb.m, %.thread73.split, %bb.o, %bb.s, %bb.g, %bb.k, %bb.d, %bb.b, %bb.a
  %.5 = phi i32 [ %i.x, %bb.g ], [ 0, %bb.a ], [ %spec.select, %bb.d ], [ 0, %bb.b ], [ %i.ay, %bb.o ], [ %spec.select67, %bb.k ], [ %spec.select68, %bb.s ], [ 0, %.thread73.split ], [ 0, %bb.m ], [ 0, %.thread73.split.split ], [ 0, %bb.t ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Z7opt_argP7OPTARGSPKc(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Z14opt_strip_pathPKc(ptr nofree noundef readonly %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #32 ; 2 uses
  %i.b = icmp ugt ptr %i.a, %0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %spec.select = select i1 %i.b, ptr %i.c, ptr %0 ; 3 uses
  %i.d = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %spec.select, i32 noundef 47) #32 ; 2 uses
  %i.e = icmp ugt ptr %i.d, %spec.select
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.1 = select i1 %i.e, ptr %i.f, ptr %spec.select
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z9opt_parseiPPcPKcS2_PS2_S3_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(2176) ptr @calloc(i64 noundef 1, i64 noundef 2176) #33 ; 44 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.az, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %0, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !24
  %i.f = load ptr, ptr %1, align 8, !tbaa !18     ; 12 uses
  %i.g = tail call noundef ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.f, i32 noundef 92) #32 ; 2 uses
  %i.h = icmp ugt ptr %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %spec.select.i = select i1 %i.h, ptr %i.i, ptr %i.f ; 3 uses
  %i.j = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %spec.select.i, i32 noundef 47) #32 ; 2 uses
  %i.k = icmp ugt ptr %i.j, %spec.select.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.1.i = select i1 %i.k, ptr %i.l, ptr %spec.select.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %.1.i, ptr %i.m, align 8, !tbaa !32
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32 ; 4 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader303

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 5 uses
  %wide.trip.count = and i64 %i.n, 2147483647
  %i.s = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.n, 2147483644
  br label %bb.e

.preheader303.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader303, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader303.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader303.loopexit.unr-lcssa ]
  %lcmp.mod520 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod520)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  store ptr %i.q, ptr %i.x, align 8, !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader303, label %bb.d, !llvm.loop !33

.preheader303:                                    ; preds = %.preheader303.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32 ; 4 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph329, label %._crit_edge

.lr.ph329:                                        ; preds = %.preheader303
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 5 uses
  %wide.trip.count412 = and i64 %i.y, 2147483647
  %i.ac = add nsw i64 %wide.trip.count412, -1
  %xtraiter522 = and i64 %i.y, 3                  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 3
  br i1 %i.ad, label %.epil.preheader521, label %.lr.ph329.new

.lr.ph329.new:                                    ; preds = %.lr.ph329
  %unroll_iter526 = and i64 %i.y, 2147483644
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !25
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ag
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.al
  store ptr %i.q, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !25
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aq
  store ptr %i.q, ptr %i.ar, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.av
  store ptr %i.q, ptr %i.aw, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader303.loopexit.unr-lcssa, label %bb.e, !llvm.loop !35

bb.f:                                             ; preds = %bb.f, %.lr.ph329.new
  %indvars.iv409 = phi i64 [ 0, %.lr.ph329.new ], [ %indvars.iv.next410.3, %bb.f ] ; 5 uses
  %niter527 = phi i64 [ 0, %.lr.ph329.new ], [ %niter527.next.3, %bb.f ]
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv409
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !25
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.az
  store ptr %i.f, ptr %i.ba, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv409
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.be
  store ptr %i.f, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bj
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv409
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !25
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bo
  store ptr %i.f, ptr %i.bp, align 8, !tbaa !18
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %niter527.next.3 = add nuw i64 %niter527, 4     ; 2 uses
  %niter527.ncmp.3 = icmp eq i64 %niter527.next.3, %unroll_iter526
  br i1 %niter527.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !36

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod524.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod524.not, label %._crit_edge, label %.epil.preheader521

.epil.preheader521:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph329
  %indvars.iv409.epil.init = phi i64 [ 0, %.lr.ph329 ], [ %indvars.iv.next410.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod525 = icmp ne i64 %xtraiter522, 0
  tail call void @llvm.assume(i1 %lcmp.mod525)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader521
  %indvars.iv409.epil = phi i64 [ %indvars.iv409.epil.init, %.epil.preheader521 ], [ %indvars.iv.next410.epil, %bb.g ] ; 2 uses
  %epil.iter523 = phi i64 [ 0, %.epil.preheader521 ], [ %epil.iter523.next, %bb.g ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv409.epil
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !25
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bs
  store ptr %i.f, ptr %i.bt, align 8, !tbaa !18
  %indvars.iv.next410.epil = add nuw nsw i64 %indvars.iv409.epil, 1
  %epil.iter523.next = add i64 %epil.iter523, 1   ; 2 uses
  %epil.iter523.cmp.not = icmp eq i64 %epil.iter523.next, %xtraiter522
  br i1 %epil.iter523.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.preheader303
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 2160
  store ptr %4, ptr %i.bu, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 2168
  store ptr %5, ptr %i.bv, align 8, !tbaa !29
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %.critedge, label %.lr.ph332.split

.lr.ph332.split:                                  ; preds = %._crit_edge
  %i.bw = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %.not248337 = icmp eq ptr %i.bw, null
  br i1 %.not248337, label %.critedge, label %.lr.ph339

.lr.ph339:                                        ; preds = %.lr.ph332.split, %bb.j
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %bb.j ], [ 0, %.lr.ph332.split ]
  %i.bx = phi ptr [ %i.cj, %bb.j ], [ %i.bw, %.lr.ph332.split ] ; 4 uses
  %i.by = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #32
  %i.bz = icmp ult i64 %i.by, 3
  br i1 %i.bz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph339
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !25
  %.not265 = icmp eq i8 %i.cb, 61
  br i1 %.not265, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = load i8, ptr %i.bx, align 1, !tbaa !25
  %i.cd = sext i8 %i.cc to i32
  %i.ce = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.cd) #32
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.3, ptr noundef nonnull %.1.i, ptr noundef nonnull %i.bx, ptr noundef nonnull %2) #31 ; 0 uses
  tail call void @free(ptr noundef %i.c) #30
  br label %bb.az

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph339
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next415
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !18 ; 2 uses
  %.not248 = icmp eq ptr %i.cj, null
  br i1 %.not248, label %.critedge, label %.lr.ph339

.critedge:                                        ; preds = %bb.j, %.lr.ph332.split, %._crit_edge
  %.not249 = icmp eq ptr %5, null                 ; 2 uses
  br i1 %.not249, label %.critedge2, label %.lr.ph341.split

.lr.ph341.split:                                  ; preds = %.critedge
  %i.ck = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %.not250350 = icmp eq ptr %i.ck, null
  br i1 %.not250350, label %.critedge2, label %.lr.ph352

.lr.ph352:                                        ; preds = %.lr.ph341.split, %bb.m
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %bb.m ], [ 0, %.lr.ph341.split ]
  %i.cl = phi ptr [ %i.cx, %bb.m ], [ %i.ck, %.lr.ph341.split ] ; 4 uses
  %i.cm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #32
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph352
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !25
  %.not264 = icmp eq i8 %i.cp, 61
  br i1 %.not264, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = load i8, ptr %i.cl, align 1, !tbaa !25
  %i.cr = sext i8 %i.cq to i32
  %i.cs = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef %i.cr) #32
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.split347, label %bb.m

.split347:                                        ; preds = %bb.l
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.cv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.3, ptr noundef nonnull %.1.i, ptr noundef nonnull %i.cl, ptr noundef nonnull %3) #31 ; 0 uses
  tail call void @free(ptr noundef %i.c) #30
  br label %bb.az

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph352
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next418
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18 ; 2 uses
  %.not250 = icmp eq ptr %i.cx, null
  br i1 %.not250, label %.critedge2, label %.lr.ph352

.critedge2:                                       ; preds = %bb.m, %.lr.ph341.split, %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 8 uses
  store i64 17572847492035388, ptr %i.cy, align 8
  br i1 %.not, label %.critedge4, label %.lr.ph355

.lr.ph355:                                        ; preds = %.critedge2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 4 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !18
  %.not251359 = icmp eq ptr %i.da, null
  br i1 %.not251359, label %.critedge4, label %.lr.ph361.preheader

.lr.ph361:                                        ; preds = %.lr.ph361.preheader
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next421
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !18
  %indvars.iv.next421.1 = or disjoint i64 %indvars.iv420504, 2 ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next421.1
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1024
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !18
  %.not251.1 = icmp eq ptr %i.de, null
  br i1 %.not251.1, label %.critedge4, label %.lr.ph361.1

.lr.ph361.1:                                      ; preds = %.lr.ph361
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next421.1
  store ptr %i.cy, ptr %i.df, align 8, !tbaa !18
  %indvars.iv.next421.2 = or disjoint i64 %indvars.iv420504, 3 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next421.2
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1024
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !18
  %.not251.2 = icmp eq ptr %i.di, null
  br i1 %.not251.2, label %.critedge4, label %.lr.ph361.2

.lr.ph361.2:                                      ; preds = %.lr.ph361.1
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next421.2
  store ptr %i.cy, ptr %i.dj, align 8, !tbaa !18
  %indvars.iv.next421.3 = add nuw nsw i64 %indvars.iv420504, 4 ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next421.3
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1024
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18
  %.not251.3 = icmp eq ptr %i.dm, null
  br i1 %.not251.3, label %.critedge4, label %.lr.ph361.3

.lr.ph361.3:                                      ; preds = %.lr.ph361.2
  %i.dn = icmp eq i64 %indvars.iv.next421.3, 192
  br i1 %i.dn, label %.split358, label %.lr.ph361.preheader

.split358:                                        ; preds = %.lr.ph361.3
  tail call void @free(ptr noundef %i.c) #30
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.dp = tail call i64 @fwrite(ptr nonnull @.str.5, i64 33, i64 1, ptr %i.do) #34 ; 0 uses
  br label %bb.az

.lr.ph361.preheader:                              ; preds = %.lr.ph355, %.lr.ph361.3
  %indvars.iv420504 = phi i64 [ %indvars.iv.next421.3, %.lr.ph361.3 ], [ 128, %.lr.ph355 ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv420504
  store ptr %i.cy, ptr %i.dq, align 8, !tbaa !18
  %indvars.iv.next421 = or disjoint i64 %indvars.iv420504, 1 ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.next421
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1024
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !18
  %.not251 = icmp eq ptr %i.dt, null
  br i1 %.not251, label %.critedge4, label %.lr.ph361

.critedge4:                                       ; preds = %.lr.ph361.preheader, %.lr.ph361, %.lr.ph361.1, %.lr.ph361.2, %.lr.ph355, %.critedge2
  br i1 %.not249, label %.critedge6, label %.lr.ph363

.lr.ph363:                                        ; preds = %.critedge4
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 4 uses
  %i.dv = load ptr, ptr %5, align 8, !tbaa !18
  %.not252367 = icmp eq ptr %i.dv, null
  br i1 %.not252367, label %.critedge6, label %.lr.ph369.preheader

.lr.ph369:                                        ; preds = %.lr.ph369.preheader
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next424
  store ptr %i.f, ptr %i.dw, align 8, !tbaa !18
  %indvars.iv.next424.1 = or disjoint i64 %indvars.iv423505, 2 ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next424.1
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1536
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !18
  %.not252.1 = icmp eq ptr %i.dz, null
  br i1 %.not252.1, label %.critedge6, label %.lr.ph369.1

.lr.ph369.1:                                      ; preds = %.lr.ph369
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next424.1
  store ptr %i.f, ptr %i.ea, align 8, !tbaa !18
  %indvars.iv.next424.2 = or disjoint i64 %indvars.iv423505, 3 ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.next424.2
end_hunk_0
