Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/capsule?download=true
inline.NumInlined: 93
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3Transform = type { %struct.b3Vec3, %struct.b3Quat }
%struct.b3Vec3 = type { float, float, float }
%struct.b3Quat = type { %struct.b3Vec3, float }
%struct.b3MassData = type { float, %struct.b3Vec3, %struct.b3Matrix3 }
%struct.b3Matrix3 = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3 }
%struct.b3AABB = type { %struct.b3Vec3, %struct.b3Vec3 }
%struct.b3DistanceInput = type { %struct.b3ShapeProxy, %struct.b3ShapeProxy, %struct.b3Transform, i8 }
%struct.b3ShapeProxy = type { ptr, i32, float }
%struct.b3SimplexCache = type { float, i16, [4 x i8], [4 x i8] }
%struct.b3DistanceOutput = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3, float, i32, i32 }
%struct.b3CastOutput = type { %struct.b3Vec3, %struct.b3Vec3, float, i32, i32, i32, i32, i8 }
%struct.b3Sphere = type { %struct.b3Vec3, float }
%struct.b3ShapeCastPairInput = type { %struct.b3ShapeProxy, %struct.b3ShapeProxy, %struct.b3Transform, %struct.b3Vec3, float, i8 }
%struct.b3SegmentDistanceResult = type { %struct.b3Vec3, float, %struct.b3Vec3, float }

@.src = private unnamed_addr constant [48 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/capsule.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const b3Capsule' (aka 'const struct b3Capsule')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 13, i32 21 }, ptr @0, i8 2, i8 3 }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 19 }, ptr @0, i8 2, i8 3 }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 71, i32 22 }, ptr @0, i8 2, i8 3 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 87, i32 41 }, ptr @0, i8 2, i8 3 }
@5 = private unnamed_addr constant { i16, i16, [55 x i8] } { i16 -1, i16 0, [55 x i8] c"'const b3ShapeProxy' (aka 'const struct b3ShapeProxy')\00" }
@6 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 88, i32 17 }, ptr @5, i8 3, i8 0 }
@b3Transform_identity = internal unnamed_addr constant %struct.b3Transform { %struct.b3Vec3 zeroinitializer, %struct.b3Quat { %struct.b3Vec3 zeroinitializer, float 1.000000e+00 } }, align 8
@7 = private unnamed_addr constant { i16, i16, [7 x i8] } { i16 0, i16 6, [7 x i8] c"'bool'\00" }
@8 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 103, i32 21 }, ptr @0, i8 2, i8 3 }
@9 = private unnamed_addr constant { i16, i16, [59 x i8] } { i16 -1, i16 0, [59 x i8] c"'const b3RayCastInput' (aka 'const struct b3RayCastInput')\00" }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 123, i32 27 }, ptr @9, i8 2, i8 3 }
@11 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 345, i32 47 }, ptr @0, i8 2, i8 3 }
@12 = private unnamed_addr constant { i16, i16, [63 x i8] } { i16 -1, i16 0, [63 x i8] c"'const b3ShapeCastInput' (aka 'const struct b3ShapeCastInput')\00" }
@13 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 346, i32 28 }, ptr @12, i8 3, i8 3 }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 350, i32 33 }, ptr @7 }
@15 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 358, i32 29 }, ptr @0, i8 2, i8 3 }
@16 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 358, i32 45 }, ptr @0, i8 2, i8 3 }
@17 = private unnamed_addr constant { i16, i16, [45 x i8] } { i16 -1, i16 0, [45 x i8] c"'b3PlaneResult' (aka 'struct b3PlaneResult')\00" }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 383, i32 2 }, ptr @17, i8 2, i8 1 }

; Function Attrs: nounwind uwtable
define void @b3ComputeCapsuleMass(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3MassData) align 4 captures(none) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 !func_sanitize !25 {
bb.a:
  %3 = alloca %struct.b3Matrix3, align 8          ; 7 uses
  %4 = alloca %struct.b3Matrix3, align 8          ; 7 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.068.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 2 uses
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.671.0.copyload = load float, ptr %.sroa.671.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !15 ; 8 uses
  %i.i = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.068.0.copyload ; 3 uses
  %i.j = fsub float %.sroa.6.0.copyload, %.sroa.671.0.copyload ; 3 uses
  %i.k = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.k, %shift
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fmul float %i.j, %i.j
  %i.n = fadd float %i.m, %i.l                    ; 3 uses
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.n) #9 ; 6 uses
  %i.o = fmul float %i.h, f0x40490FDB
  %i.p = fmul float %i.h, %i.o
  %i.q = fmul float %sqrt.i.i, %i.p
  %i.r = fmul float %2, %i.q                      ; 2 uses
  %i.s = fmul float %i.h, f0x40860A92
  %i.t = fmul float %i.h, %i.s
  %i.u = fmul float %i.h, %i.t
  %i.v = fmul float %2, %i.u                      ; 3 uses
  call void @b3CylinderInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %3, float noundef %i.r, float noundef %i.h, float noundef %sqrt.i.i) #9
  call void @b3SphereInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %4, float noundef %i.v, float noundef %i.h) #9
  %.sroa.0192.0.copyload = load float, ptr %4, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.4193.0.copyload = load float, ptr %.sroa.4193.0..sroa_idx, align 4
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.11200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.11200.0.copyload = load float, ptr %.sroa.11200.0..sroa_idx, align 8
  %.sroa.0183.0.copyload = load float, ptr %3, align 8
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4184.0.copyload = load float, ptr %.sroa.4184.0..sroa_idx, align 4
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load <4 x float>, ptr %.sroa.5194.0..sroa_idx, align 8
  %i.x = load <4 x float>, ptr %.sroa.5185.0..sroa_idx, align 8
  %.sroa.9189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load <2 x float>, ptr %.sroa.6195.0..sroa_idx, align 4 ; 2 uses
  %i.z = load <2 x float>, ptr %.sroa.9198.0..sroa_idx, align 8
  %i.aa = load <2 x float>, ptr %.sroa.6186.0..sroa_idx, align 4 ; 2 uses
  %i.ab = load <2 x float>, ptr %.sroa.9189.0..sroa_idx, align 8
  %.sroa.11191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.11191.0.copyload = load float, ptr %.sroa.11191.0..sroa_idx, align 8
  %i.ac = fmul float %sqrt.i.i, %sqrt.i.i
  %i.ad = fcmp ogt float %i.ac, f0x057A0000
  br i1 %i.ad, label %5, label %bb.d

