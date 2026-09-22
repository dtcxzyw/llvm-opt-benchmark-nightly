Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlMatrixMode:bb.a
  store ptr %.sink, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlPushMatrix() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.b = icmp sgt i32 %i.a, 31
  br i1 %i.b, label %bb.b, label %bb.c

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
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 5 uses
  %.sroa.1552.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.1754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %3 = load <4 x float>, ptr %i.a, align 4        ; 4 uses
  %i.b = insertelement <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float poison>, float %1, i64 3 ; 4 uses
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %5 = fmul <4 x float> %i.b, %4
  %i.c = insertelement <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %0, i64 3 ; 4 uses
  %i.d = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %i.d, <4 x float> %5)
  %i.e = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %2, i64 3 ; 4 uses
  %7 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %7, <4 x float> %6)
  %9 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %8)
  store <4 x float> %10, ptr %i.a, align 4
  %11 = load <4 x float>, ptr %.sroa.1552.0..sroa_idx.a, align 4 ; 4 uses
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %13 = fmul <4 x float> %i.b, %12
  %i.f = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %i.f, <4 x float> %13)
  %14 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %14, <4 x float> %i.g)
  %16 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.h = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %15)
  store <4 x float> %i.h, ptr %.sroa.1552.0..sroa_idx.a, align 4
  %17 = load <4 x float>, ptr %.sroa.1754.0..sroa_idx, align 4 ; 4 uses
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %19 = fmul <4 x float> %i.b, %18
  %20 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %20, <4 x float> %19)
  %22 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %23 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %22, <4 x float> %21)
  %24 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %23)
  store <4 x float> %i.i, ptr %.sroa.1754.0..sroa_idx, align 4
  %25 = load <4 x float>, ptr %.sroa.1855.0..sroa_idx, align 4 ; 4 uses
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %27 = fmul <4 x float> %i.b, %26
  %i.j = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.c, <4 x float> %i.j, <4 x float> %27)
  %29 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %29, <4 x float> %28)
  %30 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.l = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.k)
  store <4 x float> %i.l, ptr %.sroa.1855.0..sroa_idx, align 4
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
  %i.n = load <4 x float>, ptr %i.l, align 4      ; 4 uses
  %i.o = shufflevector <16 x float> %i.m, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.p = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
end_hunk_0
