Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida_ls?download=true
inline.NumInlined: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@idaLsPerf:bb.a

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -2, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.k ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @idaLsDQJac(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 903, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %6, i32 noundef -2, i32 noundef 911, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #11
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 456
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %6, i32 noundef -3, i32 noundef 924, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #11
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @SUNMatGetID(ptr noundef nonnull %5) #11
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @idaLsDenseDQJac(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @SUNMatGetID(ptr noundef nonnull %5) #11
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call i32 @idaLsBandDQJac(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %6, i32 noundef -22, i32 noundef 940, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.k, %bb.d, %bb.b
  %.033 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -3, %bb.k ], [ %i.aa, %bb.m ], [ %i.ad, %bb.o ], [ -22, %bb.p ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 2) i32 @idaLsDQJtimes(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, double noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
bb.a:
  %i.a = icmp eq ptr %7, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 1774, ptr noundef nonnull @__func__.idaLsDQJtimes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %idaLs_AccessLMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 1040
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %idaLs_AccessLMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %7, i32 noundef -2, i32 noundef 1781, ptr noundef nonnull @__func__.idaLsDQJtimes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #11
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit:                            ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = tail call i32 @SUNLinSolGetID(ptr noundef %i.f) #11
  %i.h = add i32 %i.g, -7
  %or.cond = icmp ult i32 %i.h, 2
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %idaLs_AccessLMem.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.j = load double, ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.l = load double, ptr %i.k, align 8, !tbaa !58
  %i.m = fmul double %i.j, %i.l
  br label %bb.g

bb.f:                                             ; preds = %idaLs_AccessLMem.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.o = load double, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 384
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102
  %i.r = tail call double @N_VWrmsNorm(ptr noundef %4, ptr noundef %i.q) #11
  %i.s = fdiv double %i.o, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.035 = phi double [ %i.m, %bb.e ], [ %i.s, %bb.f ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 6 uses
  tail call void @N_VLinearSum(double noundef %.035, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #11
  %i.w = fmul double %6, %.035
  tail call void @N_VLinearSum(double noundef %i.w, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #11
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.z = tail call i32 %i.x(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.y) #11 ; 2 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !103
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !103
  %i.ac = icmp eq i32 %i.z, 0
  br i1 %i.ac, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp slt i32 %i.z, 0
  br i1 %i.ad, label %idaLs_AccessLMem.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = fmul double %.035, 2.500000e-01         ; 4 uses
  tail call void @N_VLinearSum(double noundef %i.ae, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #11
  %i.af = fmul double %6, %i.ae
  tail call void @N_VLinearSum(double noundef %i.af, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #11
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.ai = tail call i32 %i.ag(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.ah) #11 ; 2 uses
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !103
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.v, align 8, !tbaa !103
  %i.al = icmp eq i32 %i.ai, 0
  br i1 %i.al, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp slt i32 %i.ai, 0
  br i1 %i.am, label %idaLs_AccessLMem.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = fmul double %i.ae, 2.500000e-01         ; 3 uses
  tail call void @N_VLinearSum(double noundef %i.an, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #11
  %i.ao = fmul double %6, %i.an
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #11
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.ar = tail call i32 %i.ap(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.aq) #11 ; 2 uses
  %i.as = load i64, ptr %i.v, align 8, !tbaa !103
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.v, align 8, !tbaa !103
  %i.au = icmp eq i32 %i.ar, 0
  br i1 %i.au, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.inv = icmp sgt i32 %i.ar, -1
  %spec.select = select i1 %.inv, i32 1, i32 -1
  br label %idaLs_AccessLMem.exit.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.g
  %.13659.lcssa = phi double [ %.035, %bb.g ], [ %i.ae, %bb.i ], [ %i.an, %bb.k ]
  %i.av = fdiv double 1.000000e+00, %.13659.lcssa ; 2 uses
  %i.aw = fneg double %i.av
  tail call void @N_VLinearSum(double noundef %i.av, ptr noundef %5, double noundef %i.aw, ptr noundef %3, ptr noundef %5) #11
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit.thread:                     ; preds = %bb.l, %bb.h, %bb.j, %bb.d, %bb.b, %.thread
  %.037 = phi i32 [ -2, %bb.d ], [ -1, %bb.b ], [ 0, %.thread ], [ -1, %bb.h ], [ %spec.select, %bb.l ], [ -1, %bb.j ]
  ret i32 %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @idaLsInitializeCounters(ptr nofree noundef writeonly captures(none) initializes((128, 192)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  ret i32 0
}

declare i32 @SUNLinSolSetATimes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @idaLsATimes(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 1774, ptr noundef nonnull @__func__.idaLsATimes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %idaLs_AccessLMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %idaLs_AccessLMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1781, ptr noundef nonnull @__func__.idaLsATimes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #11
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit:                            ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.h = load double, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.p = load double, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = tail call i32 %i.f(double noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %1, ptr noundef %2, double noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v) #11
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !104
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !104
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit.thread:                     ; preds = %bb.d, %bb.b, %idaLs_AccessLMem.exit
  %.0 = phi i32 [ %i.w, %idaLs_AccessLMem.exit ], [ -2, %bb.d ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @SUNLinSolSetPreconditioner(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare i64 @N_VGetLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -3, 1) i32 @IDASetJacFn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 1774, ptr noundef nonnull @__func__.IDASetJacFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %idaLs_AccessLMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %idaLs_AccessLMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1781, ptr noundef nonnull @__func__.IDASetJacFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #11
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit:                            ; preds = %bb.c
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %.critedge, label %bb.e

bb.e:                                             ; preds = %idaLs_AccessLMem.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 307, ptr noundef nonnull @__func__.IDASetJacFn, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #11
  br label %idaLs_AccessLMem.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !48
  br label %idaLs_AccessLMem.exit.thread

.critedge:                                        ; preds = %idaLs_AccessLMem.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @idaLsDQJac, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %0, ptr %i.o, align 8, !tbaa !48
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit.thread:                     ; preds = %bb.d, %bb.b, %bb.g, %.critedge, %bb.f
  %.0 = phi i32 [ 0, %bb.g ], [ -3, %bb.f ], [ 0, %.critedge ], [ -2, %bb.d ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @idaLs_AccessLMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 1774, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1781, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %3, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -3, 1) i32 @IDASetEpsLin(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 1774, ptr noundef nonnull @__func__.IDASetEpsLin, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %idaLs_AccessLMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %idaLs_AccessLMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1781, ptr noundef nonnull @__func__.IDASetEpsLin, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #11
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit:                            ; preds = %bb.c
  %i.e = fcmp olt double %1, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %idaLs_AccessLMem.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 343, ptr noundef nonnull @__func__.IDASetEpsLin, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #11
  br label %idaLs_AccessLMem.exit.thread

bb.f:                                             ; preds = %idaLs_AccessLMem.exit
  %i.f = fcmp oeq double %1, 0.000000e+00
end_hunk_0