5:                                                ; preds = %bb.c
  %6 = fcmp ogt float %i.n, f0x057A0000
  br i1 %6, label %7, label %b3Normalize.exit

7:                                                ; preds = %5
  %8 = call float @sqrtf(float noundef %i.n) #9
  %9 = fdiv float 1.000000e+00, %8                ; 2 uses
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %i.i, %11
  %13 = fmul float %i.j, %9
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %5, %7
  %.sroa.07.0.i = phi <2 x float> [ %12, %7 ], [ zeroinitializer, %5 ]
  %.sroa.5.0.i = phi float [ %13, %7 ], [ 0.000000e+00, %5 ]
  %i.ae = call { <2 x float>, <2 x float> } @b3ComputeQuatBetweenUnitVectors(<2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %.sroa.07.0.i, float %.sroa.5.0.i) #9 ; 2 uses
  %i.af = extractvalue { <2 x float>, <2 x float> } %i.ae, 0 ; 6 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.ae, 1 ; 4 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <3 x i32> <i32 0, i32 2, i32 0>
  %i.aj = fmul <3 x float> %i.ah, %i.ai           ; 3 uses
  %i.ak = shufflevector <2 x float> %i.af, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 1> ; 2 uses
  %i.al = fmul <3 x float> %i.ak, %i.ak
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <3 x i32> <i32 0, i32 2, i32 2> ; 2 uses
  %i.an = fmul <3 x float> %i.am, %i.am
  %i.ao = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <3 x i32> <i32 1, i32 0, i32 3>
  %i.ap = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <3 x i32> <i32 0, i32 3, i32 3>
  %i.aq = fmul <3 x float> %i.ao, %i.ap           ; 3 uses
  %i.ar = fadd <3 x float> %i.al, %i.an
  %i.as = fmul <3 x float> %i.ar, splat (float 2.000000e+00)
  %foldExtExtBinop242 = fadd <3 x float> %i.aj, %i.aq
  %i.at = extractelement <3 x float> %foldExtExtBinop242, i64 1
  %i.au = fmul float %i.at, 2.000000e+00
  %i.av = fsub <3 x float> %i.aj, %i.aq
  %i.aw = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <3 x float> %i.aq, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ay = fadd <2 x float> %i.aw, %i.ax
  %i.az = shufflevector <3 x float> %i.av, <3 x float> poison, <5 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison>
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bb = fsub <3 x float> splat (float 1.000000e+00), %i.as
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bd = shufflevector <5 x float> %i.az, <5 x float> %i.ba, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 6, i32 poison, i32 poison, i32 poison>
  %i.be = fmul <8 x float> %i.bd, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float poison, float poison, float poison>
  %i.bf = shufflevector <8 x float> %i.bc, <8 x float> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 12>
  br label %bb.d

