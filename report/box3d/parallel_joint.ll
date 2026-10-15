Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/parallel_joint?download=true
inline.NumInlined: 95
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3RecArgs_ParallelJointSetSpringHertz = type { %struct.b3JointId, float }
%struct.b3JointId = type { i32, i16, i16 }
%struct.b3RecArgs_ParallelJointSetSpringDampingRatio = type { %struct.b3JointId, float }
%struct.b3RecArgs_ParallelJointSetMaxTorque = type { %struct.b3JointId, float }
%struct.b3BodyState = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3, %struct.b3Quat, i32 }
%struct.b3Vec3 = type { float, float, float }
%struct.b3Quat = type { %struct.b3Vec3, float }
%struct.b3Transform = type { %struct.b3Vec3, %struct.b3Quat }

; Function Attrs: nounwind uwtable
define void @b3ParallelJoint_SetSpringHertz(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_ParallelJointSetSpringHertz, align 8 ; 5 uses
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
  call void @b3RecWrite_ParallelJointSetSpringHertz(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 0) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b3GetWorld(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @b3RecWrite_ParallelJointSetSpringHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @b3GetJointSimCheckType(i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3ParallelJoint_GetSpringHertz(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 0) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3ParallelJoint_SetSpringDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_ParallelJointSetSpringDampingRatio, align 8 ; 5 uses
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
  call void @b3RecWrite_ParallelJointSetSpringDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 0) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_ParallelJointSetSpringDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3ParallelJoint_GetSpringDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 0) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b3ParallelJoint_SetMaxTorque(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b3RecArgs_ParallelJointSetMaxTorque, align 8 ; 5 uses
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
  call void @b3RecWrite_ParallelJointSetMaxTorque(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 0) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store float %1, ptr %i.h, align 4, !tbaa !71
  ret void
}

declare void @b3RecWrite_ParallelJointSetMaxTorque(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3ParallelJoint_GetMaxTorque(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 0) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load float, ptr %i.b, align 4, !tbaa !71
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { <2 x float>, float } @b3GetParallelJointTorque(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((204, 228)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 5 uses
  %i.f = load <2 x float>, ptr %i.b, align 4      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 4 uses
  %i.i = shufflevector <2 x float> %i.c, <2 x float> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.j = shufflevector <2 x float> %i.f, <2 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.k = fmul <4 x float> %i.i, %i.j              ; 4 uses
  %shift = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.k, %shift
  %shift180 = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop181 = fadd <4 x float> %shift180, %foldExtExtBinop
  %shift183 = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop184 = fadd <4 x float> %shift183, %foldExtExtBinop181 ; 2 uses
  %i.l = extractelement <4 x float> %foldExtExtBinop184, i64 0 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.n = fmul float %i.l, 0.000000e+00            ; 2 uses
  %i.o = shufflevector <2 x float> %i.h, <2 x float> %i.f, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.p = fmul <2 x float> %i.c, %i.o
  %i.q = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 2> ; 6 uses
  %i.r = fmul <2 x float> %i.q, %i.f
  %i.s = shufflevector <2 x float> %i.e, <2 x float> %i.c, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.t = fmul <2 x float> %i.s, %i.f
  %i.u = shufflevector <2 x float> %i.f, <2 x float> %i.h, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.v = fmul <2 x float> %i.c, %i.u
  %i.w = fsub <2 x float> %i.p, %i.t
  %i.x = fsub <2 x float> %i.r, %i.v
  %i.y = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.z = fmul <2 x float> %i.y, %i.u
  %i.aa = fmul <2 x float> %i.y, %i.o
  %i.ab = fadd <2 x float> %i.z, %i.w
  %i.ac = fadd <2 x float> %i.x, %i.aa
  %i.ad = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ae = fmul <2 x float> %i.q, %i.ad
  %i.af = fmul <2 x float> %i.s, %i.ad
  %i.ag = fsub <2 x float> %i.ab, %i.ae           ; 3 uses
  %i.ah = fsub <2 x float> %i.ac, %i.af           ; 2 uses
  %i.ai = fmul <2 x float> %i.ag, <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.aj = fmul <2 x float> %i.ah, zeroinitializer ; 4 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.l, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.n, i64 1
  %i.an = fadd <2 x float> %i.am, %i.ak           ; 5 uses
  %i.ao = fmul <2 x float> %i.q, %i.an
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.ar = shufflevector <2 x float> %i.ag, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = insertelement <2 x float> poison, float %i.n, i64 0 ; 2 uses
  %i.au = shufflevector <4 x float> %foldExtExtBinop184, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.aw = fadd <2 x float> %i.av, %i.as           ; 5 uses
  %i.ax = fmul <2 x float> %i.q, %i.aw
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.ba = shufflevector <2 x float> %i.aj, <2 x float> %i.ah, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.bc = fsub <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fadd <2 x float> %i.bd, %i.bc           ; 6 uses
  %i.bf = shufflevector <2 x float> %i.an, <2 x float> %i.be, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bg = fmul <2 x float> %i.c, %i.bf
  %i.bh = fsub <2 x float> %i.bg, %i.ao           ; 2 uses
  %i.bi = shufflevector <2 x float> %i.be, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.bj = fmul <2 x float> %i.y, %i.bi
  %i.bk = fmul <2 x float> %i.y, %i.bf
  %i.bl = fadd <2 x float> %i.bj, %i.bh           ; 2 uses
  %i.bm = fmul <2 x float> %i.q, %i.bl
  %i.bn = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = shufflevector <2 x float> %i.an, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul <2 x float> %i.bn, %i.bo
  %i.bq = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.be
  %i.bs = fsub <2 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bu = fadd <2 x float> %i.bk, %i.bt           ; 2 uses
  %i.bv = fmul <2 x float> %i.s, %i.bu
  %i.bw = fsub <2 x float> %i.bm, %i.bv
  %i.bx = fmul <2 x float> %i.bw, splat (float 2.000000e+00)
  %i.by = fadd <2 x float> %i.an, %i.bx
  %i.bz = fmul <2 x float> %i.by, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.bz, ptr %i.m, align 4, !tbaa !72
  %i.ca = shufflevector <2 x float> %i.aw, <2 x float> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cb = fmul <2 x float> %i.c, %i.ca
  %i.cc = fsub <2 x float> %i.cb, %i.ax           ; 2 uses
  %i.cd = shufflevector <2 x float> %i.be, <2 x float> %i.aw, <2 x i32> <i32 1, i32 2>
  %i.ce = fmul <2 x float> %i.y, %i.cd
  %i.cf = fmul <2 x float> %i.y, %i.ca
  %i.cg = fadd <2 x float> %i.ce, %i.cc           ; 2 uses
  %i.ch = shufflevector <2 x float> %i.bs, <2 x float> %i.cc, <2 x i32> <i32 1, i32 2>
  %i.ci = fadd <2 x float> %i.cf, %i.ch           ; 2 uses
  %i.cj = shufflevector <2 x float> %i.bu, <2 x float> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.ck = fmul <2 x float> %i.bq, %i.cj
  %i.cl = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = shufflevector <2 x float> %i.bl, <2 x float> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.cn = fmul <2 x float> %i.cl, %i.cm
  %i.co = fsub <2 x float> %i.ck, %i.cn
  %i.cp = fmul <2 x float> %i.co, splat (float 2.000000e+00)
  %i.cq = fadd <2 x float> %i.be, %i.cp
  %i.cr = fmul <2 x float> %i.cq, splat (float 5.000000e-01) ; 3 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  store float %i.cs, ptr %.sroa.4101.0..sroa_idx, align 4, !tbaa !72
  %i.ct = fmul <2 x float> %i.q, %i.cg
  %i.cu = fmul <2 x float> %i.s, %i.ci
  %i.cv = fsub <2 x float> %i.ct, %i.cu
  %i.cw = fmul <2 x float> %i.cv, splat (float 2.000000e+00)
  %i.cx = fadd <2 x float> %i.aw, %i.cw
  %i.cy = fmul <2 x float> %i.cx, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %i.cy, ptr %i.ap, align 4, !tbaa !72
  %i.cz = extractelement <2 x float> %i.cr, i64 1
  store float %i.cz, ptr %.sroa.457.0..sroa_idx, align 4, !tbaa !72
  %i.da = load float, ptr %i.az, align 8, !tbaa !102 ; 2 uses
  %i.db = load <2 x float>, ptr %i.ay, align 4, !tbaa !72 ; 3 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.dc, %i.bz
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.df = fmul <2 x float> %i.de, %i.cy
  %i.dg = fadd <2 x float> %i.dd, %i.df
  %i.dh = fmul <2 x float> %i.db, %i.cr
  %i.di = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dh)
  %i.dj = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.dk, %i.dg
  %i.dm = fmul float %i.da, %i.di
  %.fca.0.insert.i177 = insertvalue { <2 x float>, float } poison, <2 x float> %i.dl, 0
  %.fca.1.insert.i178 = insertvalue { <2 x float>, float } %.fca.0.insert.i177, float %i.dm, 1
  ret { <2 x float>, float } %.fca.1.insert.i178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3PrepareParallelJoint(ptr nofree noundef captures(none) initializes((72, 152), (180, 181), (204, 280)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !106
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3920
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !109
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !109
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !110  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !110  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !118
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [216 x i8], ptr %i.aa, i64 %i.ab ; 4 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [216 x i8], ptr %i.ad, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !120
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.ah, ptr %i.ai, align 4, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.ak, ptr %i.al, align 4, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.am, ptr noundef nonnull align 4 dereferenceable(36) %i.an, i64 36, i1 false), !tbaa.struct !123
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ao, ptr noundef nonnull align 4 dereferenceable(36) %i.ap, i64 36, i1 false), !tbaa.struct !123
  %.sroa.0241.0.copyload = load float, ptr %i.am, align 4, !tbaa !72
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.4242.0.copyload = load float, ptr %.sroa.4242.0..sroa_idx, align 4, !tbaa !72
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.5243.0.copyload = load float, ptr %.sroa.5243.0..sroa_idx, align 4, !tbaa !72
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.7245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.9247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.10248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
end_hunk_0
begin_hunk_1_@b3PrepareParallelJoint:bb.a
  %i.fi = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fk = fmul <2 x float> %i.fi, %i.fj           ; 2 uses
  %i.fl = fadd <2 x float> %i.fh, %i.fk
  %i.fm = fsub <2 x float> %i.fh, %i.fk
  %i.fn = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.fo = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.ed, %i.fo
  %i.fq = fadd <2 x float> %i.fp, %i.fn           ; 2 uses
  %i.fr = fsub <2 x float> %i.ff, %i.fq           ; 2 uses
  %i.fs = fadd <2 x float> %i.ff, %i.fq           ; 3 uses
  %i.ft = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fu = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fv = fmul float %i.di, %i.fu
  %i.fw = fsub float %i.es, %i.fv
  %i.fx = fadd float %i.eu, %i.fw
  %i.fy = shufflevector <2 x float> %i.fs, <2 x float> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.fz = fmul <2 x float> %i.cz, %i.fy
  %i.ga = fsub <2 x float> %i.fz, %i.fa
  %i.gb = fmul float %i.ev, %i.fu
  %i.gc = insertelement <2 x float> %i.fc, float %i.gb, i64 1
  %i.gd = fadd <2 x float> %i.gc, %i.ga
  %i.ge = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ge, ptr %.sroa.499.0..sroa_idx, align 4, !tbaa !72
  %foldExtExtBinop296 = fmul <2 x float> %i.cz, %i.ft
  %i.gf = extractelement <2 x float> %foldExtExtBinop296, i64 0
  %i.gg = fsub float %i.fx, %i.gf                 ; 2 uses
  %i.gh = fmul <2 x float> %i.ea, %i.ft           ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 1
  %i.gj = fadd float %i.gi, %i.ey
  %i.gk = extractelement <2 x float> %i.gh, i64 0
  %i.gl = fadd float %i.gk, %i.gj                 ; 3 uses
  %i.gm = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.fd, %i.gm
  %i.go = fsub <2 x float> %i.gd, %i.gn           ; 4 uses
  %i.gp = fmul <2 x float> %i.go, zeroinitializer ; 4 uses
  %i.gq = extractelement <2 x float> %i.gp, i64 0
  %i.gr = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = fsub ninf <2 x float> %i.gp, %i.gr
  %i.gt = insertelement <2 x float> %i.gs, float %i.gl, i64 1
  %i.gu = fmul <2 x float> %i.gt, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.gv = fmul float %i.gg, 0.000000e+00          ; 3 uses
  %i.gw = extractelement <2 x float> %i.go, i64 1
  %i.gx = fsub float %i.gw, %i.gv
  %i.gy = extractelement <2 x float> %i.go, i64 0
  %i.gz = fsub float %i.gv, %i.gy
  %i.ha = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.gx, i64 1
  %i.hc = fadd <2 x float> %i.hb, %i.gu           ; 5 uses
  %i.hd = extractelement <2 x float> %i.gu, i64 1 ; 2 uses
  %i.he = fadd float %i.hd, %i.gz                 ; 4 uses
  %i.hf = extractelement <2 x float> %i.hc, i64 0
  %i.hg = fmul float %i.et, %i.hf
  %i.hh = fmul float %i.dj, %i.he
  %i.hi = fsub float %i.hg, %i.hh
  %i.hj = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hk = insertelement <2 x float> %i.hj, float %i.he, i64 1 ; 2 uses
  %i.hl = fmul <2 x float> %i.cz, %i.hk
  %i.hm = fmul <2 x float> %i.fd, %i.hc
  %i.hn = fsub <2 x float> %i.hl, %i.hm           ; 2 uses
  %i.ho = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hp = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> %i.hc, <2 x i32> <i32 0, i32 2>
  %i.hr = fmul <2 x float> %i.ho, %i.hq
  %i.hs = fmul <2 x float> %i.ho, %i.hk
  %i.ht = fadd <2 x float> %i.hr, %i.hn           ; 2 uses
  %i.hu = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hv = insertelement <2 x float> %i.hu, float %i.hi, i64 0
  %i.hw = fadd <2 x float> %i.hs, %i.hv           ; 2 uses
  %i.hx = fmul <2 x float> %i.fd, %i.ht
  %i.hy = fmul <2 x float> %i.ez, %i.hw
  %i.hz = fsub <2 x float> %i.hx, %i.hy
  %foldExtExtBinop301 = fmul <2 x float> %i.cz, %i.hw
  %foldExtExtBinop303 = fmul <2 x float> %i.cz, %i.ht
  %shift305 = shufflevector <2 x float> %foldExtExtBinop303, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop306 = fsub <2 x float> %foldExtExtBinop301, %shift305
  %i.ia = extractelement <2 x float> %foldExtExtBinop306, i64 0
  %i.ib = fmul <2 x float> %i.hz, splat (float 2.000000e+00)
  %i.ic = fadd <2 x float> %i.hc, %i.ib
  %i.id = fmul float %i.ia, 2.000000e+00
  %i.ie = fadd float %i.he, %i.id
  %i.if = fmul <2 x float> %i.ic, splat (float 5.000000e-01)
  %i.ig = fmul float %i.ie, 5.000000e-01
  store <2 x float> %i.if, ptr %i.dk, align 4, !tbaa !72
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float %i.ig, ptr %.sroa.491.0..sroa_idx, align 4, !tbaa !72
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ii = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ij = insertelement <2 x float> %i.ii, float %i.gv, i64 1
  %i.ik = fsub <2 x float> %i.gp, %i.ij
  %i.il = fsub float %i.gg, %i.gq
  %i.im = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.in = insertelement <2 x float> %i.im, float %i.gl, i64 1
  %i.io = fadd <2 x float> %i.in, %i.ik           ; 5 uses
  %i.ip = fadd float %i.hd, %i.il                 ; 4 uses
  %i.iq = extractelement <2 x float> %i.io, i64 0
  %i.ir = fmul float %i.et, %i.iq
  %i.is = fmul float %i.dj, %i.ip
  %i.it = fsub float %i.ir, %i.is
  %i.iu = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iv = insertelement <2 x float> %i.iu, float %i.ip, i64 1 ; 2 uses
  %i.iw = fmul <2 x float> %i.cz, %i.iv
  %i.ix = fmul <2 x float> %i.fd, %i.io
  %i.iy = fsub <2 x float> %i.iw, %i.ix           ; 2 uses
  %i.iz = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> %i.io, <2 x i32> <i32 0, i32 2>
  %i.jb = fmul <2 x float> %i.ho, %i.ja
  %i.jc = fmul <2 x float> %i.ho, %i.iv
  %i.jd = fadd <2 x float> %i.jb, %i.iy           ; 2 uses
  %i.je = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jf = insertelement <2 x float> %i.je, float %i.it, i64 0
  %i.jg = fadd <2 x float> %i.jc, %i.jf           ; 2 uses
  %i.jh = fmul <2 x float> %i.fd, %i.jd
  %i.ji = fmul <2 x float> %i.ez, %i.jg
  %i.jj = fsub <2 x float> %i.jh, %i.ji
  %foldExtExtBinop308 = fmul <2 x float> %i.cz, %i.jg
  %foldExtExtBinop310 = fmul <2 x float> %i.cz, %i.jd
  %shift312 = shufflevector <2 x float> %foldExtExtBinop310, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fsub <2 x float> %foldExtExtBinop308, %shift312
  %i.jk = extractelement <2 x float> %foldExtExtBinop313, i64 0
  %i.jl = fmul <2 x float> %i.jj, splat (float 2.000000e+00)
  %i.jm = fadd <2 x float> %i.io, %i.jl
  %i.jn = fmul float %i.jk, 2.000000e+00
  %i.jo = fadd float %i.ip, %i.jn
  %i.jp = fmul <2 x float> %i.jm, splat (float 5.000000e-01)
  %i.jq = fmul float %i.jo, 5.000000e-01
  store <2 x float> %i.jp, ptr %i.ih, align 4, !tbaa !72
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store float %i.jq, ptr %.sroa.447.0..sroa_idx, align 4, !tbaa !72
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.js = load float, ptr %i.bv, align 4, !tbaa !124 ; 2 uses
  %i.jt = fcmp oeq float %i.js, 0.000000e+00
  br i1 %i.jt, label %b3MakeSoft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jv = load float, ptr %i.ju, align 8, !tbaa !96
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !125
  %i.jy = fmul float %i.js, f0x40C90FDB           ; 2 uses
  %i.jz = fmul float %i.jx, 2.000000e+00
  %i.ka = fmul float %i.jy, %i.jv                 ; 2 uses
  %i.kb = fadd float %i.ka, %i.jz                 ; 2 uses
  %i.kc = fmul float %i.ka, %i.kb                 ; 2 uses
  %i.kd = fadd float %i.kc, 1.000000e+00
  %i.ke = fdiv float 1.000000e+00, %i.kd          ; 2 uses
  %i.kf = fdiv float %i.jy, %i.kb
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kg = fmul float %i.kc, %i.ke
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.kg, i64 1
  br label %b3MakeSoft.exit

b3MakeSoft.exit:                                  ; preds = %bb.a, %bb.b
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.ke, %bb.b ], [ 0.000000e+00, %bb.a ]
  store <2 x float> %.sroa.014.0.i, ptr %i.jr, align 4, !tbaa !72
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !72
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.ki = load i8, ptr %i.kh, align 4, !tbaa !126, !range !97, !noundef !98
  %i.kj = icmp eq i8 %i.ki, 0
  br i1 %i.kj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b3MakeSoft.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 196
  store <2 x float> zeroinitializer, ptr %i.kk, align 4, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %b3MakeSoft.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3WarmStartParallelJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.595.0.copyload = load float, ptr %.sroa.595.0..sroa_idx, align 4, !tbaa !72
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.898.0.copyload = load float, ptr %.sroa.898.0..sroa_idx, align 4, !tbaa !72
  %.sroa.999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load <2 x float>, ptr %i.a, align 4, !tbaa !72
  %i.c = load <2 x float>, ptr %.sroa.696.0..sroa_idx, align 4, !tbaa !72
  %i.d = load <2 x float>, ptr %.sroa.999.0..sroa_idx, align 4, !tbaa !72
  %.sroa.11101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.11101.0.copyload = load float, ptr %.sroa.11101.0..sroa_idx, align 4, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !72
  %.sroa.6.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !72
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !72
  %i.g = load <2 x float>, ptr %.sroa.6.0..sroa_idx91, align 4, !tbaa !72
  %i.h = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !72
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.k = load i32, ptr %i.j, align 4, !tbaa !94   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = load i32, ptr %i.r, align 4, !tbaa !95   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [56 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.z, align 4, !tbaa !72
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.ab, align 4
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 4
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.ac, align 4
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4
  %i.ad = load <2 x float>, ptr %i.aa, align 4, !tbaa !72 ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 0>
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.ag = shufflevector <2 x float> %.sroa.036.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ah = insertelement <3 x float> %i.ag, float %.sroa.239.0.copyload, i64 0
  %i.ai = fmul <3 x float> %i.af, %i.ah
  %i.aj = shufflevector <2 x float> %.sroa.038.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ak = insertelement <3 x float> %i.aj, float %.sroa.237.0.copyload, i64 0
  %i.al = fmul <3 x float> %i.ae, %i.ak
  %i.am = fadd <3 x float> %i.al, %i.ai           ; 6 uses
  %i.an = extractelement <3 x float> %i.am, i64 1 ; 2 uses
  %i.ao = extractelement <3 x float> %i.am, i64 2 ; 2 uses
  %i.ap = extractelement <3 x float> %i.am, i64 0 ; 2 uses
  %i.aq = fmul float %.sroa.5.0.copyload, %i.an
  %i.ar = fmul float %.sroa.8.0.copyload, %i.ao
  %i.as = fadd float %i.aq, %i.ar
  %i.at = fmul float %.sroa.11.0.copyload, %i.ap
  %i.au = fadd float %i.at, %i.as
  %i.av = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aw = fmul <2 x float> %i.f, %i.av
  %i.ax = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ay = fmul <2 x float> %i.g, %i.ax
  %i.az = fadd <2 x float> %i.aw, %i.ay
  %i.ba = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fmul <2 x float> %i.h, %i.ba
  %i.bc = fadd <2 x float> %i.bb, %i.az
  %i.bd = fadd <2 x float> %.sroa.042.0.copyload, %i.bc
  %i.be = fadd float %.sroa.6.0.copyload, %i.au
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !101
  %i.bh = and i32 %i.bg, 4096
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %.sroa.648.0.copyload = load float, ptr %.sroa.648.0..sroa_idx, align 4, !tbaa !72
  %i.bi = fmul float %.sroa.595.0.copyload, %i.an
  %i.bj = fmul float %.sroa.898.0.copyload, %i.ao
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = fmul float %.sroa.11101.0.copyload, %i.ap
  %i.bm = fadd float %i.bl, %i.bk
  %i.bn = fsub float %.sroa.648.0.copyload, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.bo, align 4, !tbaa !72
  %i.bp = fmul <2 x float> %i.b, %i.av
  %i.bq = fmul <2 x float> %i.c, %i.ax
  %i.br = fmul <2 x float> %i.d, %i.ba
  %i.bs = fadd <2 x float> %i.bp, %i.bq
  %i.bt = fadd <2 x float> %i.br, %i.bs
  %i.bu = fsub <2 x float> %.sroa.046.0.copyload, %i.bt
  store <2 x float> %i.bu, ptr %i.bo, align 4, !tbaa !72
  store float %i.bn, ptr %.sroa.648.0..sroa_idx, align 4, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !101
  %i.bx = and i32 %i.bw, 4096
  %.not70 = icmp eq i32 %i.bx, 0
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <2 x float> %i.bd, ptr %i.z, align 4, !tbaa !72
  store float %i.be, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3SolveParallelJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.6521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.6521.0.copyload = load float, ptr %.sroa.6521.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  %.sroa.7524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.9530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.9530.0.copyload = load float, ptr %.sroa.9530.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  %.sroa.10533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load <2 x float>, ptr %i.a, align 4, !tbaa !72 ; 2 uses
  %i.c = load <2 x float>, ptr %.sroa.7524.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  %i.d = load <2 x float>, ptr %.sroa.10533.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  %.sroa.12539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.12539.0.copyload = load float, ptr %.sroa.12539.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.6499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.6499.0.copyload = load float, ptr %.sroa.6499.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.9.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx506, align 4, !tbaa !72 ; 2 uses
  %.sroa.10509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !72 ; 3 uses
  %i.g = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !72 ; 3 uses
  %i.h = load <2 x float>, ptr %.sroa.10509.0..sroa_idx, align 4, !tbaa !72 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float 1.000000e+00, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.k = load i32, ptr %i.j, align 4, !tbaa !94   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [56 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = load i32, ptr %i.r, align 4, !tbaa !95   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [56 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %.sroa.0264.0.copyload = load <2 x float>, ptr %i.z, align 4, !tbaa !72 ; 4 uses
  %.sroa.7267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %.sroa.7267.0.copyload = load float, ptr %.sroa.7267.0..sroa_idx, align 4, !tbaa !72 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %.sroa.0258.0.copyload = load <2 x float>, ptr %i.aa, align 4, !tbaa !72 ; 5 uses
  %.sroa.7261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 2 uses
  %.sroa.7261.0.copyload = load float, ptr %.sroa.7261.0..sroa_idx, align 4, !tbaa !72 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !91, !range !97, !noundef !98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.af = load <2 x float>, ptr %i.ad, align 4    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 5 uses
  %i.ai = load <2 x float>, ptr %i.ae, align 4    ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 5 uses
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ak
  %shift566 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop567 = fmul <2 x float> %i.ah, %shift566
  %foldExtExtBinop569 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop567
  %i.al = shufflevector <2 x float> %foldExtExtBinop569, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.am = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.aq = fmul <2 x float> %i.am, %i.ap           ; 2 uses
  %i.ar = fmul <2 x float> %i.af, %i.ai           ; 2 uses
  %shift571 = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop572 = fadd <2 x float> %i.ar, %shift571
  %foldExtExtBinop574 = fmul <2 x float> %i.ah, %i.ak
  %foldExtExtBinop576 = fadd <2 x float> %foldExtExtBinop574, %foldExtExtBinop572
  %i.as = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.at = fmul <2 x float> %i.as, %i.ai
  %i.au = fmul <2 x float> %i.af, %i.an
  %i.av = fsub <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> %i.aw, float -0.000000e+00, i64 3
  %i.ay = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ba = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.al, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = fadd <4 x float> %i.az, %i.bc
  %i.be = shufflevector <2 x float> %i.af, <2 x float> %i.ah, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.bf = insertelement <4 x float> %i.be, float 0.000000e+00, i64 3
  %i.bg = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bh = insertelement <4 x float> %i.bg, float 1.000000e+00, i64 3
  %i.bi = fmul <4 x float> %i.bf, %i.bh
  %i.bj = fadd <4 x float> %i.bi, %i.bd           ; 11 uses
  %i.bk = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.aq, <2 x i32> <i32 3, i32 1>
  %i.bl = insertelement <2 x float> %foldExtExtBinop576, float 0.000000e+00, i64 1
  %i.bm = fsub <2 x float> %i.bk, %i.bl           ; 3 uses
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bq = load <2 x float>, ptr %i.bo, align 4    ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.bs = load <2 x float>, ptr %i.br, align 4    ; 5 uses
  %i.bt = load <2 x float>, ptr %i.bp, align 4    ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bv = load <2 x float>, ptr %i.bu, align 4    ; 4 uses
  %i.bw = shufflevector <2 x float> %i.bq, <2 x float> %i.bs, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.by = fmul <2 x float> %i.bw, %i.bx
  %i.bz = shufflevector <2 x float> %i.bs, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.ca = shufflevector <2 x float> %i.bt, <2 x float> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.cb = fmul <2 x float> %i.bz, %i.ca
  %i.cc = fsub <2 x float> %i.by, %i.cb
  %i.cd = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x float> %i.cd, %i.bt
  %i.cf = fadd <2 x float> %i.ce, %i.cc
  %i.cg = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ch = fmul <2 x float> %i.bq, %i.cg
  %i.ci = fadd <2 x float> %i.ch, %i.cf           ; 3 uses
  %i.cj = fmul <2 x float> %i.bs, %i.cg           ; 2 uses
  %i.ck = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.ck, %i.cl           ; 2 uses
  %i.cn = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.co = fmul <2 x float> %i.bq, %i.cn           ; 2 uses
  %i.cp = fsub <2 x float> %i.co, %i.cm
  %i.cq = fadd <2 x float> %i.co, %i.cm
  %i.cr = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3>
  %i.cs = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.cs, %i.ct
  %i.cv = fadd <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = fadd <2 x float> %i.cj, %i.cv
  %i.cx = fsub <2 x float> %i.cj, %i.cv
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> %i.cx, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.cz = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.da = shufflevector <4 x float> %i.bj, <4 x float> %i.cz, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.db = shufflevector <2 x float> %i.ci, <2 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dc = fmul <4 x float> %i.da, %i.db           ; 4 uses
  %shift578 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop579 = fadd <4 x float> %i.dc, %shift578
  %shift581 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop582 = fadd <4 x float> %shift581, %foldExtExtBinop579
  %shift584 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop585 = fadd <4 x float> %shift584, %foldExtExtBinop582
  %i.dd = extractelement <4 x float> %foldExtExtBinop585, i64 0
  %i.de = fcmp olt float %i.dd, 0.000000e+00      ; 2 uses
  %i.df = fneg <2 x float> %i.ci
  %i.dg = fneg <2 x float> %i.cy
  %.sroa.0244.0 = select i1 %i.de, <2 x float> %i.df, <2 x float> %i.ci ; 4 uses
  %.sroa.7247.0 = select i1 %i.de, <2 x float> %i.dg, <2 x float> %i.cy ; 6 uses
  %.sroa.433.8.vec.extract.i329 = extractelement <2 x float> %.sroa.7247.0, i64 0
  %.sroa.433.12.vec.extract.i336 = extractelement <2 x float> %.sroa.7247.0, i64 1
  %i.dh = extractelement <2 x float> %i.bm, i64 0
  %i.di = fmul float %i.dh, %.sroa.433.12.vec.extract.i336
  %i.dj = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.dk = fmul <2 x float> %i.dj, %.sroa.0244.0   ; 2 uses
  %shift587 = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop588 = fadd <2 x float> %i.dk, %shift587
  %i.dl = extractelement <2 x float> %foldExtExtBinop588, i64 0
  %i.dm = extractelement <4 x float> %i.bj, i64 1
  %i.dn = fmul float %i.dm, %.sroa.433.8.vec.extract.i329
  %i.do = fadd float %i.dn, %i.dl
  %i.dp = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7> ; 2 uses
  %i.dq = shufflevector <2 x float> %.sroa.7247.0, <2 x float> %.sroa.0244.0, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dr = insertelement <4 x float> %i.dq, float 1.000000e+00, i64 3
  %i.ds = fmul <4 x float> %i.dp, %i.dr
  %i.dt = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 3 uses
  %i.du = shufflevector <2 x float> %.sroa.0244.0, <2 x float> %.sroa.7247.0, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.dv = insertelement <4 x float> %i.du, float 1.000000e+00, i64 3
  %i.dw = fmul <4 x float> %i.dt, %i.dv
  %i.dx = fsub <4 x float> %i.ds, %i.dw
  %i.dy = shufflevector <2 x float> %.sroa.0244.0, <2 x float> %.sroa.7247.0, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float 1.000000e+00, i64 3
  %i.ea = fmul <4 x float> %i.bn, %i.dz
  %i.eb = fadd <4 x float> %i.ea, %i.dx
  %i.ec = shufflevector <2 x float> %.sroa.7247.0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ed = insertelement <4 x float> %i.ec, float 1.000000e+00, i64 3
  %i.ee = fmul <4 x float> %i.bj, %i.ed
  %i.ef = fsub <4 x float> %i.eb, %i.ee           ; 5 uses
  %.scalar = fadd float %i.di, %i.do
  %i.eg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ei = icmp eq i8 %i.ac, 0
  br i1 %i.ei, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !127 ; 2 uses
  %i.el = fcmp ogt float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.en = load float, ptr %i.em, align 4, !tbaa !128 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !129
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.er = load float, ptr %i.eq, align 4, !tbaa !130
  %i.es = fmul <4 x float> %i.eh, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.et = fmul <4 x float> %i.ef, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.eu = shufflevector <4 x float> %i.ef, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.ev = fmul <4 x float> %i.eu, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ew = fmul <4 x float> %i.ef, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.ex = fmul <4 x float> %i.eu, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ey = fsub <4 x float> %i.et, %i.ev
  %i.ez = fadd <4 x float> %i.es, %i.ey           ; 5 uses
  %shift590 = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop591 = fmul <4 x float> %shift590, %i.ez
  %i.fa = fmul <4 x float> %i.bj, %i.ez
  %i.fb = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %foldExtExtBinop591, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.fc = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.fd = fmul <4 x float> %i.bj, %i.fc
  %i.fe = shufflevector <4 x float> %i.fb, <4 x float> %i.fd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ff = fsub <4 x float> %i.fe, %i.fa
  %i.fg = shufflevector <4 x float> %i.ez, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fh = fmul <4 x float> %i.bn, %i.fg
  %i.fi = fadd <4 x float> %i.fh, %i.ff           ; 2 uses
  %i.fj = insertelement <4 x float> %i.bj, float 1.000000e+00, i64 3 ; 2 uses
  %i.fk = fmul <4 x float> %i.fj, %i.fi
  %i.fl = shufflevector <4 x float> %i.fi, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.fm = fmul <4 x float> %i.dt, %i.fl
  %i.fn = fsub <4 x float> %i.fk, %i.fm
  %i.fo = fmul <4 x float> %i.fn, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.fp = fadd <4 x float> %i.ez, %i.fo
  %i.fq = fmul <4 x float> %i.fp, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00> ; 13 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.fs = fsub <4 x float> %i.ew, %i.ex
  %i.ft = shufflevector <4 x float> %i.es, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.fu = fadd <4 x float> %i.ft, %i.fs           ; 4 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fw = fmul <4 x float> %i.dp, %i.fv
  %i.fx = fmul <4 x float> %i.bj, %i.fu
  %i.fy = fsub <4 x float> %i.fw, %i.fx
  %i.fz = shufflevector <4 x float> %i.fu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ga = fmul <4 x float> %i.bn, %i.fz
  %i.gb = fadd <4 x float> %i.ga, %i.fy           ; 2 uses
  %i.gc = fmul <4 x float> %i.fj, %i.gb
  %i.gd = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ge = fmul <4 x float> %i.dt, %i.gd
  %i.gf = fsub <4 x float> %i.gc, %i.ge
  %i.gg = fmul <4 x float> %i.gf, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.gh = fadd <4 x float> %i.fu, %i.gg
  %i.gi = fmul <4 x float> %i.gh, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float -0.000000e+00> ; 14 uses
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 204
  store <2 x float> %i.fr, ptr %i.gk, align 4, !tbaa !72
  %.sroa.9226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.gl = extractelement <4 x float> %i.fq, i64 2
  store float %i.gl, ptr %.sroa.9226.0..sroa_idx, align 4, !tbaa !72
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %i.gj, ptr %i.gm, align 4, !tbaa !72
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.gn = extractelement <4 x float> %i.gi, i64 2
  store float %i.gn, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !72
  %i.go = insertelement <2 x float> poison, float %.sroa.6521.0.copyload, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %.sroa.9530.0.copyload, i64 1
  %i.gq = insertelement <2 x float> poison, float %.sroa.6499.0.copyload, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %.sroa.9.0.copyload, i64 1
  %i.gs = fadd <2 x float> %i.gp, %i.gr           ; 2 uses
  %i.gt = fadd float %.sroa.12539.0.copyload, %.sroa.12.0.copyload
  %i.gu = extractelement <4 x float> %i.gi, i64 0
  %i.gv = fadd <2 x float> %i.b, %i.f             ; 2 uses
  %i.gw = fadd <2 x float> %i.c, %i.g             ; 2 uses
  %i.gx = fadd <2 x float> %i.d, %i.h             ; 2 uses
  %i.gy = shufflevector <4 x float> %i.gi, <4 x float> %i.fq, <2 x i32> <i32 0, i32 4>
  %i.gz = fmul <2 x float> %i.gv, %i.gy
  %i.ha = shufflevector <4 x float> %i.gi, <4 x float> %i.fq, <2 x i32> <i32 1, i32 5>
  %i.hb = fmul <2 x float> %i.gw, %i.ha
  %i.hc = fadd <2 x float> %i.gz, %i.hb
  %i.hd = shufflevector <4 x float> %i.gi, <4 x float> %i.fq, <2 x i32> <i32 2, i32 6>
  %i.he = fmul <2 x float> %i.gx, %i.hd
  %i.hf = fadd <2 x float> %i.he, %i.hc           ; 2 uses
  %i.hg = shufflevector <4 x float> %i.fq, <4 x float> %i.gi, <2 x i32> <i32 0, i32 4>
  %i.hh = fmul <2 x float> %i.gv, %i.hg
  %i.hi = shufflevector <4 x float> %i.fq, <4 x float> %i.gi, <2 x i32> <i32 1, i32 5>
  %i.hj = fmul <2 x float> %i.gw, %i.hi
  %i.hk = fadd <2 x float> %i.hh, %i.hj
  %i.hl = shufflevector <4 x float> %i.fq, <4 x float> %i.gi, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.hm = fmul <2 x float> %i.gx, %i.hl
  %i.hn = fadd <2 x float> %i.hm, %i.hk           ; 2 uses
  %i.ho = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hp = shufflevector <4 x float> %i.gi, <4 x float> %i.fq, <2 x i32> <i32 5, i32 0>
  %i.hq = fmul <2 x float> %i.ho, %i.hp
  %i.hr = shufflevector <4 x float> %i.fq, <4 x float> %i.gi, <2 x i32> <i32 0, i32 5>
  %i.hs = fmul <2 x float> %i.gs, %i.hr
  %i.ht = fadd <2 x float> %i.hs, %i.hq
  %i.hu = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %i.hl
  %i.hx = fadd <2 x float> %i.hw, %i.ht           ; 2 uses
  %i.hy = extractelement <2 x float> %i.hf, i64 0
  %i.hz = fmul float %i.gu, %i.hy
  %i.ia = shufflevector <4 x float> %i.gi, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ib = shufflevector <2 x float> %i.hn, <2 x float> %i.hx, <2 x i32> <i32 1, i32 3>
  %i.ic = fmul <2 x float> %i.ia, %i.ib           ; 2 uses
  %i.id = extractelement <2 x float> %i.ic, i64 0
  %i.ie = fadd float %i.hz, %i.id
  %i.if = extractelement <2 x float> %i.ic, i64 1
  %i.ig = fadd float %i.if, %i.ie                 ; 2 uses
  %i.ih = fmul <2 x float> %i.fr, %i.hf
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ij = fmul <2 x float> %i.fr, %i.hn
  %i.ik = fadd <2 x float> %i.ij, %i.ii
  %i.il = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.im = fmul <2 x float> %i.il, %i.hx
  %i.in = fadd <2 x float> %i.im, %i.ik           ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ip = load float, ptr %i.io, align 8, !tbaa !96
  %i.iq = fmul float %i.ek, %i.ip                 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 4 uses
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.ir, align 4, !tbaa !72 ; 4 uses
  %i.is = insertelement <2 x float> %i.in, float %i.ig, i64 0
  %i.it = fmul <2 x float> %i.in, %i.is           ; 2 uses
  %shift593 = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop594 = fsub <2 x float> %i.it, %shift593
  %i.iu = extractelement <2 x float> %foldExtExtBinop594, i64 0 ; 2 uses
  %i.iv = fcmp ogt float %i.iu, f0x057A0000
  br i1 %i.iv, label %bb.h, label %b3Solve2.exit

bb.h:                                             ; preds = %bb.g
  %i.iw = shufflevector <2 x float> %.sroa.0258.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ix = insertelement <4 x float> %i.iw, float %.sroa.7261.0.copyload, i64 2
  %i.iy = insertelement <4 x float> %i.ix, float %i.en, i64 3
  %i.iz = shufflevector <2 x float> %.sroa.0264.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ja = insertelement <4 x float> %i.iz, float 0.000000e+00, i64 3
  %i.jb = insertelement <4 x float> %i.ja, float %.sroa.7267.0.copyload, i64 2
  %i.jc = fsub <4 x float> %i.iy, %i.jb           ; 2 uses
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.je = insertelement <4 x float> %i.gi, float %i.en, i64 3
  %i.jf = fmul <4 x float> %i.jd, %i.je           ; 4 uses
  %i.jg = shufflevector <4 x float> %i.fq, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.jh = fmul <4 x float> %i.jg, %i.jc           ; 4 uses
  %i.ji = fdiv float 1.000000e+00, %i.iu          ; 4 uses
  %i.jj = fmul float %i.ig, %i.ji
  %i.jk = extractelement <2 x float> %i.in, i64 1
  %i.jl = fmul float %i.jk, %i.ji
  %i.jm = fneg float %i.ji
  %i.jn = shufflevector <4 x float> %i.jf, <4 x float> %i.jh, <2 x i32> <i32 0, i32 4>
  %i.jo = shufflevector <4 x float> %i.jf, <4 x float> %i.jh, <2 x i32> <i32 1, i32 5>
  %i.jp = fadd <2 x float> %i.jn, %i.jo
  %i.jq = shufflevector <4 x float> %i.jf, <4 x float> %i.jh, <2 x i32> <i32 2, i32 6>
  %i.jr = fadd <2 x float> %i.jq, %i.jp
  %i.js = shufflevector <4 x float> %i.jf, <4 x float> %i.jh, <2 x i32> <i32 3, i32 7>
  %i.jt = fadd <2 x float> %i.jr, %i.js           ; 3 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 1
  %i.jv = fmul float %i.jj, %i.ju
  %i.jw = extractelement <2 x float> %i.jt, i64 0
  %i.jx = fmul float %i.jl, %i.jw
  %i.jy = fsub float %i.jv, %i.jx
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.jz = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %i.jm, i64 1
  %i.kb = fmul <2 x float> %i.in, %i.ka
  %i.kc = fmul <2 x float> %i.kb, %i.jt           ; 2 uses
  %shift596 = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop597 = fadd <2 x float> %shift596, %i.kc
  %.sroa.013.4.vec.insert.i = shufflevector <2 x float> %.sroa.013.0.vec.insert.i, <2 x float> %foldExtExtBinop597, <2 x i32> <i32 0, i32 2>
  br label %b3Solve2.exit

b3Solve2.exit:                                    ; preds = %bb.g, %bb.h
  %.sroa.013.0.i = phi <2 x float> [ %.sroa.013.4.vec.insert.i, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.kd = fneg float %i.ep
  %.sroa.058.4.vec.extract = extractelement <2 x float> %.sroa.058.0.copyload, i64 1
  %i.ke = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = fmul <2 x float> %.sroa.013.0.i, %i.kf
  %i.kh = insertelement <2 x float> poison, float %i.er, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x float> %i.ki, %.sroa.058.0.copyload
  %i.kk = fsub <2 x float> %i.kg, %i.kj
  %i.kl = fadd <2 x float> %.sroa.058.0.copyload, %i.kk ; 6 uses
  store <2 x float> %i.kl, ptr %i.ir, align 4, !tbaa !72
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %i.kl, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %i.kl, i64 1
  %i.km = fmul <2 x float> %i.kl, %i.kl
  %i.kn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.km) ; 2 uses
  %i.ko = fmul float %i.iq, %i.iq
  %i.kp = fcmp ogt float %i.kn, %i.ko
  br i1 %i.kp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %b3Solve2.exit
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.kn)
  %i.kq = fdiv float %i.iq, %sqrt.i               ; 2 uses
  %i.kr = fmul float %i.kq, %.sroa.01.0.vec.extract.i.i
  %i.ks = extractelement <2 x float> %i.kl, i64 1
  %i.kt = fmul float %i.ks, %i.kq
  store float %i.kr, ptr %i.ir, align 4, !tbaa !72
  store float %i.kt, ptr %.sroa.247.0..sroa_idx, align 4, !tbaa !72
  %.pre = load <2 x float>, ptr %i.ir, align 4    ; 2 uses
  %.pre558 = extractelement <2 x float> %.pre, i64 0
  %.pre559 = extractelement <2 x float> %.pre, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %b3Solve2.exit
  %.sroa.01.4.vec.extract.i441.pre-phi = phi float [ %.pre559, %bb.i ], [ %.sroa.01.4.vec.extract.i.i, %b3Solve2.exit ]
  %.sroa.01.0.vec.extract.i439.pre-phi = phi float [ %.pre558, %bb.i ], [ %.sroa.01.0.vec.extract.i.i, %b3Solve2.exit ]
  %i.ku = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.01.0.vec.extract.i439.pre-phi, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kw = shufflevector <2 x float> %.sroa.058.0.copyload, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.kx = fsub <4 x float> %i.kv, %i.kw
  %i.ky = fsub float %.sroa.01.4.vec.extract.i441.pre-phi, %.sroa.058.4.vec.extract
  %i.kz = fmul <4 x float> %i.fq, %i.kx
  %i.la = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ky, i64 0
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lc = fmul <4 x float> %i.gi, %i.lb
  %i.ld = fadd <4 x float> %i.kz, %i.lc           ; 7 uses
  %i.le = extractelement <4 x float> %i.ld, i64 0 ; 3 uses
  %i.lf = extractelement <4 x float> %i.ld, i64 1 ; 3 uses
  %i.lg = extractelement <4 x float> %i.ld, i64 2 ; 3 uses
  %i.lh = fmul float %.sroa.6521.0.copyload, %i.le
  %i.li = fmul float %.sroa.9530.0.copyload, %i.lf
  %i.lj = fadd float %i.lh, %i.li
  %i.lk = fmul float %.sroa.12539.0.copyload, %i.lg
  %i.ll = fadd float %i.lk, %i.lj
  %i.lm = shufflevector <4 x float> %i.ld, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x float> %i.b, %i.lm
  %i.lo = shufflevector <4 x float> %i.ld, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lp = fmul <2 x float> %i.c, %i.lo
  %i.lq = fadd <2 x float> %i.ln, %i.lp
  %i.lr = shufflevector <4 x float> %i.ld, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ls = fmul <2 x float> %i.d, %i.lr
  %i.lt = fadd <2 x float> %i.ls, %i.lq
  %i.lu = fsub <2 x float> %.sroa.0264.0.copyload, %i.lt
  %i.lv = fsub float %.sroa.7267.0.copyload, %i.ll
  %i.lw = extractelement <2 x float> %i.f, i64 0
  %i.lx = fmul float %i.lw, %i.le
  %i.ly = extractelement <2 x float> %i.g, i64 0
  %i.lz = fmul float %i.ly, %i.lf
  %i.ma = extractelement <2 x float> %i.h, i64 0
  %i.mb = fmul float %i.ma, %i.lg
  %i.mc = shufflevector <2 x float> %.sroa.0258.0.copyload, <2 x float> %i.h, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.md = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.mc, <4 x float> %i.md, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.mf = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mg = shufflevector <4 x float> %i.me, <4 x float> %i.mf, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.mh = fmul <4 x float> %i.mg, %i.ld           ; 3 uses
  %i.mi = fmul float %.sroa.6499.0.copyload, %i.le
  %i.mj = fmul float %.sroa.9.0.copyload, %i.lf
  %i.mk = fadd float %i.mi, %i.mj
  %i.ml = fmul float %.sroa.12.0.copyload, %i.lg
  %i.mm = fadd float %i.ml, %i.mk
  %i.mn = shufflevector <4 x float> %i.mh, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mo = insertelement <2 x float> %i.mn, float %i.lx, i64 0
  %i.mp = shufflevector <4 x float> %i.mh, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.mq = insertelement <2 x float> %i.mp, float %i.lz, i64 0
  %i.mr = fadd <2 x float> %i.mo, %i.mq
  %i.ms = shufflevector <4 x float> %i.mh, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.mt = insertelement <2 x float> %i.ms, float %i.mb, i64 0
  %i.mu = fadd <2 x float> %i.mt, %i.mr
  %i.mv = fadd <2 x float> %.sroa.0258.0.copyload, %i.mu
  %i.mw = fadd float %.sroa.7261.0.copyload, %i.mm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.e
  %.sroa.0258.0 = phi <2 x float> [ %i.mv, %bb.j ], [ %.sroa.0258.0.copyload, %bb.f ], [ %.sroa.0258.0.copyload, %bb.e ]
  %.sroa.7261.0 = phi float [ %i.mw, %bb.j ], [ %.sroa.7261.0.copyload, %bb.f ], [ %.sroa.7261.0.copyload, %bb.e ]
  %.sroa.0264.0 = phi <2 x float> [ %i.lu, %bb.j ], [ %.sroa.0264.0.copyload, %bb.f ], [ %.sroa.0264.0.copyload, %bb.e ]
  %.sroa.7267.0 = phi float [ %i.lv, %bb.j ], [ %.sroa.7267.0.copyload, %bb.f ], [ %.sroa.7267.0.copyload, %bb.e ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !101
  %i.mz = and i32 %i.my, 4096
  %.not = icmp eq i32 %i.mz, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %.sroa.0264.0, ptr %i.z, align 4, !tbaa !72
  store float %.sroa.7267.0, ptr %.sroa.7267.0..sroa_idx, align 4, !tbaa !72
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.na = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !101
  %i.nc = and i32 %i.nb, 4096
  %.not308 = icmp eq i32 %i.nc, 0
  br i1 %.not308, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store <2 x float> %.sroa.0258.0, ptr %i.aa, align 4, !tbaa !72
  store float %.sroa.7261.0, ptr %.sroa.7261.0..sroa_idx, align 4, !tbaa !72
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawParallelJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, float noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = fmul float %4, 1.000000e-01              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0170.0.copyload = load <2 x float>, ptr %i.b, align 4, !tbaa !72 ; 4 uses
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4171.0.copyload = load float, ptr %.sroa.4171.0..sroa_idx, align 4, !tbaa !72 ; 4 uses
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5172.0.copyload = load <2 x float>, ptr %.sroa.5172.0..sroa_idx, align 4, !tbaa !72 ; 6 uses
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6173.0.copyload = load <2 x float>, ptr %.sroa.6173.0..sroa_idx, align 4, !tbaa !72 ; 6 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5161.0.copyload = load float, ptr %.sroa.5161.0..sroa_idx, align 8
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6162.0.copyload = load <2 x float>, ptr %.sroa.6162.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8164.0.copyload = load <2 x float>, ptr %.sroa.8164.0..sroa_idx, align 4 ; 7 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.6162.0.copyload, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5172.0.copyload, i64 1 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.5172.0.copyload, %.sroa.8164.0.copyload
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6162.0.copyload, i64 0
  %foldExtExtBinop175 = fmul <2 x float> %.sroa.6173.0.copyload, %.sroa.6162.0.copyload
  %foldExtExtBinop177 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop175
  %i.c = extractelement <2 x float> %foldExtExtBinop177, i64 0
  %.sroa.443.12.vec.extract.i = extractelement <2 x float> %.sroa.8164.0.copyload, i64 1 ; 2 uses
  %i.d = fmul float %.sroa.03.4.vec.extract.i.i, %.sroa.443.12.vec.extract.i
  %i.e = fadd float %i.d, %i.c
  %.sroa.433.12.vec.extract.i = extractelement <2 x float> %.sroa.6173.0.copyload, i64 1 ; 2 uses
  %i.f = fmul float %.sroa.433.12.vec.extract.i, %.sroa.011.4.vec.extract.i.i
  %foldExtExtBinop179 = fmul <2 x float> %.sroa.5172.0.copyload, %.sroa.6162.0.copyload
  %i.g = extractelement <2 x float> %foldExtExtBinop179, i64 0
  %i.h = fmul float %.sroa.03.4.vec.extract.i.i, %.sroa.011.4.vec.extract.i.i
  %i.i = fadd float %i.g, %i.h
  %foldExtExtBinop181 = fmul <2 x float> %.sroa.6173.0.copyload, %.sroa.8164.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop181, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.m = shufflevector <2 x float> %.sroa.5172.0.copyload, <2 x float> %.sroa.6173.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.n = fmul <2 x float> %i.m, %.sroa.6162.0.copyload
  %i.o = shufflevector <2 x float> %.sroa.6162.0.copyload, <2 x float> %.sroa.8164.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.p = fmul <2 x float> %.sroa.5172.0.copyload, %i.o
  %i.q = fsub <2 x float> %i.n, %i.p
  %i.r = shufflevector <2 x float> %.sroa.6173.0.copyload, <2 x float> %.sroa.5172.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.s = shufflevector <2 x float> %.sroa.8164.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.t = fmul <2 x float> %i.r, %i.s
  %i.u = fadd <2 x float> %i.q, %i.t
  %i.v = shufflevector <2 x float> %.sroa.6173.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = shufflevector <2 x float> %.sroa.8164.0.copyload, <2 x float> %.sroa.6162.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.x = fmul <2 x float> %i.v, %i.w
  %i.y = fadd <2 x float> %i.x, %i.u              ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 1   ; 4 uses
  %i.aa = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ab = load <2 x float>, ptr %2, align 8
  %i.ac = fadd float %i.f, %i.e                   ; 4 uses
  %i.ad = fmul float %.sroa.433.12.vec.extract.i, %.sroa.443.12.vec.extract.i
  %i.ae = fadd float %i.j, %i.i
  %i.af = fsub float %i.ad, %i.ae                 ; 2 uses
  %foldExtExtBinop183 = fmul <2 x float> %.sroa.0170.0.copyload, %.sroa.8164.0.copyload
  %i.ag = extractelement <2 x float> %foldExtExtBinop183, i64 0
  %i.ah = fmul float %.sroa.4171.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.ai = fsub float %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %.sroa.0170.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %.sroa.4171.0.copyload, i64 1 ; 2 uses
  %i.al = fmul <2 x float> %i.ak, %.sroa.6162.0.copyload
  %i.am = fmul <2 x float> %.sroa.0170.0.copyload, %i.o
  %i.an = fsub <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = insertelement <2 x float> %i.aj, float %.sroa.4171.0.copyload, i64 0
  %i.ap = fmul <2 x float> %i.ao, %i.s
  %i.aq = fmul <2 x float> %i.ak, %i.s
  %i.ar = fadd <2 x float> %i.ap, %i.an           ; 2 uses
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x float> %i.as, float %i.ai, i64 0
  %i.au = fadd <2 x float> %i.aq, %i.at           ; 2 uses
  %i.av = fmul <2 x float> %i.o, %i.ar
  %i.aw = fmul <2 x float> %i.w, %i.au
  %i.ax = fsub <2 x float> %i.av, %i.aw
  %foldExtExtBinop185 = fmul <2 x float> %.sroa.6162.0.copyload, %i.au
  %foldExtExtBinop187 = fmul <2 x float> %.sroa.6162.0.copyload, %i.ar
  %shift = shufflevector <2 x float> %foldExtExtBinop187, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop189 = fsub <2 x float> %foldExtExtBinop185, %shift
  %i.ay = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.az = fmul <2 x float> %i.ax, splat (float 2.000000e+00)
  %i.ba = fadd <2 x float> %.sroa.0170.0.copyload, %i.az
  %i.bb = fmul float %i.ay, 2.000000e+00
  %i.bc = fadd float %.sroa.4171.0.copyload, %i.bb
  %i.bd = fadd <2 x float> %i.ab, %i.ba           ; 2 uses
  %i.be = fadd float %.sroa.5161.0.copyload, %i.bc ; 2 uses
  %i.bf = extractelement <2 x float> %i.y, i64 0
  %i.bg = fmul float %i.bf, 0.000000e+00          ; 2 uses
  %i.bh = fsub float %i.ac, %i.bg
  %i.bi = fsub float %i.bg, %i.z
  %i.bj = fmul float %i.z, 0.000000e+00
  %i.bk = fmul float %i.ac, 0.000000e+00
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = fmul float %i.af, 0.000000e+00          ; 2 uses
  %i.bn = fadd float %i.bm, %i.bh                 ; 2 uses
  %i.bo = fadd float %i.bm, %i.bi                 ; 2 uses
  %i.bp = fadd float %i.af, %i.bl                 ; 2 uses
  %i.bq = fmul float %i.ac, %i.bp
  %i.br = fmul float %i.aa, %i.bo
  %i.bs = fsub float %i.bq, %i.br
  %i.bt = fmul float %i.aa, %i.bn
  %i.bu = fmul float %i.z, %i.bp
  %i.bv = fsub float %i.bt, %i.bu
  %i.bw = fmul float %i.z, %i.bo
  %i.bx = fmul float %i.ac, %i.bn
  %i.by = fsub float %i.bw, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bv, i64 1
  %i.cb = fmul <2 x float> %i.ca, splat (float 2.000000e+00)
  %i.cc = fadd <2 x float> %i.cb, zeroinitializer
  %i.cd = fmul float %i.by, 2.000000e+00
  %i.ce = fadd float %i.cd, 1.000000e+00
  %i.cf = insertelement <2 x float> poison, float %i.a, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x float> %i.cg, %i.cc
  %i.ci = fmul float %i.a, %i.ce
  %i.cj = fadd <2 x float> %i.bd, %i.ch
  %i.ck = fadd float %i.be, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !134
  tail call void %i.l(<2 x float> %i.bd, float %i.be, <2 x float> %i.cj, float %i.ck, i32 noundef 32768, ptr noundef %i.cm) #8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0155.0.copyload = load <2 x float>, ptr %i.cn, align 4, !tbaa !72 ; 4 uses
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.4156.0.copyload = load float, ptr %.sroa.4156.0..sroa_idx, align 4, !tbaa !72 ; 4 uses
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5157.0.copyload = load <2 x float>, ptr %.sroa.5157.0..sroa_idx, align 4, !tbaa !72 ; 6 uses
  %.sroa.6158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6158.0.copyload = load <2 x float>, ptr %.sroa.6158.0..sroa_idx, align 4, !tbaa !72 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6148.0.copyload = load <2 x float>, ptr %.sroa.6148.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 7 uses
  %.sroa.011.4.vec.extract.i.i95 = extractelement <2 x float> %.sroa.6148.0.copyload, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i.i96 = extractelement <2 x float> %.sroa.5157.0.copyload, i64 1 ; 2 uses
  %foldExtExtBinop191 = fmul <2 x float> %.sroa.5157.0.copyload, %.sroa.8.0.copyload
  %.sroa.011.0.vec.extract.i.i98 = extractelement <2 x float> %.sroa.6148.0.copyload, i64 0
  %foldExtExtBinop193 = fmul <2 x float> %.sroa.6158.0.copyload, %.sroa.6148.0.copyload
  %foldExtExtBinop195 = fsub <2 x float> %foldExtExtBinop191, %foldExtExtBinop193
  %i.co = extractelement <2 x float> %foldExtExtBinop195, i64 0
  %.sroa.443.12.vec.extract.i99 = extractelement <2 x float> %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.cp = fmul float %.sroa.03.4.vec.extract.i.i96, %.sroa.443.12.vec.extract.i99
  %i.cq = fadd float %i.cp, %i.co
  %.sroa.433.12.vec.extract.i100 = extractelement <2 x float> %.sroa.6158.0.copyload, i64 1 ; 2 uses
  %i.cr = fmul float %.sroa.433.12.vec.extract.i100, %.sroa.011.4.vec.extract.i.i95
  %foldExtExtBinop197 = fmul <2 x float> %.sroa.5157.0.copyload, %.sroa.6148.0.copyload
  %i.cs = extractelement <2 x float> %foldExtExtBinop197, i64 0
  %i.ct = fmul float %.sroa.03.4.vec.extract.i.i96, %.sroa.011.4.vec.extract.i.i95
  %i.cu = fadd float %i.cs, %i.ct
  %foldExtExtBinop199 = fmul <2 x float> %.sroa.6158.0.copyload, %.sroa.8.0.copyload
  %i.cv = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.cw = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.cx = shufflevector <2 x float> %.sroa.5157.0.copyload, <2 x float> %.sroa.6158.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.cy = fmul <2 x float> %i.cx, %.sroa.6148.0.copyload
  %i.cz = shufflevector <2 x float> %.sroa.6148.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.da = fmul <2 x float> %.sroa.5157.0.copyload, %i.cz
  %i.db = fsub <2 x float> %i.cy, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.6158.0.copyload, <2 x float> %.sroa.5157.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = fadd <2 x float> %i.db, %i.de
  %i.dg = shufflevector <2 x float> %.sroa.6158.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6148.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = fadd <2 x float> %i.di, %i.df           ; 3 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 1 ; 4 uses
  %i.dl = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.dm = load <2 x float>, ptr %3, align 8
  %i.dn = fadd float %i.cr, %i.cq                 ; 4 uses
  %i.do = fmul float %.sroa.433.12.vec.extract.i100, %.sroa.443.12.vec.extract.i99
  %i.dp = fadd float %i.cv, %i.cu
  %i.dq = fsub float %i.do, %i.dp                 ; 2 uses
  %foldExtExtBinop201 = fmul <2 x float> %.sroa.0155.0.copyload, %.sroa.8.0.copyload
  %i.dr = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %i.ds = fmul float %.sroa.4156.0.copyload, %.sroa.011.0.vec.extract.i.i98
  %i.dt = fsub float %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %.sroa.0155.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dv = insertelement <2 x float> %i.du, float %.sroa.4156.0.copyload, i64 1 ; 2 uses
  %i.dw = fmul <2 x float> %i.dv, %.sroa.6148.0.copyload
  %i.dx = fmul <2 x float> %.sroa.0155.0.copyload, %i.cz
  %i.dy = fsub <2 x float> %i.dw, %i.dx           ; 2 uses
  %i.dz = insertelement <2 x float> %i.du, float %.sroa.4156.0.copyload, i64 0
  %i.ea = fmul <2 x float> %i.dz, %i.dd
  %i.eb = fmul <2 x float> %i.dv, %i.dd
  %i.ec = fadd <2 x float> %i.ea, %i.dy           ; 2 uses
  %i.ed = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ee = insertelement <2 x float> %i.ed, float %i.dt, i64 0
  %i.ef = fadd <2 x float> %i.eb, %i.ee           ; 2 uses
  %i.eg = fmul <2 x float> %i.cz, %i.ec
  %i.eh = fmul <2 x float> %i.dh, %i.ef
  %i.ei = fsub <2 x float> %i.eg, %i.eh
  %foldExtExtBinop203 = fmul <2 x float> %.sroa.6148.0.copyload, %i.ef
  %foldExtExtBinop205 = fmul <2 x float> %.sroa.6148.0.copyload, %i.ec
  %shift207 = shufflevector <2 x float> %foldExtExtBinop205, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop208 = fsub <2 x float> %foldExtExtBinop203, %shift207
  %i.ej = extractelement <2 x float> %foldExtExtBinop208, i64 0
  %i.ek = fmul <2 x float> %i.ei, splat (float 2.000000e+00)
  %i.el = fadd <2 x float> %.sroa.0155.0.copyload, %i.ek
  %i.em = fmul float %i.ej, 2.000000e+00
  %i.en = fadd float %.sroa.4156.0.copyload, %i.em
  %i.eo = fadd <2 x float> %i.dm, %i.el           ; 2 uses
  %i.ep = fadd float %.sroa.5.0.copyload, %i.en   ; 2 uses
  %i.eq = extractelement <2 x float> %i.dj, i64 0
  %i.er = fmul float %i.eq, 0.000000e+00          ; 2 uses
  %i.es = fsub float %i.dn, %i.er
  %i.et = fsub float %i.er, %i.dk
  %i.eu = fmul float %i.dk, 0.000000e+00
  %i.ev = fmul float %i.dn, 0.000000e+00
  %i.ew = fsub float %i.eu, %i.ev
  %i.ex = fmul float %i.dq, 0.000000e+00          ; 2 uses
  %i.ey = fadd float %i.ex, %i.es                 ; 2 uses
  %i.ez = fadd float %i.ex, %i.et                 ; 2 uses
  %i.fa = fadd float %i.dq, %i.ew                 ; 2 uses
  %i.fb = fmul float %i.dn, %i.fa
  %i.fc = fmul float %i.dl, %i.ez
  %i.fd = fsub float %i.fb, %i.fc
  %i.fe = fmul float %i.dl, %i.ey
  %i.ff = fmul float %i.dk, %i.fa
  %i.fg = fsub float %i.fe, %i.ff
  %i.fh = fmul float %i.dk, %i.ez
  %i.fi = fmul float %i.dn, %i.ey
  %i.fj = fsub float %i.fh, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fg, i64 1
  %i.fm = fmul <2 x float> %i.fl, splat (float 2.000000e+00)
  %i.fn = fadd <2 x float> %i.fm, zeroinitializer
  %i.fo = fmul float %i.fj, 2.000000e+00
  %i.fp = fadd float %i.fo, 1.000000e+00
  %i.fq = fmul <2 x float> %i.cg, %i.fn
  %i.fr = fmul float %i.a, %i.fp
  %i.fs = fadd <2 x float> %i.eo, %i.fq
  %i.ft = fadd float %i.ep, %i.fr
  %i.fu = load ptr, ptr %i.cl, align 8, !tbaa !134
  tail call void %i.cw(<2 x float> %i.eo, float %i.ep, <2 x float> %i.fs, float %i.ft, i32 noundef 255, ptr noundef %i.fu) #8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!"p1 _ZTS7b3Shape", !8, i64 0}
!35 = !{!"b3DynamicArray_b3Shape", !34, i64 0, !5, i64 8, !5, i64 12}
!36 = !{!"p1 _ZTS11b3NameEntry", !8, i64 0}
!37 = !{!"b3DynamicArray_b3NameEntry", !36, i64 0, !5, i64 8, !5, i64 12}
!38 = !{!"b3NameCache", !37, i64 0, !8, i64 16}
!39 = !{!"p1 _ZTS8b3Sensor", !8, i64 0}
!40 = !{!"b3DynamicArray_b3Sensor", !39, i64 0, !5, i64 8, !5, i64 12}
!41 = !{!"p1 _ZTS13b3TaskContext", !8, i64 0}
!42 = !{!"b3DynamicArray_b3TaskContext", !41, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTS19b3SensorTaskContext", !8, i64 0}
!44 = !{!"b3DynamicArray_b3SensorTaskContext", !43, i64 0, !5, i64 8, !5, i64 12}
!45 = !{!"p1 _ZTS15b3BodyMoveEvent", !8, i64 0}
!46 = !{!"b3DynamicArray_b3BodyMoveEvent", !45, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !8, i64 0}
!48 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !47, i64 0, !5, i64 8, !5, i64 12}
!49 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !8, i64 0}
!50 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !49, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS17b3ContactHitEvent", !8, i64 0}
!52 = !{!"b3DynamicArray_b3ContactHitEvent", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 _ZTS12b3JointEvent", !8, i64 0}
!54 = !{!"b3DynamicArray_b3JointEvent", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"p1 long", !8, i64 0}
!56 = !{!"b3BitSet", !55, i64 0, !5, i64 8, !5, i64 12}
!57 = !{!"long", !4, i64 0}
!58 = !{!"float", !4, i64 0}
!59 = !{!"b3Vec3", !58, i64 0, !58, i64 4, !58, i64 8}
!60 = !{!"short", !4, i64 0}
!61 = !{!"b3Profile", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !58, i64 84, !58, i64 88}
!62 = !{!"b3Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!63 = !{!"p1 _ZTS11b3Scheduler", !8, i64 0}
!64 = !{!"p1 _ZTS11b3Recording", !8, i64 0}
!65 = !{!"_Bool", !4, i64 0}
!66 = !{!"b3World", !10, i64 0, !18, i64 800, !19, i64 1144, !21, i64 3832, !22, i64 3848, !23, i64 3856, !25, i64 3880, !23, i64 3896, !27, i64 3920, !23, i64 3936, !29, i64 3960, !23, i64 3976, !31, i64 4000, !23, i64 4016, !33, i64 4040, !23, i64 4056, !35, i64 4080, !8, i64 4096, !38, i64 4104, !40, i64 4128, !42, i64 4144, !44, i64 4160, !46, i64 4176, !48, i64 4192, !50, i64 4208, !4, i64 4224, !4, i64 4256, !5, i64 4288, !52, i64 4296, !54, i64 4312, !56, i64 4328, !56, i64 4344, !56, i64 4360, !56, i64 4376, !8, i64 4392, !8, i64 4400, !8, i64 4408, !57, i64 4416, !5, i64 4424, !59, i64 4428, !58, i64 4440, !58, i64 4444, !58, i64 4448, !58, i64 4452, !58, i64 4456, !58, i64 4460, !58, i64 4464, !8, i64 4472, !8, i64 4480, !60, i64 4488, !61, i64 4492, !5, i64 4584, !5, i64 4588, !4, i64 4592, !62, i64 4624, !8, i64 4648, !8, i64 4656, !8, i64 4664, !8, i64 4672, !5, i64 4680, !8, i64 4688, !8, i64 4696, !8, i64 4704, !8, i64 4712, !63, i64 4720, !8, i64 4728, !64, i64 4736, !58, i64 4744, !58, i64 4748, !5, i64 4752, !5, i64 4756, !60, i64 4760, !65, i64 4762, !65, i64 4763, !65, i64 4764, !65, i64 4765, !65, i64 4766, !65, i64 4767}
!67 = !{!66, !64, i64 4736}
!68 = !{!"b3JointId", !5, i64 0, !60, i64 4, !60, i64 6}
!69 = !{!"", !68, i64 0, !58, i64 8}
!70 = !{!69, !58, i64 8}
!71 = !{!4, !4, i64 0}
!72 = !{!58, !58, i64 0}
!73 = !{!"b3Softness", !58, i64 0, !58, i64 4, !58, i64 8}
!74 = !{!"p1 _ZTS7b3World", !8, i64 0}
!75 = !{!"p1 _ZTS17b3ConstraintGraph", !8, i64 0}
!76 = !{!"p1 _ZTS11b3BodyState", !8, i64 0}
!77 = !{!"p1 _ZTS9b3BodySim", !8, i64 0}
!78 = !{!"p1 _ZTS23b3ContactConstraintWide", !8, i64 0}
!79 = !{!"p1 _ZTS17b3WidePrepareSpan", !8, i64 0}
!80 = !{!"p1 _ZTS20b3ManifoldConstraint", !8, i64 0}
!81 = !{!"p1 _ZTS19b3ContactConstraint", !8, i64 0}
!82 = !{!"p1 _ZTS20b3ContactPrepareSpan", !8, i64 0}
!83 = !{!"p1 _ZTS18b3JointPrepareSpan", !8, i64 0}
!84 = !{!"p1 _ZTS13b3SolverStage", !8, i64 0}
!85 = !{!"b3AtomicU32", !5, i64 0}
!86 = !{!"b3StepContext", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !5, i64 16, !73, i64 20, !73, i64 32, !58, i64 44, !58, i64 48, !74, i64 56, !75, i64 64, !76, i64 72, !77, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !15, i64 112, !11, i64 120, !78, i64 128, !79, i64 136, !5, i64 144, !80, i64 152, !81, i64 160, !82, i64 168, !82, i64 176, !83, i64 184, !5, i64 192, !5, i64 196, !84, i64 200, !5, i64 208, !65, i64 212, !4, i64 213, !85, i64 280, !4, i64 284, !15, i64 348, !4, i64 352}
!87 = !{!"b3Quat", !59, i64 0, !58, i64 12}
!88 = !{!"b3Transform", !59, i64 0, !87, i64 12}
!89 = !{!"b3Matrix3", !59, i64 0, !59, i64 12, !59, i64 24}
!90 = !{!"b3JointSim", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !88, i64 16, !88, i64 44, !58, i64 72, !58, i64 76, !89, i64 80, !89, i64 116, !58, i64 152, !58, i64 156, !73, i64 160, !58, i64 172, !58, i64 176, !65, i64 180, !4, i64 184}
!91 = !{!90, !65, i64 180}
!92 = !{!"b3Vec2", !58, i64 0, !58, i64 4}
!93 = !{!"b3ParallelJoint", !58, i64 0, !58, i64 4, !58, i64 8, !92, i64 12, !59, i64 20, !59, i64 32, !87, i64 44, !87, i64 60, !5, i64 76, !5, i64 80, !73, i64 84}
!94 = !{!93, !5, i64 76}
!95 = !{!93, !5, i64 80}
!96 = !{!86, !58, i64 8}
!97 = !{i8 0, i8 2}
!98 = !{}
!99 = !{!86, !76, i64 72}
!100 = !{!"b3BodyState", !59, i64 0, !59, i64 12, !59, i64 24, !87, i64 36, !5, i64 52}
!101 = !{!100, !5, i64 52}
!102 = !{!66, !58, i64 4744}
!103 = !{!86, !74, i64 56}
!104 = !{!66, !24, i64 3880}
!105 = !{!90, !5, i64 4}
!106 = !{!90, !5, i64 8}
!107 = !{!66, !26, i64 3920}
!108 = !{!"b3Body", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !89, i64 68, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !60, i64 124}
!109 = !{!108, !5, i64 8}
!110 = !{!108, !5, i64 12}
!111 = !{!"b3DynamicArray_b3BodySim", !77, i64 0, !5, i64 8, !5, i64 12}
!112 = !{!"b3DynamicArray_b3BodyState", !76, i64 0, !5, i64 8, !5, i64 12}
!113 = !{!"p1 _ZTS10b3JointSim", !8, i64 0}
!114 = !{!"b3DynamicArray_b3JointSim", !113, i64 0, !5, i64 8, !5, i64 12}
!115 = !{!"p1 _ZTS11b3IslandSim", !8, i64 0}
!116 = !{!"b3DynamicArray_b3IslandSim", !115, i64 0, !5, i64 8, !5, i64 12}
!117 = !{!"b3SolverSet", !111, i64 0, !112, i64 16, !114, i64 32, !12, i64 48, !116, i64 64, !5, i64 80}
!118 = !{!117, !77, i64 0}
!119 = !{!"b3BodySim", !88, i64 0, !59, i64 28, !87, i64 40, !59, i64 56, !59, i64 68, !59, i64 80, !59, i64 92, !58, i64 104, !89, i64 108, !89, i64 144, !58, i64 180, !59, i64 184, !58, i64 196, !58, i64 200, !58, i64 204, !5, i64 208, !5, i64 212}
!120 = !{!119, !58, i64 104}
!121 = !{!90, !58, i64 72}
!122 = !{!90, !58, i64 76}
!123 = !{i64 0, i64 4, !72, i64 4, i64 4, !72, i64 8, i64 4, !72, i64 12, i64 4, !72, i64 16, i64 4, !72, i64 20, i64 4, !72, i64 24, i64 4, !72, i64 28, i64 4, !72, i64 32, i64 4, !72}
!124 = !{!93, !58, i64 0}
!125 = !{!93, !58, i64 4}
!126 = !{!86, !65, i64 212}
!127 = !{!93, !58, i64 8}
!128 = !{!93, !58, i64 84}
!129 = !{!93, !58, i64 88}
!130 = !{!93, !58, i64 92}
!131 = !{!"b3AABB", !59, i64 0, !59, i64 12}
!132 = !{!"b3DebugDraw", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !131, i64 72, !58, i64 96, !58, i64 100, !65, i64 104, !65, i64 105, !65, i64 106, !65, i64 107, !65, i64 108, !65, i64 109, !65, i64 110, !65, i64 111, !65, i64 112, !65, i64 113, !65, i64 114, !65, i64 115, !65, i64 116, !65, i64 117, !8, i64 120}
!133 = !{!132, !8, i64 8}
!134 = !{!132, !8, i64 120}
end_hunk_1
