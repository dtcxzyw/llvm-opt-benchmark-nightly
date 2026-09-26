Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/vor?download=true
inline.NumInlined: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.key = type { double, double, i32 }

@CHno = dso_local local_unnamed_addr global i32 0, align 4
@Kcount = dso_local local_unnamed_addr global i32 1, align 4
@Ecount = dso_local local_unnamed_addr global i32 1, align 4
@K = dso_local local_unnamed_addr global ptr null, align 8
@E = dso_local local_unnamed_addr global ptr null, align 8
@Splaytree = dso_local global ptr null, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@CHSplaytree = dso_local global ptr null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"The center is (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The radius is %9.2f\0A\00", align 1
@S = dso_local local_unnamed_addr global ptr null, align 8
@default_radius = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [23 x i8] c"Error: Can't intersect\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @clean_up() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @K, align 8, !tbaa !11
  tail call void @free(ptr noundef %i.a) #13
  %i.b = load ptr, ptr @E, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.b) #13
  store i32 1, ptr @Kcount, align 4, !tbaa !8
  store i32 1, ptr @Ecount, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @getpoint(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.4.0.insert.ext = zext i32 %1 to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %i.a = tail call ptr @insert(ptr noundef nonnull @Splaytree, i64 %.sroa.0.0.insert.insert) #13 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @insert(ptr noundef, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @get_file() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.d = tail call ptr @init() #13
  store ptr %i.d, ptr @Splaytree, align 8, !tbaa !15
  %i.e = load ptr, ptr @stdin, align 8, !tbaa !17
  %i.f = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #13 ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !8
  %.not2 = icmp slt i32 %i.g, 1
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.m, %.lr.ph ], [ 1, %bb.a ]  ; 2 uses
  %i.h = load ptr, ptr @stdin, align 8, !tbaa !17
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8
  %i.k = load i32, ptr %i.b, align 4, !tbaa !8
  %.sroa.4.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = call ptr @insert(ptr noundef nonnull @Splaytree, i64 %.sroa.0.0.insert.insert.i) #13 ; 0 uses
  %i.m = add nuw nsw i32 %.03, 1
  %i.n = load i32, ptr %i.c, align 4, !tbaa !8
  %.not.not = icmp slt i32 %.03, %i.n
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
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
  %i.a = load ptr, ptr @K, align 8, !tbaa !11
  %i.b = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [20 x i8], ptr %i.a, i64 %i.c
  store i64 %0, ptr %i.d, align 4
  %1 = load ptr, ptr @K, align 8, !tbaa !11       ; 3 uses
  %2 = getelementptr inbounds [20 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [20 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !22
  %i.j = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [20 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.m, align 4, !tbaa !23
  %i.n = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr @Kcount, align 4, !tbaa !8
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
  %i.a = load i32, ptr @CHno, align 4, !tbaa !8
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 20) #15
  store ptr %i.e, ptr @K, align 8, !tbaa !11
  %i.f = add nsw i32 %i.b, -2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 32) #15
  store ptr %i.h, ptr @E, align 8, !tbaa !13
  %i.i = tail call ptr @CHinit() #13
  store ptr %i.i, ptr @CHSplaytree, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = tail call i64 @compute_v(ptr noundef %0)
  %i.m = load ptr, ptr @K, align 8, !tbaa !11
  %i.n = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [20 x i8], ptr %i.m, i64 %i.o
  store i64 %i.l, ptr %i.p, align 4
  %1 = load ptr, ptr @K, align 8, !tbaa !11       ; 3 uses
  %2 = getelementptr inbounds [20 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [20 x i8], ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !22
  %i.v = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [20 x i8], ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 0, ptr %i.y, align 4, !tbaa !23
  %i.z = load i32, ptr @Kcount, align 4, !tbaa !8 ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr @Kcount, align 4, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !29
  %i.ac = tail call ptr @CHinsert(ptr noundef nonnull @CHSplaytree, ptr noundef %0) #13 ; 0 uses
  %.not11 = icmp eq ptr %i.k, %0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.aw, %.lr.ph ], [ %i.k, %bb.a ] ; 4 uses
  %i.ad = tail call i64 @compute_v(ptr noundef %.012)
  %i.ae = load ptr, ptr @K, align 8, !tbaa !11
  %i.af = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds [20 x i8], ptr %i.ae, i64 %i.ag
  store i64 %i.ad, ptr %i.ah, align 4
  %3 = load ptr, ptr @K, align 8, !tbaa !11       ; 3 uses
  %4 = getelementptr inbounds [20 x i8], ptr %3, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ai, align 4, !tbaa !21
  %i.aj = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [20 x i8], ptr %3, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !22
  %i.an = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [20 x i8], ptr %3, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i32 0, ptr %i.aq, align 4, !tbaa !23
  %i.ar = load i32, ptr @Kcount, align 4, !tbaa !8 ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr @Kcount, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %.012, i64 12
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !29
  %i.au = tail call ptr @CHinsert(ptr noundef nonnull @CHSplaytree, ptr noundef %.012) #13 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.aw, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

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
  %i.a = load ptr, ptr @E, align 8, !tbaa !13     ; 12 uses
  %i.b = load i32, ptr @Ecount, align 4, !tbaa !8
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.c
  store i32 %0, ptr %i.d, align 4, !tbaa !33
  %i.e = load i32, ptr @Ecount, align 4, !tbaa !8
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %1, ptr %i.h, align 4, !tbaa !34
  %i.i = load ptr, ptr @K, align 8, !tbaa !11     ; 2 uses
  %i.j = sext i32 %0 to i64
  %i.k = getelementptr inbounds [20 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr @Ecount, align 4, !tbaa !8 ; 3 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !21
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.o, ptr %i.r, align 4, !tbaa !35
  %i.s = load i32, ptr @Ecount, align 4, !tbaa !8 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.s, ptr %i.v, align 4, !tbaa !36
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22
  %i.y = icmp eq i32 %i.x, 0
  %i.z = load i32, ptr @Ecount, align 4, !tbaa !8 ; 3 uses
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 %i.z, ptr %i.w, align 4, !tbaa !22
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.m, ptr %i.ac, align 4, !tbaa !35
  %i.ad = load i32, ptr @Ecount, align 4, !tbaa !8
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %i.m, ptr %i.ag, align 4, !tbaa !36
  %i.ah = sext i32 %i.m to i64
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ah ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = icmp eq i32 %0, %i.aj
  %i.al = load i32, ptr @Ecount, align 4, !tbaa !8 ; 4 uses
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i32 %i.al, ptr %i.an, align 4, !tbaa !36
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 %i.al, ptr %i.ap, align 4, !tbaa !38
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %i.z, ptr %i.aq, align 4, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %i.ar = sext i32 %1 to i64
  %i.as = getelementptr inbounds [20 x i8], ptr %i.i, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21 ; 4 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr @Ecount, align 4, !tbaa !8 ; 3 uses
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !21
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !35
  %i.ba = load i32, ptr @Ecount, align 4, !tbaa !8 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !36
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = load i32, ptr @Ecount, align 4, !tbaa !8 ; 3 uses
  br i1 %i.bg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !22
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.au, ptr %i.bk, align 4, !tbaa !35
  %i.bl = load i32, ptr @Ecount, align 4, !tbaa !8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.au, ptr %i.bo, align 4, !tbaa !36
  %i.bp = sext i32 %i.au to i64
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bp ; 5 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.bs = icmp eq i32 %1, %i.br
  %i.bt = load i32, ptr @Ecount, align 4, !tbaa !8 ; 4 uses
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !36
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  store i32 %i.bt, ptr %i.bx, align 4, !tbaa !38
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %i.bh, ptr %i.by, align 4, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %i.bz = load i32, ptr @Ecount, align 4, !tbaa !8
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr @Ecount, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @maximize_radius_and_angle(ptr nofree readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.key, align 8                ; 6 uses
  %2 = alloca %struct.key, align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = tail call ptr @CHdelete_max(ptr noundef nonnull @CHSplaytree) #13 ; 6 uses
  %i.b = tail call ptr @before(ptr noundef %i.a) #13 ; 5 uses
  %i.c = tail call ptr @next(ptr noundef %i.a) #13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.e = tail call ptr @before(ptr noundef %i.b) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.h = load i64, ptr %i.f, align 4
  %i.i = load i64, ptr %i.d, align 4
  %i.j = load i64, ptr %i.g, align 4
  %i.k = tail call { double, double } @centre(i64 %i.h, i64 %i.i, i64 %i.j) #13 ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = load i64, ptr %i.d, align 4
  %i.o = tail call double @radius2(i64 %i.n, double %i.l, double %i.m) #13
  store double %i.o, ptr %1, align 8, !tbaa !41
  %i.p = tail call ptr @before(ptr noundef %i.b) #13
end_hunk_0
begin_hunk_1_@maximize_radius_and_angle:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i64, ptr %i.g, align 4
  %i.y = load i64, ptr %i.u, align 4
  %i.z = load i64, ptr %i.w, align 4
  %i.aa = tail call { double, double } @centre(i64 %i.x, i64 %i.y, i64 %i.z) #13 ; 2 uses
  %i.ab = extractvalue { double, double } %i.aa, 0
  %i.ac = extractvalue { double, double } %i.aa, 1
  %i.ad = load i64, ptr %i.u, align 4
  %i.ae = tail call double @radius2(i64 %i.ad, double %i.ab, double %i.ac) #13
  store double %i.ae, ptr %2, align 8, !tbaa !41
  %i.af = tail call ptr @next(ptr noundef %i.c) #13
  %i.ag = tail call double @angle(ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.af) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ag, ptr %i.ah, align 8, !tbaa !42
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !44
  tail call void @CHdelete(ptr noundef nonnull @CHSplaytree, ptr noundef nonnull byval(%struct.key) align 8 %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret ptr %i.a
}

declare ptr @CHdelete_max(ptr noundef) local_unnamed_addr #4

declare ptr @before(ptr noundef) local_unnamed_addr #4

declare double @radius2(i64, double, double) local_unnamed_addr #4

declare { double, double } @centre(i64, i64, i64) local_unnamed_addr #4

declare double @angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @CHdelete(ptr noundef, ptr noundef byval(%struct.key) align 8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @draw_sec(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @before(ptr noundef %0) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.d = load i64, ptr %i.b, align 4
  %i.e = load i64, ptr %i.c, align 4
  %i.f = tail call i32 @length2(i64 %i.d, i64 %i.e) #13
  %i.g = tail call ptr @next(ptr noundef %0) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i64, ptr %i.c, align 4
  %i.j = load i64, ptr %i.h, align 4
  %i.k = tail call i32 @length2(i64 %i.i, i64 %i.j) #13
  %i.l = icmp sgt i32 %i.f, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @before(ptr noundef nonnull %0) #13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i64, ptr %i.n, align 4
  %i.p = load i64, ptr %i.c, align 4
  %i.q = tail call i32 @length2(i64 %i.o, i64 %i.p) #13
  %i.r = tail call ptr @before(ptr noundef nonnull %0) #13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = tail call ptr @next(ptr noundef nonnull %0) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i64, ptr %i.s, align 4
  %i.w = load i64, ptr %i.u, align 4
  %i.x = tail call i32 @length2(i64 %i.v, i64 %i.w) #13
  %i.y = icmp sgt i32 %i.q, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = tail call ptr @next(ptr noundef nonnull %0) #13
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.aa = tail call ptr @next(ptr noundef nonnull %0) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i64, ptr %i.c, align 4
  %i.ad = load i64, ptr %i.ab, align 4
  %i.ae = tail call i32 @length2(i64 %i.ac, i64 %i.ad) #13
  %i.af = tail call ptr @before(ptr noundef nonnull %0) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = tail call ptr @next(ptr noundef nonnull %0) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i64, ptr %i.ag, align 4
  %i.ak = load i64, ptr %i.ai, align 4
  %i.al = tail call i32 @length2(i64 %i.aj, i64 %i.ak) #13
  %i.am = icmp sgt i32 %i.ae, %i.al
  br i1 %i.am, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.an = tail call ptr @next(ptr noundef nonnull %0) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i64, ptr %i.c, align 4
  %i.aq = load i64, ptr %i.ao, align 4
  %i.ar = tail call i32 @length2(i64 %i.ap, i64 %i.aq) #13
  %i.as = tail call ptr @before(ptr noundef nonnull %0) #13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i64, ptr %i.c, align 4
  %i.av = load i64, ptr %i.at, align 4
  %i.aw = tail call i32 @length2(i64 %i.au, i64 %i.av) #13
  %i.ax = icmp sgt i32 %i.ar, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = tail call ptr @before(ptr noundef nonnull %0) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %.0 = phi ptr [ %i.z, %bb.c ], [ %i.ay, %bb.f ], [ %0, %bb.e ], [ %0, %bb.d ] ; 4 uses
  %i.az = tail call ptr @before(ptr noundef %.0) #13 ; 2 uses
  %i.ba = tail call ptr @next(ptr noundef %.0) #13 ; 3 uses
  %i.bb = tail call double @angle(ptr noundef %i.az, ptr noundef %.0, ptr noundef %i.ba) #13
  %i.bc = fcmp olt double %i.bb, 0.000000e+00
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 4 uses
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  %i.bf = load i64, ptr %i.bd, align 4
  %i.bg = load i64, ptr %i.be, align 4
  %i.bh = tail call { double, double } @midpoint(i64 %i.bf, i64 %i.bg) #13
  %i.bi = extractvalue { double, double } %i.bh, 0
  %i.bj = load i64, ptr %i.bd, align 4
  %i.bk = load i64, ptr %i.be, align 4
  %i.bl = tail call { double, double } @midpoint(i64 %i.bj, i64 %i.bk) #13
  %i.bm = extractvalue { double, double } %i.bl, 1
  %i.bn = load i64, ptr %i.bd, align 4
  %i.bo = load i64, ptr %i.be, align 4
  %i.bp = tail call i32 @length2(i64 %i.bn, i64 %i.bo) #13
  %i.bq = sitofp i32 %i.bp to double
  %i.br = tail call double @sqrt(double noundef %i.bq) #13, !tbaa !8
  %i.bs = fmul double %i.br, 5.000000e-01
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bv = load i64, ptr %i.bd, align 4
  %i.bw = load i64, ptr %i.bt, align 4
  %i.bx = load i64, ptr %i.bu, align 4
  %i.by = tail call { double, double } @centre(i64 %i.bv, i64 %i.bw, i64 %i.bx) #13 ; 2 uses
  %i.bz = extractvalue { double, double } %i.by, 0 ; 2 uses
  %i.ca = extractvalue { double, double } %i.by, 1 ; 2 uses
  %i.cb = load i64, ptr %i.c, align 4
  %i.cc = tail call double @radius2(i64 %i.cb, double %i.bz, double %i.ca) #13
  %i.cd = tail call double @sqrt(double noundef %i.cc) #13, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.041 = phi double [ %i.bs, %bb.h ], [ %i.cd, %bb.i ]
  %.sroa.018.0 = phi double [ %i.bi, %bb.h ], [ %i.bz, %bb.i ]
  %.sroa.6.0 = phi double [ %i.bm, %bb.h ], [ %i.ca, %bb.i ]
  %i.ce = fptosi double %.sroa.018.0 to i32
  %i.cf = fptosi double %.sroa.6.0 to i32
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ce, i32 noundef %i.cf) ; 0 uses
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %.041) ; 0 uses
  ret void
}

declare i32 @length2(i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @alg2() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @S, align 8, !tbaa !30
  tail call void @add_infinit_points_to_K(ptr noundef %i.a)
  %i.b = load i32, ptr @CHno, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.b, 2
  br i1 %i.c, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a, %bb.c
  %i.d = tail call ptr @maximize_radius_and_angle(ptr poison) ; 8 uses
  %i.e = load i32, ptr @CHno, align 4, !tbaa !8
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  tail call void @draw_sec(ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.g = tail call ptr @before(ptr noundef %i.d) #13 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = tail call ptr @next(ptr noundef %i.d) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i64, ptr %i.h, align 4
  %i.m = load i64, ptr %i.i, align 4
  %i.n = load i64, ptr %i.k, align 4
  %i.o = tail call { double, double } @centre(i64 %i.l, i64 %i.m, i64 %i.n) #13 ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = fptosi double %i.p to i32
  %i.s = fptosi double %i.q to i32
  %.sroa.420.0.insert.ext = zext i32 %i.s to i64
  %.sroa.420.0.insert.shift = shl nuw i64 %.sroa.420.0.insert.ext, 32
  %.sroa.019.0.insert.ext = zext i32 %i.r to i64
  %.sroa.019.0.insert.insert = or disjoint i64 %.sroa.420.0.insert.shift, %.sroa.019.0.insert.ext
  %i.t = load ptr, ptr @K, align 8, !tbaa !11
  %i.u = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [20 x i8], ptr %i.t, i64 %i.v
  store i64 %.sroa.019.0.insert.insert, ptr %i.w, align 4
  %0 = load ptr, ptr @K, align 8, !tbaa !11       ; 3 uses
  %1 = getelementptr inbounds [20 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.x, align 4, !tbaa !21
  %i.y = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [20 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !22
  %i.ac = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [20 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 0, ptr %i.af, align 4, !tbaa !23
  %i.ag = load i32, ptr @Kcount, align 4, !tbaa !8 ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr @Kcount, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  tail call void @add_edge(i32 noundef %i.ag, i32 noundef %i.aj)
  %i.ak = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.al = add nsw i32 %i.ak, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  tail call void @add_edge(i32 noundef %i.al, i32 noundef %i.an)
  %i.ao = load i32, ptr @Kcount, align 4, !tbaa !8
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !29
  %i.aq = tail call ptr @next(ptr noundef %i.d) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !28
  %i.as = tail call ptr @next(ptr noundef %i.g) #13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.g, ptr %i.at, align 8, !tbaa !46
  store ptr %i.g, ptr @S, align 8, !tbaa !30
  %i.au = load i32, ptr @CHno, align 4, !tbaa !8
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr @CHno, align 4, !tbaa !8
  %i.aw = tail call ptr @next(ptr noundef %i.d) #13
  %i.ax = tail call ptr @CHinsert(ptr noundef nonnull @CHSplaytree, ptr noundef %i.aw) #13 ; 0 uses
  %i.ay = tail call ptr @before(ptr noundef %i.d) #13
  %i.az = tail call ptr @CHinsert(ptr noundef nonnull @CHSplaytree, ptr noundef %i.ay) #13 ; 0 uses
  %.pr = load i32, ptr @CHno, align 4, !tbaa !8
  %i.ba = icmp sgt i32 %.pr, 2
  br i1 %i.ba, label %.preheader, label %.loopexit, !llvm.loop !45

bb.d:                                             ; preds = %bb.a
  store i32 2, ptr @CHno, align 4, !tbaa !8
  %i.bb = load ptr, ptr @S, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.bb, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29
  %i.be = tail call ptr @next(ptr noundef %.sink) #13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  tail call void @add_edge(i32 noundef %i.bd, i32 noundef %i.bg)
  %i.bh = load ptr, ptr @S, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.bh) #13
  %i.bi = load ptr, ptr @CHSplaytree, align 8, !tbaa !25
  tail call void @CHfree_tree(ptr noundef %i.bi) #13
  ret void
}

declare void @CHfree_tree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @construct_vor() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr (...) @construct_ch() #13  ; 2 uses
  store ptr %i.a, ptr @S, align 8, !tbaa !30
  tail call void @number_points(ptr noundef %i.a) #13
  tail call void @alg2()
  %i.b = load ptr, ptr @K, align 8, !tbaa !11
  tail call void @free(ptr noundef %i.b) #13
  %i.c = load ptr, ptr @E, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.c) #13
  store i32 1, ptr @Kcount, align 4, !tbaa !8
  store i32 1, ptr @Ecount, align 4, !tbaa !8
  ret void
}

declare ptr @construct_ch(...) local_unnamed_addr #4

declare void @number_points(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.d = tail call ptr @init() #13
  store ptr %i.d, ptr @Splaytree, align 8, !tbaa !15
  %i.e = load ptr, ptr @stdin, align 8, !tbaa !17
  %i.f = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #13 ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !8
  %.not2.i = icmp slt i32 %i.g, 1
  br i1 %.not2.i, label %get_file.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03.i = phi i32 [ %i.m, %.lr.ph.i ], [ 1, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr @stdin, align 8, !tbaa !17
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8
  %i.k = load i32, ptr %i.b, align 4, !tbaa !8
  %.sroa.4.0.insert.ext.i.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.l = call ptr @insert(ptr noundef nonnull @Splaytree, i64 %.sroa.0.0.insert.insert.i.i) #13 ; 0 uses
  %i.m = add nuw nsw i32 %.03.i, 1
  %i.n = load i32, ptr %i.c, align 4, !tbaa !8
  %.not.not.i = icmp slt i32 %.03.i, %i.n
  br i1 %.not.not.i, label %.lr.ph.i, label %get_file.exit, !llvm.loop !0

get_file.exit:                                    ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.o = call ptr (...) @construct_ch() #13       ; 2 uses
  store ptr %i.o, ptr @S, align 8, !tbaa !30
  call void @number_points(ptr noundef %i.o) #13
  call void @alg2()
  %i.p = load ptr, ptr @K, align 8, !tbaa !11
  call void @free(ptr noundef %i.p) #13
  %i.q = load ptr, ptr @E, align 8, !tbaa !13
  call void @free(ptr noundef %i.q) #13
  store i32 1, ptr @Kcount, align 4, !tbaa !8
  store i32 1, ptr @Ecount, align 4, !tbaa !8
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 _ZTS5Knode", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS5Enode", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS10splay_node", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"point", !7, i64 0, !7, i64 4}
!20 = !{!"Knode", !19, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!21 = !{!20, !7, i64 8}
!22 = !{!20, !7, i64 12}
!23 = !{!20, !7, i64 16}
!24 = !{!"p1 _ZTS12CHsplay_node", !9, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTS8CHpoints", !9, i64 0}
!27 = !{!"CHpoints", !7, i64 0, !19, i64 4, !7, i64 12, !26, i64 16, !26, i64 24}
!28 = !{!27, !26, i64 16}
!29 = !{!27, !7, i64 12}
!30 = !{!26, !26, i64 0}
!31 = distinct !{!31, !18}
!32 = !{!"Enode", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!33 = !{!32, !7, i64 0}
!34 = !{!32, !7, i64 4}
!35 = !{!32, !7, i64 8}
!36 = !{!32, !7, i64 16}
!37 = !{!32, !7, i64 12}
!38 = !{!32, !7, i64 20}
!39 = !{!"double", !6, i64 0}
!40 = !{!"key", !39, i64 0, !39, i64 8, !7, i64 16}
!41 = !{!40, !39, i64 0}
!42 = !{!40, !39, i64 8}
!43 = !{!27, !7, i64 0}
!44 = !{!40, !7, i64 16}
!45 = distinct !{!45, !18}
!46 = !{!27, !26, i64 24}
end_hunk_1