bb.d:                                             ; preds = %b3Normalize.exit, %bb.c
  %.sroa.7146.0 = phi float [ %i.au, %b3Normalize.exit ], [ 0.000000e+00, %bb.c ] ; 4 uses
  %i.bg = phi <8 x float> [ %i.bf, %b3Normalize.exit ], [ <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.c ] ; 14 uses
  %i.bh = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bi = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bj = fadd float %.sroa.11200.0.copyload, %.sroa.11191.0.copyload
  %i.bk = fmul float %i.v, 1.250000e-01
  %i.bl = fmul float %i.h, 3.000000e+00
  %i.bm = fmul float %sqrt.i.i, 2.000000e+00
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fmul float %i.bn, %i.bk
  %i.bp = fmul float %sqrt.i.i, %i.bo             ; 2 uses
  %i.bq = fadd float %i.bp, %i.bj                 ; 2 uses
  %i.br = fadd float %.sroa.0192.0.copyload, %.sroa.0183.0.copyload
  %i.bs = fadd <2 x float> %i.z, %i.ab            ; 3 uses
  %i.bt = fadd <2 x float> %i.bi, %i.bh           ; 3 uses
  %i.bu = insertelement <2 x float> %i.y, float %.sroa.4193.0.copyload, i64 1
  %i.bv = insertelement <2 x float> %i.aa, float %.sroa.4184.0.copyload, i64 1
  %i.bw = fadd <2 x float> %i.bu, %i.bv           ; 3 uses
  %i.bx = fadd <2 x float> %.sroa.068.0.copyload, %.sroa.065.0.copyload
  %i.by = fadd float %.sroa.671.0.copyload, %.sroa.6.0.copyload
  %i.bz = fmul <2 x float> %i.bx, splat (float 5.000000e-01)
  %i.ca = fmul float %i.by, 5.000000e-01
  %i.cb = fadd float %i.v, %i.r
  store float %i.cb, ptr %0, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.bz, ptr %i.cc, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ca, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 5, i32 7> ; 2 uses
  %i.cf = fmul <2 x float> %i.bt, %i.ce           ; 2 uses
  %shift244 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop245 = fadd <2 x float> %shift244, %i.cf
  %i.cg = extractelement <2 x float> %foldExtExtBinop245, i64 0
  %i.ch = extractelement <8 x float> %i.bg, i64 0 ; 2 uses
  %i.ci = fmul float %i.bq, %i.ch
  %i.cj = fadd float %i.ci, %i.cg                 ; 2 uses
  %i.ck = insertelement <2 x float> %i.y, float %i.bp, i64 0
  %i.cl = insertelement <2 x float> %i.aa, float %i.br, i64 0
  %i.cm = fadd <2 x float> %i.ck, %i.cl           ; 3 uses
  %i.cn = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 7, i32 5>
  %i.co = fmul <2 x float> %i.bw, %i.cn
  %i.cp = fmul <2 x float> %i.cm, %i.ce
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.bs, %i.cr
  %i.ct = fadd <2 x float> %i.cs, %i.cq           ; 3 uses
  %i.cu = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 4, i32 2> ; 2 uses
  %i.cv = fmul <2 x float> %i.bw, %i.cu
  %i.cw = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.cx = fmul <2 x float> %i.bs, %i.cw
  %i.cy = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 3, i32 6> ; 3 uses
  %i.cz = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.da = fmul <2 x float> %i.cm, %i.cz
  %i.db = fadd <2 x float> %i.cv, %i.da
  %i.dc = fadd <2 x float> %i.cx, %i.db           ; 3 uses
  %i.dd = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = insertelement <2 x float> %i.cu, float %.sroa.7146.0, i64 1
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.dh = fmul <2 x float> %i.bt, %i.dg
  %i.di = fadd <2 x float> %i.dh, %i.df
  %i.dj = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 6, i32 3>
  %i.dm = fmul <2 x float> %i.dk, %i.dl
  %i.dn = fadd <2 x float> %i.dm, %i.di           ; 3 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.cy, %i.do
  %i.dq = shufflevector <8 x float> %i.bg, <8 x float> poison, <4 x i32> <i32 0, i32 0, i32 5, i32 7>
  %i.dr = shufflevector <2 x float> %i.dc, <2 x float> %i.dn, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ds = fmul <4 x float> %i.dq, %i.dr           ; 4 uses
  %i.dt = insertelement <2 x float> %i.cz, float %.sroa.7146.0, i64 0 ; 3 uses
  %i.du = fmul <2 x float> %i.dt, %i.dc
  %i.dv = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.dw = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = fmul <2 x float> %i.dv, %i.dw
  %i.dy = fadd <2 x float> %i.du, %i.dx
  %i.dz = fadd <2 x float> %i.dp, %i.dy
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ec = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %shift250 = fadd <4 x float> %i.eb, %i.ec
  %foldExtExtBinop251 = fadd <4 x float> %i.ds, %shift250
  %i.ed = extractelement <4 x float> %foldExtExtBinop251, i64 0
  %i.ee = insertelement <2 x float> %i.dv, float %.sroa.7146.0, i64 1
  %i.ef = fmul <2 x float> %i.bw, %i.ee
  %i.eg = shufflevector <8 x float> %i.bg, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.eh = fmul <2 x float> %i.bs, %i.eg
  %i.ei = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ej = fmul <2 x float> %i.cy, %i.ei
  %i.ek = insertelement <2 x float> %i.dg, float %.sroa.7146.0, i64 0
  %i.el = fmul <2 x float> %i.cm, %i.ek
  %i.em = fadd <2 x float> %i.ef, %i.el
  %i.en = fadd <2 x float> %i.eh, %i.em           ; 3 uses
  %i.eo = fmul <2 x float> %i.dt, %i.en
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = fmul <2 x float> %i.dv, %i.ep
  %i.er = fadd <2 x float> %i.eo, %i.eq
  %i.es = fadd <2 x float> %i.ej, %i.er
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = shufflevector <8 x float> %i.bg, <8 x float> poison, <4 x i32> <i32 5, i32 7, i32 5, i32 7>
  %i.ev = shufflevector <2 x float> %i.en, <2 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ew = fmul <4 x float> %i.eu, %i.ev           ; 4 uses
  %shift253 = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop254 = fadd <4 x float> %i.ew, %shift253
  %shift256 = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop257 = fadd <4 x float> %shift256, %foldExtExtBinop254
  %i.ex = extractelement <4 x float> %foldExtExtBinop257, i64 0
  %shift259 = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop260 = fadd <4 x float> %i.ew, %shift259
  %i.ey = extractelement <4 x float> %foldExtExtBinop260, i64 2
  %i.ez = fmul <2 x float> %i.dt, %i.ct
  %i.fa = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fb = fmul <2 x float> %i.dv, %i.fa
  %i.fc = fadd <2 x float> %i.ez, %i.fb
  %i.fd = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.cy, %i.fe
  %i.fg = fadd <2 x float> %i.ff, %i.fc
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = fmul float %i.ch, %i.cj
  %i.fj = fadd float %i.fi, %i.ey
  store <2 x float> %i.ea, ptr %i.cd, align 4, !tbaa !12
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ed, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !12
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.et, ptr %.sroa.5133.0..sroa_idx, align 4, !tbaa !12
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ex, ptr %.sroa.6134.0..sroa_idx, align 4, !tbaa !12
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.fh, ptr %.sroa.7135.0..sroa_idx, align 4, !tbaa !12
  %.sroa.8136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.fj, ptr %.sroa.8136.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @b3CylinderInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @b3SphereInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare { <2 x float>, <2 x float> } @b3ComputeQuatBetweenUnitVectors(<2 x float>, float, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @b3ComputeCapsuleAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2) local_unnamed_addr #0 !func_sanitize !29 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15 ; 3 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0117.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <1 x float>, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5119.0.copyload = load <2 x float>, ptr %.sroa.5119.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6120.0.copyload = load <2 x float>, ptr %.sroa.6120.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5119.0.copyload, i64 0 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.i, align 4 ; 4 uses
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.051.0.copyload, %.sroa.6120.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul float %.sroa.252.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.l = fsub float %i.j, %i.k
  %i.m = shufflevector <2 x float> %.sroa.051.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %.sroa.252.0.copyload, i64 1 ; 2 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.5119.0.copyload
  %i.p = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> %.sroa.6120.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.q = fmul <2 x float> %.sroa.051.0.copyload, %i.p
  %i.r = fsub <2 x float> %i.o, %i.q              ; 2 uses
  %i.s = insertelement <2 x float> %i.m, float %.sroa.252.0.copyload, i64 0
  %i.t = shufflevector <2 x float> %.sroa.6120.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = fmul <2 x float> %i.n, %i.t
  %i.w = fadd <2 x float> %i.u, %i.r              ; 2 uses
  %i.x = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.y = insertelement <2 x float> %i.x, float %i.l, i64 0
  %i.z = fadd <2 x float> %i.v, %i.y              ; 2 uses
  %i.aa = fmul <2 x float> %i.p, %i.w
  %i.ab = shufflevector <2 x float> %.sroa.6120.0.copyload, <2 x float> %.sroa.5119.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
