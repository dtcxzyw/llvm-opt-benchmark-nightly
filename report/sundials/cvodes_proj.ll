Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes_proj?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.CVodeSetProjFn = private unnamed_addr constant [15 x i8] c"CVodeSetProjFn\00", align 1
@.str = private unnamed_addr constant [59 x i8] c"/opt-bench/work/sundials/sundials/src/cvodes/cvodes_proj.c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cvode_mem = NULL illegal.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"The projection function is NULL.\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Projection is only supported with BDF methods.\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"A memory request failed.\00", align 1
@__func__.CVodeSetProjErrEst = private unnamed_addr constant [19 x i8] c"CVodeSetProjErrEst\00", align 1
@__func__.CVodeSetProjFrequency = private unnamed_addr constant [22 x i8] c"CVodeSetProjFrequency\00", align 1
@__func__.CVodeSetMaxNumProjFails = private unnamed_addr constant [24 x i8] c"CVodeSetMaxNumProjFails\00", align 1
@__func__.CVodeSetEpsProj = private unnamed_addr constant [16 x i8] c"CVodeSetEpsProj\00", align 1
@__func__.CVodeSetProjFailEta = private unnamed_addr constant [20 x i8] c"CVodeSetProjFailEta\00", align 1
@__func__.CVodeGetNumProjEvals = private unnamed_addr constant [21 x i8] c"CVodeGetNumProjEvals\00", align 1
@__func__.CVodeGetNumProjFails = private unnamed_addr constant [21 x i8] c"CVodeGetNumProjFails\00", align 1
@__func__.cvDoProjection = private unnamed_addr constant [15 x i8] c"cvDoProjection\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"proj_mem = NULL illegal.\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @CVodeSetProjFn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 56, ptr noundef nonnull @__func__.CVodeSetProjFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 65, ptr noundef nonnull @__func__.CVodeSetProjFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 73, ptr noundef nonnull @__func__.CVodeSetProjFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %calloc.i = tail call dereferenceable_or_null(80) ptr @calloc(i64 1, i64 80) ; 9 uses
  store ptr %calloc.i, ptr %i.e, align 8, !tbaa !22
  %i.h = icmp eq ptr %calloc.i, null
  br i1 %i.h, label %cvProjCreate.exit, label %cvProjSetDefaults.exit.i

cvProjSetDefaults.exit.i:                         ; preds = %bb.h
  store i32 1, ptr %calloc.i, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i64 1, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i32 10, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48
  store <2 x double> <double 1.000000e-01, double 2.500000e-01>, ptr %i.m, align 8, !tbaa !38
  br label %bb.i

cvProjCreate.exit:                                ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 82, ptr noundef nonnull @__func__.CVodeSetProjFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #8
  br label %bb.j

