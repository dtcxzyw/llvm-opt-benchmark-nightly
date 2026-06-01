inline.NumInlined: 128
inline.NumDeleted: 6
begin_hunk_0_@string_downcase:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !19
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = sext i8 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.aq, align 1, !tbaa !19
  %i.aw = add nuw nsw i64 %.014, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !85

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.014.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.014.epil = phi i64 [ %.014.epil.init, %.epil.preheader ], [ %i.be, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %.014.epil ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !19
  %i.be = add nuw nsw i64 %.014.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !86

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %strcons.exit
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @lreadstring(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @tkbuffer, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %i.aa, %bb.q ]  ; 3 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.ae, %bb.q ] ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.f = tail call i32 %i.d(ptr noundef %i.e) #24 ; 2 uses
  switch i32 %i.f, label %bb.o [
    i32 -1, label %bb.r
    i32 34, label %bb.r
    i32 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.i = tail call i32 %i.g(ptr noundef %i.h) #24 ; 2 uses
  switch i32 %i.i, label %bb.o [
    i32 -1, label %bb.d
    i32 110, label %bb.e
    i32 116, label %bb.f
    i32 114, label %bb.g
    i32 100, label %bb.h
    i32 78, label %bb.i
    i32 115, label %bb.j
    i32 48, label %.preheader
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @err(ptr noundef nonnull @.str.33, ptr noundef null) #24 ; 0 uses
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  br label %bb.o

bb.h:                                             ; preds = %bb.c
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  br label %bb.o

.preheader:                                       ; preds = %bb.c, %bb.m
  %.023 = phi i32 [ %i.x, %bb.m ], [ 0, %bb.c ]   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.m = tail call i32 %i.k(ptr noundef %i.l) #24 ; 4 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader
  %i.o = tail call ptr @err(ptr noundef nonnull @.str.34, ptr noundef null) #24 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %i.p = tail call ptr @__ctype_b_loc() #26
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !89
  %i.u = and i16 %i.t, 2048
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = shl nsw i32 %.023, 3
  %i.w = add i32 %i.v, -48
  %i.x = add i32 %i.w, %i.m
  br label %.preheader

bb.n:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !45
  tail call void %i.y(i32 noundef %i.m, ptr noundef %i.z) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.n
  %.024 = phi i32 [ -1, %bb.d ], [ 10, %bb.e ], [ 9, %bb.f ], [ 13, %bb.g ], [ 4, %bb.h ], [ 0, %bb.i ], [ 32, %bb.j ], [ %.023, %bb.n ], [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  %i.aa = add nuw nsw i32 %.025, 1
  %i.ab = icmp samesign ugt i32 %.025, 5118
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call ptr @err(ptr noundef nonnull @.str.35, ptr noundef null) #24 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = trunc i32 %.024 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.ad, ptr %.0, align 1, !tbaa !19
  br label %bb.b, !llvm.loop !90

bb.r:                                             ; preds = %bb.b, %bb.b
  store i8 0, ptr %.0, align 1, !tbaa !19
  %i.af = zext nneg i32 %.025 to i64              ; 4 uses
  %i.ag = load ptr, ptr @tkbuffer, align 8, !tbaa !24 ; 2 uses
  %i.ah = tail call i64 @no_interrupt(i64 noundef 1) #24
  %i.ai = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 13, ptr %i.aj, align 2, !tbaa !16
  %i.ak = add nuw nsw i64 %i.af, 1
  %i.al = tail call ptr @must_malloc(i64 noundef %i.ak) #24 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !19
  store i64 %i.af, ptr %i.am, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %strcons.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull readonly align 1 %i.ag, i64 %i.af, i1 false)
  %.pre.i = load ptr, ptr %i.an, align 8, !tbaa !19
  br label %strcons.exit

strcons.exit:                                     ; preds = %bb.r, %bb.s
  %i.ao = phi ptr [ %.pre.i, %bb.s ], [ %i.al, %bb.r ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  store i8 0, ptr %i.ap, align 1, !tbaa !19
  %i.aq = tail call i64 @no_interrupt(i64 noundef %i.ah) #24 ; 0 uses
  ret ptr %i.ai
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @lreadsharp(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = tail call i32 %i.a(ptr noundef %i.c) #24
  switch i32 %i.d, label %bb.e [
    i32 40, label %bb.b
    i32 46, label %bb.c
    i32 102, label %.loopexit
    i32 116, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !45
  tail call void %i.f(i32 noundef 40, ptr noundef %i.g) #24
  %i.h = tail call ptr @lreadr(ptr noundef nonnull %0) #24 ; 2 uses
  %i.i = tail call i64 @nlength(ptr noundef %i.h) ; 7 uses
  %i.j = tail call i64 @no_interrupt(i64 noundef 1) #24 ; 2 uses
  %i.k = tail call ptr @cons(ptr noundef null, ptr noundef null) #24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !19
  %i.m = shl i64 %i.i, 3
  %i.n = tail call ptr @must_malloc(i64 noundef %i.m) #24
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 7 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = icmp sgt i64 %i.i, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %arcons.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.q = icmp ult i64 %i.i, 4
  br i1 %i.q, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.465.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.465.i
  store ptr null, ptr %i.s, align 8, !tbaa !14
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.465.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !14
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.465.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !14
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.465.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr null, ptr %i.ab, align 8, !tbaa !14
  %i.ac = add nuw nsw i64 %.465.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !56

arcons.exit:                                      ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 16, ptr %i.ad, align 2, !tbaa !16
  %i.ae = tail call i64 @no_interrupt(i64 noundef %i.j) #24 ; 0 uses
  br label %.loopexit

.lr.ph.preheader.unr-lcssa:                       ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.465.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.465.i.epil = phi i64 [ %i.ah, %.lr.ph.i.epil ], [ %.465.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.465.i.epil
  store ptr null, ptr %i.ag, align 8, !tbaa !14
  %i.ah = add nuw nsw i64 %.465.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.lr.ph.i.epil, !llvm.loop !91

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.unr-lcssa
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 16, ptr %i.ai, align 2, !tbaa !16
  %i.aj = tail call i64 @no_interrupt(i64 noundef %i.j) #24 ; 0 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02024 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02123 = phi ptr [ %i.an, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.ak = tail call ptr @car(ptr noundef %.02123) #24
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.02024
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !14
  %i.an = tail call ptr @cdr(ptr noundef %.02123) #24
  %i.ao = add nuw nsw i64 %.02024, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.i
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !92

bb.c:                                             ; preds = %bb.a
  %i.ap = tail call ptr @lreadr(ptr noundef nonnull %0) #24
  %i.aq = tail call ptr @leval(ptr noundef %i.ap, ptr noundef null) #24
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ar = tail call ptr @flocons(double noundef 1.000000e+00) #24
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.as = tail call ptr @err(ptr noundef nonnull @.str.36, ptr noundef null) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %arcons.exit, %bb.a, %bb.e, %bb.d, %bb.c
  %.0 = phi ptr [ %i.as, %bb.e ], [ %i.ar, %bb.d ], [ %i.aq, %bb.c ], [ null, %bb.a ], [ %i.k, %arcons.exit ], [ %i.k, %.lr.ph ]
  ret ptr %.0
}

declare ptr @lreadr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @nlength(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !16
  switch i16 %i.c, label %bb.i [
    i16 13, label %bb.c
    i16 18, label %bb.d
    i16 14, label %bb.e
    i16 15, label %bb.f
    i16 16, label %bb.g
    i16 0, label %.thread
    i16 1, label %.preheader
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  br label %.thread

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  br label %.thread

.preheader:                                       ; preds = %bb.b, %bb.h
  %.021 = phi i64 [ %i.t, %bb.h ], [ 0, %bb.b ]   ; 2 uses
  %.01620 = phi ptr [ %i.s, %bb.h ], [ %0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01620, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !16
  %i.q = icmp eq i16 %i.p, 1
  br i1 %i.q, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.01620, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = add nuw nsw i64 %.021, 1                 ; 2 uses
  %cond = icmp eq ptr %i.s, null
  br i1 %cond, label %.thread, label %.preheader, !llvm.loop !93

.critedge:                                        ; preds = %.preheader
  %i.u = tail call ptr @err(ptr noundef nonnull @.str.46, ptr noundef nonnull %0) #24 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.b
  %i.v = tail call ptr @err(ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #24 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.a, %.critedge, %bb.b, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.017 = phi i64 [ 0, %bb.i ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.021, %.critedge ], [ %i.t, %bb.h ]
  ret i64 %.017
}

declare ptr @leval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @c_sxhash(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !14
  %i.b = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !24
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @err_stack(ptr noundef nonnull %i.a) #24
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@init_subrs_a:bb.a
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.465.i
  store ptr null, ptr %i.h, align 8, !tbaa !14
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.465.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.465.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.465.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !14
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.465.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr null, ptr %i.t, align 8, !tbaa !14
  %i.u = add nuw nsw i64 %.465.i, 5               ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %i.u, 100
  br i1 %exitcond.not.i.4, label %arcons.exit, label %.lr.ph.i, !llvm.loop !56

arcons.exit:                                      ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 16, ptr %i.v, align 2, !tbaa !16
  %i.w = tail call i64 @no_interrupt(i64 noundef %i.b) #24 ; 0 uses
  %i.x = tail call ptr @setvar(ptr noundef %i.a, ptr noundef nonnull %i.c, ptr noundef null) #24 ; 0 uses
  tail call void @init_subr_3(ptr noundef nonnull @.str.162, ptr noundef nonnull @lref_default) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.163, ptr noundef nonnull @larg_default) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.164, ptr noundef nonnull @lkey_default) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.165, ptr noundef nonnull @llist) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.166, ptr noundef nonnull @writes) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.167, ptr noundef nonnull @lqsort) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.168, ptr noundef nonnull @string_lessp) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.169, ptr noundef nonnull @mapcar) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.170, ptr noundef nonnull @mapcar2) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.171, ptr noundef nonnull @mapcar1) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.172, ptr noundef nonnull @benchmark_funcall1) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.173, ptr noundef nonnull @benchmark_funcall2) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.174, ptr noundef nonnull @benchmark_eval) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.175, ptr noundef nonnull @lfmod) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.176, ptr noundef nonnull @lsubset) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.177, ptr noundef nonnull @base64encode) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.178, ptr noundef nonnull @base64decode) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.179, ptr noundef nonnull @ass) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.180, ptr noundef nonnull @append2) #24
  tail call void @init_lsubr(ptr noundef nonnull @.str.181, ptr noundef nonnull @append) #24
  tail call void @init_subr_5(ptr noundef nonnull @.str.182, ptr noundef nonnull @fast_save) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.183, ptr noundef nonnull @fast_load) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.184, ptr noundef nonnull @swrite) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.185, ptr noundef nonnull @lpow) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.186, ptr noundef nonnull @lexp) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.187, ptr noundef nonnull @llog) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.188, ptr noundef nonnull @lsin) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.189, ptr noundef nonnull @lcos) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.190, ptr noundef nonnull @ltan) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.191, ptr noundef nonnull @lasin) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.192, ptr noundef nonnull @lacos) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.193, ptr noundef nonnull @latan) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.194, ptr noundef nonnull @latan2) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.195, ptr noundef nonnull @ltypeof) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.196, ptr noundef nonnull @caaar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.197, ptr noundef nonnull @caadr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.198, ptr noundef nonnull @cadar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.199, ptr noundef nonnull @caddr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.200, ptr noundef nonnull @cdaar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.201, ptr noundef nonnull @cdadr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.202, ptr noundef nonnull @cddar) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.203, ptr noundef nonnull @cdddr) #24
  %i.y = tail call ptr @cintern(ptr noundef nonnull @.str.204) #24
  %i.z = tail call ptr @flocons(double noundef f0x400921FB54442D18) #24
  %i.aa = tail call ptr @setvar(ptr noundef %i.y, ptr noundef %i.z, ptr noundef null) #24 ; 0 uses
  %i.ab = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #27 ; 16 uses
  store ptr %i.ab, ptr @base64_decode_table, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.ab, i8 -1, i64 256, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 65
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.ac, align 1, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 81
  store <8 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23>, ptr %i.ad, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 89
  store i8 24, ptr %i.ae, align 1, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 90
  store i8 25, ptr %i.af, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 97
  store <16 x i8> <i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41>, ptr %i.ag, align 1, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 113
  store <8 x i8> <i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49>, ptr %i.ah, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 121
  store i8 50, ptr %i.ai, align 1, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 122
  store i8 51, ptr %i.aj, align 1, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 55
  store i8 59, ptr %i.ak, align 1, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i8 60, ptr %i.al, align 1, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 57
  store i8 61, ptr %i.am, align 1, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 43
  store i8 62, ptr %i.an, align 1, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 47
  store <8 x i8> <i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58>, ptr %i.ao, align 1, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 61
  store i8 64, ptr %i.ap, align 1, !tbaa !19
  tail call void @init_subr_1(ptr noundef nonnull @.str.205, ptr noundef nonnull @hexstr) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.206, ptr noundef nonnull @hexstr2bytes) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.179, ptr noundef nonnull @ass) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.207, ptr noundef nonnull @bitand) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.208, ptr noundef nonnull @bitor) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.209, ptr noundef nonnull @bitxor) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.210, ptr noundef nonnull @bitnot) #24
  tail call void @init_msubr(ptr noundef nonnull @.str.211, ptr noundef nonnull @leval_cond) #24
  tail call void @init_fsubr(ptr noundef nonnull @.str.212, ptr noundef nonnull @leval_prog1) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.213, ptr noundef nonnull @lstrspn) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.214, ptr noundef nonnull @lstrcspn) #24
  tail call void @init_subr_4(ptr noundef nonnull @.str.215, ptr noundef nonnull @substring_equal) #24
  tail call void @init_subr_4(ptr noundef nonnull @.str.216, ptr noundef nonnull @substring_equalcase) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.217, ptr noundef nonnull @butlast) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.218, ptr noundef nonnull @ash) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.219, ptr noundef nonnull @getprop) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.220, ptr noundef nonnull @setprop) #24
  tail call void @init_subr_3(ptr noundef nonnull @.str.221, ptr noundef nonnull @putprop) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.222, ptr noundef nonnull @last) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.223, ptr noundef nonnull @memq) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.224, ptr noundef nonnull @memv) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.225, ptr noundef nonnull @member) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.226, ptr noundef nonnull @nth) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.227, ptr noundef nonnull @nconc) #24
  tail call void @init_subr_2(ptr noundef nonnull @.str.228, ptr noundef nonnull @set_eval_history) #24
  tail call void @init_subr_1(ptr noundef nonnull @.str.229, ptr noundef nonnull @parser_fasl) #24
  %i.aq = tail call ptr @cintern(ptr noundef nonnull @.str.230) #24
  %i.ar = tail call ptr @a_true_value() #24
  %i.as = tail call ptr @setvar(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef null) #24 ; 0 uses
  tail call void @init_subr_2(ptr noundef nonnull @.str.231, ptr noundef nonnull @parser_fasl_hook) #24
  %i.at = tail call ptr @cintern(ptr noundef nonnull @.str.234) #24
  %i.au = tail call ptr @cintern(ptr noundef nonnull @.str.235) #24
  %i.av = tail call ptr @setvar(ptr noundef %i.at, ptr noundef %i.au, ptr noundef null) #24 ; 0 uses
  ret void
}

