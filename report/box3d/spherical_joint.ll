Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/spherical_joint?download=true
inline.NumInlined: 228
inline.NumDeleted: 35
begin_hunk_0_@b3SphericalJoint_SetTwistLimits:bb.a

declare void @b3RecWrite_SphericalJointSetTwistLimits(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3SphericalJoint_GetTwistAngle(i64 %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.b3Transform, align 4        ; 5 uses
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #9 ; 2 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !81
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %1, ptr noundef %i.c, i32 noundef %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %i.c, i32 noundef %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.k = load <2 x float>, ptr %i.i, align 4      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 4 uses
  %i.n = load <2 x float>, ptr %i.j, align 4      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.p = load <2 x float>, ptr %i.o, align 4      ; 4 uses
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.r = shufflevector <2 x float> %i.k, <2 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.s = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.t = fmul <4 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.m, <2 x float> %i.k, <4 x i32> <i32 0, i32 2, i32 3, i32 2>
  %i.v = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.w = fmul <4 x float> %i.u, %i.v              ; 2 uses
  %i.x = shufflevector <2 x float> %i.k, <2 x float> %i.m, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.y = shufflevector <2 x float> %i.p, <2 x float> %i.n, <4 x i32> <i32 0, i32 2, i32 3, i32 3>
  %i.z = fmul <4 x float> %i.x, %i.y              ; 2 uses
  %i.aa = fsub <4 x float> %i.z, %i.w
  %i.ab = fadd <4 x float> %i.z, %i.w
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ad = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ae = fmul <4 x float> %i.q, %i.ad
  %i.af = fadd <4 x float> %i.ac, %i.ae           ; 2 uses
  %i.ag = fadd <4 x float> %i.t, %i.af            ; 3 uses
  %i.ah = fsub <4 x float> %i.t, %i.af            ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.al = load <2 x float>, ptr %i.aj, align 4    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = load <2 x float>, ptr %i.am, align 4    ; 5 uses
  %i.ao = load <2 x float>, ptr %i.ak, align 4    ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 4 uses
  %i.ar = shufflevector <2 x float> %i.al, <2 x float> %i.an, <2 x i32> <i32 1, i32 2>
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = shufflevector <2 x float> %i.an, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x float> %i.ao, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.aw = fmul <2 x float> %i.au, %i.av
  %i.ax = fsub <2 x float> %i.at, %i.aw
  %i.ay = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %i.ao
  %i.ba = fadd <2 x float> %i.az, %i.ax
  %i.bb = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bc = fmul <2 x float> %i.al, %i.bb
  %i.bd = fadd <2 x float> %i.bc, %i.ba           ; 3 uses
  %i.be = fmul <2 x float> %i.an, %i.bb           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bf, %i.bg           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x float> %i.al, %i.bi           ; 2 uses
  %i.bk = fsub <2 x float> %i.bj, %i.bh
  %i.bl = fadd <2 x float> %i.bj, %i.bh
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bn = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = fadd <2 x float> %i.bm, %i.bp           ; 2 uses
  %i.br = fadd <2 x float> %i.be, %i.bq
  %i.bs = fsub <2 x float> %i.be, %i.bq
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bd, <2 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = fmul <4 x float> %i.ai, %i.bu           ; 4 uses
  %shift = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bv, %shift
  %shift52 = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop53 = fadd <4 x float> %shift52, %foldExtExtBinop
  %shift55 = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop56 = fadd <4 x float> %shift55, %foldExtExtBinop53
  %i.bw = extractelement <4 x float> %foldExtExtBinop56, i64 0
  %i.bx = fcmp olt float %i.bw, 0.000000e+00      ; 2 uses
  %i.by = fneg <2 x float> %i.bd
  %i.bz = fneg <2 x float> %i.bt
  %.sroa.7.0 = select i1 %i.bx, <2 x float> %i.bz, <2 x float> %i.bt ; 3 uses
  %.sroa.03.0 = select i1 %i.bx, <2 x float> %i.by, <2 x float> %i.bd ; 3 uses
  %.sroa.433.8.vec.extract.i37 = extractelement <2 x float> %.sroa.7.0, i64 0
  %.sroa.011.0.vec.extract.i.i42 = extractelement <2 x float> %.sroa.03.0, i64 0
  %i.ca = extractelement <4 x float> %i.ag, i64 1
  %i.cb = fmul float %i.ca, %.sroa.011.0.vec.extract.i.i42
  %i.cc = extractelement <4 x float> %i.ah, i64 3
  %i.cd = fmul float %i.cc, %.sroa.433.8.vec.extract.i37
  %i.ce = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cf = shufflevector <2 x float> %.sroa.03.0, <2 x float> %.sroa.7.0, <2 x i32> <i32 1, i32 3>
  %i.cg = fmul <2 x float> %i.ce, %i.cf           ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = fsub float %i.cb, %i.ch
  %i.cj = fadd float %i.cd, %i.ci
  %i.ck = extractelement <2 x float> %i.cg, i64 1
  %i.cl = fsub float %i.cj, %i.ck                 ; 2 uses
  %i.cm = shufflevector <2 x float> %.sroa.03.0, <2 x float> %.sroa.7.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cn = fmul <4 x float> %i.ai, %i.cm           ; 4 uses
  %shift58 = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop59 = fadd <4 x float> %i.cn, %shift58
  %shift61 = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop62 = fadd <4 x float> %shift61, %foldExtExtBinop59
  %shift64 = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop65 = fadd <4 x float> %shift64, %foldExtExtBinop62
  %i.co = extractelement <4 x float> %foldExtExtBinop65, i64 0 ; 3 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cq = fneg float %i.cl
  %i.cr = fneg float %i.co
  %i.cs = call float @b3Atan2(float noundef %i.cq, float noundef %i.cr) #9
  br label %b3GetTwistAngle.exit

bb.c:                                             ; preds = %bb.a
  %i.ct = call float @b3Atan2(float noundef %i.cl, float noundef %i.co) #9
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.b, %bb.c
  %i.cu = phi float [ %i.cs, %bb.b ], [ %i.ct, %bb.c ]
  %i.cv = fmul float %i.cu, 2.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret float %i.cv
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_EnableSpring(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointEnableSpring, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b3RecWrite_SphericalJointEnableSpring(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 440 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !71, !range !72, !noundef !73
  %.not7 = icmp eq i8 %i.k, %i.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, i8 0, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 %i.a, ptr %i.j, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_SphericalJointEnableSpring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3SphericalJoint_IsSpringEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.c = load i8, ptr %i.b, align 4, !tbaa !71, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetTargetRotation(i64 %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b3RecArgs_SphericalJointSetTargetRotation, align 8 ; 6 uses
  %.sroa.37.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.37.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %1, ptr %i.f, align 8, !tbaa !83
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !83
  call void @b3RecWrite_SphericalJointSetTargetRotation(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 268
  store <2 x float> %1, ptr %i.h, align 4, !tbaa !83
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  store <2 x float> %2, ptr %.sroa.3.0..sroa_idx4, align 4, !tbaa !83
  ret void
}

declare void @b3RecWrite_SphericalJointSetTargetRotation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b3SphericalJoint_GetTargetRotation(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.b, align 4, !tbaa !83
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !83
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetSpringHertz(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointSetSpringHertz, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !75
  call void @b3RecWrite_SphericalJointSetSpringHertz(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_SphericalJointSetSpringHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3SphericalJoint_GetSpringHertz(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetSpringDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointSetSpringDampingRatio, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !75
  call void @b3RecWrite_SphericalJointSetSpringDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 236
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_SphericalJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3SphericalJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_EnableMotor(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_SphericalJointEnableMotor, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b3RecWrite_SphericalJointEnableMotor(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 441 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !71, !range !72, !noundef !73
  %.not7 = icmp eq i8 %i.k, %i.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, i8 0, i64 12, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 %i.a, ptr %i.j, align 1, !tbaa !71
  ret void
}

declare void @b3RecWrite_SphericalJointEnableMotor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3SphericalJoint_IsMotorEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 441
  %i.c = load i8, ptr %i.b, align 1, !tbaa !71, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3SphericalJoint_SetMotorVelocity(i64 %0, <2 x float> %1, float %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b3RecArgs_SphericalJointSetMotorVelocity, align 8 ; 6 uses
  %.sroa.38.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.38.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %1, ptr %i.f, align 8, !tbaa !83
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !83
  call void @b3RecWrite_SphericalJointSetMotorVelocity(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  store <2 x float> %1, ptr %i.h, align 4, !tbaa !83
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  store float %2, ptr %.sroa.3.0..sroa_idx5, align 4, !tbaa !83
  ret void
}

declare void @b3RecWrite_SphericalJointSetMotorVelocity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @b3SphericalJoint_GetMotorVelocity(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 6) #9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %.sroa.02.0.copyload = load <2 x float>, ptr %i.b, align 4, !tbaa !83
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !83
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.02.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.23.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

end_hunk_0
