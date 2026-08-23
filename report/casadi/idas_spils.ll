Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas_spils?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@IDASpilsGetLastFlag:bb.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define noalias noundef ptr @IDASpilsGetReturnFlagName(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(30) ptr @malloc(i64 noundef 30) #6 ; 8 uses
  switch i64 %0, label %bb.h [
    i64 0, label %bb.b
    i64 -1, label %bb.c
    i64 -2, label %bb.d
    i64 -3, label %bb.e
    i64 -4, label %bb.f
    i64 -5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.23, i64 17, i1 false)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.24, i64 18, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.25, i64 19, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.26, i64 19, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.27, i64 18, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.28, i64 19, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @IDASpilsAtimes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.f = load double, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.n = load double, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = tail call i32 %i.d(double noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %1, ptr noundef %2, double noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #5
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !38
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define i32 @IDASpilsPSolve(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.f = load double, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.n = load double, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = tail call i32 %i.d(double noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %1, ptr noundef %2, double noundef %i.n, double noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #5
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @IDASpilsDQJtimes(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, double noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 1632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !26
  %i.h = fmul double %i.e, %i.g
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 600
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = tail call double @N_VWrmsNorm(ptr noundef %4, ptr noundef %i.l) #5
  %i.n = fdiv double %i.j, %i.m
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load double, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 600
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.s = tail call double @N_VWrmsNorm(ptr noundef %4, ptr noundef %i.r) #5
  %i.t = fdiv double %i.p, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.042 = phi double [ 0.000000e+00, %bb.a ], [ %i.h, %bb.b ], [ %i.n, %bb.c ], [ %i.t, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  tail call void @N_VLinearSum(double noundef %.042, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #5
  %i.x = fmul double %6, %.042
  tail call void @N_VLinearSum(double noundef %i.x, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #5
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.aa = tail call i32 %i.y(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.z) #5 ; 2 uses
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !39
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !39
  %i.ad = icmp eq i32 %i.aa, 0
  br i1 %i.ad, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp slt i32 %i.aa, 0
  br i1 %i.ae, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = fmul double %.042, 2.500000e-01         ; 4 uses
  tail call void @N_VLinearSum(double noundef %i.af, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #5
  %i.ag = fmul double %6, %i.af
  tail call void @N_VLinearSum(double noundef %i.ag, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #5
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.aj = tail call i32 %i.ah(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.ai) #5 ; 2 uses
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !39
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.w, align 8, !tbaa !39
  %i.am = icmp eq i32 %i.aj, 0
  br i1 %i.am, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp slt i32 %i.aj, 0
  br i1 %i.an, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = fmul double %i.af, 2.500000e-01         ; 3 uses
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #5
  %i.ap = fmul double %6, %i.ao
  tail call void @N_VLinearSum(double noundef %i.ap, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #5
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.as = tail call i32 %i.aq(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.ar) #5 ; 2 uses
  %i.at = load i64, ptr %i.w, align 8, !tbaa !39
  %i.au = add nsw i64 %i.at, 1
  store i64 %i.au, ptr %i.w, align 8, !tbaa !39
  %i.av = icmp eq i32 %i.as, 0
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.inv = icmp sgt i32 %i.as, -1
  %spec.select = select i1 %.inv, i32 1, i32 -1
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e
  %.14349.lcssa = phi double [ %.042, %bb.e ], [ %i.af, %bb.g ], [ %i.ao, %bb.i ]
  %i.aw = fdiv double 1.000000e+00, %.14349.lcssa ; 2 uses
  %i.ax = fneg double %i.aw
  tail call void @N_VLinearSum(double noundef %i.aw, ptr noundef %5, double noundef %i.ax, ptr noundef %3, ptr noundef %5) #5
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.f, %bb.h, %bb.k
  %.044 = phi i32 [ 0, %bb.k ], [ -1, %bb.f ], [ %spec.select, %bb.j ], [ -1, %bb.h ]
  ret i32 %.044
}

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @IDASpilsSetGSTypeB(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2) #5
  br label %IDASpilsSetGSType.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #5
  br label %IDASpilsSetGSType.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32) #5
  br label %IDASpilsSetGSType.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.g
  %.0.sink.in = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %bb.g ]
  %.0.sink = load ptr, ptr %.0.sink.in, align 8, !tbaa !62, !nonnull !63, !noundef !63 ; 3 uses
  %i.j = load i32, ptr %.0.sink, align 8, !tbaa !64
  %i.k = icmp eq i32 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0.sink, i64 128
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.0.sink, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  br label %IDASpilsSetGSType.exit

bb.i:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %i.n, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #5
  br label %IDASpilsSetGSType.exit

bb.k:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.s, 1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #5
  br label %IDASpilsSetGSType.exit

bb.m:                                             ; preds = %bb.k
  %i.t = add i32 %2, -3
  %or.cond.i = icmp ult i32 %i.t, -2
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #5
  br label %IDASpilsSetGSType.exit

bb.o:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %2, ptr %i.u, align 4, !tbaa !22
  br label %IDASpilsSetGSType.exit

IDASpilsSetGSType.exit:                           ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.016 = phi i32 [ -1, %bb.b ], [ -101, %bb.d ], [ -3, %bb.f ], [ -1, %bb.h ], [ -2, %bb.j ], [ -3, %bb.l ], [ -3, %bb.n ], [ 0, %bb.o ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @IDASpilsSetMaxRestartsB(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.g
  %.0.sink.in = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %bb.g ]
  %.0.sink = load ptr, ptr %.0.sink.in, align 8, !tbaa !62, !nonnull !63, !noundef !63 ; 3 uses
  %i.j = load i32, ptr %.0.sink, align 8, !tbaa !64
  %i.k = icmp eq i32 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0.sink, i64 128
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.0.sink, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.i:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %i.n, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.k:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 8, !tbaa !20
  %.not.i = icmp eq i32 %i.s, 1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.m:                                             ; preds = %bb.k
  %i.t = icmp slt i32 %2, 0
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #5
  br label %IDASpilsSetMaxRestarts.exit

bb.o:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %2, ptr %i.u, align 4, !tbaa !23
  br label %IDASpilsSetMaxRestarts.exit

IDASpilsSetMaxRestarts.exit:                      ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.016 = phi i32 [ -1, %bb.b ], [ -101, %bb.d ], [ -3, %bb.f ], [ -1, %bb.h ], [ -2, %bb.j ], [ -3, %bb.l ], [ -3, %bb.n ], [ 0, %bb.o ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @IDASpilsSetEpsLinB(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #5
  br label %IDASpilsSetEpsLin.exit

end_hunk_0
