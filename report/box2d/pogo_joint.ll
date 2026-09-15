Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/pogo_joint?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2BodyState = type { %struct.b2Vec2, float, i32, %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2RecArgs_PogoJointSetRestLength = type { %struct.b2JointId, float }
%struct.b2JointId = type { i32, i16, i16 }
%struct.b2RecArgs_PogoJointSetSpringHertz = type { %struct.b2JointId, float }
%struct.b2RecArgs_PogoJointSetSpringDampingRatio = type { %struct.b2JointId, float }

@__const.b2SolvePogoJoint.dummyState = private unnamed_addr constant %struct.b2BodyState { %struct.b2Vec2 zeroinitializer, float 0.000000e+00, i32 0, %struct.b2Vec2 zeroinitializer, %struct.b2Rot { float 1.000000e+00, float 0.000000e+00 } }, align 4

; Function Attrs: nounwind uwtable
define void @b2PogoJoint_SetRestLength(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_PogoJointSetRestLength, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_PogoJointSetRestLength(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b2GetWorld(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @b2RecWrite_PogoJointSetRestLength(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @b2GetJointSimCheckType(i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2PogoJoint_GetRestLength(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2PogoJoint_GetSpringHertz(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b2PogoJoint_SetSpringHertz(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_PogoJointSetSpringHertz, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_PogoJointSetSpringHertz(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_PogoJointSetSpringHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b2PogoJoint_SetSpringDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_PogoJointSetSpringDampingRatio, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_PogoJointSetSpringDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_PogoJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2PogoJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2PogoJoint_GetLength(i64 %0) local_unnamed_addr #3 {
bb.a:
  %.sroa.222.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.222.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8 ; 2 uses
  %i.d = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74
  %i.g = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %i.c, i32 noundef %i.f) #8 ; 2 uses
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.g, 0 ; 3 uses
  %i.i = extractvalue { <2 x float>, <2 x float> } %i.g, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !75
  %i.l = tail call { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef %i.c, i32 noundef %i.k) #8 ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 2 uses
  %i.t = load <2 x float>, ptr %i.o, align 4      ; 2 uses
  %i.u = fsub <2 x float> %i.h, %i.h
  %i.v = fsub <2 x float> %i.m, %i.h
  %1 = fmul <2 x float> %i.q, zeroinitializer     ; 2 uses
  %2 = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %3 = fsub <2 x float> %1, %2
  %4 = fadd <2 x float> %1, %2
  %i.w = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.n, %i.w              ; 2 uses
  %i.y = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x float> %i.y, %5                ; 2 uses
  %i.aa = fsub <2 x float> %i.x, %i.z
  %i.ab = fadd <2 x float> %i.x, %i.z
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.i, %i.ad            ; 2 uses
  %i.af = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %i.ae, %i.ah
  %i.aj = fadd <2 x float> %i.ae, %i.ah
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fadd <2 x float> %i.u, %i.ak
  %i.am = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.n, %i.am            ; 2 uses
  %i.ao = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ap = fmul <2 x float> %i.y, %i.ao            ; 2 uses
  %i.aq = fsub <2 x float> %i.an, %i.ap
  %i.ar = fadd <2 x float> %i.an, %i.ap
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = fadd <2 x float> %i.v, %i.as
  %i.au = fsub <2 x float> %i.at, %i.al
  %i.av = fmul <2 x float> %i.ac, %i.au
  %i.aw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.av)
  ret float %i.aw
}

declare { <2 x float>, <2 x float> } @b2GetBodyTransform(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2PogoJoint_GetImpulse(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @b2PogoJoint_GetVelocity(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 4) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden <2 x float> @b2GetPogoJointForce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.b = load float, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load float, ptr %i.d, align 4, !tbaa !69
  %i.f = fmul float %i.b, %i.e
  %i.g = load <2 x float>, ptr %i.c, align 4
  %i.h = insertelement <2 x float> poison, float %i.f, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %i.g
  ret <2 x float> %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2PreparePogoJoint(ptr nofree noundef captures(none) initializes((48, 64), (124, 176)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !107  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !108  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !108  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !118
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [96 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load <2 x float>, ptr %i.ag, align 4, !tbaa !119 ; 2 uses
  %i.am = load float, ptr %i.ah, align 4, !tbaa !121
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !119 ; 2 uses
  %i.ao = load float, ptr %i.aj, align 4, !tbaa !121
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.an, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ap, ptr %i.ak, align 4, !tbaa !119
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ar = icmp eq i32 %i.p, 2
  %i.as = select i1 %i.ar, i32 %i.x, i32 -1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.as, ptr %i.at, align 4, !tbaa !89
  %i.au = icmp eq i32 %i.t, 2
  %i.av = select i1 %i.au, i32 %i.z, i32 -1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.bc, %i.be           ; 2 uses
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = fsub <2 x float> %i.bf, %i.bi
  %i.bk = fadd <2 x float> %i.bf, %i.bi
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bl, ptr %i.ay, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bn = load <2 x float>, ptr %i.ba, align 4
  %i.bo = load <2 x float>, ptr %i.bm, align 4
  %i.bp = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bq = fsub <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x float> %i.bt, %i.bu           ; 2 uses
  %i.bw = fsub <2 x float> %i.bs, %i.bv           ; 2 uses
  %i.bx = fadd <2 x float> %i.bs, %i.bv           ; 2 uses
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.by, ptr %i.ax, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load <2 x float>, ptr %i.cb, align 4    ; 2 uses
  %i.cf = load <2 x float>, ptr %i.cd, align 4    ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.ce, %i.cg           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul <2 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = fsub <2 x float> %i.ch, %i.ck
  %i.cm = fadd <2 x float> %i.ch, %i.ck
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cn, ptr %i.ca, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.cp = load <2 x float>, ptr %i.cc, align 4
  %i.cq = load <2 x float>, ptr %i.co, align 4
  %i.cr = load <2 x float>, ptr %i.cb, align 4    ; 2 uses
  %i.cs = fsub <2 x float> %i.cp, %i.cq           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.cr, %i.ct           ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x float> %i.cv, %i.cw           ; 2 uses
  %i.cy = fsub <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = fadd <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.da, ptr %i.bz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.dc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.de = load <2 x float>, ptr %i.dc, align 4
  %i.df = load <2 x float>, ptr %i.dd, align 4
  %i.dg = fsub <2 x float> %i.de, %i.df
  store <2 x float> %i.dg, ptr %i.db, align 4
  %i.dh = load <2 x float>, ptr %i.aq, align 4    ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.al, %i.an
  %i.di = shufflevector <2 x float> %i.cy, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = fmul <2 x float> %i.di, %i.dj
  %i.dl = shufflevector <2 x float> %i.cz, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x float> %i.dl, %i.dm
  %i.do = fsub <2 x float> %i.dk, %i.dn           ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.am, i64 1
  %i.dr = fmul <2 x float> %i.dq, %i.do
  %i.ds = fmul <2 x float> %i.do, %i.dr           ; 2 uses
  %shift = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop116 = fadd <2 x float> %foldExtExtBinop, %shift
  %foldExtExtBinop118 = fadd <2 x float> %i.ds, %foldExtExtBinop116
end_hunk_0