end_hunk_0
begin_hunk_1_@b3OverlapCapsule:bb.a
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %0, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.412.0.copyload = load float, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.513.0.copyload = load <2 x float>, ptr %.sroa.513.0..sroa_idx, align 4 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.o = fsub <2 x float> zeroinitializer, %.sroa.011.0.copyload ; 4 uses
  %i.p = fsub float 0.000000e+00, %.sroa.412.0.copyload ; 3 uses
  %i.q = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %i.p, i64 1 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %.sroa.513.0.copyload
  %i.t = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.513.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fmul <2 x float> %i.o, %i.t
  %i.v = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.o, %i.v
  %i.x = insertelement <2 x float> %i.q, float %i.p, i64 0 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.513.0.copyload
  %i.z = fsub <2 x float> %i.s, %i.w
  %i.aa = fsub <2 x float> %i.u, %i.y
  %i.ab = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = fmul <2 x float> %i.x, %i.ab
  %i.ad = fmul <2 x float> %i.r, %i.ab
  %i.ae = fsub <2 x float> %i.z, %i.ac            ; 2 uses
  %i.af = fsub <2 x float> %i.aa, %i.ad           ; 2 uses
  %i.ag = fmul <2 x float> %i.v, %i.ae
  %i.ah = fmul <2 x float> %i.t, %i.af
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %foldExtExtBinop = fmul <2 x float> %.sroa.513.0.copyload, %i.af
  %foldExtExtBinop18 = fmul <2 x float> %.sroa.513.0.copyload, %i.ae
  %shift = shufflevector <2 x float> %foldExtExtBinop18, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.aj = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.ak = fmul <2 x float> %i.ai, splat (float 2.000000e+00)
  %i.al = fadd <2 x float> %i.o, %i.ak
  %i.am = fmul float %i.aj, 2.000000e+00
  %i.an = fadd float %i.p, %i.am
  %i.ao = shufflevector <2 x float> %.sroa.513.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ap = fmul <4 x float> %i.ao, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.aq = extractelement <4 x float> %i.ap, i64 1 ; 2 uses
  %i.ar = extractelement <4 x float> %i.ap, i64 2
  %i.as = extractelement <4 x float> %i.ap, i64 0 ; 2 uses
  %i.at = fsub float %i.aq, %i.as
  %i.au = fmul float %.sroa.2.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.av = fadd float %i.at, %i.au
  %i.aw = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fadd <2 x float> %i.ba, %i.ay
  %i.bc = fsub <2 x float> %i.bb, %.sroa.513.0.copyload
  %i.bd = fsub float %i.av, %.sroa.2.8.vec.extract65.i
  %.sroa.231.8.vec.insert.i = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.be = fadd float %i.as, %i.aq
  %i.bf = fadd float %i.ar, %i.be
  %i.bg = fadd float %.sroa.2.12.vec.extract.i, %i.bf
  %.sroa.231.12.vec.insert.i = insertelement <2 x float> %.sroa.231.8.vec.insert.i, float %i.bg, i64 1
  store <2 x float> %i.al, ptr %i.n, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.bc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.231.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.bh, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !35
  %i.bk = call float @b3GetLengthUnitsPerMeter() #9
  %i.bl = fmul float %i.bk, 5.000000e-03
  %i.bm = fmul float %i.bl, 1.000000e-01
  %i.bn = fcmp olt float %i.bj, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i1 %i.bn
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b3RayCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %3 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %4 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %5 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %6 = alloca %struct.b3Sphere, align 8           ; 5 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @8, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.0308.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0303.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = load <2 x float>, ptr %.sroa.5305.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 1   ; 6 uses
  %i.i = fsub <2 x float> %.sroa.0303.0.copyload, %.sroa.0308.0.copyload ; 3 uses
  %i.j = extractelement <2 x float> %i.g, i64 0
  %i.k = fsub float %i.j, %.sroa.8.0.copyload     ; 3 uses
  %i.l = tail call float @b3GetLengthUnitsPerMeter() #9
  %i.m = fmul float %i.l, 5.000000e-03
  %i.n = fmul float %i.m, f0x3C23D70A             ; 2 uses
  %i.o = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.o, %shift
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.k, %i.k
  %i.r = fadd float %i.q, %i.p                    ; 2 uses
  %i.s = fmul float %i.n, %i.n
  %i.t = fcmp olt float %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0263.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.2264.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.0261.0.copyload = load <2 x float>, ptr %i.f, align 4
  %.sroa.2262.0.copyload = load float, ptr %.sroa.5305.0..sroa_idx, align 4
  %i.v = fadd float %.sroa.2264.0.copyload, %.sroa.2262.0.copyload
  %i.w = fadd <2 x float> %.sroa.0263.0.copyload, %.sroa.0261.0.copyload
  %i.x = fmul <2 x float> %i.w, splat (float 5.000000e-01)
  %i.y = fmul float %i.v, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store <2 x float> %i.x, ptr %3, align 8, !tbaa !12
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.y, ptr %.sroa.4268.0..sroa_idx, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aa = load float, ptr %i.u, align 4, !tbaa !15
  store float %i.aa, ptr %i.z, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ne ptr %2, null, !nosanitize !9
  %i.ac = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !9
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !9
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %i.ac) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %.sroa.0241.0.copyload = load <2 x float>, ptr %2, align 4 ; 2 uses
  %.sroa.2242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2242.0.copyload = load float, ptr %.sroa.2242.0..sroa_idx, align 4 ; 2 uses
  %i.ag = fsub <2 x float> %.sroa.0241.0.copyload, %.sroa.0308.0.copyload ; 7 uses
  %i.ah = fsub float %.sroa.2242.0.copyload, %.sroa.8.0.copyload ; 6 uses
  %sqrt = tail call float @sqrtf(float noundef %i.r) #9 ; 5 uses
  %i.ai = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.i, %i.ak            ; 9 uses
  %i.am = fmul float %i.k, %i.ai                  ; 8 uses
  %i.an = extractelement <2 x float> %i.al, i64 0
  %i.ao = extractelement <2 x float> %i.ag, i64 0
  %foldExtExtBinop611 = fmul <2 x float> %i.ag, %i.al
  %i.ap = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.aq = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.as = fmul float %i.ar, %i.aq
  %i.at = fadd float %i.ap, %i.as
  %i.au = fmul float %i.ah, %i.am
  %i.av = fadd float %i.au, %i.at                 ; 12 uses
  %i.aw = fmul float %i.an, %i.av
  %i.ax = fmul float %i.aq, %i.av
  %i.ay = fmul float %i.am, %i.av
  %i.az = fsub float %i.ao, %i.aw                 ; 3 uses
  %i.ba = fsub float %i.ar, %i.ax                 ; 3 uses
  %i.bb = fsub float %i.ah, %i.ay                 ; 3 uses
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fmul float %i.ba, %i.ba
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = fmul float %i.bb, %i.bb
  %i.bg = fadd float %i.bf, %i.be                 ; 2 uses
  %i.bh = fmul float %i.h, %i.h                   ; 5 uses
  %i.bi = fcmp olt float %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bj = fcmp olt float %i.av, 0.000000e+00
  %i.bk = fcmp olt float %sqrt, %i.av
  %i.bl = select i1 %i.bk, float %sqrt, float %i.av
  %i.bm = select i1 %i.bj, float 0.000000e+00, float %i.bl ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.al, %i.bo           ; 2 uses
  %i.bq = fmul float %i.am, %i.bm                 ; 2 uses
  %i.br = fsub float %i.ah, %i.bq                 ; 2 uses
  %i.bs = fsub <2 x float> %i.ag, %i.bp           ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %shift613 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop614 = fadd <2 x float> %i.bt, %shift613
  %i.bu = extractelement <2 x float> %foldExtExtBinop614, i64 0
  %i.bv = fmul float %i.br, %i.br
  %i.bw = fadd float %i.bv, %i.bu
  %i.bx = fcmp olt float %i.bw, %i.bh
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0241.0.copyload, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !12
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.2242.0.copyload, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.16559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.15.0..sroa_idx, i8 0, i64 20, i1 false)
  store i8 1, ptr %.sroa.16559.0..sroa_idx, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.by = fadd <2 x float> %.sroa.0308.0.copyload, %i.bp
  %i.bz = fadd float %.sroa.8.0.copyload, %i.bq
  store <2 x float> %i.by, ptr %4, align 8
  %.sroa.2156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.bz, ptr %.sroa.2156.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.h, ptr %i.ca, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %4, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0150.0.copyload = load <2 x float>, ptr %i.cb, align 4, !tbaa !12 ; 4 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5152.0.copyload = load float, ptr %.sroa.5152.0..sroa_idx, align 4, !tbaa !12 ; 4 uses
  %i.cc = fmul <2 x float> %.sroa.0150.0.copyload, %.sroa.0150.0.copyload ; 2 uses
  %shift616 = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop617 = fadd <2 x float> %i.cc, %shift616
  %i.cd = extractelement <2 x float> %foldExtExtBinop617, i64 0
  %i.ce = fmul float %.sroa.5152.0.copyload, %.sroa.5152.0.copyload
  %i.cf = fadd float %i.ce, %i.cd                 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, f0x057A0000
  br i1 %i.cg, label %b3GetLengthAndNormalize.exit, label %b3GetLengthAndNormalize.exit.thread

