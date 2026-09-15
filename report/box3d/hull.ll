Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CreateHull:bb.a
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge300, label %.lr.ph299, !llvm.loop !177

.preheader:                                       ; preds = %.lr.ph303, %._crit_edge300
  %i.apv = icmp samesign ult i32 %.0217.lcssa, %i.aiu
  br i1 %i.apv, label %.lr.ph305.preheader, label %._crit_edge306

.lr.ph305.preheader:                              ; preds = %.preheader
  %i.apw = zext nneg i32 %.0217.lcssa to i64
  %i.apx = shl nuw nsw i64 %i.apw, 2              ; 3 uses
  %scevgep = getelementptr i8, ptr %i.alk, i64 %i.apx
  %i.apy = xor i32 %.0217.lcssa, -1
  %i.apz = add nsw i32 %i.aiu, %i.apy
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = shl nuw nsw i64 %i.aqa, 2
  %i.aqc = add nuw nsw i64 %i.aqb, 4              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aqc, i1 false), !tbaa !23
  %i.aqd = lshr i32 %i.ait, 2
  %i.aqe = zext nneg i32 %i.aqd to i64            ; 2 uses
  %i.aqf = shl nuw nsw i64 %i.aqe, 4
  %i.aqg = getelementptr i8, ptr %i.alk, i64 %i.aqf
  %scevgep351 = getelementptr i8, ptr %i.aqg, i64 %i.apx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep351, i8 0, i64 %i.aqc, i1 false), !tbaa !23
  %i.aqh = shl nuw nsw i64 %i.aqe, 5
  %i.aqi = getelementptr i8, ptr %i.alk, i64 %i.aqh
  %scevgep352 = getelementptr i8, ptr %i.aqi, i64 %i.apx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep352, i8 0, i64 %i.aqc, i1 false), !tbaa !23
  br label %._crit_edge306

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %.lr.ph303
  %indvars.iv346 = phi i64 [ 0, %.lr.ph303.preheader ], [ %indvars.iv.next347, %.lr.ph303 ] ; 7 uses
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv346
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !57 ; 4 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !52
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 40
  %i.aqo = load i32, ptr %i.aqn, align 8, !tbaa !65
  %i.aqp = trunc i32 %i.aqo to i8
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.akv, i64 %indvars.iv346
  store i8 %i.aqp, ptr %i.aqq, align 1, !tbaa !84
  %i.aqr = getelementptr inbounds nuw [16 x i8], ptr %i.alc, i64 %indvars.iv346
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aqr, ptr noundef nonnull align 8 dereferenceable(16) %i.aqs, i64 16, i1 false), !tbaa.struct !85
  %.sroa.0.0.copyload = load float, ptr %i.aqs, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 36
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqk, i64 40
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %indvars.iv346
  store float %.sroa.0.0.copyload, ptr %i.aqt, align 4, !tbaa !23
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %indvars.iv346
  store float %.sroa.4.0.copyload, ptr %i.aqu, align 4, !tbaa !23
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv346
  store float %.sroa.5.0.copyload, ptr %i.aqv, align 4, !tbaa !23
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %.preheader, label %.lr.ph303, !llvm.loop !178

