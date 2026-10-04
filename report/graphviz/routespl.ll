Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/routespl?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@simpleSplineRoute:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @Pshortestpath(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @make_polyline(ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc noalias noundef ptr @gv_calloc(i64 noundef %0, i64 noundef range(i64 8, 49) %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef %1) #18
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.5, i64 noundef %0, i64 noundef %1) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #18 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.g = mul i64 %1, %0
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, i64 noundef %i.g) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %.thread, %bb.d
  %i.i = phi ptr [ %i.a, %.thread ], [ %i.d, %bb.d ]
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @Proutespline(ptr noundef, i64 noundef, ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @routesplinesinit() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @routeinit, align 4, !tbaa !25 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @routeinit, align 4, !tbaa !25
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr @nedges, align 4, !tbaa !25
  store i64 0, ptr @nboxes, align 8, !tbaa !24
  %i.d = load i8, ptr @Verbose, align 1, !tbaa !26
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @start_timer() #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

declare void @start_timer() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @routesplinesterm() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr @routeinit, align 4, !tbaa !25 ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr @routeinit, align 4, !tbaa !25
  %i.d = icmp slt i32 %i.b, 2
  %i.e = load i8, ptr @Verbose, align 1
  %i.f = icmp ne i8 %i.e, 0
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @flockfile(ptr noundef %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = tail call i64 @time(ptr noundef null) #17
  store i64 %i.h, ptr %i.a, align 8, !tbaa !24
  %i.i = call ptr @localtime(ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = add nsw i32 %i.l, 1900
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = add nsw i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  %i.w = load i32, ptr %i.i, align 8, !tbaa !34
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 45), i32 noundef 235, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.w) #19 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.z = load i32, ptr @nedges, align 4, !tbaa !25
  %i.aa = load i64, ptr @nboxes, align 8, !tbaa !24
  %i.ab = call double @elapsed_sec() #17
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.3, i32 noundef %i.z, i64 noundef %i.aa, double noundef %i.ab) #19 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc = call i32 @fputc(i32 10, ptr %i.ad)     ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @funlockfile(ptr noundef %i.ae) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare double @elapsed_sec() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @routesplines(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @routesplines_(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @routesplines_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Ppoly_t, align 8            ; 5 uses
  %4 = alloca %struct.Ppoly_t, align 8            ; 9 uses
  %5 = alloca %struct.Ppoly_t, align 8            ; 6 uses
  %6 = alloca [2 x %struct.pointf_s], align 16    ; 5 uses
  %7 = alloca [2 x %struct.pointf_s], align 16    ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.Ppoly_t, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 0, ptr %1, align 8, !tbaa !24
  %i.c = load i32, ptr @nedges, align 4, !tbaa !25
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @nedges, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 28 uses
  %i.g = load i64, ptr @nboxes, align 8, !tbaa !24
  %i.h = add i64 %i.g, %i.f
  store i64 %i.h, ptr @nboxes, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.0396451 = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.not452 = icmp eq ptr %.0396451, null
  br i1 %.not452, label %.critedge417, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %.0396 = load ptr, ptr %i.j, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %.0396, null
  br i1 %.not, label %.critedge417, label %.lr.ph, !llvm.loop !79

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0396453 = phi ptr [ %.0396, %bb.b ], [ %.0396451, %bb.a ] ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0396453, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load i8, ptr %i.m, align 8, !tbaa !97
  %.not407 = icmp eq i8 %i.n, 0
  br i1 %.not407, label %.critedge, label %bb.b

.critedge417:                                     ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.7) #17
  br label %.critedge419

.critedge:                                        ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 44 uses
  %.not254.i = icmp eq i64 %i.f, 0                ; 4 uses
  br i1 %.not254.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %.critedge
  %.0204.lcssa.i = phi i64 [ 0, %.critedge ], [ %.1.i, %bb.e ] ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !52 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !53 ; 3 uses
  %i.t = fcmp ogt double %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.f

.lr.ph.i:                                         ; preds = %.critedge, %bb.e
  %.0203244.i = phi i64 [ %i.ak, %bb.e ], [ 0, %.critedge ] ; 2 uses
  %.0204243.i = phi i64 [ %.1.i, %bb.e ], [ 0, %.critedge ] ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0203244.i ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !55
  %i.z = fsub double %i.w, %i.y
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp olt double %i.aa, 1.000000e-02
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ad = load double, ptr %i.u, align 8, !tbaa !52
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !53
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp olt double %i.ag, 1.000000e-02
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0204243.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !tbaa.struct !98
  %i.aj = add i64 %.0204243.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.1.i = phi i64 [ %.0204243.i, %.lr.ph.i ], [ %.0204243.i, %bb.c ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ak = add nuw i64 %.0203244.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !80

bb.f:                                             ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 6 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %i.ap = fcmp ogt double %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not251.i = icmp ugt i64 %.0204.lcssa.i, 1
  br i1 %.not251.i, label %.lr.ph253.i, label %.critedge.i

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.15) #17
  tail call fastcc void @printpath(ptr noundef %0)
  br label %.critedge419