b3GetLengthAndNormalize.exit:                     ; preds = %bb.k
  %7 = tail call float @sqrtf(float noundef %i.cf) #9 ; 4 uses
  %8 = fdiv float 1.000000e+00, %7                ; 2 uses
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %.sroa.0150.0.copyload, %10 ; 5 uses
  %12 = fmul float %.sroa.5152.0.copyload, %8     ; 5 uses
  %13 = fcmp oeq float %7, 0.000000e+00
  br i1 %13, label %b3GetLengthAndNormalize.exit.thread, label %bb.l

b3GetLengthAndNormalize.exit.thread:              ; preds = %bb.k, %b3GetLengthAndNormalize.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.l:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !41 ; 4 uses
  %i.cj = fmul <2 x float> %i.al, %.sroa.0150.0.copyload ; 2 uses
  %shift619 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop620 = fadd <2 x float> %i.cj, %shift619
  %i.ck = extractelement <2 x float> %foldExtExtBinop620, i64 0
  %i.cl = fmul float %i.am, %.sroa.5152.0.copyload
  %i.cm = fadd float %i.cl, %i.ck
  %i.cn = fmul float %i.cm, %i.ci
  %i.co = fadd float %i.av, %i.cn                 ; 2 uses
  %i.cp = fneg float %i.h                         ; 2 uses
  %i.cq = fcmp olt float %i.av, %i.cp
  %i.cr = fcmp olt float %i.co, %i.cp
  %or.cond = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = fadd float %i.h, %sqrt                  ; 2 uses
  %i.ct = fcmp olt float %i.cs, %i.av
  %i.cu = fcmp olt float %i.cs, %i.co
  %or.cond348 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond348, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.cv = fmul <2 x float> %i.al, %11             ; 2 uses
  %shift622 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop623 = fadd <2 x float> %i.cv, %shift622
  %i.cw = extractelement <2 x float> %foldExtExtBinop623, i64 0
  %i.cx = fmul float %i.am, %12
  %i.cy = fadd float %i.cx, %i.cw                 ; 7 uses
  %i.cz = fmul float %i.cy, %i.cy
  %i.da = fsub float 1.000000e+00, %i.cz          ; 2 uses
  %i.db = fcmp olt float %i.da, f0x34000000
  br i1 %i.db, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dc = fmul float %i.am, %i.cy
  %i.dd = fsub float %12, %i.dc                   ; 3 uses
  %i.de = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.al, %i.df
  %i.dh = fsub <2 x float> %11, %i.dg             ; 4 uses
  %i.di = fmul <2 x float> %i.dh, %i.dh           ; 2 uses
  %shift625 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop626 = fadd <2 x float> %i.di, %shift625
  %i.dj = extractelement <2 x float> %foldExtExtBinop626, i64 0
  %i.dk = fmul float %i.dd, %i.dd
  %i.dl = fadd float %i.dk, %i.dj
  %i.dm = extractelement <2 x float> %i.dh, i64 0
  %i.dn = fmul float %i.az, %i.dm
  %i.do = extractelement <2 x float> %i.dh, i64 1
  %i.dp = fmul float %i.ba, %i.do
  %i.dq = fadd float %i.dn, %i.dp
  %i.dr = fmul float %i.bb, %i.dd
  %i.ds = fadd float %i.dr, %i.dq                 ; 4 uses
  %i.dt = fsub float %i.bg, %i.bh                 ; 2 uses
  %i.du = fmul float %i.ds, %i.ds
  %i.dv = fmul float %i.dt, %i.dl
  %i.dw = fsub float %i.du, %i.dv                 ; 2 uses
  %i.dx = fcmp ult float %i.ds, 0.000000e+00
  %i.dy = fcmp uge float %i.dw, 0.000000e+00
  %or.cond.not = and i1 %i.dx, %i.dy
  br i1 %or.cond.not, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.dz = tail call float @sqrtf(float noundef %i.dw) #9
  %i.ea = fsub float %i.dz, %i.ds
  %i.eb = fdiv float %i.dt, %i.ea
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.ec = fdiv float 1.000000e+00, %i.da          ; 3 uses
  %i.ed = fmul <2 x float> %i.ag, %11             ; 2 uses
  %shift628 = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop629 = fadd <2 x float> %i.ed, %shift628
  %i.ee = extractelement <2 x float> %foldExtExtBinop629, i64 0
  %i.ef = fmul float %i.ah, %12
  %i.eg = fadd float %i.ef, %i.ee                 ; 2 uses
  %i.eh = fmul float %i.cy, %i.eg
  %i.ei = fmul float %i.av, %i.cy
  %i.ej = fsub float %i.av, %i.eh
  %i.ek = fmul float %i.ej, %i.ec                 ; 2 uses
  %i.el = fsub float %i.ei, %i.eg
  %i.em = fmul float %i.el, %i.ec                 ; 3 uses
  %i.en = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.al, %i.eo
  %i.eq = fmul float %i.am, %i.ek
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x float> %11, %i.es
  %i.eu = fadd <2 x float> %i.ag, %i.et
  %i.ev = fmul float %12, %i.em
  %i.ew = fadd float %i.ah, %i.ev
  %i.ex = fsub <2 x float> %i.eu, %i.ep           ; 2 uses
  %i.ey = fsub float %i.ew, %i.eq                 ; 2 uses
  %i.ez = fmul <2 x float> %i.ex, %i.ex           ; 2 uses
  %shift631 = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop632 = fadd <2 x float> %i.ez, %shift631
  %i.fa = extractelement <2 x float> %foldExtExtBinop632, i64 0
  %i.fb = fmul float %i.ey, %i.ey
  %i.fc = fadd float %i.fb, %i.fa                 ; 2 uses
  %i.fd = fcmp ule float %i.fc, %i.bh
  br i1 %i.fd, label %.thread594, label %bb.s

