inline.NumInlined: 54
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CurrentMemoryContext = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"dependency_degree cxt\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"invalid MVDependencies size %zu (expected at least %zu)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"dependencies.c\00", align 1
@__func__.statext_dependencies_deserialize = private unnamed_addr constant [33 x i8] c"statext_dependencies_deserialize\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"invalid dependency magic %d (expected %d)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid dependency type %d (expected %d)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"invalid zero-length item array in MVDependencies\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"invalid dependencies size %zu (expected at least %zu)\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"could not validate \22%s\22 object: invalid attribute number %d found\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"pg_dependencies\00", align 1
@__func__.statext_dependencies_validate = private unnamed_addr constant [30 x i8] c"statext_dependencies_validate\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"cache lookup failed for statistics object %u\00", align 1
@__func__.statext_dependencies_load = private unnamed_addr constant [26 x i8] c"statext_dependencies_load\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"requested statistics kind \22%c\22 is not yet built for statistics object %u\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"cache lookup failed for ordering operator for type %u\00", align 1
@__func__.dependency_degree = private unnamed_addr constant [18 x i8] c"dependency_degree\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @statext_dependencies_build(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr @CurrentMemoryContext, align 8
  %i.c = tail call ptr @AllocSetContextCreateInternal(ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not53 = icmp slt i32 %i.e, 2
  br i1 %.not53, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %DependencyGenerator_next.exit.thread
  %i.h = phi i32 [ %i.e, %.lr.ph57 ], [ %i.ft, %DependencyGenerator_next.exit.thread ]
  %.055 = phi ptr [ null, %.lr.ph57 ], [ %.1.lcssa, %DependencyGenerator_next.exit.thread ] ; 2 uses
  %.03854 = phi i32 [ 2, %.lr.ph57 ], [ %i.fs, %DependencyGenerator_next.exit.thread ] ; 14 uses
  %1 = zext i32 %.03854 to i64                    ; 2 uses
  %2 = zext i32 %.03854 to i64                    ; 2 uses
  %i.i = call ptr @palloc0(i64 noundef 24) #7     ; 8 uses
  %i.j = sext i32 %.03854 to i64                  ; 4 uses
  %i.k = call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.j) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 3 uses
  store i16 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8
  store i32 %.03854, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.h, ptr %i.o, align 4
  %i.p = call ptr @palloc0_mul(i64 noundef 2, i64 noundef %i.j) #7 ; 2 uses
  call fastcc void @generate_dependencies_recurse(ptr noundef nonnull %i.i, i32 noundef 0, i16 noundef signext 0, ptr noundef %i.p)
  call void @pfree(ptr noundef %i.p) #7
  %i.q = load i32, ptr %i.n, align 8              ; 2 uses
  %i.r = load i16, ptr %i.m, align 4
  %i.s = sext i16 %i.r to i32
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %DependencyGenerator_next.exit.thread, label %DependencyGenerator_next.exit.lr.ph

DependencyGenerator_next.exit.lr.ph:              ; preds = %bb.b
  %i.u = icmp sgt i32 %.03854, 0                  ; 2 uses
  %wide.trip.count.i = zext i32 %.03854 to i64
  %i.v = add i32 %.03854, -2
  %i.w = add i32 %.03854, -1
  %i.x = shl nsw i64 %i.j, 1
  %i.y = add nsw i64 %i.x, 10
  %i.z = trunc i32 %.03854 to i16
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.aa = icmp ult i32 %.03854, 4
  %unroll_iter = and i64 %2, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  %xtraiter76 = and i64 %1, 3                     ; 3 uses
  %i.ab = icmp ult i32 %.03854, 4
  %unroll_iter80 = and i64 %1, 2147483644
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  br label %DependencyGenerator_next.exit

DependencyGenerator_next.exit:                    ; preds = %DependencyGenerator_next.exit.lr.ph, %bb.n
  %i.ac = phi i32 [ %i.q, %DependencyGenerator_next.exit.lr.ph ], [ %i.fn, %bb.n ] ; 2 uses
  %.151 = phi ptr [ %.055, %DependencyGenerator_next.exit.lr.ph ], [ %.3, %bb.n ] ; 5 uses
  %i.ad = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ae = load i32, ptr %i.i, align 8
  %i.af = add i32 %i.ac, 1
  store i32 %i.af, ptr %i.n, align 8
  %i.ag = mul i32 %i.ae, %i.ac
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ah ; 11 uses
  %.not43 = icmp eq ptr %i.ad, null
  br i1 %.not43, label %DependencyGenerator_next.exit.thread, label %bb.c

bb.c:                                             ; preds = %DependencyGenerator_next.exit
  %i.aj = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.c, ptr @CurrentMemoryContext, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ak = call ptr @multi_sort_init(i32 noundef %.03854) #7 ; 4 uses
  %i.al = call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.j) #7 ; 6 uses
  br i1 %i.u, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = sext i16 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i
  store i16 %i.ar, ptr %i.as, align 2
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.at = load ptr, ptr %i.f, align 8
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next.i
  store i16 %i.ay, ptr %i.az, align 2
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.next.i.1
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = sext i16 %i.bc to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next.i.1
  store i16 %i.bf, ptr %i.bg, align 2
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.next.i.2
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = sext i16 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.next.i.2
  store i16 %i.bm, ptr %i.bn, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph65.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

