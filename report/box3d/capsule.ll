Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/capsule?download=true
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

@b3Transform_identity = internal unnamed_addr constant %struct.b3Transform { %struct.b3Vec3 zeroinitializer, %struct.b3Quat { %struct.b3Vec3 zeroinitializer, float 1.000000e+00 } }, align 8

; Function Attrs: nounwind uwtable
define void @b3ComputeCapsuleMass(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3MassData) align 4 captures(none) initializes((0, 52)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3Matrix3, align 8          ; 7 uses
  %4 = alloca %struct.b3Matrix3, align 8          ; 7 uses
  %.sroa.068.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.671.0.copyload = load float, ptr %.sroa.671.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 8 uses
  %i.d = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.068.0.copyload ; 3 uses
  %i.e = fsub float %.sroa.6.0.copyload, %.sroa.671.0.copyload ; 3 uses
  %i.f = fmul <2 x float> %i.d, %i.d              ; 2 uses
  %shift = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.f, %shift
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = fmul float %i.e, %i.e
  %i.i = fadd float %i.h, %i.g                    ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.i) ; 7 uses
  %i.j = fmul float %i.c, f0x40490FDB
  %i.k = fmul float %i.c, %i.j
  %i.l = fmul float %i.k, %sqrt.i.i
  %i.m = fmul float %2, %i.l                      ; 2 uses
  %i.n = fmul float %i.c, f0x40860A92
  %i.o = fmul float %i.c, %i.n
  %i.p = fmul float %i.c, %i.o
  %i.q = fmul float %2, %i.p                      ; 3 uses
  call void @b3CylinderInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %3, float noundef %i.m, float noundef %i.c, float noundef %sqrt.i.i) #8
  call void @b3SphereInertia(ptr dead_on_unwind nonnull writable sret(%struct.b3Matrix3) align 4 %4, float noundef %i.q, float noundef %i.c) #8
  %.sroa.0178.0.copyload = load float, ptr %4, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.4179.0.copyload = load float, ptr %.sroa.4179.0..sroa_idx, align 4
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.9184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.11186.0.copyload = load float, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.0169.0.copyload = load float, ptr %3, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4170.0.copyload = load float, ptr %.sroa.4170.0..sroa_idx, align 4
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.r = load <4 x float>, ptr %.sroa.5180.0..sroa_idx, align 8
  %i.s = load <4 x float>, ptr %.sroa.5171.0..sroa_idx, align 8
  %.sroa.9175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load <2 x float>, ptr %.sroa.6181.0..sroa_idx, align 4 ; 2 uses
  %i.u = load <2 x float>, ptr %.sroa.9184.0..sroa_idx, align 8
  %i.v = load <2 x float>, ptr %.sroa.6172.0..sroa_idx, align 4 ; 2 uses
  %i.w = load <2 x float>, ptr %.sroa.9175.0..sroa_idx, align 8
  %.sroa.11177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.11177.0.copyload = load float, ptr %.sroa.11177.0..sroa_idx, align 8
  %i.x = fmul float %sqrt.i.i, %sqrt.i.i
  %i.y = fcmp ogt float %i.x, f0x057A0000
  br i1 %i.y, label %b3Normalize.exit, label %bb.b