.lr.ph253.i:                                      ; preds = %.preheader.i, %overlap.exit239.thread.i
  %i.aq = phi double [ %i.fe, %overlap.exit239.thread.i ], [ %i.am, %.preheader.i ]
  %i.ar = phi double [ %i.ff, %overlap.exit239.thread.i ], [ %i.ao, %.preheader.i ]
  %i.as = phi double [ %i.fg, %overlap.exit239.thread.i ], [ %i.q, %.preheader.i ]
  %i.at = phi double [ %i.fh, %overlap.exit239.thread.i ], [ %i.s, %.preheader.i ]
  %i.au = phi i64 [ %i.fi, %overlap.exit239.thread.i ], [ 1, %.preheader.i ] ; 5 uses
  %.0201252.i = phi i64 [ %i.au, %overlap.exit239.thread.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0201252.i ; 9 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.au ; 8 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 7 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp ogt double %i.ax, %i.az
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph253.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 9 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !54 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 11 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !55 ; 2 uses
  %i.bf = fcmp ogt double %i.bc, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.lr.ph253.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.16, i64 noundef %i.au) #17
  tail call fastcc void @printpath(ptr noundef %0)
  br label %.critedge419

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  %i.bh = fcmp olt double %i.at, %i.ax            ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  %i.bj = fcmp ogt double %i.as, %i.az            ; 3 uses
  %i.bk = zext i1 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 8 uses
  %i.bm = fcmp olt double %i.ar, %i.bc            ; 2 uses
  %i.bn = zext i1 %i.bm to i32                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 10 uses
  %i.bp = fcmp ogt double %i.aq, %i.be            ; 2 uses
  %i.bq = zext i1 %i.bp to i32                    ; 4 uses
  %i.br = add nuw nsw i32 %i.bk, %i.bi
  %i.bs = add nuw nsw i32 %i.br, %i.bn
  %i.bt = add nuw nsw i32 %i.bs, %i.bq            ; 3 uses
  %i.bu = icmp ne i32 %i.bt, 0                    ; 2 uses
  %i.bv = load i8, ptr @Verbose, align 1
  %i.bw = icmp ne i8 %i.bv, 0
  %or.cond.i = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.17, i64 noundef %.0201252.i, i64 noundef %i.au) #19 ; 0 uses
  tail call fastcc void @printpath(ptr noundef %0)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.bu, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %.thread.i
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = load double, ptr %i.bg, align 8, !tbaa !53
  %i.ca = load double, ptr %i.aw, align 8, !tbaa !52
  store double %i.ca, ptr %i.bg, align 8, !tbaa !53
  store double %i.bz, ptr %i.aw, align 8, !tbaa !52
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = load double, ptr %i.av, align 8, !tbaa !52
  %i.cc = load double, ptr %i.ay, align 8, !tbaa !53
  store double %i.cc, ptr %i.av, align 8, !tbaa !52
  store double %i.cb, ptr %i.ay, align 8, !tbaa !53
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !55
  %i.ce = load double, ptr %i.bb, align 8, !tbaa !54
  store double %i.ce, ptr %i.bl, align 8, !tbaa !55
  store double %i.cd, ptr %i.bb, align 8, !tbaa !54
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = load double, ptr %i.bo, align 8, !tbaa !54
  %i.cg = load double, ptr %i.bd, align 8, !tbaa !55
  store double %i.cg, ptr %i.bo, align 8, !tbaa !54
  store double %i.cf, ptr %i.bd, align 8, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.m
  %.0210.i = phi i1 [ %i.bj, %bb.m ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.r ]
  %.0207.i = phi i32 [ %i.bn, %bb.m ], [ %i.bn, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.0205.i = phi i32 [ %i.bq, %bb.m ], [ %i.bq, %bb.o ], [ %i.bq, %bb.q ], [ 0, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.ch = add nsw i32 %i.bt, -1                   ; 2 uses
  %i.ci = icmp samesign ugt i32 %i.bt, 1
  br i1 %i.ci, label %.lr.ph250.preheader.i, label %.loopexit.i

.lr.ph250.preheader.i:                            ; preds = %bb.t
  br i1 %.0210.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph250.preheader.i
  %.not.i = icmp eq i32 %.0207.i, 0
  br i1 %.not.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not292.i = icmp eq i32 %.0205.i, 0
  br i1 %.not292.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = load double, ptr %i.bo, align 8, !tbaa !54
  %i.ck = load double, ptr %i.bd, align 8, !tbaa !55
  %i.cl = fadd double %i.cj, %i.ck
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fadd double %i.cm, 5.000000e-01         ; 2 uses
  store double %i.cn, ptr %i.bd, align 8, !tbaa !55
  store double %i.cn, ptr %i.bo, align 8, !tbaa !54
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.co = load double, ptr %i.bl, align 8, !tbaa !55
  %i.cp = load double, ptr %i.bb, align 8, !tbaa !54
  %i.cq = fadd double %i.co, %i.cp
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fadd double %i.cr, 5.000000e-01         ; 2 uses
  store double %i.cs, ptr %i.bb, align 8, !tbaa !54
  store double %i.cs, ptr %i.bl, align 8, !tbaa !55
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph250.preheader.i
  %i.ct = load double, ptr %i.av, align 8, !tbaa !52
  %i.cu = load double, ptr %i.ay, align 8, !tbaa !53
  %i.cv = fadd double %i.ct, %i.cu
  %i.cw = fmul double %i.cv, 5.000000e-01
  %i.cx = fadd double %i.cw, 5.000000e-01         ; 2 uses
  store double %i.cx, ptr %i.ay, align 8, !tbaa !53
  store double %i.cx, ptr %i.av, align 8, !tbaa !52
  %i.cy = icmp ne i32 %.0207.i, 0
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.2209.peel.i = phi i1 [ false, %bb.v ], [ %i.cy, %bb.y ], [ false, %bb.x ], [ false, %bb.w ]
  %.2.peel.i = phi i32 [ 0, %bb.v ], [ %.0205.i, %bb.y ], [ %.0205.i, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %exitcond256.peel.not.i = icmp eq i32 %i.ch, 1
  br i1 %exitcond256.peel.not.i, label %.loopexit.i, label %.lr.ph250.peel.next.i.preheader

.lr.ph250.peel.next.i.preheader:                  ; preds = %bb.z
  br i1 %.2209.peel.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph250.peel.next.i.preheader
  %i.cz = icmp eq i32 %.2.peel.i, 1
  br i1 %i.cz, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.da = load double, ptr %i.bo, align 8, !tbaa !54
  %i.db = load double, ptr %i.bd, align 8, !tbaa !55
  %i.dc = fadd double %i.da, %i.db
  %i.dd = fmul double %i.dc, 5.000000e-01
  %i.de = fadd double %i.dd, 5.000000e-01         ; 2 uses
  store double %i.de, ptr %i.bd, align 8, !tbaa !55
  store double %i.de, ptr %i.bo, align 8, !tbaa !54
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph250.peel.next.i.preheader
  %i.df = load double, ptr %i.bl, align 8, !tbaa !55
  %i.dg = load double, ptr %i.bb, align 8, !tbaa !54
  %i.dh = fadd double %i.df, %i.dg
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fadd double %i.di, 5.000000e-01         ; 2 uses
  store double %i.dj, ptr %i.bb, align 8, !tbaa !54
  store double %i.dj, ptr %i.bl, align 8, !tbaa !55
  %9 = icmp ne i32 %.2.peel.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.2.i.peel = phi i1 [ true, %bb.aa ], [ true, %bb.ab ], [ %9, %bb.ac ]
  %exitcond256.not.i.peel = icmp eq i32 %i.ch, 2
  %brmerge = or i1 %exitcond256.not.i.peel, %.2.i.peel
  br i1 %brmerge, label %.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dk = load double, ptr %i.bo, align 8, !tbaa !54
  %i.dl = load double, ptr %i.bd, align 8, !tbaa !55
  %i.dm = fadd double %i.dk, %i.dl
  %i.dn = fmul double %i.dm, 5.000000e-01
  %i.do = fadd double %i.dn, 5.000000e-01         ; 2 uses
  store double %i.do, ptr %i.bd, align 8, !tbaa !55
  store double %i.do, ptr %i.bo, align 8, !tbaa !54
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ad, %bb.ae, %bb.z, %bb.t, %bb.k
  %i.dp = load double, ptr %i.av, align 8, !tbaa !52 ; 9 uses
  %i.dq = load double, ptr %i.bg, align 8, !tbaa !53 ; 9 uses
  %i.dr = load double, ptr %i.aw, align 8, !tbaa !52 ; 16 uses
  %i.ds = load double, ptr %i.ay, align 8, !tbaa !53 ; 18 uses
  %i.dt = fcmp ugt double %i.dq, %i.dr
  %i.du = fcmp ult double %i.dp, %i.ds
  %or.cond32.i.i = and i1 %i.dt, %i.du
  br i1 %or.cond32.i.i, label %bb.af, label %overlap.exit.i

bb.af:                                            ; preds = %.loopexit.i
  %i.dv = fcmp ugt double %i.dp, %i.dr
  %i.dw = fcmp ult double %i.dq, %i.ds
  %or.cond.i.i = or i1 %i.dv, %i.dw
  br i1 %or.cond.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = fsub double %i.dq, %i.dp
  br label %overlap.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dy = fcmp ugt double %i.dr, %i.dp            ; 2 uses
  %i.dz = fcmp ult double %i.ds, %i.dq
  %or.cond29.i.i = or i1 %i.dy, %i.dz
  br i1 %or.cond29.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = fsub double %i.ds, %i.dr
  br label %overlap.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.eb = fcmp ugt double %i.dp, %i.ds
  %or.cond31.i.i = or i1 %i.dy, %i.eb
  br i1 %or.cond31.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = fsub double %i.ds, %i.dp
  br label %overlap.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ed = fsub double %i.dq, %i.dr
  br label %overlap.exit.i

overlap.exit.i:                                   ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ag, %.loopexit.i
  %.0.i.i = phi double [ %i.ed, %bb.al ], [ 0.000000e+00, %.loopexit.i ], [ %i.dx, %bb.ag ], [ %i.ea, %bb.ai ], [ %i.ec, %bb.ak ] ; 2 uses
  %i.ee = load double, ptr %i.bo, align 8, !tbaa !54 ; 9 uses
  %i.ef = load double, ptr %i.bl, align 8, !tbaa !55 ; 9 uses
  %i.eg = load double, ptr %i.bb, align 8, !tbaa !54 ; 16 uses
  %i.eh = load double, ptr %i.bd, align 8, !tbaa !55 ; 18 uses
  %i.ei = fcmp ugt double %i.ef, %i.eg
  %i.ej = fcmp ult double %i.ee, %i.eh
  %or.cond32.i234.i = and i1 %i.ei, %i.ej
  br i1 %or.cond32.i234.i, label %bb.am, label %overlap.exit239.thread.i

bb.am:                                            ; preds = %overlap.exit.i
  %i.ek = fcmp ugt double %i.ee, %i.eg
  %i.el = fcmp ult double %i.ef, %i.eh
  %or.cond.i236.i = or i1 %i.ek, %i.el
  br i1 %or.cond.i236.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = fsub double %i.ef, %i.ee
  br label %overlap.exit239.i

bb.ao:                                            ; preds = %bb.am
  %i.en = fcmp ugt double %i.eg, %i.ee            ; 2 uses
  %i.eo = fcmp ult double %i.eh, %i.ef
  %or.cond29.i237.i = or i1 %i.en, %i.eo
  br i1 %or.cond29.i237.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ep = fsub double %i.eh, %i.eg
  br label %overlap.exit239.i

bb.aq:                                            ; preds = %bb.ao
  %i.eq = fcmp ugt double %i.ee, %i.eh
  %or.cond31.i238.i = or i1 %i.en, %i.eq
  br i1 %or.cond31.i238.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = fsub double %i.eh, %i.ee
  br label %overlap.exit239.i

bb.as:                                            ; preds = %bb.aq
  %i.es = fsub double %i.ef, %i.eg
  br label %overlap.exit239.i

overlap.exit239.i:                                ; preds = %bb.as, %bb.ar, %bb.ap, %bb.an
  %.0.i235.i = phi double [ %i.es, %bb.as ], [ %i.er, %bb.ar ], [ %i.em, %bb.an ], [ %i.ep, %bb.ap ] ; 2 uses
  %i.et = fcmp ogt double %.0.i.i, 0.000000e+00
  %i.eu = fcmp ogt double %.0.i235.i, 0.000000e+00
  %or.cond4.i = and i1 %i.et, %i.eu
  br i1 %or.cond4.i, label %bb.at, label %overlap.exit239.thread.i

bb.at:                                            ; preds = %overlap.exit239.i
  %i.ev = fcmp olt double %.0.i.i, %.0.i235.i
  br i1 %i.ev, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.ew = fsub double %i.dq, %i.dp
  %i.ex = fsub double %i.ds, %i.dr
  %i.ey = fcmp ogt double %i.ew, %i.ex
  %i.ez = fcmp olt double %i.dq, %i.ds            ; 2 uses
  br i1 %i.ey, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %i.ez, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store double %i.dr, ptr %i.bg, align 8, !tbaa !53
  br label %overlap.exit239.thread.i

bb.ax:                                            ; preds = %bb.av
  store double %i.ds, ptr %i.av, align 8, !tbaa !52
  br label %overlap.exit239.thread.i

bb.ay:                                            ; preds = %bb.au
  br i1 %i.ez, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store double %i.dq, ptr %i.aw, align 8, !tbaa !52
  br label %overlap.exit239.thread.i

bb.ba:                                            ; preds = %bb.ay
  store double %i.dp, ptr %i.ay, align 8, !tbaa !53
  br label %overlap.exit239.thread.i

bb.bb:                                            ; preds = %bb.at
  %i.fa = fsub double %i.ef, %i.ee
  %i.fb = fsub double %i.eh, %i.eg
  %i.fc = fcmp ogt double %i.fa, %i.fb
  %i.fd = fcmp olt double %i.ef, %i.eh            ; 2 uses
  br i1 %i.fc, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store double %i.eg, ptr %i.bl, align 8, !tbaa !55
  br label %overlap.exit239.thread.i

bb.be:                                            ; preds = %bb.bc
  store double %i.eh, ptr %i.bo, align 8, !tbaa !54
  br label %overlap.exit239.thread.i

bb.bf:                                            ; preds = %bb.bb
  br i1 %i.fd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store double %i.ef, ptr %i.bb, align 8, !tbaa !54
  br label %overlap.exit239.thread.i

bb.bh:                                            ; preds = %bb.bf
  store double %i.ee, ptr %i.bd, align 8, !tbaa !55
  br label %overlap.exit239.thread.i

overlap.exit239.thread.i:                         ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.ax, %bb.aw, %overlap.exit239.i, %overlap.exit.i
  %i.fe = phi double [ %i.eg, %overlap.exit.i ], [ %i.eg, %bb.az ], [ %i.eg, %bb.ba ], [ %i.eg, %bb.aw ], [ %i.eg, %bb.ax ], [ %i.ef, %bb.bg ], [ %i.eg, %bb.bh ], [ %i.eg, %bb.bd ], [ %i.eg, %bb.be ], [ %i.eg, %overlap.exit239.i ]
  %i.ff = phi double [ %i.eh, %overlap.exit.i ], [ %i.eh, %bb.az ], [ %i.eh, %bb.ba ], [ %i.eh, %bb.aw ], [ %i.eh, %bb.ax ], [ %i.eh, %bb.bg ], [ %i.ee, %bb.bh ], [ %i.eh, %bb.bd ], [ %i.eh, %bb.be ], [ %i.eh, %overlap.exit239.i ]
  %i.fg = phi double [ %i.dr, %overlap.exit.i ], [ %i.dq, %bb.az ], [ %i.dr, %bb.ba ], [ %i.dr, %bb.aw ], [ %i.dr, %bb.ax ], [ %i.dr, %bb.bg ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bd ], [ %i.dr, %bb.be ], [ %i.dr, %overlap.exit239.i ]
  %i.fh = phi double [ %i.ds, %overlap.exit.i ], [ %i.ds, %bb.az ], [ %i.dp, %bb.ba ], [ %i.ds, %bb.aw ], [ %i.ds, %bb.ax ], [ %i.ds, %bb.bg ], [ %i.ds, %bb.bh ], [ %i.ds, %bb.bd ], [ %i.ds, %bb.be ], [ %i.ds, %overlap.exit239.i ]
  %i.fi = add nuw i64 %i.au, 1                    ; 2 uses
  %exitcond258.not.i = icmp eq i64 %i.fi, %.0204.lcssa.i
  br i1 %exitcond258.not.i, label %.critedge.loopexit.i, label %.lr.ph253.i, !llvm.loop !81

.critedge.loopexit.i:                             ; preds = %overlap.exit239.thread.i
  %.pre.i = load double, ptr %i.p, align 8, !tbaa !52
  %.pre259.pre.i = load double, ptr %i.r, align 8, !tbaa !53
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.fj = phi double [ %.pre259.pre.i, %.critedge.loopexit.i ], [ %i.s, %.preheader.i ] ; 3 uses
  %i.fk = phi double [ %.pre.i, %.critedge.loopexit.i ], [ %i.q, %.preheader.i ] ; 4 uses
  %i.fl = load double, ptr %0, align 8, !tbaa !56 ; 4 uses
  %i.fm = fcmp olt double %i.fl, %i.fk
  br i1 %i.fm, label %.critedge._crit_edge.i, label %bb.bi

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre260.i = load double, ptr %i.al, align 8, !tbaa !54
  br label %bb.bl

bb.bi:                                            ; preds = %.critedge.i
  %i.fn = fcmp ogt double %i.fl, %i.fj
  %.pre261.i = load double, ptr %i.al, align 8, !tbaa !54 ; 5 uses
  br i1 %i.fn, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !57 ; 3 uses
  %i.fq = fcmp olt double %i.fp, %.pre261.i
  br i1 %i.fq, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fr = load double, ptr %i.an, align 8, !tbaa !55
  %i.fs = fcmp ogt double %i.fp, %i.fr
  %i.ft = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fp, i64 1
  br i1 %i.fs, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %.critedge._crit_edge.i
  %i.fv = phi double [ %.pre260.i, %.critedge._crit_edge.i ], [ %.pre261.i, %bb.bk ], [ %.pre261.i, %bb.bj ], [ %.pre261.i, %bb.bi ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !57
  %i.fy = load double, ptr %i.an, align 8, !tbaa !55
  %i.fz = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fx, i64 1
  %i.gb = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fv, i64 1
  %i.gd = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ga, <2 x double> %i.gc)
  %i.ge = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fy, i64 1
  %i.gg = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.gd, <2 x double> %i.gf) ; 2 uses
  store <2 x double> %i.gg, ptr %0, align 8, !tbaa !20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gh = phi double [ %i.fv, %bb.bl ], [ %.pre261.i, %bb.bk ]
  %i.gi = phi <2 x double> [ %i.gg, %bb.bl ], [ %i.fu, %bb.bk ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gk = getelementptr [32 x i8], ptr %i.p, i64 %.0204.lcssa.i ; 4 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 -32
  %.phi.trans.insert.i = getelementptr i8, ptr %i.gk, i64 -16
  %.pre263.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !53 ; 2 uses
  %i.gm = load <2 x double>, ptr %i.gj, align 8, !tbaa !20 ; 4 uses
  %i.gn = load <2 x double>, ptr %i.gl, align 8, !tbaa !20 ; 3 uses
  %i.go = extractelement <2 x double> %i.gm, i64 0 ; 2 uses
  %i.gp = extractelement <2 x double> %i.gn, i64 0
  %i.gq = fcmp olt double %i.go, %i.gp
  %i.gr = fcmp ogt double %i.go, %.pre263.i
  %or.cond294.i = select i1 %i.gq, i1 true, i1 %i.gr
  %i.gs = extractelement <2 x double> %i.gm, i64 1 ; 2 uses
  %i.gt = extractelement <2 x double> %i.gn, i64 1
  %i.gu = fcmp olt double %i.gs, %i.gt
  %or.cond631 = select i1 %or.cond294.i, i1 true, i1 %i.gu
  br i1 %or.cond631, label %._crit_edge262.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gv = getelementptr i8, ptr %i.gk, i64 -8
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !55
  %i.gx = fcmp ogt double %i.gs, %i.gw
  br i1 %i.gx, label %._crit_edge262.i, label %bb.bo

._crit_edge262.i:                                 ; preds = %bb.bm, %bb.bn
  %i.gy = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gm, <2 x double> %i.gn)
  %i.gz = getelementptr i8, ptr %i.gk, i64 -8
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !55
  %i.hb = insertelement <2 x double> poison, double %.pre263.i, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.ha, i64 1
  %i.hd = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.gy, <2 x double> %i.hc) ; 2 uses
  store <2 x double> %i.hd, ptr %i.gj, align 8, !tbaa !20
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge262.i, %bb.bn
  %i.he = phi <2 x double> [ %i.hd, %._crit_edge262.i ], [ %i.gm, %bb.bn ]
  %i.hf = shl i64 %i.f, 3                         ; 4 uses
  %.not.i420 = icmp eq i64 %i.hf, 0
  br i1 %.not.i420, label %.thread.i421, label %bb.bp

.thread.i421:                                     ; preds = %bb.bo
  %i.hg = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #18
  br label %gv_calloc.exit

bb.bp:                                            ; preds = %bb.bo
  %mul.ov.i = icmp ugt i64 %i.hf, 1152921504606846975
  br i1 %mul.ov.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.5, i64 noundef %i.hf, i64 noundef 16) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hj = tail call noalias ptr @calloc(i64 noundef %i.hf, i64 noundef 16) #18 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.bs, label %gv_calloc.exit

bb.bs:                                            ; preds = %bb.br
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hm = shl i64 %i.f, 7
  %i.hn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hl, ptr noundef nonnull @.str.6, i64 noundef %i.hm) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i421, %bb.br
  %i.ho = phi ptr [ %i.hg, %.thread.i421 ], [ %i.hj, %bb.br ] ; 32 uses
  %i.hp = icmp ugt i64 %i.f, 1                    ; 2 uses
  br i1 %i.hp, label %bb.bt, label %.loopexit443

bb.bt:                                            ; preds = %gv_calloc.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !54
  %i.hs = fcmp ogt double %i.gh, %i.hr
  br i1 %i.hs, label %.preheader442.preheader, label %.loopexit443

.preheader442.preheader:                          ; preds = %bb.bt
  %xtraiter = and i64 %i.f, 1
  %unroll_iter = and i64 %i.f, -2
  br label %.preheader442

.preheader442:                                    ; preds = %.preheader442, %.preheader442.preheader
  %.0388454 = phi i64 [ 0, %.preheader442.preheader ], [ %i.ih, %.preheader442 ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader442.preheader ], [ %niter.next.1, %.preheader442 ]
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0388454 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24 ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !55
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !54
  %i.hy = fneg double %i.hx
  store double %i.hy, ptr %i.hu, align 8, !tbaa !55
  %i.hz = fneg double %i.hv
  store double %i.hz, ptr %i.hw, align 8, !tbaa !54
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0388454 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 56 ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !55
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 40 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !54
  %i.if = fneg double %i.ie
  store double %i.if, ptr %i.ib, align 8, !tbaa !55
  %i.ig = fneg double %i.ic
  store double %i.ig, ptr %i.id, align 8, !tbaa !54
  %i.ih = add nuw i64 %.0388454, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit443.loopexit.unr-lcssa, label %.preheader442, !llvm.loop !82

.loopexit443.loopexit.unr-lcssa:                  ; preds = %.preheader442
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit443, label %.preheader442.epil.preheader

.preheader442.epil.preheader:                     ; preds = %.loopexit443.loopexit.unr-lcssa
  %lcmp.mod679 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod679)
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !55
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !54
  %i.in = fneg double %i.im
  store double %i.in, ptr %i.ij, align 8, !tbaa !55
  %i.io = fneg double %i.ik
  store double %i.io, ptr %i.il, align 8, !tbaa !54
  br label %.loopexit443