.lr.ph65.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.lr.ph65.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph65.i.preheader.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.lr.ph65.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bo = load ptr, ptr %i.f, align 8
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.i.epil
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.epil
  store i16 %i.bt, ptr %i.bu, align 2
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph65.i.preheader, label %.lr.ph.i.epil, !llvm.loop !6

.lr.ph65.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph65.i.preheader.unr-lcssa
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader, %bb.e
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %bb.e ], [ 0, %.lr.ph65.i.preheader ] ; 3 uses
  %i.bv = load ptr, ptr %i.g, align 8
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv77.i
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = sext i16 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = call ptr @lookup_type_cache(i32 noundef %i.cc, i32 noundef 2) #7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i32, ptr %i.ce, align 8            ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph65.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ci = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.cj = load i32, ptr %i.ch, align 4
  %i.ck = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, i32 noundef %i.cj) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 266, ptr noundef nonnull @__func__.dependency_degree) #7
  unreachable

bb.e:                                             ; preds = %.lr.ph65.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = trunc nuw nsw i64 %indvars.iv77.i to i32
  call void @multi_sort_add_dimension(ptr noundef %i.ak, i32 noundef %i.cn, i32 noundef %i.cf, i32 noundef %i.cm) #7
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %._crit_edge.i, label %.lr.ph65.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.e, %bb.c
  %i.co = call ptr @build_sorted_items(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.ak, i32 noundef %.03854, ptr noundef %i.al) #7 ; 2 uses
  %i.cp = load i32, ptr %i.a, align 4             ; 2 uses
  %.not66.i = icmp slt i32 %i.cp, 1
  br i1 %.not66.i, label %dependency_degree.exit, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %._crit_edge.i, %bb.i
  %i.cq = phi i32 [ %i.de, %bb.i ], [ %i.cp, %._crit_edge.i ]
  %.071.i = phi i32 [ %.2.i, %bb.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.04870.i = phi i32 [ %.250.i, %bb.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.05169.i = phi i32 [ %.152.i, %bb.i ], [ 1, %._crit_edge.i ] ; 2 uses
  %.25567.i = phi i32 [ %i.dd, %bb.i ], [ 1, %._crit_edge.i ] ; 4 uses
  %i.cr = icmp eq i32 %.25567.i, %i.cq
  br i1 %i.cr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph73.i
  %i.cs = add i32 %.25567.i, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [24 x i8], ptr %i.co, i64 %i.ct ; 2 uses
  %i.cv = sext i32 %.25567.i to i64
  %i.cw = getelementptr inbounds [24 x i8], ptr %i.co, i64 %i.cv ; 2 uses
  %i.cx = call i32 @multi_sort_compare_dims(i32 noundef 0, i32 noundef %i.v, ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef %i.ak) #7
  %.not59.i = icmp eq i32 %i.cx, 0
  br i1 %.not59.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph73.i
  %i.cy = icmp eq i32 %.04870.i, 0
  %i.cz = select i1 %i.cy, i32 %.05169.i, i32 0
  %spec.select.i = add i32 %i.cz, %.071.i
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.da = call i32 @multi_sort_compare_dim(i32 noundef %i.w, ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef %i.ak) #7
  %.not60.i = icmp ne i32 %i.da, 0
  %i.db = zext i1 %.not60.i to i32
  %spec.select61.i = add i32 %.04870.i, %i.db
  %i.dc = add i32 %.05169.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.152.i = phi i32 [ 1, %bb.g ], [ %i.dc, %bb.h ]
  %.250.i = phi i32 [ 0, %bb.g ], [ %spec.select61.i, %bb.h ]
  %.2.i = phi i32 [ %spec.select.i, %bb.g ], [ %.071.i, %bb.h ] ; 2 uses
  %i.dd = add i32 %.25567.i, 1                    ; 2 uses
  %i.de = load i32, ptr %i.a, align 4             ; 2 uses
  %.not.i = icmp sgt i32 %i.dd, %i.de
  br i1 %.not.i, label %._crit_edge74.loopexit.i, label %.lr.ph73.i, !llvm.loop !9

._crit_edge74.loopexit.i:                         ; preds = %bb.i
  %i.df = sitofp i32 %.2.i to double
  br label %dependency_degree.exit

dependency_degree.exit:                           ; preds = %._crit_edge.i, %._crit_edge74.loopexit.i
  %.0.lcssa.i = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.df, %._crit_edge74.loopexit.i ]
  %i.dg = load i32, ptr %0, align 8
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fdiv double %.0.lcssa.i, %i.dh          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store ptr %i.aj, ptr @CurrentMemoryContext, align 8
  call void @MemoryContextReset(ptr noundef %i.c) #7
  %i.dj = fcmp oeq double %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.n, label %bb.j, !llvm.loop !10

bb.j:                                             ; preds = %dependency_degree.exit
  %i.dk = call ptr @palloc0(i64 noundef %i.y) #7  ; 4 uses
  store double %i.di, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i16 %i.z, ptr %i.dl, align 8
  br i1 %i.u, label %.lr.ph, label %._crit_edge
end_hunk_0
