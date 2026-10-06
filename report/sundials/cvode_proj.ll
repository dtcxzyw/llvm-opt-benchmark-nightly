Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvode_proj?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.CVodeSetProjFn = private unnamed_addr constant [15 x i8] c"CVodeSetProjFn\00", align 1
@.str = private unnamed_addr constant [57 x i8] c"/opt-bench/work/sundials/sundials/src/cvode/cvode_proj.c\00", align 1
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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 73, ptr noundef nonnull @__func__.CVodeSetProjFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %calloc.i = tail call dereferenceable_or_null(80) ptr @calloc(i64 1, i64 80) ; 8 uses
  store ptr %calloc.i, ptr %i.e, align 8, !tbaa !18
  %i.h = icmp eq ptr %calloc.i, null
  br i1 %i.h, label %cvProjCreate.exit, label %cvProjSetDefaults.exit.i

cvProjSetDefaults.exit.i:                         ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store i32 1, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store i64 1, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i32 10, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 48
  store <2 x double> <double 1.000000e-01, double 2.500000e-01>, ptr %i.m, align 8, !tbaa !33
  br label %bb.i

cvProjCreate.exit:                                ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 82, ptr noundef nonnull @__func__.CVodeSetProjFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #8
  br label %bb.j

bb.i:                                             ; preds = %cvProjSetDefaults.exit.i, %bb.g
  %i.n = phi ptr [ %calloc.i, %cvProjSetDefaults.exit.i ], [ %i.f, %bb.g ] ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %1, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 1, ptr %i.p, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %cvProjCreate.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.f ], [ -20, %cvProjCreate.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

declare void @cvProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @CVodeSetProjErrEst(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjErrEst, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -29, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjErrEst, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.e, align 4, !tbaa !20
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %cvAccessProjMem.exit
  %.0 = phi i32 [ 0, %cvAccessProjMem.exit ], [ -29, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @CVodeSetProjFrequency(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjFrequency, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -29, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjFrequency, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = icmp slt i64 %1, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.g, align 8, !tbaa !22
  store i32 1, ptr %i.f, align 8, !tbaa !25
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  %i.h = icmp eq i64 %1, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.i, align 8, !tbaa !22
  store i32 0, ptr %i.f, align 8, !tbaa !25
  br label %cvAccessProjMem.exit.thread

bb.h:                                             ; preds = %bb.f
  store i64 %1, ptr %i.i, align 8, !tbaa !22
  store i32 1, ptr %i.f, align 8, !tbaa !25
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ -29, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @CVodeSetMaxNumProjFails(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetMaxNumProjFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -29, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetMaxNumProjFails, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = icmp slt i32 %1, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store i32 10, ptr %i.f, align 8, !tbaa !23
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store i32 %1, ptr %i.f, align 8, !tbaa !23
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -29, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @CVodeSetEpsProj(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetEpsProj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -29, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetEpsProj, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = fcmp ugt double %1, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store double 1.000000e-01, ptr %i.f, align 8, !tbaa !27
  br label %cvAccessProjMem.exit.thread

bb.f:                                             ; preds = %cvAccessProjMem.exit
  store double %1, ptr %i.f, align 8, !tbaa !27
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit.thread:                      ; preds = %bb.d, %bb.b, %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ -29, %bb.d ], [ -21, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -29, 1) i32 @CVodeSetProjFailEta(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 441, ptr noundef nonnull @__func__.CVodeSetProjFailEta, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cvAccessProjMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %cvAccessProjMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -29, i32 noundef 449, ptr noundef nonnull @__func__.CVodeSetProjFailEta, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  br label %cvAccessProjMem.exit.thread

cvAccessProjMem.exit:                             ; preds = %bb.c
  %i.e = fcmp ole double %1, 0.000000e+00
  %i.f = fcmp ogt double %1, 1.000000e+00
  %or.cond = or i1 %i.e, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %cvAccessProjMem.exit
  store double 2.500000e-01, ptr %i.g, align 8, !tbaa !28
  br label %cvAccessProjMem.exit.thread
end_hunk_0
begin_hunk_1_@cvDoProjection:bb.a
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.k, ptr noundef %i.i) #8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.057 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load double, ptr %i.n, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = tail call i32 %i.m(double noundef %i.o, ptr noundef %i.q, ptr noundef %i.e, double noundef %i.s, ptr noundef %.057, ptr noundef %i.u) #8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !29
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !21
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !20
  %.not55 = icmp eq i32 %i.ab, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = tail call double @N_VWrmsNorm(ptr noundef %.057, ptr noundef %i.ad) #8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.ae, ptr %i.af, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 1, ptr %i.ag, align 4, !tbaa !43
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ah = icmp slt i32 %i.v, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !31
  tail call void @cvRestore(ptr noundef nonnull %0, double noundef %2) #8
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %3, align 4, !tbaa !44
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.am, ptr %3, align 4, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 752
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.as = load double, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.at = fmul double %i.as, f0x3FF000010C6F7A0B
  %i.au = fcmp ugt double %i.aq, %i.at
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !23
  %i.ax = icmp eq i32 %i.am, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.az = load double, ptr %i.ay, align 8, !tbaa !28 ; 2 uses
  %i.ba = fdiv double %i.as, %i.aq                ; 2 uses
  %i.bb = fcmp ogt double %i.az, %i.ba
  %. = select i1 %i.bb, double %i.az, double %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double %., ptr %i.bc, align 8, !tbaa !48
  store i32 8, ptr %1, align 4, !tbaa !44
  tail call void @cvRescale(ptr noundef nonnull %0) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.k, %bb.g, %bb.b
  %.049 = phi i32 [ -29, %bb.b ], [ 0, %bb.g ], [ 3, %bb.k ], [ -30, %bb.h ], [ -31, %bb.j ], [ -31, %bb.i ]
  ret i32 %.049
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cvRestore(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @cvRescale(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -29, 1) i32 @cvProjInit(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -29, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @cvProjFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #8
  store ptr null, ptr %0, align 8, !tbaa !18
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
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!"p1 double", !8, i64 0}
!16 = !{!"p1 _ZTS15CVodeProjMemRec", !8, i64 0}
!17 = !{!"CVodeMemRec", !9, i64 0, !10, i64 8, !8, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !10, i64 40, !10, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !8, i64 72, !8, i64 80, !4, i64 88, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !5, i64 256, !5, i64 260, !10, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !4, i64 360, !4, i64 472, !4, i64 520, !10, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !10, i64 672, !10, i64 680, !5, i64 688, !10, i64 696, !5, i64 704, !12, i64 712, !5, i64 720, !5, i64 724, !5, i64 728, !10, i64 736, !10, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !12, i64 832, !5, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !5, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !13, i64 968, !5, i64 976, !8, i64 984, !5, i64 992, !8, i64 1000, !8, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !8, i64 1040, !12, i64 1048, !10, i64 1056, !5, i64 1064, !12, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !5, i64 1104, !10, i64 1112, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !8, i64 1136, !12, i64 1144, !5, i64 1152, !4, i64 1160, !5, i64 1352, !12, i64 1360, !8, i64 1368, !5, i64 1376, !14, i64 1384, !14, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !15, i64 1424, !15, i64 1432, !15, i64 1440, !10, i64 1448, !5, i64 1456, !12, i64 1464, !14, i64 1472, !5, i64 1480, !11, i64 1488, !12, i64 1496, !12, i64 1504, !5, i64 1512, !16, i64 1520, !5, i64 1528, !5, i64 1532, !4, i64 1536, !4, i64 1640, !4, i64 1744, !5, i64 1848, !5, i64 1852}
!18 = !{!16, !16, i64 0}
!19 = !{!"CVodeProjMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !8, i64 40, !10, i64 48, !10, i64 56, !12, i64 64, !12, i64 72}
!20 = !{!19, !5, i64 4}
!21 = !{!19, !5, i64 8}
!22 = !{!19, !12, i64 16}
!23 = !{!19, !5, i64 32}
!24 = !{!19, !8, i64 40}
!25 = !{!17, !5, i64 1528}
!26 = !{!17, !16, i64 1520}
!27 = !{!19, !10, i64 48}
!28 = !{!19, !10, i64 56}
!29 = !{!19, !12, i64 64}
!30 = !{!12, !12, i64 0}
!31 = !{!19, !12, i64 72}
!32 = !{!17, !5, i64 32}
!33 = !{!10, !10, i64 0}
!34 = !{!19, !5, i64 0}
!35 = !{!17, !11, i64 216}
!36 = !{!17, !11, i64 224}
!37 = !{!17, !11, i64 208}
!38 = !{!17, !10, i64 344}
!39 = !{!17, !11, i64 200}
!40 = !{!17, !8, i64 24}
!41 = !{!17, !11, i64 192}
!42 = !{!17, !10, i64 680}
!43 = !{!17, !5, i64 1532}
!44 = !{!5, !5, i64 0}
!45 = !{!17, !10, i64 752}
!46 = !{!17, !10, i64 304}
!47 = !{!17, !10, i64 736}
!48 = !{!17, !10, i64 328}
!49 = !{!19, !12, i64 24}
end_hunk_1
