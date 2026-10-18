Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/prismatic_joint?download=true
inline.NumInlined: 265
inline.NumDeleted: 34
begin_hunk_0_@b3PrismaticJoint_SetSpringDampingRatio:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !82
  call void @b3RecWrite_PrismaticJointSetSpringDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_PrismaticJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3PrismaticJoint_EnableMotor(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_PrismaticJointEnableMotor, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetWorld(i32 noundef %i.c) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b3RecWrite_PrismaticJointEnableMotor(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 414 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !71, !range !72, !noundef !73
  %.not7 = icmp eq i8 %i.k, %i.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 %i.a, ptr %i.j, align 2, !tbaa !71
  ret void
}

declare void @b3RecWrite_PrismaticJointEnableMotor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b3PrismaticJoint_IsMotorEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 414
  %i.c = load i8, ptr %i.b, align 2, !tbaa !71, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3PrismaticJoint_SetMotorSpeed(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_PrismaticJointSetMotorSpeed, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !82
  call void @b3RecWrite_PrismaticJointSetMotorSpeed(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_PrismaticJointSetMotorSpeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetMotorSpeed(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3PrismaticJoint_SetMaxMotorForce(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_PrismaticJointSetMaxMotorForce, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !82
  call void @b3RecWrite_PrismaticJointSetMaxMotorForce(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_PrismaticJointSetMaxMotorForce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetMaxMotorForce(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetMotorForce(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.f = load float, ptr %i.e, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.h = load float, ptr %i.g, align 4, !tbaa !71
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetSpeed(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2200.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2200.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 5 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [128 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !80
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [128 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = tail call ptr @b3GetBodySim(ptr noundef %i.c, ptr noundef %i.j) #7 ; 6 uses
  %i.p = tail call ptr @b3GetBodySim(ptr noundef %i.c, ptr noundef %i.n) #7 ; 6 uses
  %i.q = tail call ptr @b3GetBodyState(ptr noundef %i.c, ptr noundef %i.j) #7 ; 5 uses
  %i.r = tail call ptr @b3GetBodyState(ptr noundef %i.c, ptr noundef %i.n) #7 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.0166.0.copyload = load <2 x float>, ptr %i.s, align 4, !tbaa !85 ; 8 uses
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.5168.0.copyload = load <2 x float>, ptr %.sroa.5168.0..sroa_idx, align 4, !tbaa !85 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.sroa.0164.0.copyload = load <2 x float>, ptr %i.t, align 4, !tbaa !85 ; 3 uses
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %.sroa.4165.0.copyload = load <2 x float>, ptr %.sroa.4165.0..sroa_idx, align 4, !tbaa !85 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.w = load <2 x float>, ptr %i.v, align 4      ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.u, align 4
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4
  %.sroa.0138.0.copyload = load <2 x float>, ptr %i.z, align 4
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %.sroa.2139.0.copyload = load float, ptr %.sroa.2139.0..sroa_idx, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.aa, align 4
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.sroa.2122.0.copyload = load float, ptr %.sroa.2122.0..sroa_idx, align 4
  %.sroa.0119.0.copyload = load <2 x float>, ptr %i.ab, align 4
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %.sroa.2120.0.copyload = load float, ptr %.sroa.2120.0..sroa_idx, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %.sroa.0103.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 2 uses
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.ad, align 4 ; 2 uses
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2102.0..sroa_idx, align 4
  %.not = icmp eq ptr %i.q, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.q, align 4, !tbaa !85
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.577.0.copyload = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.075.0 = phi <2 x float> [ %.sroa.075.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.577.0 = phi float [ %.sroa.577.0.copyload, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.not203 = icmp eq ptr %i.r, null               ; 2 uses
  br i1 %.not203, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.r, align 4, !tbaa !85
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.573.0.copyload = load float, ptr %.sroa.573.0..sroa_idx, align 4, !tbaa !85
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.071.0 = phi <2 x float> [ %.sroa.071.0.copyload, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.573.0 = phi float [ %.sroa.573.0.copyload, %bb.d ], [ 0.000000e+00, %bb.c ]
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.ae, align 4, !tbaa !85
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.067.0 = phi <2 x float> [ %.sroa.067.0.copyload, %bb.f ], [ zeroinitializer, %bb.e ] ; 5 uses
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload, %bb.f ], [ 0.000000e+00, %bb.e ] ; 4 uses
  br i1 %.not203, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.af, align 4, !tbaa !85
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !85
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.064.0 = phi <2 x float> [ %.sroa.064.0.copyload, %bb.h ], [ zeroinitializer, %bb.g ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.ag = shufflevector <2 x float> %.sroa.075.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %1 = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.011.4.vec.extract.i = extractelement <2 x float> %.sroa.064.0, i64 1
  %.sroa.011.4.vec.extract.i276 = extractelement <2 x float> %.sroa.067.0, i64 1
  %i.ah = shufflevector <2 x float> %.sroa.0121.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3
  %i.aj = insertelement <4 x float> %i.ai, float %.sroa.2122.0.copyload, i64 2
  %i.ak = shufflevector <2 x float> %.sroa.0119.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float 0.000000e+00, i64 3
  %i.am = insertelement <4 x float> %i.al, float %.sroa.2120.0.copyload, i64 2
  %i.an = fsub <4 x float> %i.aj, %i.am           ; 4 uses
  %i.ao = shufflevector <2 x float> %.sroa.0140.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float -1.000000e+00, i64 3
  %i.aq = insertelement <4 x float> %i.ap, float %.sroa.2141.0.copyload, i64 1
  %i.ar = shufflevector <2 x float> %.sroa.0138.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.as = insertelement <4 x float> %i.ar, float 0.000000e+00, i64 3
  %i.at = insertelement <4 x float> %i.as, float %.sroa.2139.0.copyload, i64 1
  %i.au = fsub <4 x float> %i.aq, %i.at           ; 4 uses
  %i.av = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = insertelement <2 x float> %i.av, float %.sroa.2104.0.copyload, i64 1
  %i.ax = shufflevector <2 x float> %.sroa.0101.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = insertelement <2 x float> %i.ax, float %.sroa.2102.0.copyload, i64 1
  %i.az = fsub <2 x float> %i.aw, %i.ay
  %i.ba = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float 1.000000e+00, i64 3
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.bd = fmul <4 x float> %i.bb, %i.bc
  %i.be = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.bf = insertelement <4 x float> %i.be, float -0.000000e+00, i64 3
  %i.bg = shufflevector <4 x float> %i.au, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.bh = fmul <4 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> %.sroa.0166.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.bj = insertelement <4 x float> %i.bi, float 0.000000e+00, i64 3
  %i.bk = insertelement <4 x float> %i.au, float 1.000000e+00, i64 3
  %i.bl = fmul <4 x float> %i.bj, %i.bk
  %i.bm = fsub <4 x float> %i.bh, %i.bl
  %i.bn = fadd <4 x float> %i.bd, %i.bm           ; 2 uses
  %i.bo = insertelement <4 x float> %i.bi, float 1.000000e+00, i64 3
  %i.bp = fmul <4 x float> %i.bo, %i.bn
  %i.bq = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float 0.000000e+00, i64 3
  %i.bs = shufflevector <4 x float> %i.bn, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.bt = fmul <4 x float> %i.br, %i.bs
  %i.bu = fsub <4 x float> %i.bp, %i.bt
  %i.bv = fmul <4 x float> %i.bu, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.bw = fadd <4 x float> %i.au, %i.bv           ; 5 uses
  %i.bx = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %i.y, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.by = fmul <4 x float> %i.bx, %i.an           ; 2 uses
  %i.bz = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ca = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cc = shufflevector <4 x float> %i.an, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.cd = fmul <4 x float> %i.cb, %i.cc           ; 2 uses
  %i.ce = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %.sroa.0164.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.cg = shufflevector <4 x float> %i.an, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ch = fmul <4 x float> %i.cf, %i.cg
  %2 = fsub <4 x float> %i.cd, %i.ch
  %3 = fadd <4 x float> %i.by, %2                 ; 3 uses
  %4 = fmul <4 x float> %i.cf, %3
  %5 = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %6 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %7 = shufflevector <4 x float> %i.an, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %8 = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = extractelement <4 x float> %i.bw, i64 1
  %10 = fmul float %9, %.sroa.011.4.vec.extract.i276
  %11 = extractelement <4 x float> %i.bw, i64 0
  %12 = fmul float %11, %.sroa.6.0
  %13 = fsub float %10, %12
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %i.y, i64 0
  %14 = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop318 = fmul <2 x float> %14, <float 0.000000e+00, float 1.000000e+00>
  %15 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> %i.cd, <2 x i32> <i32 0, i32 7>
  %17 = fmul <2 x float> %16, <float 0.000000e+00, float 1.000000e+00>
  %18 = fsub <2 x float> %foldExtExtBinop318, %17
  %19 = shufflevector <4 x float> %15, <4 x float> %i.by, <2 x i32> <i32 1, i32 7>
  %20 = fadd <2 x float> %19, %18                 ; 3 uses
  %21 = shufflevector <2 x float> %i.y, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %22 = fmul <2 x float> %21, %20
  %23 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %24 = shufflevector <2 x float> %23, <2 x float> %20, <2 x i32> <i32 0, i32 2>
  %25 = fmul <2 x float> %i.w, %24
  %26 = fsub <2 x float> %22, %25
  %27 = fmul <2 x float> %26, splat (float 2.000000e+00)
  %28 = fadd <2 x float> %27, zeroinitializer     ; 5 uses
  %29 = insertelement <4 x float> %5, float %.sroa.3.8.vec.extract.i, i64 3
  %30 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %31 = shufflevector <4 x float> %6, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %32 = fmul <4 x float> %29, %31
  %33 = fsub <4 x float> %4, %32
  %34 = fmul <4 x float> %33, splat (float 2.000000e+00)
  %i.ci = fadd <4 x float> %34, %7                ; 5 uses
  %i.cj = fsub <4 x float> %i.ci, %i.bw           ; 2 uses
  %35 = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %36 = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %37 = shufflevector <2 x float> %36, <2 x float> %28, <2 x i32> <i32 0, i32 2> ; 2 uses
  %38 = fmul <2 x float> %35, %37
  %39 = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %40 = shufflevector <2 x float> %36, <2 x float> %28, <2 x i32> <i32 3, i32 1> ; 2 uses
  %41 = fmul <2 x float> %39, %40
  %42 = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> %.sroa.0166.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %43 = fmul <2 x float> %42, %28
  %44 = fmul <2 x float> %.sroa.0166.0.copyload, %28
  %45 = fmul <2 x float> %39, %37
  %46 = fsub <2 x float> %41, %43
  %47 = fmul <2 x float> %35, %40
  %48 = fsub <2 x float> %44, %45
  %49 = fadd <2 x float> %38, %46                 ; 2 uses
  %50 = fadd <2 x float> %47, %48                 ; 2 uses
  %51 = fmul <2 x float> %42, %49
  %52 = fmul <2 x float> %.sroa.0166.0.copyload, %50
  %53 = fsub <2 x float> %51, %52
  %54 = fmul <2 x float> %53, splat (float 2.000000e+00)
  %55 = fadd <2 x float> %28, %54                 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %50
  %shift315 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop316 = fmul <2 x float> %.sroa.5168.0.copyload, %shift315
  %56 = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %57 = shufflevector <2 x float> %.sroa.0101.0.copyload, <2 x float> %foldExtExtBinop316, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %58 = fsub <4 x float> %56, %57
  %59 = fmul <4 x float> %58, <float 1.000000e+00, float 2.000000e+00, float poison, float poison>
  %60 = shufflevector <4 x float> %8, <4 x float> %59, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ck = fadd <4 x float> %i.cj, %60             ; 3 uses
  %i.cl = extractelement <4 x float> %i.ci, i64 1
  %i.cm = fmul float %i.cl, %.sroa.011.4.vec.extract.i
  %i.cn = extractelement <4 x float> %i.ci, i64 0
  %i.co = fmul float %i.cn, %.sroa.5.0
  %61 = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %62 = shufflevector <2 x float> %.sroa.064.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %63 = insertelement <2 x float> %62, float %.sroa.5.0, i64 0
  %64 = fmul <2 x float> %61, %63
  %65 = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %66 = fmul <2 x float> %65, %.sroa.064.0
  %67 = fsub <2 x float> %64, %66
  %68 = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %69 = insertelement <2 x float> %68, float %.sroa.573.0, i64 1
  %70 = fadd <2 x float> %69, %67
  %71 = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %72 = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %73 = insertelement <2 x float> %72, float %.sroa.6.0, i64 0
  %74 = fmul <2 x float> %71, %73
  %75 = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %76 = fmul <2 x float> %75, %.sroa.067.0
  %77 = fsub <2 x float> %74, %76
  %78 = shufflevector <2 x float> %.sroa.075.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %79 = insertelement <2 x float> %78, float %.sroa.577.0, i64 1
  %80 = fadd <2 x float> %79, %77
  %81 = fsub <2 x float> %70, %80
  %82 = fsub float %i.cm, %i.co
  %83 = shufflevector <2 x float> %55, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %84 = shufflevector <4 x float> %i.ck, <4 x float> %83, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %85 = shufflevector <4 x float> %84, <4 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %86 = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %87 = insertelement <4 x float> %86, float %.sroa.6.0, i64 0
  %88 = insertelement <4 x float> %87, float %82, i64 3 ; 2 uses
  %89 = fmul <4 x float> %85, %88
  %90 = fadd <4 x float> %85, %88
  %91 = shufflevector <4 x float> %89, <4 x float> %90, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %92 = shufflevector <4 x float> %83, <4 x float> %i.ck, <4 x i32> <i32 1, i32 7, i32 0, i32 poison>
  %93 = shufflevector <4 x float> %92, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %94 = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %95 = insertelement <4 x float> %94, float %.sroa.6.0, i64 2
  %96 = insertelement <4 x float> %95, float %13, i64 3 ; 2 uses
  %97 = fmul <4 x float> %93, %96
  %98 = fadd <4 x float> %93, %96
  %99 = shufflevector <4 x float> %97, <4 x float> %98, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %100 = fsub <4 x float> %91, %99
  %101 = fmul <4 x float> %i.ck, %100             ; 4 uses
  %shift322 = shufflevector <4 x float> %101, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop323 = fadd <4 x float> %shift322, %101
  %shift325 = shufflevector <4 x float> %101, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop326 = fadd <4 x float> %shift325, %foldExtExtBinop323
  %102 = extractelement <4 x float> %foldExtExtBinop326, i64 0
  %103 = extractelement <4 x float> %101, i64 3
  %i.cp = fmul <2 x float> %55, %81               ; 2 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0
  %i.cr = fadd float %103, %i.cq
  %i.cs = extractelement <2 x float> %i.cp, i64 1
  %i.ct = fadd float %i.cs, %i.cr
  %i.cu = fadd float %102, %i.ct
  ret float %i.cu
}

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3GetBodyState(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetPrismaticJointForce(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load float, ptr %i.d, align 4, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.g = load float, ptr %i.f, align 4, !tbaa !89
  %i.h = fadd float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.j = load float, ptr %i.i, align 4, !tbaa !90
  %i.k = fadd float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.m = load float, ptr %i.l, align 4, !tbaa !91
  %i.n = fadd float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.p = load float, ptr %i.o, align 8, !tbaa !83 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load <2 x float>, ptr %i.s, align 4      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load <2 x float>, ptr %i.u, align 4      ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.x = load <2 x float>, ptr %i.w, align 4      ; 4 uses
  %i.y = load <2 x float>, ptr %i.c, align 4, !tbaa !85
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.y, %i.aa            ; 4 uses
  %i.ac = fmul float %i.p, %i.n                   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ab, %i.t
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ae = insertelement <2 x float> %i.ad, float %i.ac, i64 1 ; 2 uses
  %i.af = fmul <2 x float> %i.ae, %i.r            ; 2 uses
  %i.ag = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ah = fmul <2 x float> %i.ab, %i.ag
  %i.ai = insertelement <2 x float> %i.ad, float %i.ac, i64 0 ; 3 uses
  %i.aj = fmul <2 x float> %i.ai, %i.r
  %i.ak = fsub <2 x float> %i.af, %i.ah
  %i.al = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.am = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.al, <2 x i32> <i32 0, i32 3>
  %i.an = fsub <2 x float> %i.am, %i.aj
  %i.ao = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ap = fmul <2 x float> %i.ai, %i.ao
  %i.aq = fmul <2 x float> %i.ae, %i.ao
  %i.ar = fadd <2 x float> %i.ap, %i.ak           ; 2 uses
  %i.as = fadd <2 x float> %i.aq, %i.an           ; 3 uses
  %i.at = fmul <2 x float> %i.ag, %i.ar
  %i.au = shufflevector <2 x float> %i.t, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.av = fmul <2 x float> %i.au, %i.as
  %i.aw = fmul <2 x float> %i.r, %i.as
  %i.ax = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul <2 x float> %i.ag, %i.ax
  %i.az = fsub <2 x float> %i.at, %i.av
  %i.ba = fsub <2 x float> %i.aw, %i.ay
  %i.bb = fmul <2 x float> %i.az, splat (float 2.000000e+00)
  %i.bc = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bd = fadd <2 x float> %i.ab, %i.bb           ; 4 uses
  %i.be = fadd <2 x float> %i.ai, %i.bc           ; 4 uses
  %foldExtExtBinop46 = fmul <2 x float> %i.x, %i.bd
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %foldExtExtBinop48 = fmul <2 x float> %i.v, %i.be
  %foldExtExtBinop50 = fsub <2 x float> %foldExtExtBinop46, %foldExtExtBinop48
  %i.bg = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bh = fmul <2 x float> %i.v, %i.bg
  %i.bi = shufflevector <2 x float> %i.v, <2 x float> %i.x, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bd
  %i.bk = fsub <2 x float> %i.bh, %i.bj           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.be
  %i.bn = fmul <2 x float> %i.bl, %i.bg
  %i.bo = fadd <2 x float> %i.bm, %i.bk           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bq = shufflevector <2 x float> %foldExtExtBinop50, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = fadd <2 x float> %i.bn, %i.bq           ; 2 uses
  %i.bs = fmul <2 x float> %i.bi, %i.bo
  %i.bt = shufflevector <2 x float> %i.x, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bu = fmul <2 x float> %i.bt, %i.br
  %i.bv = fsub <2 x float> %i.bs, %i.bu
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bx = fmul <2 x float> %i.v, %i.bw            ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fsub <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop52, i64 0
  %i.bz = fmul <2 x float> %i.bv, splat (float 2.000000e+00)
  %i.ca = fadd <2 x float> %i.bd, %i.bz
  %i.cb = fmul float %i.by, 2.000000e+00
  %i.cc = fadd float %i.bf, %i.cb
  %.fca.0.insert.i64.i43 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ca, 0
  %.fca.1.insert.i65.i44 = insertvalue { <2 x float>, float } %.fca.0.insert.i64.i43, float %i.cc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i65.i44
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetPrismaticJointTorque(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.d = load float, ptr %i.c, align 8, !tbaa !83 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.e, align 4
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.219.0.copyload = load float, ptr %.sroa.219.0..sroa_idx, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 4 uses
  %i.n = insertelement <2 x float> poison, float %i.d, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %.sroa.018.0.copyload ; 4 uses
  %i.q = fmul float %i.d, %.sroa.219.0.copyload   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.i
  %i.r = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1 ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.g              ; 2 uses
  %i.u = shufflevector <2 x float> %i.g, <2 x float> %i.i, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.v = fmul <2 x float> %i.p, %i.u
  %i.w = insertelement <2 x float> %i.r, float %i.q, i64 0 ; 3 uses
  %i.x = fmul <2 x float> %i.w, %i.g
  %i.y = fsub <2 x float> %i.t, %i.v
  %i.z = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aa = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.z, <2 x i32> <i32 0, i32 3>
  %i.ab = fsub <2 x float> %i.aa, %i.x
  %i.ac = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ad = fmul <2 x float> %i.w, %i.ac
  %i.ae = fmul <2 x float> %i.s, %i.ac
  %i.af = fadd <2 x float> %i.ad, %i.y            ; 2 uses
  %i.ag = fadd <2 x float> %i.ae, %i.ab           ; 3 uses
  %i.ah = fmul <2 x float> %i.u, %i.af
  %i.ai = shufflevector <2 x float> %i.i, <2 x float> %i.g, <2 x i32> <i32 0, i32 2>
  %i.aj = fmul <2 x float> %i.ai, %i.ag
  %i.ak = fmul <2 x float> %i.g, %i.ag
  %i.al = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.am = fmul <2 x float> %i.u, %i.al
  %i.an = fsub <2 x float> %i.ah, %i.aj
  %i.ao = fsub <2 x float> %i.ak, %i.am
  %i.ap = fmul <2 x float> %i.an, splat (float 2.000000e+00)
  %i.aq = fmul <2 x float> %i.ao, splat (float 2.000000e+00)
  %i.ar = fadd <2 x float> %i.p, %i.ap            ; 4 uses
  %i.as = fadd <2 x float> %i.w, %i.aq            ; 4 uses
  %foldExtExtBinop39 = fmul <2 x float> %i.m, %i.ar
  %i.at = extractelement <2 x float> %i.as, i64 0
  %foldExtExtBinop41 = fmul <2 x float> %i.k, %i.as
  %foldExtExtBinop43 = fsub <2 x float> %foldExtExtBinop39, %foldExtExtBinop41
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.av = fmul <2 x float> %i.k, %i.au
  %i.aw = shufflevector <2 x float> %i.k, <2 x float> %i.m, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ax = fmul <2 x float> %i.aw, %i.ar
  %i.ay = fsub <2 x float> %i.av, %i.ax           ; 2 uses
  %i.az = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.as
  %i.bb = fmul <2 x float> %i.az, %i.au
  %i.bc = fadd <2 x float> %i.ba, %i.ay           ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.be = shufflevector <2 x float> %foldExtExtBinop43, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.bf = fadd <2 x float> %i.bb, %i.be           ; 2 uses
  %i.bg = fmul <2 x float> %i.aw, %i.bc
  %i.bh = shufflevector <2 x float> %i.m, <2 x float> %i.k, <2 x i32> <i32 0, i32 2>
  %i.bi = fmul <2 x float> %i.bh, %i.bf
  %i.bj = fsub <2 x float> %i.bg, %i.bi
  %i.bk = shufflevector <2 x float> %i.bf, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3>
  %i.bl = fmul <2 x float> %i.k, %i.bk            ; 2 uses
  %shift = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop45 = fsub <2 x float> %i.bl, %shift
  %i.bm = extractelement <2 x float> %foldExtExtBinop45, i64 0
  %i.bn = fmul <2 x float> %i.bj, splat (float 2.000000e+00)
  %i.bo = fadd <2 x float> %i.ar, %i.bn
  %i.bp = fmul float %i.bm, 2.000000e+00
  %i.bq = fadd float %i.at, %i.bp
  %.fca.0.insert.i64.i36 = insertvalue { <2 x float>, float } poison, <2 x float> %i.bo, 0
  %.fca.1.insert.i65.i37 = insertvalue { <2 x float>, float } %.fca.0.insert.i64.i36, float %i.bq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i65.i37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3PreparePrismaticJoint(ptr nofree noundef captures(none) initializes((72, 152), (180, 181), (248, 360), (364, 412)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_0