.loopexit443:                                     ; preds = %.preheader442.epil.preheader, %.loopexit443.loopexit.unr-lcssa, %gv_calloc.exit, %bb.bt
  %.0395 = phi i1 [ false, %gv_calloc.exit ], [ false, %bb.bt ], [ true, %.loopexit443.loopexit.unr-lcssa ], [ true, %.preheader442.epil.preheader ]
  %i.ip = load i32, ptr %.0396453, align 8
  %i.iq = and i32 %i.ip, 3                        ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 3
  %i.is = getelementptr inbounds nuw i8, ptr %.0396453, i64 64 ; 2 uses
  %i.it = select i1 %i.ir, ptr %.0396453, ptr %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !62
  %i.iw = icmp eq i32 %i.iq, 2
  %i.ix = getelementptr inbounds i8, ptr %.0396453, i64 -64 ; 3 uses
  %i.iy = select i1 %i.iw, ptr %.0396453, ptr %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !62
  %.not409 = icmp eq ptr %i.iv, %i.ja
  br i1 %.not409, label %bb.cj, label %.preheader441

.preheader441:                                    ; preds = %.loopexit443
  br i1 %.not254.i, label %._crit_edge472, label %.lr.ph457.preheader

.lr.ph457.preheader:                              ; preds = %.preheader441
  %i.jb = getelementptr i8, ptr %i.ho, i64 16     ; 2 uses
  br i1 %i.hp, label %.lr.ph457.peel.next.sink.split, label %.thread583

.lr.ph457.peel.next.sink.split:                   ; preds = %.lr.ph457.preheader
  %i.jc = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !54
  %i.je = load double, ptr %i.al, align 8, !tbaa !54
  %i.jf = fcmp ogt double %i.jd, %i.je            ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %. = select i1 %i.jf, double %i.fj, double %i.fk
  %.664 = select i1 %i.jf, ptr %i.al, ptr %i.an
  %.665 = select i1 %i.jf, ptr %i.r, ptr %i.p
  %.666 = select i1 %i.jf, ptr %i.an, ptr %i.al
  store double %., ptr %i.ho, align 8, !tbaa !10
  %storemerge662 = load double, ptr %.664, align 8, !tbaa !20
  store double %storemerge662, ptr %i.jg, align 8, !tbaa !11
  %storemerge = load double, ptr %.665, align 8, !tbaa !20
  store double %storemerge, ptr %i.jb, align 8, !tbaa !10
  %.sink = load double, ptr %.666, align 8, !tbaa !20
  %i.jh = getelementptr i8, ptr %i.ho, i64 24
  store double %.sink, ptr %i.jh, align 8, !tbaa !11
  br label %.lr.ph457.peel.next.preheader

.thread583:                                       ; preds = %.lr.ph457.preheader
  store double %i.fk, ptr %i.ho, align 8, !tbaa !10
  %i.ji = load double, ptr %i.an, align 8, !tbaa !55
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store double %i.ji, ptr %i.jj, align 8, !tbaa !11
  %i.jk = load <2 x double>, ptr %i.p, align 8, !tbaa !20
  store <2 x double> %i.jk, ptr %i.jb, align 8, !tbaa !20
  %exitcond520.peel.not = icmp eq i64 %i.f, 1
  br i1 %exitcond520.peel.not, label %.lr.ph463.preheader, label %.lr.ph457.peel.next.preheader

.lr.ph457.peel.next.preheader:                    ; preds = %.lr.ph457.peel.next.sink.split, %.thread583
  br label %.lr.ph457.peel.next

.lr.ph457.peel.next:                              ; preds = %.lr.ph457.peel.next.preheader, %bb.bw
  %.0381456 = phi i64 [ %i.jr, %bb.bw ], [ 1, %.lr.ph457.peel.next.preheader ] ; 4 uses
  %.0383455 = phi i64 [ %.1384, %bb.bw ], [ 2, %.lr.ph457.peel.next.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0381456 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !54
  %i.jo = getelementptr i8, ptr %i.jl, i64 -24
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !54
  %i.jq = fcmp ule double %i.jn, %i.jp            ; 3 uses
  %i.jr = add nuw i64 %.0381456, 1                ; 4 uses
  %i.js = icmp ult i64 %i.jr, %i.f
  br i1 %i.js, label %bb.bu, label %.thread590

bb.bu:                                            ; preds = %.lr.ph457.peel.next
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.jr
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !54
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0381456
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !54
  %i.jz = fcmp ogt double %i.jv, %i.jy            ; 2 uses
  %i.ka = select i1 %i.jz, i32 1, i32 -1
  %i.kb = xor i1 %i.jq, %i.jz
  br i1 %i.kb, label %.thread590, label %bb.bv

.thread590:                                       ; preds = %.lr.ph457.peel.next, %bb.bu
  %.0378593 = phi i32 [ %i.ka, %bb.bu ], [ 0, %.lr.ph457.peel.next ]
  %i.kc = icmp eq i32 %.0378593, -1
  %or.cond = select i1 %i.kc, i1 true, i1 %i.jq   ; 3 uses
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0381456 ; 3 uses
  %.sink646.in.idx = select i1 %or.cond, i64 0, i64 16
  %.sink646.in = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.sink646.in.idx
  %.sink645 = select i1 %or.cond, i64 24, i64 8
  %.sink637 = select i1 %or.cond, i64 8, i64 24
  %.sink646 = load double, ptr %.sink646.in, align 8, !tbaa !20 ; 2 uses
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0383455 ; 4 uses
  store double %.sink646, ptr %i.ke, align 8, !tbaa !10
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.sink645
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store double %i.kg, ptr %i.kh, align 8, !tbaa !11
  %i.ki = getelementptr i8, ptr %i.ke, i64 16
  store double %.sink646, ptr %i.ki, align 8, !tbaa !10
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.sink637
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !20
  %i.kl = add i64 %.0383455, 2
  %i.km = getelementptr i8, ptr %i.ke, i64 24
  store double %i.kk, ptr %i.km, align 8, !tbaa !11
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.jq, label %.loopexit522, label %bb.bw

.loopexit522:                                     ; preds = %bb.bv
  tail call void @free(ptr noundef %i.ho) #17
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 1, i32 noundef 378) #17
  br label %.critedge419

bb.bw:                                            ; preds = %.thread590, %bb.bv
  %.1384 = phi i64 [ %.0383455, %bb.bv ], [ %i.kl, %.thread590 ] ; 2 uses
  %exitcond520.not = icmp eq i64 %i.jr, %i.f
  br i1 %exitcond520.not, label %.lr.ph463.preheader, label %.lr.ph457.peel.next, !llvm.loop !83

.lr.ph463.preheader:                              ; preds = %bb.bw, %.thread583
  %.2385460.ph = phi i64 [ 2, %.thread583 ], [ %.1384, %bb.bw ]
  br label %.lr.ph463

.lr.ph463:                                        ; preds = %.lr.ph463.preheader, %bb.ci
  %.1382.in461 = phi i64 [ %.1382462, %bb.ci ], [ %i.f, %.lr.ph463.preheader ] ; 4 uses
  %.2385460 = phi i64 [ %.3386, %bb.ci ], [ %.2385460.ph, %.lr.ph463.preheader ] ; 8 uses
  %.1382462 = add i64 %.1382.in461, -1            ; 7 uses
  %i.kn = icmp ult i64 %.1382.in461, %i.f
  br i1 %i.kn, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph463
  %i.ko = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !54
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382.in461
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !54
  %i.ku = fcmp ogt double %i.kq, %i.kt
  %i.kv = select i1 %i.ku, i32 -1, i32 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph463
  %.1371 = phi i32 [ %i.kv, %bb.bx ], [ 0, %.lr.ph463 ] ; 5 uses
  %.not411 = icmp eq i64 %.1382462, 0             ; 2 uses
  br i1 %.not411, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kw = getelementptr [32 x i8], ptr %i.p, i64 %.1382.in461
  %i.kx = getelementptr i8, ptr %i.kw, i64 -56
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !54
  %i.kz = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load double, ptr %i.la, align 8, !tbaa !54
  %i.lc = fcmp ogt double %i.ky, %i.lb
  %i.ld = select i1 %i.lc, i32 1, i32 -1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.1379 = phi i32 [ %i.ld, %bb.bz ], [ 0, %bb.by ] ; 2 uses
  %.not412 = icmp eq i32 %.1371, %.1379
  br i1 %.not412, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.le = icmp eq i32 %.1379, -1
  %i.lf = icmp eq i32 %.1371, 1
  %or.cond6 = select i1 %i.le, i1 true, i1 %i.lf
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462 ; 5 uses
  br i1 %or.cond6, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.2385460 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lj = load double, ptr %i.li, align 8, !tbaa !55
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store double %i.lj, ptr %i.lk, align 8, !tbaa !11
  %i.ll = getelementptr i8, ptr %i.lh, i64 16
  %i.lm = add i64 %.2385460, 2
  %i.ln = load <2 x double>, ptr %i.lg, align 8, !tbaa !20 ; 2 uses
  %i.lo = extractelement <2 x double> %i.ln, i64 0
  store double %i.lo, ptr %i.lh, align 8, !tbaa !10
  store <2 x double> %i.ln, ptr %i.ll, align 8, !tbaa !20
  br label %bb.ci

bb.cd:                                            ; preds = %bb.cb
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.2385460 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lt = load double, ptr %i.lp, align 8, !tbaa !53
  %i.lu = load <2 x double>, ptr %i.lr, align 8, !tbaa !20
  store double %i.lt, ptr %i.lq, align 8, !tbaa !10
  store <2 x double> %i.lu, ptr %i.ls, align 8, !tbaa !20
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !55
  %i.lx = add i64 %.2385460, 2
  %i.ly = getelementptr i8, ptr %i.lq, i64 24
  store double %i.lw, ptr %i.ly, align 8, !tbaa !11
  br label %bb.ci

bb.ce:                                            ; preds = %bb.ca
  switch i32 %.1371, label %bb.cg [
    i32 0, label %bb.cf
    i32 -1, label %bb.ch
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.lz = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.2385460 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.me = load double, ptr %i.ma, align 8, !tbaa !53
  %i.mf = load <2 x double>, ptr %i.mc, align 8, !tbaa !20
  store double %i.me, ptr %i.mb, align 8, !tbaa !10
  store <2 x double> %i.mf, ptr %i.md, align 8, !tbaa !20
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !55
  %i.mi = add i64 %.2385460, 2
  %i.mj = getelementptr i8, ptr %i.mb, i64 24
  store double %i.mh, ptr %i.mj, align 8, !tbaa !11
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  tail call void @free(ptr noundef %i.ho) #17
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.8, i32 noundef %.1371, i32 noundef %.1371, i32 noundef 412) #17
  br label %.critedge419

bb.ch:                                            ; preds = %bb.ce
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.2385460 ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load double, ptr %i.ml, align 8, !tbaa !53
  %i.mq = load <2 x double>, ptr %i.mn, align 8, !tbaa !20
  store double %i.mp, ptr %i.mm, align 8, !tbaa !10
  store <2 x double> %i.mq, ptr %i.mo, align 8, !tbaa !20
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !55 ; 2 uses
  %i.mt = getelementptr i8, ptr %i.mm, i64 24
  store double %i.ms, ptr %i.mt, align 8, !tbaa !11
  %i.mu = getelementptr i8, ptr %i.mm, i64 32
  %i.mv = getelementptr i8, ptr %i.mm, i64 40
  store double %i.ms, ptr %i.mv, align 8, !tbaa !11
  %i.mw = getelementptr i8, ptr %i.mm, i64 48
  %i.mx = add i64 %.2385460, 4
  %i.my = load <2 x double>, ptr %i.mk, align 8, !tbaa !20 ; 2 uses
  %i.mz = extractelement <2 x double> %i.my, i64 0
  store double %i.mz, ptr %i.mu, align 8, !tbaa !10
  store <2 x double> %i.my, ptr %i.mw, align 8, !tbaa !20
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cd, %bb.cc, %bb.ch, %bb.cf
  %.3386 = phi i64 [ %i.lm, %bb.cc ], [ %i.lx, %bb.cd ], [ %i.mi, %bb.cf ], [ %i.mx, %bb.ch ] ; 8 uses
  br i1 %.not411, label %._crit_edge, label %.lr.ph463, !llvm.loop !84

bb.cj:                                            ; preds = %.loopexit443
  tail call void @free(ptr noundef %i.ho) #17
  %i.na = load i32, ptr %.0396453, align 8
  %i.nb = and i32 %i.na, 3
  %i.nc = icmp eq i32 %i.nb, 2
  %i.nd = select i1 %i.nc, ptr %.0396453, ptr %i.ix
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !62
  %i.ng = tail call ptr @agnameof(ptr noundef %i.nf) #17
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.9, ptr noundef %i.ng) #17
  br label %.critedge419

._crit_edge:                                      ; preds = %bb.ci
  br i1 %.0395, label %.lr.ph466.preheader, label %.loopexit438

.lr.ph466.preheader:                              ; preds = %._crit_edge
  %xtraiter680 = and i64 %i.f, 1
  %i.nh = icmp eq i64 %i.f, 1
  br i1 %i.nh, label %.lr.ph466.epil.preheader, label %.lr.ph466.preheader.new

.lr.ph466.preheader.new:                          ; preds = %.lr.ph466.preheader
  %unroll_iter683 = and i64 %i.f, -2
  br label %.lr.ph466

.preheader437.unr-lcssa:                          ; preds = %.lr.ph466
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  br i1 %lcmp.mod681.not, label %.preheader437, label %.lr.ph466.epil.preheader

.lr.ph466.epil.preheader:                         ; preds = %.preheader437.unr-lcssa, %.lr.ph466.preheader
  %.0380465.epil.init = phi i64 [ 0, %.lr.ph466.preheader ], [ %i.oe, %.preheader437.unr-lcssa ]
  %lcmp.mod682 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod682)
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0380465.epil.init ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24 ; 2 uses
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !55
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !54
  %i.nn = fneg double %i.nm
  store double %i.nn, ptr %i.nj, align 8, !tbaa !55
  %i.no = fneg double %i.nk
  store double %i.no, ptr %i.nl, align 8, !tbaa !54
  br label %.preheader437

.preheader437:                                    ; preds = %.preheader437.unr-lcssa, %.lr.ph466.epil.preheader
  %.not503 = icmp eq i64 %.3386, 0
  br i1 %.not503, label %.loopexit438, label %.lr.ph468.preheader

