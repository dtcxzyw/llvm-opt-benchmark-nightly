Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance_joint?download=true
inline.NumInlined: 143
inline.NumDeleted: 17
begin_hunk_0_@__ubsan_handle_load_invalid_value_abort
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @b3RecWrite_DistanceJointEnableLimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3DistanceJoint_IsLimitEnabled(i64 %0) local_unnamed_addr #0 !func_sanitize !85 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 297
  %i.h = load i8, ptr %i.g, align 1, !tbaa !86    ; 3 uses
  %i.i = icmp ult i8 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  %i.j = zext i8 %i.h to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @10, i64 %i.j) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.k = trunc nuw i8 %i.h to i1
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetLengthRange(i64 %0, float noundef %1, float noundef %2) local_unnamed_addr #0 !func_sanitize !87 {
bb.a:
  %3 = alloca %struct.b3RecArgs_DistanceJointSetLengthRange, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.e) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 %0, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %1, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %i.l, align 4, !tbaa !90
  call void @b3RecWrite_DistanceJointSetLengthRange(ptr noundef nonnull %i.j, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 6 uses
  %i.n = icmp ne ptr %i.m, null, !nosanitize !10
  %i.o = ptrtoint ptr %i.m to i64, !nosanitize !10 ; 2 uses
  %i.p = and i64 %i.o, 3, !nosanitize !10
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !10
  %i.r = and i1 %i.n, %i.q, !nosanitize !10
  br i1 %i.r, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @12, i64 %i.o) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.s = call float @b3GetLengthUnitsPerMeter() #7
  %i.t = call float @b3GetLengthUnitsPerMeter() #7
  %i.u = call float @b3GetLengthUnitsPerMeter() #7
  %i.v = call float @b3GetLengthUnitsPerMeter() #7
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 204
  %i.x = fmul float %i.s, 5.000000e-03            ; 2 uses
  %i.y = fcmp olt float %1, %i.x
  %i.z = fmul float %i.t, 1.000000e+05            ; 2 uses
  %i.aa = fcmp olt float %i.z, %1
  %i.ab = select i1 %i.aa, float %i.z, float %1
  %i.ac = select i1 %i.y, float %i.x, float %i.ab ; 4 uses
  %i.ad = fmul float %i.u, 5.000000e-03           ; 2 uses
  %i.ae = fcmp olt float %2, %i.ad
  %i.af = fmul float %i.v, 1.000000e+05           ; 2 uses
  %i.ag = fcmp olt float %i.af, %2
  %i.ah = select i1 %i.ag, float %i.af, float %2
  %i.ai = select i1 %i.ae, float %i.ad, float %i.ah ; 4 uses
  %i.aj = fcmp olt float %i.ac, %i.ai
  %i.ak = select i1 %i.aj, float %i.ac, float %i.ai
  store float %i.ak, ptr %i.w, align 4, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.am = fcmp ogt float %i.ac, %i.ai
  %i.an = select i1 %i.am, float %i.ac, float %i.ai
  store float %i.an, ptr %i.al, align 4, !tbaa !92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 220
  store <2 x float> zeroinitializer, ptr %i.ao, align 4, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 228
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !79
  ret void
}

declare void @b3RecWrite_DistanceJointSetLengthRange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMinLength(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.h = load float, ptr %i.g, align 4, !tbaa !91
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMaxLength(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @14, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.h = load float, ptr %i.g, align 4, !tbaa !92
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetCurrentLength(i64 %0) local_unnamed_addr #5 !func_sanitize !80 {
bb.a:
  %1 = alloca %struct.b3Transform, align 8        ; 8 uses
  %2 = alloca %struct.b3Transform, align 8        ; 8 uses
  %.sroa.1.0.extract.shift = lshr i64 %0, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 8 uses
  %i.b = and i32 %.sroa.1.0.extract.trunc, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.e = icmp ne ptr %i.a, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 3, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.d, label %bb.c, !prof !11, !nosanitize !10

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %1, ptr noundef nonnull %i.c, i32 noundef %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !98
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef nonnull %i.c, i32 noundef %i.m) #7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load <4 x float>, ptr %i.p, align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 6 uses
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.n, align 4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 5 uses
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %i.r, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !130
  %i.w = load float, ptr %1, align 8, !tbaa !131
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 5 uses
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 5 uses
  %.sroa.09.4.vec.extract13.i.i.i35 = extractelement <2 x float> %i.y, i64 1
  %i.ab = load float, ptr %2, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = load <4 x float>, ptr %i.ac, align 4
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load <4 x float>, ptr %i.ad, align 8
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ae = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.af = fmul <2 x float> %.sroa.020.0.copyload, %i.ae
  %i.ag = fmul float %.sroa.221.0.copyload, %.sroa.09.4.vec.extract13.i.i.i
  %shift = shufflevector <2 x float> %.sroa.020.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.t
  %i.ah = shufflevector <2 x float> %.sroa.020.0.copyload, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ai = shufflevector <2 x float> %i.t, <2 x float> %.sroa.020.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.aj = fmul <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %.sroa.020.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = insertelement <2 x float> %i.ak, float %.sroa.221.0.copyload, i64 0 ; 2 uses
  %i.am = fmul <2 x float> %i.al, %i.r            ; 2 uses
  %i.an = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.ag, i64 0
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aq = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = fsub <2 x float> %i.ao, %i.aq
  %i.as = insertelement <2 x float> %i.ak, float %.sroa.221.0.copyload, i64 1
  %i.at = fmul <2 x float> %i.as, %i.ae
  %i.au = fsub <2 x float> %i.aj, %i.am
  %i.av = fadd <2 x float> %i.af, %i.ar           ; 2 uses
  %i.aw = fadd <2 x float> %i.at, %i.au           ; 2 uses
  %i.ax = fmul <2 x float> %i.r, %i.aw
  %i.ay = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 2>
  %i.az = fmul <2 x float> %i.ay, %i.av
  %i.ba = fsub <2 x float> %i.ax, %i.az
  %i.bb = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = fadd <2 x float> %i.al, %i.bb
  %i.bd = insertelement <2 x float> %4, float %i.w, i64 1
  %i.be = fadd <2 x float> %i.bd, %i.bc
  %i.bf = fmul float %.sroa.213.0.copyload, %.sroa.09.4.vec.extract13.i.i.i35
  %shift49 = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fmul <2 x float> %shift49, %i.aa
  %i.bg = shufflevector <2 x float> %i.aa, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.bh = fmul <2 x float> %.sroa.012.0.copyload, %i.bg ; 2 uses
  %i.bi = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bj = insertelement <2 x float> %i.bi, float %.sroa.213.0.copyload, i64 0 ; 2 uses
  %i.bk = fmul <2 x float> %i.bj, %i.y            ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x float> %i.bl, float %i.bf, i64 0
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = shufflevector <2 x float> %foldExtExtBinop50, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = fsub <2 x float> %i.bh, %i.bk
  %i.br = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bs = fmul <2 x float> %.sroa.012.0.copyload, %i.br
  %i.bt = insertelement <2 x float> %i.bi, float %.sroa.213.0.copyload, i64 1
  %i.bu = fmul <2 x float> %i.bt, %i.br
  %i.bv = fadd <2 x float> %i.bs, %i.bp           ; 2 uses
  %i.bw = fadd <2 x float> %i.bu, %i.bq           ; 2 uses
  %i.bx = fmul <2 x float> %i.y, %i.bw
  %i.by = shufflevector <2 x float> %i.y, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.bz = fmul <2 x float> %i.by, %i.bv
  %i.ca = fsub <2 x float> %i.bx, %i.bz
  %i.cb = fmul <2 x float> %i.ca, splat (float 2.000000e+00)
  %i.cc = fadd <2 x float> %i.bj, %i.cb
  %i.cd = shufflevector <2 x float> %i.aa, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ce = shufflevector <2 x float> %i.bv, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = shufflevector <2 x float> %i.y, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %i.bw, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = fsub <2 x float> %i.cf, %i.ci
  %i.ck = fmul <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> %.sroa.020.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cm = fadd <2 x float> %i.cl, %i.ck
  %i.cn = insertelement <2 x float> %6, float %i.v, i64 1
  %i.co = fadd <2 x float> %i.cn, %i.cm           ; 2 uses
  %i.cp = insertelement <2 x float> %8, float %i.ab, i64 1
  %i.cq = fadd <2 x float> %i.cp, %i.cc
  %shift52 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fsub <2 x float> %i.co, %shift52 ; 2 uses
  %i.cr = fsub <2 x float> %i.cq, %i.be           ; 2 uses
  %foldExtExtBinop55 = fmul <2 x float> %foldExtExtBinop53, %foldExtExtBinop53
  %i.cs = fmul <2 x float> %i.cr, %i.cr           ; 2 uses
  %shift57 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop58 = fadd <2 x float> %shift57, %foldExtExtBinop55
  %foldExtExtBinop60 = fadd <2 x float> %i.cs, %foldExtExtBinop58
  %i.ct = extractelement <2 x float> %foldExtExtBinop60, i64 0
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi float [ %sqrt.i, %bb.d ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

declare ptr @b3GetUnlockedWorld(i32 noundef) local_unnamed_addr #2

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_EnableSpring(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !81 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointEnableSpring, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 2 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #7 ; 3 uses
  %i.e = icmp ne ptr %i.d, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @16, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.l, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, i8 0, i64 3, i1 false)
  call void @b3RecWrite_DistanceJointEnableSpring(ptr noundef nonnull %i.k, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.o = icmp ne ptr %i.n, null, !nosanitize !10
  %i.p = ptrtoint ptr %i.n to i64, !nosanitize !10 ; 2 uses
  %i.q = and i64 %i.p, 3, !nosanitize !10
  %i.r = icmp eq i64 %i.q, 0, !nosanitize !10
  %i.s = and i1 %i.o, %i.r, !nosanitize !10
  br i1 %i.s, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @17, i64 %i.p) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  store i8 %i.a, ptr %i.t, align 4, !tbaa !86
  ret void
}

declare void @b3RecWrite_DistanceJointEnableSpring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3DistanceJoint_IsSpringEnabled(i64 %0) local_unnamed_addr #0 !func_sanitize !85 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.h = load i8, ptr %i.g, align 4, !tbaa !86    ; 3 uses
  %i.i = icmp ult i8 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  %i.j = zext i8 %i.h to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @19, i64 %i.j) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.k = trunc nuw i8 %i.h to i1
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetSpringForceRange(i64 %0, float noundef %1, float noundef %2) local_unnamed_addr #0 !func_sanitize !87 {
bb.a:
  %3 = alloca %struct.b3RecArgs_DistanceJointSetSpringForceRange, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @20, i64 %i.e) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 %0, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %1, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %i.l, align 4, !tbaa !90
  call void @b3RecWrite_DistanceJointSetSpringForceRange(ptr noundef nonnull %i.j, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 4 uses
  %i.n = icmp ne ptr %i.m, null, !nosanitize !10
  %i.o = ptrtoint ptr %i.m to i64, !nosanitize !10 ; 2 uses
  %i.p = and i64 %i.o, 3, !nosanitize !10
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !10
  %i.r = and i1 %i.n, %i.q, !nosanitize !10
  br i1 %i.r, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.o) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 196
  store float %1, ptr %i.s, align 4, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  store float %2, ptr %i.t, align 4, !tbaa !86
  ret void
}