._crit_edge306:                                   ; preds = %.lr.ph305.preheader, %.preheader
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  %i.aqw = load i32, ptr %i.akb, align 4, !tbaa !19 ; 2 uses
  %i.aqx = icmp eq i32 %i.aqw, 0
  %i.aqy = sext i32 %i.aqw to i64
  %i.aqz = add nsw i64 %i.aqy, %i.akm
  %i.ara = inttoptr i64 %i.aqz to ptr             ; 3 uses
  %.0.i.i233 = select i1 %i.aqx, ptr null, ptr %i.ara
  %i.arb = load i32, ptr %i.akh, align 4, !tbaa !18 ; 2 uses
  %.sroa.020.0.copyload21.i = load <2 x float>, ptr %i.ara, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %.sroa.6.0.copyload23.i = load float, ptr %.sroa.6.0..sroa_idx22.i, align 4, !tbaa !23 ; 4 uses
  %i.arc = icmp sgt i32 %i.arb, 1
  br i1 %i.arc, label %.lr.ph.preheader.i, label %b3UpdateHullBounds.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge306
  %wide.trip.count.i235 = zext nneg i32 %i.arb to i64
  br label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %.lr.ph.i236, %.lr.ph.preheader.i
  %indvars.iv.i237 = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i244, %.lr.ph.i236 ] ; 2 uses
  %.sroa.11.042.i = phi float [ %.sroa.6.0.copyload23.i, %.lr.ph.preheader.i ], [ %i.arl, %.lr.ph.i236 ] ; 2 uses
  %.sroa.8.041.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %.lr.ph.preheader.i ], [ %i.arj, %.lr.ph.i236 ] ; 2 uses
  %.sroa.6.040.i = phi float [ %.sroa.6.0.copyload23.i, %.lr.ph.preheader.i ], [ %i.arh, %.lr.ph.i236 ] ; 2 uses
  %.sroa.020.039.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %.lr.ph.preheader.i ], [ %i.arf, %.lr.ph.i236 ] ; 2 uses
  %i.ard = getelementptr inbounds nuw [12 x i8], ptr %.0.i.i233, i64 %indvars.iv.i237 ; 2 uses
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.ard, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !23 ; 4 uses
  %i.are = fcmp olt <2 x float> %.sroa.020.039.i, %.sroa.016.0.copyload.i
  %i.arf = select <2 x i1> %i.are, <2 x float> %.sroa.020.039.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.arg = fcmp olt float %.sroa.6.040.i, %.sroa.5.0.copyload.i
  %i.arh = select i1 %i.arg, float %.sroa.6.040.i, float %.sroa.5.0.copyload.i ; 2 uses
  %i.ari = fcmp ogt <2 x float> %.sroa.8.041.i, %.sroa.016.0.copyload.i
  %i.arj = select <2 x i1> %i.ari, <2 x float> %.sroa.8.041.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.ark = fcmp ogt float %.sroa.11.042.i, %.sroa.5.0.copyload.i
  %i.arl = select i1 %i.ark, float %.sroa.11.042.i, float %.sroa.5.0.copyload.i ; 2 uses
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i237, 1 ; 2 uses
  %exitcond.not.i245 = icmp eq i64 %indvars.iv.next.i244, %wide.trip.count.i235
  br i1 %exitcond.not.i245, label %b3UpdateHullBounds.exit, label %.lr.ph.i236, !llvm.loop !0

b3UpdateHullBounds.exit:                          ; preds = %.lr.ph.i236, %._crit_edge306
  %.sroa.020.0.lcssa.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %._crit_edge306 ], [ %i.arf, %.lr.ph.i236 ]
  %.sroa.6.0.lcssa.i = phi float [ %.sroa.6.0.copyload23.i, %._crit_edge306 ], [ %i.arh, %.lr.ph.i236 ]
  %.sroa.8.0.lcssa.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %._crit_edge306 ], [ %i.arj, %.lr.ph.i236 ]
  %.sroa.11.0.lcssa.i = phi float [ %.sroa.6.0.copyload23.i, %._crit_edge306 ], [ %i.arl, %.lr.ph.i236 ]
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  store <2 x float> %.sroa.020.0.lcssa.i, ptr %i.arm, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 24
  store float %.sroa.6.0.lcssa.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 28
  store <2 x float> %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajz, i64 36
  store float %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !23
  %i.arn = call fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef nonnull %i.ajz)
  br i1 %i.arn, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %b3UpdateHullBounds.exit
  %i.aro = load i32, ptr %i.akl, align 4, !tbaa !74
  %i.arp = sext i32 %i.aro to i64
  call void @b3Free(ptr noundef nonnull %i.ajz, i64 noundef %i.arp) #24
  br label %bb.cp