.lr.ph468.preheader:                              ; preds = %.preheader437
  %xtraiter686 = and i64 %.3386, 3                ; 3 uses
  %i.np = icmp ult i64 %.3386, 4
  br i1 %i.np, label %.lr.ph468.epil.preheader, label %.lr.ph468.preheader.new

.lr.ph468.preheader.new:                          ; preds = %.lr.ph468.preheader
  %unroll_iter689 = and i64 %.3386, -4
  br label %.lr.ph468

.lr.ph466:                                        ; preds = %.lr.ph466, %.lr.ph466.preheader.new
  %.0380465 = phi i64 [ 0, %.lr.ph466.preheader.new ], [ %i.oe, %.lr.ph466 ] ; 3 uses
  %niter684 = phi i64 [ 0, %.lr.ph466.preheader.new ], [ %niter684.next.1, %.lr.ph466 ]
  %i.nq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0380465 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !55
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !54
  %i.nv = fneg double %i.nu
  store double %i.nv, ptr %i.nr, align 8, !tbaa !55
  %i.nw = fneg double %i.ns
  store double %i.nw, ptr %i.nt, align 8, !tbaa !54
  %i.nx = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0380465 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 56 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !55
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 40 ; 2 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !54
  %i.oc = fneg double %i.ob
  store double %i.oc, ptr %i.ny, align 8, !tbaa !55
  %i.od = fneg double %i.nz
  store double %i.od, ptr %i.oa, align 8, !tbaa !54
  %i.oe = add nuw i64 %.0380465, 2                ; 2 uses
  %niter684.next.1 = add i64 %niter684, 2         ; 2 uses
  %niter684.ncmp.1 = icmp eq i64 %niter684.next.1, %unroll_iter683
  br i1 %niter684.ncmp.1, label %.preheader437.unr-lcssa, label %.lr.ph466, !llvm.loop !85

.lr.ph468:                                        ; preds = %.lr.ph468, %.lr.ph468.preheader.new
  %.0377467 = phi i64 [ 0, %.lr.ph468.preheader.new ], [ %i.ov, %.lr.ph468 ] ; 5 uses
  %niter690 = phi i64 [ 0, %.lr.ph468.preheader.new ], [ %niter690.next.3, %.lr.ph468 ]
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0377467
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !11
  %i.oi = fneg double %i.oh
  store double %i.oi, ptr %i.og, align 8, !tbaa !11
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0377467
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24 ; 2 uses
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !11
  %i.om = fneg double %i.ol
  store double %i.om, ptr %i.ok, align 8, !tbaa !11
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0377467
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 40 ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !11
  %i.oq = fneg double %i.op
  store double %i.oq, ptr %i.oo, align 8, !tbaa !11
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0377467
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 56 ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !11
  %i.ou = fneg double %i.ot
  store double %i.ou, ptr %i.os, align 8, !tbaa !11
  %i.ov = add nuw i64 %.0377467, 4                ; 2 uses
  %niter690.next.3 = add nuw i64 %niter690, 4     ; 2 uses
  %niter690.ncmp.3 = icmp eq i64 %niter690.next.3, %unroll_iter689
  br i1 %niter690.ncmp.3, label %.loopexit438.loopexit.unr-lcssa, label %.lr.ph468, !llvm.loop !86

.loopexit438.loopexit.unr-lcssa:                  ; preds = %.lr.ph468
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %.loopexit438, label %.lr.ph468.epil.preheader

.lr.ph468.epil.preheader:                         ; preds = %.loopexit438.loopexit.unr-lcssa, %.lr.ph468.preheader
  %.0377467.epil.init = phi i64 [ 0, %.lr.ph468.preheader ], [ %i.ov, %.loopexit438.loopexit.unr-lcssa ]
  %lcmp.mod688 = icmp ne i64 %xtraiter686, 0
  tail call void @llvm.assume(i1 %lcmp.mod688)
  br label %.lr.ph468.epil

.lr.ph468.epil:                                   ; preds = %.lr.ph468.epil, %.lr.ph468.epil.preheader
  %.0377467.epil = phi i64 [ %i.pa, %.lr.ph468.epil ], [ %.0377467.epil.init, %.lr.ph468.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph468.epil ], [ 0, %.lr.ph468.epil.preheader ]
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0377467.epil
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !11
  %i.oz = fneg double %i.oy
  store double %i.oz, ptr %i.ox, align 8, !tbaa !11
  %i.pa = add nuw i64 %.0377467.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter686
  br i1 %epil.iter.cmp.not, label %.loopexit438, label %.lr.ph468.epil, !llvm.loop !87

.loopexit438:                                     ; preds = %.loopexit438.loopexit.unr-lcssa, %.lr.ph468.epil, %.preheader437, %._crit_edge
  %.2385.lcssa595 = phi i64 [ %.3386, %._crit_edge ], [ 0, %.preheader437 ], [ %.3386, %.lr.ph468.epil ], [ %.3386, %.loopexit438.loopexit.unr-lcssa ] ; 2 uses
  %i.pb = add i64 %i.f, -1
  %xtraiter691 = and i64 %i.f, 3                  ; 3 uses
  %i.pc = icmp ult i64 %i.pb, 3
  br i1 %i.pc, label %.lr.ph471.epil.preheader, label %.loopexit438.new

.loopexit438.new:                                 ; preds = %.loopexit438
  %unroll_iter695 = and i64 %i.f, -4
  br label %.lr.ph471

._crit_edge472.loopexit.unr-lcssa:                ; preds = %.lr.ph471
  %lcmp.mod693.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod693.not, label %._crit_edge472, label %.lr.ph471.epil.preheader

.lr.ph471.epil.preheader:                         ; preds = %._crit_edge472.loopexit.unr-lcssa, %.loopexit438
  %.0376469.epil.init = phi i64 [ 0, %.loopexit438 ], [ %i.pv, %._crit_edge472.loopexit.unr-lcssa ]
  %lcmp.mod694 = icmp ne i64 %xtraiter691, 0
  tail call void @llvm.assume(i1 %lcmp.mod694)
  br label %.lr.ph471.epil

.lr.ph471.epil:                                   ; preds = %.lr.ph471.epil, %.lr.ph471.epil.preheader
  %.0376469.epil = phi i64 [ %i.pf, %.lr.ph471.epil ], [ %.0376469.epil.init, %.lr.ph471.epil.preheader ] ; 2 uses
  %epil.iter692 = phi i64 [ %epil.iter692.next, %.lr.ph471.epil ], [ 0, %.lr.ph471.epil.preheader ]
  %i.pd = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469.epil ; 2 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pd, align 8, !tbaa !52
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pe, align 8, !tbaa !53
  %i.pf = add nuw i64 %.0376469.epil, 1
  %epil.iter692.next = add i64 %epil.iter692, 1   ; 2 uses
  %epil.iter692.cmp.not = icmp eq i64 %epil.iter692.next, %xtraiter691
  br i1 %epil.iter692.cmp.not, label %._crit_edge472, label %.lr.ph471.epil, !llvm.loop !88

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit.unr-lcssa, %.lr.ph471.epil, %.preheader441
  %.2385.lcssa595602 = phi i64 [ 0, %.preheader441 ], [ %.2385.lcssa595, %.lr.ph471.epil ], [ %.2385.lcssa595, %._crit_edge472.loopexit.unr-lcssa ]
  store ptr %i.ho, ptr %3, align 8, !tbaa !19
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.2385.lcssa595602, ptr %i.pg, align 8, !tbaa !16
  store <2 x double> %i.gi, ptr %6, align 16, !tbaa !20
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.he, ptr %i.ph, align 16, !tbaa !20
  %i.pi = call i32 @Pshortestpath(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %4) #17
  %i.pj = icmp slt i32 %i.pi, 0
  br i1 %i.pj, label %bb.ck, label %bb.cl

.lr.ph471:                                        ; preds = %.lr.ph471, %.loopexit438.new
  %.0376469 = phi i64 [ 0, %.loopexit438.new ], [ %i.pv, %.lr.ph471 ] ; 5 uses
  %niter696 = phi i64 [ 0, %.loopexit438.new ], [ %niter696.next.3, %.lr.ph471 ]
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pk, align 8, !tbaa !52
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pl, align 8, !tbaa !53
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pn, align 8, !tbaa !52
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 48
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.po, align 8, !tbaa !53
  %i.pp = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pq, align 8, !tbaa !52
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 80
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pr, align 8, !tbaa !53
  %i.ps = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 96
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pt, align 8, !tbaa !52
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 112
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pu, align 8, !tbaa !53
  %i.pv = add nuw i64 %.0376469, 4                ; 2 uses
  %niter696.next.3 = add i64 %niter696, 4         ; 2 uses
  %niter696.ncmp.3 = icmp eq i64 %niter696.next.3, %unroll_iter695
  br i1 %niter696.ncmp.3, label %._crit_edge472.loopexit.unr-lcssa, label %.lr.ph471, !llvm.loop !89

bb.ck:                                            ; preds = %._crit_edge472
  call void @free(ptr noundef %i.ho) #17
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.10) #17
  br label %.critedge419

bb.cl:                                            ; preds = %._crit_edge472
  %.not415 = icmp eq i32 %2, 0
  br i1 %.not415, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pw = load ptr, ptr %4, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.py = load i64, ptr %i.px, align 8
  call void @make_polyline(ptr %i.pw, i64 %i.py, ptr noundef nonnull %5) #17
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cl
  %i.pz = load i64, ptr %i.pg, align 8, !tbaa !16
  %i.qa = call fastcc ptr @gv_calloc(i64 noundef %i.pz, i64 noundef 32) ; 6 uses
  %i.qb = load i64, ptr %i.pg, align 8, !tbaa !16 ; 5 uses
  switch i64 %i.qb, label %.lr.ph475.preheader.split [
    i64 0, label %._crit_edge476
    i64 1, label %._crit_edge476.loopexit.peel.begin
  ]

.lr.ph475.preheader.split:                        ; preds = %bb.cn
  %i.qc = add i64 %i.qb, -1                       ; 3 uses
  %xtraiter697 = and i64 %i.qc, 1
  %i.qd = icmp eq i64 %i.qb, 2
  br i1 %i.qd, label %.lr.ph475.epil.preheader, label %.lr.ph475.preheader.split.new

.lr.ph475.preheader.split.new:                    ; preds = %.lr.ph475.preheader.split
  %unroll_iter702 = and i64 %i.qc, -2
  br label %.lr.ph475

._crit_edge476.loopexit.peel.begin.loopexit.unr-lcssa: ; preds = %.lr.ph475
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  br i1 %lcmp.mod699.not, label %._crit_edge476.loopexit.peel.begin, label %.lr.ph475.epil.preheader

.lr.ph475.epil.preheader:                         ; preds = %._crit_edge476.loopexit.peel.begin.loopexit.unr-lcssa, %.lr.ph475.preheader.split
  %.0375473.epil.init = phi i64 [ 0, %.lr.ph475.preheader.split ], [ %i.rc, %._crit_edge476.loopexit.peel.begin.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod701 = trunc i64 %i.qc to i1
  call void @llvm.assume(i1 %lcmp.mod701)
  %i.qe = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %.0375473.epil.init ; 2 uses
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0375473.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef nonnull align 8 dereferenceable(16) %i.qf, i64 16, i1 false), !tbaa.struct !21
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qh = add nuw i64 %.0375473.epil.init, 1      ; 2 uses
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, ptr noundef nonnull align 8 dereferenceable(16) %i.qi, i64 16, i1 false), !tbaa.struct !21
  br label %._crit_edge476.loopexit.peel.begin

._crit_edge476.loopexit.peel.begin:               ; preds = %.lr.ph475.epil.preheader, %._crit_edge476.loopexit.peel.begin.loopexit.unr-lcssa, %bb.cn
  %i.qj = phi i64 [ 0, %bb.cn ], [ %i.rc, %._crit_edge476.loopexit.peel.begin.loopexit.unr-lcssa ], [ %i.qh, %.lr.ph475.epil.preheader ] ; 3 uses
  %i.qk = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %i.qj ; 2 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.qj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, ptr noundef nonnull align 8 dereferenceable(16) %i.ql, i64 16, i1 false), !tbaa.struct !21
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qn = add nuw i64 %i.qj, 1                    ; 2 uses
  %i.qo = icmp eq i64 %i.qn, %i.qb
  %i.qp = select i1 %i.qo, i64 0, i64 %i.qn
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, ptr noundef nonnull align 8 dereferenceable(16) %i.qq, i64 16, i1 false), !tbaa.struct !21
  br label %._crit_edge476

._crit_edge476:                                   ; preds = %bb.cn, %._crit_edge476.loopexit.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !64, !range !65, !noundef !66
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.co, label %bb.cp

.lr.ph475:                                        ; preds = %.lr.ph475, %.lr.ph475.preheader.split.new
  %.0375473 = phi i64 [ 0, %.lr.ph475.preheader.split.new ], [ %i.rc, %.lr.ph475 ] ; 4 uses
  %niter703 = phi i64 [ 0, %.lr.ph475.preheader.split.new ], [ %niter703.next.1, %.lr.ph475 ]
  %i.qu = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %.0375473 ; 2 uses
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0375473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qu, ptr noundef nonnull align 8 dereferenceable(16) %i.qv, i64 16, i1 false), !tbaa.struct !21
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qx = or disjoint i64 %.0375473, 1            ; 3 uses
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.qx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qw, ptr noundef nonnull align 8 dereferenceable(16) %i.qy, i64 16, i1 false), !tbaa.struct !21
  %i.qz = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %i.qx ; 2 uses
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.qx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qz, ptr noundef nonnull align 8 dereferenceable(16) %i.ra, i64 16, i1 false), !tbaa.struct !21
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rc = add nuw i64 %.0375473, 2                ; 4 uses
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.rc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rb, ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i64 16, i1 false), !tbaa.struct !21
  %niter703.next.1 = add nuw i64 %niter703, 2     ; 2 uses
  %niter703.ncmp.1 = icmp eq i64 %niter703.next.1, %unroll_iter702
  br i1 %niter703.ncmp.1, label %._crit_edge476.loopexit.peel.begin.loopexit.unr-lcssa, label %.lr.ph475, !llvm.loop !90

