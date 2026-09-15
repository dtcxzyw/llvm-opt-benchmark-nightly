Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/revolute_joint?download=true
inline.NumInlined: 73
inline.NumDeleted: 22
begin_hunk_0_@b2RevoluteJoint_SetSpringDampingRatio:bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_RevoluteJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b2RevoluteJoint_SetTargetAngle(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_RevoluteJointSetTargetAngle, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !73
  call void @b2RecWrite_RevoluteJointSetTargetAngle(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_RevoluteJointSetTargetAngle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetTargetAngle(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetAngle(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11 ; 2 uses
  %i.d = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !78
  %i.g = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %i.c, i32 noundef %i.f) #11
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.g, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load <2 x float>, ptr %i.i, align 4      ; 3 uses
  %.sroa.05.4.vec.extract.i = extractelement <2 x float> %i.h, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.j, i64 0
  %i.k = fmul float %.sroa.05.4.vec.extract.i, %.sroa.0.0.vec.extract.i
  %.sroa.05.0.vec.extract.i = extractelement <2 x float> %i.h, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.j, i64 1 ; 2 uses
  %i.l = fmul float %.sroa.05.0.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.m = fadd float %i.k, %i.l                    ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.h, %i.j
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = fmul float %.sroa.05.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.p = fsub float %i.n, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !79
  %i.s = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %i.c, i32 noundef %i.r) #11
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = load <2 x float>, ptr %i.u, align 4      ; 3 uses
  %.sroa.05.4.vec.extract.i13 = extractelement <2 x float> %i.t, i64 1 ; 2 uses
  %.sroa.0.0.vec.extract.i14 = extractelement <2 x float> %i.v, i64 0
  %i.w = fmul float %.sroa.05.4.vec.extract.i13, %.sroa.0.0.vec.extract.i14
  %.sroa.05.0.vec.extract.i15 = extractelement <2 x float> %i.t, i64 0
  %.sroa.0.4.vec.extract.i16 = extractelement <2 x float> %i.v, i64 1 ; 2 uses
  %i.x = fmul float %.sroa.05.0.vec.extract.i15, %.sroa.0.4.vec.extract.i16
  %i.y = fadd float %i.w, %i.x                    ; 2 uses
  %foldExtExtBinop21 = fmul <2 x float> %i.t, %i.v
  %i.z = extractelement <2 x float> %foldExtExtBinop21, i64 0
  %i.aa = fmul float %.sroa.05.4.vec.extract.i13, %.sroa.0.4.vec.extract.i16
  %i.ab = fsub float %i.z, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.p, %i.y
  %i.ad = fmul float %i.m, %i.ab
  %i.ae = fsub float %i.ac, %i.ad
  %i.af = fmul float %i.p, %i.ab
  %i.ag = fmul float %i.m, %i.y
  %i.ah = fadd float %i.af, %i.ag
  %i.ai = tail call float @b2Atan2(float noundef %i.ae, float noundef %i.ah) #11
  ret float %i.ai
}

declare { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b2RevoluteJoint_EnableLimit(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_RevoluteJointEnableLimit, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorld(i32 noundef %i.c) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b2RecWrite_RevoluteJointEnableLimit(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 210 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !69, !range !70, !noundef !71
  %.not8 = icmp eq i8 %i.k, %i.a
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.a, ptr %i.j, align 2, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  store <2 x float> zeroinitializer, ptr %i.l, align 4, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @b2RecWrite_RevoluteJointEnableLimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b2RevoluteJoint_IsLimitEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 210
  %i.c = load i8, ptr %i.b, align 2, !tbaa !69, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetLowerLimit(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetUpperLimit(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b2RevoluteJoint_SetLimits(i64 %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b2RecArgs_RevoluteJointSetLimits, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %2, ptr %i.g, align 4, !tbaa !118
  call void @b2RecWrite_RevoluteJointSetLimits(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11 ; 2 uses
  %i.i = fcmp olt float %1, %2
  %i.j = select i1 %i.i, float %1, float %2       ; 3 uses
  %i.k = fcmp ogt float %1, %2
  %i.l = select i1 %i.k, float %1, float %2       ; 3 uses
  %i.m = fcmp olt float %i.j, f0xC0470D23
  %i.n = fcmp ogt float %i.j, f0x40470D23
  %i.o = select i1 %i.n, float f0x40470D23, float %i.j
  %i.p = select i1 %i.m, float f0xC0470D23, float %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store float %i.p, ptr %i.q, align 4, !tbaa !69
  %i.r = fcmp olt float %i.l, f0xC0470D23
  %i.s = fcmp ogt float %i.l, f0x40470D23
  %i.t = select i1 %i.s, float f0x40470D23, float %i.l
  %i.u = select i1 %i.r, float f0xC0470D23, float %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store float %i.u, ptr %i.v, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_RevoluteJointSetLimits(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b2RevoluteJoint_EnableMotor(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_RevoluteJointEnableMotor, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorld(i32 noundef %i.c) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, i8 0, i64 3, i1 false)
  call void @b2RecWrite_RevoluteJointEnableMotor(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 209 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !69, !range !70, !noundef !71
  %.not7 = icmp eq i8 %i.k, %i.a
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.a, ptr %i.j, align 1, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @b2RecWrite_RevoluteJointEnableMotor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @b2RevoluteJoint_IsMotorEnabled(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 209
  %i.c = load i8, ptr %i.b, align 1, !tbaa !69, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b2RevoluteJoint_SetMotorSpeed(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_RevoluteJointSetMotorSpeed, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !73
  call void @b2RecWrite_RevoluteJointSetMotorSpeed(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_RevoluteJointSetMotorSpeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetMotorSpeed(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetMotorTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2720
  %i.f = load float, ptr %i.e, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.h = load float, ptr %i.g, align 4, !tbaa !69
  %i.i = fmul float %i.f, %i.h
  ret float %i.i
}

; Function Attrs: nounwind uwtable
define void @b2RevoluteJoint_SetMaxMotorTorque(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_RevoluteJointSetMaxMotorTorque, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !73
  call void @b2RecWrite_RevoluteJointSetMaxMotorTorque(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_RevoluteJointSetMaxMotorTorque(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2RevoluteJoint_GetMaxMotorTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden <2 x float> @b2GetRevoluteJointForce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.b = load float, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.d = load <2 x float>, ptr %i.c, align 4
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %i.f, %i.d
  ret <2 x float> %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @b2GetRevoluteJointTorque(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.b = load float, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !81
  %i.e = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load float, ptr %i.f, align 4, !tbaa !83
  %i.h = fsub float %i.e, %i.g
  %i.i = fmul float %i.b, %i.h
  ret float %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2PrepareRevoluteJoint(ptr nofree noundef captures(none) initializes((48, 64), (144, 208)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120  ; 2 uses
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !124  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !134
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [96 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load <2 x float>, ptr %i.ag, align 4, !tbaa !81
  %i.am = load float, ptr %i.ah, align 4, !tbaa !136
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !81
  %i.ao = load float, ptr %i.aj, align 4, !tbaa !136
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.an, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ap, ptr %i.ak, align 4, !tbaa !81
  %i.aq = icmp eq i32 %i.p, 2
  %i.ar = select i1 %i.aq, i32 %i.x, i32 -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !96
  %i.at = icmp eq i32 %i.t, 2
  %i.au = select i1 %i.at, i32 %i.z, i32 -1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.au, ptr %i.av, align 4, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.bc = load <2 x float>, ptr %i.ba, align 4    ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bb, %i.bd           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = fmul <2 x float> %i.bf, %i.bg           ; 2 uses
  %i.bi = fsub <2 x float> %i.be, %i.bh
  %i.bj = fadd <2 x float> %i.be, %i.bh
  %i.bk = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bk, ptr %i.ax, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bm = load <2 x float>, ptr %i.az, align 4
  %i.bn = load <2 x float>, ptr %i.bl, align 4
  %i.bo = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.bp = fsub <2 x float> %i.bm, %i.bn           ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bo, %i.bq           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = fsub <2 x float> %i.br, %i.bu
  %i.bw = fadd <2 x float> %i.br, %i.bu
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bx, ptr %i.aw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load <2 x float>, ptr %i.ca, align 4    ; 2 uses
  %i.ce = load <2 x float>, ptr %i.cc, align 4    ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf           ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %i.ch, %i.ci           ; 2 uses
  %i.ck = fsub <2 x float> %i.cg, %i.cj
  %i.cl = fadd <2 x float> %i.cg, %i.cj
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cm, ptr %i.bz, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.co = load <2 x float>, ptr %i.cb, align 4
  %i.cp = load <2 x float>, ptr %i.cn, align 4
  %i.cq = load <2 x float>, ptr %i.ca, align 4    ; 2 uses
  %i.cr = fsub <2 x float> %i.co, %i.cp           ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fmul <2 x float> %i.cu, %i.cv           ; 2 uses
  %i.cx = fsub <2 x float> %i.ct, %i.cw
  %i.cy = fadd <2 x float> %i.ct, %i.cw
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cz, ptr %i.by, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dd = load <2 x float>, ptr %i.db, align 4
  %i.de = load <2 x float>, ptr %i.dc, align 4
  %i.df = fsub <2 x float> %i.dd, %i.de
  store <2 x float> %i.df, ptr %i.da, align 4
  %i.dg = fadd float %i.am, %i.ao                 ; 2 uses
  %i.dh = fcmp ogt float %i.dg, 0.000000e+00
  %i.di = fdiv float 1.000000e+00, %i.dg
  %i.dj = select i1 %i.dh, float %i.di, float 0.000000e+00
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192
  store float %i.dj, ptr %i.dk, align 4, !tbaa !98
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !137 ; 2 uses
  %i.do = fcmp oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %b2MakeSoft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !99
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !138
  %i.dt = fmul float %i.dn, f0x40C90FDB           ; 2 uses
  %i.du = fmul float %i.ds, 2.000000e+00
  %i.dv = fmul float %i.dt, %i.dq                 ; 2 uses
  %i.dw = fadd float %i.dv, %i.du                 ; 2 uses
  %i.dx = fmul float %i.dv, %i.dw                 ; 2 uses
  %i.dy = fadd float %i.dx, 1.000000e+00
  %i.dz = fdiv float 1.000000e+00, %i.dy          ; 2 uses
  %i.ea = fdiv float %i.dt, %i.dw
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eb = fmul float %i.dx, %i.dz
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.eb, i64 1
  br label %b2MakeSoft.exit

b2MakeSoft.exit:                                  ; preds = %bb.a, %bb.b
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.dz, %bb.b ], [ 0.000000e+00, %bb.a ]
  store <2 x float> %.sroa.014.0.i, ptr %i.dl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 204
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !81
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !139, !range !70, !noundef !71
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b2MakeSoft.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %b2MakeSoft.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2WarmStartRevoluteJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveRevoluteJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %i.ac = load <2 x float>, ptr %i.aa, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ad, %i.ae           ; 2 uses
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.ab, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %i.af, %i.ah
  %i.aj = fadd <2 x float> %i.af, %i.ah
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.am = load float, ptr %i.al, align 4, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load float, ptr %i.an, align 4, !tbaa !106
  %i.ap = fadd float %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !107
  %i.as = fadd float %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load float, ptr %i.at, align 4, !tbaa !83
  %i.av = fsub float %i.as, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !109
  %i.ay = and i32 %i.ax, 512
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ba = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.bd = load <2 x float>, ptr %i.q, align 4
  %i.be = load <2 x float>, ptr %i.i, align 4
  %i.bf = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bg, %i.be
  %i.bi = fsub <2 x float> %i.bd, %i.bh
  store <2 x float> %i.bi, ptr %i.q, align 4
  %i.bj = load <2 x float>, ptr %i.i, align 4
  %i.bk = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bk, %i.bl           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x float> %i.ba, %i.bn           ; 2 uses
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = fadd <2 x float> %i.bm, %i.bo
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.bs = fmul <2 x float> %i.br, %i.bj           ; 2 uses
  %shift = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bs
  %i.bt = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bu = fadd float %i.av, %i.bt
  %i.bv = fmul float %i.f, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !110
  %i.by = fsub float %i.bx, %i.bv
  store float %i.by, ptr %i.bw, align 4, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !109
  %i.cb = and i32 %i.ca, 512
  %.not41 = icmp eq i32 %i.cb, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load <2 x float>, ptr %i.y, align 4
  %i.cd = load <2 x float>, ptr %i.i, align 4
  %i.ce = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = fadd <2 x float> %i.cc, %i.cg
  store <2 x float> %i.ch, ptr %i.y, align 4
  %i.ci = load <2 x float>, ptr %i.i, align 4
  %i.cj = fmul <2 x float> %i.ak, %i.ci           ; 2 uses
  %shift62 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop63 = fsub <2 x float> %shift62, %i.cj
  %i.ck = extractelement <2 x float> %foldExtExtBinop63, i64 0
  %i.cl = fadd float %i.av, %i.ck
  %i.cm = fmul float %i.h, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !110
  %i.cp = fadd float %i.co, %i.cm
  store float %i.cp, ptr %i.cn, align 4, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolveRevoluteJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %4 = load float, ptr %i.b, align 4, !tbaa !101  ; 2 uses
  %i.e = load float, ptr %i.a, align 4, !tbaa !100 ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !103 ; 8 uses
  %i.g = load float, ptr %i.c, align 4, !tbaa !102 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveRevoluteJoint.dummyState, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 4, !tbaa !96   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !97   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.sroa.0117.0.copyload.pre = load <2 x float>, ptr %i.w, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0117.0.copyload = phi <2 x float> [ %.sroa.0117.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.x = phi ptr [ %i.w, %bb.d ], [ %3, %bb.c ]   ; 5 uses
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.p, align 4 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !110 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !110 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = load <2 x float>, ptr %i.ac, align 4
  %i.ag = load <2 x float>, ptr %i.ae, align 4
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aj = fmul <4 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = load <2 x float>, ptr %i.ak, align 4
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
  %i.bd = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift369 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop370 = fadd <4 x float> %shift369, %i.bc
  %i.be = extractelement <4 x float> %foldExtExtBinop370, i64 2 ; 2 uses
  %i.bf = fadd float %i.g, %i.f
  %i.bg = fcmp oeq float %i.bf, 0.000000e+00      ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !111, !range !70, !noundef !71
  %i.bj = trunc nuw i8 %i.bi to i1
  %.not254 = xor i1 %i.bj, true
  %brmerge = select i1 %.not254, i1 true, i1 %i.bg
  br i1 %brmerge, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = tail call float @b2Atan2(float noundef %i.bd, float noundef %i.be) #11
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !112
  %i.bn = fsub float %i.bk, %i.bm                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, -1.000000e+06
  %i.bp = fcmp ogt float %i.bn, 1.000000e+06
  %i.bq = select i1 %i.bp, float 1.000000e+06, float %i.bn
  %i.br = select i1 %i.bo, float -1.000000e+06, float %i.bq
  %i.bs = fpext float %i.br to double             ; 2 uses
  %i.bt = fdiv double %i.bs, f0x401921FB60000000
  %i.bu = fadd double %i.bt, f0x4338000000000000
  %i.bv = fadd double %i.bu, f0xC338000000000000
  %i.bw = fmul double %i.bv, f0x401921FB60000000
  %i.bx = fsub double %i.bs, %i.bw
  %i.by = fptrunc double %i.bx to float
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !140
  %i.cb = fmul float %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !142
  %i.cg = fsub float %i.ab, %i.z
  %i.ch = fneg float %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !98
  %i.ck = fmul float %i.cj, %i.ch
  %i.cl = fadd float %i.cg, %i.cb
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !105 ; 2 uses
  %i.cp = fmul float %i.cf, %i.co
  %i.cq = fsub float %i.cm, %i.cp                 ; 3 uses
  %i.cr = fadd float %i.co, %i.cq
  store float %i.cr, ptr %i.cn, align 4, !tbaa !105
  %i.cs = fmul float %i.g, %i.cq
  %i.ct = fmul float %i.f, %i.cq
  %i.cu = fsub float %i.z, %i.cs
  %i.cv = fadd float %i.ab, %i.ct
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0236 = phi float [ %i.cv, %bb.f ], [ %i.ab, %bb.e ] ; 3 uses
  %.0 = phi float [ %i.cu, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !143, !range !70, !noundef !71
  %i.cy = trunc nuw i8 %i.cx to i1
  %.not256 = xor i1 %i.cy, true
  %brmerge258 = select i1 %.not256, i1 true, i1 %i.bg
  br i1 %brmerge258, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cz = fsub float %.0236, %.0
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.db = load float, ptr %i.da, align 4, !tbaa !144
  %i.dc = fsub float %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.de = load float, ptr %i.dd, align 4, !tbaa !98
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !106 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load float, ptr %i.dh, align 8, !tbaa !99
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !145
  %i.dl = fmul float %i.di, %i.dk                 ; 3 uses
  %i.dm = fmul float %i.de, %i.dc
  %i.dn = fsub float %i.dg, %i.dm                 ; 3 uses
  %i.do = fneg float %i.dl                        ; 2 uses
  %i.dp = fcmp olt float %i.dn, %i.do
  %i.dq = fcmp ogt float %i.dn, %i.dl
  %i.dr = select i1 %i.dq, float %i.dl, float %i.dn
  %i.ds = select i1 %i.dp, float %i.do, float %i.dr ; 2 uses
  store float %i.ds, ptr %i.df, align 4, !tbaa !106
  %i.dt = fsub float %i.ds, %i.dg                 ; 2 uses
  %i.du = fmul float %i.g, %i.dt
  %i.dv = fmul float %i.f, %i.dt
  %i.dw = fsub float %.0, %i.du
  %i.dx = fadd float %.0236, %i.dv
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1237 = phi float [ %i.dx, %bb.h ], [ %.0236, %bb.g ] ; 3 uses
  %.1 = phi float [ %i.dw, %bb.h ], [ %.0, %bb.g ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !113, !range !70, !noundef !71
  %i.ea = trunc nuw i8 %i.dz to i1
  %.not259 = xor i1 %i.ea, true
  %brmerge261 = select i1 %.not259, i1 true, i1 %i.bg
  br i1 %brmerge261, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = tail call float @b2Atan2(float noundef %i.bd, float noundef %i.be) #11 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !114
  %i.ee = fsub float %i.eb, %i.ed                 ; 3 uses
  %i.ef = fcmp ogt float %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !146
  %i.ei = fmul float %i.ee, %i.eh
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !147
  %i.el = fmul float %i.ee, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.en = load float, ptr %i.em, align 4, !tbaa !148
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !149
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0243 = phi float [ 0.000000e+00, %bb.k ], [ %i.ep, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.0242 = phi float [ 1.000000e+00, %bb.k ], [ %i.en, %bb.m ], [ 1.000000e+00, %bb.l ]
  %.0241 = phi float [ %i.ei, %bb.k ], [ %i.el, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.eq = fsub float %.1237, %.1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !107 ; 3 uses
  %i.et = fneg float %.0242
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !98 ; 2 uses
  %i.ew = fmul float %i.ev, %i.et
  %i.ex = fadd float %i.eq, %.0241
  %i.ey = fmul float %i.ex, %i.ew
  %i.ez = fmul float %.0243, %i.es
  %i.fa = fsub float %i.ey, %i.ez
  %i.fb = fadd float %i.es, %i.fa                 ; 2 uses
  %i.fc = fcmp ogt float %i.fb, 0.000000e+00
  %i.fd = select i1 %i.fc, float %i.fb, float 0.000000e+00 ; 2 uses
  store float %i.fd, ptr %i.er, align 4, !tbaa !107
  %i.fe = fsub float %i.fd, %i.es                 ; 2 uses
  %i.ff = fmul float %i.g, %i.fe
  %i.fg = fmul float %i.f, %i.fe
  %i.fh = fsub float %.1, %i.ff                   ; 2 uses
  %i.fi = fadd float %.1237, %i.fg                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !115
  %i.fl = fsub float %i.fk, %i.eb                 ; 3 uses
  %i.fm = fcmp ogt float %i.fl, 0.000000e+00
  br i1 %i.fm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !146
  %i.fp = fmul float %i.fl, %i.fo
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br i1 %2, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !147
  %i.fs = fmul float %i.fl, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !148
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.0246 = phi float [ %i.fp, %bb.o ], [ %i.fs, %bb.q ], [ 0.000000e+00, %bb.p ]
  %.0245 = phi float [ 1.000000e+00, %bb.o ], [ %i.fu, %bb.q ], [ 1.000000e+00, %bb.p ]
  %.0244 = phi float [ 0.000000e+00, %bb.o ], [ %i.fw, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.fx = fsub float %i.fh, %i.fi
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !83 ; 3 uses
  %i.ga = fneg float %.0245
  %i.gb = fmul float %i.ev, %i.ga
  %i.gc = fadd float %i.fx, %.0246
  %i.gd = fmul float %i.gc, %i.gb
  %i.ge = fmul float %.0244, %i.fz
  %i.gf = fsub float %i.gd, %i.ge
  %i.gg = fadd float %i.fz, %i.gf                 ; 2 uses
  %i.gh = fcmp ogt float %i.gg, 0.000000e+00
  %i.gi = select i1 %i.gh, float %i.gg, float 0.000000e+00 ; 2 uses
  store float %i.gi, ptr %i.fy, align 4, !tbaa !83
  %i.gj = fsub float %i.gi, %i.fz                 ; 2 uses
  %i.gk = fmul float %i.g, %i.gj
  %i.gl = fmul float %i.f, %i.gj
  %i.gm = fadd float %i.fh, %i.gk
  %i.gn = fsub float %i.fi, %i.gl
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.r
  %.2238 = phi float [ %i.gn, %bb.r ], [ %.1237, %bb.i ] ; 2 uses
  %.2 = phi float [ %i.gm, %bb.r ], [ %.1, %bb.i ] ; 2 uses
  %i.go = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.gp = load <2 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.gq = load <2 x float>, ptr %i.ak, align 4    ; 2 uses
  %i.gr = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %.sroa.01.0.vec.extract.i297 = extractelement <2 x float> %.sroa.0131.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i300 = extractelement <2 x float> %.sroa.0131.0.copyload, i64 1
  %i.gs = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gt = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x float> %i.gs, %i.gt           ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = fmul <2 x float> %i.go, %i.gv           ; 2 uses
  %i.gx = fsub <2 x float> %i.gu, %i.gw           ; 2 uses
  %i.gy = fadd <2 x float> %i.gu, %i.gw           ; 2 uses
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> %i.gx, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ha = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.gq, %i.ha           ; 2 uses
  %i.hc = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.he = fmul <2 x float> %i.hc, %i.hd           ; 2 uses
  %i.hf = fadd <2 x float> %i.hb, %i.he           ; 2 uses
  %i.hg = fsub <2 x float> %i.hb, %i.he           ; 2 uses
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> %i.hf, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.hi = insertelement <2 x float> poison, float %.2238, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hl = fmul <2 x float> %i.hj, %i.hk           ; 2 uses
  %i.hm = fadd <2 x float> %.sroa.0117.0.copyload, %i.hl
  %i.hn = fsub <2 x float> %.sroa.0117.0.copyload, %i.hl
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> %i.hm, <2 x i32> <i32 0, i32 3>
  %i.hp = insertelement <2 x float> poison, float %.2, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x float> %i.hq, %i.gz           ; 2 uses
  %i.hs = fadd <2 x float> %.sroa.0131.0.copyload, %i.hr
  %i.ht = fsub <2 x float> %.sroa.0131.0.copyload, %i.hr
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> %i.hs, <2 x i32> <i32 0, i32 3>
  %i.hv = fsub <2 x float> %i.ho, %i.hu
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.hx, align 4
  %i.hy = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ia = load <2 x float>, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !147
  %i.id = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.021.0.copyload
  %i.ie = fsub <2 x float> %i.hh, %i.hy
  %i.if = fadd <2 x float> %i.ie, %i.id
  %i.ig = fadd <2 x float> %i.ia, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ii, %i.ig
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.il = load <2 x float>, ptr %i.ik, align 4, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.025.0 = phi <2 x float> [ %i.ij, %bb.t ], [ zeroinitializer, %bb.s ]
  %i.im = phi <2 x float> [ %i.il, %bb.t ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.s ] ; 2 uses
  %i.in = fmul <2 x float> %i.gz, %i.gz
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ip = fmul <2 x float> %i.hh, %i.hh
  %i.iq = extractelement <2 x float> %i.gy, i64 0
  %i.ir = fneg float %i.iq
  %i.is = extractelement <2 x float> %i.gx, i64 1
  %i.it = fmul float %i.is, %i.ir
  %i.iu = fmul float %i.g, %i.it
  %i.iv = extractelement <2 x float> %i.hg, i64 0 ; 2 uses
  %i.iw = extractelement <2 x float> %i.hf, i64 1 ; 2 uses
  %i.ix = fmul float %i.iw, %i.iv
  %i.iy = fmul float %i.f, %i.ix
  %i.iz = extractelement <2 x float> %i.im, i64 0
  %i.ja = fneg float %i.iz
  %i.jb = fsub float %i.iu, %i.iy                 ; 3 uses
  %i.jc = fadd float %i.e, %4
  %i.jd = insertelement <2 x float> poison, float %i.g, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x float> %i.je, %i.io
  %i.jg = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fadd <2 x float> %i.jh, %i.jf
  %i.jj = insertelement <2 x float> poison, float %i.f, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.jk, %i.ip
  %i.jm = fadd <2 x float> %i.ji, %i.jl           ; 3 uses
  %i.jn = fadd <2 x float> %i.hv, %.sroa.025.0    ; 2 uses
  %shift372 = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fmul <2 x float> %shift372, %i.jm
  %i.jo = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.jp = fmul float %i.jb, %i.jb
  %i.jq = fsub float %i.jo, %i.jp                 ; 3 uses
  %i.jr = fcmp une float %i.jq, 0.000000e+00
  %i.js = fdiv float 1.000000e+00, %i.jq
  %.0.i = select i1 %i.jr, float %i.js, float %i.jq
  %i.jt = fmul <2 x float> %i.jm, %i.jn
  %i.ju = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jx = fmul <2 x float> %i.jv, %i.jw
  %i.jy = fsub <2 x float> %i.jt, %i.jx
  %i.jz = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.ka, %i.jy
  %i.kc = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x float> %i.kb, %i.kd
  %i.kf = load <2 x float>, ptr %i.h, align 4, !tbaa !81 ; 2 uses
  %i.kg = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kh = fmul <2 x float> %i.kg, %i.kf
  %i.ki = fsub <2 x float> %i.ke, %i.kh           ; 5 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0 ; 2 uses
  %i.kk = extractelement <2 x float> %i.ki, i64 1 ; 2 uses
  %i.kl = fadd <2 x float> %i.kf, %i.ki
  store <2 x float> %i.kl, ptr %i.h, align 4, !tbaa !81
  %i.km = insertelement <2 x float> poison, float %4, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.kn, %i.ki
  %i.kp = fadd <2 x float> %.sroa.0117.0.copyload, %i.ko
  %i.kq = fmul float %i.iv, %i.kk
  %i.kr = fmul float %i.iw, %i.kj
  %i.ks = fsub float %i.kq, %i.kr
  %i.kt = fmul float %i.f, %i.ks
  %i.ku = fadd float %.2238, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !109
  %i.kx = and i32 %i.kw, 512
  %.not = icmp eq i32 %i.kx, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ky = fmul <2 x float> %i.gz, %i.ki           ; 2 uses
  %shift375 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop376 = fsub <2 x float> %shift375, %i.ky
  %i.kz = extractelement <2 x float> %foldExtExtBinop376, i64 0
  %5 = fmul float %i.e, %i.kj
  %6 = fsub float %.sroa.01.0.vec.extract.i297, %5
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %6, i64 0
  %i.la = fmul float %i.e, %i.kk
  %i.lb = fsub float %.sroa.01.4.vec.extract.i300, %i.la
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.lb, i64 1
  %i.lc = fmul float %i.g, %i.kz
  %i.ld = fsub float %.2, %i.lc
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.p, align 4
  store float %i.ld, ptr %i.y, align 4, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.le = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !109
  %i.lg = and i32 %i.lf, 512
  %.not253 = icmp eq i32 %i.lg, 0
  br i1 %.not253, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.kp, ptr %i.x, align 4
  store float %i.ku, ptr %i.aa, align 4, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2DrawRevoluteJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x float>, ptr %i.b, align 4      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 4 uses
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %5, %i.j                ; 2 uses
  %i.l = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x float> %i.l, %i.m              ; 2 uses
  %i.o = fsub <2 x float> %i.k, %i.n
  %i.p = fadd <2 x float> %i.k, %i.n
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.r = fadd <2 x float> %4, %i.q                ; 11 uses
  %i.s = fmul float %6, 2.500000e-01              ; 4 uses
  %i.t = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %i.u = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 1, i32 3>
  %i.v = fmul <2 x float> %i.t, %i.u
  %i.w = shufflevector <2 x float> %3, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %i.x = shufflevector <2 x float> %i.e, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.y = fmul <2 x float> %i.w, %i.x
  %i.z = shufflevector <2 x float> %3, <2 x float> %5, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x float> %i.e, <2 x float> %i.i, <2 x i32> <i32 1, i32 3>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 1, i32 3>
  %i.ad = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = fsub <2 x float> %i.y, %i.ab            ; 8 uses
  %i.ag = fadd <2 x float> %i.ae, %i.v            ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !152
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153
  tail call void %i.ai(<2 x float> %i.r, float noundef %i.s, i32 noundef 8421504, ptr noundef %i.ak) #11
  %i.al = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.am = extractelement <2 x float> %i.ag, i64 1 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !153
  %i.aq = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %3, %i.at              ; 2 uses
  %i.av = fsub <2 x float> %i.au, %i.as
  %i.aw = fadd <2 x float> %i.au, %i.as
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3>
  %i.ay = fadd <2 x float> %2, %i.ax              ; 5 uses
  %i.az = fmul float %i.s, %i.am
  %i.ba = fmul float %i.s, %i.al
  %i.bb = fmul float %i.al, 0.000000e+00
  %i.bc = fmul float %i.am, 0.000000e+00
  %i.bd = fadd float %i.az, %i.bb
  %i.be = fsub float %i.ba, %i.bc
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bd, i64 1
  %i.bh = fadd <2 x float> %i.ay, %i.bg
  tail call void %i.ao(<2 x float> %i.ay, <2 x float> %i.bh, i32 noundef 8421504, ptr noundef %i.ap) #11
  %i.bi = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bk = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.bl = fmul <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.bn = fmul <2 x float> %i.bm, zeroinitializer ; 2 uses
  %i.bo = fsub <2 x float> %i.bl, %i.bn
  %i.bp = fadd <2 x float> %i.bl, %i.bn
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.bs = fadd <2 x float> %i.r, %i.bq
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !153
  tail call void %i.br(<2 x float> %i.r, <2 x float> %i.bs, i32 noundef 255, ptr noundef %i.bt) #11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !155, !range !70, !noundef !71
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bx = fmul <2 x float> %i.af, %i.ag           ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift167 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop168 = fmul <2 x float> %i.af, %shift167
  %i.bz = extractelement <2 x float> %foldExtExtBinop168, i64 0
  %i.ca = extractelement <2 x float> %i.ag, i64 0
  %i.cb = fmul float %i.am, %i.ca
  %i.cc = fadd float %i.bz, %i.cb
  %i.cd = tail call float @b2Atan2(float noundef %i.by, float noundef %i.cc) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ce = fmul float %i.cd, 1.800000e+02
  %i.cf = fdiv float %i.ce, f0x40490FDB
  %i.cg = fpext float %i.cf to double
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str, double noundef %i.cg) #11 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !156
  %i.ck = fadd <2 x float> %i.ay, %i.bq
  %i.cl = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.cj(<2 x float> %i.ck, ptr noundef nonnull %i.a, i32 noundef 16777215, ptr noundef %i.cl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 210
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !113, !range !70, !noundef !71
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !115
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !114
  %i.ct = call <2 x float> @b2ComputeCosSin(float noundef %i.cs) #11 ; 2 uses
  %i.cu = call <2 x float> @b2ComputeCosSin(float noundef %i.cq) #11 ; 2 uses
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.cw = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.ct           ; 2 uses
  %i.cy = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %i.ct
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.db = fsub <2 x float> %i.cx, %i.da
  %i.dc = fadd <2 x float> %i.cx, %i.da
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.de = fmul <2 x float> %i.bj, %i.dd           ; 2 uses
  %i.df = fmul <2 x float> %i.dd, zeroinitializer
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dh = fsub <2 x float> %i.de, %i.dg
  %i.di = fadd <2 x float> %i.de, %i.dg
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = fadd <2 x float> %i.r, %i.dj
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.cv(<2 x float> %i.r, <2 x float> %i.dk, i32 noundef 32768, ptr noundef %i.dl) #11
  %i.dm = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.dn = fmul <2 x float> %i.cw, %i.cu           ; 2 uses
  %i.do = fmul <2 x float> %i.cy, %i.cu
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = fadd <2 x float> %i.dn, %i.dp
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dt = fmul <2 x float> %i.bj, %i.ds           ; 2 uses
  %i.du = fmul <2 x float> %i.ds, zeroinitializer
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = fsub <2 x float> %i.dt, %i.dv
  %i.dx = fadd <2 x float> %i.dt, %i.dv
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3>
  %i.dz = fadd <2 x float> %i.r, %i.dy
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.dm(<2 x float> %i.r, <2 x float> %i.dz, i32 noundef 16711680, ptr noundef %i.ea) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !111, !range !70, !noundef !71
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !112
  %i.eg = call <2 x float> @b2ComputeCosSin(float noundef %i.ef) #11 ; 2 uses
  %i.eh = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ei = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x float> %i.ei, %i.eg           ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.el = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.em = fmul <2 x float> %i.ek, %i.el           ; 2 uses
  %i.en = fsub <2 x float> %i.ej, %i.em
  %i.eo = fadd <2 x float> %i.ej, %i.em
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eq = fmul <2 x float> %i.bj, %i.ep           ; 2 uses
  %i.er = fmul <2 x float> %i.ep, zeroinitializer
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.et = fsub <2 x float> %i.eq, %i.es
  %i.eu = fadd <2 x float> %i.eq, %i.es
  %i.ev = shufflevector <2 x float> %i.et, <2 x float> %i.eu, <2 x i32> <i32 0, i32 3>
  %i.ew = fadd <2 x float> %i.r, %i.ev
  %i.ex = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.eh(<2 x float> %i.r, <2 x float> %i.ew, i32 noundef 15631086, ptr noundef %i.ex) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ey = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ez = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.ey(<2 x float> %i.ay, <2 x float> %i.r, i32 noundef 16766720, ptr noundef %i.ez) #11
  %i.fa = load i8, ptr %i.bu, align 1, !tbaa !155, !range !70, !noundef !71
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fc = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.fd = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.fc(<2 x float> %2, <2 x float> %i.ay, i32 noundef 16766720, ptr noundef %i.fd) #11
  %i.fe = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ff = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.fe(<2 x float> %4, <2 x float> %i.r, i32 noundef 16766720, ptr noundef %i.ff) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare float @b2Atan2(float noundef, float noundef) local_unnamed_addr #2

declare <2 x float> @b2ComputeCosSin(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!10 = !{!"p1 _ZTS12b2StackEntry", !8, i64 0}
!11 = !{!"b2DynamicArray_b2StackEntry", !10, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"b2Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !11, i64 24}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"b2DynamicArray_int", !13, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTS12b2MoveResult", !8, i64 0}
!16 = !{!"p1 _ZTS10b2MovePair", !8, i64 0}
!17 = !{!"b2AtomicInt", !5, i64 0}
!18 = !{!"p1 _ZTS9b2SetItem", !8, i64 0}
!19 = !{!"b2HashSet", !18, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"b2BroadPhase", !4, i64 0, !4, i64 216, !14, i64 264, !15, i64 280, !16, i64 288, !5, i64 296, !17, i64 300, !19, i64 304}
!21 = !{!"b2ConstraintGraph", !4, i64 0}
!22 = !{!"b2IdPool", !14, i64 0, !5, i64 16}
!23 = !{!"p1 _ZTS6b2Body", !8, i64 0}
!24 = !{!"b2DynamicArray_b2Body", !23, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"p1 _ZTS11b2SolverSet", !8, i64 0}
!26 = !{!"b2DynamicArray_b2SolverSet", !25, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 _ZTS7b2Joint", !8, i64 0}
!28 = !{!"b2DynamicArray_b2Joint", !27, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 _ZTS9b2Contact", !8, i64 0}
!30 = !{!"b2DynamicArray_b2Contact", !29, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!"p1 _ZTS8b2Island", !8, i64 0}
!32 = !{!"b2DynamicArray_b2Island", !31, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"p1 _ZTS7b2Shape", !8, i64 0}
!34 = !{!"b2DynamicArray_b2Shape", !33, i64 0, !5, i64 8, !5, i64 12}
!35 = !{!"p1 _ZTS12b2ChainShape", !8, i64 0}
!36 = !{!"b2DynamicArray_b2ChainShape", !35, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"p1 _ZTS8b2Sensor", !8, i64 0}
!38 = !{!"b2DynamicArray_b2Sensor", !37, i64 0, !5, i64 8, !5, i64 12}
!39 = !{!"p1 _ZTS13b2TaskContext", !8, i64 0}
!40 = !{!"b2DynamicArray_b2TaskContext", !39, i64 0, !5, i64 8, !5, i64 12}
!41 = !{!"p1 _ZTS19b2SensorTaskContext", !8, i64 0}
!42 = !{!"b2DynamicArray_b2SensorTaskContext", !41, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTS15b2BodyMoveEvent", !8, i64 0}
!44 = !{!"b2DynamicArray_b2BodyMoveEvent", !43, i64 0, !5, i64 8, !5, i64 12}
!45 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !8, i64 0}
!46 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !45, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !8, i64 0}
!48 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !47, i64 0, !5, i64 8, !5, i64 12}
!49 = !{!"p1 _ZTS17b2ContactHitEvent", !8, i64 0}
!50 = !{!"b2DynamicArray_b2ContactHitEvent", !49, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS12b2JointEvent", !8, i64 0}
!52 = !{!"b2DynamicArray_b2JointEvent", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 long", !8, i64 0}
!54 = !{!"b2BitSet", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"long", !4, i64 0}
!56 = !{!"float", !4, i64 0}
!57 = !{!"b2Vec2", !56, i64 0, !56, i64 4}
!58 = !{!"short", !4, i64 0}
!59 = !{!"b2Profile", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84}
!60 = !{!"b2Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!61 = !{!"p1 _ZTS11b2Scheduler", !8, i64 0}
!62 = !{!"p1 _ZTS11b2Recording", !8, i64 0}
!63 = !{!"_Bool", !4, i64 0}
!64 = !{!"b2World", !12, i64 0, !20, i64 40, !21, i64 360, !22, i64 1896, !24, i64 1920, !22, i64 1936, !26, i64 1960, !22, i64 1976, !28, i64 2000, !22, i64 2016, !30, i64 2040, !22, i64 2056, !32, i64 2080, !22, i64 2096, !22, i64 2120, !34, i64 2144, !36, i64 2160, !38, i64 2176, !40, i64 2192, !42, i64 2208, !44, i64 2224, !46, i64 2240, !48, i64 2256, !4, i64 2272, !4, i64 2304, !5, i64 2336, !50, i64 2344, !52, i64 2360, !54, i64 2376, !54, i64 2392, !54, i64 2408, !54, i64 2424, !55, i64 2440, !5, i64 2448, !57, i64 2452, !56, i64 2460, !56, i64 2464, !56, i64 2468, !56, i64 2472, !56, i64 2476, !56, i64 2480, !56, i64 2484, !8, i64 2488, !8, i64 2496, !58, i64 2504, !59, i64 2508, !60, i64 2596, !8, i64 2616, !8, i64 2624, !8, i64 2632, !8, i64 2640, !8, i64 2648, !5, i64 2656, !8, i64 2664, !8, i64 2672, !8, i64 2680, !8, i64 2688, !61, i64 2696, !8, i64 2704, !62, i64 2712, !56, i64 2720, !56, i64 2724, !5, i64 2728, !5, i64 2732, !58, i64 2736, !63, i64 2738, !63, i64 2739, !63, i64 2740, !63, i64 2741, !63, i64 2742}
!65 = !{!64, !62, i64 2712}
!66 = !{!"b2JointId", !5, i64 0, !58, i64 4, !58, i64 6}
!67 = !{!"", !66, i64 0, !63, i64 8}
!68 = !{!67, !63, i64 8}
!69 = !{!4, !4, i64 0}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!"", !66, i64 0, !56, i64 8}
!73 = !{!72, !56, i64 8}
!74 = !{!"b2Rot", !56, i64 0, !56, i64 4}
!75 = !{!"b2Transform", !57, i64 0, !74, i64 8}
!76 = !{!"b2Softness", !56, i64 0, !56, i64 4, !56, i64 8}
!77 = !{!"b2JointSim", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !75, i64 16, !75, i64 32, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !76, i64 72, !56, i64 84, !56, i64 88, !4, i64 92}
!78 = !{!77, !5, i64 4}
!79 = !{!77, !5, i64 8}
!80 = !{!64, !56, i64 2720}
!81 = !{!56, !56, i64 0}
!82 = !{!"b2RevoluteJoint", !57, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !5, i64 52, !5, i64 56, !75, i64 60, !75, i64 76, !57, i64 92, !56, i64 100, !76, i64 104, !63, i64 116, !63, i64 117, !63, i64 118}
!83 = !{!82, !56, i64 20}
!84 = !{!"p1 _ZTS7b2World", !8, i64 0}
!85 = !{!"p1 _ZTS17b2ConstraintGraph", !8, i64 0}
!86 = !{!"p1 _ZTS11b2BodyState", !8, i64 0}
!87 = !{!"p1 _ZTS9b2BodySim", !8, i64 0}
!88 = !{!"any p2 pointer", !8, i64 0}
!89 = !{!"p2 _ZTS12b2ContactSim", !88, i64 0}
!90 = !{!"p1 _ZTS23b2ContactConstraintWide", !8, i64 0}
!91 = !{!"p1 _ZTS20b2ContactPrepareSpan", !8, i64 0}
!92 = !{!"p1 _ZTS18b2JointPrepareSpan", !8, i64 0}
!93 = !{!"p1 _ZTS13b2SolverStage", !8, i64 0}
!94 = !{!"b2AtomicU32", !5, i64 0}
!95 = !{!"b2StepContext", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !5, i64 16, !76, i64 20, !76, i64 32, !56, i64 44, !56, i64 48, !84, i64 56, !85, i64 64, !86, i64 72, !87, i64 80, !13, i64 88, !5, i64 96, !13, i64 104, !17, i64 112, !89, i64 120, !90, i64 128, !91, i64 136, !5, i64 144, !92, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !93, i64 176, !5, i64 184, !63, i64 188, !4, i64 189, !94, i64 256, !4, i64 260, !17, i64 324, !4, i64 328}
!96 = !{!82, !5, i64 52}
!97 = !{!82, !5, i64 56}
!98 = !{!82, !56, i64 100}
!99 = !{!95, !56, i64 8}
!100 = !{!77, !56, i64 48}
!101 = !{!77, !56, i64 52}
!102 = !{!77, !56, i64 56}
!103 = !{!77, !56, i64 60}
!104 = !{!95, !86, i64 72}
!105 = !{!82, !56, i64 8}
!106 = !{!82, !56, i64 12}
!107 = !{!82, !56, i64 16}
!108 = !{!"b2BodyState", !57, i64 0, !56, i64 8, !5, i64 12, !57, i64 16, !74, i64 24}
!109 = !{!108, !5, i64 12}
!110 = !{!108, !56, i64 8}
!111 = !{!82, !63, i64 116}
!112 = !{!82, !56, i64 32}
!113 = !{!82, !63, i64 118}
!114 = !{!82, !56, i64 44}
!115 = !{!82, !56, i64 48}
!116 = !{!"", !66, i64 0, !56, i64 8, !56, i64 12}
!117 = !{!116, !56, i64 8}
!118 = !{!116, !56, i64 12}
!119 = !{!95, !84, i64 56}
!120 = !{!64, !23, i64 1920}
!121 = !{!64, !25, i64 1960}
!122 = !{!"b2Body", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !58, i64 88, !4, i64 90}
!123 = !{!122, !5, i64 8}
!124 = !{!122, !5, i64 12}
!125 = !{!"b2DynamicArray_b2BodySim", !87, i64 0, !5, i64 8, !5, i64 12}
!126 = !{!"b2DynamicArray_b2BodyState", !86, i64 0, !5, i64 8, !5, i64 12}
!127 = !{!"p1 _ZTS10b2JointSim", !8, i64 0}
!128 = !{!"b2DynamicArray_b2JointSim", !127, i64 0, !5, i64 8, !5, i64 12}
!129 = !{!"p1 _ZTS12b2ContactSim", !8, i64 0}
!130 = !{!"b2DynamicArray_b2ContactSim", !129, i64 0, !5, i64 8, !5, i64 12}
!131 = !{!"p1 _ZTS11b2IslandSim", !8, i64 0}
!132 = !{!"b2DynamicArray_b2IslandSim", !131, i64 0, !5, i64 8, !5, i64 12}
!133 = !{!"b2SolverSet", !125, i64 0, !126, i64 16, !128, i64 32, !130, i64 48, !132, i64 64, !5, i64 80}
!134 = !{!133, !87, i64 0}
!135 = !{!"b2BodySim", !75, i64 0, !57, i64 16, !74, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84, !5, i64 88, !5, i64 92}
!136 = !{!135, !56, i64 64}
!137 = !{!82, !56, i64 24}
!138 = !{!82, !56, i64 28}
!139 = !{!95, !63, i64 188}
!140 = !{!82, !56, i64 104}
!141 = !{!82, !56, i64 108}
!142 = !{!82, !56, i64 112}
!143 = !{!82, !63, i64 117}
!144 = !{!82, !56, i64 40}
!145 = !{!82, !56, i64 36}
!146 = !{!95, !56, i64 12}
!147 = !{!77, !56, i64 72}
!148 = !{!77, !56, i64 76}
!149 = !{!77, !56, i64 80}
!150 = !{!"b2AABB", !57, i64 0, !57, i64 8}
!151 = !{!"b2DebugDraw", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !150, i64 80, !56, i64 96, !56, i64 100, !63, i64 104, !63, i64 105, !63, i64 106, !63, i64 107, !63, i64 108, !63, i64 109, !63, i64 110, !63, i64 111, !63, i64 112, !63, i64 113, !63, i64 114, !63, i64 115, !63, i64 116, !63, i64 117, !63, i64 118, !8, i64 120}
!152 = !{!151, !8, i64 16}
!153 = !{!151, !8, i64 120}
!154 = !{!151, !8, i64 40}
!155 = !{!151, !63, i64 109}
!156 = !{!151, !8, i64 64}
end_hunk_0