bb.co:                                            ; preds = %b3UpdateHullBounds.exit
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8 ; 2 uses
  store i64 0, ptr %i.arq, align 8, !tbaa !86
  %i.arr = load i32, ptr %i.akl, align 4, !tbaa !74
  %i.ars = call i64 @b3Hash64NonZero(ptr noundef nonnull %i.ajz, i32 noundef %i.arr) #24
  store i64 %i.ars, ptr %i.arq, align 8, !tbaa !86
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.0207 = phi ptr [ null, %bb.cn ], [ %i.ajz, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ch, %bb.cp, %bb.cf, %bb.cd, %b3HullBuilder_Construct.exit.thread
  %.2 = phi ptr [ null, %b3HullBuilder_Construct.exit.thread ], [ null, %bb.cd ], [ null, %bb.cf ], [ null, %bb.ch ], [ %.0207, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.cr

bb.cr:                                            ; preds = %bb.a, %bb.cq
  %.3 = phi ptr [ %.2, %bb.cq ], [ null, %bb.a ]
  ret ptr %.3
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateCone(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = mul nsw i64 %i.b, 12                     ; 2 uses
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #24 ; 3 uses
  %i.e = uitofp nneg i32 %3 to float
  %i.f = fdiv float f0x40C90FDB, %i.e
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.h = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %1, i64 0
  %i.i = insertelement <4 x float> %i.h, float %2, i64 3
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = tail call ptr @b3CreateHull(ptr noundef %i.d, i32 noundef %i.a, i32 noundef %i.a)
  tail call void @b3Free(ptr noundef %i.d, i64 noundef %i.c) #24
  ret ptr %i.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.033 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %.lr.ph ] ; 3 uses
  %i.l = tail call <2 x float> @b3ComputeCosSin(float noundef %.033) #24 ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.l, i64 1
  %i.m = tail call <2 x float> @b3ComputeCosSin(float noundef %.033) #24
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.o = fmul float %2, %.sroa.0.4.vec.extract.i
  %i.p = shufflevector <2 x float> %i.m, <2 x float> %i.l, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.q = insertelement <4 x float> %i.p, float 0.000000e+00, i64 1
  %i.r = fmul <4 x float> %i.q, %i.j
  store <4 x float> %i.r, ptr %i.n, align 4, !tbaa !23
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store float %0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !23
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store float %i.o, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !23
  %i.s = fadd float %i.f, %.033
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !225
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateRock(float noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca [10 x %struct.b3Vec3], align 16     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = tail call <2 x float> @b3ComputeCosSin(float noundef f0x407886B6) #24 ; 10 uses
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %2 = extractelement <2 x float> %i.a, i64 1     ; 12 uses
  %.sroa.012.0.vec.extract = extractelement <2 x float> %i.a, i64 0 ; 10 uses
  %i.c = fmul float %0, f0x3EDF2CF8               ; 3 uses
  store float %i.c, ptr %1, align 16, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = fmul float %0, f0x3F36D211
  %4 = insertelement <4 x float> poison, float %0, i64 1 ; 3 uses
  %5 = insertelement <4 x float> %4, float %i.c, i64 0
  %6 = insertelement <4 x float> <float 0.000000e+00, float f0x3F666666, float poison, float poison>, float %3, i64 2
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %9 = fmul <2 x float> %i.a, zeroinitializer
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %11 = fsub <2 x float> %i.a, %10
  %12 = fadd <2 x float> %i.a, %10
  %13 = shufflevector <2 x float> %11, <2 x float> %12, <2 x i32> <i32 0, i32 3> ; 3 uses
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x float> %5, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.e = fmul <4 x float> %15, %7
  store <4 x float> %i.e, ptr %i.d, align 4, !tbaa !23
  %16 = fmul <2 x float> %i.a, %13                ; 2 uses
  %shift = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %16, %shift ; 3 uses
  %17 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.f = fmul <2 x float> %i.b, %13               ; 2 uses
  %shift32 = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop33 = fadd <2 x float> %i.f, %shift32 ; 3 uses
  %19 = shufflevector <2 x float> %foldExtExtBinop33, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %20 = extractelement <2 x float> %foldExtExtBinop33, i64 0
  %21 = insertelement <4 x float> poison, float %0, i64 0 ; 2 uses
  %22 = shufflevector <4 x float> %21, <4 x float> %17, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %23 = shufflevector <4 x float> %22, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %24 = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.g = fmul <2 x float> %i.a, %foldExtExtBinop
  %25 = extractelement <2 x float> %i.g, i64 0
  %26 = fmul float %2, %20
  %27 = fsub float %25, %26                       ; 3 uses
  %28 = fmul float %2, %18
  %foldExtExtBinop37 = fmul <2 x float> %i.a, %foldExtExtBinop33
  %29 = extractelement <2 x float> %foldExtExtBinop37, i64 0
  %30 = fadd float %28, %29                       ; 3 uses
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %32 = fmul float %.sroa.012.0.vec.extract, %27
  %33 = fmul float %2, %30
  %34 = fsub float %32, %33                       ; 3 uses
  %35 = fmul float %2, %27
  %36 = fmul float %.sroa.012.0.vec.extract, %30
  %37 = fadd float %35, %36                       ; 3 uses
  %i.h = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %0, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.j = fmul <4 x float> %i.i, <float f0x3F74355C, float f0x3F74355C, float 3.000000e-01, float f0x3F7EB77F> ; 3 uses
  %38 = insertelement <4 x float> poison, float %0, i64 2 ; 2 uses
  %39 = insertelement <4 x float> %38, float %27, i64 0
  %i.k = insertelement <4 x float> %39, float %30, i64 1
  %40 = insertelement <4 x float> %i.k, float %34, i64 3
  %i.l = fmul <4 x float> %40, %i.j
  store <4 x float> %i.l, ptr %31, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52
  %41 = fmul float %.sroa.012.0.vec.extract, %34
  %i.n = fmul float %2, %37
  %i.o = fsub float %41, %i.n                     ; 3 uses
  %i.p = fmul float %2, %34
  %42 = fmul float %.sroa.012.0.vec.extract, %37
  %i.q = fadd float %i.p, %42                     ; 3 uses
  %i.r = insertelement <4 x float> %4, float %37, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 2
  %i.t = insertelement <4 x float> %i.s, float %i.q, i64 3
  %i.u = shufflevector <4 x float> %i.j, <4 x float> <float poison, float f0x3DCCCCD0, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 3, i32 3>
  %i.v = fmul <4 x float> %i.t, %i.u
  store <4 x float> %i.v, ptr %i.m, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %43 = fmul float %.sroa.012.0.vec.extract, %i.o
  %44 = fmul float %2, %i.q
  %45 = fsub float %43, %44                       ; 3 uses
  %46 = fmul float %2, %i.o
  %47 = fmul float %.sroa.012.0.vec.extract, %i.q
  %48 = fadd float %46, %47                       ; 3 uses
  %49 = insertelement <4 x float> %21, float %45, i64 1
  %50 = insertelement <4 x float> %49, float %48, i64 2
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %52 = shufflevector <4 x float> %i.j, <4 x float> <float f0xBDCCCCD0, float poison, float poison, float f0xBE999998>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.x = fmul <4 x float> %51, %52
  store <4 x float> %i.x, ptr %i.w, align 4, !tbaa !23
  %53 = fmul float %.sroa.012.0.vec.extract, %45
  %54 = fmul float %2, %48
  %55 = fsub float %53, %54                       ; 3 uses
  %56 = fmul float %2, %45
  %57 = fmul float %.sroa.012.0.vec.extract, %48
  %58 = fadd float %56, %57                       ; 3 uses
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.y = fmul <4 x float> %i.i, <float f0x3F5DB3D7, float f0x3F5DB3D7, float -5.000000e-01, float f0x3F36D210> ; 3 uses
  %i.z = shufflevector <4 x float> <float f0x3F333333, float poison, float poison, float 5.000000e-01>, <4 x float> %i.y, <4 x i32> <i32 0, i32 4, i32 4, i32 3>
  %i.aa = fmul <4 x float> %24, %i.z
  store <4 x float> %i.aa, ptr %8, align 4, !tbaa !23
  %60 = insertelement <4 x float> %38, float %55, i64 0
  %i.ab = insertelement <4 x float> %60, float %58, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 100
  %61 = fmul float %2, %55
  %62 = fmul float %.sroa.012.0.vec.extract, %55
  %63 = fmul float %.sroa.012.0.vec.extract, %58
  %64 = fmul float %2, %58
  %65 = fadd float %61, %63                       ; 2 uses
  %66 = fsub float %62, %64                       ; 2 uses
  %67 = insertelement <4 x float> %i.ab, float %66, i64 3
  %i.ad = fmul <4 x float> %67, %i.y
  store <4 x float> %i.ad, ptr %59, align 4, !tbaa !23
  %68 = insertelement <2 x float> poison, float %66, i64 0
  %i.ae = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.a, %i.ae            ; 2 uses
  %69 = insertelement <2 x float> poison, float %65, i64 0
  %i.ag = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.b, %i.ag            ; 2 uses
  %i.ai = fsub <2 x float> %i.af, %i.ah
  %i.aj = fadd <2 x float> %i.af, %i.ah
  %i.ak = insertelement <4 x float> %4, float %65, i64 0
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.an = shufflevector <4 x float> %i.y, <4 x float> <float poison, float f0xBF333334, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 poison, i32 poison>
  %i.ao = insertelement <4 x float> poison, float %i.c, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.aq = shufflevector <4 x float> %i.an, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ar = fmul <4 x float> %i.am, %i.aq
  store <4 x float> %i.ar, ptr %i.ac, align 4, !tbaa !23
  %i.as = fmul float %0, f0xBF666666
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.as, ptr %i.at, align 4, !tbaa !88
  %i.au = call ptr @b3CreateHull(ptr noundef nonnull %1, i32 noundef 10, i32 noundef 10)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret ptr %i.au
}

declare <2 x float> @b3ComputeCosSin(float noundef) local_unnamed_addr #4

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.b3Matrix3, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sext i32 %i.b to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %.0.i = select i1 %i.c, ptr null, ptr %i.g      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !71
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, %i.d
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = sext i32 %i.n to i64
  %i.q = add nsw i64 %i.p, %i.d
  %i.r = inttoptr i64 %i.q to ptr                 ; 3 uses
  %.0.i302 = select i1 %i.o, ptr null, ptr %i.r   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22   ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = sext i32 %i.t to i64
  %i.w = add nsw i64 %i.v, %i.d
  %i.x = inttoptr i64 %i.w to ptr
  %.0.i303 = select i1 %i.u, ptr null, ptr %i.x
  %.sroa.0243.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !23 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.ab = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = insertelement <4 x float> %i.ab, float -0.000000e+00, i64 3
  %i.ad = insertelement <4 x float> %i.ac, float %.sroa.7.0.copyload, i64 2
  %i.ae = fadd <4 x float> %i.ad, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  br label %._crit_edge476

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.af = insertelement <2 x float> %.sroa.0243.0.copyload, float %.sroa.7.0.copyload, i64 0 ; 3 uses
  %i.ag = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.ah = fmul <2 x float> %i.eq, splat (float f0xBC088889)
  %i.ai = fmul float %i.es, f0xBC088889
  %i.aj = extractelement <4 x float> %i.ef, i64 3 ; 2 uses
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00      ; 2 uses
  %i.al = fdiv float 2.500000e-01, %i.aj          ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.dx, %i.an
  %i.ap = extractelement <2 x float> %i.dz, i64 0
  %i.aq = fmul float %i.ap, %i.al
  %.sroa.6.0 = select i1 %i.ak, float %i.aq, float 0.000000e+00 ; 2 uses
  %.sroa.026.0 = select i1 %i.ak, <2 x float> %i.ao, <2 x float> zeroinitializer ; 2 uses
  %i.ar = shufflevector <2 x float> %.sroa.0243.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.as = insertelement <4 x float> %i.ar, float %.sroa.7.0.copyload, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ai, i64 3
  %i.au = shufflevector <2 x float> %.sroa.026.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float -0.000000e+00, i64 3
  %i.aw = insertelement <4 x float> %i.av, float %.sroa.6.0, i64 2
  %i.ax = fadd <4 x float> %i.at, %i.aw           ; 3 uses
  %wide.trip.count491 = zext nneg i32 %i.z to i64
  %i.ay = extractelement <4 x float> %i.ax, i64 0
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = extractelement <2 x float> %i.dz, i64 1
  br label %.lr.ph475

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.sroa.0247.0459 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.dx, %bb.d ]
  %.0294453 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.es, %bb.d ]
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ef, %bb.d ]
  %i.bc = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.eq, %bb.d ]
  %i.bd = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.dz, %bb.d ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !84  ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0.i302, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !80
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !82
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %i.bo ; 2 uses
  %.sroa.0188.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 2 uses
  %.sroa.2189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2189.0.copyload = load float, ptr %.sroa.2189.0..sroa_idx, align 4
  %foldExtExtBinop = fsub <2 x float> %.sroa.0188.0.copyload, %.sroa.0243.0.copyload ; 6 uses
  %i.bq = insertelement <2 x float> %.sroa.0188.0.copyload, float %.sroa.2189.0.copyload, i64 0
  %i.br = fsub <2 x float> %i.bq, %i.af           ; 10 uses
  %foldExtExtBinop558 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bs = fmul <2 x float> %i.br, %i.br
  %i.bt = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bt, %i.br
  %shift = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop560 = fmul <2 x float> %shift, %i.br
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3> ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.in = phi i8 [ %i.bl, %bb.b ], [ %i.et, %bb.c ]
  %i.bx = phi i64 [ %i.bj, %bb.b ], [ %.pn, %bb.c ]
  %.1295 = phi float [ %.0294453, %bb.b ], [ %i.es, %bb.c ]
  %.sroa.0247.1 = phi <2 x float> [ %.sroa.0247.0459, %bb.b ], [ %i.dx, %bb.c ]
  %i.by = phi <4 x float> [ %i.bb, %bb.b ], [ %i.ef, %bb.c ]
  %i.bz = phi <2 x float> [ %i.bc, %bb.b ], [ %i.eq, %bb.c ]
  %i.ca = phi <2 x float> [ %i.bd, %bb.b ], [ %i.dz, %bb.c ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bx
  %.pn = zext i8 %.pn.in to i64                   ; 2 uses
  %.0298 = getelementptr inbounds nuw [4 x i8], ptr %.0.i302, i64 %.pn ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !82
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %i.ce ; 2 uses
  %.sroa.0160.0.copyload = load <2 x float>, ptr %i.cf, align 4 ; 2 uses
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.2161.0.copyload = load float, ptr %.sroa.2161.0..sroa_idx, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.0298, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !82
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %i.ci ; 2 uses
  %.sroa.0133.0.copyload = load <2 x float>, ptr %i.cj, align 4 ; 2 uses
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2134.0.copyload = load float, ptr %.sroa.2134.0..sroa_idx, align 4
  %i.ck = insertelement <2 x float> %.sroa.0160.0.copyload, float %.sroa.2161.0.copyload, i64 0
  %i.cl = fsub <2 x float> %i.ck, %i.af           ; 11 uses
  %i.cm = insertelement <2 x float> %.sroa.0133.0.copyload, float %.sroa.2134.0.copyload, i64 0
  %i.cn = fsub <2 x float> %i.cm, %i.af           ; 11 uses
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fmul <2 x float> %i.co, %i.cn           ; 2 uses
  %shift562 = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop563 = fsub <2 x float> %i.cp, %shift562
  %i.cq = fadd <2 x float> %i.cl, %i.cn
  %i.cr = fadd <2 x float> %i.br, %i.cq           ; 7 uses
  %i.cs = fmul <2 x float> %i.cl, %i.cl
  %i.ct = fadd <2 x float> %i.bs, %i.cs
  %i.cu = fmul <2 x float> %i.cn, %i.cn
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = fmul <2 x float> %i.cr, %i.cr
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %foldExtExtBinop565 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop563
  %i.cy = shufflevector <2 x float> %.sroa.0160.0.copyload, <2 x float> %.sroa.0133.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cz = fsub <2 x float> %i.cy, %i.ag           ; 10 uses
  %i.da = fmul <2 x float> %i.cz, %i.cz           ; 2 uses
  %foldExtExtBinop567 = fadd <2 x float> %foldExtExtBinop558, %i.da
  %shift569 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop570 = fadd <2 x float> %foldExtExtBinop567, %shift569
  %i.db = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.dc = fmul <2 x float> %i.cz, %i.db
  %i.dd = shufflevector <2 x float> %i.cn, <2 x float> %i.cl, <2 x i32> <i32 3, i32 0>
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = fsub <2 x float> %i.dc, %i.df
  %i.dh = fmul <2 x float> %i.br, %i.dg           ; 2 uses
  %shift572 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop573 = fadd <2 x float> %foldExtExtBinop565, %shift572
  %shift575 = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop576 = fadd <2 x float> %i.cz, %shift575
  %foldExtExtBinop578 = fadd <2 x float> %i.dh, %foldExtExtBinop573 ; 5 uses
  %i.di = shufflevector <2 x float> %foldExtExtBinop578, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop580 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop576 ; 4 uses
  %foldExtExtBinop582 = fmul <2 x float> %foldExtExtBinop580, %foldExtExtBinop580
  %foldExtExtBinop584 = fadd <2 x float> %foldExtExtBinop570, %foldExtExtBinop582
end_hunk_0