b3Normalize.exit:                                 ; preds = %bb.a
  %i.z = fcmp ogt float %i.i, f0x057A0000         ; 2 uses
  %i.aa = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.d, %i.ac
  %i.ae = fmul float %i.e, %i.aa
  %.sroa.018.0.i = select i1 %i.z, <2 x float> %i.ad, <2 x float> zeroinitializer
  %.sroa.5.0.i = select i1 %i.z, float %i.ae, float 0.000000e+00
  %i.af = call { <2 x float>, <2 x float> } @b3ComputeQuatBetweenUnitVectors(<2 x float> <float 0.000000e+00, float 1.000000e+00>, float 0.000000e+00, <2 x float> %.sroa.018.0.i, float %.sroa.5.0.i) #8 ; 2 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0 ; 6 uses
  %i.ah = extractvalue { <2 x float>, <2 x float> } %i.af, 1 ; 4 uses
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 1> ; 2 uses
  %i.aj = fmul <3 x float> %i.ai, %i.ai
  %i.ak = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <3 x i32> <i32 0, i32 2, i32 2> ; 2 uses
  %i.al = fmul <3 x float> %i.ak, %i.ak
  %i.am = shufflevector <2 x float> %i.ag, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <3 x i32> <i32 0, i32 2, i32 0>
  %i.ao = fmul <3 x float> %i.am, %i.an           ; 3 uses
  %i.ap = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <3 x i32> <i32 1, i32 0, i32 3>
  %i.aq = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <3 x i32> <i32 0, i32 3, i32 3>
  %i.ar = fmul <3 x float> %i.ap, %i.aq           ; 3 uses
  %i.as = fadd <3 x float> %i.aj, %i.al
  %i.at = fmul <3 x float> %i.as, splat (float 2.000000e+00)
  %foldExtExtBinop228 = fadd <3 x float> %i.ao, %i.ar
  %i.au = extractelement <3 x float> %foldExtExtBinop228, i64 1
  %i.av = fmul float %i.au, 2.000000e+00
  %i.aw = fsub <3 x float> %i.ao, %i.ar
  %i.ax = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ay = shufflevector <3 x float> %i.ar, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.az = fadd <2 x float> %i.ax, %i.ay
  %i.ba = shufflevector <3 x float> %i.aw, <3 x float> poison, <5 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison>
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bc = fsub <3 x float> splat (float 1.000000e+00), %i.at
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <5 x float> %i.ba, <5 x float> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 5, i32 6, i32 poison, i32 poison, i32 poison>
  %i.bf = fmul <8 x float> %i.be, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float poison, float poison, float poison>
  %i.bg = shufflevector <8 x float> %i.bd, <8 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 12>
  br label %bb.b

