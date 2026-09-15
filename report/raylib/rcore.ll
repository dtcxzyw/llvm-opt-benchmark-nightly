Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlPushMatrix:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 5, ptr noundef nonnull @.str.1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.d = icmp eq i32 %i.c, 5888
  br i1 %i.d, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), %bb.d ]
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false)
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @TraceLog(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 7 uses
  %i.a = alloca [256 x i8], align 16              ; 14 uses
  %i.b = load i32, ptr @logTypeLevel, align 4
  %i.c = icmp slt i32 %0, %i.b
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.e = load ptr, ptr @traceLog, align 8         ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void %i.e(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #56
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  switch i32 %0, label %bb.k [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  store i64 9071268410249812, ptr %i.a, align 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  store i64 9071277302236484, ptr %i.a, align 16
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.196, i64 noundef 7, i1 false) #56
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.197, i64 noundef 10, i1 false) #56
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  store i64 9071324447265349, ptr %i.a, align 16
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  store i64 9071298442707270, ptr %i.a, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #57
  %i.g = trunc i64 %i.f to i32
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #57
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = call i32 @llvm.umin.i32(i32 %i.g, i32 244)
  %i.k = zext nneg i32 %i.j to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  store i16 10, ptr %endptr, align 1
  %i.l = load ptr, ptr @stdout, align 8, !noalias !180
  %i.m = call i32 @vfprintf(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #56, !inline_history !179 ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8
  %i.o = call i32 @fflush(ptr noundef %i.n)       ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.p = icmp eq i32 %0, 6
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @exit(i32 noundef 1) #59
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlPopMatrix() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -64
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false)
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %bb.b ], [ %i.a, %bb.a ]
  %i.j = icmp eq i32 %i.i, 0
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.l = icmp eq i32 %i.k, 5888
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @rlLoadIdentity() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlTranslatef(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 13 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.1148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.1451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.sroa.1552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.1754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.sroa.542.0.copyload = load float, ptr %.sroa.542.0..sroa_idx, align 4
  %.sroa.643.0.copyload = load float, ptr %.sroa.643.0..sroa_idx, align 4
  %3 = load <2 x float>, ptr %i.a, align 4        ; 4 uses
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.b = insertelement <2 x float> <float 0.000000e+00, float poison>, float %1, i64 1 ; 4 uses
  %5 = fmul <2 x float> %4, %i.b                  ; 2 uses
  %6 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = insertelement <2 x float> <float 0.000000e+00, float poison>, float %0, i64 1 ; 4 uses
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.c, <2 x float> %5)
  %i.d = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %2, i64 3 ; 4 uses
  %i.e = insertelement <4 x float> poison, float %.sroa.542.0.copyload, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.g = insertelement <4 x float> poison, float %.sroa.643.0.copyload, i64 0
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.946.0.copyload = load float, ptr %.sroa.946.0..sroa_idx, align 4
  %.sroa.1047.0.copyload = load float, ptr %.sroa.1047.0..sroa_idx, align 4
  %9 = load <2 x float>, ptr %.sroa.744.0..sroa_idx, align 4 ; 4 uses
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = fmul <2 x float> %10, %i.b                ; 2 uses
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.c, <2 x float> %11)
  %14 = insertelement <4 x float> poison, float %.sroa.946.0.copyload, i64 0
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.i = insertelement <4 x float> poison, float %.sroa.1047.0.copyload, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.1350.0.copyload.a = load float, ptr %.sroa.1350.0..sroa_idx, align 4
  %.sroa.1451.0.copyload.a = load float, ptr %.sroa.1451.0..sroa_idx, align 4
  %i.k = load <2 x float>, ptr %.sroa.1148.0..sroa_idx, align 4 ; 4 uses
  %17 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul <2 x float> %18, %i.b                ; 2 uses
  %i.l = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %i.c, <2 x float> %19)
  %22 = insertelement <4 x float> poison, float %.sroa.1350.0.copyload.a, i64 0
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = insertelement <4 x float> poison, float %.sroa.1451.0.copyload.a, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.1754.0.copyload = load float, ptr %.sroa.1754.0..sroa_idx, align 4
  %.sroa.1855.0.copyload = load float, ptr %.sroa.1855.0..sroa_idx, align 4
  %26 = load <2 x float>, ptr %.sroa.1552.0..sroa_idx, align 4 ; 4 uses
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.n = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %i.n, %i.b              ; 2 uses
  %28 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <2 x float> %3, <2 x float> %9, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %29, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %31 = shufflevector <4 x float> %30, <4 x float> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %32 = shufflevector <2 x float> %5, <2 x float> %11, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %32, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %34 = shufflevector <4 x float> %33, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %35 = fadd <4 x float> %31, %34                 ; 4 uses
  %36 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %i.c, <2 x float> %i.o)
  %38 = shufflevector <2 x float> %3, <2 x float> %9, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %39 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %38, <4 x float> %39, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %41 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %42 = shufflevector <4 x float> %40, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> zeroinitializer, <4 x float> %42) ; 4 uses
  %i.p = shufflevector <4 x float> %35, <4 x float> %43, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.q = shufflevector <4 x float> %i.p, <4 x float> %8, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %i.f, <4 x float> %i.q)
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.r)
  store <4 x float> %i.s, ptr %i.a, align 4
  %i.t = shufflevector <4 x float> %35, <4 x float> %43, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %15, <4 x float> %i.u)
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.v)
  store <4 x float> %i.w, ptr %.sroa.744.0..sroa_idx, align 4
  %i.x = shufflevector <4 x float> %35, <4 x float> %43, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.x, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %23, <4 x float> %i.y)
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.z)
  store <4 x float> %i.aa, ptr %.sroa.1148.0..sroa_idx, align 4
  %i.ab = insertelement <4 x float> poison, float %.sroa.1754.0.copyload, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = shufflevector <4 x float> %35, <4 x float> %43, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ae = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.d, <4 x float> %i.ac, <4 x float> %i.af)
  %i.ah = insertelement <4 x float> poison, float %.sroa.1855.0.copyload, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ag)
  store <4 x float> %i.aj, ptr %.sroa.1552.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlRotatef(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fmul float %2, %2                        ; 2 uses
  %i.b = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %3, float %3, float %i.b) ; 3 uses
  %i.d = fcmp une float %i.c, 1.000000e+00
  %i.e = fcmp une float %i.c, 0.000000e+00
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.f = fdiv float 1.000000e+00, %sqrt           ; 3 uses
  %i.g = fmul float %1, %i.f
  %i.h = fmul float %2, %i.f                      ; 3 uses
  %i.i = fmul float %3, %i.f
  %.pre = fmul float %i.h, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi float [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %.062 = phi float [ %i.i, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.061 = phi float [ %i.h, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.0 = phi float [ %i.g, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.j = fmul float %0, f0x3C8EFA35               ; 2 uses
  %i.k = tail call float @sinf(float noundef %i.j) #56 ; 3 uses
  %i.l = tail call float @cosf(float noundef %i.j) #56 ; 3 uses
  %i.m = fmul float %.062, %i.k                   ; 2 uses
  %i.n = fmul float %.061, %i.k                   ; 2 uses
  %i.o = fneg float %i.n
  %i.p = fneg float %i.m
  %i.q = fmul float %.0, %i.k                     ; 2 uses
  %i.r = fneg float %i.q
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 5 uses
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.11111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %.sroa.15115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.t = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.l, i64 0 ; 2 uses
  %i.u = fsub <4 x float> <float 1.000000e+00, float -0.000000e+00, float poison, float poison>, %i.t
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.w = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.0, i64 0 ; 2 uses
  %i.x = insertelement <4 x float> %i.w, float %.061, i64 1
  %i.y = insertelement <4 x float> %i.x, float %.062, i64 2 ; 3 uses
  %i.z = shufflevector <4 x float> %i.w, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.aa = fmul <4 x float> %i.y, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.ac = insertelement <4 x float> %i.y, float 1.000000e+00, i64 3
  %i.ad = fmul <4 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = insertelement <4 x float> %i.t, float 0.000000e+00, i64 3
  %i.af = insertelement <4 x float> %i.ae, float %i.p, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.n, i64 2
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.v, <4 x float> %i.ag) ; 2 uses
  %i.ai = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aa, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.ad, <4 x i32> <i32 0, i32 poison, i32 5, i32 3>
  %i.ak = insertelement <4 x float> %i.aj, float %.pre-phi, i64 1
  %i.al = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.l, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.r, i64 2
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.v, <4 x float> %i.an) ; 2 uses
  %i.ap = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.o, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.q, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.l, i64 2
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.v, <4 x float> %i.ar) ; 2 uses
  %i.at = load <4 x float>, ptr %i.s, align 4     ; 4 uses
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.av = fmul <4 x float> %i.au, %i.ao
  %i.aw = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ah, <4 x float> %i.av)
  %i.ay = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.as, <4 x float> %i.ax)
  %i.ba = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.az)
  store <4 x float> %i.bb, ptr %i.s, align 4
  %i.bc = load <4 x float>, ptr %.sroa.7107.0..sroa_idx, align 4 ; 4 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.be = insertelement <4 x float> %i.ao, float 0.000000e+00, i64 3 ; 3 uses
  %i.bf = fmul <4 x float> %i.bd, %i.be
  %i.bg = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3 ; 3 uses
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bh, <4 x float> %i.bf)
  %i.bj = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bk = insertelement <4 x float> %i.as, float 0.000000e+00, i64 3 ; 3 uses
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bk, <4 x float> %i.bi)
  %i.bm = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.bl)
  store <4 x float> %i.bn, ptr %.sroa.7107.0..sroa_idx, align 4
  %i.bo = load <4 x float>, ptr %.sroa.11111.0..sroa_idx, align 4 ; 4 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bq = fmul <4 x float> %i.bp, %i.be
  %i.br = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bh, <4 x float> %i.bq)
  %i.bt = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.bk, <4 x float> %i.bs)
  %i.bv = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.bu)
  store <4 x float> %i.bw, ptr %.sroa.11111.0..sroa_idx, align 4
  %i.bx = load <4 x float>, ptr %.sroa.15115.0..sroa_idx, align 4 ; 4 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bz = fmul <4 x float> %i.by, %i.be
  %i.ca = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.bh, <4 x float> %i.bz)
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bk, <4 x float> %i.cb)
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cd)
  store <4 x float> %i.cf, ptr %.sroa.15115.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlScalef(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 5 uses
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.1146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.b = load <4 x float>, ptr %i.a, align 4      ; 4 uses
  %i.c = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %1, i64 1 ; 4 uses
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.e = fmul <4 x float> %i.c, %i.d
  %i.f = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0 ; 4 uses
  %i.g = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.g, <4 x float> %i.e)
  %i.i = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %2, i64 2 ; 4 uses
  %i.j = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.j, <4 x float> %i.h)
  %i.l = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.k)
  store <4 x float> %i.m, ptr %i.a, align 4
  %i.n = load <4 x float>, ptr %.sroa.742.0..sroa_idx, align 4 ; 4 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.p = fmul <4 x float> %i.c, %i.o
  %i.q = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.q, <4 x float> %i.p)
  %i.s = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.s, <4 x float> %i.r)
  %i.u = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.t)
  store <4 x float> %i.v, ptr %.sroa.742.0..sroa_idx, align 4
  %i.w = load <4 x float>, ptr %.sroa.1146.0..sroa_idx, align 4 ; 4 uses
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.y = fmul <4 x float> %i.c, %i.x
  %i.z = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.z, <4 x float> %i.y)
  %i.ab = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.ab, <4 x float> %i.aa)
  %i.ad = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ac)
  store <4 x float> %i.ae, ptr %.sroa.1146.0..sroa_idx, align 4
  %i.af = load <4 x float>, ptr %.sroa.1550.0..sroa_idx, align 4 ; 4 uses
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ah = fmul <4 x float> %i.c, %i.ag
  %i.ai = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.ak, <4 x float> %i.aj)
  %i.am = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.al)
  store <4 x float> %i.an, ptr %.sroa.1550.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlMultMatrixf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 5 uses
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.1165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.sroa.1569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.m = load <16 x float>, ptr %0, align 4       ; 4 uses
end_hunk_0
begin_hunk_1_@Vector3Transform:bb.a
  %i.y = fadd float %i.x, %i.v
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.m, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.y, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3RotateByQuaternion(<2 x float> %0, float %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.092.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.01.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 5 uses
  %.sroa.25.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 4 uses
  %i.a = fmul float %.sroa.25.12.vec.extract, %.sroa.25.12.vec.extract
  %.sroa.25.8.vec.extract = extractelement <2 x float> %3, i64 0 ; 3 uses
  %.sroa.092.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = fneg float %.sroa.01.0.vec.extract
  %i.c = fmul float %.sroa.01.0.vec.extract, %i.b
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract, float %.sroa.01.0.vec.extract, float %i.a)
  %.sroa.01.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 7 uses
  %i.e = fneg float %.sroa.01.4.vec.extract       ; 2 uses
  %i.f = fneg float %.sroa.25.8.vec.extract       ; 3 uses
  %i.g = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 3>
  %i.h = fmul <2 x float> %i.g, splat (float 2.000000e+00) ; 3 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.j = fmul float %i.i, %i.f
  %i.k = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 0, i32 3>
  %i.l = fmul <2 x float> %i.k, <float 2.000000e+00, float -2.000000e+00> ; 5 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = fmul float %.sroa.01.4.vec.extract, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.e, float %.sroa.01.4.vec.extract, float %i.d)
  %i.p = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.f, i64 0
  %i.r = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x float> poison, float %i.o, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.n, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %.sroa.25.12.vec.extract, float %.sroa.25.12.vec.extract, float %i.c) ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract, float %.sroa.01.4.vec.extract, float %i.v)
  %i.x = insertelement <2 x float> %i.l, float %i.f, i64 1
  %i.y = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.j, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.w, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.y, <2 x float> %i.aa)
  %i.ac = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x float> %i.ac, %i.ab
  %i.ae = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.u, <2 x float> %i.ad)
  %i.ag = fmul <2 x float> %i.y, %i.h             ; 2 uses
  %i.ah = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.ah, <2 x float> %i.ag)
  %i.aj = insertelement <2 x float> poison, float %1, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ai, <2 x float> %i.af)
  %foldExtExtBinop = fmul <2 x float> %i.l, %3
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = extractelement <2 x float> %i.l, i64 1
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %.sroa.01.4.vec.extract, float %i.am)
  %i.ap = extractelement <2 x float> %i.ag, i64 1
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.i, float %.sroa.01.0.vec.extract, float %i.ap)
  %i.ar = fmul float %.sroa.092.4.vec.extract, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract, float %i.ao, float %i.ar)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.e, float %.sroa.01.4.vec.extract, float %i.v)
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract, float %.sroa.25.8.vec.extract, float %i.at)
  %i.av = tail call float @llvm.fmuladd.f32(float %1, float %i.au, float %i.as)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.al, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.av, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, float } @Vector3RotateByAxisAngle(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #14 {
bb.a:
  %.sroa.044.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.044.0.vec.extract, float %.sroa.044.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %3, float %3, float %i.b) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  %i.e = fdiv float 1.000000e+00, %sqrt
  %i.f = select i1 %i.d, float 1.000000e+00, float %i.e
  %i.g = fmul float %4, 5.000000e-01              ; 2 uses
  %i.h = tail call float @sinf(float noundef %i.g) #56
  %i.i = tail call float @cosf(float noundef %i.g) #56
  %i.j = fmul float %i.i, 2.000000e+00            ; 2 uses
  %i.k = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %3, i64 1
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = fmul <2 x float> %2, %i.n
  %i.q = insertelement <2 x float> %i.k, float %3, i64 0
  %i.r = fmul <2 x float> %i.q, %i.n
  %i.s = insertelement <2 x float> poison, float %i.h, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.u = fmul <2 x float> %i.o, %i.t              ; 5 uses
  %i.v = fmul <2 x float> %i.p, %i.t
  %i.w = fmul <2 x float> %i.r, %i.t              ; 5 uses
  %i.x = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x float> %i.x, float %1, i64 1 ; 2 uses
  %i.z = fneg <2 x float> %i.y
  %i.aa = fneg <2 x float> %0
  %i.ab = insertelement <2 x float> %i.x, float %1, i64 0 ; 2 uses
  %i.ac = fneg <2 x float> %i.ab
  %i.ad = fmul <2 x float> %i.w, %i.z
  %i.ae = fmul <2 x float> %i.u, %i.aa
  %i.af = shufflevector <2 x float> %i.w, <2 x float> %i.u, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ac
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ab, <2 x float> %i.ad) ; 3 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.y, <2 x float> %i.ae) ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %0, <2 x float> %i.ag)
  %i.ak = fneg <2 x float> %i.aj
  %i.al = fmul <2 x float> %i.w, %i.ak
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ai, <2 x float> %i.al)
  %i.an = extractelement <2 x float> %i.ah, i64 0
  %i.ao = fneg float %i.an
  %i.ap = extractelement <2 x float> %i.u, i64 0
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ah, i64 1
  %i.as = extractelement <2 x float> %i.w, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ar, float %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.j, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.av, %i.ah
  %i.ax = extractelement <2 x float> %i.ai, i64 0
  %i.ay = fmul float %i.j, %i.ax
  %i.az = fmul <2 x float> %i.am, splat (float 2.000000e+00)
  %i.ba = fmul float %i.at, 2.000000e+00
  %i.bb = fadd <2 x float> %0, %i.aw
  %i.bc = fadd float %1, %i.ay
  %i.bd = fadd <2 x float> %i.bb, %i.az
  %i.be = fadd float %i.bc, %i.ba
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bd, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.be, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3MoveTowards(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %2, %0                  ; 4 uses
  %i.b = fsub float %3, %1                        ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.d = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.c)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e) ; 3 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp ult float %4, 0.000000e+00
  %i.i = fmul float %4, %4
  %i.j = fcmp ugt float %i.f, %i.i
  %or.cond = or i1 %i.h, %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt = tail call float @llvm.sqrt.f32(float %i.f) ; 2 uses
  %i.k = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fdiv <2 x float> %i.a, %i.l
  %i.n = insertelement <2 x float> poison, float %4, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.o, <2 x float> %0)
  %i.q = fdiv float %i.b, %sqrt
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %4, float %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.034.0 = phi <2 x float> [ %i.p, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  %.sroa.436.0 = phi float [ %i.r, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.436.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Lerp(<2 x float> %0, float %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %2, %0
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.a, <2 x float> %0)
  %i.e = fsub float %3, %1
  %i.f = tail call float @llvm.fmuladd.f32(float %4, float %i.e, float %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.d, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.f, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3CubicHermite(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7, float noundef %8) local_unnamed_addr #13 {
bb.a:
  %i.a = fmul float %8, %8                        ; 4 uses
  %i.b = fmul float %8, %i.a                      ; 4 uses
  %i.c = fmul float %i.a, 3.000000e+00            ; 2 uses
  %i.d = fneg float %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float -2.000000e+00, float %i.c) ; 2 uses
  %i.f = fsub float %i.b, %i.a                    ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.b, i64 0
  %10 = insertelement <2 x float> %9, float %i.a, i64 1
  %11 = insertelement <2 x float> poison, float %i.d, i64 0
  %12 = insertelement <2 x float> %11, float %i.b, i64 1
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> <float 2.000000e+00, float -2.000000e+00>, <2 x float> %12)
  %i.g = insertelement <2 x float> <float 1.000000e+00, float poison>, float %8, i64 1
  %14 = fadd <2 x float> %13, %i.g                ; 4 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %16 = fmul <2 x float> %2, %15
  %i.h = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %0, <2 x float> %16)
  %i.j = insertelement <2 x float> poison, float %i.e, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %4, <2 x float> %i.i)
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %6, <2 x float> %i.l)
  %17 = extractelement <2 x float> %14, i64 1
  %i.p = fmul float %3, %17
  %18 = extractelement <2 x float> %14, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %18, float %1, float %i.p)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.e, float %5, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.f, float %7, float %i.r)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.o, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.s, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Reflect(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.013.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.05.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract, float %.sroa.05.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %3, float %i.b) ; 2 uses
  %i.d = fmul <2 x float> %2, splat (float -2.000000e+00)
  %i.e = insertelement <2 x float> poison, float %i.c, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.f, <2 x float> %0)
  %i.h = fmul float %3, -2.000000e+00
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.c, float %1)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.g, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.i, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Min(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %0, <2 x float> %2)
  %i.b = tail call nsz float @llvm.minnum.f32(float %1, float %3)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Max(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %0, <2 x float> %2)
  %i.b = tail call nsz float @llvm.maxnum.f32(float %1, float %3)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @Vector3Barycenter(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, <2 x float> %6, float %7) local_unnamed_addr #13 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %7, i64 1
  %i.c = insertelement <2 x float> poison, float %3, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fsub <2 x float> %i.b, %i.d              ; 3 uses
  %8 = shufflevector <2 x float> %4, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %9 = insertelement <3 x float> %8, float %5, i64 0
  %10 = shufflevector <2 x float> %2, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %11 = insertelement <3 x float> %10, float %3, i64 0
  %12 = fsub <3 x float> %9, %11                  ; 7 uses
  %i.f = shufflevector <2 x float> %0, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %i.g = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fsub <2 x float> %i.f, %i.g              ; 3 uses
  %i.i = shufflevector <2 x float> %0, <2 x float> %6, <2 x i32> <i32 1, i32 3>
  %i.j = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.k = fsub <2 x float> %i.i, %i.j              ; 3 uses
  %foldExtExtBinop = fmul <3 x float> %12, %12
  %13 = extractelement <3 x float> %foldExtExtBinop, i64 2
  %14 = extractelement <3 x float> %12, i64 1     ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %14, float %14, float %13)
  %15 = extractelement <3 x float> %12, i64 0     ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %15, float %15, float %i.l)
  %16 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.n = fmul <2 x float> %16, %i.k
  %17 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %i.h, <2 x float> %i.n)
  %i.p = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.e, <2 x float> %i.o) ; 4 uses
  %i.r = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fmul <2 x float> %i.r, %i.k
  %i.t = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.h, <2 x float> %i.s)
  %i.v = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.e, <2 x float> %i.u) ; 3 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fneg float %i.x
  %i.z = extractelement <2 x float> %i.q, i64 1
  %i.aa = fmul float %i.z, %i.y
  %i.ab = extractelement <2 x float> %i.w, i64 1
  %i.ac = extractelement <2 x float> %i.q, i64 0
  %i.ad = fneg <2 x float> %i.q
  %i.ae = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x float> %i.ae, %i.ad
  %i.ag = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.w, <2 x float> %i.af) ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ac, float %i.aa)
  %i.ak = insertelement <2 x float> %i.ai, float %i.aj, i64 1
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fdiv <2 x float> %i.ak, %i.al           ; 3 uses
  %i.an = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.am)
  %i.ao = fsub float 1.000000e+00, %i.an
  %i.ap = insertelement <2 x float> %i.am, float %i.ao, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.ap, 0
  %i.aq = extractelement <2 x float> %i.am, i64 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.aq, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, float } @Vector3Unproject(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %3) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load float, ptr %i.t, align 8            ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.z = load float, ptr %i.y, align 4            ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ac = load float, ptr %2, align 8             ; 3 uses
  %i.ad = load float, ptr %i.b, align 4           ; 3 uses
  %i.ae = load float, ptr %i.h, align 4           ; 3 uses
  %i.af = load <2 x float>, ptr %i.a, align 8     ; 4 uses
  %i.ag = load <2 x float>, ptr %3, align 8       ; 4 uses
  %i.ah = load <2 x float>, ptr %i.c, align 8     ; 4 uses
  %i.ai = load <2 x float>, ptr %i.e, align 8     ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.af, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.an, <2 x float> %i.al)
  %i.ap = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.af, %i.aq
  %i.as = fmul float %i.ad, %i.u
  %i.at = fmul float %i.ae, %i.u
  %i.au = fmul float %i.ad, %i.z
  %i.av = fmul float %i.ae, %i.z
  %i.aw = load float, ptr %i.p, align 4           ; 3 uses
  %i.ax = load float, ptr %i.o, align 8           ; 3 uses
  %i.ay = load float, ptr %i.q, align 8           ; 3 uses
  %i.az = load float, ptr %i.r, align 4           ; 3 uses
  %i.ba = fmul float %i.aw, %i.u
  %i.bb = fmul float %i.aw, %i.z
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.af, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bm, <2 x float> %i.bk) ; 5 uses
  %i.bo = fneg <2 x float> %i.bn                  ; 5 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bq = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.br = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %1, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = load float, ptr %i.s, align 8           ; 4 uses
  %i.bv = load float, ptr %i.v, align 8           ; 4 uses
  %i.bw = load float, ptr %i.w, align 8           ; 4 uses
  %i.bx = load float, ptr %i.x, align 4           ; 4 uses
  %i.by = load float, ptr %i.aa, align 4          ; 4 uses
  %i.bz = load float, ptr %i.ab, align 4          ; 4 uses
  %i.ca = load float, ptr %i.d, align 8           ; 3 uses
  %i.cb = load float, ptr %i.f, align 4           ; 3 uses
  %i.cc = load float, ptr %i.g, align 8           ; 3 uses
  %i.cd = load float, ptr %i.i, align 8           ; 3 uses
  %i.ce = load float, ptr %i.j, align 4           ; 3 uses
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.cg, <2 x float> %i.ao)
  %i.ci = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cj, <2 x float> %i.ch) ; 7 uses
  %i.cl = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.cm, <2 x float> %i.ar)
  %i.co = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.cp, <2 x float> %i.cn)
  %i.cr = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cs, <2 x float> %i.cq) ; 5 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.ac, float %i.au)
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.by, float %i.ca, float %i.cu)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cb, float %i.cv) ; 5 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.cc, float %i.at)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cd, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.ce, float %i.cy) ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ax, float %i.ba)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ay, float %i.da)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.az, float %i.db) ; 2 uses
  %i.dd = fneg float %i.dc                        ; 2 uses
  %i.de = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  %i.df = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ax, i64 0
  %i.dg = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dd, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dh)
  %i.dj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.dk = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ay, i64 0
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  %i.dn = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.az, i64 0
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dn, <2 x float> %i.dl) ; 3 uses
  %i.dp = fneg <2 x float> %i.ct                  ; 5 uses
  %i.dq = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.dr = extractelement <2 x float> %i.dp, i64 0 ; 2 uses
  %i.ds = fmul float %i.dq, %i.dr
  %i.dt = extractelement <2 x float> %i.ck, i64 0 ; 3 uses
  %i.du = extractelement <2 x float> %i.ct, i64 1
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.ds) ; 4 uses
  %i.dw = fmul float %i.cw, %i.dr
  %i.dx = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = extractelement <2 x float> %i.dp, i64 1
  %i.ea = fmul float %i.cw, %i.dz
  %i.eb = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = extractelement <2 x float> %i.do, i64 0 ; 4 uses
  %i.ee = shufflevector <2 x float> %i.dp, <2 x float> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.ef = fneg <2 x float> %i.ck
  %i.eg = shufflevector <2 x float> %i.ck, <2 x float> %i.ef, <2 x i32> <i32 0, i32 3>
  %i.eh = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.ei = fneg float %i.ed
  %i.ej = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %i.el = fneg float %i.dt
  %i.em = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 2, i32 0>
  %i.eo = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fneg float %i.cz                        ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.cc, float %i.av)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cd, float %i.er)
  %i.et = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.ce, float %i.es) ; 6 uses
  %i.eu = fmul float %i.cw, %i.eq
  %i.ev = load float, ptr %i.l, align 4           ; 3 uses
  %i.ew = load float, ptr %i.k, align 8           ; 3 uses
  %i.ex = load float, ptr %i.m, align 8           ; 3 uses
  %i.ey = load float, ptr %i.n, align 4           ; 3 uses
  %i.ez = fmul float %i.ev, %i.u
  %i.fa = fmul float %i.ev, %i.z
  %i.fb = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.af, %i.fc
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.ew, float %i.fa)
  %i.ff = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.fg, <2 x float> %i.fd)
  %i.fi = insertelement <2 x float> poison, float %i.ex, i64 0
end_hunk_1