bb.co:                                            ; preds = %._crit_edge476
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rf = load double, ptr %i.re, align 8, !tbaa !67 ; 2 uses
  %i.rg = call double @cos(double noundef %i.rf) #17
  store double %i.rg, ptr %7, align 16, !tbaa !10
  %i.rh = call double @sin(double noundef %i.rf) #17
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.rh, ptr %i.ri, align 8, !tbaa !11
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge476
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !69 ; 2 uses
  %i.ro = call double @cos(double noundef %i.rn) #17
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rq = call double @sin(double noundef %i.rn) #17
  %i.rr = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rs = insertelement <2 x double> %i.rr, double %i.rq, i64 1
  %i.rt = fneg <2 x double> %i.rs
  store <2 x double> %i.rt, ptr %i.rp, align 16, !tbaa !20
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ru = load ptr, ptr %4, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rw = load i64, ptr %i.rv, align 8
  %i.rx = call i32 @Proutespline(ptr noundef %i.qa, i64 noundef %i.qb, ptr %i.ru, i64 %i.rw, ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %i.ry = icmp sgt i32 %i.rx, -1
  call void @free(ptr noundef %i.qa) #17
  br i1 %i.ry, label %.thread, label %bb.cs

.thread:                                          ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @free(ptr noundef %i.ho) #17
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge419

bb.ct:                                            ; preds = %.thread, %bb.cm
  %i.rz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !16 ; 6 uses
  %i.sb = call noalias ptr @calloc(i64 noundef %i.sa, i64 noundef 16) #18 ; 15 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %bb.cu, label %.preheader436

.preheader436:                                    ; preds = %bb.ct
  %.not506.not = icmp ne i64 %i.sa, 0             ; 3 uses
  br i1 %.not506.not, label %.lr.ph483, label %._crit_edge487

bb.cu:                                            ; preds = %bb.ct
  call void @free(ptr noundef %i.ho) #17
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str) #17
  br label %.critedge419

.lr.ph483:                                        ; preds = %.preheader436
  %i.sd = load ptr, ptr %5, align 8, !tbaa !19
  %i.se = shl nuw i64 %i.sa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sb, ptr align 8 %i.sd, i64 %i.se, i1 false)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !11
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cw
  %i.sh = add nuw i64 %.0372481, 1                ; 2 uses
  %exitcond527.not = icmp eq i64 %i.sh, %i.sa
  br i1 %exitcond527.not, label %._crit_edge484, label %bb.cw, !llvm.loop !91

bb.cw:                                            ; preds = %.lr.ph483, %bb.cv
  %.0372481 = phi i64 [ 0, %.lr.ph483 ], [ %i.sh, %bb.cv ] ; 2 uses
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.sb, i64 %.0372481
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !11
  %i.sl = fsub double %i.sg, %i.sk
  %i.sm = call double @llvm.fabs.f64(double %i.sl)
  %i.sn = fcmp ule double %i.sm, 1.000000e-04     ; 3 uses
  br i1 %i.sn, label %bb.cv, label %.thread427

._crit_edge484:                                   ; preds = %bb.cv
  %i.so = load i8, ptr @Verbose, align 1
  %.not650 = icmp eq i8 %i.so, 0
  br i1 %.not650, label %.lr.ph486, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge484
  %i.sp = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @flockfile(ptr noundef %i.sp) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.sq = call i64 @time(ptr noundef null) #17
  store i64 %i.sq, ptr %i.a, align 8, !tbaa !24
  %i.sr = call ptr @localtime(ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.ss = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 20
  %i.su = load i32, ptr %i.st, align 4, !tbaa !29
  %i.sv = add nsw i32 %i.su, 1900
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !30
  %i.sy = add nsw i32 %i.sx, 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 12
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !31
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !32
  %i.td = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !33
  %i.tf = load i32, ptr %i.sr, align 8, !tbaa !34
  %i.tg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ss, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 45), i32 noundef 520, i32 noundef %i.sv, i32 noundef %i.sy, i32 noundef %i.ta, i32 noundef %i.tc, i32 noundef %i.te, i32 noundef %i.tf) #19 ; 0 uses
  %i.th = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ti = load double, ptr %i.sb, align 8, !tbaa !10
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !11
  %i.tl = load i64, ptr %i.rz, align 8, !tbaa !16
  %i.tm = getelementptr [16 x i8], ptr %i.sb, i64 %i.tl ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tm, i64 -16
  %i.to = load double, ptr %i.tn, align 8, !tbaa !10
  %i.tp = getelementptr i8, ptr %i.tm, i64 -8
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !11
  %i.tr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.th, ptr noundef nonnull @.str.12, double noundef %i.ti, double noundef %i.tk, double noundef %i.to, double noundef %i.tq) #19 ; 0 uses
  %i.ts = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc = call i32 @fputc(i32 10, ptr %i.ts)     ; 0 uses
  %i.tt = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @funlockfile(ptr noundef %i.tt) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre536 = load i64, ptr %i.rz, align 8, !tbaa !16
  br label %.thread427

.thread427:                                       ; preds = %bb.cw, %bb.cx
  %i.tu = phi i64 [ %.pre536, %bb.cx ], [ %i.sa, %bb.cw ] ; 2 uses
  %.not651 = icmp eq i64 %i.tu, 0
  br i1 %.not651, label %.thread431, label %.lr.ph486

.lr.ph486:                                        ; preds = %._crit_edge484, %.thread427
  %.0373430607 = phi i1 [ %i.sn, %.thread427 ], [ true, %._crit_edge484 ] ; 2 uses
  %i.tv = phi i64 [ %i.tu, %.thread427 ], [ %i.sa, %._crit_edge484 ]
  %i.tw = load double, ptr %i.sb, align 8, !tbaa !10
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cz
  %i.tx = add nuw i64 %.0368485, 1                ; 2 uses
  %exitcond528.not = icmp eq i64 %i.tx, %i.tv
  br i1 %exitcond528.not, label %._crit_edge487, label %bb.cz, !llvm.loop !92

bb.cz:                                            ; preds = %.lr.ph486, %bb.cy
  %.0368485 = phi i64 [ 0, %.lr.ph486 ], [ %i.tx, %bb.cy ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %i.sb, i64 %.0368485
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !10
  %i.ua = fsub double %i.tw, %i.tz
  %i.ub = call double @llvm.fabs.f64(double %i.ua)
  %i.uc = fcmp ogt double %i.ub, 1.000000e-04
  br i1 %i.uc, label %.thread431, label %bb.cy

._crit_edge487:                                   ; preds = %bb.cy, %.preheader436
  %.0373430606 = phi i1 [ false, %.preheader436 ], [ %.0373430607, %bb.cy ]
  %i.ud = load i8, ptr @Verbose, align 1
  %i.ue = icmp ne i8 %i.ud, 0
  %or.cond14 = select i1 %.not506.not, i1 %i.ue, i1 false
  br i1 %or.cond14, label %.thread431.thread, label %.thread431

.thread431.thread:                                ; preds = %._crit_edge487
  %i.uf = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @flockfile(ptr noundef %i.uf) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ug = call i64 @time(ptr noundef null) #17
  store i64 %i.ug, ptr %i.b, align 8, !tbaa !24
  %i.uh = call ptr @localtime(ptr noundef nonnull %i.b) #17 ; 6 uses
  %i.ui = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 20
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !29
  %i.ul = add nsw i32 %i.uk, 1900
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.un = load i32, ptr %i.um, align 8, !tbaa !30
  %i.uo = add nsw i32 %i.un, 1
  %i.up = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !31
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !32
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !33
  %i.uv = load i32, ptr %i.uh, align 8, !tbaa !34
  %i.uw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ui, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 45), i32 noundef 534, i32 noundef %i.ul, i32 noundef %i.uo, i32 noundef %i.uq, i32 noundef %i.us, i32 noundef %i.uu, i32 noundef %i.uv) #19 ; 0 uses
  %i.ux = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.uy = load double, ptr %i.sb, align 8, !tbaa !10
  %i.uz = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.va = load double, ptr %i.uz, align 8, !tbaa !11
  %i.vb = load i64, ptr %i.rz, align 8, !tbaa !16
  %i.vc = getelementptr [16 x i8], ptr %i.sb, i64 %i.vb ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 -16
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !10
  %i.vf = getelementptr i8, ptr %i.vc, i64 -8
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !11
  %i.vh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ux, ptr noundef nonnull @.str.13, double noundef %i.uy, double noundef %i.va, double noundef %i.ve, double noundef %i.vg) #19 ; 0 uses
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc416 = call i32 @fputc(i32 10, ptr %i.vi)  ; 0 uses
  %i.vj = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @funlockfile(ptr noundef %i.vj) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.preheader

.thread431:                                       ; preds = %bb.cz, %.thread427, %._crit_edge487
  %.0373430605 = phi i1 [ %.0373430606, %._crit_edge487 ], [ %i.sn, %.thread427 ], [ %.0373430607, %bb.cz ]
  %.0369434 = phi i1 [ %.not506.not, %._crit_edge487 ], [ false, %.thread427 ], [ false, %bb.cz ]
  %or.cond10 = or i1 %.0373430605, %.0369434
  br i1 %or.cond10, label %.preheader, label %.lr.ph498

.preheader:                                       ; preds = %.thread431.thread, %.thread431
  br i1 %.not254.i, label %._crit_edge499.thread, label %.lr.ph489

.lr.ph489:                                        ; preds = %.preheader
  %i.vk = load double, ptr %i.sb, align 8, !tbaa !10 ; 10 uses
  %i.vl = add i64 %i.f, -1
  %xtraiter704 = and i64 %i.f, 3                  ; 3 uses
  %i.vm = icmp ult i64 %i.vl, 3
  br i1 %i.vm, label %.epil.preheader, label %.lr.ph489.new

.lr.ph489.new:                                    ; preds = %.lr.ph489
  %unroll_iter708 = and i64 %i.f, -4
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.lr.ph489.new
  %.0365488 = phi i64 [ 0, %.lr.ph489.new ], [ %i.vy, %bb.da ] ; 5 uses
  %niter709 = phi i64 [ 0, %.lr.ph489.new ], [ %niter709.next.3, %bb.da ]
  %i.vn = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  store double %i.vk, ptr %i.vn, align 8, !tbaa !52
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store double %i.vk, ptr %i.vo, align 8, !tbaa !53
  %i.vp = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  store double %i.vk, ptr %i.vq, align 8, !tbaa !52
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 48
  store double %i.vk, ptr %i.vr, align 8, !tbaa !53
  %i.vs = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 64
  store double %i.vk, ptr %i.vt, align 8, !tbaa !52
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 80
  store double %i.vk, ptr %i.vu, align 8, !tbaa !53
  %i.vv = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 96
  store double %i.vk, ptr %i.vw, align 8, !tbaa !52
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 112
  store double %i.vk, ptr %i.vx, align 8, !tbaa !53
  %i.vy = add nuw i64 %.0365488, 4                ; 2 uses
  %niter709.next.3 = add nuw i64 %niter709, 4     ; 2 uses
  %niter709.ncmp.3 = icmp eq i64 %niter709.next.3, %unroll_iter708
  br i1 %niter709.ncmp.3, label %._crit_edge499.thread.loopexit.unr-lcssa, label %bb.da, !llvm.loop !93

.lr.ph498:                                        ; preds = %.thread431, %.loopexit
  %.0364496 = phi double [ %i.wf, %.loopexit ], [ 1.000000e+01, %.thread431 ] ; 2 uses
  %.0394494 = phi i32 [ %i.wh, %.loopexit ], [ 0, %.thread431 ] ; 2 uses
  %i.vz = load i64, ptr %i.rz, align 8, !tbaa !16
  call fastcc void @limitBoxes(ptr noundef nonnull %i.p, i64 noundef %i.f, ptr noundef nonnull %i.sb, i64 noundef %i.vz, double noundef %.0364496)
  br i1 %.not254.i, label %._crit_edge499.thread, label %.lr.ph492

.lr.ph492:                                        ; preds = %.lr.ph498, %bb.dc
  %.0490 = phi i64 [ %i.we, %bb.dc ], [ 0, %.lr.ph498 ] ; 3 uses
  %i.wa = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0490 ; 2 uses
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !52
  %.not.i422 = icmp eq i64 %i.wb, 9218868437227405311
  br i1 %.not.i422, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %.lr.ph492
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !53
  %.not.i424 = icmp eq i64 %i.wd, -4503599627370497
  br i1 %.not.i424, label %.loopexit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.we = add nuw i64 %.0490, 1                   ; 2 uses
  %exitcond530.not = icmp eq i64 %i.we, %i.f
  br i1 %exitcond530.not, label %._crit_edge499.thread, label %.lr.ph492, !llvm.loop !94

.loopexit:                                        ; preds = %.lr.ph492, %bb.db
  %i.wf = fmul double %.0364496, 2.000000e+00
  %i.wg = icmp ne i64 %.0490, %i.f                ; 2 uses
  %i.wh = add nuw nsw i32 %.0394494, 1
  %i.wi = icmp samesign ult i32 %.0394494, 14
  %i.wj = select i1 %i.wg, i1 %i.wi, i1 false
  br i1 %i.wj, label %.lr.ph498, label %._crit_edge499, !llvm.loop !95

._crit_edge499:                                   ; preds = %.loopexit
  br i1 %i.wg, label %bb.dd, label %._crit_edge499.thread

bb.dd:                                            ; preds = %._crit_edge499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.wk = load i32, ptr %.0396453, align 8
  %i.wl = and i32 %i.wk, 3
  %i.wm = icmp eq i32 %i.wl, 3
  %i.wn = select i1 %i.wm, ptr %.0396453, ptr %i.is
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 56
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !62
  %i.wq = call ptr @agnameof(ptr noundef %i.wp) #17
  %i.wr = load i32, ptr %.0396453, align 8
  %i.ws = and i32 %i.wr, 3
  %i.wt = icmp eq i32 %i.ws, 2
  %i.wu = select i1 %i.wt, ptr %.0396453, ptr %i.ix
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 56
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !62
  %i.wx = call ptr @agnameof(ptr noundef %i.ww) #17
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.14, ptr noundef %i.wq, ptr noundef %i.wx) #17
  %i.wy = load ptr, ptr %4, align 8
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.xa = load i64, ptr %i.wz, align 8
  call void @make_polyline(ptr %i.wy, i64 %i.xa, ptr noundef nonnull %8) #17
  %i.xb = load ptr, ptr %8, align 8, !tbaa !19
  %i.xc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !16
  call fastcc void @limitBoxes(ptr noundef nonnull %i.p, i64 noundef %i.f, ptr noundef %i.xb, i64 noundef %i.xd, double noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %._crit_edge499.thread

._crit_edge499.thread.loopexit.unr-lcssa:         ; preds = %bb.da
  %lcmp.mod706.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod706.not, label %._crit_edge499.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge499.thread.loopexit.unr-lcssa, %.lr.ph489
  %.0365488.epil.init = phi i64 [ 0, %.lr.ph489 ], [ %i.vy, %._crit_edge499.thread.loopexit.unr-lcssa ]
  %lcmp.mod707 = icmp ne i64 %xtraiter704, 0
  call void @llvm.assume(i1 %lcmp.mod707)
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.epil.preheader
  %.0365488.epil = phi i64 [ %.0365488.epil.init, %.epil.preheader ], [ %i.xg, %bb.de ] ; 2 uses
  %epil.iter705 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter705.next, %bb.de ]
  %i.xe = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488.epil ; 2 uses
  store double %i.vk, ptr %i.xe, align 8, !tbaa !52
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  store double %i.vk, ptr %i.xf, align 8, !tbaa !53
  %i.xg = add nuw i64 %.0365488.epil, 1
  %epil.iter705.next = add i64 %epil.iter705, 1   ; 2 uses
  %epil.iter705.cmp.not = icmp eq i64 %epil.iter705.next, %xtraiter704
  br i1 %epil.iter705.cmp.not, label %._crit_edge499.thread, label %bb.de, !llvm.loop !96