declare void @b3RecWrite_DistanceJointSetSpringForceRange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_GetSpringForceRange(i64 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !132 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 4 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @22, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne ptr %1, null, !nosanitize !10
  %i.h = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.i = and i64 %i.h, 3, !nosanitize !10
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !10
  %i.k = and i1 %i.g, %i.j, !nosanitize !10
  br i1 %i.k, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.h) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@b3DistanceJoint_SetMotorSpeed:bb.a
  %i.o = and i64 %i.n, 3, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.n) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  store float %1, ptr %i.r, align 4, !tbaa !86
  ret void
}

declare void @b3RecWrite_DistanceJointSetMotorSpeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMotorSpeed(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.h = load float, ptr %i.g, align 4, !tbaa !86
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMotorForce(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.e = icmp ne ptr %i.c, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @39, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %i.d, null, !nosanitize !10
  %i.k = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.p = load float, ptr %i.o, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.r = load float, ptr %i.q, align 4, !tbaa !86
  %i.s = fmul float %i.p, %i.r
  ret float %i.s
}

; Function Attrs: nounwind uwtable
define void @b3DistanceJoint_SetMaxMotorForce(i64 %0, float noundef %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %2 = alloca %struct.b3RecArgs_DistanceJointSetMaxMotorForce, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.e) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.k, align 8, !tbaa !74
  call void @b3RecWrite_DistanceJointSetMaxMotorForce(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.m = icmp ne ptr %i.l, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.l to i64, !nosanitize !10 ; 2 uses
  %i.o = and i64 %i.n, 3, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @42, i64 %i.n) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 212
  store float %1, ptr %i.r, align 4, !tbaa !86
  ret void
}

declare void @b3RecWrite_DistanceJointSetMaxMotorForce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3DistanceJoint_GetMaxMotorForce(i64 %0) local_unnamed_addr #0 !func_sanitize !80 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 1) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @43, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.h = load float, ptr %i.g, align 4, !tbaa !86
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetDistanceJointForce(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !133 {
bb.a:
  %2 = alloca %struct.b3Transform, align 8        ; 7 uses
  %3 = alloca %struct.b3Transform, align 8        ; 7 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @44, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !98
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef %0, i32 noundef %i.i) #7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !102
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 6 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %i.o, i64 0
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.j, align 4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 4 uses
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 4 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.u = load <2 x float>, ptr %i.t, align 4      ; 4 uses
  %.sroa.09.0.vec.extract.i.i.i60 = extractelement <2 x float> %i.s, i64 0
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load <4 x float>, ptr %i.v, align 8
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.034.0.copyload, %i.q
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = fmul float %.sroa.235.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %i.y = fsub float %i.w, %i.x
  %i.z = shufflevector <2 x float> %.sroa.034.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aa = insertelement <2 x float> %i.z, float %.sroa.235.0.copyload, i64 0
  %i.ab = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = insertelement <2 x float> %i.z, float %.sroa.235.0.copyload, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = fmul <2 x float> %i.ad, %i.o
  %i.ag = shufflevector <2 x float> %i.o, <2 x float> %i.q, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ah = fmul <2 x float> %.sroa.034.0.copyload, %i.ag
  %i.ai = fsub <2 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = insertelement <2 x float> %i.aj, float %i.y, i64 0
  %i.al = fadd <2 x float> %i.ae, %i.ak           ; 2 uses
  %i.am = fadd <2 x float> %i.ac, %i.ai           ; 2 uses
  %i.an = load <2 x float>, ptr %2, align 8, !tbaa !78
  %i.ao = fmul <2 x float> %i.ag, %i.am
  %i.ap = shufflevector <2 x float> %i.q, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.aq = fmul <2 x float> %i.ap, %i.al
  %i.ar = fsub <2 x float> %i.ao, %i.aq
  %i.as = fmul <2 x float> %i.ar, splat (float 2.000000e+00)
  %i.at = fadd <2 x float> %.sroa.034.0.copyload, %i.as
  %i.au = fadd <2 x float> %i.an, %i.at
  %foldExtExtBinop81 = fmul <2 x float> %.sroa.026.0.copyload, %i.u
  %i.av = extractelement <2 x float> %foldExtExtBinop81, i64 0
  %i.aw = fmul float %.sroa.227.0.copyload, %.sroa.09.0.vec.extract.i.i.i60
  %i.ax = fsub float %i.av, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.026.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.az = insertelement <2 x float> %i.ay, float %.sroa.227.0.copyload, i64 1 ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.s
  %i.bb = shufflevector <2 x float> %i.s, <2 x float> %i.u, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bc = fmul <2 x float> %.sroa.026.0.copyload, %i.bb
  %i.bd = fsub <2 x float> %i.ba, %i.bc           ; 2 uses
  %i.be = insertelement <2 x float> %i.ay, float %.sroa.227.0.copyload, i64 0
  %i.bf = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bg = fmul <2 x float> %i.be, %i.bf
  %i.bh = fmul <2 x float> %i.az, %i.bf
  %i.bi = fadd <2 x float> %i.bg, %i.bd           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bk = insertelement <2 x float> %i.bj, float %i.ax, i64 0
  %i.bl = fadd <2 x float> %i.bh, %i.bk           ; 2 uses
  %i.bm = fmul <2 x float> %i.bb, %i.bi
  %i.bn = shufflevector <2 x float> %i.u, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = fmul <2 x float> %i.bp, splat (float 2.000000e+00)
  %i.br = fadd <2 x float> %.sroa.026.0.copyload, %i.bq
  %i.bs = load <2 x float>, ptr %3, align 8, !tbaa !78
  %i.bt = fadd <2 x float> %i.bs, %i.br
  %i.bu = shufflevector <2 x float> %i.s, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.bv = shufflevector <2 x float> %i.bl, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.bw = fmul <2 x float> %i.bu, %i.bv
  %i.bx = shufflevector <2 x float> %i.s, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.by = shufflevector <2 x float> %i.bi, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = fsub <2 x float> %i.bw, %i.bz
  %i.cb = fmul <2 x float> %i.ca, splat (float 2.000000e+00)
  %i.cc = insertelement <2 x float> poison, float %.sroa.227.0.copyload, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %.sroa.235.0.copyload, i64 1
  %i.ce = fadd <2 x float> %i.cd, %i.cb
  %i.cf = insertelement <2 x float> %5, float %i.m, i64 1
  %i.cg = fadd <2 x float> %i.cf, %i.ce           ; 2 uses
  %i.ch = fsub <2 x float> %i.bt, %i.au           ; 3 uses
  %shift = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop83 = fsub <2 x float> %i.cg, %shift ; 3 uses
  %i.ci = fmul <2 x float> %i.ch, %i.ch           ; 2 uses
  %shift85 = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop86 = fadd <2 x float> %i.ci, %shift85
  %foldExtExtBinop88 = fmul <2 x float> %foldExtExtBinop83, %foldExtExtBinop83
  %foldExtExtBinop90 = fadd <2 x float> %foldExtExtBinop88, %foldExtExtBinop86
  %i.cj = extractelement <2 x float> %foldExtExtBinop90, i64 0 ; 2 uses
  %i.ck = fcmp ogt float %i.cj, f0x057A0000
  br i1 %i.ck, label %bb.d, label %b3Normalize.exit

bb.d:                                             ; preds = %bb.c
  %i.cl = extractelement <2 x float> %foldExtExtBinop83, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.cj)
  %i.cm = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.ch, %i.co
  %i.cq = fmul float %i.cl, %i.cm
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.d, %bb.c
  %.sroa.07.0.i = phi <2 x float> [ %i.cp, %bb.d ], [ zeroinitializer, %bb.c ]
  %.sroa.5.0.i = phi float [ %i.cq, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.cr = icmp ne ptr %0, null, !nosanitize !10
  %i.cs = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.ct = and i64 %i.cs, 7, !nosanitize !10
  %i.cu = icmp eq i64 %i.ct, 0, !nosanitize !10
  %i.cv = and i1 %i.cr, %i.cu, !nosanitize !10
  br i1 %i.cv, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %b3Normalize.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.cs) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %b3Normalize.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !103
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.db = load float, ptr %i.da, align 4, !tbaa !104
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !105
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.df = fadd float %i.dd, %i.db
  %i.dg = fsub float %i.df, %i.cz
  %i.dh = fadd float %i.dg, %i.cx
  %i.di = load float, ptr %i.de, align 8, !tbaa !101
  %i.dj = fmul float %i.dh, %i.di                 ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %.sroa.07.0.i, %i.dl
  %i.dn = fmul float %.sroa.5.0.i, %i.dj
  %.fca.0.insert.i72 = insertvalue { <2 x float>, float } poison, <2 x float> %i.dm, 0
  %.fca.1.insert.i73 = insertvalue { <2 x float>, float } %.fca.0.insert.i72, float %i.dn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i73
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareDistanceJoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !106 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @46, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !98   ; 2 uses
  %i.j = icmp ne ptr %1, null, !nosanitize !10
  %i.k = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @48, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 4 uses
  %i.q = icmp ne ptr %i.p, null, !nosanitize !10
  %i.r = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 2 uses
  %i.s = and i64 %i.r, 7, !nosanitize !10
  %i.t = icmp eq i64 %i.s, 0, !nosanitize !10
  %i.u = and i1 %i.q, %i.t, !nosanitize !10
  br i1 %i.u, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @49, i64 %i.r) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 3880
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !135  ; 4 uses
  %i.x = sext i32 %i.g to i64                     ; 2 uses
  %i.y = getelementptr inbounds [128 x i8], ptr %i.w, i64 %i.x ; 3 uses
  %i.z = shl nsw i64 %i.x, 7
  %i.aa = ptrtoint ptr %i.w to i64, !nosanitize !10 ; 6 uses
  %i.ab = add i64 %i.z, %i.aa, !nosanitize !10    ; 3 uses
  %i.ac = icmp ne ptr %i.w, null, !nosanitize !10 ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = xor i1 %i.ac, %i.ad
  %i.af = icmp uge i64 %i.ab, %i.aa, !nosanitize !10
  %i.ag = icmp slt i32 %i.g, 0
  %i.ah = xor i1 %i.ag, %i.af
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !10
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @50, i64 %i.aa, i64 %i.ab) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.aj = sext i32 %i.i to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [128 x i8], ptr %i.w, i64 %i.aj ; 3 uses
  %i.al = shl nsw i64 %i.aj, 7
  %i.am = add i64 %i.al, %i.aa, !nosanitize !10   ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = xor i1 %i.ac, %i.an
  %i.ap = icmp uge i64 %i.am, %i.aa, !nosanitize !10
  %i.aq = icmp slt i32 %i.i, 0
  %i.ar = xor i1 %i.aq, %i.ap
  %i.as = and i1 %i.ao, %i.ar, !nosanitize !10
  br i1 %i.as, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @51, i64 %i.aa, i64 %i.am) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 3920
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136 ; 4 uses
  %i.av = ptrtoint ptr %i.y to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 7, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.ac, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !138 ; 3 uses
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [88 x i8], ptr %i.au, i64 %i.bb ; 2 uses
  %i.bd = mul nsw i64 %i.bb, 88
  %i.be = ptrtoint ptr %i.au to i64, !nosanitize !10 ; 6 uses
  %i.bf = add i64 %i.bd, %i.be, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne ptr %i.au, null, !nosanitize !10 ; 3 uses
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = xor i1 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bf, %i.be, !nosanitize !10
  %i.bk = icmp slt i32 %i.ba, 0
  %i.bl = xor i1 %i.bk, %i.bj
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !10
  br i1 %i.bm, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @54, i64 %i.be, i64 %i.bf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.ak to i64, !nosanitize !10 ; 2 uses
  %i.bo = and i64 %i.bn, 7, !nosanitize !10
  %i.bp = icmp eq i64 %i.bo, 0, !nosanitize !10
  br i1 %i.bp, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @55, i64 %i.bn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !138 ; 3 uses
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [88 x i8], ptr %i.au, i64 %i.bs ; 2 uses
  %i.bu = mul nsw i64 %i.bs, 88
  %i.bv = add i64 %i.bu, %i.be, !nosanitize !10   ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = xor i1 %i.bg, %i.bw
  %i.by = icmp uge i64 %i.bv, %i.be, !nosanitize !10
  %i.bz = icmp slt i32 %i.br, 0