.thread594:                                       ; preds = %bb.r
  %i.fe = fsub float %i.bh, %i.fc
  %i.ff = fmul float %i.ec, %i.fe
  %i.fg = tail call float @sqrtf(float noundef %i.ff) #9
  %i.fh = fsub float %i.em, %i.fg
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.t:                                             ; preds = %.thread594, %.thread
  %.2 = phi float [ %i.eb, %.thread ], [ %i.fh, %.thread594 ] ; 6 uses
  %i.fi = fcmp olt float %.2, 0.000000e+00
  %i.fj = fmul float %7, %i.ci
  %i.fk = fcmp olt float %i.fj, %.2
  %or.cond597 = select i1 %i.fi, i1 true, i1 %i.fk
  br i1 %or.cond597, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.fl = fmul float %i.cy, %.2
  %i.fm = fadd float %i.av, %i.fl                 ; 4 uses
  %i.fn = fcmp olt float %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <2 x float> %.sroa.0308.0.copyload, ptr %5, align 8, !tbaa !12
  %.sroa.8.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx313, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.h, ptr %i.fo, align 4, !tbaa !38
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.fp = fcmp olt float %sqrt, %i.fm
  br i1 %i.fp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store <2 x float> %.sroa.0303.0.copyload, ptr %6, align 8, !tbaa !12
  %.sroa.5305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.g, ptr %.sroa.5305.0..sroa_idx306, align 8, !tbaa !12
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.fq = insertelement <2 x float> poison, float %.2, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %11, %i.fr
  %i.ft = fadd <2 x float> %i.ag, %i.fs           ; 2 uses
  %i.fu = fmul float %12, %.2
  %i.fv = fadd float %i.ah, %i.fu                 ; 2 uses
  %i.fw = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.al, %i.fx
  %i.fz = fsub <2 x float> %i.ft, %i.fy           ; 3 uses
  %i.ga = fmul float %i.am, %i.fm
  %i.gb = fsub float %i.fv, %i.ga                 ; 3 uses
  %i.gc = fmul <2 x float> %i.fz, %i.fz           ; 2 uses
  %shift634 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop635 = fadd <2 x float> %i.gc, %shift634
  %i.gd = extractelement <2 x float> %foldExtExtBinop635, i64 0
  %i.ge = fmul float %i.gb, %i.gb
  %i.gf = fadd float %i.ge, %i.gd                 ; 2 uses
  %i.gg = fcmp ogt float %i.gf, f0x057A0000
  br i1 %i.gg, label %bb.aa, label %b3Normalize.exit

bb.aa:                                            ; preds = %bb.z
  %sqrt598 = tail call float @sqrtf(float noundef %i.gf) #9
  %i.gh = fdiv float 1.000000e+00, %sqrt598       ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.fz, %i.gj
  %i.gl = fmul float %i.gb, %i.gh
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.z, %bb.aa
  %.sroa.07.0.i = phi <2 x float> [ %i.gk, %bb.aa ], [ zeroinitializer, %bb.z ]
  %.sroa.5.0.i = phi float [ %i.gl, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.gm = fadd <2 x float> %.sroa.0308.0.copyload, %i.ft
  %i.gn = fadd float %.sroa.8.0.copyload, %i.fv
  %i.go = fdiv float %.2, %7                      ; 3 uses
  %i.gp = fcmp olt float %i.go, 0.000000e+00
  %i.gq = fcmp olt float %i.ci, %i.go
  %i.gr = select i1 %i.gq, float %i.ci, float %i.go
  %i.gs = select i1 %i.gp, float 0.000000e+00, float %i.gr
  store <2 x float> %.sroa.07.0.i, ptr %0, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.11.0..sroa_idx515, align 4, !tbaa !12
  %.sroa.12.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.gm, ptr %.sroa.12.0..sroa_idx527, align 4, !tbaa !12
  %.sroa.14.0..sroa_idx539 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.gn, ptr %.sroa.14.0..sroa_idx539, align 4, !tbaa !12
  %.sroa.15.0..sroa_idx551 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.gs, ptr %.sroa.15.0..sroa_idx551, align 4, !tbaa !12
  %.sroa.16.0..sroa_idx558 = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.16.0..sroa_idx558, i8 0, i64 16, i1 false)
  %.sroa.16559.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %.sroa.16559.0..sroa_idx570, align 4, !tbaa !39
  %.sroa.18.0..sroa_idx577 = getelementptr inbounds nuw i8, ptr %0, i64 45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.0..sroa_idx577, i8 0, i64 3, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %b3GetLengthAndNormalize.exit.thread, %bb.u, %b3Normalize.exit, %bb.y, %bb.w, %bb.n, %bb.q, %bb.s, %bb.j, %bb.i, %bb.d
  ret void
}