._crit_edge499.thread:                            ; preds = %.lr.ph498, %bb.dc, %._crit_edge499.thread.loopexit.unr-lcssa, %bb.de, %.preheader, %bb.dd, %._crit_edge499
  %i.xh = load i64, ptr %i.rz, align 8, !tbaa !16
  store i64 %i.xh, ptr %1, align 8, !tbaa !24
  call void @free(ptr noundef %i.ho) #17
  br label %.critedge419

.critedge419:                                     ; preds = %bb.cs, %bb.i, %bb.g, %.loopexit522, %bb.cg, %bb.cu, %._crit_edge499.thread, %bb.ck, %bb.cj, %.critedge417
  %.5 = phi ptr [ null, %.critedge417 ], [ null, %.loopexit522 ], [ null, %bb.ck ], [ null, %bb.cj ], [ null, %bb.cs ], [ %i.sb, %._crit_edge499.thread ], [ null, %bb.cu ], [ null, %bb.cg ], [ null, %bb.g ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @routepolylines(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @routesplines_(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @makeStraightEdge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]  ; 2 uses
  %.019 = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %.not = icmp eq ptr %.020, %i.d
  %.not22 = icmp eq ptr %i.d, null
  %or.cond = or i1 %.not, %.not22
  %i.e = add i64 %.019, 1
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !99

.critedge:                                        ; preds = %bb.b
  %.not.i = icmp eq i64 %.019, 0
  br i1 %.not.i, label %gv_calloc.exit.thread, label %bb.c

gv_calloc.exit.thread:                            ; preds = %.critedge
  %i.f = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  br label %._crit_edge

bb.c:                                             ; preds = %.critedge
  %mul.ov.i = icmp ugt i64 %.019, 2305843009213693951
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.5, i64 noundef %.019, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @calloc(i64 noundef %.019, i64 noundef 8) #18 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %.019, 3                    ; 3 uses
  %i.k = icmp ult i64 %.019, 4
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.019, 2305843009213693948
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.m = shl nuw i64 %.019, 3
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.6, i64 noundef %i.m) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %.123.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.024.epil = phi i64 [ %i.t, %.lr.ph.epil ], [ %.024.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.123.epil = phi ptr [ %i.s, %.lr.ph.epil ], [ %.123.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024.epil
  store ptr %.123.epil, ptr %i.o, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %.123.epil, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = add nuw i64 %.024.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !100

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %gv_calloc.exit.thread
  %i.u = phi ptr [ %i.f, %gv_calloc.exit.thread ], [ %i.i, %.lr.ph.epil ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @makeStraightEdges(ptr noundef %0, ptr noundef %i.u, i64 noundef %.019, i32 noundef %2, ptr noundef %3)
  tail call void @free(ptr noundef %i.u) #17
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ] ; 5 uses
  %.123 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  store ptr %.123, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %.123, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.al, ptr %i.an, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !102 ; 2 uses
  %i.as = add nuw i64 %.024, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !101
}

; Function Attrs: nounwind uwtable
define void @makeStraightEdges(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cycles_t, align 8           ; 13 uses
  %6 = alloca %struct.cycles_t, align 8           ; 19 uses
  %7 = alloca [4 x %struct.pointf_s], align 16    ; 11 uses
  %8 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  %9 = alloca [4 x %struct.pointf_s], align 16    ; 7 uses
  %10 = alloca %struct.Ppoly_t, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 12 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 3
  %i.e = select i1 %i.d, i64 56, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = icmp eq i32 %i.c, 2
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -64 ; 2 uses
  %i.j = select i1 %i.h, ptr %i.a, ptr %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.x = load <2 x double>, ptr %i.p, align 8
  %i.y = load <2 x double>, ptr %i.s, align 8
  %i.z = fadd <2 x double> %i.x, %i.y             ; 8 uses
  store <2 x double> %i.z, ptr %7, align 16, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !21
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load <2 x double>, ptr %i.ab, align 8
  %i.ad = load <2 x double>, ptr %i.w, align 8
  %i.ae = fadd <2 x double> %i.ac, %i.ad          ; 8 uses
  store <2 x double> %i.ae, ptr %i.u, align 16, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !21
  %i.af = icmp eq i64 %2, 1
  %i.ag = load i8, ptr @Concentrate, align 1, !range !65
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp eq i32 %3, 4
  br i1 %i.ai, label %bb.c, label %bend.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) @__const.find_all_cycles.cycles, i64 48, i1 false), !noalias !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @__const.find_all_cycles.cycles, i64 48, i1 false)
  %i.aj = tail call ptr @agfstnode(ptr noundef %0) #17, !noalias !115 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i, label %find_all_cycles.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  br label %bb.d

.preheader.i.i:                                   ; preds = %gv_alloc.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.val20.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !72, !noalias !115
  %i.al = icmp eq i64 %.val20.pre.i.i, 0
  br i1 %i.al, label %find_all_cycles.exit.i, label %.lr.ph22.i.i

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.f

bb.d:                                             ; preds = %gv_alloc.exit.i.i, %.lr.ph.i.i
  %.019.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.av, %gv_alloc.exit.i.i ] ; 3 uses
  %i.an = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #18 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.e, label %gv_alloc.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !18, !noalias !115
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.6, i64 noundef 48) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit.i.i:                                ; preds = %bb.d
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !74, !noalias !115
  %i.ar = call i64 @gv_list_append_slot_(ptr noundef nonnull %5, i64 noundef 8) #17
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !74, !noalias !115
  %i.at = load ptr, ptr %5, align 8, !tbaa !26, !noalias !115
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.as, ptr %i.au, align 8, !tbaa !39
  call fastcc void @dfs(ptr noundef %0, ptr noundef nonnull %.019.i.i, ptr noundef nonnull %i.an, ptr noundef %.019.i.i, ptr noundef nonnull align 8 %6)
  %i.av = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.019.i.i) #17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !105

bb.f:                                             ; preds = %bb.i, %.lr.ph22.i.i
  %.01521.i.i = phi i64 [ 0, %.lr.ph22.i.i ], [ %i.bd, %bb.i ] ; 2 uses
  %i.aw = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef %.01521.i.i) #17 ; 2 uses
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !116, !noalias !115 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %i.ax to i64
  switch i64 %magicptr.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %5, align 8, !tbaa !26, !noalias !115
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %.0.copyload.i.i = load ptr, ptr %i.az, align 8
  call void @free(ptr noundef %.0.copyload.i.i) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %5, align 8, !tbaa !26, !noalias !115
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39
  call void %i.ax(ptr noundef %i.bc) #17, !inline_history !106
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bd = add nuw i64 %.01521.i.i, 1              ; 2 uses
  %.val.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !72, !noalias !115
  %i.be = icmp ult i64 %i.bd, %.val.i.i
  br i1 %i.be, label %bb.f, label %find_all_cycles.exit.i, !llvm.loop !107

find_all_cycles.exit.i:                           ; preds = %bb.i, %.preheader.i.i, %bb.c
  call void @gv_list_clear_(ptr noundef nonnull %5, i64 noundef 8) #17
  call void @gv_list_free_(ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !115
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %.val1719.i.i = load i64, ptr %i.bf, align 8, !tbaa !72
  %.not.i41.i = icmp eq i64 %.val1719.i.i, 0
  br i1 %.not.i41.i, label %._crit_edge61.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %find_all_cycles.exit.i, %cycle_contains_edge.exit.i.i
  %.021.i.i = phi i64 [ %i.cw, %cycle_contains_edge.exit.i.i ], [ 0, %find_all_cycles.exit.i ] ; 2 uses
  %.01520.i.i = phi ptr [ %.2.i.i, %cycle_contains_edge.exit.i.i ], [ null, %find_all_cycles.exit.i ] ; 5 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !26
  %i.bh = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.021.i.i) #17
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39 ; 11 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %.val.i43.i = load i64, ptr %i.bk, align 8, !tbaa !72 ; 4 uses
  %i.bl = icmp ult i64 %.val.i43.i, 3
  br i1 %i.bl, label %cycle_contains_edge.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i42.i
  %i.bm = icmp eq ptr %.01520.i.i, null
  br i1 %i.bm, label %.lr.ph.preheader.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr i8, ptr %.01520.i.i, i64 16
  %.015.val.i.i = load i64, ptr %i.bn, align 8, !tbaa !72
  %i.bo = icmp ugt i64 %.015.val.i.i, %.val.i43.i
  br i1 %i.bo, label %.lr.ph.preheader.i.i.i, label %cycle_contains_edge.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.k, %bb.j
  %i.bp = load i32, ptr %i.a, align 8
  %i.bq = and i32 %i.bp, 3                        ; 2 uses
  %i.br = icmp eq i32 %i.bq, 3
  %i.bs = select i1 %i.br, i64 56, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.bv = icmp eq i32 %i.bq, 2
  %i.bw = select i1 %i.bv, i64 56, i64 -8
  %i.bx = getelementptr inbounds i8, ptr %i.a, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62 ; 2 uses
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.ca = add i64 %.val.i43.i, -1
  %i.cb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.bj, i64 noundef %i.ca) #17
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !75
  %i.ce = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.cf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.bj, i64 noundef 0) #17
  %i.cg = icmp eq ptr %i.cd, %i.bu
  br i1 %i.cg, label %bb.l, label %.lr.ph.i.i.i.preheader

bb.l:                                             ; preds = %.lr.ph.preheader.i.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !75
  %i.cj = icmp eq ptr %i.ci, %i.by
  br i1 %i.cj, label %cycle_contains_edge.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.critedge.i.i.i
  %.02532.i.i.i = phi i64 [ %i.cv, %.critedge.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ck = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.cl = add i64 %.02532.i.i.i, -1
  %i.cm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.bj, i64 noundef %i.cl) #17
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !75
  %i.cp = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.cq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.bj, i64 noundef %.02532.i.i.i) #17
  %i.cr = icmp eq ptr %i.co, %i.bu
  br i1 %i.cr, label %bb.m, label %.critedge.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !75
  %i.cu = icmp eq ptr %i.ct, %i.by
  br i1 %i.cu, label %cycle_contains_edge.exit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.m, %.lr.ph.i.i.i
  %i.cv = add nuw i64 %.02532.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cv, %.val.i43.i
  br i1 %exitcond.not.i.i.i, label %cycle_contains_edge.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !108

cycle_contains_edge.exit.i.i:                     ; preds = %.critedge.i.i.i, %bb.m, %bb.l, %bb.k, %.lr.ph.i42.i
  %.2.i.i = phi ptr [ %.01520.i.i, %.lr.ph.i42.i ], [ %.01520.i.i, %bb.k ], [ %i.bj, %bb.l ], [ %i.bj, %bb.m ], [ %.01520.i.i, %.critedge.i.i.i ] ; 5 uses
  %i.cw = add nuw i64 %.021.i.i, 1                ; 2 uses
  %.val17.i.i = load i64, ptr %i.bf, align 8, !tbaa !72 ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %.val17.i.i
  br i1 %i.cx, label %.lr.ph.i42.i, label %find_shortest_cycle_with_edge.exit.i, !llvm.loop !109

find_shortest_cycle_with_edge.exit.i:             ; preds = %cycle_contains_edge.exit.i.i
  %i.cy = icmp eq ptr %.2.i.i, null
  br i1 %i.cy, label %.preheader.i, label %.preheader47.i

.preheader47.i:                                   ; preds = %find_shortest_cycle_with_edge.exit.i
  %i.cz = getelementptr i8, ptr %.2.i.i, i64 16   ; 2 uses
  %.val3848.i = load i64, ptr %i.cz, align 8, !tbaa !72
  %.not.i = icmp eq i64 %.val3848.i, 0
  br i1 %.not.i, label %.preheader46.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %find_shortest_cycle_with_edge.exit.i
  %.not63.i = icmp eq i64 %.val17.i.i, 0
  br i1 %.not63.i, label %._crit_edge61.i, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.n

._crit_edge61.i:                                  ; preds = %bb.q, %.preheader.i, %find_all_cycles.exit.i
  call void @gv_list_clear_(ptr noundef nonnull %6, i64 noundef 8) #17
  call void @gv_list_free_(ptr noundef nonnull %6) #17
  %i.db = getelementptr i8, ptr %0, i64 16
  %.val40.i = load ptr, ptr %i.db, align 8, !tbaa !43 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val40.i, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %.val40.i, i64 48
  %i.de = load <2 x double>, ptr %i.dc, align 8, !tbaa !20
  %i.df = load <2 x double>, ptr %i.dd, align 8, !tbaa !20
  %i.dg = fadd <2 x double> %i.de, %i.df
  %i.dh = fmul <2 x double> %i.dg, splat (double 5.000000e-01)
  br label %get_cycle_centroid.exit

bb.n:                                             ; preds = %bb.q, %.lr.ph60.i
  %.03259.i = phi i64 [ 0, %.lr.ph60.i ], [ %i.dp, %bb.q ] ; 2 uses
  %i.di = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.03259.i) #17 ; 2 uses
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !116 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.dj to i64
  switch i64 %magicptr.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %6, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  %.0.copyload14.i = load ptr, ptr %i.dl, align 8
  call void @free(ptr noundef %.0.copyload14.i) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dm = load ptr, ptr %6, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.di
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !39
  call void %i.dj(ptr noundef %i.do) #17, !inline_history !110
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dp = add nuw i64 %.03259.i, 1                ; 2 uses
  %.val39.i = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.dq = icmp ult i64 %i.dp, %.val39.i
  br i1 %i.dq, label %bb.n, label %._crit_edge61.i, !llvm.loop !111

