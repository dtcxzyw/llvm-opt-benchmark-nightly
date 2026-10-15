Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/spherical_joint?download=true
inline.NumInlined: 228
inline.NumDeleted: 35
begin_hunk_0_@b3SphericalJoint_GetTwistAngle:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.av = load <2 x float>, ptr %i.au, align 4    ; 4 uses
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> %i.as, <2 x i32> <i32 1, i32 2>
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.ay = fmul <2 x float> %i.aw, %i.ax
  %i.az = shufflevector <2 x float> %i.as, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.ba = shufflevector <2 x float> %i.at, <2 x float> %i.av, <2 x i32> <i32 1, i32 2>
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = fsub <2 x float> %i.ay, %i.bb
  %i.bd = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.be = fmul <2 x float> %i.bd, %i.at
  %i.bf = fadd <2 x float> %i.be, %i.bc
  %i.bg = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bh = fmul <2 x float> %i.aq, %i.bg
  %i.bi = fadd <2 x float> %i.bh, %i.bf           ; 3 uses
  %i.bj = fmul <2 x float> %i.as, %i.bg           ; 2 uses
  %i.bk = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bk, %i.bl           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x float> %i.aq, %i.bn           ; 2 uses
  %i.bp = fsub <2 x float> %i.bo, %i.bm
  %i.bq = fadd <2 x float> %i.bo, %i.bm
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 3>
  %i.bs = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fadd <2 x float> %i.br, %i.bu           ; 2 uses
  %i.bw = fadd <2 x float> %i.bj, %i.bv
  %i.bx = fsub <2 x float> %i.bj, %i.bv
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bz = shufflevector <2 x float> %i.bi, <2 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ca = fmul <4 x float> %i.an, %i.bz           ; 4 uses
  %shift = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ca, %shift
  %shift50 = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop51 = fadd <4 x float> %shift50, %foldExtExtBinop
  %shift53 = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop54 = fadd <4 x float> %shift53, %foldExtExtBinop51
  %i.cb = extractelement <4 x float> %foldExtExtBinop54, i64 0
  %i.cc = fcmp olt float %i.cb, 0.000000e+00      ; 2 uses
  %i.cd = fneg <2 x float> %i.by
  %i.ce = fneg <2 x float> %i.bi
  %.sroa.7.0 = select i1 %i.cc, <2 x float> %i.cd, <2 x float> %i.by ; 3 uses
  %.sroa.03.0 = select i1 %i.cc, <2 x float> %i.ce, <2 x float> %i.bi ; 3 uses
  %.sroa.3.8.vec.extract51.i36 = extractelement <2 x float> %.sroa.7.0, i64 0
  %.sroa.09.0.vec.extract.i.i40 = extractelement <2 x float> %.sroa.03.0, i64 0
  %i.cf = extractelement <4 x float> %i.al, i64 1
  %i.cg = fmul float %i.cf, %.sroa.09.0.vec.extract.i.i40
  %i.ch = extractelement <4 x float> %i.am, i64 3
  %i.ci = fmul float %i.ch, %.sroa.3.8.vec.extract51.i36
  %i.cj = shufflevector <4 x float> %i.al, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ck = shufflevector <2 x float> %.sroa.03.0, <2 x float> %.sroa.7.0, <2 x i32> <i32 1, i32 3>
  %i.cl = fmul <2 x float> %i.cj, %i.ck           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = fsub float %i.cg, %i.cm
  %i.co = fadd float %i.ci, %i.cn
  %i.cp = extractelement <2 x float> %i.cl, i64 1
  %i.cq = fsub float %i.co, %i.cp                 ; 2 uses
  %i.cr = shufflevector <2 x float> %.sroa.03.0, <2 x float> %.sroa.7.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = fmul <4 x float> %i.an, %i.cr           ; 4 uses
  %shift56 = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop57 = fadd <4 x float> %i.cs, %shift56
  %shift59 = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop60 = fadd <4 x float> %shift59, %foldExtExtBinop57
  %shift62 = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop63 = fadd <4 x float> %shift62, %foldExtExtBinop60
  %i.ct = extractelement <4 x float> %foldExtExtBinop63, i64 0 ; 3 uses
  %i.cu = fcmp olt float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cv = fneg float %i.cq
  %i.cw = fneg float %i.ct
  %i.cx = call float @b3Atan2(float noundef %i.cv, float noundef %i.cw) #8
  br label %b3GetTwistAngle.exit