end_hunk_1
begin_hunk_2_@b3SolveDistanceJoint:bb.a
bb.x:                                             ; preds = %bb.w
  %i.gl = icmp ne ptr %1, null, !nosanitize !10
  %i.gm = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.gn = and i64 %i.gm, 7, !nosanitize !10
  %i.go = icmp eq i64 %i.gn, 0, !nosanitize !10
  %i.gp = and i1 %i.gl, %i.go, !nosanitize !10
  br i1 %i.gp, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.gm) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.gq = shufflevector <2 x float> %.sroa.0854.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gr = insertelement <4 x float> %i.gq, float %.sroa.19865.0.copyload, i64 2
  %i.gs = insertelement <4 x float> %i.gr, float %sqrt.i, i64 3
  %i.gt = shufflevector <2 x float> %.sroa.0882.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float %.sroa.19893.0.copyload, i64 2
  %i.gv = load float, ptr %i.s, align 4, !tbaa !77
  %i.gw = insertelement <4 x float> %i.gu, float %i.gv, i64 3
  %i.gx = fsub <4 x float> %i.gs, %i.gw
  %i.gy = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.gz = insertelement <4 x float> %i.gy, float -0.000000e+00, i64 3
  %i.ha = insertelement <4 x float> %i.gz, float %.sroa.19.0.copyload, i64 1
  %i.hb = shufflevector <4 x float> %i.en, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.hc = fmul <4 x float> %i.ha, %i.hb
  %i.hd = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.he = insertelement <4 x float> %i.hd, float 0.000000e+00, i64 3
  %i.hf = insertelement <4 x float> %i.he, float %.sroa.19.0.copyload, i64 0
  %i.hg = insertelement <4 x float> %i.en, float 1.000000e+00, i64 3
  %i.hh = fmul <4 x float> %i.hf, %i.hg
  %i.hi = fsub <4 x float> %i.hc, %i.hh
  %i.hj = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> %i.dd, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float 0.000000e+00, i64 3
  %i.hl = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.hm = insertelement <4 x float> %i.hl, float 1.000000e+00, i64 3
  %i.hn = insertelement <4 x float> %i.hm, float %i.df, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %.sroa.19879.0.copyload, i64 1 ; 2 uses
  %i.hp = fmul <4 x float> %i.hk, %i.ho
  %i.hq = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> %i.ho, <4 x i32> <i32 5, i32 4, i32 2, i32 poison>
  %i.hs = insertelement <4 x float> %i.hr, float 0.000000e+00, i64 3
  %i.ht = shufflevector <2 x float> %i.dd, <2 x float> %.sroa.0868.0.copyload, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.hu = insertelement <4 x float> %i.ht, float 1.000000e+00, i64 3
  %i.hv = fmul <4 x float> %i.hs, %i.hu
  %i.hw = fsub <4 x float> %i.hp, %i.hv
  %i.hx = fsub <4 x float> %i.hi, %i.hw
  %i.hy = fadd <4 x float> %i.gx, %i.hx
  %i.hz = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ia = insertelement <4 x float> %i.hz, float %.sroa.5.0.i, i64 2
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !152
  %i.id = insertelement <4 x float> %i.ia, float %i.ic, i64 3
  %i.ie = fmul <4 x float> %i.hy, %i.id           ; 4 uses
  %shift1712 = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift1709 = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1710 = fadd <4 x float> %i.ie, %shift1709
  %foldExtExtBinop1713 = fadd <4 x float> %shift1712, %foldExtExtBinop1710
  %shift1715 = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1716 = fadd <4 x float> %foldExtExtBinop1713, %shift1715
  %i.if = extractelement <4 x float> %foldExtExtBinop1716, i64 0
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !153
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !124
  %i.ik = fneg float %i.ij
  %i.il = fmul float %i.ih, %i.ik
  %i.im = fmul float %i.if, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !105 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !154
  %i.ir = fmul float %i.io, %i.iq
  %i.is = fsub float %i.im, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load float, ptr %i.it, align 8, !tbaa !125 ; 2 uses
  %i.iv = fadd float %i.io, %i.is                 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !155
  %i.iz = fmul float %i.iu, %i.iy                 ; 2 uses
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !156
  %i.jb = fmul float %i.iu, %i.ja                 ; 2 uses
  %i.jc = fcmp olt float %i.iv, %i.iz
  %i.jd = fcmp olt float %i.jb, %i.iv
  %i.je = select i1 %i.jd, float %i.jb, float %i.iv
  %i.jf = select i1 %i.jc, float %i.iz, float %i.je ; 2 uses
  store float %i.jf, ptr %i.in, align 4, !tbaa !105
  %i.jg = fsub float %i.jf, %i.io                 ; 2 uses
  %i.jh = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %.sroa.07.0.i, %i.ji   ; 4 uses
  %i.jk = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.jk, %i.jj
  %i.jm = fsub <2 x float> %.sroa.0882.0.copyload, %i.jl
  %i.jn = shufflevector <4 x float> %i.en, <4 x float> %i.hq, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.jo = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jp = fmul <2 x float> %i.jn, %i.jo
  %i.jq = shufflevector <4 x float> %i.en, <4 x float> %i.hq, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.jr = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.js = fmul <2 x float> %i.jq, %i.jr
  %i.jt = fsub <2 x float> %i.jp, %i.js           ; 3 uses
  %i.ju = insertelement <4 x float> poison, float %.sroa.5.0.i, i64 0
  %i.jv = insertelement <4 x float> %i.ju, float %.sroa.43.0.copyload, i64 2
  %i.jw = insertelement <4 x float> %i.jv, float %.sroa.431676.0.copyload, i64 3
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jy = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.jz = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ka = shufflevector <4 x float> %i.jy, <4 x float> %i.jz, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.kb = fmul <4 x float> %i.jx, %i.ka           ; 3 uses
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul <2 x float> %i.jq, %i.kc
  %i.ke = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kf = insertelement <2 x float> %i.ke, float %i.df, i64 1 ; 2 uses
  %i.kg = fmul <2 x float> %i.kf, %i.jo
  %i.kh = fsub <2 x float> %i.kd, %i.kg           ; 3 uses
  %i.ki = fmul <2 x float> %i.kf, %i.jr
  %i.kj = fmul <2 x float> %i.jn, %i.kc
  %i.kk = fsub <2 x float> %i.ki, %i.kj           ; 3 uses
  %i.kl = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.km = insertelement <2 x float> %i.kl, float %.sroa.131646.0.copyload, i64 1
  %i.kn = fmul <2 x float> %i.km, %i.kh
  %i.ko = insertelement <2 x float> poison, float %.sroa.28.0.copyload, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %.sroa.281661.0.copyload, i64 1
  %i.kq = fmul <2 x float> %i.kp, %i.kk
  %i.kr = fadd <2 x float> %i.kn, %i.kq
  %i.ks = shufflevector <2 x float> %i.h, <2 x float> %i.kr, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.kt = fadd <4 x float> %i.ks, %i.kb
  %i.ku = fmul <4 x float> %i.ks, %i.kb
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> %i.kt, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.kw = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kx = fmul <2 x float> %i.l, %i.kw
  %i.ky = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kz = fmul <2 x float> %i.k, %i.ky
  %i.la = fadd <2 x float> %i.kx, %i.kz
  %i.lb = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lc = fmul <2 x float> %i.m, %i.lb
  %i.ld = fadd <2 x float> %i.lc, %i.la
  %i.le = fsub <2 x float> %.sroa.0868.0.copyload, %i.ld
  %i.lf = insertelement <2 x float> poison, float %i.i, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x float> %i.lg, %i.jj
  %i.li = fadd <2 x float> %.sroa.0854.0.copyload, %i.lh
  %i.lj = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x float> %i.o, %i.lj
  %i.ll = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x float> %i.p, %i.ll
  %i.ln = fadd <2 x float> %i.lk, %i.lm
  %i.lo = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = fmul <2 x float> %i.q, %i.lo
  %i.lq = fadd <2 x float> %i.lp, %i.ln
  %i.lr = fadd <2 x float> %.sroa.0841.0.copyload, %i.lq
  %i.ls = fadd <4 x float> %i.gk, %i.kv
  %i.lt = fsub <4 x float> %i.gk, %i.kv
  %i.lu = shufflevector <4 x float> %i.ls, <4 x float> %i.lt, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.sroa.0841.0 = phi <2 x float> [ %i.lr, %bb.z ], [ %.sroa.0841.0.copyload, %bb.w ] ; 4 uses
  %.sroa.0854.0 = phi <2 x float> [ %i.li, %bb.z ], [ %.sroa.0854.0.copyload, %bb.w ] ; 4 uses
  %.sroa.0868.0 = phi <2 x float> [ %i.le, %bb.z ], [ %.sroa.0868.0.copyload, %bb.w ] ; 5 uses
  %.sroa.0882.0 = phi <2 x float> [ %i.jm, %bb.z ], [ %.sroa.0882.0.copyload, %bb.w ] ; 4 uses
  %i.lv = phi <4 x float> [ %i.lu, %bb.z ], [ %i.gk, %bb.w ] ; 8 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !84  ; 3 uses
  %i.ly = icmp ult i8 %i.lx, 2
  br i1 %i.ly, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.lz = zext i8 %i.lx to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @84, i64 %i.lz) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.ma = trunc nuw i8 %i.lx to i1
  br i1 %i.ma, label %bb.ad, label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  %i.mb = shufflevector <2 x float> %.sroa.0868.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1718 = fsub <2 x float> %.sroa.0854.0, %.sroa.0882.0
  %i.mc = extractelement <2 x float> %foldExtExtBinop1718, i64 0
  %i.md = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 5 uses
  %i.me = shufflevector <4 x float> %i.en, <4 x float> %i.md, <4 x i32> <i32 2, i32 0, i32 poison, i32 4>
  %i.mf = insertelement <4 x float> %i.me, float %i.df, i64 2
  %i.mg = shufflevector <2 x float> %.sroa.0841.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mh = shufflevector <4 x float> %i.lv, <4 x float> %i.mg, <4 x i32> <i32 2, i32 4, i32 poison, i32 3>
  %i.mi = shufflevector <2 x float> %.sroa.0868.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mh, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mk = fmul <4 x float> %i.mf, %i.mj
  %i.ml = shufflevector <4 x float> %i.en, <4 x float> %i.md, <4 x i32> <i32 1, i32 2, i32 5, i32 poison>
  %i.mm = insertelement <4 x float> %i.ml, float %i.df, i64 3
  %i.mn = shufflevector <4 x float> %i.mg, <4 x float> %i.lv, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.mb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mp = fmul <4 x float> %i.mm, %i.mo
  %i.mq = fsub <4 x float> %i.mk, %i.mp           ; 3 uses
  %i.mr = shufflevector <4 x float> %i.en, <4 x float> %i.md, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ms = shufflevector <2 x float> %.sroa.0841.0, <2 x float> %.sroa.0868.0, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> %i.lv, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.mu = fmul <4 x float> %i.mr, %i.mt           ; 4 uses
  %shift1720 = shufflevector <4 x float> %i.mu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1721 = fsub <4 x float> %i.mu, %shift1720
  %shift1723 = shufflevector <4 x float> %i.mu, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop1724 = fsub <4 x float> %i.mu, %shift1723
  %shift1726 = shufflevector <4 x float> %i.mq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1727 = fsub <4 x float> %foldExtExtBinop1721, %shift1726
  %i.mv = extractelement <4 x float> %foldExtExtBinop1727, i64 0
  %i.mw = fadd float %i.mc, %i.mv
  %.sroa.03.0.vec.extract.i1200 = extractelement <2 x float> %.sroa.07.0.i, i64 0 ; 2 uses
  %i.mx = fmul float %.sroa.03.0.vec.extract.i1200, %i.mw
  %i.my = shufflevector <2 x float> %.sroa.0854.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> %i.lv, <2 x i32> <i32 1, i32 4>
  %i.na = shufflevector <2 x float> %.sroa.0882.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.lv, <2 x i32> <i32 1, i32 5>
  %i.nc = fsub <2 x float> %i.mz, %i.nb
  %i.nd = shufflevector <4 x float> %i.mq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %4 = shufflevector <4 x float> %i.mq, <4 x float> %foldExtExtBinop1724, <2 x i32> <i32 3, i32 6>
  %i.ne = fsub <2 x float> %i.nd, %4
  %i.nf = fadd <2 x float> %i.nc, %i.ne
  %i.ng = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nh = insertelement <2 x float> %i.ng, float %.sroa.5.0.i, i64 1 ; 2 uses
  %i.ni = fmul <2 x float> %i.nh, %i.nf           ; 2 uses
  %i.nj = extractelement <2 x float> %i.ni, i64 0
  %i.nk = fadd float %i.mx, %i.nj
  %i.nl = extractelement <2 x float> %i.ni, i64 1
  %i.nm = fadd float %i.nl, %i.nk
  %i.nn = fsub float %sqrt.i, %i.fv               ; 3 uses
  %i.no = fcmp ogt float %i.nn, 0.000000e+00
  br i1 %i.no, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.np = icmp ne ptr %1, null, !nosanitize !10
  %i.nq = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.nr = and i64 %i.nq, 7, !nosanitize !10
  %i.ns = icmp eq i64 %i.nr, 0, !nosanitize !10
  %i.nt = and i1 %i.np, %i.ns, !nosanitize !10
  br i1 %i.nt, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.nq) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !157
  %i.nw = fmul float %i.nn, %i.nv
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  br i1 %2, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !158
  %i.nz = fmul float %i.nn, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.oc = load float, ptr %i.oa, align 4, !tbaa !159
  %i.od = load float, ptr %i.ob, align 4, !tbaa !160
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah
  %.0991 = phi float [ 0.000000e+00, %bb.ag ], [ %i.od, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %.0990 = phi float [ 1.000000e+00, %bb.ag ], [ %i.oc, %bb.ai ], [ 1.000000e+00, %bb.ah ]
  %.0 = phi float [ %i.nw, %bb.ag ], [ %i.nz, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.of = load float, ptr %i.oe, align 4, !tbaa !124 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.oh = fneg float %.0990
  %i.oi = fmul float %i.of, %i.oh
  %i.oj = fadd float %i.nm, %.0
  %i.ok = fmul float %i.oj, %i.oi
  %i.ol = load float, ptr %i.og, align 4, !tbaa !104 ; 3 uses
  %i.om = fmul float %.0991, %i.ol
  %i.on = fsub float %i.ok, %i.om
  %i.oo = fadd float %i.ol, %i.on                 ; 2 uses
  %i.op = fcmp olt float %i.oo, 0.000000e+00
  %i.oq = select i1 %i.op, float 0.000000e+00, float %i.oo ; 2 uses
  store float %i.oq, ptr %i.og, align 4, !tbaa !104
  %i.or = extractelement <2 x float> %i.dd, i64 0
  %i.os = fsub float %i.oq, %i.ol                 ; 2 uses
  %i.ot = insertelement <2 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x float> %.sroa.07.0.i, %i.ou   ; 5 uses
  %i.ow = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ox = fmul <2 x float> %i.ow, %i.ov
  %i.oy = fsub <2 x float> %.sroa.0882.0, %i.ox   ; 3 uses
  %i.oz = shufflevector <4 x float> %i.en, <4 x float> %i.md, <2 x i32> <i32 2, i32 4> ; 4 uses
  %i.pa = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pb = fmul <2 x float> %i.oz, %i.pa
  %i.pc = shufflevector <4 x float> %i.en, <4 x float> %i.md, <2 x i32> <i32 0, i32 5> ; 4 uses
  %i.pd = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pe = fmul <2 x float> %i.pc, %i.pd
  %i.pf = fsub <2 x float> %i.pb, %i.pe           ; 3 uses
  %i.pg = insertelement <4 x float> poison, float %.sroa.5.0.i, i64 0
  %i.ph = insertelement <4 x float> %i.pg, float %.sroa.43.0.copyload, i64 2
  %i.pi = insertelement <4 x float> %i.ph, float %.sroa.431676.0.copyload, i64 3
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.pk = insertelement <4 x float> poison, float %i.os, i64 0
  %i.pl = shufflevector <2 x float> %i.pf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pm = shufflevector <4 x float> %i.pk, <4 x float> %i.pl, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.pn = fmul <4 x float> %i.pj, %i.pm           ; 3 uses
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pp = fmul <2 x float> %i.pc, %i.po
  %i.pq = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pr = insertelement <2 x float> %i.pq, float %i.df, i64 1 ; 2 uses
  %i.ps = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pt = fmul <2 x float> %i.pr, %i.ps
  %i.pu = fsub <2 x float> %i.pp, %i.pt           ; 3 uses
  %i.pv = fmul <2 x float> %i.pr, %i.pd
  %i.pw = fmul <2 x float> %i.oz, %i.po
  %i.px = fsub <2 x float> %i.pv, %i.pw           ; 3 uses
  %i.py = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pz = fmul <2 x float> %i.l, %i.py
  %i.qa = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qb = fmul <2 x float> %i.k, %i.qa
  %i.qc = fadd <2 x float> %i.pz, %i.qb
  %i.qd = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qe = fmul <2 x float> %i.m, %i.qd
  %i.qf = fadd <2 x float> %i.qe, %i.qc
  %i.qg = fsub <2 x float> %.sroa.0868.0, %i.qf   ; 3 uses
  %i.qh = insertelement <2 x float> poison, float %i.i, i64 0
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qj = fmul <2 x float> %i.qi, %i.ov
  %i.qk = fadd <2 x float> %.sroa.0854.0, %i.qj   ; 3 uses
  %i.ql = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.qm = insertelement <2 x float> %i.ql, float %.sroa.131646.0.copyload, i64 1 ; 2 uses
  %i.qn = fmul <2 x float> %i.qm, %i.pu
  %i.qo = insertelement <2 x float> poison, float %.sroa.28.0.copyload, i64 0
  %i.qp = insertelement <2 x float> %i.qo, float %.sroa.281661.0.copyload, i64 1 ; 2 uses
  %i.qq = fmul <2 x float> %i.qp, %i.px
  %i.qr = fadd <2 x float> %i.qn, %i.qq
  %i.qs = shufflevector <2 x float> %i.h, <2 x float> %i.qr, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.qt = fadd <4 x float> %i.qs, %i.pn
  %i.qu = fmul <4 x float> %i.qs, %i.pn
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> %i.qt, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.qw = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qx = fmul <2 x float> %i.o, %i.qw
  %i.qy = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qz = fmul <2 x float> %i.p, %i.qy
  %i.ra = fadd <2 x float> %i.qx, %i.qz
  %i.rb = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = fmul <2 x float> %i.q, %i.rb
  %i.rd = fadd <2 x float> %i.rc, %i.ra
  %i.re = fadd <2 x float> %.sroa.0841.0, %i.rd   ; 4 uses
  %i.rf = fadd <4 x float> %i.lv, %i.qv           ; 2 uses
  %i.rg = fsub <4 x float> %i.lv, %i.qv
  %i.rh = shufflevector <4 x float> %i.rf, <4 x float> %i.rg, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 6 uses
  %foldExtExtBinop1729 = fsub <2 x float> %i.oy, %i.qk
  %i.ri = extractelement <2 x float> %foldExtExtBinop1729, i64 0
  %i.rj = extractelement <2 x float> %i.qg, i64 1 ; 2 uses
  %i.rk = fmul float %i.df, %i.rj
  %i.rl = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.rm = insertelement <4 x float> %i.rl, float %i.df, i64 2
  %i.rn = shufflevector <2 x float> %i.qg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ro = shufflevector <4 x float> %i.rh, <4 x float> %i.rn, <4 x i32> <i32 3, i32 3, i32 4, i32 4>
  %i.rp = fmul <4 x float> %i.rm, %i.ro           ; 3 uses
  %i.rq = extractelement <4 x float> %i.rp, i64 0
  %i.rr = fsub float %i.rk, %i.rq
  %i.rs = fmul float %i.or, %i.rj
  %i.rt = extractelement <2 x float> %i.re, i64 1
  %i.ru = fmul float %i.ev, %i.rt
  %shift1731 = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1732 = fmul <4 x float> %i.en, %shift1731
  %i.rv = extractelement <4 x float> %foldExtExtBinop1732, i64 0
  %i.rw = fsub float %i.ru, %i.rv
  %i.rx = fsub float %i.rr, %i.rw
  %i.ry = fadd float %i.ri, %i.rx
  %i.rz = fmul float %.sroa.03.0.vec.extract.i1200, %i.ry
  %i.sa = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> %i.rh, <2 x i32> <i32 1, i32 5>
  %i.sc = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sd = shufflevector <4 x float> %i.sc, <4 x float> %i.rh, <2 x i32> <i32 1, i32 4>
  %i.se = fsub <2 x float> %i.sb, %i.sd
  %i.sf = shufflevector <4 x float> %i.rp, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.sg = shufflevector <4 x float> %i.rp, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.sh = insertelement <2 x float> %i.sg, float %i.rs, i64 1
  %i.si = fsub <2 x float> %i.sf, %i.sh
  %i.sj = shufflevector <2 x float> %i.re, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sk = shufflevector <4 x float> %i.rh, <4 x float> %i.sj, <2 x i32> <i32 2, i32 4>
  %i.sl = fmul <2 x float> %i.fa, %i.sk
  %i.sm = fmul <2 x float> %i.pq, %i.re
  %i.sn = fsub <2 x float> %i.sl, %i.sm
  %i.so = fsub <2 x float> %i.si, %i.sn
  %i.sp = fadd <2 x float> %i.se, %i.so
  %i.sq = fmul <2 x float> %i.nh, %i.sp           ; 2 uses
  %i.sr = extractelement <2 x float> %i.sq, i64 0
  %i.ss = fadd float %i.rz, %i.sr
  %i.st = extractelement <2 x float> %i.sq, i64 1
  %i.su = fadd float %i.st, %i.ss
  %i.sv = fsub float %i.fx, %sqrt.i               ; 3 uses
  %i.sw = fcmp ogt float %i.sv, 0.000000e+00
  br i1 %i.sw, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.sx = icmp ne ptr %1, null, !nosanitize !10
  %i.sy = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.sz = and i64 %i.sy, 7, !nosanitize !10
  %i.ta = icmp eq i64 %i.sz, 0, !nosanitize !10
  %i.tb = and i1 %i.sx, %i.ta, !nosanitize !10
  br i1 %i.tb, label %bb.am, label %bb.al, !prof !11, !nosanitize !10

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @86, i64 %i.sy) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.am:                                            ; preds = %bb.ak
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.td = load float, ptr %i.tc, align 4, !tbaa !157
  %i.te = fmul float %i.sv, %i.td
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  br i1 %2, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !158
  %i.th = fmul float %i.sv, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.tk = load float, ptr %i.ti, align 4, !tbaa !159
  %i.tl = load float, ptr %i.tj, align 4, !tbaa !160
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %.0994 = phi float [ 0.000000e+00, %bb.am ], [ %i.tl, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %.0993 = phi float [ 1.000000e+00, %bb.am ], [ %i.tk, %bb.ao ], [ 1.000000e+00, %bb.an ]
  %.0992 = phi float [ %i.te, %bb.am ], [ %i.th, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.tn = fneg float %.0993
  %i.to = fmul float %i.of, %i.tn
  %i.tp = fadd float %i.su, %.0992
  %i.tq = fmul float %i.to, %i.tp
  %i.tr = load float, ptr %i.tm, align 4, !tbaa !79 ; 3 uses
  %i.ts = fmul float %.0994, %i.tr
  %i.tt = fsub float %i.tq, %i.ts
  %i.tu = fadd float %i.tr, %i.tt                 ; 2 uses
  %i.tv = fcmp olt float %i.tu, 0.000000e+00
  %i.tw = select i1 %i.tv, float 0.000000e+00, float %i.tu ; 2 uses
  %i.tx = fsub float %i.tw, %i.tr
  store float %i.tw, ptr %i.tm, align 4, !tbaa !79
  %i.ty = fneg float %i.tx                        ; 2 uses
  %i.tz = insertelement <2 x float> poison, float %i.ty, i64 0
  %i.ua = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ub = fmul <2 x float> %.sroa.07.0.i, %i.ua   ; 4 uses
  %i.uc = fmul <2 x float> %i.ow, %i.ub
  %i.ud = fsub <2 x float> %i.oy, %i.uc
  %i.ue = fmul <2 x float> %i.qi, %i.ub
  %i.uf = fadd <2 x float> %i.qk, %i.ue
  %i.ug = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.uh = fmul <2 x float> %i.oz, %i.ug
  %i.ui = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uj = fmul <2 x float> %i.pc, %i.ui
  %i.uk = fsub <2 x float> %i.uh, %i.uj           ; 3 uses
  %i.ul = insertelement <4 x float> poison, float %i.ty, i64 0
  %i.um = shufflevector <2 x float> %i.uk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.un = shufflevector <4 x float> %i.ul, <4 x float> %i.um, <4 x i32> <i32 0, i32 0, i32 4, i32 5>
  %i.uo = fmul <4 x float> %i.pj, %i.un           ; 3 uses
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uq = fmul <2 x float> %i.pc, %i.up
  %i.ur = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.us = insertelement <2 x float> %i.ur, float %i.df, i64 1 ; 2 uses
  %i.ut = fmul <2 x float> %i.us, %i.ug
  %i.uu = fsub <2 x float> %i.uq, %i.ut           ; 3 uses
  %i.uv = fmul <2 x float> %i.us, %i.ui
  %i.uw = fmul <2 x float> %i.oz, %i.up
  %i.ux = fsub <2 x float> %i.uv, %i.uw           ; 3 uses
  %i.uy = fmul <2 x float> %i.qm, %i.uu
  %i.uz = fmul <2 x float> %i.qp, %i.ux
  %i.va = fadd <2 x float> %i.uy, %i.uz
  %i.vb = shufflevector <2 x float> %i.h, <2 x float> %i.va, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.vc = fadd <4 x float> %i.vb, %i.uo
  %i.vd = fmul <4 x float> %i.vb, %i.uo
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> %i.vc, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.vf = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vg = fmul <2 x float> %i.m, %i.vf
  %i.vh = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vi = fmul <2 x float> %i.l, %i.vh
  %i.vj = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vk = fmul <2 x float> %i.k, %i.vj
  %i.vl = fadd <2 x float> %i.vi, %i.vk
  %i.vm = fadd <2 x float> %i.vg, %i.vl
  %i.vn = fsub <2 x float> %i.qg, %i.vm
  %i.vo = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vp = fmul <2 x float> %i.q, %i.vo
  %i.vq = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vr = fmul <2 x float> %i.o, %i.vq
  %i.vs = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = fmul <2 x float> %i.p, %i.vs
  %i.vu = fadd <2 x float> %i.vr, %i.vt
  %i.vv = fadd <2 x float> %i.vp, %i.vu
  %i.vw = fadd <2 x float> %i.re, %i.vv
  %i.vx = fadd <4 x float> %i.rh, %i.ve
  %i.vy = fsub <4 x float> %i.rh, %i.ve
  %i.vz = shufflevector <4 x float> %i.vx, <4 x float> %i.vy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ac
  %.sroa.0841.1 = phi <2 x float> [ %i.vw, %bb.ap ], [ %.sroa.0841.0, %bb.ac ] ; 5 uses
  %.sroa.0854.1 = phi <2 x float> [ %i.uf, %bb.ap ], [ %.sroa.0854.0, %bb.ac ] ; 4 uses
  %.sroa.0868.1 = phi <2 x float> [ %i.vn, %bb.ap ], [ %.sroa.0868.0, %bb.ac ] ; 5 uses
  %.sroa.0882.1 = phi <2 x float> [ %i.ud, %bb.ap ], [ %.sroa.0882.0, %bb.ac ] ; 4 uses
  %i.wa = phi <4 x float> [ %i.vz, %bb.ap ], [ %i.lv, %bb.ac ] ; 7 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.wc = load i8, ptr %i.wb, align 2, !tbaa !161 ; 3 uses
  %i.wd = icmp ult i8 %i.wc, 2
  br i1 %i.wd, label %bb.as, label %bb.ar, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  %i.we = zext i8 %i.wc to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @87, i64 %i.we) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %bb.aq
  %i.wf = trunc nuw i8 %i.wc to i1
  %i.wg = extractelement <4 x float> %i.wa, i64 0 ; 3 uses
  %i.wh = extractelement <4 x float> %i.wa, i64 1 ; 3 uses
  %i.wi = extractelement <4 x float> %i.wa, i64 2 ; 2 uses
  %i.wj = extractelement <4 x float> %i.wa, i64 3 ; 2 uses
  br i1 %i.wf, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.wk = icmp ne ptr %1, null, !nosanitize !10
  %i.wl = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.wm = and i64 %i.wl, 7, !nosanitize !10
  %i.wn = icmp eq i64 %i.wm, 0, !nosanitize !10
  %i.wo = and i1 %i.wk, %i.wn, !nosanitize !10
  br i1 %i.wo, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.wl) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !103 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !124
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !162
  %i.wv = fsub float %i.wg, %i.wh
  %i.ww = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.wx = shufflevector <4 x float> %i.en, <4 x float> %i.ww, <4 x i32> <i32 2, i32 0, i32 poison, i32 4>
  %i.wy = insertelement <4 x float> %i.wx, float %i.df, i64 2
  %i.wz = shufflevector <2 x float> %.sroa.0841.1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %i.xa = shufflevector <4 x float> %i.wa, <4 x float> %i.wz, <4 x i32> <i32 2, i32 4, i32 poison, i32 3>
  %i.xb = shufflevector <2 x float> %.sroa.0868.1, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.xc = shufflevector <4 x float> %i.xa, <4 x float> %i.xb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.xd = fmul <4 x float> %i.wy, %i.xc
  %i.xe = shufflevector <4 x float> %i.en, <4 x float> %i.ww, <4 x i32> <i32 1, i32 2, i32 5, i32 poison>
  %i.xf = insertelement <4 x float> %i.xe, float %i.df, i64 3
  %i.xg = shufflevector <4 x float> %i.wz, <4 x float> %i.wa, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.xh = shufflevector <2 x float> %.sroa.0868.1, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.xi = shufflevector <4 x float> %i.xg, <4 x float> %i.xh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.xj = fmul <4 x float> %i.xf, %i.xi
  %i.xk = fsub <4 x float> %i.xd, %i.xj           ; 4 uses
  %i.xl = shufflevector <4 x float> %i.en, <4 x float> %i.ww, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.xm = shufflevector <2 x float> %.sroa.0841.1, <2 x float> %.sroa.0868.1, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.xn = shufflevector <4 x float> %i.xm, <4 x float> %i.wa, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.xo = fmul <4 x float> %i.xl, %i.xn           ; 4 uses
  %shift1741 = shufflevector <4 x float> %i.xo, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop1742 = fsub <4 x float> %i.xo, %shift1741
  %shift1750 = shufflevector <4 x float> %foldExtExtBinop1742, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop1751 = fsub <4 x float> %i.xk, %shift1750
  %i.xp = extractelement <4 x float> %foldExtExtBinop1751, i64 1
  %i.xq = fadd float %i.wv, %i.xp
  %i.xr = fmul float %.sroa.5.0.i, %i.xq
  %.sroa.03.0.vec.extract.i1420 = extractelement <2 x float> %.sroa.07.0.i, i64 0
  %foldExtExtBinop1734 = fsub <2 x float> %.sroa.0854.1, %.sroa.0882.1
  %i.xs = extractelement <2 x float> %foldExtExtBinop1734, i64 0
  %shift1738 = shufflevector <4 x float> %i.xo, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1739 = fsub <4 x float> %i.xo, %shift1738
  %shift1744 = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1745 = fsub <4 x float> %foldExtExtBinop1739, %shift1744
  %i.xt = extractelement <4 x float> %foldExtExtBinop1745, i64 0
  %i.xu = fadd float %i.xs, %i.xt
  %i.xv = fmul float %.sroa.03.0.vec.extract.i1420, %i.xu
  %.sroa.03.4.vec.extract.i1422 = extractelement <2 x float> %.sroa.07.0.i, i64 1
  %foldExtExtBinop1736 = fsub <2 x float> %.sroa.0854.1, %.sroa.0882.1
  %i.xw = extractelement <2 x float> %foldExtExtBinop1736, i64 1
  %shift1747 = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1748 = fsub <4 x float> %i.xk, %shift1747
  %i.xx = extractelement <4 x float> %foldExtExtBinop1748, i64 0
  %i.xy = fadd float %i.xw, %i.xx
  %i.xz = fmul float %.sroa.03.4.vec.extract.i1422, %i.xy
  %i.ya = fadd float %i.xv, %i.xz
  %i.yb = fadd float %i.xr, %i.ya
  %i.yc = fsub float %i.wu, %i.yb
  %i.yd = fmul float %i.ws, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.yg = load float, ptr %i.ye, align 8, !tbaa !125
  %i.yh = load float, ptr %i.yf, align 4, !tbaa !163
  %i.yi = fmul float %i.yg, %i.yh                 ; 3 uses
  %i.yj = fadd float %i.yd, %i.wq                 ; 3 uses
  %i.yk = fneg float %i.yi                        ; 2 uses
  %i.yl = fcmp olt float %i.yj, %i.yk
  %i.ym = fcmp olt float %i.yi, %i.yj
  %i.yn = select i1 %i.ym, float %i.yi, float %i.yj
  %i.yo = select i1 %i.yl, float %i.yk, float %i.yn ; 2 uses
  store float %i.yo, ptr %i.wp, align 4, !tbaa !103
  %.scalar = fsub float %i.yo, %i.wq
  %i.yp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %i.yq = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yr = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ys = insertelement <4 x float> %i.yr, float 1.000000e+00, i64 3
  %i.yt = insertelement <4 x float> %i.ys, float %.sroa.5.0.i, i64 0
  %i.yu = fmul <4 x float> %i.yt, %i.yq           ; 6 uses
  %i.yv = extractelement <4 x float> %i.yu, i64 1
  %i.yw = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yx = shufflevector <4 x float> %i.yu, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.yy = fmul <2 x float> %i.yw, %i.yx
  %i.yz = fsub <2 x float> %.sroa.0882.1, %i.yy
  %i.za = extractelement <4 x float> %i.yu, i64 0 ; 3 uses
  %i.zb = extractelement <2 x float> %i.h, i64 0
  %i.zc = fmul float %i.zb, %i.za
  %i.zd = fsub float %i.wh, %i.zc
  %i.ze = fmul float %i.df, %i.yv
  %i.zf = extractelement <2 x float> %i.dd, i64 0
  %i.zg = fmul float %i.zf, %i.za
  %i.zh = fsub float %i.ze, %i.zg                 ; 2 uses
  %i.zi = fmul float %.sroa.281661.0.copyload, %i.zh
  %i.zj = shufflevector <4 x float> %i.yu, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.zk = fmul <2 x float> %i.dd, %i.zj
  %i.zl = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.zm = insertelement <2 x float> %i.zl, float %i.df, i64 1
  %i.zn = fmul <2 x float> %i.zm, %i.yx
  %i.zo = fsub <2 x float> %i.zk, %i.zn           ; 4 uses
  %i.zp = extractelement <2 x float> %i.zo, i64 1 ; 2 uses
  %i.zq = fmul float %.sroa.131646.0.copyload, %i.zp
  %i.zr = fadd float %i.zq, %i.zi
  %i.zs = extractelement <2 x float> %i.l, i64 0
  %i.zt = fmul float %i.zs, %i.zp
  %i.zu = extractelement <2 x float> %i.zo, i64 0
  %foldExtExtBinop1753 = fmul <2 x float> %i.m, %i.zo
  %i.zv = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 1, i32 3>
  %i.zw = fmul <2 x float> %i.zv, %i.zo           ; 2 uses
  %i.zx = fmul float %.sroa.431676.0.copyload, %i.zu
  %i.zy = fadd float %i.zx, %i.zr
  %i.zz = insertelement <2 x float> poison, float %i.zh, i64 0
  %i.aaa = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aab = fmul <2 x float> %i.k, %i.aaa
  %i.aac = insertelement <2 x float> %i.zw, float %i.zt, i64 0
  %i.aad = fadd <2 x float> %i.aac, %i.aab
  %i.aae = shufflevector <2 x float> %i.zw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aaf = shufflevector <2 x float> %foldExtExtBinop1753, <2 x float> %i.aae, <2 x i32> <i32 0, i32 3>
  %i.aag = fadd <2 x float> %i.aaf, %i.aad
  %i.aah = fsub <2 x float> %.sroa.0868.1, %i.aag
  %i.aai = fsub float %i.wj, %i.zy
  %i.aaj = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aak = fmul <2 x float> %i.aaj, %i.yx
  %i.aal = fadd <2 x float> %.sroa.0854.1, %i.aak
  %i.aam = fmul float %i.i, %i.za
  %i.aan = fadd float %i.wg, %i.aam
  %i.aao = fmul <4 x float> %i.en, %i.yu
  %i.aap = shufflevector <4 x float> %i.yu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.aaq = fmul <4 x float> %i.er, %i.aap
  %i.aar = fsub <4 x float> %i.aao, %i.aaq        ; 4 uses
  %i.aas = extractelement <4 x float> %i.aar, i64 0 ; 2 uses
  %i.aat = fmul float %.sroa.13.0.copyload, %i.aas
  %i.aau = extractelement <4 x float> %i.aar, i64 1 ; 2 uses
  %i.aav = fmul float %.sroa.28.0.copyload, %i.aau
  %i.aaw = fadd float %i.aat, %i.aav
  %i.aax = extractelement <2 x float> %i.o, i64 0
  %i.aay = fmul float %i.aax, %i.aas
  %i.aaz = extractelement <2 x float> %i.p, i64 0
  %i.aba = fmul float %i.aaz, %i.aau
  %i.abb = extractelement <4 x float> %i.aar, i64 2 ; 2 uses
  %i.abc = extractelement <2 x float> %i.q, i64 0
  %i.abd = fmul float %i.abc, %i.abb
  %i.abe = shufflevector <2 x float> %.sroa.0841.1, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.abf = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.abg = shufflevector <4 x float> %i.abe, <4 x float> %i.abf, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.abh = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.abi = shufflevector <4 x float> %i.abg, <4 x float> %i.abh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.abj = fmul <4 x float> %i.abi, %i.aar        ; 3 uses
  %i.abk = fmul float %.sroa.43.0.copyload, %i.abb
  %i.abl = fadd float %i.abk, %i.aaw
  %i.abm = shufflevector <4 x float> %i.abj, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.abn = insertelement <2 x float> %i.abm, float %i.aay, i64 0
  %i.abo = shufflevector <4 x float> %i.abj, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.abp = insertelement <2 x float> %i.abo, float %i.aba, i64 0
  %i.abq = fadd <2 x float> %i.abn, %i.abp
  %i.abr = shufflevector <4 x float> %i.abj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.abs = insertelement <2 x float> %i.abr, float %i.abd, i64 0
  %i.abt = fadd <2 x float> %i.abs, %i.abq
  %i.abu = fadd <2 x float> %.sroa.0841.1, %i.abt
  %i.abv = fadd float %i.wi, %i.abl
  br label %bb.az

bb.aw:                                            ; preds = %bb.v, %bb.r
  %foldExtExtBinop1755 = fsub <2 x float> %.sroa.0854.0.copyload, %.sroa.0882.0.copyload
  %i.abw = extractelement <2 x float> %foldExtExtBinop1755, i64 0
  %.sroa.09.4.vec.extract13.i1498 = extractelement <2 x float> %.sroa.0841.0.copyload, i64 1
  %i.abx = fmul float %.sroa.09.4.vec.extract13.i1498, %i.ev
  %i.aby = extractelement <4 x float> %i.en, i64 0
  %i.abz = fmul float %.sroa.19.0.copyload, %i.aby
  %i.aca = fsub float %i.abx, %i.abz
  %.sroa.09.4.vec.extract13.i1506 = extractelement <2 x float> %.sroa.0868.0.copyload, i64 1
  %i.acb = fmul float %.sroa.09.4.vec.extract13.i1506, %i.df
  %i.acc = extractelement <2 x float> %i.dd, i64 1
  %i.acd = fmul float %.sroa.19879.0.copyload, %i.acc
  %i.ace = fsub float %i.acb, %i.acd
  %i.acf = fsub float %i.aca, %i.ace
  %i.acg = fadd float %i.abw, %i.acf
  %.sroa.03.0.vec.extract.i1530 = extractelement <2 x float> %.sroa.07.0.i, i64 0
  %i.ach = fmul float %i.acg, %.sroa.03.0.vec.extract.i1530
  %i.aci = shufflevector <2 x float> %.sroa.0854.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acj = insertelement <2 x float> %i.aci, float %.sroa.19865.0.copyload, i64 1
  %i.ack = shufflevector <2 x float> %.sroa.0882.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acl = insertelement <2 x float> %i.ack, float %.sroa.19893.0.copyload, i64 1
  %i.acm = fsub <2 x float> %i.acj, %i.acl
  %i.acn = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aco = insertelement <2 x float> %i.acn, float %.sroa.19.0.copyload, i64 0
  %i.acp = fmul <2 x float> %i.aco, %i.fa
  %i.acq = shufflevector <4 x float> %i.en, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.acr = fmul <2 x float> %.sroa.0841.0.copyload, %i.acq
  %i.acs = fsub <2 x float> %i.acp, %i.acr
  %i.act = shufflevector <2 x float> %.sroa.0868.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acu = insertelement <2 x float> %i.act, float %.sroa.19879.0.copyload, i64 0
  %i.acv = fmul <2 x float> %i.acu, %i.dd
  %i.acw = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acx = insertelement <2 x float> %i.acw, float %i.df, i64 0
  %i.acy = fmul <2 x float> %.sroa.0868.0.copyload, %i.acx
  %i.acz = fsub <2 x float> %i.acv, %i.acy
  %i.ada = fsub <2 x float> %i.acs, %i.acz
  %i.adb = fadd <2 x float> %i.acm, %i.ada
  %i.adc = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.add = insertelement <2 x float> %i.adc, float %.sroa.5.0.i, i64 1
  %i.ade = fmul <2 x float> %i.adb, %i.add        ; 2 uses
  %i.adf = extractelement <2 x float> %i.ade, i64 0
  %i.adg = fadd float %i.ach, %i.adf
  %i.adh = extractelement <2 x float> %i.ade, i64 1
  %i.adi = fadd float %i.adh, %i.adg
  br i1 %2, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.adj = load float, ptr %i.s, align 4, !tbaa !77
  %i.adk = fsub float %sqrt.i, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !158
  %i.adn = fmul float %i.adk, %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.adq = load float, ptr %i.ado, align 4, !tbaa !159
  %i.adr = load float, ptr %i.adp, align 4, !tbaa !160
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0997 = phi float [ %i.adr, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %.0996 = phi float [ %i.adq, %bb.ax ], [ 1.000000e+00, %bb.aw ]
  %.0995 = phi float [ %i.adn, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.adu = load float, ptr %i.ads, align 4, !tbaa !124
  %i.adv = fneg float %.0996
  %i.adw = fmul float %i.adu, %i.adv
  %i.adx = fadd float %i.adi, %.0995
  %i.ady = fmul float %i.adx, %i.adw
  %i.adz = load float, ptr %i.adt, align 4, !tbaa !105 ; 2 uses
  %i.aea = fmul float %.0997, %i.adz
  %i.aeb = extractelement <2 x float> %i.h, i64 0
  %i.aec = extractelement <2 x float> %i.o, i64 0
  %i.aed = extractelement <2 x float> %i.p, i64 0
  %i.aee = extractelement <2 x float> %i.q, i64 0
  %.scalar1757 = fsub float %i.ady, %i.aea        ; 2 uses
  %i.aef = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1757, i64 0
  %i.aeg = shufflevector <2 x float> %i.aef, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aeh = fadd float %i.adz, %.scalar1757
  store float %i.aeh, ptr %i.adt, align 4, !tbaa !105
  %i.aei = shufflevector <2 x float> %.sroa.07.0.i, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aej = insertelement <4 x float> %i.aei, float 1.000000e+00, i64 3
  %i.aek = insertelement <4 x float> %i.aej, float %.sroa.5.0.i, i64 0
  %i.ael = fmul <4 x float> %i.aek, %i.aeg        ; 5 uses
  %i.aem = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = shufflevector <4 x float> %i.ael, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aeo = fmul <2 x float> %i.aem, %i.aen
  %i.aep = fsub <2 x float> %.sroa.0882.0.copyload, %i.aeo
  %i.aeq = extractelement <4 x float> %i.ael, i64 0 ; 2 uses
  %i.aer = fmul float %i.aeb, %i.aeq
  %i.aes = fsub float %.sroa.19893.0.copyload, %i.aer
  %i.aet = shufflevector <2 x float> %i.dd, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.aeu = insertelement <3 x float> %i.aet, float %i.df, i64 1
  %i.aev = shufflevector <4 x float> %i.ael, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2> ; 2 uses
  %i.aew = fmul <3 x float> %i.aeu, %i.aev
  %i.aex = shufflevector <3 x float> %i.aew, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.aey = shufflevector <2 x float> %i.dd, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.aez = insertelement <3 x float> %i.aey, float %i.df, i64 2
  %i.afa = fmul <3 x float> %i.aez, %i.aev
  %i.afb = fsub <3 x float> %i.aex, %i.afa        ; 6 uses
  %i.afc = extractelement <3 x float> %i.afb, i64 2
  %i.afd = fmul float %.sroa.131646.0.copyload, %i.afc
  %i.afe = extractelement <3 x float> %i.afb, i64 0
  %i.aff = fmul float %.sroa.281661.0.copyload, %i.afe
  %i.afg = fadd float %i.afd, %i.aff
  %i.afh = shufflevector <3 x float> %i.afb, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.afi = fmul <2 x float> %i.l, %i.afh
  %i.afj = shufflevector <3 x float> %i.afb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.afk = fmul <2 x float> %i.k, %i.afj
  %i.afl = fadd <2 x float> %i.afi, %i.afk
  %i.afm = shufflevector <3 x float> %i.afb, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afn = fmul <2 x float> %i.m, %i.afm
  %i.afo = fadd <2 x float> %i.afn, %i.afl
  %i.afp = extractelement <3 x float> %i.afb, i64 1
  %i.afq = fmul float %.sroa.431676.0.copyload, %i.afp
  %i.afr = fadd float %i.afq, %i.afg
  %i.afs = fsub <2 x float> %.sroa.0868.0.copyload, %i.afo
  %i.aft = fsub float %.sroa.19879.0.copyload, %i.afr
  %i.afu = insertelement <2 x float> poison, float %i.i, i64 0
  %i.afv = shufflevector <2 x float> %i.afu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afw = fmul <2 x float> %i.afv, %i.aen
  %i.afx = fadd <2 x float> %.sroa.0854.0.copyload, %i.afw
  %i.afy = fmul float %i.i, %i.aeq
  %i.afz = fadd float %.sroa.19865.0.copyload, %i.afy
  %i.aga = insertelement <4 x float> %i.en, float 1.000000e+00, i64 3
  %i.agb = fmul <4 x float> %i.aga, %i.ael
  %i.agc = shufflevector <4 x float> %i.en, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.agd = shufflevector <4 x float> %i.ael, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.age = fmul <4 x float> %i.agc, %i.agd
  %i.agf = fsub <4 x float> %i.agb, %i.age        ; 4 uses
  %i.agg = extractelement <4 x float> %i.agf, i64 0 ; 2 uses
  %i.agh = fmul float %.sroa.13.0.copyload, %i.agg
  %i.agi = extractelement <4 x float> %i.agf, i64 1 ; 2 uses
  %i.agj = fmul float %.sroa.28.0.copyload, %i.agi
  %i.agk = fadd float %i.agh, %i.agj
  %i.agl = fmul float %i.aec, %i.agg
  %i.agm = fmul float %i.aed, %i.agi
  %i.agn = fadd float %i.agl, %i.agm
  %i.ago = extractelement <4 x float> %i.agf, i64 2 ; 2 uses
  %i.agp = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.agq = shufflevector <2 x float> %.sroa.0841.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agr = shufflevector <4 x float> %i.agp, <4 x float> %i.agq, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.ags = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.agt = shufflevector <4 x float> %i.agr, <4 x float> %i.ags, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.agu = fmul <4 x float> %i.agt, %i.agf        ; 3 uses
  %i.agv = fmul float %.sroa.43.0.copyload, %i.ago
  %i.agw = fadd float %i.agv, %i.agk
  %i.agx = fmul float %i.aee, %i.ago
  %shift1758 = shufflevector <4 x float> %i.agu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1759 = fadd <4 x float> %i.agu, %shift1758
  %5 = shufflevector <4 x float> %i.agu, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %6 = insertelement <2 x float> %5, float %i.agn, i64 0
  %7 = insertelement <2 x float> poison, float %i.agx, i64 0
  %8 = shufflevector <4 x float> %foldExtExtBinop1759, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.agy = shufflevector <2 x float> %7, <2 x float> %8, <2 x i32> <i32 0, i32 2>
  %i.agz = fadd <2 x float> %6, %i.agy
  %i.aha = fadd <2 x float> %.sroa.0841.0.copyload, %i.agz
  %i.ahb = fadd float %.sroa.19.0.copyload, %i.agw
  br label %bb.az

bb.az:                                            ; preds = %bb.as, %bb.av, %bb.ay
  %.sroa.0841.2 = phi <2 x float> [ %i.abu, %bb.av ], [ %.sroa.0841.1, %bb.as ], [ %i.aha, %bb.ay ]
  %.sroa.19.2 = phi float [ %i.abv, %bb.av ], [ %i.wi, %bb.as ], [ %i.ahb, %bb.ay ]
  %.sroa.0854.2 = phi <2 x float> [ %i.aal, %bb.av ], [ %.sroa.0854.1, %bb.as ], [ %i.afx, %bb.ay ]
  %.sroa.19865.2 = phi float [ %i.aan, %bb.av ], [ %i.wg, %bb.as ], [ %i.afz, %bb.ay ]
  %.sroa.0868.2 = phi <2 x float> [ %i.aah, %bb.av ], [ %.sroa.0868.1, %bb.as ], [ %i.afs, %bb.ay ]
  %.sroa.19879.2 = phi float [ %i.aai, %bb.av ], [ %i.wj, %bb.as ], [ %i.aft, %bb.ay ]
  %.sroa.0882.2 = phi <2 x float> [ %i.yz, %bb.av ], [ %.sroa.0882.1, %bb.as ], [ %i.aep, %bb.ay ]
  %.sroa.19893.2 = phi float [ %i.zd, %bb.av ], [ %i.wh, %bb.as ], [ %i.aes, %bb.ay ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !128
  %i.ahe = and i32 %i.ahd, 4096
  %.not1022 = icmp eq i32 %i.ahe, 0
  br i1 %.not1022, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store <2 x float> %.sroa.0882.2, ptr %i.ap, align 4, !tbaa !78
  store float %.sroa.19893.2, ptr %.sroa.19893.0..sroa_idx, align 4, !tbaa !78
  store <2 x float> %.sroa.0868.2, ptr %i.bs, align 4, !tbaa !78
  store float %.sroa.19879.2, ptr %.sroa.19879.0..sroa_idx, align 4, !tbaa !78
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !128
  %i.ahh = and i32 %i.ahg, 4096
  %.not1023 = icmp eq i32 %i.ahh, 0
  br i1 %.not1023, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store <2 x float> %.sroa.0854.2, ptr %i.bm, align 4, !tbaa !78
  store float %.sroa.19865.2, ptr %.sroa.19865.0..sroa_idx, align 4, !tbaa !78
  store <2 x float> %.sroa.0841.2, ptr %i.by, align 4, !tbaa !78
  store float %.sroa.19.2, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !78
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawDistanceJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3) local_unnamed_addr #5 !func_sanitize !164 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @89, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0102.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 4 uses
  %.sroa.2103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2103.0.copyload = load float, ptr %.sroa.2103.0..sroa_idx, align 4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 4 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %i.i, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 8, !tbaa !102
  %foldExtExtBinop = fmul <2 x float> %.sroa.0102.0.copyload, %i.k
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = fmul float %.sroa.2103.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %i.p = fsub float %i.n, %i.o
  %i.q = shufflevector <2 x float> %.sroa.0102.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %.sroa.2103.0.copyload, i64 1 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %i.i
  %i.t = shufflevector <2 x float> %i.i, <2 x float> %i.k, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.u = fmul <2 x float> %.sroa.0102.0.copyload, %i.t
  %i.v = fsub <2 x float> %i.s, %i.u              ; 2 uses
  %i.w = insertelement <2 x float> %i.q, float %.sroa.2103.0.copyload, i64 0
  %i.x = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.y = fmul <2 x float> %i.w, %i.x
  %i.z = fmul <2 x float> %i.r, %i.x
  %i.aa = fadd <2 x float> %i.y, %i.v             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ac = insertelement <2 x float> %i.ab, float %i.p, i64 0
  %i.ad = fadd <2 x float> %i.z, %i.ac            ; 2 uses
  %i.ae = fmul <2 x float> %i.t, %i.aa
  %i.af = shufflevector <2 x float> %i.k, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ad
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fmul <2 x float> %i.ah, splat (float 2.000000e+00)
  %i.aj = fadd <2 x float> %.sroa.0102.0.copyload, %i.ai
  %i.ak = load <2 x float>, ptr %2, align 8, !tbaa !78
  %i.al = fadd <2 x float> %i.ak, %i.aj           ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.092.0.copyload = load <2 x float>, ptr %i.am, align 4 ; 4 uses
  %.sroa.293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.293.0.copyload = load float, ptr %.sroa.293.0..sroa_idx, align 4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i.i152 = extractelement <2 x float> %i.ao, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load <4 x float>, ptr %i.ar, align 8
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %foldExtExtBinop215 = fmul <2 x float> %.sroa.092.0.copyload, %i.aq
  %i.as = extractelement <2 x float> %foldExtExtBinop215, i64 0
  %i.at = fmul float %.sroa.293.0.copyload, %.sroa.09.0.vec.extract.i.i.i152
  %i.au = fsub float %i.as, %i.at
  %i.av = shufflevector <2 x float> %.sroa.092.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = insertelement <2 x float> %i.av, float %.sroa.293.0.copyload, i64 1 ; 2 uses
  %i.ax = fmul <2 x float> %i.aw, %i.ao
  %i.ay = shufflevector <2 x float> %i.ao, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.az = fmul <2 x float> %.sroa.092.0.copyload, %i.ay
  %i.ba = fsub <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = insertelement <2 x float> %i.av, float %.sroa.293.0.copyload, i64 0
  %i.bc = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.aw, %i.bc
  %i.bf = fadd <2 x float> %i.bd, %i.ba           ; 2 uses
  %i.bg = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bh = insertelement <2 x float> %i.bg, float %i.au, i64 0
  %i.bi = fadd <2 x float> %i.be, %i.bh           ; 2 uses
  %i.bj = fmul <2 x float> %i.ay, %i.bf
  %i.bk = shufflevector <2 x float> %i.aq, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.bl = fmul <2 x float> %i.bk, %i.bi
  %i.bm = fsub <2 x float> %i.bj, %i.bl
  %i.bn = fmul <2 x float> %i.bm, splat (float 2.000000e+00)
  %i.bo = fadd <2 x float> %.sroa.092.0.copyload, %i.bn
  %i.bp = load <2 x float>, ptr %3, align 8, !tbaa !78
  %i.bq = fadd <2 x float> %i.bp, %i.bo           ; 3 uses
  %i.br = shufflevector <2 x float> %i.ao, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.bs = shufflevector <2 x float> %i.bi, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = shufflevector <2 x float> %i.ao, <2 x float> %i.i, <2 x i32> <i32 1, i32 3>
  %i.bv = shufflevector <2 x float> %i.bf, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.bw = fmul <2 x float> %i.bu, %i.bv
  %i.bx = fsub <2 x float> %i.bt, %i.bw
  %i.by = fmul <2 x float> %i.bx, splat (float 2.000000e+00)
  %i.bz = insertelement <2 x float> poison, float %.sroa.293.0.copyload, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %.sroa.2103.0.copyload, i64 1
  %i.cb = fadd <2 x float> %i.ca, %i.by
  %i.cc = insertelement <2 x float> %5, float %i.m, i64 1
  %i.cd = fadd <2 x float> %i.cc, %i.cb           ; 2 uses
  %i.ce = fsub <2 x float> %i.bq, %i.al           ; 3 uses
  %i.cf = extractelement <2 x float> %i.cd, i64 0 ; 3 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1 ; 6 uses
  %i.ch = fsub float %i.cf, %i.cg                 ; 3 uses
  %i.ci = fmul <2 x float> %i.ce, %i.ce           ; 2 uses
  %shift = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fadd <2 x float> %i.ci, %shift
  %i.cj = extractelement <2 x float> %foldExtExtBinop217, i64 0
  %i.ck = fmul float %i.ch, %i.ch
  %i.cl = fadd float %i.ck, %i.cj                 ; 2 uses
  %i.cm = fcmp ogt float %i.cl, f0x057A0000
  br i1 %i.cm, label %bb.d, label %b3Normalize.exit

bb.d:                                             ; preds = %bb.c
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cl)
  %i.cn = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.ce, %i.cp
  %i.cr = fmul float %i.ch, %i.cn
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.07.0.i = phi <2 x float> [ %i.cq, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.cr, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !91 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !92 ; 3 uses
  %i.cw = fcmp olt float %i.ct, %i.cv
  br i1 %i.cw, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %b3Normalize.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 297
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !84  ; 3 uses
  %i.cz = icmp ult i8 %i.cy, 2
  br i1 %i.cz, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.da = zext i8 %i.cy to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @90, i64 %i.da) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.db = trunc nuw i8 %i.cy to i1
  br i1 %i.db, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.dc = fmul float %.sroa.5.0.i, %i.ct
  %i.dd = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %.sroa.07.0.i, %i.de
  %i.dg = fadd <2 x float> %i.al, %i.df           ; 2 uses
  %i.dh = fadd float %i.cg, %i.dc                 ; 2 uses
  %i.di = fmul float %.sroa.5.0.i, %i.cv
  %i.dj = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %.sroa.07.0.i, %i.dk
  %i.dm = fadd <2 x float> %i.al, %i.dl           ; 2 uses
  %i.dn = fadd float %i.cg, %i.di                 ; 2 uses
  %i.do = tail call float @b3GetLengthUnitsPerMeter() #7
  %i.dp = fmul float %i.do, 5.000000e-03
  %i.dq = fcmp ogt float %i.ct, %i.dp
  br i1 %i.dq, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dr = icmp ne ptr %0, null, !nosanitize !10
  %i.ds = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.dt = and i64 %i.ds, 7, !nosanitize !10
  %i.du = icmp eq i64 %i.dt, 0, !nosanitize !10
  %i.dv = and i1 %i.dr, %i.du, !nosanitize !10
  br i1 %i.dv, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @92, i64 %i.ds) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !167 ; 4 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8
  %i.dz = load i32, ptr %i.dy, align 4, !nosanitize !10
  %i.ea = icmp eq i32 %i.dz, -1056584962, !nosanitize !10
  br i1 %i.ea, label %bb.l, label %bb.n, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr i8, ptr %i.dx, i64 -4
  %i.ec = load i32, ptr %i.eb, align 8, !nosanitize !10
  %i.ed = icmp eq i32 %i.ec, -127790077, !nosanitize !10
  br i1 %i.ed, label %bb.n, label %bb.m, !prof !11, !nosanitize !10

bb.m:                                             ; preds = %bb.l
  %i.ee = ptrtoint ptr %i.dx to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @94, i64 %i.ee) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !168
  tail call void %i.dx(<2 x float> %i.dg, float %i.dh, float noundef 6.000000e+00, i32 noundef 9498256, ptr noundef %i.eg) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.eh = load float, ptr %i.cu, align 4, !tbaa !92
  %i.ei = tail call float @b3GetLengthUnitsPerMeter() #7
  %i.ej = fmul float %i.ei, 1.000000e+05
  %i.ek = fcmp olt float %i.eh, %i.ej
  br i1 %i.ek, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.el = icmp ne ptr %0, null, !nosanitize !10
  %i.em = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.en = and i64 %i.em, 7, !nosanitize !10
  %i.eo = icmp eq i64 %i.en, 0, !nosanitize !10
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !10
  br i1 %i.ep, label %bb.r, label %bb.q, !prof !11, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.em) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !167 ; 4 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -8
  %i.et = load i32, ptr %i.es, align 4, !nosanitize !10
  %i.eu = icmp eq i32 %i.et, -1056584962, !nosanitize !10
  br i1 %i.eu, label %bb.s, label %bb.u, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  %i.ev = getelementptr i8, ptr %i.er, i64 -4
  %i.ew = load i32, ptr %i.ev, align 8, !nosanitize !10
  %i.ex = icmp eq i32 %i.ew, -127790077, !nosanitize !10
  br i1 %i.ex, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.ey = ptrtoint ptr %i.er to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @96, i64 %i.ey) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !168
  tail call void %i.er(<2 x float> %i.dm, float %i.dn, float noundef 6.000000e+00, i32 noundef 16711680, ptr noundef %i.fa) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %i.fb = load float, ptr %i.cs, align 4, !tbaa !91
  %i.fc = tail call float @b3GetLengthUnitsPerMeter() #7
  %i.fd = fmul float %i.fc, 5.000000e-03
  %i.fe = fcmp ogt float %i.fb, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.ff = load float, ptr %i.cu, align 4, !tbaa !92
  %i.fg = tail call float @b3GetLengthUnitsPerMeter() #7
  %i.fh = fmul float %i.fg, 1.000000e+05
  %i.fi = fcmp olt float %i.ff, %i.fh
  br i1 %i.fi, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.fj = icmp ne ptr %0, null, !nosanitize !10
  %i.fk = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.fl = and i64 %i.fk, 7, !nosanitize !10
  %i.fm = icmp eq i64 %i.fl, 0, !nosanitize !10
  %i.fn = and i1 %i.fj, %i.fm, !nosanitize !10
  br i1 %i.fn, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %i.fk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !169 ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 -8
  %i.fr = load i32, ptr %i.fq, align 4, !nosanitize !10
  %i.fs = icmp eq i32 %i.fr, -1056584962, !nosanitize !10
  br i1 %i.fs, label %bb.aa, label %bb.ac, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.ft = getelementptr i8, ptr %i.fp, i64 -4
  %i.fu = load i32, ptr %i.ft, align 8, !nosanitize !10
  %i.fv = icmp eq i32 %i.fu, -341714709, !nosanitize !10
  br i1 %i.fv, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.fw = ptrtoint ptr %i.fp to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @99, i64 %i.fw) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !168
  tail call void %i.fp(<2 x float> %i.dg, float %i.dh, <2 x float> %i.dm, float %i.dn, i32 noundef 8421504, ptr noundef %i.fy) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.v, %bb.w, %bb.ac, %bb.g, %b3Normalize.exit
  %i.fz = icmp ne ptr %0, null, !nosanitize !10
end_hunk_2
