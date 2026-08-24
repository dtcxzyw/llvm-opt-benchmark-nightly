Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/vor?download=true
inline.NumInlined: 7
begin_hunk_0_@get_file:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare ptr @init() local_unnamed_addr #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @add_point(i64 %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @K, align 8, !tbaa !8
  %i.b = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [20 x i8], ptr %i.a, i64 %i.c
  store i64 %0, ptr %i.d, align 4
  %i.e = load ptr, ptr @K, align 8, !tbaa !8      ; 3 uses
  %i.f = getelementptr inbounds [20 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [20 x i8], ptr %i.e, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !22
  %i.l = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [20 x i8], ptr %i.e, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.o, align 4, !tbaa !23
  %i.p = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @Kcount, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @compute_v(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.069.0.copyload = load i64, ptr %i.a, align 4 ; 4 uses
  %i.b = trunc i64 %.sroa.069.0.copyload to i32   ; 3 uses
  %i.c = lshr i64 %.sroa.069.0.copyload, 32       ; 2 uses
  %i.d = trunc nuw i64 %i.c to i32                ; 2 uses
  %i.e = tail call ptr @next(ptr noundef %0) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.044.0.copyload = load i64, ptr %i.f, align 4 ; 4 uses
  %i.g = trunc i64 %.sroa.044.0.copyload to i32   ; 3 uses
  %i.h = lshr i64 %.sroa.044.0.copyload, 32       ; 2 uses
  %i.i = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.j = tail call i64 @vector(i64 %.sroa.069.0.copyload, i64 %.sroa.044.0.copyload) #13 ; 13 uses
  %i.k = tail call { double, double } @midpoint(i64 %.sroa.069.0.copyload, i64 %.sroa.044.0.copyload) #13 ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = tail call double @calculate_c(i64 %i.j, double %i.l, double %i.m) #13 ; 12 uses
  %i.o = icmp slt i32 %i.b, %i.g                  ; 3 uses
  %i.p = icmp slt i32 %i.d, %i.i                  ; 3 uses
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = tail call { double, double } @intersect(i64 %i.j, i64 4294967296, double noundef %i.n, double noundef 1.000000e+04) #13 ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0  ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %or.cond215 = fcmp ogt double %i.s, 1.000000e+04
  br i1 %or.cond215, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.t = tail call { double, double } @intersect(i64 %i.j, i64 1, double noundef %i.n, double noundef -1.000000e+04) #13 ; 2 uses
  %i.u = extractvalue { double, double } %i.t, 0
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.v = icmp eq i64 %i.c, %i.h                   ; 2 uses
  %or.cond216 = and i1 %i.o, %i.v
  br i1 %or.cond216, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call { double, double } @intersect(i64 %i.j, i64 4294967296, double noundef %i.n, double noundef 1.000000e+04) #13 ; 2 uses
  %i.x = extractvalue { double, double } %i.w, 0
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.y = icmp sgt i32 %i.d, %i.i                  ; 3 uses
  %or.cond217 = select i1 %i.o, i1 %i.y, i1 false
  br i1 %or.cond217, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call { double, double } @intersect(i64 %i.j, i64 4294967296, double noundef %i.n, double noundef 1.000000e+04) #13 ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0 ; 2 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %or.cond218 = fcmp ogt double %i.ab, 1.000000e+04
  br i1 %or.cond218, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call { double, double } @intersect(i64 %i.j, i64 1, double noundef %i.n, double noundef 1.000000e+04) #13 ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.b, %i.g                  ; 2 uses
  %or.cond219 = select i1 %i.ae, i1 %i.p, i1 false
  br i1 %or.cond219, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = tail call { double, double } @intersect(i64 %i.j, i64 1, double noundef %i.n, double noundef -1.000000e+04) #13 ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 0
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %or.cond220 = select i1 %i.ae, i1 %i.y, i1 false
  br i1 %or.cond220, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call { double, double } @intersect(i64 %i.j, i64 1, double noundef %i.n, double noundef 1.000000e+04) #13 ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp sgt i32 %i.b, %i.g                 ; 3 uses
  %or.cond221 = select i1 %i.aj, i1 %i.p, i1 false
  br i1 %or.cond221, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call { double, double } @intersect(i64 %i.j, i64 4294967296, double noundef %i.n, double noundef -1.000000e+04) #13 ; 2 uses
  %i.al = extractvalue { double, double } %i.ak, 0 ; 2 uses
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %or.cond222 = fcmp ogt double %i.am, 1.000000e+04
  br i1 %or.cond222, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.an = tail call { double, double } @intersect(i64 %i.j, i64 1, double noundef %i.n, double noundef -1.000000e+04) #13 ; 2 uses
  %i.ao = extractvalue { double, double } %i.an, 0
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %or.cond223 = and i1 %i.aj, %i.v
  br i1 %or.cond223, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = tail call { double, double } @intersect(i64 %i.j, i64 4294967296, double noundef %i.n, double noundef -1.000000e+04) #13 ; 2 uses
  %i.aq = extractvalue { double, double } %i.ap, 0
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %or.cond224 = select i1 %i.aj, i1 %i.y, i1 false
  br i1 %or.cond224, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call { double, double } @intersect(i64 %i.j, i64 4294967296, double noundef %i.n, double noundef -1.000000e+04) #13 ; 2 uses
  %i.as = extractvalue { double, double } %i.ar, 0 ; 2 uses
  %i.at = tail call double @llvm.fabs.f64(double %i.as)
  %or.cond225 = fcmp ogt double %i.at, 1.000000e+04
  br i1 %or.cond225, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.au = tail call { double, double } @intersect(i64 %i.j, i64 1, double noundef %i.n, double noundef 1.000000e+04) #13 ; 2 uses
  %i.av = extractvalue { double, double } %i.au, 0
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.n, %bb.g, %bb.b, %bb.e, %bb.j, %bb.o, %bb.t, %bb.q, %bb.l, %bb.h, %bb.c
  %.sroa.095.0 = phi double [ %i.u, %bb.c ], [ %i.r, %bb.b ], [ %i.x, %bb.e ], [ %i.ad, %bb.h ], [ %i.aa, %bb.g ], [ %i.ag, %bb.j ], [ %i.ai, %bb.l ], [ %i.ao, %bb.o ], [ %i.al, %bb.n ], [ %i.aq, %bb.q ], [ %i.av, %bb.t ], [ %i.as, %bb.s ]
  %.pn = phi { double, double } [ %i.t, %bb.c ], [ %i.q, %bb.b ], [ %i.w, %bb.e ], [ %i.ac, %bb.h ], [ %i.z, %bb.g ], [ %i.af, %bb.j ], [ %i.ah, %bb.l ], [ %i.an, %bb.o ], [ %i.ak, %bb.n ], [ %i.ap, %bb.q ], [ %i.au, %bb.t ], [ %i.ar, %bb.s ]
  %.sroa.23.0 = extractvalue { double, double } %.pn, 1
  %i.aw = fptosi double %.sroa.095.0 to i32
  %i.ax = fptosi double %.sroa.23.0 to i32
  %.sroa.2211.0.insert.ext = zext i32 %i.ax to i64
  %.sroa.2211.0.insert.shift = shl nuw i64 %.sroa.2211.0.insert.ext, 32
  %.sroa.0210.0.insert.ext = zext i32 %i.aw to i64
  %.sroa.0210.0.insert.insert = or disjoint i64 %.sroa.2211.0.insert.shift, %.sroa.0210.0.insert.ext
  ret i64 %.sroa.0210.0.insert.insert
}

declare ptr @next(ptr noundef) local_unnamed_addr #4

declare i64 @vector(i64, i64) local_unnamed_addr #4

declare double @calculate_c(i64, double, double) local_unnamed_addr #4

declare { double, double } @midpoint(i64, i64) local_unnamed_addr #4

declare { double, double } @intersect(i64, i64, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @add_infinit_points_to_K(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @CHno, align 4, !tbaa !4
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 20) #15
  store ptr %i.e, ptr @K, align 8, !tbaa !8
  %i.f = add nsw i32 %i.b, -2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 32) #15
  store ptr %i.h, ptr @E, align 8, !tbaa !11
  %i.i = tail call ptr @CHinit() #13
  store ptr %i.i, ptr @CHSplaytree, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = tail call i64 @compute_v(ptr noundef %0)
  %i.m = load ptr, ptr @K, align 8, !tbaa !8
  %i.n = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [20 x i8], ptr %i.m, i64 %i.o
  store i64 %i.l, ptr %i.p, align 4
  %i.q = load ptr, ptr @K, align 8, !tbaa !8      ; 3 uses
  %i.r = getelementptr inbounds [20 x i8], ptr %i.q, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.s, align 4, !tbaa !19
  %i.t = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [20 x i8], ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !22
  %i.x = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [20 x i8], ptr %i.q, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 0, ptr %i.aa, align 4, !tbaa !23
  %i.ab = load i32, ptr @Kcount, align 4, !tbaa !4 ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr @Kcount, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !29
  %i.ae = tail call ptr @CHinsert(ptr noundef nonnull @CHSplaytree, ptr noundef %0) #13 ; 0 uses
  %.not11 = icmp eq ptr %i.k, %0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.ba, %.lr.ph ], [ %i.k, %bb.a ] ; 4 uses
  %i.af = tail call i64 @compute_v(ptr noundef %.012)
  %i.ag = load ptr, ptr @K, align 8, !tbaa !8
  %i.ah = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [20 x i8], ptr %i.ag, i64 %i.ai
  store i64 %i.af, ptr %i.aj, align 4
  %i.ak = load ptr, ptr @K, align 8, !tbaa !8     ; 3 uses
  %i.al = getelementptr inbounds [20 x i8], ptr %i.ak, i64 %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 0, ptr %i.am, align 4, !tbaa !19
  %i.an = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [20 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !22
  %i.ar = load i32, ptr @Kcount, align 4, !tbaa !4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [20 x i8], ptr %i.ak, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.au, align 4, !tbaa !23
  %i.av = load i32, ptr @Kcount, align 4, !tbaa !4 ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr @Kcount, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.012, i64 12
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !29
  %i.ay = tail call ptr @CHinsert(ptr noundef nonnull @CHSplaytree, ptr noundef %.012) #13 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %i.ba, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @CHinit() local_unnamed_addr #4

declare ptr @CHinsert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @add_edge(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @E, align 8, !tbaa !11     ; 12 uses
  %i.b = load i32, ptr @Ecount, align 4, !tbaa !4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.c
  store i32 %0, ptr %i.d, align 4, !tbaa !31
  %i.e = load i32, ptr @Ecount, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %1, ptr %i.h, align 4, !tbaa !33
  %i.i = load ptr, ptr @K, align 8, !tbaa !8      ; 2 uses
  %i.j = sext i32 %0 to i64
  %i.k = getelementptr inbounds [20 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19   ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr @Ecount, align 4, !tbaa !4 ; 3 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !19
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.o, ptr %i.r, align 4, !tbaa !34
  %i.s = load i32, ptr @Ecount, align 4, !tbaa !4 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.s, ptr %i.v, align 4, !tbaa !35
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load i32, ptr @Ecount, align 4, !tbaa !4 ; 3 uses
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 %i.z, ptr %i.w, align 4, !tbaa !22
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.m, ptr %i.ac, align 4, !tbaa !34
  %i.ad = load i32, ptr @Ecount, align 4, !tbaa !4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %i.m, ptr %i.ag, align 4, !tbaa !35
  %i.ah = sext i32 %i.m to i64
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ah ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.ak = icmp eq i32 %0, %i.aj
  %i.al = load i32, ptr @Ecount, align 4, !tbaa !4 ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 %i.al, ptr %i.an, align 4, !tbaa !35
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !37
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %i.z, ptr %i.aq, align 4, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %i.ar = sext i32 %1 to i64
  %i.as = getelementptr inbounds [20 x i8], ptr %i.i, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19 ; 4 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr @Ecount, align 4, !tbaa !4 ; 3 uses
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !19
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !34
  %i.ba = load i32, ptr @Ecount, align 4, !tbaa !4 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !35
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = load i32, ptr @Ecount, align 4, !tbaa !4 ; 3 uses
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !22
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.au, ptr %i.bk, align 4, !tbaa !34
  %i.bl = load i32, ptr @Ecount, align 4, !tbaa !4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.au, ptr %i.bo, align 4, !tbaa !35
  %i.bp = sext i32 %i.au to i64
end_hunk_0