bb.i:                                             ; preds = %cvProjSetDefaults.exit.i, %bb.g
  %i.n = phi ptr [ %calloc.i, %cvProjSetDefaults.exit.i ], [ %i.f, %bb.g ] ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %1, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i32 1, ptr %i.p, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %cvProjCreate.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.f ], [ -20, %cvProjCreate.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

declare void @cvProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetProjErrEst(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjErrEst, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjErrEst, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.e, align 4, !tbaa !24
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %cvAccessProjMem.exit
  %.0 = phi i32 [ 0, %cvAccessProjMem.exit ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetProjFrequency(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjFrequency, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjFrequency, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = icmp slt i64 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 3 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.g, align 8, !tbaa !26
  store i32 1, ptr %i.f, align 8, !tbaa !29
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  %i.h = icmp eq i64 %1, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.i, align 8, !tbaa !26
  store i32 0, ptr %i.f, align 8, !tbaa !29
  br label %cvAccessProjMem.exit.thread

bb.h:                                             ; preds = %bb.f
  store i64 %1, ptr %i.i, align 8, !tbaa !26
  store i32 1, ptr %i.f, align 8, !tbaa !29
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetMaxNumProjFails(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetMaxNumProjFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetMaxNumProjFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = icmp slt i32 %1, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store i32 10, ptr %i.f, align 8, !tbaa !27
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store i32 %1, ptr %i.f, align 8, !tbaa !27
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetEpsProj(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetEpsProj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetEpsProj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = fcmp ugt double %1, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store double 1.000000e-01, ptr %i.f, align 8, !tbaa !31
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store double %1, ptr %i.f, align 8, !tbaa !31
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -56, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -56, 1) i32 @CVodeSetProjFailEta(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjFailEta, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -56, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjFailEta, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = fcmp ole double %1, 0.000000e+00
  %i.f = fcmp ogt double %1, 1.000000e+00
  %or.cond = or i1 %i.e, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store double 2.500000e-01, ptr %i.g, align 8, !tbaa !32
  br label %cvAccessProjMem.exit.thread
end_hunk_0
begin_hunk_1_@cvDoProjection:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.k, ptr noundef %i.i) #8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.057 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.o = load double, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = tail call i32 %i.m(double noundef %i.o, ptr noundef %i.q, ptr noundef %i.e, double noundef %i.s, ptr noundef %.057, ptr noundef %i.u) #8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !25
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !24
  %.not55 = icmp eq i32 %i.ab, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = tail call double @N_VWrmsNorm(ptr noundef %.057, ptr noundef %i.ad) #8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store double %i.ae, ptr %i.af, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i32 1, ptr %i.ag, align 4, !tbaa !47
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ah = icmp slt i32 %i.v, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !35
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !35
  tail call void @cvRestore(ptr noundef nonnull %0, double noundef %2) #8
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %3, align 4, !tbaa !48
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !50
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.as = load double, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %i.at = fmul double %i.as, f0x3FF000010C6F7A0B
  %i.au = fcmp ugt double %i.aq, %i.at
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !27
  %i.ax = icmp eq i32 %i.am, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.ba = fdiv double %i.as, %i.aq                ; 2 uses
  %i.bb = fcmp ogt double %i.az, %i.ba
  %. = select i1 %i.bb, double %i.az, double %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store double %., ptr %i.bc, align 8, !tbaa !52
  store i32 8, ptr %1, align 4, !tbaa !48
  tail call void @cvRescale(ptr noundef nonnull %0) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.k, %bb.g, %bb.b
  %.049 = phi i32 [ -56, %bb.b ], [ 0, %bb.g ], [ 3, %bb.k ], [ -57, %bb.h ], [ -58, %bb.j ], [ -58, %bb.i ]
  ret i32 %.049
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cvRestore(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @cvRescale(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -56, 1) i32 @cvProjInit(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -56, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @cvProjFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #8
  store ptr null, ptr %0, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!12 = !{!"p1 double", !8, i64 0}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 _ZTS17_generic_N_Vector", !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 long", !8, i64 0}
!18 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!19 = !{!"p1 _ZTS15CVodeProjMemRec", !8, i64 0}
!20 = !{!"p1 _ZTS11CVadjMemRec", !8, i64 0}
!21 = !{!"CVodeMemRec", !9, i64 0, !8, i64 8, !10, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !5, i64 44, !10, i64 48, !10, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !8, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !5, i64 112, !5, i64 116, !10, i64 120, !10, i64 128, !11, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !8, i64 160, !8, i64 168, !8, i64 176, !5, i64 184, !5, i64 188, !12, i64 192, !12, i64 200, !13, i64 208, !5, i64 216, !10, i64 224, !5, i64 232, !5, i64 236, !10, i64 240, !12, i64 248, !15, i64 256, !13, i64 264, !5, i64 272, !8, i64 280, !8, i64 288, !5, i64 296, !5, i64 300, !5, i64 304, !10, i64 312, !12, i64 320, !15, i64 328, !13, i64 336, !4, i64 344, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !4, i64 512, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !4, i64 648, !15, i64 752, !15, i64 760, !15, i64 768, !15, i64 776, !15, i64 784, !5, i64 792, !4, i64 800, !15, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !11, i64 936, !5, i64 944, !5, i64 948, !10, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !4, i64 1048, !4, i64 1160, !4, i64 1208, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !5, i64 1392, !10, i64 1400, !10, i64 1408, !5, i64 1416, !10, i64 1424, !10, i64 1432, !13, i64 1440, !5, i64 1448, !16, i64 1456, !5, i64 1464, !5, i64 1468, !5, i64 1472, !10, i64 1480, !10, i64 1488, !10, i64 1496, !10, i64 1504, !10, i64 1512, !10, i64 1520, !10, i64 1528, !10, i64 1536, !10, i64 1544, !10, i64 1552, !10, i64 1560, !10, i64 1568, !16, i64 1576, !5, i64 1584, !16, i64 1592, !16, i64 1600, !16, i64 1608, !16, i64 1616, !16, i64 1624, !16, i64 1632, !16, i64 1640, !16, i64 1648, !16, i64 1656, !17, i64 1664, !16, i64 1672, !16, i64 1680, !17, i64 1688, !16, i64 1696, !16, i64 1704, !17, i64 1712, !16, i64 1720, !16, i64 1728, !16, i64 1736, !16, i64 1744, !16, i64 1752, !16, i64 1760, !5, i64 1768, !10, i64 1776, !10, i64 1784, !10, i64 1792, !16, i64 1800, !16, i64 1808, !16, i64 1816, !16, i64 1824, !16, i64 1832, !16, i64 1840, !18, i64 1848, !5, i64 1856, !18, i64 1864, !5, i64 1872, !18, i64 1880, !5, i64 1888, !18, i64 1896, !5, i64 1904, !5, i64 1908, !16, i64 1912, !5, i64 1920, !8, i64 1928, !5, i64 1936, !11, i64 1944, !11, i64 1952, !11, i64 1960, !11, i64 1968, !11, i64 1976, !11, i64 1984, !5, i64 1992, !5, i64 1996, !8, i64 2000, !8, i64 2008, !8, i64 2016, !8, i64 2024, !8, i64 2032, !8, i64 2040, !16, i64 2048, !10, i64 2056, !5, i64 2064, !5, i64 2068, !16, i64 2072, !10, i64 2080, !10, i64 2088, !10, i64 2096, !5, i64 2104, !5, i64 2108, !10, i64 2112, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !5, i64 2160, !5, i64 2164, !5, i64 2168, !5, i64 2172, !5, i64 2176, !5, i64 2180, !8, i64 2184, !16, i64 2192, !5, i64 2200, !4, i64 2208, !5, i64 2400, !16, i64 2408, !8, i64 2416, !5, i64 2424, !13, i64 2432, !13, i64 2440, !10, i64 2448, !10, i64 2456, !10, i64 2464, !12, i64 2472, !12, i64 2480, !12, i64 2488, !10, i64 2496, !5, i64 2504, !16, i64 2512, !13, i64 2520, !5, i64 2528, !11, i64 2536, !16, i64 2544, !16, i64 2552, !5, i64 2560, !19, i64 2568, !5, i64 2576, !5, i64 2580, !4, i64 2584, !12, i64 2688, !15, i64 2696, !15, i64 2704, !5, i64 2712, !5, i64 2716, !20, i64 2720, !5, i64 2728}
!22 = !{!19, !19, i64 0}
!23 = !{!"CVodeProjMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16, !16, i64 24, !5, i64 32, !8, i64 40, !10, i64 48, !10, i64 56, !16, i64 64, !16, i64 72}
!24 = !{!23, !5, i64 4}
!25 = !{!23, !5, i64 8}
!26 = !{!23, !16, i64 16}
!27 = !{!23, !5, i64 32}
!28 = !{!23, !8, i64 40}
!29 = !{!21, !5, i64 2576}
!30 = !{!21, !19, i64 2568}
!31 = !{!23, !10, i64 48}
!32 = !{!23, !10, i64 56}
!33 = !{!23, !16, i64 64}
!34 = !{!16, !16, i64 0}
!35 = !{!23, !16, i64 72}
!36 = !{!21, !5, i64 40}
!37 = !{!23, !5, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!21, !11, i64 472}
!40 = !{!21, !11, i64 480}
!41 = !{!21, !11, i64 464}
!42 = !{!21, !10, i64 1032}
!43 = !{!21, !11, i64 456}
!44 = !{!21, !8, i64 32}
!45 = !{!21, !11, i64 448}
!46 = !{!21, !10, i64 1384}
!47 = !{!21, !5, i64 2580}
!48 = !{!5, !5, i64 0}
!49 = !{!21, !10, i64 1496}
!50 = !{!21, !10, i64 992}
!51 = !{!21, !10, i64 1480}
!52 = !{!21, !10, i64 1016}
!53 = !{!23, !16, i64 24}
end_hunk_1