declare void @init_subr_2(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_lsubr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gc_protect_sym(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_subr_5(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_msubr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_fsubr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @parser_fasl(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @flocons(double noundef 1.000000e+02) #24
  %i.b = tail call ptr @cons_array(ptr noundef %i.a, ptr noundef null)
  %i.c = tail call ptr @flocons(double noundef 0.000000e+00) #24
  %i.d = tail call ptr (i64, ...) @listn(i64 noundef 3, ptr noundef null, ptr noundef %i.b, ptr noundef %i.c)
  %i.e = tail call ptr @cintern(ptr noundef nonnull @.str.231) #24
  %i.f = tail call ptr @leval(ptr noundef %i.e, ptr noundef null) #24
  %i.g = tail call ptr @closure(ptr noundef %i.d, ptr noundef %i.f) #24
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @parser_fasl_hook(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @setcar(ptr noundef %0, ptr noundef %1) #24 ; 0 uses
  %i.b = tail call ptr @fast_read(ptr noundef %0) ; 2 uses
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @get_eof_val() #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

declare ptr @closure(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_eof_val() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 56}
!9 = !{!"user_type_hooks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 64}
!12 = !{!9, !10, i64 72}
!13 = !{!9, !10, i64 48}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS3obj", !10, i64 0}
!16 = !{!17, !18, i64 2}
!17 = !{!"obj", !18, i64 0, !18, i64 2, !6, i64 8}
!18 = !{!"short", !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !6, i64 0}
!28 = distinct !{!28, !21}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !6, i64 0}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = !{!43, !10, i64 0}
!43 = !{!"gen_readio", !10, i64 0, !10, i64 8, !10, i64 16}
!44 = !{!43, !10, i64 8}
!45 = !{!43, !10, i64 16}
!46 = !{!47, !10, i64 0}
!47 = !{!"gen_printio", !10, i64 0, !10, i64 8, !10, i64 16}
!48 = !{!47, !10, i64 8}
!49 = !{!47, !10, i64 16}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
!59 = distinct !{!59, !54}
!60 = distinct !{!60, !54}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 long", !10, i64 0}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !54}
!71 = distinct !{!71, !54}
!72 = distinct !{!72, !54}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 int", !10, i64 0}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !54}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, !54}
!87 = !{!88, !88, i64 0}
!88 = !{!"p1 short", !10, i64 0}
!89 = !{!18, !18, i64 0}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !54}
!92 = distinct !{!92, !21}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = !{!105, !105, i64 0}
!105 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!106 = distinct !{null}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !54}
!124 = !{ptr @funcall2}
!125 = distinct !{!125, !21}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !21}
!132 = distinct !{!132, !21}
!133 = distinct !{!133, !21}
!134 = distinct !{!134, !21}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21}
end_hunk_1
