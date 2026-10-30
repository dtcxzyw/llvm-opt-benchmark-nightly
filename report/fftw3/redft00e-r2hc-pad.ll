Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/redft00e-r2hc-pad?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }
%struct.opcnt = type { double, double, double, double }

@mksolver.sadt = internal constant { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @mkplan, ptr null }, align 8
@mkplan.padt = internal constant %struct.plan_adt { ptr @fftw_rdft_solve, ptr @awake, ptr @print, ptr @destroy }, align 8
@.str = private unnamed_addr constant [37 x i8] c"(redft00e-r2hc-pad-%D%v%(%p%)%(%p%))\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fftw_redft00e_r2hc_pad_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 16, ptr noundef nonnull @mksolver.sadt) #4
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #4
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.opcnt, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.d = getelementptr i8, ptr %2, i64 212
  %.val = load i64, ptr %i.d, align 4
  %i.e = and i64 %.val, 8
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %i.m = icmp slt i32 %i.l, 2
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = icmp eq i32 %i.o, 9
  br i1 %i.p, label %applicable.exit, label %.thread

applicable.exit:                                  ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33   ; 3 uses
  %i.s = icmp slt i64 %i.r, 2
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %applicable.exit
  %i.t = add nsw i64 %i.r, -1                     ; 4 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = shl i64 %i.t, 4
  %i.w = tail call ptr @fftw_malloc_plain(i64 noundef %i.v) #4 ; 6 uses
  %i.x = tail call ptr @fftw_mktensor_1d(i64 noundef %i.u, i64 noundef 1, i64 noundef 1) #4
  %i.y = tail call ptr @fftw_mktensor_0d() #4
  %i.z = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.x, ptr noundef %i.y, ptr noundef %i.w, ptr noundef %i.w, i32 noundef 0) #4
  %i.aa = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.z) #4 ; 4 uses
  %.not49 = icmp eq ptr %i.aa, null
  br i1 %.not49, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.ac = call i32 @fftw_tensor_tornk1(ptr noundef %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.ad = call ptr @fftw_mktensor_0d() #4
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ah = call ptr @fftw_mktensor_1d(i64 noundef %i.r, i64 noundef 1, i64 noundef %i.ag) #4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !36
  %i.al = call ptr @fftw_taint(ptr noundef %i.aj, i64 noundef %i.ak) #4
  %i.am = call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.ad, ptr noundef %i.ah, ptr noundef %i.w, ptr noundef %i.al, i32 noundef 0) #4
  %i.an = call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.am) #4 ; 3 uses
  %.not50 = icmp eq ptr %i.an, null
  br i1 %.not50, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @fftw_ifree(ptr noundef %i.w) #4
  %i.ao = call ptr @fftw_mkplan_rdft(i64 noundef 120, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull @apply) #4 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  store i64 %i.t, ptr %i.ap, align 8, !tbaa !17
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store i64 %i.as, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store ptr %i.an, ptr %i.av, align 8, !tbaa !20
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 96 ; 4 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !21
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !22
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !23
  call void @fftw_ops_zero(ptr noundef nonnull %3) #4
  %i.bc = mul nsw i64 %i.t, 3
  %i.bd = uitofp nneg i64 %i.bc to double
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.bd, ptr %i.be, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.bf) #4
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !21
  call void @fftw_ops_madd2(i64 noundef %i.bg, ptr noundef nonnull %3, ptr noundef nonnull %i.bf) #4
  %i.bh = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bh, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bf) #4
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf) #4
  br label %bb.i

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %bb.f, %bb.e, %applicable.exit
  %.045 = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ], [ null, %applicable.exit ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.a ] ; 2 uses
  %.0 = phi ptr [ %i.w, %bb.f ], [ %i.w, %bb.e ], [ null, %applicable.exit ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.a ]
  call void @fftw_ifree0(ptr noundef %.0) #4
  %.not51 = icmp eq ptr %.045, null
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  call void @fftw_plan_destroy_internal(ptr noundef nonnull %.045) #4
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.g
  %.046 = phi ptr [ %i.ao, %bb.g ], [ null, %bb.h ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @fftw_plan_awake(ptr noundef %i.d, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %i.d = add nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %i.h, ptr noundef %i.j) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #4
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_taint(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = shl nuw nsw i64 %i.d, 1                  ; 5 uses
  %i.l = shl i64 %i.d, 4
  %i.m = tail call ptr @fftw_malloc_plain(i64 noundef %i.l) #4 ; 21 uses
  %i.n = icmp sgt i64 %i.f, 0
  br i1 %i.n, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.o = icmp sgt i64 %i.d, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.o, label %.lr.ph.us.preheader, label %.lr.ph52.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph52
  %i.r = mul nsw i64 %i.d, %i.b
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.d
  %i.t = add nsw i64 %i.d, -1                     ; 2 uses
  %i.u = add nsw i64 %i.d, -2
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  %unroll_iter = and i64 %i.t, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod62 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.050.us = phi ptr [ %i.bp, %._crit_edge.us ], [ %1, %.lr.ph.us.preheader ] ; 8 uses
  %.04449.us = phi ptr [ %i.bq, %._crit_edge.us ], [ %2, %.lr.ph.us.preheader ] ; 2 uses
  %.04548.us = phi i64 [ %i.bo, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.w = load double, ptr %.050.us, align 8, !tbaa !44
  store double %i.w, ptr %i.m, align 8, !tbaa !44
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.04647.us = phi i64 [ %i.ay, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.x = mul nsw i64 %.04647.us, %i.b
  %i.y = getelementptr inbounds [8 x i8], ptr %.050.us, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !44 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04647.us
  store double %i.z, ptr %i.aa, align 8, !tbaa !44
  %i.ab = sub nuw nsw i64 %i.k, %.04647.us
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ab
  store double %i.z, ptr %i.ac, align 8, !tbaa !44
  %i.ad = add nuw nsw i64 %.04647.us, 1           ; 3 uses
  %i.ae = mul nsw i64 %i.ad, %i.b
  %i.af = getelementptr inbounds [8 x i8], ptr %.050.us, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  store double %i.ag, ptr %i.ah, align 8, !tbaa !44
  %i.ai = sub nuw nsw i64 %i.k, %i.ad
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ai
  store double %i.ag, ptr %i.aj, align 8, !tbaa !44
  %i.ak = add nuw nsw i64 %.04647.us, 2           ; 3 uses
  %i.al = mul nsw i64 %i.ak, %i.b
  %i.am = getelementptr inbounds [8 x i8], ptr %.050.us, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ak
  store double %i.an, ptr %i.ao, align 8, !tbaa !44
  %i.ap = sub nuw nsw i64 %i.k, %i.ak
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ap
  store double %i.an, ptr %i.aq, align 8, !tbaa !44
  %i.ar = add nuw nsw i64 %.04647.us, 3           ; 3 uses
  %i.as = mul nsw i64 %i.ar, %i.b
  %i.at = getelementptr inbounds [8 x i8], ptr %.050.us, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ar
  store double %i.au, ptr %i.av, align 8, !tbaa !44
  %i.aw = sub nuw nsw i64 %i.k, %i.ar
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aw
  store double %i.au, ptr %i.ax, align 8, !tbaa !44
  %i.ay = add nuw nsw i64 %.04647.us, 4           ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !41

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.04647.us.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %i.ay, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.04647.us.epil = phi i64 [ %.04647.us.epil.init, %.epil.preheader ], [ %i.bf, %bb.b ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.az = mul nsw i64 %.04647.us.epil, %i.b
  %i.ba = getelementptr inbounds [8 x i8], ptr %.050.us, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04647.us.epil
  store double %i.bb, ptr %i.bc, align 8, !tbaa !44
  %i.bd = sub nuw nsw i64 %i.k, %.04647.us.epil
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bd
  store double %i.bb, ptr %i.be, align 8, !tbaa !44
  %i.bf = add nuw nsw i64 %.04647.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !42

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %i.bg = getelementptr inbounds [8 x i8], ptr %.050.us, i64 %i.r
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !44
  store double %i.bh, ptr %i.s, align 8, !tbaa !44
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47
  tail call void %i.bk(ptr noundef %i.bi, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m) #4
end_hunk_0