declare void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3ShapeCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 !func_sanitize !42 {
bb.a:
  %3 = alloca %struct.b3ShapeCastPairInput, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  store ptr %1, ptr %3, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.i) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !43
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = load float, ptr %i.q, align 4, !tbaa !46
  store float %i.s, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i8, ptr %i.t, align 8, !tbaa !49    ; 3 uses
  %i.v = icmp ult i8 %i.u, 2
  br i1 %i.v, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.w = zext i8 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @14, i64 %i.w) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i8 %i.u, ptr %i.x, align 4, !tbaa !50
  call void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #2

declare void @b3ShapeCast(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @b3CollideMoverAndCapsule(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !func_sanitize !51 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %3 = alloca %struct.b3SegmentDistanceResult, align 8 ; 8 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null, !nosanitize !9
  %i.g = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.h = and i64 %i.g, 3, !nosanitize !9
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !9
  %i.j = and i1 %i.f, %i.i, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @16, i64 %i.g) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load float, ptr %i.m, align 4, !tbaa !15
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.p, align 4
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %.sroa.045.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.246.0.copyload = load float, ptr %.sroa.246.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  call void @b3SegmentDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %3, <2 x float> %.sroa.049.0.copyload, float %.sroa.250.0.copyload, <2 x float> %.sroa.047.0.copyload, float %.sroa.248.0.copyload, <2 x float> %.sroa.045.0.copyload, float %.sroa.246.0.copyload, <2 x float> %.sroa.0.0.copyload, float %.sroa.244.0.copyload) #9
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.037.0.copyload = load <2 x float>, ptr %i.r, align 8
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.238.0.copyload = load float, ptr %.sroa.238.0..sroa_idx, align 8
  %.sroa.035.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 8
  %i.s = fsub <2 x float> %.sroa.037.0.copyload, %.sroa.035.0.copyload ; 3 uses
  %i.t = fsub float %.sroa.238.0.copyload, %.sroa.236.0.copyload ; 3 uses
  %i.u = fmul <2 x float> %i.s, %i.s              ; 2 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.u, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fmul float %i.t, %i.t
  %i.x = fadd float %i.w, %i.v                    ; 2 uses
  %i.y = fcmp ogt float %i.x, f0x057A0000
  br i1 %i.y, label %bb.f, label %b3GetLengthAndNormalize.exit