bb.e:                                             ; preds = %bb.c
  %i.cy = call float @b3Atan2(float noundef %i.cq, float noundef %i.ct) #8
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.d, %bb.e
  %i.cz = phi float [ %i.cx, %bb.d ], [ %i.cy, %bb.e ]
  %i.da = fmul float %i.cz, 2.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret float %i.da
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_EnableSpring(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointEnableSpring, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #8 ; 3 uses
  %i.e = icmp ne ptr %i.d, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @22, i64 %i.f) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.l, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, i8 0, i64 3, i1 false)
  call void @b3RecWrite_SphericalJointEnableSpring(ptr noundef nonnull %i.k, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 4 uses
  %i.o = icmp ne ptr %i.n, null, !nosanitize !10
  %i.p = ptrtoint ptr %i.n to i64, !nosanitize !10 ; 2 uses
  %i.q = and i64 %i.p, 3, !nosanitize !10
  %i.r = icmp eq i64 %i.q, 0, !nosanitize !10
  %i.s = and i1 %i.o, %i.r, !nosanitize !10
  br i1 %i.s, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.p) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 440 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !75    ; 3 uses
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  %i.w = zext i8 %i.u to i64, !nosanitize !10
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @24, i64 %i.w) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %.not10 = icmp eq i8 %i.u, %i.a
  br i1 %.not10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  store i8 %i.a, ptr %i.t, align 4, !tbaa !75
  ret void
}

declare void @b3RecWrite_SphericalJointEnableSpring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3SphericalJoint_IsSpringEnabled(i64 %0) local_unnamed_addr #0 !func_sanitize !76 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @25, i64 %i.c) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.h = load i8, ptr %i.g, align 4, !tbaa !75    ; 3 uses
  %i.i = icmp ult i8 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  %i.j = zext i8 %i.h to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @26, i64 %i.j) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.k = trunc nuw i8 %i.h to i1
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetTargetRotation(i64 %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #5 !func_sanitize !130 {
bb.a:
  %3 = alloca %struct.b3RecArgs_SphericalJointSetTargetRotation, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @27, i64 %i.e) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 %0, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %1, ptr %i.k, align 8, !tbaa !88
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !88
  call void @b3RecWrite_SphericalJointSetTargetRotation(ptr noundef nonnull %i.j, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 4 uses
  %i.m = icmp ne ptr %i.l, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.l to i64, !nosanitize !10 ; 2 uses
  %i.o = and i64 %i.n, 3, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @28, i64 %i.n) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 268
  store <2 x float> %1, ptr %i.r, align 4, !tbaa !88
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.l, i64 276
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx4, align 4, !tbaa !88
  ret void
}

declare void @b3RecWrite_SphericalJointSetTargetRotation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b3SphericalJoint_GetTargetRotation(i64 %0) local_unnamed_addr #0 !func_sanitize !131 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 4 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @29, i64 %i.c) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.g, align 4, !tbaa !88
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !88
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetSpringHertz(i64 %0, float noundef %1) local_unnamed_addr #0 !func_sanitize !78 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointSetSpringHertz, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @30, i64 %i.e) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.k, align 8, !tbaa !80
  call void @b3RecWrite_SphericalJointSetSpringHertz(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 3 uses
  %i.m = icmp ne ptr %i.l, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.l to i64, !nosanitize !10 ; 2 uses
  %i.o = and i64 %i.n, 3, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @31, i64 %i.n) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store float %1, ptr %i.r, align 4, !tbaa !75
  ret void
}

declare void @b3RecWrite_SphericalJointSetSpringHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3SphericalJoint_GetSpringHertz(i64 %0) local_unnamed_addr #0 !func_sanitize !77 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @32, i64 %i.c) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.h = load float, ptr %i.g, align 4, !tbaa !75
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetSpringDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 !func_sanitize !78 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointSetSpringDampingRatio, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #8 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %i.e) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.k, align 8, !tbaa !80
  call void @b3RecWrite_SphericalJointSetSpringDampingRatio(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 3 uses
  %i.m = icmp ne ptr %i.l, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.l to i64, !nosanitize !10 ; 2 uses
  %i.o = and i64 %i.n, 3, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.n) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  store float %1, ptr %i.r, align 4, !tbaa !75
  ret void
}

declare void @b3RecWrite_SphericalJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3SphericalJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 !func_sanitize !77 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #8 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.c) #9, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.h = load float, ptr %i.g, align 4, !tbaa !75
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_EnableMotor(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointEnableMotor, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #8 ; 3 uses
  %i.e = icmp ne ptr %i.d, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.f) #9, !nosanitize !10
end_hunk_0
