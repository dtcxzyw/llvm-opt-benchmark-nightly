Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas_ls?download=true
inline.NumInlined: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@idaLsSolve:bb.a

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.bs = load double, ptr %i.br, align 8, !tbaa !138 ; 2 uses
  %i.bt = fcmp une double %i.bs, 1.000000e+00
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = fadd double %i.bs, 1.000000e+00
  %i.bv = fdiv double 2.000000e+00, %i.bu
  tail call void @N_VScale(double noundef %i.bv, ptr noundef %1, ptr noundef %1) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.not91 = icmp eq i32 %i.ay, 0
  br i1 %.not91, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i32 0, ptr %i.bw, align 8, !tbaa !51
  br label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !71
  %i.bz = add nsw i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i32 %i.ay, ptr %i.ca, align 8, !tbaa !51
  switch i32 %i.ay, label %bb.ac [
    i32 -808, label %bb.ab
    i32 801, label %bb.ad
    i32 802, label %bb.ad
    i32 805, label %bb.ad
    i32 806, label %bb.ad
    i32 807, label %bb.ad
    i32 808, label %bb.ad
    i32 -9999, label %bb.z
    i32 -9998, label %bb.z
    i32 -9989, label %bb.z
    i32 -810, label %bb.z
    i32 -811, label %bb.z
    i32 -9987, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9987, i32 noundef 1657, ptr noundef nonnull @__func__.idaLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37) #12
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -808, i32 noundef 1662, ptr noundef nonnull @__func__.idaLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38) #12
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef 1667, ptr noundef nonnull @__func__.idaLsSolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %.thread, %bb.j, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.m, %bb.g, %bb.b
  %.077 = phi i32 [ -2, %bb.b ], [ -9, %bb.g ], [ -1, %bb.ab ], [ %i.at, %bb.m ], [ -1, %bb.ac ], [ -1, %bb.j ], [ 0, %.thread ], [ -1, %bb.z ], [ -1, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ]
  ret i32 %.077
}