bb.b:                                             ; preds = %b3Normalize.exit, %bb.a
  %.sroa.7140.0 = phi float [ %i.av, %b3Normalize.exit ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %i.bh = phi <8 x float> [ %i.bg, %b3Normalize.exit ], [ <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 14 uses
  %i.bi = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bj = shufflevector <4 x float> %i.r, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bk = fadd float %.sroa.11186.0.copyload, %.sroa.11177.0.copyload
  %i.bl = fmul float %i.q, 1.250000e-01
  %i.bm = fmul float %i.c, 3.000000e+00
  %i.bn = fmul float %sqrt.i.i, 2.000000e+00
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = fmul float %i.bl, %i.bo
  %i.bq = fmul float %sqrt.i.i, %i.bp             ; 2 uses
  %i.br = fadd float %i.bq, %i.bk                 ; 2 uses
  %i.bs = fadd float %.sroa.0178.0.copyload, %.sroa.0169.0.copyload
  %i.bt = fadd <2 x float> %i.u, %i.w             ; 3 uses
  %i.bu = fadd <2 x float> %i.bj, %i.bi           ; 3 uses
  %i.bv = insertelement <2 x float> %i.t, float %.sroa.4179.0.copyload, i64 1
  %i.bw = insertelement <2 x float> %i.v, float %.sroa.4170.0.copyload, i64 1
  %i.bx = fadd <2 x float> %i.bv, %i.bw           ; 3 uses
  %i.by = fadd float %i.q, %i.m
  %i.bz = fadd <2 x float> %.sroa.068.0.copyload, %.sroa.065.0.copyload
  %i.ca = fadd float %.sroa.671.0.copyload, %.sroa.6.0.copyload
  %i.cb = fmul <2 x float> %i.bz, splat (float 5.000000e-01)
  %i.cc = fmul float %i.ca, 5.000000e-01
  store float %i.by, ptr %0, align 4, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.cb, ptr %i.cd, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.cc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = extractelement <8 x float> %i.bh, i64 0 ; 2 uses
  %i.cg = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 5, i32 7> ; 2 uses
  %i.ch = fmul <2 x float> %i.bu, %i.cg           ; 2 uses
  %shift230 = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop231 = fadd <2 x float> %shift230, %i.ch
  %i.ci = extractelement <2 x float> %foldExtExtBinop231, i64 0
  %i.cj = fmul float %i.br, %i.cf
  %i.ck = fadd float %i.cj, %i.ci                 ; 2 uses
  %i.cl = insertelement <2 x float> %i.t, float %i.bq, i64 0
  %i.cm = insertelement <2 x float> %i.v, float %i.bs, i64 0
  %i.cn = fadd <2 x float> %i.cl, %i.cm           ; 3 uses
  %i.co = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 7, i32 5>
  %i.cp = fmul <2 x float> %i.bx, %i.co
  %i.cq = fmul <2 x float> %i.cn, %i.cg
  %i.cr = fadd <2 x float> %i.cp, %i.cq
  %i.cs = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.bt, %i.cs
  %i.cu = fadd <2 x float> %i.ct, %i.cr           ; 3 uses
  %i.cv = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 4, i32 2> ; 2 uses
  %i.cw = fmul <2 x float> %i.bx, %i.cv
  %i.cx = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.cy = fmul <2 x float> %i.bt, %i.cx
  %i.cz = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 3, i32 6> ; 3 uses
  %i.da = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.db = fmul <2 x float> %i.cn, %i.da
  %i.dc = fadd <2 x float> %i.cw, %i.db
  %i.dd = fadd <2 x float> %i.cy, %i.dc           ; 3 uses
  %i.de = insertelement <2 x float> %i.da, float %.sroa.7140.0, i64 0 ; 3 uses
  %i.df = fmul <2 x float> %i.de, %i.dd
  %i.dg = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.dh = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = fadd <2 x float> %i.df, %i.di
  %i.dk = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = insertelement <2 x float> %i.cv, float %.sroa.7140.0, i64 1
  %i.dm = fmul <2 x float> %i.dk, %i.dl
  %i.dn = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.do = fmul <2 x float> %i.bu, %i.dn
  %i.dp = fadd <2 x float> %i.do, %i.dm
  %i.dq = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 6, i32 3>
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = fadd <2 x float> %i.dt, %i.dp           ; 3 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.cz, %i.dv
  %i.dx = fadd <2 x float> %i.dw, %i.dj
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 0, i32 0, i32 5, i32 7>
  %i.ea = shufflevector <2 x float> %i.dd, <2 x float> %i.du, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.eb = fmul <4 x float> %i.dz, %i.ea           ; 4 uses
  %5 = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %shift236 = fadd <4 x float> %5, %6
  %foldExtExtBinop237 = fadd <4 x float> %i.eb, %shift236
  %i.ec = extractelement <4 x float> %foldExtExtBinop237, i64 0
  %i.ed = insertelement <2 x float> %i.dg, float %.sroa.7140.0, i64 1
  %i.ee = fmul <2 x float> %i.bx, %i.ed
  %i.ef = shufflevector <8 x float> %i.bh, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.eg = fmul <2 x float> %i.bt, %i.ef
  %i.eh = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = fmul <2 x float> %i.cz, %i.eh
  %i.ej = insertelement <2 x float> %i.dn, float %.sroa.7140.0, i64 0
  %i.ek = fmul <2 x float> %i.cn, %i.ej
  %i.el = fadd <2 x float> %i.ee, %i.ek
  %i.em = fadd <2 x float> %i.eg, %i.el           ; 3 uses
  %i.en = fmul <2 x float> %i.de, %i.em
  %i.eo = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ep = fmul <2 x float> %i.dg, %i.eo
  %i.eq = fadd <2 x float> %i.en, %i.ep
  %i.er = fadd <2 x float> %i.ei, %i.eq
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.et = fmul <2 x float> %i.de, %i.cu
  %i.eu = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ev = fmul <2 x float> %i.dg, %i.eu
  %i.ew = fadd <2 x float> %i.et, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.cz, %i.ey
  %i.fa = fadd <2 x float> %i.ez, %i.ew
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = shufflevector <8 x float> %i.bh, <8 x float> poison, <4 x i32> <i32 5, i32 7, i32 5, i32 7>
  %i.fd = shufflevector <2 x float> %i.em, <2 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = fmul <4 x float> %i.fc, %i.fd           ; 4 uses
  %shift239 = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop240 = fadd <4 x float> %i.fe, %shift239
  %shift242 = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop243 = fadd <4 x float> %shift242, %foldExtExtBinop240
  %i.ff = extractelement <4 x float> %foldExtExtBinop243, i64 0
  %shift245 = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop246 = fadd <4 x float> %i.fe, %shift245
  %i.fg = extractelement <4 x float> %foldExtExtBinop246, i64 2
  %i.fh = fmul float %i.cf, %i.ck
  %i.fi = fadd float %i.fh, %i.fg
  store <2 x float> %i.dy, ptr %i.ce, align 4, !tbaa !9
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ec, ptr %.sroa.4126.0..sroa_idx, align 4, !tbaa !9
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> %i.es, ptr %.sroa.5127.0..sroa_idx, align 4, !tbaa !9
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ff, ptr %.sroa.6128.0..sroa_idx, align 4, !tbaa !9
  %.sroa.7129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.fb, ptr %.sroa.7129.0..sroa_idx, align 4, !tbaa !9
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.fi, ptr %.sroa.8130.0..sroa_idx, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @b3CylinderInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @b3SphereInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare { <2 x float>, <2 x float> } @b3ComputeQuatBetweenUnitVectors(<2 x float>, float, <2 x float>, float) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @b3ComputeCapsuleAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load float, ptr %i.a, align 4, !tbaa !12 ; 3 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0117.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load <1 x float>, ptr %.sroa.4118.0..sroa_idx, align 8
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5119.0.copyload = load <2 x float>, ptr %.sroa.5119.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6120.0.copyload = load <2 x float>, ptr %.sroa.6120.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5119.0.copyload, i64 0 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 4 uses
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.051.0.copyload, %.sroa.6120.0.copyload
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %.sroa.252.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.f = fsub float %i.d, %i.e
  %i.g = shufflevector <2 x float> %.sroa.051.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.h = insertelement <2 x float> %i.g, float %.sroa.252.0.copyload, i64 1 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %.sroa.5119.0.copyload
  %i.j = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> %.sroa.6120.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.k = fmul <2 x float> %.sroa.051.0.copyload, %i.j
  %i.l = fsub <2 x float> %i.i, %i.k              ; 2 uses
  %i.m = insertelement <2 x float> %i.g, float %.sroa.252.0.copyload, i64 0
  %i.n = shufflevector <2 x float> %.sroa.6120.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.o = fmul <2 x float> %i.m, %i.n
  %i.p = fmul <2 x float> %i.h, %i.n
  %i.q = fadd <2 x float> %i.o, %i.l              ; 2 uses
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.f, i64 0
  %i.t = fadd <2 x float> %i.p, %i.s              ; 2 uses
  %i.u = fmul <2 x float> %i.j, %i.q
  %i.v = shufflevector <2 x float> %.sroa.6120.0.copyload, <2 x float> %.sroa.5119.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.t
  %i.x = fsub <2 x float> %i.u, %i.w
  %i.y = fmul <2 x float> %i.x, splat (float 2.000000e+00)
  %i.z = fadd <2 x float> %.sroa.051.0.copyload, %i.y
  %i.aa = fadd <2 x float> %.sroa.0117.0.copyload, %i.z ; 4 uses
  %foldExtExtBinop122 = fmul <2 x float> %.sroa.6120.0.copyload, %.sroa.043.0.copyload
  %i.ab = extractelement <2 x float> %foldExtExtBinop122, i64 0
  %i.ac = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.244.0.copyload
  %i.ad = fsub float %i.ab, %i.ac
  %i.ae = shufflevector <2 x float> %.sroa.043.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.244.0.copyload, i64 1 ; 2 uses
  %i.ag = fmul <2 x float> %.sroa.5119.0.copyload, %i.af
  %i.ah = fmul <2 x float> %i.j, %.sroa.043.0.copyload
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = insertelement <2 x float> %i.ae, float %.sroa.244.0.copyload, i64 0
  %i.ak = fmul <2 x float> %i.n, %i.aj
  %i.al = fmul <2 x float> %i.n, %i.af
  %i.am = fadd <2 x float> %i.ak, %i.ai           ; 2 uses
  %i.an = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.ad, i64 0
  %i.ap = fadd <2 x float> %i.al, %i.ao           ; 2 uses
  %i.aq = fmul <2 x float> %i.j, %i.am
  %i.ar = fmul <2 x float> %i.v, %i.ap
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = fmul <2 x float> %i.as, splat (float 2.000000e+00)
  %i.au = fadd <2 x float> %.sroa.043.0.copyload, %i.at
  %i.av = fadd <2 x float> %.sroa.0117.0.copyload, %i.au ; 4 uses
  %i.aw = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x float> %i.t, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.ay = fmul <2 x float> %i.aw, %i.ax
  %i.az = shufflevector <2 x float> %.sroa.5119.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = shufflevector <2 x float> %i.q, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = fsub <2 x float> %i.ay, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 2.000000e+00)
  %i.be = insertelement <2 x float> poison, float %.sroa.252.0.copyload, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %.sroa.244.0.copyload, i64 1
  %i.bg = fadd <2 x float> %i.bf, %i.bd
  %i.bh = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fadd <2 x float> %i.bh, %i.bg           ; 2 uses
  %i.bj = fcmp olt <2 x float> %i.aa, %i.av
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.aa, <2 x float> %i.av
  %i.bl = extractelement <2 x float> %i.bi, i64 0 ; 4 uses
  %i.bm = extractelement <2 x float> %i.bi, i64 1 ; 4 uses
  %i.bn = fcmp olt float %i.bl, %i.bm
  %i.bo = select i1 %i.bn, float %i.bl, float %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fsub <2 x float> %i.bk, %i.bq
  %i.bs = fsub float %i.bo, %i.b
  store <2 x float> %i.br, ptr %0, align 4, !tbaa !9
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bs, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bu = fcmp ogt float %i.bl, %i.bm
  %i.bv = select i1 %i.bu, float %i.bl, float %i.bm
  %i.bw = fcmp ogt <2 x float> %i.aa, %i.av
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.aa, <2 x float> %i.av
  %i.by = fadd <2 x float> %i.bq, %i.bx
  %i.bz = fadd float %i.b, %i.bv
  store <2 x float> %i.by, ptr %i.bt, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bz, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @b3ComputeSweptCapsuleAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load float, ptr %i.a, align 4, !tbaa !12 ; 3 uses
  %.sroa.0103.0.copyload = load <2 x float>, ptr %1, align 4 ; 7 uses
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0258.0.copyload = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %4 = load <2 x float>, ptr %.sroa.4259.0..sroa_idx, align 8
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.5260.0.copyload = load <2 x float>, ptr %.sroa.5260.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.6261.0.copyload = load <2 x float>, ptr %.sroa.6261.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5260.0.copyload, i64 0 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 7 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0250.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4251.0.copyload = load float, ptr %.sroa.4251.0..sroa_idx, align 8
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5252.0.copyload = load <2 x float>, ptr %.sroa.5252.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6253.0.copyload = load <2 x float>, ptr %.sroa.6253.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.0.vec.extract.i.i154 = extractelement <2 x float> %.sroa.5252.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0103.0.copyload, %.sroa.6261.0.copyload
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %.sroa.2104.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.f = fsub float %i.d, %i.e
  %i.g = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.h = insertelement <2 x float> %i.g, float %.sroa.2104.0.copyload, i64 1 ; 4 uses
  %i.i = fmul <2 x float> %i.h, %.sroa.5260.0.copyload
  %i.j = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.6261.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.k = fmul <2 x float> %.sroa.0103.0.copyload, %i.j
  %i.l = fsub <2 x float> %i.i, %i.k              ; 2 uses
  %i.m = insertelement <2 x float> %i.g, float %.sroa.2104.0.copyload, i64 0 ; 2 uses
  %i.n = shufflevector <2 x float> %.sroa.6261.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.o = fmul <2 x float> %i.m, %i.n
  %i.p = fmul <2 x float> %i.h, %i.n
  %i.q = fadd <2 x float> %i.o, %i.l              ; 2 uses
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.f, i64 0
  %i.t = fadd <2 x float> %i.p, %i.s              ; 2 uses
  %i.u = fmul <2 x float> %i.j, %i.q
  %i.v = shufflevector <2 x float> %.sroa.6261.0.copyload, <2 x float> %.sroa.5260.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.t
  %i.x = fsub <2 x float> %i.u, %i.w
  %i.y = fmul <2 x float> %i.x, splat (float 2.000000e+00)
  %i.z = fadd <2 x float> %.sroa.0103.0.copyload, %i.y
  %i.aa = fadd <2 x float> %.sroa.0258.0.copyload, %i.z ; 4 uses
  %foldExtExtBinop263 = fmul <2 x float> %.sroa.6261.0.copyload, %.sroa.094.0.copyload
  %i.ab = extractelement <2 x float> %foldExtExtBinop263, i64 0
  %i.ac = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.295.0.copyload
  %i.ad = fsub float %i.ab, %i.ac
  %i.ae = shufflevector <2 x float> %.sroa.094.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.295.0.copyload, i64 1 ; 4 uses
  %i.ag = fmul <2 x float> %.sroa.5260.0.copyload, %i.af
  %i.ah = fmul <2 x float> %i.j, %.sroa.094.0.copyload
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = insertelement <2 x float> %i.ae, float %.sroa.295.0.copyload, i64 0 ; 2 uses
  %i.ak = fmul <2 x float> %i.n, %i.aj
  %i.al = fmul <2 x float> %i.n, %i.af
  %i.am = fadd <2 x float> %i.ak, %i.ai           ; 2 uses
  %i.an = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.ad, i64 0
  %i.ap = fadd <2 x float> %i.al, %i.ao           ; 2 uses
  %i.aq = fmul <2 x float> %i.j, %i.am
  %i.ar = fmul <2 x float> %i.v, %i.ap
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = fmul <2 x float> %i.as, splat (float 2.000000e+00)
  %i.au = fadd <2 x float> %.sroa.094.0.copyload, %i.at
  %i.av = fadd <2 x float> %.sroa.0258.0.copyload, %i.au ; 4 uses
  %foldExtExtBinop265 = fmul <2 x float> %.sroa.0103.0.copyload, %.sroa.6253.0.copyload
  %i.aw = extractelement <2 x float> %foldExtExtBinop265, i64 0
  %i.ax = fmul float %.sroa.2104.0.copyload, %.sroa.011.0.vec.extract.i.i154
  %i.ay = fsub float %i.aw, %i.ax
  %i.az = fmul <2 x float> %i.h, %.sroa.5252.0.copyload
  %i.ba = shufflevector <2 x float> %.sroa.5252.0.copyload, <2 x float> %.sroa.6253.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bb = fmul <2 x float> %.sroa.0103.0.copyload, %i.ba
  %i.bc = fsub <2 x float> %i.az, %i.bb           ; 2 uses
  %i.bd = shufflevector <2 x float> %.sroa.6253.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.be = fmul <2 x float> %i.m, %i.bd
  %i.bf = fmul <2 x float> %i.h, %i.bd
  %i.bg = fadd <2 x float> %i.be, %i.bc           ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x float> %i.bh, float %i.ay, i64 0
  %i.bj = fadd <2 x float> %i.bf, %i.bi           ; 2 uses
  %i.bk = fmul <2 x float> %i.ba, %i.bg
  %i.bl = shufflevector <2 x float> %.sroa.6253.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bj
  %i.bn = fsub <2 x float> %i.bk, %i.bm
  %i.bo = fmul <2 x float> %i.bn, splat (float 2.000000e+00)
  %i.bp = fadd <2 x float> %.sroa.0103.0.copyload, %i.bo
  %i.bq = fadd <2 x float> %.sroa.0250.0.copyload, %i.bp ; 4 uses
  %foldExtExtBinop267 = fmul <2 x float> %.sroa.094.0.copyload, %.sroa.6253.0.copyload
  %i.br = extractelement <2 x float> %foldExtExtBinop267, i64 0
  %i.bs = fmul float %.sroa.295.0.copyload, %.sroa.011.0.vec.extract.i.i154
  %i.bt = fsub float %i.br, %i.bs
  %i.bu = fmul <2 x float> %i.af, %.sroa.5252.0.copyload
  %i.bv = fmul <2 x float> %.sroa.094.0.copyload, %i.ba
  %i.bw = fsub <2 x float> %i.bu, %i.bv           ; 2 uses
  %i.bx = fmul <2 x float> %i.aj, %i.bd
  %i.by = fmul <2 x float> %i.af, %i.bd
  %i.bz = fadd <2 x float> %i.bx, %i.bw           ; 2 uses
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.bt, i64 0
  %i.cc = fadd <2 x float> %i.by, %i.cb           ; 2 uses
  %i.cd = fmul <2 x float> %i.ba, %i.bz
  %i.ce = fmul <2 x float> %i.bl, %i.cc
  %i.cf = fsub <2 x float> %i.cd, %i.ce
  %i.cg = fmul <2 x float> %i.cf, splat (float 2.000000e+00)
  %i.ch = fadd <2 x float> %.sroa.094.0.copyload, %i.cg
  %i.ci = fadd <2 x float> %.sroa.0250.0.copyload, %i.ch ; 4 uses
  %i.cj = fcmp olt <2 x float> %i.aa, %i.av
  %i.ck = select <2 x i1> %i.cj, <2 x float> %i.aa, <2 x float> %i.av ; 2 uses
  %i.cl = fcmp olt <2 x float> %i.bq, %i.ci
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.bq, <2 x float> %i.ci ; 2 uses
  %i.cn = fcmp olt <2 x float> %i.ck, %i.cm
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.ck, <2 x float> %i.cm
  %i.cp = insertelement <2 x float> poison, float %i.b, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fsub <2 x float> %i.co, %i.cq
  store <2 x float> %i.cr, ptr %0, align 4
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cu = shufflevector <2 x float> %i.t, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x float> %i.ct, %i.cu
  %i.cw = shufflevector <2 x float> %.sroa.5260.0.copyload, <2 x float> %.sroa.5252.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cx = shufflevector <2 x float> %i.q, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  %i.cz = fsub <2 x float> %i.cv, %i.cy
  %i.da = fmul <2 x float> %i.cz, splat (float 2.000000e+00)
  %i.db = insertelement <2 x float> poison, float %.sroa.2104.0.copyload, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fadd <2 x float> %i.dc, %i.da
  %i.de = insertelement <2 x float> %4, float %.sroa.4251.0.copyload, i64 1 ; 2 uses
  %i.df = fadd <2 x float> %i.de, %i.dd           ; 4 uses
  %i.dg = shufflevector <2 x float> %i.ap, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.dh = fmul <2 x float> %i.ct, %i.dg
  %i.di = shufflevector <2 x float> %i.am, <2 x float> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.dj = fmul <2 x float> %i.cw, %i.di
  %i.dk = fsub <2 x float> %i.dh, %i.dj
  %i.dl = fmul <2 x float> %i.dk, splat (float 2.000000e+00)
  %i.dm = insertelement <2 x float> poison, float %.sroa.295.0.copyload, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x float> %i.dn, %i.dl
  %i.dp = fadd <2 x float> %i.de, %i.do           ; 4 uses
  %i.dq = fcmp olt <2 x float> %i.df, %i.dp
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.df, <2 x float> %i.dp ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  %i.dt = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.du = fcmp olt float %i.ds, %i.dt
  %i.dv = select i1 %i.du, float %i.ds, float %i.dt
  %i.dw = fsub float %i.dv, %i.b
  store float %i.dw, ptr %.sroa.238.0..sroa_idx, align 4
  %i.dx = fcmp ogt <2 x float> %i.df, %i.dp
  %i.dy = select <2 x i1> %i.dx, <2 x float> %i.df, <2 x float> %i.dp ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.ea = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.eb = fcmp ogt float %i.dz, %i.ea
  %i.ec = select i1 %i.eb, float %i.dz, float %i.ea
  %i.ed = fcmp ogt <2 x float> %i.aa, %i.av
  %i.ee = select <2 x i1> %i.ed, <2 x float> %i.aa, <2 x float> %i.av ; 2 uses
  %i.ef = fcmp ogt <2 x float> %i.bq, %i.ci
  %i.eg = select <2 x i1> %i.ef, <2 x float> %i.bq, <2 x float> %i.ci ; 2 uses
  %i.eh = fcmp ogt <2 x float> %i.ee, %i.eg
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.ee, <2 x float> %i.eg
  %i.ej = fadd <2 x float> %i.cq, %i.ei
  %i.ek = fadd float %i.b, %i.ec
  store <2 x float> %i.ej, ptr %i.cs, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ek, ptr %.sroa.2.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapCapsule(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3DistanceInput, align 8    ; 12 uses
  %4 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %5 = alloca %struct.b3DistanceOutput, align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  store ptr %0, ptr %3, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.b, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.09.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.410.0.copyload = load float, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.511.0.copyload = load <2 x float>, ptr %.sroa.511.0..sroa_idx, align 4 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 6 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 0
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.e = fsub <2 x float> zeroinitializer, %.sroa.09.0.copyload ; 4 uses
  %i.f = fsub float 0.000000e+00, %.sroa.410.0.copyload ; 3 uses
  %i.g = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.h = insertelement <2 x float> %i.g, float %i.f, i64 1 ; 2 uses
  %i.i = fmul <2 x float> %i.h, %.sroa.511.0.copyload
  %i.j = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.511.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.k = fmul <2 x float> %i.e, %i.j
  %i.l = shufflevector <2 x float> %.sroa.511.0.copyload, <2 x float> %.sroa.7.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.m = fmul <2 x float> %i.e, %i.l
  %i.n = insertelement <2 x float> %i.g, float %i.f, i64 0 ; 2 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.511.0.copyload
  %i.p = fsub <2 x float> %i.i, %i.m
  %i.q = fsub <2 x float> %i.k, %i.o
  %i.r = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.s = fmul <2 x float> %i.n, %i.r
  %i.t = fmul <2 x float> %i.h, %i.r
  %i.u = fsub <2 x float> %i.p, %i.s              ; 2 uses
  %i.v = fsub <2 x float> %i.q, %i.t              ; 2 uses
  %i.w = fmul <2 x float> %i.l, %i.u
  %i.x = fmul <2 x float> %i.j, %i.v
  %i.y = fsub <2 x float> %i.w, %i.x
  %foldExtExtBinop = fmul <2 x float> %.sroa.511.0.copyload, %i.v
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.511.0.copyload, %i.u
  %shift = shufflevector <2 x float> %foldExtExtBinop15, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.z = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.aa = fmul <2 x float> %i.y, splat (float 2.000000e+00)
  %i.ab = fadd <2 x float> %i.e, %i.aa
  %i.ac = fmul float %i.z, 2.000000e+00
  %i.ad = fadd float %i.f, %i.ac
  %i.ae = shufflevector <2 x float> %.sroa.511.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.af = fmul <4 x float> %i.ae, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 5 uses
  %i.ag = extractelement <4 x float> %i.af, i64 1 ; 2 uses
  %i.ah = extractelement <4 x float> %i.af, i64 2
  %i.ai = extractelement <4 x float> %i.af, i64 0 ; 2 uses
  %i.aj = fsub float %i.ag, %i.ai
  %i.ak = fmul float %.sroa.3.12.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.al = fadd float %i.aj, %i.ak
  %i.am = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.an = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = fsub <2 x float> %i.ar, %.sroa.511.0.copyload
  %i.at = fsub float %i.al, %.sroa.3.8.vec.extract.i
  %.sroa.251.8.vec.insert.i = insertelement <2 x float> poison, float %i.at, i64 0
  %i.au = fadd float %i.ai, %i.ag
  %i.av = fadd float %i.ah, %i.au
  %i.aw = fadd float %.sroa.3.12.vec.extract.i, %i.av
  %.sroa.251.12.vec.insert.i = insertelement <2 x float> %.sroa.251.8.vec.insert.i, float %i.aw, i64 1
  store <2 x float> %i.ab, ptr %i.d, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  store <2 x float> %i.as, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <2 x float> %.sroa.251.12.vec.insert.i, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i8 1, ptr %i.ax, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.az = load float, ptr %i.ay, align 4, !tbaa !28
  %i.ba = call float @b3GetLengthUnitsPerMeter() #8
  %i.bb = fmul float %i.ba, 5.000000e-03
  %i.bc = fmul float %i.bb, 1.000000e-01
  %i.bd = fcmp olt float %i.az, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %i.bd
}

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @b3RayCastCapsule(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %4 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %5 = alloca %struct.b3Sphere, align 8           ; 6 uses
  %6 = alloca %struct.b3Sphere, align 8           ; 5 uses
  %.sroa.0394.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !9 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0389.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %.sroa.5391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load <2 x float>, ptr %.sroa.5391.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %i.c = extractelement <2 x float> %i.b, i64 1   ; 6 uses
  %i.d = fsub <2 x float> %.sroa.0389.0.copyload, %.sroa.0394.0.copyload ; 3 uses
  %i.e = extractelement <2 x float> %i.b, i64 0
  %i.f = fsub float %i.e, %.sroa.8.0.copyload     ; 3 uses
  %i.g = tail call float @b3GetLengthUnitsPerMeter() #8
  %i.h = fmul float %i.g, 5.000000e-03
  %i.i = fmul float %i.h, f0x3C23D70A             ; 2 uses
  %i.j = fmul <2 x float> %i.d, %i.d              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.f, %i.f
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fmul float %i.i, %i.i
  %i.o = fcmp olt float %i.m, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0263.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.2264.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.0261.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.2262.0.copyload = load float, ptr %.sroa.5391.0..sroa_idx, align 4
  %i.q = fadd float %.sroa.2264.0.copyload, %.sroa.2262.0.copyload
  %i.r = fadd <2 x float> %.sroa.0263.0.copyload, %.sroa.0261.0.copyload
  %i.s = fmul <2 x float> %i.r, splat (float 5.000000e-01)
  %i.t = fmul float %i.q, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store <2 x float> %i.s, ptr %3, align 8, !tbaa !9
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.t, ptr %.sroa.4268.0..sroa_idx, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load float, ptr %i.p, align 4, !tbaa !12
  store float %i.v, ptr %i.u, align 4, !tbaa !30
  call void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4 %0, ptr noundef nonnull %3, ptr noundef %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %.sroa.0241.0.copyload = load <2 x float>, ptr %2, align 4 ; 2 uses
  %.sroa.2242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
