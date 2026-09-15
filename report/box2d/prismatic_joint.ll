Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/prismatic_joint?download=true
inline.NumInlined: 139
inline.NumDeleted: 24
begin_hunk_0_@b2PrismaticJoint_SetLimits:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %i.g, align 4, !tbaa !118
  call void @b2RecWrite_PrismaticJointSetLimits(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9 ; 2 uses
  %i.i = fcmp olt float %1, %2
  %i.j = select i1 %i.i, float %1, float %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store float %i.j, ptr %i.k, align 4, !tbaa !69
  %i.l = fcmp ogt float %1, %2
  %i.m = select i1 %i.l, float %1, float %2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store float %i.m, ptr %i.n, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_PrismaticJointSetLimits(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b2PrismaticJoint_EnableMotor(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_PrismaticJointEnableMotor, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorld(i32 noundef %i.c) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b2RecWrite_PrismaticJointEnableMotor(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 206 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !69, !range !70, !noundef !71
  %.not7 = icmp eq i8 %i.k, %i.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.a, ptr %i.j, align 2, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @b2RecWrite_PrismaticJointEnableMotor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b2PrismaticJoint_IsMotorEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 206
  %i.c = load i8, ptr %i.b, align 2, !tbaa !69, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b2PrismaticJoint_SetMotorSpeed(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_PrismaticJointSetMotorSpeed, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !73
  call void @b2RecWrite_PrismaticJointSetMotorSpeed(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_PrismaticJointSetMotorSpeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2PrismaticJoint_GetMotorSpeed(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2PrismaticJoint_GetMotorForce(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #9
  %i.d = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2720
  %i.f = load float, ptr %i.e, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.h = load float, ptr %i.g, align 4, !tbaa !69
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: nounwind uwtable
define void @b2PrismaticJoint_SetMaxMotorForce(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_PrismaticJointSetMaxMotorForce, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !73
  call void @b2RecWrite_PrismaticJointSetMaxMotorForce(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_PrismaticJointSetMaxMotorForce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2PrismaticJoint_GetMaxMotorForce(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2PrismaticJoint_GetTranslation(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.223.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.223.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #9 ; 2 uses
  %i.d = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 5) #9 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79
  %i.g = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %i.c, i32 noundef %i.f) #9 ; 2 uses
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.g, 0 ; 3 uses
  %i.i = extractvalue { <2 x float>, <2 x float> } %i.g, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !80
  %i.l = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %i.c, i32 noundef %i.k) #9 ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 3 uses
  %i.r = load <2 x float>, ptr %i.o, align 4      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 2 uses
  %i.u = fsub <2 x float> %i.h, %i.h
  %i.v = fsub <2 x float> %i.m, %i.h
  %1 = fmul <2 x float> %i.q, zeroinitializer
  %2 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %3 = fsub <2 x float> %i.q, %2
  %4 = fadd <2 x float> %i.q, %2
  %i.w = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.i, %i.w              ; 2 uses
  %i.y = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x float> %i.y, %5                ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = fadd <2 x float> %i.x, %i.z
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.i, %i.ad            ; 2 uses
  %i.af = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.y, %i.af            ; 2 uses
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fadd <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %i.u, %i.aj
  %i.al = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.n, %i.al            ; 2 uses
  %i.an = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fmul <2 x float> %i.an, %i.ao           ; 2 uses
  %i.aq = fsub <2 x float> %i.am, %i.ap
  %i.ar = fadd <2 x float> %i.am, %i.ap
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = fadd <2 x float> %i.v, %i.as
  %i.au = fsub <2 x float> %i.at, %i.ak
  %i.av = fmul <2 x float> %i.ac, %i.au
  %i.aw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.av)
  ret float %i.aw
}

declare { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2PrismaticJoint_GetSpeed(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #9 ; 7 uses
  %i.d = tail call ptr @b2GetJointFullId(ptr noundef %i.c, i64 %0) #9
  %i.e = tail call ptr @b2GetJointSim(ptr noundef %i.c, ptr noundef %i.d) #9 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [104 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [104 x i8], ptr %i.g, i64 %i.n ; 2 uses
  %i.p = tail call ptr @b2GetBodySim(ptr noundef %i.c, ptr noundef %i.k) #9 ; 3 uses
  %i.q = tail call ptr @b2GetBodySim(ptr noundef %i.c, ptr noundef %i.o) #9 ; 3 uses
  %i.r = tail call ptr @b2GetBodyState(ptr noundef %i.c, ptr noundef %i.k) #9 ; 3 uses
  %i.s = tail call ptr @b2GetBodyState(ptr noundef %i.c, ptr noundef %i.o) #9 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.028.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.u, align 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load <2 x float>, ptr %i.w, align 4      ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.z = load <2 x float>, ptr %i.v, align 4
  %i.aa = load <2 x float>, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ad = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ah = load <2 x float>, ptr %i.af, align 4
  %i.ai = load <2 x float>, ptr %i.ag, align 4
  %.not = icmp eq ptr %i.r, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.r, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.011.0 = phi <2 x float> [ %.sroa.011.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.not65 = icmp eq ptr %i.s, null                ; 2 uses
  br i1 %.not65, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.s, align 4
  %i.aj = shufflevector <2 x float> %.sroa.09.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.09.0 = phi <4 x float> [ %i.aj, %bb.d ], [ zeroinitializer, %bb.c ]
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.am = phi float [ %i.al, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  br i1 %.not65, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ap = phi float [ %i.ao, %bb.h ], [ 0.000000e+00, %bb.g ]
  %foldExtExtBinop = fsub <2 x float> %i.ad, %i.ae
  %i.aq = shufflevector <2 x float> %i.ae, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ar = fmul <2 x float> %i.aq, <float 1.000000e+00, float 0.000000e+00>
  %i.as = shufflevector <2 x float> %i.ad, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.at = fsub <2 x float> %i.as, %i.ar           ; 2 uses
  %i.au = fneg float %i.am
  %i.av = shufflevector <2 x float> %.sroa.027.0.copyload, <2 x float> %i.x, <4 x i32> <i32 1, i32 0, i32 2, i32 2>
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.ay = fmul <4 x float> %i.av, %i.ax           ; 2 uses
  %i.az = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>
  %i.ba = shufflevector <2 x float> %.sroa.027.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bc = fmul <4 x float> %i.ba, %i.bb
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.be = fsub <4 x float> %i.bd, %i.ay
  %i.bf = fadd <4 x float> %i.bd, %i.ay
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.bh = shufflevector <2 x float> %i.ah, <2 x float> %.sroa.028.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bi = shufflevector <2 x float> %i.ai, <2 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 3, i32 3> ; 2 uses
  %i.bj = fsub <4 x float> %i.bh, %i.bi
  %i.bk = fmul <4 x float> %i.bh, %i.bi
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.bm = shufflevector <2 x float> %.sroa.028.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 0>
  %i.bo = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.bq = shufflevector <4 x float> %i.bm, <4 x float> %i.bp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.br = fmul <4 x float> %i.bn, %i.bq           ; 2 uses
  %i.bs = shufflevector <4 x float> %.sroa.09.0, <4 x float> %i.bl, <4 x i32> <i32 7, i32 6, i32 0, i32 1> ; 2 uses
  %i.bt = fadd <4 x float> %i.bs, %i.br
  %i.bu = fsub <4 x float> %i.bs, %i.br
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.bw = fsub <2 x float> %i.z, %i.aa            ; 2 uses
  %i.bx = shufflevector <2 x float> %.sroa.028.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x float> %.sroa.028.0.copyload, %i.ca ; 2 uses
  %i.cc = fadd <2 x float> %i.bz, %i.cb
  %i.cd = fsub <2 x float> %i.bz, %i.cb
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> %.sroa.028.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cg = fsub <4 x float> %i.bg, %i.cf
  %i.ch = fmul <4 x float> %i.bg, %i.cf
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cj = fadd <4 x float> %i.bl, %i.ci
  %i.ck = fsub <4 x float> %i.bl, %i.ci
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cm = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.ce, %i.cn           ; 2 uses
  %i.cp = fsub <2 x float> %.sroa.011.0, %i.co
  %i.cq = fadd <2 x float> %.sroa.011.0, %i.co
  %i.cr = insertelement <4 x float> poison, float %i.au, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.am, i64 1
  %i.ct = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.cv = fmul <4 x float> %i.bv, %i.cu
  %i.cw = fsub <4 x float> %i.bv, %i.cu
  %i.cx = shufflevector <4 x float> %i.cv, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cy = fmul <4 x float> %i.cl, %i.cx           ; 4 uses
  %shift = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop147 = fadd <4 x float> %i.cy, %shift
  %shift149 = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop150 = fadd <4 x float> %i.cy, %shift149
  %shift152 = shufflevector <4 x float> %foldExtExtBinop150, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop153 = fadd <4 x float> %foldExtExtBinop147, %shift152
  %i.cz = extractelement <4 x float> %foldExtExtBinop153, i64 0
  ret float %i.cz
}

declare ptr @b2GetJointFullId(ptr noundef, i64) local_unnamed_addr #2

declare ptr @b2GetJointSim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b2GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b2GetBodyState(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden <2 x float> @b2GetPrismaticJointForce(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %0, i32 noundef %i.b) #9
  %i.d = extractvalue { <2 x float>, <2 x float> } %i.c, 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.i = fmul <2 x float> %i.g, zeroinitializer   ; 2 uses
  %i.j = fsub <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = fadd <2 x float> %i.h, %i.i
end_hunk_0
begin_hunk_1_@b2PreparePrismaticJoint:bb.a
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !122  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !122  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !123  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !123  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !133
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.aa, i64 %i.ab ; 4 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !133
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [96 x i8], ptr %i.ad, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !86
  %i.ak = load <2 x float>, ptr %i.ah, align 4, !tbaa !86
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.al, ptr %i.ai, align 4, !tbaa !86
  %i.am = icmp eq i32 %i.p, 2
  %i.an = select i1 %i.am, i32 %i.x, i32 -1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !100
  %i.ap = icmp eq i32 %i.t, 2
  %i.aq = select i1 %i.ap, i32 %i.z, i32 -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load <2 x float>, ptr %i.au, align 4    ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aw, align 4    ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = fsub <2 x float> %i.ba, %i.bd
  %i.bf = fadd <2 x float> %i.ba, %i.bd
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bg, ptr %i.at, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bi = load <2 x float>, ptr %i.av, align 4
  %i.bj = load <2 x float>, ptr %i.bh, align 4
  %i.bk = load <2 x float>, ptr %i.au, align 4    ; 2 uses
  %i.bl = fsub <2 x float> %i.bi, %i.bj           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm           ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = fsub <2 x float> %i.bn, %i.bq
  %i.bs = fadd <2 x float> %i.bn, %i.bq
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bt, ptr %i.as, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load <2 x float>, ptr %i.bw, align 4    ; 2 uses
  %i.ca = load <2 x float>, ptr %i.by, align 4    ; 2 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bz, %i.cb           ; 2 uses
  %i.cd = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x float> %i.cd, %i.ce           ; 2 uses
  %i.cg = fsub <2 x float> %i.cc, %i.cf
  %i.ch = fadd <2 x float> %i.cc, %i.cf
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ci, ptr %i.bv, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ck = load <2 x float>, ptr %i.bx, align 4
  %i.cl = load <2 x float>, ptr %i.cj, align 4
  %i.cm = load <2 x float>, ptr %i.bw, align 4    ; 2 uses
  %i.cn = fsub <2 x float> %i.ck, %i.cl           ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cm, %i.co           ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x float> %i.cq, %i.cr           ; 2 uses
  %i.ct = fsub <2 x float> %i.cp, %i.cs
  %i.cu = fadd <2 x float> %i.cp, %i.cs
  %i.cv = shufflevector <2 x float> %i.ct, <2 x float> %i.cu, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cv, ptr %i.bu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cz = load <2 x float>, ptr %i.cx, align 4
  %i.da = load <2 x float>, ptr %i.cy, align 4
  %i.db = fsub <2 x float> %i.cz, %i.da
  store <2 x float> %i.db, ptr %i.cw, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.de = load float, ptr %i.dd, align 4, !tbaa !134 ; 2 uses
  %i.df = fcmp oeq float %i.de, 0.000000e+00
  br i1 %i.df, label %b2MakeSoft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !102
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dj = load float, ptr %i.di, align 4, !tbaa !135
  %i.dk = fmul float %i.de, f0x40C90FDB           ; 2 uses
  %i.dl = fmul float %i.dj, 2.000000e+00
  %i.dm = fmul float %i.dk, %i.dh                 ; 2 uses
  %i.dn = fadd float %i.dm, %i.dl                 ; 2 uses
  %i.do = fmul float %i.dm, %i.dn                 ; 2 uses
  %i.dp = fadd float %i.do, 1.000000e+00
  %i.dq = fdiv float 1.000000e+00, %i.dp          ; 2 uses
  %i.dr = fdiv float %i.dk, %i.dn
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ds = fmul float %i.do, %i.dq
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.ds, i64 1
  br label %b2MakeSoft.exit

b2MakeSoft.exit:                                  ; preds = %bb.a, %bb.b
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.dq, %bb.b ], [ 0.000000e+00, %bb.a ]
  store <2 x float> %.sroa.014.0.i, ptr %i.dc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !86
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !136, !range !70, !noundef !71
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b2MakeSoft.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %b2MakeSoft.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2WarmStartPrismaticJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolvePrismaticJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101  ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !106
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !107
  %i.al = fadd float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.an = load float, ptr %i.am, align 4, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !87
  %i.aq = load float, ptr %i.i, align 4, !tbaa !85 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load float, ptr %i.ar, align 4, !tbaa !109 ; 2 uses
  %i.at = fadd float %i.al, %i.an
  %i.au = fsub float %i.at, %i.ap                 ; 3 uses
  %i.av = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.ad, %i.av           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = fsub <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bb = fadd <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = extractelement <2 x float> %i.bb, i64 1
  %3 = fmul <2 x float> %i.ag, zeroinitializer
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %5 = fsub <2 x float> %i.ag, %4
  %6 = fadd <2 x float> %i.ag, %4
  %i.bf = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.aa, %i.bf           ; 2 uses
  %i.bh = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul <2 x float> %i.bh, %7              ; 2 uses
  %i.bj = fsub <2 x float> %i.bg, %i.bi           ; 3 uses
  %i.bk = fadd <2 x float> %i.bg, %i.bi           ; 3 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bm = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bn = fmul float %i.bd, %i.bm
  %i.bo = extractelement <2 x float> %i.bj, i64 0 ; 2 uses
  %i.bp = fmul float %i.be, %i.bo
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> poison, float %i.au, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.bu = shufflevector <4 x float> %i.br, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bv = fmul <4 x float> %i.bu, %i.bl           ; 4 uses
  %shift = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bv, %shift
  %i.bw = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bx = fmul float %i.aq, %i.bo
  %i.by = fmul float %i.bm, %i.aq
  %i.bz = extractelement <4 x float> %i.bv, i64 2
  %i.ca = fsub float %i.bz, %i.by                 ; 2 uses
  %i.cb = extractelement <4 x float> %i.bv, i64 3
  %i.cc = fadd float %i.cb, %i.bx                 ; 2 uses
  %i.cd = fmul float %i.au, %i.bq
  %i.ce = fmul float %i.aq, %i.bw
  %i.cf = fadd float %i.cd, %i.ce
  %i.cg = fadd float %i.as, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !110
  %i.cj = and i32 %i.ci, 512
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cl = load <2 x float>, ptr %i.ck, align 4    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cn = load <2 x float>, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cp = load <2 x float>, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cr = load <2 x float>, ptr %i.cq, align 4
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.aa, %i.cs           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fmul <2 x float> %i.cu, %i.cv           ; 2 uses
  %i.cx = fsub <2 x float> %i.ct, %i.cw
  %i.cy = fadd <2 x float> %i.ct, %i.cw
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.da = fsub <2 x float> %i.cn, %i.cp
  %i.db = fadd <2 x float> %i.da, %i.cr
  %i.dc = fsub <2 x float> %i.bc, %i.cz
  %i.dd = fadd <2 x float> %i.dc, %i.db
  %i.de = fadd <2 x float> %i.cz, %i.dd           ; 2 uses
  %i.df = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = fmul <2 x float> %i.df, %i.de           ; 2 uses
  %i.dh = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dj = fmul <2 x float> %i.dh, %i.di           ; 2 uses
  %i.dk = fsub <2 x float> %i.dg, %i.dj
  %i.dl = fadd <2 x float> %i.dg, %i.dj
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.dn = insertelement <2 x float> poison, float %i.au, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.aq, i64 1
  %i.dp = fmul <2 x float> %i.do, %i.dm           ; 2 uses
  %shift172 = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop173 = fadd <2 x float> %i.dp, %shift172
  %i.dq = extractelement <2 x float> %foldExtExtBinop173, i64 0
  %i.dr = fadd float %i.as, %i.dq
  %i.ds = load <2 x float>, ptr %i.q, align 4
  %i.dt = insertelement <2 x float> poison, float %i.b, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.cc, i64 1
  %i.dx = fmul <2 x float> %i.du, %i.dw
  %i.dy = fsub <2 x float> %i.ds, %i.dx
  store <2 x float> %i.dy, ptr %i.q, align 4
  %i.dz = fmul float %i.f, %i.dr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !83
  %i.ec = fsub float %i.eb, %i.dz
  store float %i.ec, ptr %i.ea, align 4, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ed = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !110
  %i.ef = and i32 %i.ee, 512
  %.not82 = icmp eq i32 %i.ef, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eg = load <2 x float>, ptr %i.y, align 4
  %i.eh = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.cc, i64 1
  %i.el = fmul <2 x float> %i.ei, %i.ek
  %i.em = fadd <2 x float> %i.el, %i.eg
  store <2 x float> %i.em, ptr %i.y, align 4
  %i.en = fmul float %i.h, %i.cg
  %i.eo = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !83
  %i.eq = fadd float %i.en, %i.ep
  store float %i.eq, ptr %i.eo, align 4, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolvePrismaticJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !103 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !104 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !86 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolvePrismaticJoint.dummyState, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 4, !tbaa !100  ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.q = load i32, ptr %i.p, align 4, !tbaa !101  ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.sroa.0208.0.copyload.pre = load <2 x float>, ptr %i.v, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0208.0.copyload = phi <2 x float> [ %.sroa.0208.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.w = phi ptr [ %i.v, %bb.d ], [ %3, %bb.c ]   ; 5 uses
  %.sroa.0231.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !83 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !83 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load <2 x float>, ptr %i.ab, align 4    ; 4 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4    ; 3 uses
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %4 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aj = fmul <4 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %i.ao = load <2 x float>, ptr %i.am, align 4
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = fmul <4 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.at = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = fadd <2 x float> %i.as, %i.at
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.av, <4 x i32> <i32 1, i32 2, i32 2, i32 1>
  %i.ax = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.az = fadd <2 x float> %i.ax, %i.ay
  %i.ba = fsub <2 x float> %i.ax, %i.ay
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bc = fmul <4 x float> %i.aw, %i.bb           ; 4 uses
  %shift = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.bc, %shift
  %i.bd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift598 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop599 = fadd <4 x float> %shift598, %i.bc
  %i.be = extractelement <4 x float> %foldExtExtBinop599, i64 2
  %i.bf = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.bg = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bj = load <2 x float>, ptr %i.bh, align 4
  %i.bk = load <2 x float>, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load <2 x float>, ptr %i.bl, align 4
  %i.bn = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.ae, %i.bn           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.ag, %i.bp           ; 2 uses
  %i.br = fadd <2 x float> %i.bo, %i.bq
  %i.bs = fsub <2 x float> %i.bo, %i.bq
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> %i.br, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.an, %i.bu           ; 2 uses
  %i.bw = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fsub <2 x float> %i.bv, %i.by           ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cc = fsub <2 x float> %i.bj, %i.bk
  %i.cd = fadd <2 x float> %i.cc, %i.bm
  %i.ce = fsub <2 x float> %i.cb, %i.bt
  %i.cf = fadd <2 x float> %i.ce, %i.cd           ; 4 uses
  %5 = fmul <2 x float> %i.af, zeroinitializer    ; 2 uses
  %6 = fsub <2 x float> %4, %5
  %7 = fadd <2 x float> %4, %5
  %8 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.ag, %8              ; 2 uses
  %i.ch = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.ae, %i.ch           ; 2 uses
  %i.cj = fsub <2 x float> %i.cg, %i.ci           ; 3 uses
  %i.ck = fadd <2 x float> %i.cg, %i.ci           ; 3 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3> ; 8 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.cn = fmul <2 x float> %i.cm, %i.cf           ; 2 uses
  %shift601 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop602 = fadd <2 x float> %i.cn, %shift601
  %i.co = extractelement <2 x float> %foldExtExtBinop602, i64 0 ; 3 uses
  %foldExtExtBinop604 = fadd <2 x float> %i.bt, %i.cf ; 2 uses
  %i.cp = extractelement <2 x float> %foldExtExtBinop604, i64 0
  %foldExtExtBinop606 = fadd <2 x float> %i.bt, %i.cf ; 2 uses
  %i.cq = extractelement <2 x float> %foldExtExtBinop606, i64 1
  %i.cr = fadd float %i.b, %i.d                   ; 2 uses
  %i.cs = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = shufflevector <2 x float> %foldExtExtBinop604, <2 x float> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.cv = fmul <2 x float> %i.cs, %i.cu
  %i.cw = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = shufflevector <2 x float> %i.cb, <2 x float> %foldExtExtBinop606, <2 x i32> <i32 3, i32 1>
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  %i.cz = fsub <2 x float> %i.cv, %i.cy           ; 10 uses
  %i.da = fmul <2 x float> %i.f, %i.cz
  %i.db = fmul <2 x float> %i.cz, %i.da           ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = fadd float %i.cr, %i.dc
  %i.de = extractelement <2 x float> %i.db, i64 1
  %i.df = fadd float %i.de, %i.dd                 ; 2 uses
  %i.dg = fcmp ogt float %i.df, 0.000000e+00
  %i.dh = fdiv float 1.000000e+00, %i.df
  %i.di = select i1 %i.dg, float %i.dh, float 0.000000e+00 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0127.0.copyload = load float, ptr %i.dj, align 4, !tbaa !86 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !86 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !86 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !111, !range !70, !noundef !71
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.do = load float, ptr %i.dn, align 4, !tbaa !112
  %i.dp = fsub float %i.co, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !139
  %i.ds = fmul float %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.du = load float, ptr %i.dt, align 4, !tbaa !140
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !141
  %i.dx = fsub <2 x float> %.sroa.0208.0.copyload, %.sroa.0231.0.copyload
  %i.dy = fmul <2 x float> %i.dx, %i.cm           ; 2 uses
  %shift608 = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop609 = fadd <2 x float> %i.dy, %shift608
  %i.dz = extractelement <2 x float> %foldExtExtBinop609, i64 0
  %i.ea = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.eb = fmul float %i.aa, %i.ea
  %i.ec = fadd float %i.dz, %i.eb
  %i.ed = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.ee = fmul float %i.y, %i.ed
  %i.ef = fsub float %i.ec, %i.ee
  %i.eg = fneg float %i.du
  %i.eh = fmul float %i.di, %i.eg
  %i.ei = fadd float %i.ef, %i.ds
  %i.ej = fmul float %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !106 ; 2 uses
  %i.em = fmul float %i.dw, %i.el
  %i.en = fsub float %i.ej, %i.em                 ; 4 uses
  %i.eo = fadd float %i.el, %i.en
  store float %i.eo, ptr %i.ek, align 4, !tbaa !106
  %i.ep = fmul float %i.ed, %i.en
  %i.eq = fmul float %i.ea, %i.en
  %i.er = extractelement <2 x float> %i.f, i64 0
  %i.es = fmul float %i.er, %i.ep
  %i.et = fsub float %i.y, %i.es
  %i.eu = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.cl, %i.ev           ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fa = fmul <2 x float> %i.ey, %i.ez
  %i.fb = fsub <2 x float> %.sroa.0231.0.copyload, %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.d, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fmul <2 x float> %i.fd, %i.fe
  %i.fg = fadd <2 x float> %.sroa.0208.0.copyload, %i.ff
  %i.fh = extractelement <2 x float> %i.f, i64 1
  %i.fi = fmul float %i.fh, %i.eq
  %i.fj = fadd float %i.aa, %i.fi
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0345 = phi float [ %i.fj, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %.sroa.0208.0 = phi <2 x float> [ %i.fg, %bb.f ], [ %.sroa.0208.0.copyload, %bb.e ] ; 3 uses
  %.0 = phi float [ %i.et, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %.sroa.0231.0 = phi <2 x float> [ %i.fb, %bb.f ], [ %.sroa.0231.0.copyload, %bb.e ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 206
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !142, !range !70, !noundef !71
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fn = fsub <2 x float> %.sroa.0208.0, %.sroa.0231.0
  %i.fo = fmul <2 x float> %i.cm, %i.fn           ; 2 uses
  %shift611 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop612 = fadd <2 x float> %i.fo, %shift611
  %i.fp = extractelement <2 x float> %foldExtExtBinop612, i64 0
  %i.fq = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.fr = fmul float %i.fq, %.0345
  %i.fs = fadd float %i.fr, %i.fp
  %i.ft = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.fu = fmul float %i.ft, %.0
  %i.fv = fsub float %i.fs, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !143
  %i.fy = fsub float %i.fx, %i.fv
  %i.fz = fmul float %i.di, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !107 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !102
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !144
  %i.gg = fmul float %i.gd, %i.gf                 ; 3 uses
  %i.gh = fadd float %i.gb, %i.fz                 ; 3 uses
  %i.gi = fneg float %i.gg                        ; 2 uses
  %i.gj = fcmp olt float %i.gh, %i.gi
  %i.gk = fcmp ogt float %i.gh, %i.gg
  %i.gl = select i1 %i.gk, float %i.gg, float %i.gh
  %i.gm = select i1 %i.gj, float %i.gi, float %i.gl ; 2 uses
  store float %i.gm, ptr %i.ga, align 4, !tbaa !107
  %i.gn = fsub float %i.gm, %i.gb                 ; 3 uses
  %i.go = fmul float %i.ft, %i.gn
  %i.gp = fmul float %i.fq, %i.gn
  %i.gq = extractelement <2 x float> %i.f, i64 0
  %i.gr = fmul float %i.gq, %i.go
  %i.gs = fsub float %.0, %i.gr
  %i.gt = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x float> %i.cl, %i.gu           ; 2 uses
  %i.gw = insertelement <2 x float> poison, float %i.b, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = fmul <2 x float> %i.gx, %i.gy
  %i.ha = fsub <2 x float> %.sroa.0231.0, %i.gz
  %i.hb = insertelement <2 x float> poison, float %i.d, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.he = fmul <2 x float> %i.hc, %i.hd
  %i.hf = fadd <2 x float> %.sroa.0208.0, %i.he
  %i.hg = extractelement <2 x float> %i.f, i64 1
  %i.hh = fmul float %i.hg, %i.gp
  %i.hi = fadd float %.0345, %i.hh
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1346 = phi float [ %i.hi, %bb.h ], [ %.0345, %bb.g ] ; 4 uses
  %.sroa.0208.1 = phi <2 x float> [ %i.hf, %bb.h ], [ %.sroa.0208.0, %bb.g ] ; 4 uses
  %.1 = phi float [ %i.gs, %bb.h ], [ %.0, %bb.g ] ; 4 uses
  %.sroa.0231.1 = phi <2 x float> [ %i.ha, %bb.h ], [ %.sroa.0231.0, %bb.g ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !113, !range !70, !noundef !71
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !114 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !115 ; 2 uses
  %i.hq = fsub float %i.hn, %i.hp
  %i.hr = fmul float %i.hq, 2.500000e-01          ; 2 uses
  %i.hs = fsub float %i.co, %i.hp                 ; 5 uses
  %i.ht = fcmp olt float %i.hs, %i.hr
  br i1 %i.ht, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.hu = fcmp ogt float %i.hs, 0.000000e+00
  br i1 %i.hu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hv = tail call float @b2GetLengthUnitsPerMeter() #9 ; 2 uses
  %i.hw = fcmp olt float %i.hs, %i.hv
  %i.hx = select i1 %i.hw, float %i.hs, float %i.hv
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !145
  %i.ia = fmul float %i.hz, %i.hx
  %.pre.pre = load float, ptr %i.hm, align 4, !tbaa !114
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_1