.preheader46.loopexit.i:                          ; preds = %.lr.ph.i
  %.val55.pre.i = load i64, ptr %i.bf, align 8, !tbaa !72
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %.preheader46.loopexit.i, %.preheader47.i
  %.val55.i = phi i64 [ %.val17.i.i, %.preheader47.i ], [ %.val55.pre.i, %.preheader46.loopexit.i ]
  %.031.lcssa.i = phi double [ 0.000000e+00, %.preheader47.i ], [ %i.ed, %.preheader46.loopexit.i ]
  %i.dr = phi <2 x double> [ zeroinitializer, %.preheader47.i ], [ %i.ec, %.preheader46.loopexit.i ]
  %.not62.i = icmp eq i64 %.val55.i, 0
  br i1 %.not62.i, label %._crit_edge.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.preheader46.i
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.r

.lr.ph.i:                                         ; preds = %.preheader47.i, %.lr.ph.i
  %.03052.i = phi i64 [ %i.ee, %.lr.ph.i ], [ 0, %.preheader47.i ] ; 2 uses
  %.03151.i = phi double [ %i.ed, %.lr.ph.i ], [ 0.000000e+00, %.preheader47.i ]
  %i.dt = phi <2 x double> [ %i.ec, %.lr.ph.i ], [ zeroinitializer, %.preheader47.i ]
  %i.du = load ptr, ptr %.2.i.i, align 8, !tbaa !26
  %i.dv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %.2.i.i, i64 noundef %.03052.i) #17
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load <2 x double>, ptr %i.ea, align 8, !tbaa !20
  %i.ec = fadd <2 x double> %i.dt, %i.eb          ; 2 uses
  %i.ed = fadd double %.03151.i, 1.000000e+00     ; 2 uses
  %i.ee = add nuw i64 %.03052.i, 1                ; 2 uses
  %.val38.i = load i64, ptr %i.cz, align 8, !tbaa !72
  %i.ef = icmp ult i64 %i.ee, %.val38.i
  br i1 %i.ef, label %.lr.ph.i, label %.preheader46.loopexit.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %bb.u, %.preheader46.i
  call void @gv_list_clear_(ptr noundef nonnull %6, i64 noundef 8) #17
  call void @gv_list_free_(ptr noundef nonnull %6) #17
  %i.eg = insertelement <2 x double> poison, double %.031.lcssa.i, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fdiv <2 x double> %i.dr, %i.eh
  br label %get_cycle_centroid.exit

bb.r:                                             ; preds = %bb.u, %.lr.ph57.i
  %.056.i = phi i64 [ 0, %.lr.ph57.i ], [ %i.eq, %bb.u ] ; 2 uses
  %i.ej = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %.056.i) #17 ; 2 uses
  %i.ek = load ptr, ptr %i.ds, align 8, !tbaa !116 ; 2 uses
  %magicptr37.i = ptrtoint ptr %i.ek to i64
  switch i64 %magicptr37.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %6, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej
  %.0.copyload.i = load ptr, ptr %i.em, align 8
  call void @free(ptr noundef %.0.copyload.i) #17
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.en = load ptr, ptr %6, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ej
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !39
  call void %i.ek(ptr noundef %i.ep) #17, !inline_history !110
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.eq = add nuw i64 %.056.i, 1                  ; 2 uses
  %.val.i = load i64, ptr %i.bf, align 8, !tbaa !72
  %i.er = icmp ult i64 %i.eq, %.val.i
  br i1 %i.er, label %bb.r, label %._crit_edge.i, !llvm.loop !113

get_cycle_centroid.exit:                          ; preds = %._crit_edge61.i, %._crit_edge.i
  %i.es = phi <2 x double> [ %i.dh, %._crit_edge61.i ], [ %i.ei, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.et = fadd <2 x double> %i.z, %i.ae
  %i.eu = fmul <2 x double> %i.et, splat (double 5.000000e-01) ; 2 uses
  %i.ev = fsub <2 x double> %i.es, %i.eu          ; 3 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = extractelement <2 x double> %i.ev, i64 1
  %i.ey = call double @hypot(double noundef %i.ew, double noundef %i.ex) #17 ; 2 uses
  %i.ez = fcmp une double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.v, label %bend.exit

bb.v:                                             ; preds = %get_cycle_centroid.exit
  %foldExtExtBinop = fsub <2 x double> %i.ae, %i.z
  %i.fa = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop120 = fsub <2 x double> %i.ae, %i.z ; 2 uses
  %foldExtExtBinop122 = fmul <2 x double> %foldExtExtBinop120, %foldExtExtBinop120
  %i.fb = extractelement <2 x double> %foldExtExtBinop122, i64 1
  %i.fc = call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.fb)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.fc)
  %i.fd = fdiv double %sqrt.i, 5.000000e+00
  %i.fe = fneg <2 x double> %i.ev
  %i.ff = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fdiv <2 x double> %i.fe, %i.fg
  %i.fi = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fj, <2 x double> %i.eu) ; 2 uses
  store <2 x double> %i.fk, ptr %i.t, align 16, !tbaa !20
  store <2 x double> %i.fk, ptr %i.m, align 16, !tbaa !20
  br label %bend.exit

bend.exit:                                        ; preds = %bb.v, %get_cycle_centroid.exit, %bb.b
  %i.fl = load i32, ptr %i.a, align 8
  %i.fm = and i32 %i.fl, 3
  %i.fn = icmp eq i32 %i.fm, 2
  %i.fo = select i1 %i.fn, ptr %i.a, ptr %i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !62
  call void @clip_and_install(ptr noundef nonnull %i.a, ptr noundef %i.fq, ptr noundef nonnull %7, i64 noundef 4, ptr noundef %4) #17
  call void @addEdgeLabels(ptr noundef nonnull %i.a) #17
  br label %.loopexit96

bb.w:                                             ; preds = %bb.a
  %foldExtExtBinop124 = fsub <2 x double> %i.z, %i.ae
  %i.fr = extractelement <2 x double> %foldExtExtBinop124, i64 0 ; 2 uses
  %foldExtExtBinop126 = fsub <2 x double> %i.z, %i.ae ; 2 uses
  %i.fs = extractelement <2 x double> %foldExtExtBinop126, i64 1 ; 3 uses
  %i.ft = fmul double %i.fs, %i.fs
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %i.ft)
  %i.fv = fcmp olt double %i.fu, f0x3EB0C6F7A0B5ED8D
  br i1 %i.fv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !21
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %foldExtExtBinop128 = fsub <2 x double> %i.ae, %i.z ; 2 uses
  %i.fw = extractelement <2 x double> %foldExtExtBinop128, i64 0
  %i.fx = tail call double @hypot(double noundef %i.fs, double noundef %i.fw) #17
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !123
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !43
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !135 ; 2 uses
  %i.ge = trunc i64 %2 to i32
  %i.gf = add i32 %i.ge, -1
  %i.gg = mul nsw i32 %i.gd, %i.gf
  %i.gh = sdiv i32 %i.gg, 2
  %i.gi = sitofp i32 %i.gh to double
  %i.gj = shufflevector <2 x double> %foldExtExtBinop126, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> %foldExtExtBinop128, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gl = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gk, %i.gm
  %i.go = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = fdiv <2 x double> %i.gn, %i.gp          ; 2 uses
  %i.gr = fadd <2 x double> %i.z, %i.gq
  store <2 x double> %i.gr, ptr %i.m, align 16, !tbaa !20
  %i.gs = fadd <2 x double> %i.ae, %i.gq
  store <2 x double> %i.gs, ptr %i.t, align 16, !tbaa !20
  %i.gt = sub nsw i32 0, %i.gd
  %i.gu = sitofp i32 %i.gt to double
  %i.gv = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %i.gk, %i.gw
  %i.gy = fdiv <2 x double> %i.gx, %i.gp
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gz = phi <2 x double> [ zeroinitializer, %bb.x ], [ %i.gy, %bb.y ] ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit96, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ha = icmp eq i32 %3, 6
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ad
  %.086101 = phi i64 [ 0, %.lr.ph ], [ %i.ik, %bb.ad ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.086101
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !70 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.hk = load i32, ptr %i.hj, align 8
  %i.hl = and i32 %i.hk, 3
  %i.hm = icmp eq i32 %i.hl, 2
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 -64 ; 3 uses
  %i.ho = select i1 %i.hm, ptr %i.hj, ptr %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !62
  %i.hr = icmp eq ptr %i.hq, %i.l
  br i1 %i.hr, label %.preheader.preheader, label %.preheader94.preheader

.preheader94.preheader:                           ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hg, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.he, ptr noundef nonnull align 16 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hc, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !21
  br label %.loopexit

.preheader.preheader:                             ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(64) %7, i64 64, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader94.preheader, %.preheader.preheader
  br i1 %i.ha, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hb, ptr noundef nonnull align 16 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hd, ptr noundef nonnull align 16 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hf, ptr noundef nonnull align 16 dereferenceable(16) %i.hg, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @make_polyline(ptr nonnull %9, i64 4, ptr noundef nonnull %10) #17
  %i.hs = load i32, ptr %i.hj, align 8
  %i.ht = and i32 %i.hs, 3
  %i.hu = icmp eq i32 %i.ht, 2
  %i.hv = select i1 %i.hu, ptr %i.hj, ptr %i.hn
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62
  %i.hy = load ptr, ptr %10, align 8, !tbaa !19
  %i.hz = load i64, ptr %i.hh, align 8, !tbaa !16
  call void @clip_and_install(ptr noundef nonnull %i.hj, ptr noundef %i.hx, ptr noundef %i.hy, i64 noundef %i.hz, ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  %i.ia = load i32, ptr %i.hj, align 8
  %i.ib = and i32 %i.ia, 3
  %i.ic = icmp eq i32 %i.ib, 2
  %i.id = select i1 %i.ic, ptr %i.hj, ptr %i.hn
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !62
  call void @clip_and_install(ptr noundef nonnull %i.hj, ptr noundef %i.if, ptr noundef nonnull %8, i64 noundef 4, ptr noundef %4) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @addEdgeLabels(ptr noundef nonnull %i.hj) #17
  %i.ig = load <2 x double>, ptr %i.m, align 16
  %i.ih = fadd <2 x double> %i.gz, %i.ig
  store <2 x double> %i.ih, ptr %i.m, align 16, !tbaa !20
  %i.ii = load <2 x double>, ptr %i.t, align 16
  %i.ij = fadd <2 x double> %i.gz, %i.ii
  store <2 x double> %i.ij, ptr %i.t, align 16, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ik = add nuw i64 %.086101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ik, %2
  br i1 %exitcond.not, label %.loopexit96, label %bb.aa, !llvm.loop !114

.loopexit96:                                      ; preds = %bb.ad, %bb.z, %bend.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

declare void @clip_and_install(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @addEdgeLabels(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #11 {
bb.a:
  tail call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @agnameof(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @limitBoxes(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, double noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = fmul double %4, %i.a                     ; 3 uses
  %i.c = icmp ult i64 %3, 4
  %i.d = fcmp ult double %i.b, 0.000000e+00
  %or.cond = or i1 %i.c, %i.d
  %.not = icmp eq i64 %1, 0
  %or.cond95 = or i1 %or.cond, %.not
  br i1 %or.cond95, label %._crit_edge, label %.preheader.us85

.preheader.us85:                                  ; preds = %bb.a, %..loopexit_crit_edge.split.us.us
  %i.e = phi i64 [ %i.av, %..loopexit_crit_edge.split.us.us ], [ 3, %bb.a ] ; 3 uses
  %.07784.us86 = phi i64 [ %i.e, %..loopexit_crit_edge.split.us.us ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.07784.us86 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %i.f, i64 32
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us85
  %.07682.us.us = phi double [ 0.000000e+00, %.preheader.us85 ], [ %i.at, %._crit_edge.us.us ] ; 2 uses
  %i.j = fdiv double %.07682.us.us, %i.b
  %i.k = load <2 x double>, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %i.l = load <2 x double>, ptr %i.g, align 8, !tbaa !20 ; 3 uses
  %i.m = fsub <2 x double> %i.l, %i.k
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.m, <2 x double> %i.k) ; 2 uses
  %i.q = load <2 x double>, ptr %i.h, align 8, !tbaa !20 ; 3 uses
  %i.r = fsub <2 x double> %i.q, %i.l
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.r, <2 x double> %i.l) ; 3 uses
  %i.t = load <2 x double>, ptr %i.i, align 8, !tbaa !20
  %i.u = fsub <2 x double> %i.t, %i.q
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.u, <2 x double> %i.q)
  %i.w = fsub <2 x double> %i.s, %i.p
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.w, <2 x double> %i.p) ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.s
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.y, <2 x double> %i.s)
  %i.aa = fsub <2 x double> %i.z, %i.x
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.aa, <2 x double> %i.x) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ad = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.us.us
  %.081.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.as, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.081.us.us ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !55
  %i.ai = fadd double %i.ah, 1.000000e-04
  %i.aj = fcmp ugt double %i.ad, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !54
  %i.am = fadd double %i.al, -1.000000e-04
  %i.an = fcmp ult double %i.ad, %i.am
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load double, ptr %i.ae, align 8, !tbaa !52
  %i.ap = tail call nsz double @llvm.minnum.f64(double %i.ao, double %i.ac)
  store double %i.ap, ptr %i.ae, align 8, !tbaa !52
  %i.aq = load double, ptr %i.af, align 8, !tbaa !53
  %i.ar = tail call nsz double @llvm.maxnum.f64(double %i.aq, double %i.ac)
  store double %i.ar, ptr %i.af, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.as = add nuw i64 %.081.us.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %1
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !136

._crit_edge.us.us:                                ; preds = %bb.e
  %i.at = fadd double %.07682.us.us, 1.000000e+00 ; 2 uses
  %i.au = fcmp ugt double %i.at, %i.b
  br i1 %i.au, label %..loopexit_crit_edge.split.us.us, label %.lr.ph.us.us, !llvm.loop !137

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge.us.us
  %i.av = add i64 %i.e, 3                         ; 2 uses
  %i.aw = icmp ult i64 %i.av, %3
  br i1 %i.aw, label %.preheader.us85, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %..loopexit_crit_edge.split.us.us, %bb.a
  ret void
}

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @printpath(ptr nofree noundef readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.18, i64 noundef %i.c) #19 ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !38
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.h = load double, ptr %0, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64, !range !65, !noundef !66
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, ptr @.str.21, ptr @.str.22
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.20, double noundef %i.h, double noundef %i.j, double noundef %i.l, ptr noundef nonnull %i.p) #19 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !140
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.u, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load double, ptr %i.w, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.z = load i8, ptr %i.y, align 1, !tbaa !68, !range !65, !noundef !66
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.aa, ptr @.str.21, ptr @.str.22
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.23, double noundef %i.t, double noundef %i.v, double noundef %i.x, ptr noundef nonnull %i.ab) #19 ; 0 uses
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.b ] ; 3 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.020 ; 4 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !55
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.19, i64 noundef %.020, double noundef %i.ag, double noundef %i.ai, double noundef %i.ak, double noundef %i.am) #19 ; 0 uses
  %i.ao = add nuw i64 %.020, 1                    ; 2 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !38
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !139
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #9

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @nodes_delete(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val19 = load i64, ptr %i.a, align 8, !tbaa !72
  %.not21 = icmp eq i64 %.val19, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %.preheader
  tail call void @gv_list_clear_(ptr noundef nonnull %0, i64 noundef 8) #17
  tail call void @gv_list_free_(ptr noundef nonnull %0) #17
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.e ] ; 2 uses
  %i.c = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %.020) #17 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %magicptr = ptrtoint ptr %i.d to i64
  switch i64 %magicptr, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %.0.copyload = load ptr, ptr %i.f, align 8
  tail call void @free(ptr noundef %.0.copyload) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  tail call void %i.d(ptr noundef %i.i) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.j = add nuw i64 %.020, 1                     ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !72
  %i.k = icmp ult i64 %i.j, %.val
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !142