; Function Attrs: nounwind uwtable
define noundef i32 @idaLsFree(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @N_VDestroy(ptr noundef nonnull %i.f) #12
  store ptr null, ptr %i.e, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @N_VDestroy(ptr noundef nonnull %i.h) #12
  store ptr null, ptr %i.g, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %.not26 = icmp eq ptr %i.j, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @N_VDestroy(ptr noundef nonnull %i.j) #12
  store ptr null, ptr %i.i, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 %i.n(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !58
  tail call void @free(ptr noundef %i.p) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 2) i32 @idaLsPerf(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1689, ptr noundef nonnull @__func__.idaLsPerf, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #12
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr %i.g, align 8, !tbaa !140
  %i.j = load i64, ptr %i.h, align 8, !tbaa !141
  store i64 %i.j, ptr %i.i, align 8, !tbaa !142
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.l = load i64, ptr %i.k, align 8, !tbaa !143
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i64 %i.l, ptr %i.m, align 8, !tbaa !144
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i64 %i.o, ptr %i.p, align 8, !tbaa !145
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i64 0, ptr %i.q, align 8, !tbaa !146
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.h, align 8, !tbaa !141  ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !tbaa !140  ; 2 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !142  ; 2 uses
  %i.u = icmp eq i64 %i.f, %i.s
  %i.v = icmp eq i64 %i.r, %i.t
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = sub nsw i64 %i.r, %i.t
  %i.x = sub nsw i64 %i.f, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.z = load i64, ptr %i.y, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !144
  %i.af = sub nsw i64 %i.z, %i.ae
  %i.ag = sitofp i64 %i.af to double
  %i.ah = sitofp i64 %i.x to double
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !145
  %i.aj = sub nsw i64 %i.ac, %i.ai
  %i.ak = sitofp i64 %i.aj to double
  %i.al = sitofp i64 %i.w to double
  %i.am = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ak, i64 1
  %i.ao = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.al, i64 1
  %i.aq = fdiv <2 x double> %i.an, %i.ap
  %.fr = freeze <2 x double> %i.aq                ; 3 uses
  %i.ar = fcmp ogt <2 x double> %.fr, splat (double 9.000000e-01) ; 3 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 0
  %i.at = extractelement <2 x i1> %i.ar, i64 1
  %2 = bitcast <2 x i1> %i.ar to i2
  %or.cond3.not = icmp eq i2 %2, 0
  br i1 %or.cond3.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !146 ; 2 uses
  %i.aw = add nsw i64 %i.av, 1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !146
  %i.ax = icmp sgt i64 %i.av, 9
  br i1 %i.ax, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.az = load double, ptr %i.ay, align 8, !tbaa !65
  %i.ba = extractelement <2 x double> %.fr, i64 0
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1728, ptr noundef nonnull @__func__.idaLsPerf, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, double noundef %i.az, double noundef %i.ba) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !65
  %i.bd = extractelement <2 x double> %.fr, i64 1
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1733, ptr noundef nonnull @__func__.idaLsPerf, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, double noundef %i.bc, double noundef %i.bd) #12
  br label %bb.l

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
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 944, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %6, i32 noundef -2, i32 noundef 952, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #12
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !150
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %6, i32 noundef -3, i32 noundef 965, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #12
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.y = tail call i32 @SUNMatGetID(ptr noundef nonnull %5) #12
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @idaLsDenseDQJac(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ab = tail call i32 @SUNMatGetID(ptr noundef nonnull %5) #12
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call i32 @idaLsBandDQJac(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %6, i32 noundef -22, i32 noundef 981, ptr noundef nonnull @__func__.idaLsDQJac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #12
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
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 1815, ptr noundef nonnull @__func__.idaLsDQJtimes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %idaLs_AccessLMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 1888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %idaLs_AccessLMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %7, i32 noundef -2, i32 noundef 1822, ptr noundef nonnull @__func__.idaLsDQJtimes, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #12
  br label %idaLs_AccessLMem.exit.thread

idaLs_AccessLMem.exit:                            ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = tail call i32 @SUNLinSolGetID(ptr noundef %i.f) #12
  %i.h = add i32 %i.g, -7
  %or.cond = icmp ult i32 %i.h, 2
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %idaLs_AccessLMem.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.j = load double, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.l = load double, ptr %i.k, align 8, !tbaa !50
  %i.m = fmul double %i.j, %i.l
  br label %bb.g

bb.f:                                             ; preds = %idaLs_AccessLMem.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.o = load double, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = tail call double @N_VWrmsNorm(ptr noundef %4, ptr noundef %i.q) #12
  %i.s = fdiv double %i.o, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.035 = phi double [ %i.m, %bb.e ], [ %i.s, %bb.f ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 6 uses
  tail call void @N_VLinearSum(double noundef %.035, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #12
  %i.w = fmul double %6, %.035
  tail call void @N_VLinearSum(double noundef %i.w, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.z = tail call i32 %i.x(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.y) #12 ; 2 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !73
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !73
  %i.ac = icmp eq i32 %i.z, 0
  br i1 %i.ac, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp slt i32 %i.z, 0
  br i1 %i.ad, label %idaLs_AccessLMem.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = fmul double %.035, 2.500000e-01         ; 4 uses
  tail call void @N_VLinearSum(double noundef %i.ae, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #12
  %i.af = fmul double %6, %i.ae
  tail call void @N_VLinearSum(double noundef %i.af, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.ai = tail call i32 %i.ag(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.ah) #12 ; 2 uses
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !73
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.v, align 8, !tbaa !73
  %i.al = icmp eq i32 %i.ai, 0
  br i1 %i.al, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp slt i32 %i.ai, 0
  br i1 %i.am, label %idaLs_AccessLMem.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = fmul double %i.ae, 2.500000e-01         ; 3 uses
  tail call void @N_VLinearSum(double noundef %i.an, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %8) #12
  %i.ao = fmul double %6, %i.an
  tail call void @N_VLinearSum(double noundef %i.ao, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %2, ptr noundef %9) #12
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.ar = tail call i32 %i.ap(double noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %5, ptr noundef %i.aq) #12 ; 2 uses
  %i.as = load i64, ptr %i.v, align 8, !tbaa !73
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.v, align 8, !tbaa !73
  %i.au = icmp eq i32 %i.ar, 0
  br i1 %i.au, label %.thread, label %bb.l
end_hunk_0
