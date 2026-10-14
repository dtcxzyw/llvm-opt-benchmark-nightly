Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance_joint?download=true
inline.NumInlined: 143
inline.NumDeleted: 17
begin_hunk_0_@b3DistanceJoint_SetLength:bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = call float @b3GetLengthUnitsPerMeter() #8
  %i.j = fmul float %i.i, 5.000000e-03            ; 2 uses
  %i.k = call float @b3GetLengthUnitsPerMeter() #8
  %i.l = fmul float %i.k, 1.000000e+05            ; 2 uses
  %i.m = fcmp olt float %1, %i.j
  %i.n = fcmp olt float %i.l, %1
  %i.o = select i1 %i.n, float %i.l, float %1
  %i.p = select i1 %i.m, float %i.j, float %i.o
  store float %i.p, ptr %i.h, align 4, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 220
  store <2 x float> zeroinitializer, ptr %i.q, align 4, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !75
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b3GetWorld(i32 noundef) local_unnamed_addr #2

declare void @b3RecWrite_DistanceJointSetLength(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @b3GetJointSimCheckType(i64, i32 noundef) local_unnamed_addr #2

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetLength(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load float, ptr %i.b, align 4, !tbaa !73
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_EnableLimit(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointEnableLimit, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b3RecWrite_DistanceJointEnableLimit(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 297
  store i8 %i.a, ptr %i.j, align 1, !tbaa !78
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @b3RecWrite_DistanceJointEnableLimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3DistanceJoint_IsLimitEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 297
  %i.c = load i8, ptr %i.b, align 1, !tbaa !79, !range !80, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetLengthRange(i64 %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3RecArgs_DistanceJointSetLengthRange, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %i.g, align 4, !tbaa !84
  call void @b3RecWrite_DistanceJointSetLengthRange(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8 ; 4 uses
  %i.i = call float @b3GetLengthUnitsPerMeter() #8
  %i.j = fmul float %i.i, 5.000000e-03            ; 2 uses
  %i.k = call float @b3GetLengthUnitsPerMeter() #8
  %i.l = fmul float %i.k, 1.000000e+05            ; 2 uses
  %i.m = fcmp olt float %1, %i.j
  %i.n = fcmp olt float %i.l, %1
  %i.o = select i1 %i.n, float %i.l, float %1
  %i.p = select i1 %i.m, float %i.j, float %i.o   ; 4 uses
  %i.q = call float @b3GetLengthUnitsPerMeter() #8
  %i.r = fmul float %i.q, 5.000000e-03            ; 2 uses
  %i.s = call float @b3GetLengthUnitsPerMeter() #8
  %i.t = fmul float %i.s, 1.000000e+05            ; 2 uses
  %i.u = fcmp olt float %2, %i.r
  %i.v = fcmp olt float %i.t, %2
  %i.w = select i1 %i.v, float %i.t, float %2
  %i.x = select i1 %i.u, float %i.r, float %i.w   ; 4 uses
  %i.y = fcmp olt float %i.p, %i.x
  %i.z = select i1 %i.y, float %i.p, float %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 204
  store float %i.z, ptr %i.aa, align 4, !tbaa !85
  %i.ab = fcmp ogt float %i.p, %i.x
  %i.ac = select i1 %i.ab, float %i.p, float %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store float %i.ac, ptr %i.ad, align 4, !tbaa !86
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 220
  store <2 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  store float 0.000000e+00, ptr %i.af, align 4, !tbaa !75
  ret void
}

declare void @b3RecWrite_DistanceJointSetLengthRange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMinLength(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.c = load float, ptr %i.b, align 4, !tbaa !85
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMaxLength(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load float, ptr %i.b, align 4, !tbaa !86
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetCurrentLength(i64 %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.b3Transform, align 8        ; 8 uses
  %2 = alloca %struct.b3Transform, align 8        ; 8 uses
  %.sroa.232.0.extract.shift = lshr i64 %0, 32
  %.sroa.232.0.extract.trunc = trunc nuw i64 %.sroa.232.0.extract.shift to i32
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8 ; 6 uses
  %i.b = and i32 %.sroa.232.0.extract.trunc, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #8 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %1, ptr noundef nonnull %i.c, i32 noundef %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !92
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef nonnull %i.c, i32 noundef %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.i, align 4 ; 5 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 5 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %i.k, i64 1
  %i.n = load float, ptr %1, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load <4 x float>, ptr %i.q, align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.r, align 4 ; 5 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = load <2 x float>, ptr %i.u, align 4      ; 5 uses
  %.sroa.011.4.vec.extract.i.i.i36 = extractelement <2 x float> %i.t, i64 1
  %i.w = load float, ptr %2, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = load <4 x float>, ptr %i.x, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load <4 x float>, ptr %i.y, align 8
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.z = fmul float %.sroa.221.0.copyload, %.sroa.011.4.vec.extract.i.i.i
  %shift = shufflevector <2 x float> %.sroa.020.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.m
  %i.aa = shufflevector <2 x float> %i.m, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul <2 x float> %.sroa.020.0.copyload, %i.aa ; 2 uses
  %i.ac = shufflevector <2 x float> %.sroa.020.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ad = insertelement <2 x float> %i.ac, float %.sroa.221.0.copyload, i64 0 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.k            ; 2 uses
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x float> %i.af, float %i.z, i64 0
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.aj = fsub <2 x float> %i.ag, %i.ai
  %i.ak = fsub <2 x float> %i.ab, %i.ae
  %i.al = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.am = fmul <2 x float> %.sroa.020.0.copyload, %i.al
  %i.an = insertelement <2 x float> %i.ac, float %.sroa.221.0.copyload, i64 1
  %i.ao = fmul <2 x float> %i.an, %i.al
  %i.ap = fadd <2 x float> %i.am, %i.aj           ; 2 uses
  %i.aq = fadd <2 x float> %i.ao, %i.ak           ; 2 uses
  %i.ar = fmul <2 x float> %i.k, %i.aq
  %i.as = shufflevector <2 x float> %i.k, <2 x float> %i.m, <2 x i32> <i32 1, i32 2>
  %i.at = fmul <2 x float> %i.as, %i.ap
  %i.au = fsub <2 x float> %i.ar, %i.at
  %i.av = fmul <2 x float> %i.au, splat (float 2.000000e+00)
  %i.aw = fadd <2 x float> %i.ad, %i.av
  %i.ax = insertelement <2 x float> %4, float %i.n, i64 1
  %i.ay = fadd <2 x float> %i.ax, %i.aw
  %i.az = fmul float %.sroa.213.0.copyload, %.sroa.011.4.vec.extract.i.i.i36
  %shift49 = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fmul <2 x float> %shift49, %i.v
  %i.ba = shufflevector <2 x float> %i.v, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.bb = fmul <2 x float> %.sroa.012.0.copyload, %i.ba ; 2 uses
  %i.bc = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bd = insertelement <2 x float> %i.bc, float %.sroa.213.0.copyload, i64 0 ; 2 uses
  %i.be = fmul <2 x float> %i.bd, %i.t            ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x float> %i.bf, float %i.az, i64 0
  %i.bh = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = shufflevector <2 x float> %foldExtExtBinop50, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.bj = fsub <2 x float> %i.bg, %i.bi
  %i.bk = fsub <2 x float> %i.bb, %i.be
  %i.bl = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bm = fmul <2 x float> %.sroa.012.0.copyload, %i.bl
  %i.bn = insertelement <2 x float> %i.bc, float %.sroa.213.0.copyload, i64 1
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = fadd <2 x float> %i.bm, %i.bj           ; 2 uses
  %i.bq = fadd <2 x float> %i.bo, %i.bk           ; 2 uses
  %i.br = fmul <2 x float> %i.t, %i.bq
  %i.bs = shufflevector <2 x float> %i.t, <2 x float> %i.v, <2 x i32> <i32 1, i32 2>
  %i.bt = fmul <2 x float> %i.bs, %i.bp
  %i.bu = fsub <2 x float> %i.br, %i.bt
  %i.bv = fmul <2 x float> %i.bu, splat (float 2.000000e+00)
  %i.bw = fadd <2 x float> %i.bd, %i.bv
  %i.bx = shufflevector <2 x float> %i.v, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x float> %i.bp, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.t, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.cb = shufflevector <2 x float> %i.bq, <2 x float> %i.aq, <2 x i32> <i32 1, i32 3>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = fsub <2 x float> %i.bz, %i.cc
  %i.ce = fmul <2 x float> %i.cd, splat (float 2.000000e+00)
  %i.cf = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> %.sroa.020.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cg = fadd <2 x float> %i.cf, %i.ce
  %i.ch = insertelement <2 x float> %6, float %i.p, i64 1
  %i.ci = fadd <2 x float> %i.ch, %i.cg           ; 2 uses
  %i.cj = insertelement <2 x float> %8, float %i.w, i64 1
  %i.ck = fadd <2 x float> %i.cj, %i.bw
  %shift52 = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x float> %i.ci, %shift52 ; 2 uses
  %i.cl = fsub <2 x float> %i.ck, %i.ay           ; 2 uses
  %foldExtExtBinop55 = fmul <2 x float> %foldExtExtBinop53, %foldExtExtBinop53
  %i.cm = fmul <2 x float> %i.cl, %i.cl           ; 2 uses
  %shift57 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop58 = fadd <2 x float> %shift57, %foldExtExtBinop55
  %foldExtExtBinop60 = fadd <2 x float> %i.cm, %foldExtExtBinop58
  %i.cn = extractelement <2 x float> %foldExtExtBinop60, i64 0
  %sqrt.i = call float @llvm.sqrt.f32(float %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %sqrt.i, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

declare ptr @b3GetUnlockedWorld(i32 noundef) local_unnamed_addr #2

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_EnableSpring(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointEnableSpring, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b3RecWrite_DistanceJointEnableSpring(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  store i8 %i.a, ptr %i.j, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointEnableSpring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3DistanceJoint_IsSpringEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.c = load i8, ptr %i.b, align 4, !tbaa !79, !range !80, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetSpringForceRange(i64 %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3RecArgs_DistanceJointSetSpringForceRange, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %i.g, align 4, !tbaa !84
  call void @b3RecWrite_DistanceJointSetSpringForceRange(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 196
  store float %1, ptr %i.i, align 4, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  store float %2, ptr %i.j, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointSetSpringForceRange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_GetSpringForceRange(i64 %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.c = load float, ptr %i.b, align 4, !tbaa !79
  store float %i.c, ptr %1, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.e = load float, ptr %i.d, align 4, !tbaa !79
  store float %i.e, ptr %2, align 4, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetSpringHertz(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointSetSpringHertz, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !70
  call void @b3RecWrite_DistanceJointSetSpringHertz(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  store float %1, ptr %i.h, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointSetSpringHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetSpringDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointSetSpringDampingRatio, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !70
  call void @b3RecWrite_DistanceJointSetSpringDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store float %1, ptr %i.h, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetSpringHertz(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.c = load float, ptr %i.b, align 4, !tbaa !93
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load float, ptr %i.b, align 4, !tbaa !94
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_EnableMotor(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointEnableMotor, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b3RecWrite_DistanceJointEnableMotor(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 298 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !79, !range !80, !noundef !81
  %.not7 = icmp eq i8 %i.k, %i.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.a, ptr %i.j, align 2, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @b3RecWrite_DistanceJointEnableMotor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3DistanceJoint_IsMotorEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 298
  %i.c = load i8, ptr %i.b, align 2, !tbaa !79, !range !80, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetMotorSpeed(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointSetMotorSpeed, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !70
  call void @b3RecWrite_DistanceJointSetMotorSpeed(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  store float %1, ptr %i.h, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointSetMotorSpeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMotorSpeed(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load float, ptr %i.b, align 4, !tbaa !79
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMotorForce(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.f = load float, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.h = load float, ptr %i.g, align 4, !tbaa !79
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetMaxMotorForce(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointSetMaxMotorForce, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !70
  call void @b3RecWrite_DistanceJointSetMaxMotorForce(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  store float %1, ptr %i.h, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointSetMaxMotorForce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMaxMotorForce(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.c = load float, ptr %i.b, align 4, !tbaa !79
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetDistanceJointForce(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3Transform, align 8        ; 7 uses
  %3 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !91
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !92
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef %0, i32 noundef %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.e, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 4 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %i.g, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.l, align 4 ; 4 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = load <2 x float>, ptr %i.m, align 4      ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = load <2 x float>, ptr %i.o, align 4      ; 4 uses
  %.sroa.011.0.vec.extract.i.i.i58 = extractelement <2 x float> %i.n, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load <4 x float>, ptr %i.q, align 8
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.034.0.copyload, %i.i
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %.sroa.235.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.t = fsub float %i.r, %i.s
  %i.u = shufflevector <2 x float> %.sroa.034.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.v = insertelement <2 x float> %i.u, float %.sroa.235.0.copyload, i64 1 ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.g
  %i.x = shufflevector <2 x float> %i.g, <2 x float> %i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.y = fmul <2 x float> %.sroa.034.0.copyload, %i.x
  %i.z = fsub <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = insertelement <2 x float> %i.u, float %.sroa.235.0.copyload, i64 0
  %i.ab = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = fmul <2 x float> %i.v, %i.ab
  %i.ae = fadd <2 x float> %i.ac, %i.z            ; 2 uses
  %i.af = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x float> %i.af, float %i.t, i64 0
  %i.ah = fadd <2 x float> %i.ad, %i.ag           ; 2 uses
  %i.ai = fmul <2 x float> %i.x, %i.ae
  %i.aj = shufflevector <2 x float> %i.i, <2 x float> %i.g, <2 x i32> <i32 0, i32 2>
  %i.ak = fmul <2 x float> %i.aj, %i.ah
  %i.al = fsub <2 x float> %i.ai, %i.ak
  %i.am = fmul <2 x float> %i.al, splat (float 2.000000e+00)
  %i.an = fadd <2 x float> %.sroa.034.0.copyload, %i.am
  %i.ao = load <2 x float>, ptr %2, align 8, !tbaa !74
  %i.ap = fadd <2 x float> %i.ao, %i.an
  %foldExtExtBinop69 = fmul <2 x float> %.sroa.026.0.copyload, %i.p
  %i.aq = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.ar = fmul float %.sroa.227.0.copyload, %.sroa.011.0.vec.extract.i.i.i58
  %i.as = fsub float %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %.sroa.026.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.au = insertelement <2 x float> %i.at, float %.sroa.227.0.copyload, i64 1 ; 2 uses
  %i.av = fmul <2 x float> %i.au, %i.n
  %i.aw = shufflevector <2 x float> %i.n, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ax = fmul <2 x float> %.sroa.026.0.copyload, %i.aw
  %i.ay = fsub <2 x float> %i.av, %i.ax           ; 2 uses
  %i.az = insertelement <2 x float> %i.at, float %.sroa.227.0.copyload, i64 0
  %i.ba = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = fmul <2 x float> %i.au, %i.ba
  %i.bd = fadd <2 x float> %i.bb, %i.ay           ; 2 uses
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x float> %i.be, float %i.as, i64 0
  %i.bg = fadd <2 x float> %i.bc, %i.bf           ; 2 uses
  %i.bh = fmul <2 x float> %i.aw, %i.bd
  %i.bi = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.bj = fmul <2 x float> %i.bi, %i.bg
  %i.bk = fsub <2 x float> %i.bh, %i.bj
  %i.bl = fmul <2 x float> %i.bk, splat (float 2.000000e+00)
  %i.bm = fadd <2 x float> %.sroa.026.0.copyload, %i.bl
  %i.bn = load <2 x float>, ptr %3, align 8, !tbaa !74
  %i.bo = fadd <2 x float> %i.bn, %i.bm
  %i.bp = shufflevector <2 x float> %i.n, <2 x float> %i.g, <2 x i32> <i32 0, i32 2>
  %i.bq = shufflevector <2 x float> %i.bg, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.br = fmul <2 x float> %i.bp, %i.bq
  %i.bs = shufflevector <2 x float> %i.n, <2 x float> %i.g, <2 x i32> <i32 1, i32 3>
  %i.bt = shufflevector <2 x float> %i.bd, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fsub <2 x float> %i.br, %i.bu
  %i.bw = fmul <2 x float> %i.bv, splat (float 2.000000e+00)
  %i.bx = insertelement <2 x float> poison, float %.sroa.227.0.copyload, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %.sroa.235.0.copyload, i64 1
  %i.bz = fadd <2 x float> %i.by, %i.bw
  %i.ca = insertelement <2 x float> %5, float %i.k, i64 1
  %i.cb = fadd <2 x float> %i.ca, %i.bz           ; 2 uses
  %i.cc = fsub <2 x float> %i.bo, %i.ap           ; 3 uses
  %shift = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop71 = fsub <2 x float> %i.cb, %shift ; 3 uses
  %i.cd = fmul <2 x float> %i.cc, %i.cc           ; 2 uses
  %shift73 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x float> %i.cd, %shift73
  %foldExtExtBinop76 = fmul <2 x float> %foldExtExtBinop71, %foldExtExtBinop71
  %foldExtExtBinop78 = fadd <2 x float> %foldExtExtBinop76, %foldExtExtBinop74
  %i.ce = extractelement <2 x float> %foldExtExtBinop78, i64 0 ; 2 uses
  %i.cf = fcmp ogt float %i.ce, f0x057A0000
  br i1 %i.cf, label %bb.b, label %b3Normalize.exit

bb.b:                                             ; preds = %bb.a
  %i.cg = extractelement <2 x float> %foldExtExtBinop71, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.ce)
  %i.ch = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.cc, %i.cj
  %i.cl = fmul float %i.cg, %i.ch
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.018.0.i = phi <2 x float> [ %i.ck, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.cl, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.cn = load <2 x float>, ptr %i.cm, align 4, !tbaa !74
  %i.co = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !75
  %i.cr = fsub float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !97
  %i.cu = fadd float %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !95
  %i.cx = fmul float %i.cu, %i.cw                 ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %.sroa.018.0.i, %i.cz
  %i.db = fmul float %.sroa.5.0.i, %i.cx
  %.fca.0.insert.i66 = insertvalue { <2 x float>, float } poison, <2 x float> %i.da, 0
  %.fca.1.insert.i67 = insertvalue { <2 x float>, float } %.fca.0.insert.i66, float %i.db, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret { <2 x float>, float } %.fca.1.insert.i67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3PrepareDistanceJoint(ptr nofree noundef captures(none) initializes((72, 152), (236, 296)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [128 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [128 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 3920
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !125  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !127  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !127  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !128  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !128  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [216 x i8], ptr %i.aa, i64 %i.ab ; 13 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !136
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [216 x i8], ptr %i.ad, i64 %i.ae ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !138 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !74 ; 2 uses
  %.sroa.6285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %.sroa.7288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 156
  %.sroa.9294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 164
  %.sroa.10297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %.sroa.12303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.al = load float, ptr %i.ak, align 4, !tbaa !138 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !74 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 156
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 172
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.6285.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.7288.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.9294.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.10297.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.12303.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.6.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.7.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.11.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.12.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.as = icmp eq i32 %i.p, 2
  %i.at = select i1 %i.as, i32 %i.x, i32 -1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.av = icmp eq i32 %i.t, 2
  %i.aw = select i1 %i.av, i32 %i.z, i32 -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %.sroa.0123.0.copyload = load <2 x float>, ptr %i.ba, align 4
  %.sroa.2124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2124.0.copyload = load float, ptr %.sroa.2124.0..sroa_idx, align 4
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.bd = load <4 x float>, ptr %.sroa.6285.0..sroa_idx, align 4, !tbaa !74 ; 3 uses
  %.sroa.9294.0.copyload = load float, ptr %.sroa.9294.0..sroa_idx, align 4, !tbaa !74
  %i.be = load <2 x float>, ptr %.sroa.10297.0..sroa_idx, align 4, !tbaa !74 ; 2 uses
  %.sroa.12303.0.copyload = load float, ptr %.sroa.12303.0..sroa_idx, align 4, !tbaa !74 ; 2 uses
  %i.bf = extractelement <4 x float> %i.bd, i64 0
  %i.bg = shufflevector <2 x float> %.sroa.0123.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 0, i32 7>
  %i.bi = insertelement <4 x float> %i.bh, float %.sroa.2124.0.copyload, i64 0
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %.sroa.0105.0.copyload = load <2 x float>, ptr %i.bl, align 4
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.2106.0.copyload = load float, ptr %.sroa.2106.0..sroa_idx, align 4
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bo = load <4 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !74 ; 3 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !74 ; 2 uses
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !74 ; 2 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 0
  %i.bq = load <4 x float>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !74 ; 2 uses
  %i.br = load <2 x float>, ptr %.sroa.7288.0..sroa_idx, align 4, !tbaa !74
  store float %i.ah, ptr %i.ao, align 4, !tbaa !111
  store float %i.al, ptr %i.ap, align 4, !tbaa !112
  store <2 x float> %i.aj, ptr %i.aq, align 4, !tbaa !74
  store float %i.bf, ptr %.sroa.6285.0..sroa_idx286, align 4, !tbaa !74
  store <2 x float> %i.br, ptr %.sroa.7288.0..sroa_idx289, align 4, !tbaa !74
  store float %.sroa.9294.0.copyload, ptr %.sroa.9294.0..sroa_idx295, align 4, !tbaa !74
  store <2 x float> %i.be, ptr %.sroa.10297.0..sroa_idx298, align 4, !tbaa !74
  store float %.sroa.12303.0.copyload, ptr %.sroa.12303.0..sroa_idx304, align 4, !tbaa !74
  store <2 x float> %i.an, ptr %i.ar, align 4, !tbaa !74
  store float %i.bp, ptr %.sroa.6.0..sroa_idx266, align 4, !tbaa !74
  store <4 x float> %i.bq, ptr %.sroa.7.0..sroa_idx268, align 4, !tbaa !74
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx276, align 4, !tbaa !74
  store float %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx278, align 4, !tbaa !74
  store i32 %i.at, ptr %i.au, align 4, !tbaa !113
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !114
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.bb, align 4
  %.sroa.2122.0.copyload = load float, ptr %.sroa.2122.0..sroa_idx, align 4
  %i.bs = shufflevector <2 x float> %.sroa.0121.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 0, i32 7>
  %i.bu = insertelement <4 x float> %i.bt, float %.sroa.2122.0.copyload, i64 0
  %i.bv = fsub <4 x float> %i.bi, %i.bu           ; 6 uses
  %i.bw = load <2 x float>, ptr %i.az, align 4    ; 5 uses
  %i.bx = load <2 x float>, ptr %i.bc, align 4    ; 5 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %i.bx, i64 0
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = extractelement <4 x float> %i.bv, i64 0
  %i.ca = extractelement <4 x float> %i.bv, i64 2
  %i.cb = fmul float %i.ca, %.sroa.3.8.vec.extract.i
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %i.bw, i64 0
  %i.cc = fmul float %i.bz, %.sroa.011.0.vec.extract.i.i
  %i.cd = fsub float %i.cb, %i.cc
  %i.ce = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cf = fmul <2 x float> %i.ce, %i.by
  %i.cg = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ch = shufflevector <2 x float> %i.bx, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> %i.cf, %i.ci
  %i.ck = shufflevector <4 x float> %i.bv, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.cl = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 1.000000e+00, i64 3
  %i.cn = fmul <4 x float> %i.ck, %i.cm
  %i.co = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cd, i64 0
  %i.cp = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cr = fadd <4 x float> %i.cn, %i.cq           ; 2 uses
  %i.cs = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 1.000000e+00, i64 3
end_hunk_0
begin_hunk_1_@b3SolveDistanceJoint:bb.a
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !86 ; 2 uses
  %i.ed = fcmp olt float %i.ea, %i.ec
  br i1 %i.ed, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !78, !range !80, !noundef !81
  %i.eg = icmp eq i8 %i.ef, 0
  br i1 %i.eg, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !93
  %i.ej = fcmp ogt float %i.ei, 0.000000e+00
  %i.ek = insertelement <4 x float> poison, float %.sroa.19865.0.copyload, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %.sroa.19893.0.copyload, i64 1
  %i.em = insertelement <4 x float> %i.el, float %.sroa.19879.0.copyload, i64 2
  %i.en = insertelement <4 x float> %i.em, float %.sroa.19.0.copyload, i64 3 ; 3 uses
  br i1 %i.ej, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.eo = load float, ptr %i.n, align 4, !tbaa !73
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !140
  %i.er = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.es = insertelement <4 x float> %i.er, float -0.000000e+00, i64 3
  %i.et = insertelement <4 x float> %i.es, float %.sroa.19.0.copyload, i64 1
  %i.eu = shufflevector <4 x float> %i.cu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ev = fmul <4 x float> %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ex = insertelement <4 x float> %i.ew, float 0.000000e+00, i64 3
  %i.ey = insertelement <4 x float> %i.ex, float %.sroa.19.0.copyload, i64 0
  %i.ez = insertelement <4 x float> %i.cu, float 1.000000e+00, i64 3
  %i.fa = fmul <4 x float> %i.ey, %i.ez
  %i.fb = fsub <4 x float> %i.ev, %i.fa
  %i.fc = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> %i.bk, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.fd = insertelement <4 x float> %i.fc, float 0.000000e+00, i64 3
  %i.fe = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ff = insertelement <4 x float> %i.fe, float 1.000000e+00, i64 3
  %i.fg = insertelement <4 x float> %i.ff, float %i.bm, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %.sroa.19879.0.copyload, i64 1 ; 2 uses
  %i.fi = fmul <4 x float> %i.fd, %i.fh
  %i.fj = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> %i.fh, <4 x i32> <i32 5, i32 4, i32 2, i32 poison>
  %i.fl = insertelement <4 x float> %i.fk, float 0.000000e+00, i64 3
  %i.fm = shufflevector <2 x float> %i.bk, <2 x float> %.sroa.0868.0.copyload, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.fn = insertelement <4 x float> %i.fm, float 1.000000e+00, i64 3
  %i.fo = fmul <4 x float> %i.fl, %i.fn
  %i.fp = fsub <4 x float> %i.fi, %i.fo
  %i.fq = fsub <4 x float> %i.fb, %i.fp
  %i.fr = shufflevector <2 x float> %.sroa.0854.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fs = insertelement <4 x float> %i.fr, float %.sroa.19865.0.copyload, i64 2
  %i.ft = insertelement <4 x float> %i.fs, float %sqrt.i, i64 3
  %i.fu = shufflevector <2 x float> %.sroa.0882.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = insertelement <4 x float> %i.fu, float %.sroa.19893.0.copyload, i64 2
  %i.fw = insertelement <4 x float> %i.fv, float %i.eo, i64 3
  %i.fx = fsub <4 x float> %i.ft, %i.fw
  %i.fy = fadd <4 x float> %i.fx, %i.fq
  %i.fz = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float %.sroa.5.0.i, i64 2
  %i.gb = insertelement <4 x float> %i.ga, float %i.eq, i64 3
  %i.gc = fmul <4 x float> %i.fy, %i.gb           ; 4 uses
  %shift1666 = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1667 = fadd <4 x float> %i.gc, %shift1666
  %shift1669 = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1670 = fadd <4 x float> %shift1669, %foldExtExtBinop1667
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !141
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !115
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !142 ; 3 uses
  %i.gj = fneg float %i.gg
  %i.gk = fmul float %i.ge, %i.gj
  %shift1672 = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1673 = fadd <4 x float> %foldExtExtBinop1670, %shift1672
  %i.gl = extractelement <4 x float> %foldExtExtBinop1673, i64 0
  %i.gm = fmul float %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.go = load float, ptr %i.gn, align 4, !tbaa !143
  %i.gp = fmul float %i.gi, %i.go
  %i.gq = fsub float %i.gm, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !116 ; 2 uses
  %i.gt = fadd float %i.gi, %i.gq                 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !144
  %i.gw = fmul float %i.gs, %i.gv                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !145
  %i.gz = fmul float %i.gs, %i.gy                 ; 2 uses
  %i.ha = fcmp olt float %i.gt, %i.gw
  %i.hb = fcmp olt float %i.gz, %i.gt
  %i.hc = select i1 %i.hb, float %i.gz, float %i.gt
  %i.hd = select i1 %i.ha, float %i.gw, float %i.hc ; 2 uses
  store float %i.hd, ptr %i.gh, align 4, !tbaa !142
  %i.he = fsub float %i.hd, %i.gi                 ; 2 uses
  %i.hf = insertelement <4 x float> poison, float %.sroa.5.0.i, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %.sroa.431650.0.copyload, i64 2
  %i.hh = insertelement <4 x float> %i.hg, float %.sroa.43.0.copyload, i64 3
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hj = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hk = shufflevector <4 x float> %i.fj, <4 x float> %i.cu, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.hl = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hm = insertelement <2 x float> %i.hl, float %i.bm, i64 0 ; 2 uses
  %i.hn = shufflevector <4 x float> %i.fj, <4 x float> %i.cu, <2 x i32> <i32 0, i32 6> ; 2 uses
  %i.ho = insertelement <2 x float> poison, float %.sroa.131620.0.copyload, i64 0
  %i.hp = insertelement <2 x float> %i.ho, float %.sroa.13.0.copyload, i64 1
  %i.hq = insertelement <2 x float> poison, float %.sroa.281635.0.copyload, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %.sroa.28.0.copyload, i64 1
  %i.hs = insertelement <2 x float> poison, float %i.he, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %.sroa.018.0.i, %i.ht  ; 5 uses
  %i.hv = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %i.hu
  %i.hx = fsub <2 x float> %.sroa.0882.0.copyload, %i.hw
  %i.hy = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = fmul <2 x float> %i.hn, %i.hy
  %i.ia = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ib = fmul <2 x float> %i.hk, %i.ia
  %i.ic = fsub <2 x float> %i.hz, %i.ib           ; 3 uses
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ie = shufflevector <4 x float> %i.hj, <4 x float> %i.id, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.if = fmul <4 x float> %i.hi, %i.ie           ; 3 uses
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = fmul <2 x float> %i.hk, %i.ig
  %i.ii = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = fmul <2 x float> %i.hm, %i.ii
  %i.ik = fsub <2 x float> %i.ih, %i.ij           ; 3 uses
  %i.il = fmul <2 x float> %i.hm, %i.ia
  %i.im = fmul <2 x float> %i.hn, %i.ig
  %i.in = fsub <2 x float> %i.il, %i.im           ; 3 uses
  %i.io = fmul <2 x float> %i.hp, %i.ik
  %i.ip = fmul <2 x float> %i.hr, %i.in
  %i.iq = fadd <2 x float> %i.io, %i.ip
  %i.ir = shufflevector <2 x float> %i.c, <2 x float> %i.iq, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.is = fadd <4 x float> %i.ir, %i.if
  %i.it = fmul <4 x float> %i.ir, %i.if
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> %i.is, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.iv = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %i.g, %i.iv
  %i.ix = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = fmul <2 x float> %i.f, %i.ix
  %i.iz = fadd <2 x float> %i.iw, %i.iy
  %i.ja = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %i.h, %i.ja
  %i.jc = fadd <2 x float> %i.jb, %i.iz
  %i.jd = fsub <2 x float> %.sroa.0868.0.copyload, %i.jc
  %i.je = insertelement <2 x float> poison, float %i.d, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jf, %i.hu
  %i.jh = fadd <2 x float> %.sroa.0854.0.copyload, %i.jg
  %i.ji = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.j, %i.ji
  %i.jk = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jl = fmul <2 x float> %i.k, %i.jk
  %i.jm = fadd <2 x float> %i.jj, %i.jl
  %i.jn = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jo = fmul <2 x float> %i.l, %i.jn
  %i.jp = fadd <2 x float> %i.jo, %i.jm
  %i.jq = fadd <2 x float> %.sroa.0841.0.copyload, %i.jp
  %i.jr = fadd <4 x float> %i.en, %i.iu
  %i.js = fsub <4 x float> %i.en, %i.iu
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0841.0 = phi <2 x float> [ %i.jq, %bb.h ], [ %.sroa.0841.0.copyload, %bb.g ] ; 4 uses
  %.sroa.0854.0 = phi <2 x float> [ %i.jh, %bb.h ], [ %.sroa.0854.0.copyload, %bb.g ] ; 4 uses
  %.sroa.0868.0 = phi <2 x float> [ %i.jd, %bb.h ], [ %.sroa.0868.0.copyload, %bb.g ] ; 5 uses
  %.sroa.0882.0 = phi <2 x float> [ %i.hx, %bb.h ], [ %.sroa.0882.0.copyload, %bb.g ] ; 4 uses
  %i.ju = phi <4 x float> [ %i.jt, %bb.h ], [ %i.en, %bb.g ] ; 8 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !78, !range !80, !noundef !81
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.jy = shufflevector <2 x float> %.sroa.0868.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1675 = fsub <2 x float> %.sroa.0854.0, %.sroa.0882.0
  %i.jz = extractelement <2 x float> %foldExtExtBinop1675, i64 0
  %i.ka = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 5 uses
  %i.kb = shufflevector <4 x float> %i.cu, <4 x float> %i.ka, <4 x i32> <i32 2, i32 0, i32 poison, i32 4>
  %i.kc = insertelement <4 x float> %i.kb, float %i.bm, i64 2
  %i.kd = shufflevector <2 x float> %.sroa.0841.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ke = shufflevector <4 x float> %i.ju, <4 x float> %i.kd, <4 x i32> <i32 3, i32 4, i32 poison, i32 2>
  %i.kf = shufflevector <2 x float> %.sroa.0868.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.kg = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.kh = fmul <4 x float> %i.kc, %i.kg
  %i.ki = shufflevector <4 x float> %i.cu, <4 x float> %i.ka, <4 x i32> <i32 1, i32 2, i32 5, i32 poison>
  %i.kj = insertelement <4 x float> %i.ki, float %i.bm, i64 3
  %i.kk = shufflevector <4 x float> %i.kd, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> %i.jy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.km = fmul <4 x float> %i.kj, %i.kl
  %i.kn = fsub <4 x float> %i.kh, %i.km           ; 3 uses
  %i.ko = shufflevector <4 x float> %i.cu, <4 x float> %i.ka, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.kp = shufflevector <2 x float> %.sroa.0841.0, <2 x float> %.sroa.0868.0, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> %i.ju, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  %i.kr = fmul <4 x float> %i.ko, %i.kq           ; 4 uses
  %shift1677 = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1678 = fsub <4 x float> %i.kr, %shift1677
  %shift1680 = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop1681 = fsub <4 x float> %i.kr, %shift1680
  %shift1683 = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1684 = fsub <4 x float> %foldExtExtBinop1678, %shift1683
  %i.ks = extractelement <4 x float> %foldExtExtBinop1684, i64 0
  %i.kt = fadd float %i.jz, %i.ks
  %.sroa.04.0.vec.extract.i1174 = extractelement <2 x float> %.sroa.018.0.i, i64 0 ; 2 uses
  %i.ku = fmul float %.sroa.04.0.vec.extract.i1174, %i.kt
  %i.kv = shufflevector <2 x float> %.sroa.0854.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> %i.ju, <2 x i32> <i32 1, i32 4>
  %i.kx = shufflevector <2 x float> %.sroa.0882.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ky = shufflevector <4 x float> %i.kx, <4 x float> %i.ju, <2 x i32> <i32 1, i32 5>
  %i.kz = fsub <2 x float> %i.kw, %i.ky
  %i.la = shufflevector <4 x float> %i.kn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %4 = shufflevector <4 x float> %i.kn, <4 x float> %foldExtExtBinop1681, <2 x i32> <i32 3, i32 6>
  %i.lb = fsub <2 x float> %i.la, %4
  %i.lc = fadd <2 x float> %i.kz, %i.lb
  %i.ld = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.le = insertelement <2 x float> %i.ld, float %.sroa.5.0.i, i64 1 ; 2 uses
  %i.lf = fmul <2 x float> %i.le, %i.lc           ; 2 uses
  %i.lg = extractelement <2 x float> %i.lf, i64 0
  %i.lh = fadd float %i.ku, %i.lg
  %i.li = extractelement <2 x float> %i.lf, i64 1
  %i.lj = fadd float %i.li, %i.lh
  %i.lk = fsub float %sqrt.i, %i.ea               ; 3 uses
  %i.ll = fcmp ogt float %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !146
  %i.lo = fmul float %i.lk, %i.ln
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !147
  %i.lr = fmul float %i.lk, %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !148
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !149
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0991 = phi float [ 0.000000e+00, %bb.k ], [ %i.lv, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.0990 = phi float [ 1.000000e+00, %bb.k ], [ %i.lt, %bb.m ], [ 1.000000e+00, %bb.l ]
  %.0 = phi float [ %i.lo, %bb.k ], [ %i.lr, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.lw = fneg float %.0990
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !115 ; 2 uses
  %i.lz = fmul float %i.ly, %i.lw
  %i.ma = fadd float %i.lj, %.0
  %i.mb = fmul float %i.ma, %i.lz
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !150 ; 3 uses
  %i.me = fmul float %.0991, %i.md
  %i.mf = fsub float %i.mb, %i.me
  %i.mg = fadd float %i.md, %i.mf                 ; 2 uses
  %i.mh = fcmp olt float %i.mg, 0.000000e+00
  %i.mi = select i1 %i.mh, float 0.000000e+00, float %i.mg ; 2 uses
  store float %i.mi, ptr %i.mc, align 4, !tbaa !150
  %i.mj = extractelement <2 x float> %i.bk, i64 0
  %i.mk = fsub float %i.mi, %i.md                 ; 2 uses
  %i.ml = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x float> %.sroa.018.0.i, %i.mm  ; 5 uses
  %i.mo = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mp = fmul <2 x float> %i.mo, %i.mn
  %i.mq = fsub <2 x float> %.sroa.0882.0, %i.mp   ; 3 uses
  %i.mr = shufflevector <4 x float> %i.ka, <4 x float> %i.cu, <2 x i32> <i32 0, i32 6> ; 4 uses
  %i.ms = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mt = fmul <2 x float> %i.mr, %i.ms
  %i.mu = shufflevector <4 x float> %i.ka, <4 x float> %i.cu, <2 x i32> <i32 1, i32 4> ; 4 uses
  %i.mv = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mw = fmul <2 x float> %i.mu, %i.mv
  %i.mx = fsub <2 x float> %i.mt, %i.mw           ; 3 uses
  %i.my = insertelement <4 x float> poison, float %.sroa.5.0.i, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %.sroa.431650.0.copyload, i64 2
  %i.na = insertelement <4 x float> %i.mz, float %.sroa.43.0.copyload, i64 3
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.nc = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.nd = shufflevector <2 x float> %i.mx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ne = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.nf = fmul <4 x float> %i.nb, %i.ne           ; 3 uses
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nh = fmul <2 x float> %i.mu, %i.ng
  %i.ni = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.nj = insertelement <2 x float> %i.ni, float %i.bm, i64 0 ; 4 uses
  %i.nk = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nl = fmul <2 x float> %i.nj, %i.nk
  %i.nm = fsub <2 x float> %i.nh, %i.nl           ; 3 uses
  %i.nn = fmul <2 x float> %i.nj, %i.mv
  %i.no = fmul <2 x float> %i.mr, %i.ng
  %i.np = fsub <2 x float> %i.nn, %i.no           ; 3 uses
  %i.nq = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nr = fmul <2 x float> %i.g, %i.nq
  %i.ns = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x float> %i.f, %i.ns
  %i.nu = fadd <2 x float> %i.nr, %i.nt
  %i.nv = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fmul <2 x float> %i.h, %i.nv
  %i.nx = fadd <2 x float> %i.nw, %i.nu
  %i.ny = fsub <2 x float> %.sroa.0868.0, %i.nx   ; 3 uses
  %i.nz = insertelement <2 x float> poison, float %i.d, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ob = fmul <2 x float> %i.oa, %i.mn
  %i.oc = fadd <2 x float> %.sroa.0854.0, %i.ob   ; 3 uses
  %i.od = insertelement <2 x float> poison, float %.sroa.131620.0.copyload, i64 0
  %i.oe = insertelement <2 x float> %i.od, float %.sroa.13.0.copyload, i64 1 ; 2 uses
  %i.of = fmul <2 x float> %i.oe, %i.nm
  %i.og = insertelement <2 x float> poison, float %.sroa.281635.0.copyload, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %.sroa.28.0.copyload, i64 1 ; 2 uses
  %i.oi = fmul <2 x float> %i.oh, %i.np
  %i.oj = fadd <2 x float> %i.of, %i.oi
  %i.ok = shufflevector <2 x float> %i.c, <2 x float> %i.oj, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.ol = fadd <4 x float> %i.ok, %i.nf
  %i.om = fmul <4 x float> %i.ok, %i.nf
  %i.on = shufflevector <4 x float> %i.om, <4 x float> %i.ol, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.oo = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.op = fmul <2 x float> %i.j, %i.oo
  %i.oq = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.or = fmul <2 x float> %i.k, %i.oq
  %i.os = fadd <2 x float> %i.op, %i.or
  %i.ot = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ou = fmul <2 x float> %i.l, %i.ot
  %i.ov = fadd <2 x float> %i.ou, %i.os
  %i.ow = fadd <2 x float> %.sroa.0841.0, %i.ov   ; 4 uses
  %i.ox = fadd <4 x float> %i.ju, %i.on           ; 2 uses
  %i.oy = fsub <4 x float> %i.ju, %i.on
  %i.oz = shufflevector <4 x float> %i.ox, <4 x float> %i.oy, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 6 uses
  %foldExtExtBinop1686 = fsub <2 x float> %i.mq, %i.oc
  %i.pa = extractelement <2 x float> %foldExtExtBinop1686, i64 0
  %i.pb = extractelement <2 x float> %i.ny, i64 1 ; 2 uses
  %i.pc = fmul float %i.bm, %i.pb
  %i.pd = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.pe = insertelement <4 x float> %i.pd, float %i.bm, i64 2
  %i.pf = shufflevector <2 x float> %i.ny, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pg = shufflevector <4 x float> %i.oz, <4 x float> %i.pf, <4 x i32> <i32 2, i32 2, i32 4, i32 4>
  %i.ph = fmul <4 x float> %i.pe, %i.pg           ; 3 uses
  %i.pi = extractelement <4 x float> %i.ph, i64 0
  %i.pj = fsub float %i.pc, %i.pi
  %i.pk = fmul float %i.mj, %i.pb
  %i.pl = extractelement <2 x float> %i.ow, i64 1
  %i.pm = fmul float %i.dc, %i.pl
  %shift1688 = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1689 = fmul <4 x float> %i.cu, %shift1688
  %i.pn = extractelement <4 x float> %foldExtExtBinop1689, i64 0
  %i.po = fsub float %i.pm, %i.pn
  %i.pp = fsub float %i.pj, %i.po
  %i.pq = fadd float %i.pa, %i.pp
  %i.pr = fmul float %.sroa.04.0.vec.extract.i1174, %i.pq
  %i.ps = shufflevector <2 x float> %i.mq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> %i.oz, <2 x i32> <i32 1, i32 5>
  %i.pu = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.pv = shufflevector <4 x float> %i.pu, <4 x float> %i.oz, <2 x i32> <i32 1, i32 4>
  %i.pw = fsub <2 x float> %i.pt, %i.pv
  %i.px = shufflevector <4 x float> %i.ph, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.py = shufflevector <4 x float> %i.ph, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.pz = insertelement <2 x float> %i.py, float %i.pk, i64 1
  %i.qa = fsub <2 x float> %i.px, %i.pz
  %i.qb = shufflevector <2 x float> %i.ow, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qc = shufflevector <4 x float> %i.oz, <4 x float> %i.qb, <2 x i32> <i32 3, i32 4>
  %i.qd = fmul <2 x float> %i.dh, %i.qc
  %i.qe = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.qf = fmul <2 x float> %i.qe, %i.ow
  %i.qg = fsub <2 x float> %i.qd, %i.qf
  %i.qh = fsub <2 x float> %i.qa, %i.qg
  %i.qi = fadd <2 x float> %i.pw, %i.qh
  %i.qj = fmul <2 x float> %i.le, %i.qi           ; 2 uses
  %i.qk = extractelement <2 x float> %i.qj, i64 0
  %i.ql = fadd float %i.pr, %i.qk
  %i.qm = extractelement <2 x float> %i.qj, i64 1
  %i.qn = fadd float %i.qm, %i.ql
  %i.qo = fsub float %i.ec, %sqrt.i               ; 3 uses
  %i.qp = fcmp ogt float %i.qo, 0.000000e+00
  br i1 %i.qp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !146
  %i.qs = fmul float %i.qo, %i.qr
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br i1 %2, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !147
  %i.qv = fmul float %i.qo, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !148
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.0994 = phi float [ 0.000000e+00, %bb.o ], [ %i.qz, %bb.q ], [ 0.000000e+00, %bb.p ]
  %.0993 = phi float [ 1.000000e+00, %bb.o ], [ %i.qx, %bb.q ], [ 1.000000e+00, %bb.p ]
  %.0992 = phi float [ %i.qs, %bb.o ], [ %i.qv, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.ra = fneg float %.0993
  %i.rb = fmul float %i.ly, %i.ra
  %i.rc = fadd float %i.qn, %.0992
  %i.rd = fmul float %i.rb, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !75 ; 3 uses
  %i.rg = fmul float %.0994, %i.rf
  %i.rh = fsub float %i.rd, %i.rg
  %i.ri = fadd float %i.rf, %i.rh                 ; 2 uses
  %i.rj = fcmp olt float %i.ri, 0.000000e+00
  %i.rk = select i1 %i.rj, float 0.000000e+00, float %i.ri ; 2 uses
  %i.rl = fsub float %i.rk, %i.rf
end_hunk_1
begin_hunk_2_@b3SolveDistanceJoint:bb.a
  %i.xg = fmul float %.sroa.431650.0.copyload, %i.xa
  %i.xh = fadd float %i.xg, %i.xf
  %i.xi = insertelement <2 x float> poison, float %i.ws, i64 0
  %i.xj = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xk = fmul <2 x float> %i.f, %i.xj
  %i.xl = insertelement <2 x float> %i.xc, float %i.wz, i64 0
  %i.xm = fadd <2 x float> %i.xl, %i.xk
  %i.xn = shufflevector <2 x float> %i.xc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xo = shufflevector <2 x float> %foldExtExtBinop1695, <2 x float> %i.xn, <2 x i32> <i32 0, i32 3>
  %i.xp = fadd <2 x float> %i.xo, %i.xm
  %i.xq = fsub <2 x float> %.sroa.0868.1, %i.xp
  %i.xr = fsub float %i.ts, %i.xh
  %i.xs = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xt = fmul <2 x float> %i.xs, %i.wj
  %i.xu = fadd <2 x float> %.sroa.0854.1, %i.xt
  %i.xv = fmul float %i.d, %i.wm
  %i.xw = fadd float %i.tq, %i.xv
  %i.xx = fmul <4 x float> %i.cu, %i.wg
  %i.xy = shufflevector <4 x float> %i.wg, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.xz = fmul <4 x float> %i.cy, %i.xy
  %i.ya = fsub <4 x float> %i.xx, %i.xz           ; 4 uses
  %i.yb = extractelement <4 x float> %i.ya, i64 0 ; 2 uses
  %i.yc = extractelement <2 x float> %i.j, i64 0
  %i.yd = fmul float %i.yc, %i.yb
  %i.ye = extractelement <4 x float> %i.ya, i64 1 ; 2 uses
  %i.yf = extractelement <2 x float> %i.k, i64 0
  %i.yg = fmul float %i.yf, %i.ye
  %i.yh = extractelement <4 x float> %i.ya, i64 2 ; 2 uses
  %i.yi = extractelement <2 x float> %i.l, i64 0
  %i.yj = fmul float %i.yi, %i.yh
  %i.yk = shufflevector <2 x float> %.sroa.0841.1, <2 x float> %i.l, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.yl = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ym = shufflevector <4 x float> %i.yk, <4 x float> %i.yl, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.yn = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.yo = shufflevector <4 x float> %i.ym, <4 x float> %i.yn, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.yp = fmul <4 x float> %i.yo, %i.ya           ; 3 uses
  %i.yq = fmul float %.sroa.13.0.copyload, %i.yb
  %i.yr = fmul float %.sroa.28.0.copyload, %i.ye
  %i.ys = fadd float %i.yq, %i.yr
  %i.yt = fmul float %.sroa.43.0.copyload, %i.yh
  %i.yu = fadd float %i.yt, %i.ys
  %i.yv = shufflevector <4 x float> %i.yp, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yw = insertelement <2 x float> %i.yv, float %i.yd, i64 0
  %i.yx = shufflevector <4 x float> %i.yp, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.yy = insertelement <2 x float> %i.yx, float %i.yg, i64 0
  %i.yz = fadd <2 x float> %i.yw, %i.yy
  %i.za = shufflevector <4 x float> %i.yp, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.zb = insertelement <2 x float> %i.za, float %i.yj, i64 0
  %i.zc = fadd <2 x float> %i.zb, %i.yz
  %i.zd = fadd <2 x float> %.sroa.0841.1, %i.zc
  %i.ze = fadd float %i.tt, %i.yu
  br label %bb.x

bb.u:                                             ; preds = %bb.f, %b3Normalize.exit
  %foldExtExtBinop1697 = fsub <2 x float> %.sroa.0854.0.copyload, %.sroa.0882.0.copyload
  %i.zf = extractelement <2 x float> %foldExtExtBinop1697, i64 0
  %foldExtExtBinop1699 = fsub <2 x float> %.sroa.0854.0.copyload, %.sroa.0882.0.copyload
  %i.zg = fsub float %.sroa.19865.0.copyload, %.sroa.19893.0.copyload
  %.sroa.011.4.vec.extract.i1472 = extractelement <2 x float> %.sroa.0841.0.copyload, i64 1
  %i.zh = fmul float %.sroa.011.4.vec.extract.i1472, %i.dc
  %i.zi = extractelement <4 x float> %i.cu, i64 0
  %i.zj = fmul float %.sroa.19.0.copyload, %i.zi
  %i.zk = fsub float %i.zh, %i.zj
  %.sroa.011.4.vec.extract.i1480 = extractelement <2 x float> %.sroa.0868.0.copyload, i64 1
  %i.zl = fmul float %.sroa.011.4.vec.extract.i1480, %i.bm
  %i.zm = extractelement <2 x float> %i.bk, i64 1
  %i.zn = fmul float %.sroa.19879.0.copyload, %i.zm
  %i.zo = fsub float %i.zl, %i.zn
  %i.zp = fsub float %i.zk, %i.zo
  %i.zq = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zr = insertelement <2 x float> %i.zq, float %.sroa.19.0.copyload, i64 0
  %i.zs = fmul <2 x float> %i.zr, %i.dh
  %i.zt = shufflevector <4 x float> %i.cu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.zu = fmul <2 x float> %.sroa.0841.0.copyload, %i.zt
  %i.zv = fsub <2 x float> %i.zs, %i.zu
  %i.zw = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zx = insertelement <2 x float> %i.zw, float %.sroa.19879.0.copyload, i64 0
  %i.zy = fmul <2 x float> %i.zx, %i.bk
  %i.zz = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aaa = insertelement <2 x float> %i.zz, float %i.bm, i64 0
  %i.aab = fmul <2 x float> %.sroa.0868.0.copyload, %i.aaa
  %i.aac = fsub <2 x float> %i.zy, %i.aab
  %i.aad = fsub <2 x float> %i.zv, %i.aac         ; 2 uses
  %i.aae = fadd float %i.zf, %i.zp
  %shift1701 = shufflevector <2 x float> %foldExtExtBinop1699, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1702 = fadd <2 x float> %shift1701, %i.aad
  %i.aaf = extractelement <2 x float> %i.aad, i64 1
  %i.aag = fadd float %i.zg, %i.aaf
  %.sroa.04.0.vec.extract.i1504 = extractelement <2 x float> %.sroa.018.0.i, i64 0
  %i.aah = fmul float %i.aae, %.sroa.04.0.vec.extract.i1504
  %shift1704 = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1705 = fmul <2 x float> %foldExtExtBinop1702, %shift1704
  %i.aai = extractelement <2 x float> %foldExtExtBinop1705, i64 0
  %i.aaj = fadd float %i.aah, %i.aai
  %i.aak = fmul float %i.aag, %.sroa.5.0.i
  %i.aal = fadd float %i.aak, %i.aaj
  br i1 %2, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aam = load float, ptr %i.n, align 4, !tbaa !73
  %i.aan = fsub float %sqrt.i, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !147
  %i.aaq = fmul float %i.aap, %i.aan
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !148
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !149
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0997 = phi float [ %i.aau, %bb.v ], [ 0.000000e+00, %bb.u ]
  %.0996 = phi float [ %i.aas, %bb.v ], [ 1.000000e+00, %bb.u ]
  %.0995 = phi float [ %i.aaq, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.aav = fneg float %.0996
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !115
  %i.aay = fmul float %i.aax, %i.aav
  %i.aaz = fadd float %i.aal, %.0995
  %i.aba = fmul float %i.aaz, %i.aay
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !142 ; 2 uses
  %i.abd = fmul float %.0997, %i.abc
  %i.abe = extractelement <2 x float> %i.c, i64 0
  %i.abf = extractelement <2 x float> %i.j, i64 0
  %i.abg = extractelement <2 x float> %i.k, i64 0
  %i.abh = extractelement <2 x float> %i.l, i64 0
  %.scalar1707 = fsub float %i.aba, %i.abd        ; 2 uses
  %i.abi = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1707, i64 0
  %i.abj = shufflevector <2 x float> %i.abi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abk = fadd float %i.abc, %.scalar1707
  store float %i.abk, ptr %i.abb, align 4, !tbaa !142
  %i.abl = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.abm = insertelement <4 x float> %i.abl, float 1.000000e+00, i64 3
  %i.abn = insertelement <4 x float> %i.abm, float %.sroa.5.0.i, i64 0
  %i.abo = fmul <4 x float> %i.abn, %i.abj        ; 5 uses
  %i.abp = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abq = shufflevector <4 x float> %i.abo, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.abr = fmul <2 x float> %i.abp, %i.abq
  %i.abs = fsub <2 x float> %.sroa.0882.0.copyload, %i.abr
  %i.abt = extractelement <4 x float> %i.abo, i64 0 ; 2 uses
  %i.abu = fmul float %i.abe, %i.abt
  %i.abv = fsub float %.sroa.19893.0.copyload, %i.abu
  %i.abw = shufflevector <2 x float> %i.bk, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.abx = insertelement <3 x float> %i.abw, float %i.bm, i64 1
  %i.aby = shufflevector <4 x float> %i.abo, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2> ; 2 uses
  %i.abz = fmul <3 x float> %i.abx, %i.aby
  %i.aca = shufflevector <3 x float> %i.abz, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.acb = shufflevector <2 x float> %i.bk, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.acc = insertelement <3 x float> %i.acb, float %i.bm, i64 2
  %i.acd = fmul <3 x float> %i.acc, %i.aby
  %i.ace = fsub <3 x float> %i.aca, %i.acd        ; 6 uses
  %i.acf = shufflevector <3 x float> %i.ace, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.acg = fmul <2 x float> %i.g, %i.acf
  %i.ach = shufflevector <3 x float> %i.ace, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aci = fmul <2 x float> %i.f, %i.ach
  %i.acj = fadd <2 x float> %i.acg, %i.aci
  %i.ack = shufflevector <3 x float> %i.ace, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acl = fmul <2 x float> %i.h, %i.ack
  %i.acm = fadd <2 x float> %i.acl, %i.acj
  %i.acn = extractelement <3 x float> %i.ace, i64 2
  %i.aco = fmul float %.sroa.131620.0.copyload, %i.acn
  %i.acp = extractelement <3 x float> %i.ace, i64 0
  %i.acq = fmul float %.sroa.281635.0.copyload, %i.acp
  %i.acr = fadd float %i.aco, %i.acq
  %i.acs = extractelement <3 x float> %i.ace, i64 1
  %i.act = fmul float %.sroa.431650.0.copyload, %i.acs
  %i.acu = fadd float %i.act, %i.acr
  %i.acv = fsub <2 x float> %.sroa.0868.0.copyload, %i.acm
  %i.acw = fsub float %.sroa.19879.0.copyload, %i.acu
  %i.acx = insertelement <2 x float> poison, float %i.d, i64 0
  %i.acy = shufflevector <2 x float> %i.acx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acz = fmul <2 x float> %i.acy, %i.abq
  %i.ada = fadd <2 x float> %.sroa.0854.0.copyload, %i.acz
  %i.adb = fmul float %i.d, %i.abt
  %i.adc = fadd float %.sroa.19865.0.copyload, %i.adb
  %i.add = insertelement <4 x float> %i.cu, float 1.000000e+00, i64 3
  %i.ade = fmul <4 x float> %i.add, %i.abo
  %i.adf = shufflevector <4 x float> %i.cu, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.adg = shufflevector <4 x float> %i.abo, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.adh = fmul <4 x float> %i.adf, %i.adg
  %i.adi = fsub <4 x float> %i.ade, %i.adh        ; 4 uses
  %i.adj = extractelement <4 x float> %i.adi, i64 0 ; 2 uses
  %i.adk = fmul float %i.abf, %i.adj
  %i.adl = extractelement <4 x float> %i.adi, i64 1 ; 2 uses
  %i.adm = fmul float %i.abg, %i.adl
  %i.adn = fadd float %i.adk, %i.adm
  %i.ado = extractelement <4 x float> %i.adi, i64 2 ; 2 uses
  %i.adp = shufflevector <2 x float> %i.j, <2 x float> %i.k, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.adq = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adr = shufflevector <4 x float> %i.adp, <4 x float> %i.adq, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.ads = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adt = shufflevector <4 x float> %i.adr, <4 x float> %i.ads, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.adu = fmul <4 x float> %i.adt, %i.adi        ; 3 uses
  %i.adv = fmul float %.sroa.13.0.copyload, %i.adj
  %i.adw = fmul float %.sroa.28.0.copyload, %i.adl
  %i.adx = fadd float %i.adv, %i.adw
  %i.ady = fmul float %.sroa.43.0.copyload, %i.ado
  %i.adz = fadd float %i.ady, %i.adx
  %i.aea = fmul float %i.abh, %i.ado
  %shift1708 = shufflevector <4 x float> %i.adu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1709 = fadd <4 x float> %i.adu, %shift1708
  %5 = shufflevector <4 x float> %i.adu, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %6 = insertelement <2 x float> %5, float %i.adn, i64 0
  %7 = insertelement <2 x float> poison, float %i.aea, i64 0
  %8 = shufflevector <4 x float> %foldExtExtBinop1709, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aeb = shufflevector <2 x float> %7, <2 x float> %8, <2 x i32> <i32 0, i32 2>
  %i.aec = fadd <2 x float> %6, %i.aeb
  %i.aed = fadd <2 x float> %.sroa.0841.0.copyload, %i.aec
  %i.aee = fadd float %.sroa.19.0.copyload, %i.adz
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.t, %bb.w
  %.sroa.0841.2 = phi <2 x float> [ %i.zd, %bb.t ], [ %.sroa.0841.1, %bb.s ], [ %i.aed, %bb.w ]
  %.sroa.19.2 = phi float [ %i.ze, %bb.t ], [ %i.tt, %bb.s ], [ %i.aee, %bb.w ]
  %.sroa.0854.2 = phi <2 x float> [ %i.xu, %bb.t ], [ %.sroa.0854.1, %bb.s ], [ %i.ada, %bb.w ]
  %.sroa.19865.2 = phi float [ %i.xw, %bb.t ], [ %i.tq, %bb.s ], [ %i.adc, %bb.w ]
  %.sroa.0868.2 = phi <2 x float> [ %i.xq, %bb.t ], [ %.sroa.0868.1, %bb.s ], [ %i.acv, %bb.w ]
  %.sroa.19879.2 = phi float [ %i.xr, %bb.t ], [ %i.ts, %bb.s ], [ %i.acw, %bb.w ]
  %.sroa.0882.2 = phi <2 x float> [ %i.wl, %bb.t ], [ %.sroa.0882.1, %bb.s ], [ %i.abs, %bb.w ]
  %.sroa.19893.2 = phi float [ %i.wp, %bb.t ], [ %i.tr, %bb.s ], [ %i.abv, %bb.w ]
  %i.aef = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !119
  %i.aeh = and i32 %i.aeg, 4096
  %.not = icmp eq i32 %i.aeh, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store <2 x float> %.sroa.0882.2, ptr %i.v, align 4, !tbaa !74
  store float %.sroa.19893.2, ptr %.sroa.19893.0..sroa_idx, align 4, !tbaa !74
  store <2 x float> %.sroa.0868.2, ptr %i.ae, align 4, !tbaa !74
  store float %.sroa.19879.2, ptr %.sroa.19879.0..sroa_idx, align 4, !tbaa !74
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !119
  %i.aek = and i32 %i.aej, 4096
  %.not1003 = icmp eq i32 %i.aek, 0
  br i1 %.not1003, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store <2 x float> %.sroa.0854.2, ptr %i.ad, align 4, !tbaa !74
  store float %.sroa.19865.2, ptr %.sroa.19865.0..sroa_idx, align 4, !tbaa !74
  store <2 x float> %.sroa.0841.2, ptr %i.af, align 4, !tbaa !74
  store float %.sroa.19.2, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !74
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawDistanceJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0102.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.2103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2103.0.copyload = load float, ptr %.sroa.2103.0..sroa_idx, align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load <2 x float>, ptr %i.c, align 4      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load <2 x float>, ptr %i.e, align 4      ; 4 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %i.d, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.0102.0.copyload, %i.f
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = fmul float %.sroa.2103.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.i = fsub float %i.g, %i.h
  %i.j = shufflevector <2 x float> %.sroa.0102.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = insertelement <2 x float> %i.j, float %.sroa.2103.0.copyload, i64 1 ; 2 uses
  %i.l = fmul <2 x float> %i.k, %i.d
  %i.m = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.n = fmul <2 x float> %.sroa.0102.0.copyload, %i.m
  %i.o = fsub <2 x float> %i.l, %i.n              ; 2 uses
  %i.p = insertelement <2 x float> %i.j, float %.sroa.2103.0.copyload, i64 0
  %i.q = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.r = fmul <2 x float> %i.p, %i.q
  %i.s = fmul <2 x float> %i.k, %i.q
  %i.t = fadd <2 x float> %i.r, %i.o              ; 2 uses
  %i.u = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.v = insertelement <2 x float> %i.u, float %i.i, i64 0
  %i.w = fadd <2 x float> %i.s, %i.v              ; 2 uses
  %i.x = fmul <2 x float> %i.m, %i.t
  %i.y = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 0, i32 2>
  %i.z = fmul <2 x float> %i.y, %i.w
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = fmul <2 x float> %i.aa, splat (float 2.000000e+00)
  %i.ac = fadd <2 x float> %.sroa.0102.0.copyload, %i.ab
  %i.ad = load <2 x float>, ptr %2, align 8, !tbaa !74
  %i.ae = fadd <2 x float> %i.ad, %i.ac           ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load float, ptr %i.af, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.092.0.copyload = load <2 x float>, ptr %i.ah, align 4 ; 4 uses
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.293.0.copyload = load float, ptr %.sroa.293.0..sroa_idx, align 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aj = load <2 x float>, ptr %i.ai, align 4    ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.al = load <2 x float>, ptr %i.ak, align 4    ; 4 uses
  %.sroa.011.0.vec.extract.i.i.i144 = extractelement <2 x float> %i.aj, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load <4 x float>, ptr %i.am, align 8
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %foldExtExtBinop193 = fmul <2 x float> %.sroa.092.0.copyload, %i.al
  %i.an = extractelement <2 x float> %foldExtExtBinop193, i64 0
  %i.ao = fmul float %.sroa.293.0.copyload, %.sroa.011.0.vec.extract.i.i.i144
  %i.ap = fsub float %i.an, %i.ao
  %i.aq = shufflevector <2 x float> %.sroa.092.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ar = insertelement <2 x float> %i.aq, float %.sroa.293.0.copyload, i64 1 ; 2 uses
  %i.as = fmul <2 x float> %i.ar, %i.aj
  %i.at = shufflevector <2 x float> %i.aj, <2 x float> %i.al, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.au = fmul <2 x float> %.sroa.092.0.copyload, %i.at
  %i.av = fsub <2 x float> %i.as, %i.au           ; 2 uses
  %i.aw = insertelement <2 x float> %i.aq, float %.sroa.293.0.copyload, i64 0
  %i.ax = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ay = fmul <2 x float> %i.aw, %i.ax
  %i.az = fmul <2 x float> %i.ar, %i.ax
  %i.ba = fadd <2 x float> %i.ay, %i.av           ; 2 uses
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bc = insertelement <2 x float> %i.bb, float %i.ap, i64 0
  %i.bd = fadd <2 x float> %i.az, %i.bc           ; 2 uses
  %i.be = fmul <2 x float> %i.at, %i.ba
  %i.bf = shufflevector <2 x float> %i.al, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = fsub <2 x float> %i.be, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = fadd <2 x float> %.sroa.092.0.copyload, %i.bi
  %i.bk = load <2 x float>, ptr %3, align 8, !tbaa !74
  %i.bl = fadd <2 x float> %i.bk, %i.bj           ; 3 uses
  %i.bm = shufflevector <2 x float> %i.aj, <2 x float> %i.d, <2 x i32> <i32 0, i32 2>
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.bo = fmul <2 x float> %i.bm, %i.bn
  %i.bp = shufflevector <2 x float> %i.aj, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x float> %i.ba, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.br = fmul <2 x float> %i.bp, %i.bq
  %i.bs = fsub <2 x float> %i.bo, %i.br
  %i.bt = fmul <2 x float> %i.bs, splat (float 2.000000e+00)
  %i.bu = insertelement <2 x float> poison, float %.sroa.293.0.copyload, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %.sroa.2103.0.copyload, i64 1
  %i.bw = fadd <2 x float> %i.bv, %i.bt
  %i.bx = insertelement <2 x float> %5, float %i.ag, i64 1
  %i.by = fadd <2 x float> %i.bx, %i.bw           ; 2 uses
  %i.bz = fsub <2 x float> %i.bl, %i.ae           ; 3 uses
  %i.ca = extractelement <2 x float> %i.by, i64 0 ; 3 uses
  %i.cb = extractelement <2 x float> %i.by, i64 1 ; 6 uses
  %i.cc = fsub float %i.ca, %i.cb                 ; 3 uses
  %i.cd = fmul <2 x float> %i.bz, %i.bz           ; 2 uses
  %shift = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop195 = fadd <2 x float> %i.cd, %shift
  %i.ce = extractelement <2 x float> %foldExtExtBinop195, i64 0
  %i.cf = fmul float %i.cc, %i.cc
  %i.cg = fadd float %i.cf, %i.ce                 ; 2 uses
  %i.ch = fcmp ogt float %i.cg, f0x057A0000
  br i1 %i.ch, label %bb.b, label %b3Normalize.exit

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cg)
  %i.ci = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.bz, %i.ck
  %i.cm = fmul float %i.cc, %i.ci
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.018.0.i = phi <2 x float> [ %i.cl, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.cm, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !85 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !86 ; 3 uses
  %i.cr = fcmp olt float %i.co, %i.cq
  br i1 %i.cr, label %bb.c, label %bb.k

bb.c:                                             ; preds = %b3Normalize.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !78, !range !80, !noundef !81
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.cv = fmul float %.sroa.5.0.i, %i.co
  %i.cw = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %.sroa.018.0.i, %i.cx
  %i.cz = fadd <2 x float> %i.ae, %i.cy           ; 2 uses
  %i.da = fadd float %i.cb, %i.cv                 ; 2 uses
  %i.db = fmul float %.sroa.5.0.i, %i.cq
  %i.dc = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %.sroa.018.0.i, %i.dd
  %i.df = fadd <2 x float> %i.ae, %i.de           ; 2 uses
  %i.dg = fadd float %i.cb, %i.db                 ; 2 uses
  %i.dh = tail call float @b3GetLengthUnitsPerMeter() #8
  %i.di = fmul float %i.dh, 5.000000e-03
  %i.dj = fcmp ogt float %i.co, %i.di
  br i1 %i.dj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !156
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !157
  tail call void %i.dl(<2 x float> %i.cz, float %i.da, float noundef 6.000000e+00, i32 noundef 9498256, ptr noundef %i.dn) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.do = load float, ptr %i.cp, align 4, !tbaa !86
  %i.dp = tail call float @b3GetLengthUnitsPerMeter() #8
  %i.dq = fmul float %i.dp, 1.000000e+05
  %i.dr = fcmp olt float %i.do, %i.dq
  br i1 %i.dr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !156
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !157
  tail call void %i.dt(<2 x float> %i.df, float %i.dg, float noundef 6.000000e+00, i32 noundef 16711680, ptr noundef %i.dv) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dw = load float, ptr %i.cn, align 4, !tbaa !85
  %i.dx = tail call float @b3GetLengthUnitsPerMeter() #8
  %i.dy = fmul float %i.dx, 5.000000e-03
  %i.dz = fcmp ogt float %i.dw, %i.dy
  br i1 %i.dz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ea = load float, ptr %i.cp, align 4, !tbaa !86
  %i.eb = tail call float @b3GetLengthUnitsPerMeter() #8
  %i.ec = fmul float %i.eb, 1.000000e+05
  %i.ed = fcmp olt float %i.ea, %i.ec
  br i1 %i.ed, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !158
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !157
  tail call void %i.ef(<2 x float> %i.cz, float %i.da, <2 x float> %i.df, float %i.dg, i32 noundef 8421504, ptr noundef %i.eh) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.c, %b3Normalize.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !158
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !157
  tail call void %i.ej(<2 x float> %i.ae, float %i.cb, <2 x float> %i.bl, float %i.ca, i32 noundef 16777215, ptr noundef %i.el) #8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !156
  %i.eo = load ptr, ptr %i.ek, align 8, !tbaa !157
  tail call void %i.en(<2 x float> %i.ae, float %i.cb, float noundef 4.000000e+00, i32 noundef 16777215, ptr noundef %i.eo) #8
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !156
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !157
  tail call void %i.ep(<2 x float> %i.bl, float %i.ca, float noundef 4.000000e+00, i32 noundef 16777215, ptr noundef %i.eq) #8
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.es = load float, ptr %i.er, align 4, !tbaa !93
  %i.et = fcmp ogt float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !120, !range !80, !noundef !81
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ex = load float, ptr %i.a, align 4, !tbaa !73 ; 2 uses
  %i.ey = fmul float %.sroa.5.0.i, %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %.sroa.018.0.i, %i.fa
  %i.fc = fadd <2 x float> %i.ae, %i.fb
  %i.fd = fadd float %i.cb, %i.ey
  %i.fe = load ptr, ptr %i.em, align 8, !tbaa !156
  %i.ff = load ptr, ptr %i.ek, align 8, !tbaa !157
  tail call void %i.fe(<2 x float> %i.fc, float %i.fd, float noundef 4.000000e+00, i32 noundef 255, ptr noundef %i.ff) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"b3Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 792}
!11 = !{!"p1 int", !8, i64 0}
!12 = !{!"b3DynamicArray_int", !11, i64 0, !5, i64 8, !5, i64 12}
!13 = !{!"p1 _ZTS12b3MoveResult", !8, i64 0}
!14 = !{!"p1 _ZTS10b3MovePair", !8, i64 0}
!15 = !{!"b3AtomicInt", !5, i64 0}
!16 = !{!"p1 _ZTS9b3SetItem", !8, i64 0}
!17 = !{!"b3HashSet", !16, i64 0, !5, i64 8, !5, i64 12}
!18 = !{!"b3BroadPhase", !4, i64 0, !4, i64 240, !12, i64 288, !13, i64 304, !14, i64 312, !5, i64 320, !15, i64 324, !17, i64 328}
!19 = !{!"b3ConstraintGraph", !4, i64 0}
!20 = !{!"p1 _ZTS16b3BlockAllocator", !8, i64 0}
!21 = !{!"b3DynamicArray_b3BlockAllocator", !20, i64 0, !5, i64 8, !5, i64 12}
!22 = !{!"p1 _ZTS7b3Mutex", !8, i64 0}
!23 = !{!"b3IdPool", !12, i64 0, !5, i64 16}
!24 = !{!"p1 _ZTS6b3Body", !8, i64 0}
!25 = !{!"b3DynamicArray_b3Body", !24, i64 0, !5, i64 8, !5, i64 12}
!26 = !{!"p1 _ZTS11b3SolverSet", !8, i64 0}
!27 = !{!"b3DynamicArray_b3SolverSet", !26, i64 0, !5, i64 8, !5, i64 12}
!28 = !{!"p1 _ZTS7b3Joint", !8, i64 0}
!29 = !{!"b3DynamicArray_b3Joint", !28, i64 0, !5, i64 8, !5, i64 12}
!30 = !{!"p1 _ZTS9b3Contact", !8, i64 0}
!31 = !{!"b3DynamicArray_b3Contact", !30, i64 0, !5, i64 8, !5, i64 12}
!32 = !{!"p1 _ZTS8b3Island", !8, i64 0}
!33 = !{!"b3DynamicArray_b3Island", !32, i64 0, !5, i64 8, !5, i64 12}
end_hunk_2
