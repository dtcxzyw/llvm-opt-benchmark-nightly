Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes_spils?download=true
inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@CVSpilsGetLastFlag:bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  store i64 %i.f, ptr %1, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define noalias noundef ptr @CVSpilsGetReturnFlagName(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(30) ptr @malloc(i64 noundef 30) #6 ; 10 uses
  switch i64 %0, label %bb.j [
    i64 0, label %bb.b
    i64 -1, label %bb.c
    i64 -2, label %bb.d
    i64 -3, label %bb.e
    i64 -4, label %bb.f
    i64 -5, label %bb.g
    i64 -101, label %bb.h
    i64 -102, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.21, i64 16, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.22, i64 17, i1 false)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.23, i64 18, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.24, i64 18, i1 false)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.25, i64 17, i1 false)
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.26, i64 18, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.27, i64 15, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.28, i64 19, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @CVSpilsAtimes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.f = load double, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = tail call i32 %i.d(ptr noundef %1, ptr noundef %2, double noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n) #5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !38
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.t = load double, ptr %i.s, align 8, !tbaa !46
  %i.u = fneg double %i.t
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %1, double noundef %i.u, ptr noundef %2, ptr noundef %2) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.o
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @CVSpilsPSolve(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.f = load double, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.l = load double, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = tail call i32 %i.d(double noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %1, ptr noundef %2, double noundef %i.l, double noundef %i.n, i32 noundef %3, ptr noundef %i.p, ptr noundef %i.r) #5
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @CVSpilsDQJtimes(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1696
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 424
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = tail call double @N_VWrmsNorm(ptr noundef %0, ptr noundef %i.d) #5
  %i.f = fdiv double 1.000000e+00, %i.e           ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 6 uses
  tail call void @N_VLinearSum(double noundef %i.f, ptr noundef %0, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %6) #5
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.l = tail call i32 %i.j(double noundef %2, ptr noundef %6, ptr noundef %1, ptr noundef %i.k) #5 ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !39
  %i.n = add nsw i64 %i.m, 1
  store i64 %i.n, ptr %i.i, align 8, !tbaa !39
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fmul double %i.f, 2.500000e-01           ; 3 uses
  tail call void @N_VLinearSum(double noundef %i.q, ptr noundef %0, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %6) #5
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.t = tail call i32 %i.r(double noundef %2, ptr noundef %6, ptr noundef %1, ptr noundef %i.s) #5 ; 2 uses
  %i.u = load i64, ptr %i.i, align 8, !tbaa !39
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.i, align 8, !tbaa !39
  %i.w = icmp eq i32 %i.t, 0
  br i1 %i.w, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.t, 0
  br i1 %i.x, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = fmul double %i.q, 2.500000e-01           ; 2 uses
  tail call void @N_VLinearSum(double noundef %i.y, ptr noundef %0, double noundef 1.000000e+00, ptr noundef %3, ptr noundef %6) #5
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.ab = tail call i32 %i.z(double noundef %2, ptr noundef %6, ptr noundef %1, ptr noundef %i.aa) #5 ; 2 uses
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !39
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !39
  %i.ae = icmp eq i32 %i.ab, 0
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.inv = icmp sgt i32 %i.ab, -1
  %spec.select = select i1 %.inv, i32 1, i32 -1
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.a
  %.02733.lcssa = phi double [ %i.f, %bb.a ], [ %i.q, %bb.c ], [ %i.y, %bb.e ]
  %i.af = fdiv double 1.000000e+00, %.02733.lcssa ; 2 uses
  %i.ag = fneg double %i.af
  tail call void @N_VLinearSum(double noundef %i.af, ptr noundef %1, double noundef %i.ag, ptr noundef %4, ptr noundef %1) #5
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.b, %bb.d, %bb.g
  %.028 = phi i32 [ 0, %bb.g ], [ -1, %bb.b ], [ %spec.select, %bb.f ], [ -1, %bb.d ]
  ret i32 %.028
}

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @CVSpilsSetPrecTypeB(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2) #5
  br label %CVSpilsSetPrecType.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #5
  br label %CVSpilsSetPrecType.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.32) #5
  br label %CVSpilsSetPrecType.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.g
  %.0.sink.in = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %bb.g ]
  %.0.sink = load ptr, ptr %.0.sink.in, align 8, !tbaa !59, !nonnull !60, !noundef !60 ; 3 uses
  %i.j = load i32, ptr %.0.sink, align 8, !tbaa !61
  %i.k = icmp eq i32 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0.sink, i64 120
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.0.sink, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64   ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  br label %CVSpilsSetPrecType.exit

bb.i:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1696
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %i.n, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #5
  br label %CVSpilsSetPrecType.exit

bb.k:                                             ; preds = %bb.i
  %or.cond5.i = icmp ugt i32 %2, 3
  br i1 %or.cond5.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #5
  br label %CVSpilsSetPrecType.exit

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %2, ptr %i.s, align 4, !tbaa !21
  br label %CVSpilsSetPrecType.exit

CVSpilsSetPrecType.exit:                          ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.017 = phi i32 [ -1, %bb.b ], [ -101, %bb.d ], [ -3, %bb.f ], [ -1, %bb.h ], [ -2, %bb.j ], [ -3, %bb.l ], [ 0, %bb.m ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @CVSpilsSetGSTypeB(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2) #5
  br label %CVSpilsSetGSType.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #5
  br label %CVSpilsSetGSType.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32) #5
  br label %CVSpilsSetGSType.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.g
  %.0.sink.in = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %bb.g ]
  %.0.sink = load ptr, ptr %.0.sink.in, align 8, !tbaa !59, !nonnull !60, !noundef !60 ; 3 uses
  %i.j = load i32, ptr %.0.sink, align 8, !tbaa !61
  %i.k = icmp eq i32 %1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0.sink, i64 120
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.0.sink, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #5
  br label %CVSpilsSetGSType.exit

bb.i:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1696
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %i.n, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #5
  br label %CVSpilsSetGSType.exit

bb.k:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 8, !tbaa !23
  %.not.i = icmp eq i32 %i.s, 1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #5
  br label %CVSpilsSetGSType.exit

bb.m:                                             ; preds = %bb.k
  %i.t = add i32 %2, -3
  %or.cond.i = icmp ult i32 %i.t, -2
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %i.n, i32 noundef -3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #5
  br label %CVSpilsSetGSType.exit

bb.o:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %2, ptr %i.u, align 8, !tbaa !24
  br label %CVSpilsSetGSType.exit

CVSpilsSetGSType.exit:                            ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.017 = phi i32 [ -1, %bb.b ], [ -101, %bb.d ], [ -3, %bb.f ], [ -1, %bb.h ], [ -2, %bb.j ], [ -3, %bb.l ], [ -3, %bb.n ], [ 0, %bb.o ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @CVSpilsSetEpsLinB(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2) #5
  br label %CVSpilsSetEpsLin.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #5
  br label %CVSpilsSetEpsLin.exit

bb.e:                                             ; preds = %bb.c
end_hunk_0