bb.f:                                             ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef %0) #17
  ret void
}

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dfs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readnone captures(address) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.nodes_t, align 8            ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !75
  %i.c = call zeroext i1 @gv_list_contains_(ptr noundef byval(%struct.list_t_) align 8 %2, ptr noundef nonnull %i.b, i64 noundef 8) #17
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.d, %3
  br i1 %i.e, label %bb.c, label %is_cycle_unique.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %2, i64 16
  %.val34.i = load i64, ptr %i.f, align 8, !tbaa !72
  %.val34.i.fr = freeze i64 %.val34.i             ; 3 uses
  %i.g = getelementptr i8, ptr %4, i64 16         ; 3 uses
  %.val3343.i = load i64, ptr %i.g, align 8, !tbaa !72
  %.not44.i = icmp eq i64 %.val3343.i, 0
  br i1 %.not44.i, label %.loopexit, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %bb.c
  %.not3540.not.i = icmp eq i64 %.val34.i.fr, 0
  br i1 %.not3540.not.i, label %.lr.ph47.i.us, label %.lr.ph47.i

.lr.ph47.i.us:                                    ; preds = %.lr.ph47.preheader.i, %.critedge.i.us
  %.02245.i.us = phi i64 [ %i.n, %.critedge.i.us ], [ 0, %.lr.ph47.preheader.i ] ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !26
  %i.i = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.02245.i.us) #17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %.val.i.us = load i64, ptr %i.l, align 8, !tbaa !72
  %i.m = icmp eq i64 %.val.i.us, 0
  br i1 %i.m, label %is_cycle_unique.exit, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.lr.ph47.i.us
  %i.n = add nuw i64 %.02245.i.us, 1              ; 2 uses
  %.val33.i.us = load i64, ptr %i.g, align 8, !tbaa !72
  %.not.not.i.us = icmp ult i64 %i.n, %.val33.i.us
  br i1 %.not.not.i.us, label %.lr.ph47.i.us, label %.loopexit, !llvm.loop !143

.lr.ph47.i:                                       ; preds = %.lr.ph47.preheader.i, %.critedge.i
  %.02245.i = phi i64 [ %i.aa, %.critedge.i ], [ 0, %.lr.ph47.preheader.i ] ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !26
  %i.p = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.02245.i) #17
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %.val.i = load i64, ptr %i.s, align 8, !tbaa !72
  %i.t = icmp eq i64 %.val.i, %.val34.i.fr
  br i1 %i.t, label %.lr.ph.i, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = add nuw i64 %.02641.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %.val34.i.fr
  br i1 %exitcond.not.i, label %is_cycle_unique.exit, label %.lr.ph.i, !llvm.loop !144

.lr.ph.i:                                         ; preds = %.lr.ph47.i, %bb.d
  %.02641.i = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph47.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.w = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %i.r, i64 noundef %.02641.i) #17
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  store ptr %i.y, ptr %i.a, align 8, !tbaa !75
  %i.z = call zeroext i1 @gv_list_contains_(ptr noundef byval(%struct.list_t_) align 8 %2, ptr noundef nonnull %i.a, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %i.z, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph47.i
  %i.aa = add nuw i64 %.02245.i, 1                ; 2 uses
  %.val33.i = load i64, ptr %i.g, align 8, !tbaa !72
  %.not.not.i = icmp ult i64 %i.aa, %.val33.i
  br i1 %.not.not.i, label %.lr.ph47.i, label %.loopexit, !llvm.loop !143

.loopexit:                                        ; preds = %.critedge.i, %.critedge.i.us, %bb.c
  %i.ab = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #18 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %gv_alloc.exit

bb.e:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.6, i64 noundef 48) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_alloc.exit:                                    ; preds = %.loopexit
  call void @gv_list_copy_(ptr dead_on_unwind nonnull writable sret(%struct.list_t_) align 8 %5, ptr noundef byval(%struct.list_t_) align 8 %2, i64 noundef 8) #17
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ai, align 8, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 48, i1 false), !tbaa.struct !147
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr %i.ab, ptr %i.aj, align 8, !tbaa !74
  %i.ak = call i64 @gv_list_append_slot_(ptr noundef nonnull %4, i64 noundef 8) #17
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.am = load ptr, ptr %4, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.al, ptr %i.an, align 8, !tbaa !39
  br label %is_cycle_unique.exit

bb.f:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.ao, align 8, !tbaa !146
  %i.ap = call i64 @gv_list_append_slot_(ptr noundef %2, i64 noundef 8) #17
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !146
  %i.ar = load ptr, ptr %2, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !75
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.au = call ptr @agfstout(ptr noundef %0, ptr noundef %i.at) #17 ; 2 uses
  %.not47 = icmp eq ptr %i.au, null
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.048 = phi ptr [ %i.bb, %.lr.ph ], [ %i.au, %bb.f ] ; 3 uses
  %i.av = load i32, ptr %.048, align 8
  %i.aw = and i32 %i.av, 3
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = select i1 %i.ax, i64 56, i64 -8
  %i.az = getelementptr inbounds i8, ptr %.048, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  call fastcc void @dfs(ptr noundef %0, ptr noundef %i.ba, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %i.bb = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.048) #17 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !145

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.bc = getelementptr i8, ptr %2, i64 16
  %.val44 = load i64, ptr %i.bc, align 8, !tbaa !72 ; 2 uses
  %i.bd = icmp eq i64 %.val44, 0
  br i1 %i.bd, label %is_cycle_unique.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.be = add i64 %.val44, -1
  %i.bf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.be) #17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %magicptr = ptrtoint ptr %i.bh to i64
  switch i64 %magicptr, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %2, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %.0.copyload = load ptr, ptr %i.bj, align 8
  call void @free(ptr noundef %.0.copyload) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %2, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bf
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75
  call void %i.bh(ptr noundef %i.bm) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  call void @gv_list_pop_back_(ptr noundef nonnull %2, ptr noundef nonnull %i.ao, i64 noundef 8) #17
  br label %is_cycle_unique.exit

is_cycle_unique.exit:                             ; preds = %bb.d, %.lr.ph47.i.us, %._crit_edge, %bb.j, %bb.b, %gv_alloc.exit
  ret void
}

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden zeroext i1 @gv_list_contains_(ptr noundef byval(%struct.list_t_) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_copy_(ptr dead_on_unwind writable sret(%struct.list_t_) align 8, ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @gv_list_pop_back_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { cold nounwind }
attributes #20 = { noreturn }
attributes #21 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"pointf_s", !8, i64 0, !8, i64 8}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTS8pointf_s", !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"Ppoly_t", !13, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 8}
!17 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!15, !13, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{i64 0, i64 8, !20, i64 8, i64 8, !20}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = !{!14, !14, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!"p1 omnipotent char", !12, i64 0}
!28 = !{!"tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !14, i64 40, !27, i64 48}
!29 = !{!28, !5, i64 20}
!30 = !{!28, !5, i64 16}
!31 = !{!28, !5, i64 12}
!32 = !{!28, !5, i64 8}
!33 = !{!28, !5, i64 4}
!34 = !{!28, !5, i64 0}
!35 = !{!"_Bool", !4, i64 0}
!36 = !{!"port", !9, i64 0, !8, i64 16, !12, i64 24, !35, i64 32, !35, i64 33, !35, i64 34, !35, i64 35, !4, i64 36, !4, i64 37, !27, i64 40}
!37 = !{!"path", !36, i64 0, !36, i64 48, !14, i64 96, !12, i64 104, !12, i64 112}
!38 = !{!37, !14, i64 96}
!39 = !{!12, !12, i64 0}
!40 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !14, i64 8}
!41 = !{!"p1 _ZTS7Agrec_s", !12, i64 0}
!42 = !{!"Agobj_s", !40, i64 0, !41, i64 16}
!43 = !{!42, !41, i64 16}
!44 = !{!"Agrec_s", !27, i64 0, !41, i64 8}
!45 = !{!"p1 _ZTS7splines", !12, i64 0}
!46 = !{!"p1 _ZTS11textlabel_t", !12, i64 0}
!47 = !{!"p1 _ZTS8Agedge_s", !12, i64 0}
!48 = !{!"short", !4, i64 0}
!49 = !{!"Agedgeinfo_t", !44, i64 0, !45, i64 16, !36, i64 24, !36, i64 72, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !4, i64 156, !47, i64 160, !12, i64 168, !8, i64 176, !8, i64 184, !15, i64 192, !4, i64 208, !35, i64 209, !48, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !48, i64 224, !5, i64 228, !47, i64 232}
!50 = !{!37, !12, i64 104}
!51 = !{!"", !9, i64 0, !9, i64 16}
!52 = !{!51, !8, i64 0}
!53 = !{!51, !8, i64 16}
!54 = !{!51, !8, i64 8}
!55 = !{!51, !8, i64 24}
!56 = !{!37, !8, i64 0}
!57 = !{!37, !8, i64 8}
!58 = !{!"p1 _ZTS9dtlink_s_", !12, i64 0}
!59 = !{!"dtlink_s_", !58, i64 0, !4, i64 8}
!60 = !{!"p1 _ZTS8Agnode_s", !12, i64 0}
!61 = !{!"Agedge_s", !42, i64 0, !59, i64 24, !59, i64 40, !60, i64 56}
!62 = !{!61, !60, i64 56}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!37, !35, i64 33}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!37, !8, i64 16}
!68 = !{!37, !35, i64 81}
!69 = !{!37, !8, i64 64}
!70 = !{!47, !47, i64 0}
!71 = !{!"", !12, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!72 = !{!71, !14, i64 16}
!73 = !{!"", !4, i64 0, !12, i64 32, !12, i64 40}
!74 = !{!73, !12, i64 40}
!75 = !{!60, !60, i64 0}
!76 = !{!"", !4, i64 0, !12, i64 32, !60, i64 40}
!77 = !{!76, !12, i64 32}
!78 = distinct !{!78, !22, !23}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22, !23}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !63}
!88 = distinct !{!88, !63}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22, !23}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !63}
!97 = !{!49, !4, i64 152}
!98 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !63}
!101 = distinct !{!101, !22}
!102 = !{!49, !47, i64 232}
!103 = distinct !{!103, i1 false, !"find_all_cycles"}
!104 = distinct !{!104, !103, !"find_all_cycles: argument 0"}
!105 = distinct !{!105, !22}
!106 = distinct !{null, null}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22, !23}
!109 = distinct !{!109, !22}
!110 = distinct !{null}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = !{!104}
!116 = !{!73, !12, i64 32}
!117 = !{!"Agdesc_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!118 = !{!"p1 _ZTS5dt_s_", !12, i64 0}
!119 = !{!"p1 _ZTS17graphviz_node_set", !12, i64 0}
!120 = !{!"p1 _ZTS8Agraph_s", !12, i64 0}
!121 = !{!"p1 _ZTS8Agclos_s", !12, i64 0}
!122 = !{!"Agraph_s", !42, i64 0, !117, i64 24, !59, i64 32, !59, i64 48, !118, i64 64, !119, i64 72, !118, i64 80, !118, i64 88, !118, i64 96, !118, i64 104, !120, i64 112, !120, i64 120, !121, i64 128}
!123 = !{!122, !120, i64 120}
!124 = !{!"p1 _ZTS8layout_t", !12, i64 0}
!125 = !{!"p1 _ZTS5GVC_s", !12, i64 0}
!126 = !{!"any p2 pointer", !12, i64 0}
!127 = !{!"p2 _ZTS8Agnode_s", !126, i64 0}
!128 = !{!"p2 double", !126, i64 0}
!129 = !{!"any p3 pointer", !126, i64 0}
!130 = !{!"p3 double", !129, i64 0}
!131 = !{!"p2 _ZTS8Agraph_s", !126, i64 0}
!132 = !{!"p1 _ZTS6rank_t", !12, i64 0}
!133 = !{!"nlist_t", !127, i64 0, !14, i64 8}
!134 = !{!"Agraphinfo_t", !44, i64 0, !124, i64 16, !46, i64 24, !51, i64 32, !4, i64 64, !4, i64 128, !4, i64 129, !35, i64 130, !4, i64 131, !5, i64 132, !8, i64 136, !8, i64 144, !48, i64 152, !12, i64 160, !125, i64 168, !12, i64 176, !127, i64 184, !5, i64 192, !128, i64 200, !128, i64 208, !128, i64 216, !130, i64 224, !48, i64 232, !48, i64 234, !5, i64 236, !131, i64 240, !120, i64 248, !60, i64 256, !132, i64 264, !120, i64 272, !5, i64 280, !60, i64 288, !60, i64 296, !133, i64 304, !60, i64 320, !60, i64 328, !5, i64 336, !5, i64 340, !35, i64 344, !4, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !60, i64 360, !60, i64 368, !60, i64 376, !127, i64 384, !35, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !35, i64 396}
!135 = !{!134, !5, i64 352}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = !{!37, !8, i64 48}
!141 = !{!37, !8, i64 56}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = !{!76, !60, i64 40}
!147 = !{i64 0, i64 32, !26, i64 32, i64 8, !39, i64 40, i64 8, !75}
end_hunk_0