bb.f:                                             ; preds = %bb.e
  %sqrt.i = call float @sqrtf(float noundef %i.x) #9 ; 2 uses
  %i.z = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.s, %i.ab
  %i.ad = fmul float %i.t, %i.z
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.e, %bb.f
  %.096 = phi float [ %sqrt.i, %bb.f ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %.sroa.010.0.i = phi <2 x float> [ %i.ac, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.5.0.i = phi float [ %i.ad, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ae = fcmp ogt float %.096, %i.o
  br i1 %i.ae, label %bb.r, label %bb.g

bb.g:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.af = call float @b3GetLengthUnitsPerMeter() #9
  %i.ag = fmul float %i.af, 5.000000e-03          ; 2 uses
  %i.ah = fcmp olt float %.096, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.q, align 4
  %.sroa.219.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  %.sroa.016.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.217.0.copyload = load float, ptr %.sroa.246.0..sroa_idx, align 4
  %i.ai = fsub <2 x float> %.sroa.018.0.copyload, %.sroa.016.0.copyload ; 3 uses
  %i.aj = fsub float %.sroa.219.0.copyload, %.sroa.217.0.copyload ; 3 uses
  %i.ak = fmul <2 x float> %i.ai, %i.ai           ; 2 uses
  %shift106 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fadd <2 x float> %i.ak, %shift106
  %i.al = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.am = fmul float %i.aj, %i.aj
  %i.an = fadd float %i.am, %i.al                 ; 2 uses
  %i.ao = fcmp ogt float %i.an, f0x057A0000
  br i1 %i.ao, label %bb.i, label %b3GetLengthAndNormalize.exit87

bb.i:                                             ; preds = %bb.h
  %sqrt.i84 = call float @sqrtf(float noundef %i.an) #9 ; 2 uses
  %i.ap = fdiv float 1.000000e+00, %sqrt.i84      ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %i.ai, %i.ar
  %i.at = fmul float %i.aj, %i.ap
  br label %b3GetLengthAndNormalize.exit87

b3GetLengthAndNormalize.exit87:                   ; preds = %bb.h, %bb.i
  %.095 = phi float [ %sqrt.i84, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.010.0.i80 = phi <2 x float> [ %i.as, %bb.i ], [ zeroinitializer, %bb.h ] ; 3 uses
  %.sroa.5.0.i81 = phi float [ %i.at, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.au = fcmp ogt float %.095, %i.ag
  br i1 %i.au, label %bb.j, label %bb.o

bb.j:                                             ; preds = %b3GetLengthAndNormalize.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.017.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i80, i64 0 ; 2 uses
  %i.av = call float @llvm.fabs.f32(float %.sroa.017.0.vec.extract.i)
  %or.cond.i = fcmp ogt float %i.av, 5.000000e-01
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.017.4.vec.extract21.i = extractelement <2 x float> %.sroa.010.0.i80, i64 1
  store float %.sroa.017.4.vec.extract21.i, ptr %.sroa.014.i, align 8, !tbaa !52
  %i.aw = fneg float %.sroa.017.0.vec.extract.i
  %.sroa.014.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.014.i, i64 4
  store float %i.aw, ptr %.sroa.014.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !53
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store float 0.000000e+00, ptr %.sroa.0.i, align 8, !tbaa !52
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  store float %.sroa.5.0.i81, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !53
  %.sroa.017.4.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i80, i64 1
  %i.ax = fneg float %.sroa.017.4.vec.extract.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.05.0.in.i = phi ptr [ %.sroa.014.i, %bb.k ], [ %.sroa.0.i, %bb.l ]
  %.sroa.5.0.i88 = phi float [ 0.000000e+00, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  %.sroa.05.0.i = load <2 x float>, ptr %.sroa.05.0.in.i, align 8, !tbaa !12 ; 3 uses
  %i.ay = fmul <2 x float> %.sroa.05.0.i, %.sroa.05.0.i ; 2 uses
  %shift109 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop110 = fadd <2 x float> %i.ay, %shift109
  %i.az = extractelement <2 x float> %foldExtExtBinop110, i64 0
  %i.ba = fmul float %.sroa.5.0.i88, %.sroa.5.0.i88
  %i.bb = fadd float %i.ba, %i.az                 ; 2 uses
  %i.bc = fcmp ogt float %i.bb, f0x057A0000
  br i1 %i.bc, label %bb.n, label %b3Perp.exit

bb.n:                                             ; preds = %bb.m
  %sqrt.i89 = call float @sqrtf(float noundef %i.bb) #9
  %i.bd = fdiv float 1.000000e+00, %sqrt.i89      ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %.sroa.05.0.i, %i.bf
  %i.bh = fmul float %.sroa.5.0.i88, %i.bd
  br label %b3Perp.exit

b3Perp.exit:                                      ; preds = %bb.m, %bb.n
  %.sroa.07.0.i.i = phi <2 x float> [ %i.bg, %bb.n ], [ zeroinitializer, %bb.m ]
  %.sroa.5.0.i.i = phi float [ %i.bh, %bb.n ], [ 0.000000e+00, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.o

bb.o:                                             ; preds = %b3Perp.exit, %b3GetLengthAndNormalize.exit87, %bb.g
  %.1 = phi float [ %.096, %bb.g ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit87 ], [ 0.000000e+00, %b3Perp.exit ]
  %.sroa.041.1 = phi <2 x float> [ %.sroa.010.0.i, %bb.g ], [ <float 0.000000e+00, float 1.000000e+00>, %b3GetLengthAndNormalize.exit87 ], [ %.sroa.07.0.i.i, %b3Perp.exit ]
  %.sroa.6.1 = phi float [ %.sroa.5.0.i, %bb.g ], [ 0.000000e+00, %b3GetLengthAndNormalize.exit87 ], [ %.sroa.5.0.i.i, %b3Perp.exit ]
  %i.bi = icmp ne ptr %0, null, !nosanitize !9
  %i.bj = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bk = and i64 %i.bj, 3, !nosanitize !9
  %i.bl = icmp eq i64 %i.bk, 0, !nosanitize !9
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !9
  br i1 %i.bm, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @18, i64 %i.bj) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bn = fsub float %i.o, %.1
  store <2 x float> %.sroa.041.1, ptr %0, align 4, !tbaa !12
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.6.1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !12
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bn, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx91, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !19
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %b3GetLengthAndNormalize.exit, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %b3GetLengthAndNormalize.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.0
}

declare void @b3SegmentDistance(ptr dead_on_unwind writable sret(%struct.b3SegmentDistanceResult) align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1048575, i32 1}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"b3Vec3", !11, i64 0, !11, i64 4, !11, i64 8}
!14 = !{!"b3Capsule", !13, i64 0, !13, i64 12, !11, i64 24}
!15 = !{!14, !11, i64 24}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS6b3Vec3", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{i64 0, i64 8, !18, i64 8, i64 4, !19, i64 12, i64 4, !12}
!21 = !{!"b3ShapeProxy", !17, i64 0, !6, i64 8, !11, i64 12}
!22 = !{!"b3Quat", !13, i64 0, !11, i64 12}
!23 = !{!"b3Transform", !13, i64 0, !22, i64 12}
!24 = !{!"_Bool", !5, i64 0}
!25 = !{i32 -1056584962, i32 -913115302}
!26 = !{!"b3Matrix3", !13, i64 0, !13, i64 12, !13, i64 24}
!27 = !{!"b3MassData", !11, i64 0, !13, i64 4, !26, i64 16}
!28 = !{!27, !11, i64 0}
!29 = !{i32 -1056584962, i32 -1611461400}
!30 = !{i32 -1056584962, i32 -951425499}
!31 = !{i32 -1056584962, i32 1475941046}
!32 = !{!"b3DistanceInput", !21, i64 0, !21, i64 16, !23, i64 32, !24, i64 60}
!33 = !{!32, !24, i64 60}
!34 = !{!"b3DistanceOutput", !13, i64 0, !13, i64 12, !13, i64 24, !11, i64 36, !6, i64 40, !6, i64 44}
!35 = !{!34, !11, i64 36}
!36 = !{i32 -1056584962, i32 -277884322}
!37 = !{!"b3Sphere", !13, i64 0, !11, i64 12}
!38 = !{!37, !11, i64 12}
!39 = !{!24, !24, i64 0}
!40 = !{!"b3RayCastInput", !13, i64 0, !13, i64 12, !11, i64 24}
!41 = !{!40, !11, i64 24}
!42 = !{i32 -1056584962, i32 -561121931}
!43 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 4, !12}
!44 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 4, !12}
!45 = !{!"b3ShapeCastInput", !21, i64 0, !13, i64 16, !11, i64 28, !24, i64 32}
!46 = !{!45, !11, i64 28}
!47 = !{!"b3ShapeCastPairInput", !21, i64 0, !21, i64 16, !23, i64 32, !13, i64 60, !11, i64 72, !24, i64 76}
!48 = !{!47, !11, i64 72}
!49 = !{!45, !24, i64 32}
!50 = !{!47, !24, i64 76}
!51 = !{i32 -1056584962, i32 -579779491}
!52 = !{!13, !11, i64 0}
!53 = !{!13, !11, i64 4}
end_hunk_1
