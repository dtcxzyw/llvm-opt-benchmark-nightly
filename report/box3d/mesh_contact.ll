Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh_contact?download=true
inline.NumInlined: 145
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3Transform = type { %struct.b3Vec3, %struct.b3Quat }
%struct.b3Vec3 = type { float, float, float }
%struct.b3Quat = type { %struct.b3Vec3, float }
%struct.b3Arena = type { ptr, i32, i32, ptr }
%struct.b3BlockAllocator = type { %struct.b3DynamicArray_b3Block, ptr, i32, i32, i32 }
%struct.b3DynamicArray_b3Block = type { ptr, i32, i32 }
%struct.b3LocalManifoldPoint = type { %struct.b3Vec3, float, %struct.b3FeaturePair, i32 }
%struct.b3FeaturePair = type { i8, i8, i8, i8 }
%struct.b3TriangleQueryContext = type { ptr, i32, i32 }
%struct.b3AABB = type { %struct.b3Vec3, %struct.b3Vec3 }
%union.b3ContactCache = type { %struct.b3SimplexCache }
%struct.b3SimplexCache = type { float, i16, [4 x i8], [4 x i8] }
%struct.b3FoundEdges = type { [64 x i64], i32 }
%struct.b3FoundVertices = type { [64 x i32], i32 }
%struct.b3Triangle = type { [3 x %struct.b3Vec3], i32, i32, i32, i32 }
%struct.anon = type { i64, i64 }

@b3RefreshCache.s_once = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [71 x i8] c"WARNING: complex mesh detected, triangle buffer capacity of %d reached\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3ComputeMeshManifolds(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %5, ptr noundef %6, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %7, i1 noundef zeroext %8, ptr noundef byval(%struct.b3Arena) align 8 %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.b3BlockAllocator, align 8  ; 4 uses
  %.sroa.21.sroa.6.i.i = alloca [16 x i8], align 8 ; 4 uses
  %11 = alloca [4 x %struct.b3LocalManifoldPoint], align 16 ; 7 uses
  %12 = alloca %struct.b3Arena, align 8           ; 8 uses
  %13 = alloca %struct.b3TriangleQueryContext, align 8 ; 6 uses
  %14 = alloca %struct.b3AABB, align 8            ; 7 uses
  %15 = alloca %struct.b3TriangleQueryContext, align 8 ; 6 uses
  %16 = alloca %struct.b3AABB, align 8            ; 7 uses
  %i.a = alloca [256 x i32], align 16             ; 8 uses
  %17 = alloca [256 x %union.b3ContactCache], align 16 ; 7 uses
  %18 = alloca %struct.b3FoundEdges, align 8      ; 30 uses
  %19 = alloca %struct.b3FoundVertices, align 4   ; 27 uses
  %20 = alloca %struct.b3Triangle, align 8        ; 13 uses
  %21 = alloca %struct.b3Triangle, align 8        ; 13 uses
  %22 = alloca [3 x %struct.b3Vec3], align 16     ; 13 uses
  %23 = alloca [32 x %struct.anon], align 16      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [3848 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.sroa.41490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.51491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load <2 x float>, ptr %5, align 8        ; 6 uses
  %i.h = load <2 x float>, ptr %.sroa.41490.0..sroa_idx, align 4 ; 4 uses
  %.sroa.61492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.61492.0.copyload = load <2 x float>, ptr %.sroa.61492.0..sroa_idx, align 4 ; 21 uses
  %.sroa.71493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.71493.0.copyload = load <2 x float>, ptr %.sroa.71493.0..sroa_idx, align 4 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %.sroa.5167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.sroa.5167.0.copyload.i = load float, ptr %.sroa.5167.0..sroa_idx.i, align 4, !tbaa !106
  %.sroa.6168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !106
  %.sroa.5196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %.sroa.5196.0.copyload.i = load float, ptr %.sroa.5196.0..sroa_idx.i, align 8
  %.sroa.6197.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 2 uses
  %.sroa.8199.0.copyload.i = load float, ptr %.sroa.8199.0..sroa_idx.i, align 4
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !106
  %i.l = load <2 x float>, ptr %.sroa.6168.0..sroa_idx.i, align 4, !tbaa !106
  %i.m = load <2 x float>, ptr %i.j, align 8
  %i.n = load <2 x float>, ptr %.sroa.6197.0..sroa_idx.i, align 4
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.l, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.p = shufflevector <2 x float> %i.k, <2 x float> %i.n, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.q = fcmp ule <4 x float> %i.o, %i.p
  %i.r = fcmp ule float %.sroa.5196.0.copyload.i, %.sroa.5167.0.copyload.i
  %i.s = fcmp ule float %.sroa.8.0.copyload.i, %.sroa.8199.0.copyload.i
  %i.t = freeze <4 x i1> %i.q
  %i.u = bitcast <4 x i1> %i.t to i4
  %i.v = icmp eq i4 %i.u, -1
  %.fr = freeze i1 %i.r
  %op.rdx = and i1 %i.v, %.fr
  %op.rdx1969 = select i1 %op.rdx, i1 %i.s, i1 false
  br i1 %op.rdx1969, label %b3RefreshCache.exit, label %b3AABB_Contains.exit.thread.i

b3AABB_Contains.exit.thread.i:                    ; preds = %bb.a
  %i.w = tail call float @b3GetLengthUnitsPerMeter() #7
  %i.x = fmul float %i.w, 5.000000e-02
  %i.y = tail call float @b3GetLengthUnitsPerMeter() #7
  %i.z = fmul float %i.y, 5.000000e-03
  %i.aa = fmul float %i.z, 4.000000e+00
  %i.ab = fadd float %i.x, %i.aa                  ; 3 uses
  %.sroa.048.0.copyload.i = load <2 x float>, ptr %i.f, align 4
  %.sroa.249.0.copyload.i = load float, ptr %.sroa.5167.0..sroa_idx.i, align 4
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = fsub <2 x float> %.sroa.048.0.copyload.i, %i.ad ; 3 uses
  %i.af = fsub float %.sroa.249.0.copyload.i, %i.ab ; 3 uses
  store <2 x float> %i.ae, ptr %i.j, align 8, !tbaa !106
  store float %i.af, ptr %.sroa.5196.0..sroa_idx.i, align 8, !tbaa !106
  %.sroa.038.0.copyload.i = load <2 x float>, ptr %.sroa.6168.0..sroa_idx.i, align 4
  %.sroa.239.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4
  %i.ag = fadd <2 x float> %i.ad, %.sroa.038.0.copyload.i ; 3 uses
  %i.ah = fadd float %i.ab, %.sroa.239.0.copyload.i ; 3 uses
  store <2 x float> %i.ag, ptr %.sroa.6197.0..sroa_idx.i, align 4, !tbaa !106
  store float %i.ah, ptr %.sroa.8199.0..sroa_idx.i, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.sroa.3.8.vec.extract.i.i.i = extractelement <2 x float> %.sroa.71493.0.copyload, i64 0
  %24 = extractelement <2 x float> %i.h, i64 1    ; 2 uses
  %.sroa.011.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.61492.0.copyload, i64 0
  %.sroa.3.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.71493.0.copyload, i64 1
  %i.ai = fneg float %.sroa.3.8.vec.extract.i.i.i
  %i.aj = fmul float %24, %.sroa.011.0.vec.extract.i.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.g, %.sroa.71493.0.copyload
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = fsub float %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> %.sroa.71493.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.an = fmul <2 x float> %i.g, %i.am
  %25 = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ao = fmul <2 x float> %25, %.sroa.61492.0.copyload
  %i.ap = fsub <2 x float> %i.an, %i.ao           ; 2 uses
  %i.aq = shufflevector <2 x float> %i.h, <2 x float> %i.g, <2 x i32> <i32 1, i32 2>
  %i.ar = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = fmul <2 x float> %25, %i.ar
  %i.au = fadd <2 x float> %i.ap, %i.as           ; 2 uses
  %i.av = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = insertelement <2 x float> %i.av, float %i.al, i64 0
  %i.ax = fadd <2 x float> %i.at, %i.aw           ; 2 uses
  %i.ay = fmul <2 x float> %i.am, %i.au
  %i.az = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> %.sroa.61492.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ba = fmul <2 x float> %i.az, %i.ax
  %i.bb = fsub <2 x float> %i.ay, %i.ba
  %foldExtExtBinop1971 = fmul <2 x float> %.sroa.61492.0.copyload, %i.ax
  %foldExtExtBinop1973 = fmul <2 x float> %.sroa.61492.0.copyload, %i.au
  %shift = shufflevector <2 x float> %foldExtExtBinop1973, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1975 = fsub <2 x float> %foldExtExtBinop1971, %shift
  %i.bc = extractelement <2 x float> %foldExtExtBinop1975, i64 0
  %i.bd = fmul <2 x float> %i.bb, splat (float 2.000000e+00)
  %i.be = fsub <2 x float> %i.bd, %i.g
  %i.bf = fmul float %i.bc, 2.000000e+00
  %i.bg = fsub float %i.bf, %24
  %i.bh = fneg <2 x float> %.sroa.61492.0.copyload
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fadd <2 x float> %i.ae, %i.ag
  %i.bk = fadd float %i.af, %i.ah
  %i.bl = fmul <2 x float> %i.bj, splat (float 5.000000e-01) ; 5 uses
  %i.bm = fmul float %i.bk, 5.000000e-01          ; 4 uses
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bo = insertelement <2 x float> %i.bn, float %i.bm, i64 0
  %i.bp = fmul <2 x float> %.sroa.61492.0.copyload, %i.bo
  %i.bq = fmul <2 x float> %i.am, %i.bl
  %i.br = fmul <2 x float> %i.az, %i.bl
  %i.bs = insertelement <2 x float> %i.bn, float %i.bm, i64 1 ; 2 uses
  %i.bt = fmul <2 x float> %.sroa.61492.0.copyload, %i.bs
  %i.bu = fsub <2 x float> %i.bp, %i.br
  %i.bv = fsub <2 x float> %i.bq, %i.bt
  %i.bw = fmul <2 x float> %i.ar, %i.bs
  %i.bx = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bz = fmul <2 x float> %i.ar, %i.by
  %i.ca = fadd <2 x float> %i.bw, %i.bu           ; 2 uses
  %i.cb = fadd <2 x float> %i.bz, %i.bv           ; 2 uses
  %i.cc = fmul <2 x float> %i.az, %i.ca
  %i.cd = fmul <2 x float> %i.am, %i.cb
  %i.ce = fsub <2 x float> %i.cc, %i.cd
  %foldExtExtBinop1977 = fmul <2 x float> %.sroa.61492.0.copyload, %i.cb
  %foldExtExtBinop1979 = fmul <2 x float> %.sroa.61492.0.copyload, %i.ca
  %shift1981 = shufflevector <2 x float> %foldExtExtBinop1977, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1982 = fsub <2 x float> %shift1981, %foldExtExtBinop1979
  %i.cf = extractelement <2 x float> %foldExtExtBinop1982, i64 0
  %i.cg = fmul <2 x float> %i.ce, splat (float 2.000000e+00)
  %i.ch = fadd <2 x float> %i.bl, %i.cg
  %i.ci = fmul float %i.cf, 2.000000e+00
  %i.cj = fadd float %i.bm, %i.ci
  %i.ck = fadd <2 x float> %i.be, %i.ch           ; 2 uses
  %i.cl = fadd float %i.bg, %i.cj                 ; 2 uses
  %i.cm = fmul <2 x float> %.sroa.61492.0.copyload, %.sroa.61492.0.copyload ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop1984 = fmul <2 x float> %.sroa.71493.0.copyload, %.sroa.71493.0.copyload
  %shift1986 = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1987 = fmul <2 x float> %.sroa.61492.0.copyload, %shift1986
  %i.co = extractelement <2 x float> %foldExtExtBinop1987, i64 0 ; 2 uses
  %i.cp = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %.sroa.61492.0.copyload, %i.cp ; 4 uses
  %i.cr = fmul <2 x float> %i.ar, %i.bi           ; 4 uses
  %i.cs = fmul float %.sroa.3.12.vec.extract.i.i.i, %i.ai ; 2 uses
  %i.ct = fadd float %i.co, %i.cs
  %foldExtExtBinop1989 = fsub <2 x float> %i.cq, %i.cr
  %i.cu = extractelement <2 x float> %foldExtExtBinop1989, i64 0
  %i.cv = fmul float %i.cu, 2.000000e+00          ; 3 uses
  %i.cw = fsub float %i.co, %i.cs
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.ct, i64 1
  %i.cz = fmul <2 x float> %i.cy, splat (float 2.000000e+00) ; 3 uses
  %i.da = shufflevector <2 x float> %foldExtExtBinop1984, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fadd <2 x float> %i.cn, %i.da
  %i.dc = fmul <2 x float> %i.db, splat (float 2.000000e+00)
  %i.dd = fsub <2 x float> splat (float 1.000000e+00), %i.dc ; 3 uses
  %foldExtExtBinop1991 = fadd <2 x float> %i.cq, %i.cr
  %i.de = extractelement <2 x float> %foldExtExtBinop1991, i64 1
  %i.df = fmul float %i.de, 2.000000e+00          ; 3 uses
  %i.dg = fadd <2 x float> %i.cq, %i.cr
  %i.dh = fsub <2 x float> %i.cq, %i.cr
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> %i.dh, <2 x i32> <i32 0, i32 3>
  %i.dj = fmul <2 x float> %i.di, splat (float 2.000000e+00) ; 3 uses
  %i.dk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cm)
  %i.dl = fmul float %i.dk, 2.000000e+00
  %i.dm = fsub float 1.000000e+00, %i.dl          ; 3 uses
  %i.dn = fcmp olt float %i.cv, 0.000000e+00
  %i.do = fneg float %i.cv
  %i.dp = select i1 %i.dn, float %i.do, float %i.cv
  %i.dq = fcmp olt <2 x float> %i.cz, zeroinitializer
  %i.dr = fneg <2 x float> %i.cz
  %i.ds = select <2 x i1> %i.dq, <2 x float> %i.dr, <2 x float> %i.cz
  %i.dt = fcmp olt <2 x float> %i.dd, zeroinitializer
  %i.du = fneg <2 x float> %i.dd
  %i.dv = select <2 x i1> %i.dt, <2 x float> %i.du, <2 x float> %i.dd
  %i.dw = fcmp olt float %i.df, 0.000000e+00
  %i.dx = fneg float %i.df
  %i.dy = select i1 %i.dw, float %i.dx, float %i.df
  %i.dz = fcmp olt <2 x float> %i.dj, zeroinitializer
  %i.ea = fneg <2 x float> %i.dj
  %i.eb = select <2 x i1> %i.dz, <2 x float> %i.ea, <2 x float> %i.dj
  %i.ec = fcmp olt float %i.dm, 0.000000e+00
  %i.ed = fneg float %i.dm
  %i.ee = select i1 %i.ec, float %i.ed, float %i.dm
  %i.ef = fsub <2 x float> %i.ag, %i.ae
  %i.eg = fsub float %i.ah, %i.af
  %i.eh = fmul <2 x float> %i.ef, splat (float 5.000000e-01) ; 4 uses
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = fmul float %i.eg, 5.000000e-01          ; 2 uses
  %i.ek = fmul <2 x float> %i.ds, %i.ei
  %i.el = fmul <2 x float> %i.dv, %i.eh
  %i.em = fadd <2 x float> %i.ek, %i.el
  %i.en = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.eb, %i.eo
  %i.eq = fadd <2 x float> %i.ep, %i.em           ; 2 uses
  %i.er = extractelement <2 x float> %i.eh, i64 0
  %i.es = fmul float %i.dp, %i.er
  %i.et = extractelement <2 x float> %i.eh, i64 1
  %i.eu = fmul float %i.dy, %i.et
  %i.ev = fadd float %i.es, %i.eu
  %i.ew = fmul float %i.ee, %i.ej
  %i.ex = fadd float %i.ew, %i.ev                 ; 2 uses
  %i.ey = fsub <2 x float> %i.ck, %i.eq           ; 2 uses
  %i.ez = fsub float %i.cl, %i.ex                 ; 2 uses
  %i.fa = fadd <2 x float> %i.eq, %i.ck           ; 2 uses
  %i.fb = fadd float %i.ex, %i.cl                 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !112
  %i.fe = icmp eq i32 %i.fd, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  br i1 %i.fe, label %bb.b, label %bb.c

bb.b:                                             ; preds = %b3AABB_Contains.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store <2 x float> %i.ey, ptr %16, align 8
  %.sroa.5.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.ez, ptr %.sroa.5.0..sroa_idx153.i, align 8
  %.sroa.6.0..sroa_idx156.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  store <2 x float> %i.fa, ptr %.sroa.6.0..sroa_idx156.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 20
  store float %i.fb, ptr %.sroa.7.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  store ptr %i.a, ptr %15, align 8, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 256, ptr %i.fg, align 8, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 0, ptr %i.fh, align 4, !tbaa !13
  call void @b3QueryMesh(ptr noundef nonnull %i.ff, ptr noundef nonnull byval(%struct.b3AABB) align 8 %16, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %15) #7
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.d

bb.c:                                             ; preds = %b3AABB_Contains.exit.thread.i
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store <2 x float> %i.ey, ptr %14, align 8
  %.sroa.5.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.ez, ptr %.sroa.5.0..sroa_idx154.i, align 8
  %.sroa.6.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %14, i64 12
  store <2 x float> %i.fa, ptr %.sroa.6.0..sroa_idx157.i, align 4
  %.sroa.7.0..sroa_idx159.i = getelementptr inbounds nuw i8, ptr %14, i64 20
  store float %i.fb, ptr %.sroa.7.0..sroa_idx159.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  store ptr %i.a, ptr %13, align 8, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 256, ptr %i.fk, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 0, ptr %i.fl, align 4, !tbaa !13
  call void @b3QueryHeightField(ptr noundef %i.fj, ptr noundef nonnull byval(%struct.b3AABB) align 8 %14, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %13) #7
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087.i = phi i32 [ %i.fi, %bb.b ], [ %i.fm, %bb.c ] ; 10 uses
  %i.fn = icmp eq i32 %.087.i, 256
  br i1 %i.fn, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.b.i = load i1, ptr @b3RefreshCache.s_once, align 1
  br i1 %.b.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef 256) #7
  store i1 true, ptr @b3RefreshCache.s_once, align 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  br label %.lr.ph236.i

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  %i.fo = icmp sgt i32 %.087.i, 0
  br i1 %i.fo, label %.lr.ph236.i, label %._crit_edge.i

.lr.ph236.i:                                      ; preds = %bb.g, %.thread.i
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !113 ; 3 uses
end_hunk_0
begin_hunk_1_@b3ComputeMeshManifolds:bb.a

.critedge.i:                                      ; preds = %bb.j, %bb.l, %bb.k, %bb.h
  %.1232.i = phi i32 [ %i.ge, %bb.l ], [ %i.ge, %bb.k ], [ %.088235.i, %bb.h ], [ %i.fq, %bb.j ]
  %indvars.iv.next244.i = add nuw nsw i64 %indvars.iv243.i, 1 ; 2 uses
  %exitcond246.not.i = icmp eq i64 %indvars.iv.next244.i, %wide.trip.count.i
  br i1 %exitcond246.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !16

bb.m:                                             ; preds = %._crit_edge.i
  %i.gh = mul i32 %i.ft, 20
  %i.gi = mul i32 %.087.i, 20
  %i.gj = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.gk = call ptr @b3GrowAlloc(ptr noundef %i.gj, i32 noundef %i.gh, i32 noundef %i.gi) #7
  store ptr %i.gk, ptr %i.i, align 8, !tbaa !113
  store i32 %.087.i, ptr %i.fs, align 4, !tbaa !113
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %.087.i, ptr %i.gl, align 8, !tbaa !113
  br i1 %i.fr, label %.lr.ph239.preheader.i, label %._crit_edge240.i

.lr.ph239.preheader.i:                            ; preds = %bb.n
  %wide.trip.count250.i = zext nneg i32 %.087.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count250.i, 1
  %i.gm = icmp eq i32 %.087.i, 1
  br i1 %i.gm, label %.lr.ph239.i.epil.preheader, label %.lr.ph239.preheader.i.new

.lr.ph239.preheader.i.new:                        ; preds = %.lr.ph239.preheader.i
  %unroll_iter = and i64 %wide.trip.count250.i, 2147483646
  br label %.lr.ph239.i

._crit_edge240.i.loopexit.unr-lcssa:              ; preds = %.lr.ph239.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge240.i, label %.lr.ph239.i.epil.preheader

.lr.ph239.i.epil.preheader:                       ; preds = %._crit_edge240.i.loopexit.unr-lcssa, %.lr.ph239.preheader.i
  %indvars.iv247.i.epil.init = phi i64 [ 0, %.lr.ph239.preheader.i ], [ %indvars.iv.next248.i.1, %._crit_edge240.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2119 = trunc i32 %.087.i to i1
  call void @llvm.assume(i1 %lcmp.mod2119)
  %i.gn = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.go = getelementptr inbounds nuw [20 x i8], ptr %i.gn, i64 %indvars.iv247.i.epil.init ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv247.i.epil.init
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !14
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv247.i.epil.init
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i.epil, ptr noundef nonnull align 16 dereferenceable(16) %i.gr, i64 16, i1 false)
  br label %._crit_edge240.i

._crit_edge240.i:                                 ; preds = %.lr.ph239.i.epil.preheader, %._crit_edge240.i.loopexit.unr-lcssa, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %b3RefreshCache.exit

.lr.ph239.i:                                      ; preds = %.lr.ph239.i, %.lr.ph239.preheader.i.new
  %indvars.iv247.i = phi i64 [ 0, %.lr.ph239.preheader.i.new ], [ %indvars.iv.next248.i.1, %.lr.ph239.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph239.preheader.i.new ], [ %niter.next.1, %.lr.ph239.i ]
  %i.gs = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.gt = getelementptr inbounds nuw [20 x i8], ptr %i.gs, i64 %indvars.iv247.i ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv247.i
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv247.i
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.gw, i64 16, i1 false)
  %indvars.iv.next248.i = or disjoint i64 %indvars.iv247.i, 1 ; 3 uses
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.gy = getelementptr inbounds nuw [20 x i8], ptr %i.gx, i64 %indvars.iv.next248.i ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next248.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !14
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv.next248.i
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i.1, ptr noundef nonnull align 16 dereferenceable(16) %i.hb, i64 16, i1 false)
  %indvars.iv.next248.i.1 = add nuw nsw i64 %indvars.iv247.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge240.i.loopexit.unr-lcssa, label %.lr.ph239.i, !llvm.loop !17

b3RefreshCache.exit:                              ; preds = %bb.a, %._crit_edge240.i
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !121 ; 7 uses
  %i.he = shl i32 %i.hd, 3                        ; 7 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %b3Bump.exit959, label %bb.o

bb.o:                                             ; preds = %b3RefreshCache.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 6 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !124
  %i.hi = add nsw i32 %i.hh, 15
  %i.hj = and i32 %i.hi, -16                      ; 2 uses
  %i.hk = add nsw i32 %i.hj, %i.he                ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !125 ; 2 uses
  %i.hn = icmp sgt i32 %i.hk, %i.hm
  br i1 %i.hn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ho = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.he) #7
  %.pre = load i32, ptr %i.hg, align 4, !tbaa !124
  %.pre1774 = load i32, ptr %i.hl, align 8, !tbaa !125
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  store i32 %i.hk, ptr %i.hg, align 4, !tbaa !124
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !126
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !130
  %i.ht = icmp sgt i32 %i.hk, %i.hs
  br i1 %i.ht, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.hk, ptr %i.hr, align 8, !tbaa !130
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.hu = load ptr, ptr %9, align 8, !tbaa !131
  %i.hv = sext i32 %i.hj to i64
  %i.hw = getelementptr inbounds i8, ptr %i.hu, i64 %i.hv
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %i.hx = phi i32 [ %i.hm, %bb.s ], [ %.pre1774, %bb.p ] ; 2 uses
  %i.hy = phi i32 [ %i.hk, %bb.s ], [ %.pre, %bb.p ]
  %.1.i.ph = phi ptr [ %i.hw, %bb.s ], [ %i.ho, %bb.p ] ; 2 uses
  %i.hz = add nsw i32 %i.hy, 15
  %i.ia = and i32 %i.hz, -16                      ; 2 uses
  %i.ib = add nsw i32 %i.ia, %i.he                ; 5 uses
  %i.ic = icmp sgt i32 %i.ib, %i.hx
  br i1 %i.ic, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.id = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.he) #7
  %.pre1775 = load i32, ptr %i.hg, align 4, !tbaa !124
  %.pre1776 = load i32, ptr %i.hl, align 8, !tbaa !125
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  store i32 %i.ib, ptr %i.hg, align 4, !tbaa !124
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !126
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !130
  %i.ii = icmp sgt i32 %i.ib, %i.ih
  br i1 %i.ii, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.ib, ptr %i.ig, align 8, !tbaa !130
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ij = load ptr, ptr %9, align 8, !tbaa !131
  %i.ik = sext i32 %i.ia to i64
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 %i.ik
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %i.im = phi i32 [ %.pre1776, %bb.u ], [ %i.hx, %bb.x ]
  %i.in = phi i32 [ %.pre1775, %bb.u ], [ %i.ib, %bb.x ]
  %.1.i956.ph = phi ptr [ %i.id, %bb.u ], [ %i.il, %bb.x ] ; 2 uses
  %i.io = add nsw i32 %i.in, 15
  %i.ip = and i32 %i.io, -16                      ; 2 uses
  %i.iq = add nsw i32 %i.ip, %i.he                ; 4 uses
  %i.ir = icmp sgt i32 %i.iq, %i.im
  br i1 %i.ir, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.is = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.he) #7
  br label %b3Bump.exit959

bb.aa:                                            ; preds = %bb.y
  store i32 %i.iq, ptr %i.hg, align 4, !tbaa !124
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !126
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !130
  %i.ix = icmp sgt i32 %i.iq, %i.iw
  br i1 %i.ix, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.iq, ptr %i.iv, align 8, !tbaa !130
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.iy = load ptr, ptr %9, align 8, !tbaa !131
  %i.iz = sext i32 %i.ip to i64
  %i.ja = getelementptr inbounds i8, ptr %i.iy, i64 %i.iz
  br label %b3Bump.exit959

b3Bump.exit959:                                   ; preds = %b3RefreshCache.exit, %bb.z, %bb.ac
  %.1.i9561502 = phi ptr [ %.1.i956.ph, %bb.ac ], [ %.1.i956.ph, %bb.z ], [ null, %b3RefreshCache.exit ] ; 4 uses
  %.1.i14961500 = phi ptr [ %.1.i.ph, %bb.ac ], [ %.1.i.ph, %bb.z ], [ null, %b3RefreshCache.exit ] ; 7 uses
  %.1.i958 = phi ptr [ %i.ja, %bb.ac ], [ %i.is, %bb.z ], [ null, %b3RefreshCache.exit ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 512 ; 18 uses
  store i32 0, ptr %i.jb, align 8, !tbaa !133
  %i.jc = getelementptr inbounds nuw i8, ptr %19, i64 256 ; 29 uses
  store i32 0, ptr %i.jc, align 4, !tbaa !135
  %.sroa.4.0..sroa_idx1477 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.61478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %.sroa.61478.0.copyload = load <2 x float>, ptr %.sroa.61478.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8.0..sroa_idx1480 = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %.sroa.8.0.copyload1481 = load <2 x float>, ptr %.sroa.8.0..sroa_idx1480, align 4 ; 5 uses
  %i.jd = shufflevector <2 x float> %.sroa.8.0.copyload1481, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.je = shufflevector <2 x float> %.sroa.61478.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %26 = load <2 x float>, ptr %7, align 8
  %27 = load <2 x float>, ptr %.sroa.4.0..sroa_idx1477, align 4
  %28 = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> %.sroa.71493.0.copyload, <2 x i32> <i32 1, i32 2>
  %29 = shufflevector <2 x float> %.sroa.8.0.copyload1481, <2 x float> %.sroa.61478.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %30 = fmul <2 x float> %28, %29
  %31 = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> %.sroa.61492.0.copyload, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <2 x float> %.sroa.61478.0.copyload, <2 x float> %.sroa.8.0.copyload1481, <2 x i32> <i32 1, i32 2> ; 3 uses
  %33 = fmul <2 x float> %31, %32
  %34 = fsub <2 x float> %30, %33
  %35 = fmul <2 x float> %.sroa.61492.0.copyload, %i.je ; 2 uses
  %shift1993 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1994 = fsub <2 x float> %35, %shift1993
  %36 = shufflevector <2 x float> %.sroa.8.0.copyload1481, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %foldExtExtBinop1993 = fmul <2 x float> %.sroa.61492.0.copyload, %36
  %37 = fadd <2 x float> %foldExtExtBinop1993, %34
  %38 = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %foldExtExtBinop1995 = fmul <2 x float> %38, %.sroa.61478.0.copyload
  %39 = fsub <2 x float> %37, %foldExtExtBinop1995 ; 6 uses
  %40 = fmul <2 x float> %.sroa.71493.0.copyload, %i.jd ; 2 uses
  %foldExtExtBinop1996 = fadd <2 x float> %foldExtExtBinop1994, %40
  %shift1998 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1999 = fsub <2 x float> %foldExtExtBinop1996, %shift1998 ; 4 uses
  %i.jf = extractelement <2 x float> %foldExtExtBinop1999, i64 0
  %41 = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> %.sroa.71493.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %42 = shufflevector <2 x float> %.sroa.61478.0.copyload, <2 x float> %.sroa.8.0.copyload1481, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %43 = fmul <4 x float> %41, %42                 ; 4 uses
  %shift2001 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2002 = fadd <4 x float> %43, %shift2001
  %shift2004 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2005 = fadd <4 x float> %shift2004, %foldExtExtBinop2002
  %shift2007 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2008 = fadd <4 x float> %shift2007, %foldExtExtBinop2005 ; 2 uses
  %44 = extractelement <4 x float> %foldExtExtBinop2008, i64 0
  %45 = fsub <2 x float> %i.g, %26                ; 4 uses
  %46 = fsub <2 x float> %i.h, %27                ; 4 uses
  %47 = fmul <2 x float> %46, %.sroa.61478.0.copyload
  %48 = fmul <2 x float> %45, %29
  %49 = fmul <2 x float> %45, %32
  %50 = shufflevector <2 x float> %46, <2 x float> %45, <2 x i32> <i32 1, i32 2> ; 2 uses
  %51 = fmul <2 x float> %50, %.sroa.61478.0.copyload
  %52 = fsub <2 x float> %47, %49
  %53 = fsub <2 x float> %48, %51
  %54 = fmul <2 x float> %50, %36
  %55 = fmul <2 x float> %46, %36
  %56 = fsub <2 x float> %52, %54                 ; 2 uses
  %57 = fsub <2 x float> %53, %55                 ; 2 uses
  %58 = fmul <2 x float> %32, %56
  %59 = fmul <2 x float> %29, %57
  %60 = fsub <2 x float> %58, %59
  %foldExtExtBinop2010 = fmul <2 x float> %.sroa.61478.0.copyload, %57
  %foldExtExtBinop2012 = fmul <2 x float> %.sroa.61478.0.copyload, %56
  %shift2014 = shufflevector <2 x float> %foldExtExtBinop2012, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2015 = fsub <2 x float> %foldExtExtBinop2010, %shift2014
  %61 = extractelement <2 x float> %foldExtExtBinop2015, i64 0
  %62 = fmul <2 x float> %60, splat (float 2.000000e+00)
  %63 = fadd <2 x float> %45, %62                 ; 3 uses
  %i.jg = fmul float %61, 2.000000e+00
  %64 = extractelement <2 x float> %46, i64 1
  %65 = fadd float %64, %i.jg                     ; 3 uses
  %66 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jh = fmul <2 x float> %39, %39               ; 2 uses
  %67 = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ji = fmul <2 x float> %foldExtExtBinop1999, %foldExtExtBinop1999
  %shift2019 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jj = fmul <2 x float> %39, %shift2019
  %68 = extractelement <2 x float> %i.jj, i64 0   ; 2 uses
  %69 = shufflevector <2 x float> %foldExtExtBinop1999, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %69, %39               ; 4 uses
  %70 = shufflevector <4 x float> %foldExtExtBinop2008, <4 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %70, %66               ; 4 uses
  %i.jm = fmul float %i.jf, %44                   ; 2 uses
  %i.jn = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fadd <2 x float> %i.jn, %67
  %i.jp = fmul <2 x float> %i.jo, splat (float 2.000000e+00)
  %i.jq = fadd float %i.jm, %68
  %foldExtExtBinop2022 = fsub <2 x float> %i.jk, %i.jl
  %71 = extractelement <2 x float> %foldExtExtBinop2022, i64 0
  %i.jr = fmul float %71, 2.000000e+00            ; 3 uses
  %i.js = fsub float %68, %i.jm
  %72 = insertelement <2 x float> poison, float %i.js, i64 0
  %73 = insertelement <2 x float> %72, float %i.jq, i64 1
  %74 = fmul <2 x float> %73, splat (float 2.000000e+00) ; 3 uses
  %75 = fsub <2 x float> splat (float 1.000000e+00), %i.jp ; 3 uses
  %foldExtExtBinop2024 = fadd <2 x float> %i.jk, %i.jl
  %76 = extractelement <2 x float> %foldExtExtBinop2024, i64 1
  %i.jt = fmul float %76, 2.000000e+00            ; 3 uses
  %77 = fadd <2 x float> %i.jk, %i.jl
  %78 = fsub <2 x float> %i.jk, %i.jl
  %79 = shufflevector <2 x float> %77, <2 x float> %78, <2 x i32> <i32 0, i32 3>
  %80 = fmul <2 x float> %79, splat (float 2.000000e+00) ; 3 uses
  %foldExtExtBinop2027 = fadd <2 x float> %i.jh, %67
  %81 = extractelement <2 x float> %foldExtExtBinop2027, i64 0
  %i.ju = fmul float %81, 2.000000e+00
  %i.jv = fsub float 1.000000e+00, %i.ju          ; 3 uses
  %i.jw = call float @b3GetLengthUnitsPerMeter() #7
  %i.jx = fmul float %i.jw, 5.000000e-03
  %i.jy = call float @b3GetLengthUnitsPerMeter() #7
  %i.jz = fmul float %i.jy, 5.000000e-03
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !140
  %i.kc = and i32 %i.kb, 16777216
  %i.kd = icmp ne i32 %i.kc, 0
  %i.ke = shl nsw i32 %i.hd, 5                    ; 2 uses
  %i.kf = mul i32 %i.hd, 768                      ; 3 uses
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %b3Bump.exit965, label %bb.ad

bb.ad:                                            ; preds = %b3Bump.exit959
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !124
  %i.kj = add nsw i32 %i.ki, 15
  %i.kk = and i32 %i.kj, -16                      ; 2 uses
  %i.kl = add nsw i32 %i.kk, %i.kf                ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !125
  %i.ko = icmp sgt i32 %i.kl, %i.kn
  br i1 %i.ko, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.kp = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.kf) #7
  br label %b3Bump.exit965

bb.af:                                            ; preds = %bb.ad
  store i32 %i.kl, ptr %i.kh, align 4, !tbaa !124
  %i.kq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !126
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !130
  %i.ku = icmp sgt i32 %i.kl, %i.kt
  br i1 %i.ku, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.kl, ptr %i.ks, align 8, !tbaa !130
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kv = load ptr, ptr %9, align 8, !tbaa !131
  %i.kw = sext i32 %i.kk to i64
  %i.kx = getelementptr inbounds i8, ptr %i.kv, i64 %i.kw
  br label %b3Bump.exit965

b3Bump.exit965:                                   ; preds = %b3Bump.exit959, %bb.ae, %bb.ah
  %.1.i964 = phi ptr [ null, %b3Bump.exit959 ], [ %i.kp, %bb.ae ], [ %i.kx, %bb.ah ]
  %i.ky = shl i32 %i.hd, 6                        ; 3 uses
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %b3Bump.exit967, label %bb.ai

bb.ai:                                            ; preds = %b3Bump.exit965
  %i.la = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !124
  %i.lc = add nsw i32 %i.lb, 15
  %i.ld = and i32 %i.lc, -16                      ; 2 uses
  %i.le = add nsw i32 %i.ld, %i.ky                ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !125
  %i.lh = icmp sgt i32 %i.le, %i.lg
  br i1 %i.lh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.li = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.ky) #7
  br label %b3Bump.exit967

bb.ak:                                            ; preds = %bb.ai
  store i32 %i.le, ptr %i.la, align 4, !tbaa !124
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !126
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !130
  %i.ln = icmp sgt i32 %i.le, %i.lm
  br i1 %i.ln, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.le, ptr %i.ll, align 8, !tbaa !130
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.lo = load ptr, ptr %9, align 8, !tbaa !131
  %i.lp = sext i32 %i.ld to i64
  %i.lq = getelementptr inbounds i8, ptr %i.lo, i64 %i.lp
  br label %b3Bump.exit967

b3Bump.exit967:                                   ; preds = %b3Bump.exit965, %bb.aj, %bb.am
  %.1.i966 = phi ptr [ null, %b3Bump.exit965 ], [ %i.li, %bb.aj ], [ %i.lq, %bb.am ]
  %i.lr = load ptr, ptr %i.i, align 8, !tbaa !141
  %i.ls = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !112
  %i.lu = icmp eq i32 %i.lt, 3
  br i1 %i.lu, label %.thread1917, label %bb.an

bb.an:                                            ; preds = %b3Bump.exit967
  %i.lv = icmp slt i32 %i.hd, 1
  br i1 %i.lv, label %.loopexit1544.thread, label %.lr.ph1580

.thread1917:                                      ; preds = %b3Bump.exit967
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !113
  %i.ly = icmp slt i32 %i.hd, 1
  br i1 %i.ly, label %.loopexit1544.thread, label %.lr.ph1580

.lr.ph1580:                                       ; preds = %.thread1917, %bb.an
  %i.lz = phi ptr [ %i.lx, %.thread1917 ], [ null, %bb.an ]
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %.sroa.5594.0..sroa_idx595 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.6597.0..sroa_idx598 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %.sroa.7600.0..sroa_idx601 = getelementptr inbounds nuw i8, ptr %21, i64 20
  %.sroa.8.0..sroa_idx603 = getelementptr inbounds nuw i8, ptr %21, i64 24
  %.sroa.9605.0..sroa_idx606 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.10.0..sroa_idx608 = getelementptr inbounds nuw i8, ptr %21, i64 36
  %.sroa.20.0..sroa_idx619 = getelementptr inbounds nuw i8, ptr %21, i64 40
  %.sroa.30.0..sroa_idx630 = getelementptr inbounds nuw i8, ptr %21, i64 44
  %.sroa.40.0..sroa_idx641 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %.sroa.5594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.6597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 12
  %.sroa.7600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  %.sroa.9605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 36
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 40
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 44
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 48
  %.sroa.4591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %.sroa.4573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  %.sroa.4555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.mh = fmul float %i.jx, -2.000000e+00
  %i.mi = zext nneg i32 %i.hd to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1580, %bb.ca
  %indvars.iv1703 = phi i64 [ 0, %.lr.ph1580 ], [ %indvars.iv.next1704, %bb.ca ] ; 2 uses
  %.08301578 = phi i32 [ 0, %.lr.ph1580 ], [ %.4834.ph, %bb.ca ] ; 9 uses
  %.08351577 = phi i32 [ 0, %.lr.ph1580 ], [ %i.ye, %bb.ca ] ; 4 uses
  %.08411576 = phi i32 [ 0, %.lr.ph1580 ], [ %i.yf, %bb.ca ] ; 2 uses
  %.08481575 = phi i32 [ 0, %.lr.ph1580 ], [ %.2850.ph, %bb.ca ] ; 4 uses
  %.08511574 = phi i32 [ 0, %.lr.ph1580 ], [ %.2853.ph, %bb.ca ] ; 3 uses
  %i.mj = phi <2 x i32> [ zeroinitializer, %.lr.ph1580 ], [ %i.yd, %bb.ca ] ; 6 uses
  %i.mk = getelementptr inbounds nuw [20 x i8], ptr %i.lr, i64 %indvars.iv1703 ; 4 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !115 ; 3 uses
  %i.mm = load i32, ptr %i.ma, align 8, !tbaa !112
  %i.mn = icmp eq i32 %i.mm, 4
  br i1 %i.mn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #7
  call void @b3GetMeshTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %20, ptr noundef nonnull %i.mb, i32 noundef %i.ml) #7
  %.sroa.0592.0.copyload = load <2 x float>, ptr %20, align 8
  %.sroa.5594.0.copyload = load float, ptr %.sroa.5594.0..sroa_idx, align 8
  %.sroa.6597.0.copyload = load <2 x float>, ptr %.sroa.6597.0..sroa_idx, align 4
  %.sroa.7600.0.copyload = load float, ptr %.sroa.7600.0..sroa_idx, align 4
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9605.0.copyload = load float, ptr %.sroa.9605.0..sroa_idx, align 8, !tbaa !113
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !14
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !14
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !14
  %.sroa.40.0.copyload = load i32, ptr %.sroa.40.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #7
  %i.mo = load ptr, ptr %i.mb, align 8, !tbaa !113
  call void @b3GetHeightFieldTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %21, ptr noundef %i.mo, i32 noundef %i.ml) #7
  %.sroa.0592.0.copyload593 = load <2 x float>, ptr %21, align 8
  %.sroa.5594.0.copyload596 = load float, ptr %.sroa.5594.0..sroa_idx595, align 8
  %.sroa.6597.0.copyload599 = load <2 x float>, ptr %.sroa.6597.0..sroa_idx598, align 4
  %.sroa.7600.0.copyload602 = load float, ptr %.sroa.7600.0..sroa_idx601, align 4
  %.sroa.8.0.copyload604 = load <2 x float>, ptr %.sroa.8.0..sroa_idx603, align 8
  %.sroa.9605.0.copyload607 = load float, ptr %.sroa.9605.0..sroa_idx606, align 8, !tbaa !113
  %.sroa.10.0.copyload609 = load i32, ptr %.sroa.10.0..sroa_idx608, align 4, !tbaa !14
  %.sroa.20.0.copyload620 = load i32, ptr %.sroa.20.0..sroa_idx619, align 8, !tbaa !14
  %.sroa.30.0.copyload631 = load i32, ptr %.sroa.30.0..sroa_idx630, align 4, !tbaa !14
  %.sroa.40.0.copyload642 = load i32, ptr %.sroa.40.0..sroa_idx641, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0592.0 = phi <2 x float> [ %.sroa.0592.0.copyload, %bb.ap ], [ %.sroa.0592.0.copyload593, %bb.aq ] ; 4 uses
  %.sroa.5594.0 = phi float [ %.sroa.5594.0.copyload, %bb.ap ], [ %.sroa.5594.0.copyload596, %bb.aq ] ; 2 uses
  %.sroa.6597.0 = phi <2 x float> [ %.sroa.6597.0.copyload, %bb.ap ], [ %.sroa.6597.0.copyload599, %bb.aq ] ; 4 uses
  %.sroa.7600.0 = phi float [ %.sroa.7600.0.copyload, %bb.ap ], [ %.sroa.7600.0.copyload602, %bb.aq ] ; 2 uses
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.0.copyload, %bb.ap ], [ %.sroa.8.0.copyload604, %bb.aq ] ; 4 uses
  %.sroa.9605.0 = phi float [ %.sroa.9605.0.copyload, %bb.ap ], [ %.sroa.9605.0.copyload607, %bb.aq ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %bb.ap ], [ %.sroa.10.0.copyload609, %bb.aq ] ; 19 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.0.copyload, %bb.ap ], [ %.sroa.20.0.copyload620, %bb.aq ] ; 19 uses
  %.sroa.30.0 = phi i32 [ %.sroa.30.0.copyload, %bb.ap ], [ %.sroa.30.0.copyload631, %bb.aq ] ; 19 uses
  %.sroa.40.0 = phi i32 [ %.sroa.40.0.copyload, %bb.ap ], [ %.sroa.40.0.copyload642, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #7
  %82 = shufflevector <2 x float> %.sroa.0592.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mp = extractelement <2 x float> %.sroa.0592.0, i64 0
  %83 = insertelement <2 x float> poison, float %.sroa.5594.0, i64 0
  %84 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> zeroinitializer
  %85 = fmul <2 x float> %80, %84
  %i.mq = fmul float %i.jr, %i.mp
  %86 = extractelement <2 x float> %.sroa.0592.0, i64 1
  %i.mr = fmul float %i.jt, %86
  %i.ms = fadd float %i.mq, %i.mr
  %i.mt = fmul float %i.jv, %.sroa.5594.0
  %i.mu = fadd float %i.mt, %i.ms
  %87 = fmul <2 x float> %74, %82
  %88 = fmul <2 x float> %75, %.sroa.0592.0
  %89 = fadd <2 x float> %87, %88
  %90 = fadd <2 x float> %85, %89
  %91 = fadd <2 x float> %63, %90
  %i.mv = fadd float %65, %i.mu
  store <2 x float> %91, ptr %22, align 16, !tbaa !106
  store float %i.mv, ptr %.sroa.4591.0..sroa_idx, align 8, !tbaa !106
  %92 = shufflevector <2 x float> %.sroa.6597.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mw = extractelement <2 x float> %.sroa.6597.0, i64 0
  %93 = fmul float %i.jr, %i.mw
  %i.mx = extractelement <2 x float> %.sroa.6597.0, i64 1
  %i.my = fmul float %i.jt, %i.mx
  %i.mz = fadd float %93, %i.my
  %i.na = fmul float %i.jv, %.sroa.7600.0
  %94 = fadd float %i.na, %i.mz
  %95 = fmul <2 x float> %74, %92
  %96 = fmul <2 x float> %75, %.sroa.6597.0
  %97 = fadd <2 x float> %95, %96
  %98 = insertelement <2 x float> poison, float %.sroa.7600.0, i64 0
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = fmul <2 x float> %80, %99
  %100 = fadd <2 x float> %i.nb, %97
  %101 = fadd <2 x float> %63, %100
  %102 = fadd float %65, %94
  store <2 x float> %101, ptr %i.mc, align 4, !tbaa !106
  store float %102, ptr %.sroa.4573.0..sroa_idx, align 4, !tbaa !106
  %103 = shufflevector <2 x float> %.sroa.8.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i988 = extractelement <2 x float> %.sroa.8.0, i64 0
  %i.nc = fmul float %i.jr, %.sroa.03.0.vec.extract.i988
  %i.nd = extractelement <2 x float> %.sroa.8.0, i64 1
  %104 = fmul float %i.jt, %i.nd
  %105 = fadd float %i.nc, %104
  %i.ne = fmul float %i.jv, %.sroa.9605.0
  %i.nf = fadd float %i.ne, %105
  %106 = fmul <2 x float> %74, %103
  %107 = fmul <2 x float> %75, %.sroa.8.0
  %108 = fadd <2 x float> %106, %107
  %.sroa.08.0.vec.insert.i996 = insertelement <2 x float> poison, float %.sroa.9605.0, i64 0
  %109 = shufflevector <2 x float> %.sroa.08.0.vec.insert.i996, <2 x float> poison, <2 x i32> zeroinitializer
  %110 = fmul <2 x float> %80, %109
  %111 = fadd <2 x float> %110, %108
  %112 = fadd <2 x float> %63, %111
  %i.ng = fadd float %65, %i.nf
  store <2 x float> %112, ptr %i.md, align 8, !tbaa !106
  store float %i.ng, ptr %.sroa.4555.0..sroa_idx, align 16, !tbaa !106
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mk, i64 4 ; 3 uses
  %i.ni = sub nsw i32 %i.ke, %.08481575           ; 3 uses
  %i.nj = sext i32 %.08511574 to i64
  %i.nk = getelementptr inbounds [64 x i8], ptr %.1.i966, i64 %i.nj ; 18 uses
  %i.nl = zext nneg i32 %.08481575 to i64
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %.1.i964, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 24 ; 2 uses
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !144
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 32 ; 2 uses
  store i32 0, ptr %i.no, align 8, !tbaa !145
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 60
  store i32 %.sroa.40.0, ptr %i.np, align 4, !tbaa !146
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 56 ; 2 uses
  store i32 0, ptr %i.nq, align 8, !tbaa !147
  %i.nr = load i32, ptr %i.ls, align 8, !tbaa !112
  switch i32 %i.nr, label %bb.cb [
    i32 0, label %bb.as
    i32 3, label %bb.at
    i32 5, label %bb.ax
  ]

bb.as:                                            ; preds = %bb.ar
  call void @b3CollideTriangleAndCapsule(ptr noundef nonnull %i.nk, i32 noundef %i.ni, ptr noundef nonnull %22, ptr noundef nonnull %i.me, ptr noundef nonnull %i.nh) #7
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  br i1 %8, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.nt = load i8, ptr %i.ns, align 4, !tbaa !113
  %i.nu = icmp eq i8 %i.nt, 4
  br i1 %i.nu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 0, ptr %i.nh, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.0498.0.copyload = load <2 x float>, ptr %22, align 16
  %.sroa.2499.0.copyload = load float, ptr %.sroa.4591.0..sroa_idx, align 8
  %.sroa.0496.0.copyload = load <2 x float>, ptr %i.mc, align 4
  %.sroa.2497.0.copyload = load float, ptr %.sroa.4573.0..sroa_idx, align 4
  %.sroa.0494.0.copyload = load <2 x float>, ptr %i.md, align 8
  %.sroa.2495.0.copyload = load float, ptr %.sroa.4555.0..sroa_idx, align 16
  call void @b3CollideTriangleAndHull(ptr noundef nonnull %i.nk, i32 noundef %i.ni, <2 x float> %.sroa.0498.0.copyload, float %.sroa.2499.0.copyload, <2 x float> %.sroa.0496.0.copyload, float %.sroa.2497.0.copyload, <2 x float> %.sroa.0494.0.copyload, float %.sroa.2495.0.copyload, i32 noundef %.sroa.40.0, ptr noundef %i.lz, ptr noundef nonnull %i.nh, i1 noundef zeroext %i.kd) #7
  %i.nv = load i32, ptr %i.mf, align 8, !tbaa !151
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.mf, align 8, !tbaa !151
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mk, i64 11
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !113
  %i.nz = zext i8 %i.ny to i32
  %i.oa = load i32, ptr %i.mg, align 4, !tbaa !152
  %i.ob = add nsw i32 %i.oa, %i.nz
  store i32 %i.ob, ptr %i.mg, align 4, !tbaa !152
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ar
  call void @b3CollideTriangleAndSphere(ptr noundef nonnull %i.nk, i32 noundef %i.ni, ptr noundef nonnull %22, ptr noundef nonnull %i.me) #7
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.as
  %i.oc = load i32, ptr %i.no, align 8, !tbaa !145 ; 5 uses
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %bb.az, label %bb.ca

bb.az:                                            ; preds = %bb.ay
  %i.oe = add nsw i32 %.08511574, 1
  %i.of = add nuw nsw i32 %i.oc, %.08481575
  %i.og = getelementptr inbounds nuw i8, ptr %i.nk, i64 36
  store i32 %i.ml, ptr %i.og, align 4, !tbaa !153
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  %.sroa.0487.0.copyload = load <2 x float>, ptr %22, align 16 ; 2 uses
  %i.oi = load <4 x float>, ptr %.sroa.4591.0..sroa_idx, align 8
  %.sroa.0485.0.copyload = load <2 x float>, ptr %i.mc, align 4 ; 2 uses
  %.sroa.0483.0.copyload = load <2 x float>, ptr %i.md, align 8 ; 2 uses
  %i.oj = load <4 x float>, ptr %.sroa.4573.0..sroa_idx, align 4
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ol = shufflevector <2 x float> %.sroa.0483.0.copyload, <2 x float> %.sroa.0485.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.om = fsub <2 x float> %i.ol, %.sroa.0487.0.copyload ; 3 uses
  %i.on = shufflevector <2 x float> %.sroa.0485.0.copyload, <2 x float> %.sroa.0483.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.oo = fsub <2 x float> %i.on, %.sroa.0487.0.copyload ; 3 uses
  %i.op = shufflevector <4 x float> %i.oi, <4 x float> poison, <2 x i32> zeroinitializer
  %i.oq = fsub <2 x float> %i.ok, %i.op           ; 2 uses
  %i.or = fmul <2 x float> %i.oq, %i.om
  %i.os = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ot = fmul <2 x float> %i.oo, %i.os
  %i.ou = fsub <2 x float> %i.or, %i.ot           ; 3 uses
  %shift2004.a = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2005.a = fmul <2 x float> %i.oo, %shift2004.a
  %shift2007.a = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2008.a = fmul <2 x float> %shift2007.a, %i.om
  %foldExtExtBinop2010.a = fsub <2 x float> %foldExtExtBinop2005.a, %foldExtExtBinop2008.a ; 3 uses
  %i.ov = fmul <2 x float> %i.ou, %i.ou           ; 2 uses
  %shift2012 = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2013 = fadd <2 x float> %shift2012, %i.ov
  %foldExtExtBinop2015.a = fmul <2 x float> %foldExtExtBinop2010.a, %foldExtExtBinop2010.a
  %foldExtExtBinop2017 = fadd <2 x float> %foldExtExtBinop2015.a, %foldExtExtBinop2013
  %i.ow = extractelement <2 x float> %foldExtExtBinop2017, i64 0 ; 2 uses
  %i.ox = fcmp ogt float %i.ow, f0x057A0000
  br i1 %i.ox, label %bb.ba, label %b3MakeNormalFromPoints.exit

bb.ba:                                            ; preds = %bb.az
  %i.oy = extractelement <2 x float> %foldExtExtBinop2010.a, i64 0
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ow)
  %i.oz = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.pa = insertelement <2 x float> poison, float %i.oz, i64 0
  %i.pb = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pc = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = fmul <2 x float> %i.pb, %i.pc
  %i.pe = fmul float %i.oy, %i.oz
  br label %b3MakeNormalFromPoints.exit

b3MakeNormalFromPoints.exit:                      ; preds = %bb.az, %bb.ba
  %.sroa.018.0.i.i = phi <2 x float> [ %i.pd, %bb.ba ], [ zeroinitializer, %bb.az ] ; 2 uses
  %.sroa.5.0.i.i = phi float [ %i.pe, %bb.ba ], [ 0.000000e+00, %bb.az ] ; 2 uses
  store <2 x float> %.sroa.018.0.i.i, ptr %i.oh, align 4, !tbaa !106
  %.sroa.4490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  store float %.sroa.5.0.i.i, ptr %.sroa.4490.0..sroa_idx, align 4, !tbaa !106
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  store i32 %.sroa.10.0, ptr %i.pf, align 8, !tbaa !154
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nk, i64 44
  store i32 %.sroa.20.0, ptr %i.pg, align 4, !tbaa !155
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  store i32 %.sroa.30.0, ptr %i.ph, align 8, !tbaa !156
  %i.pi = load i32, ptr %i.nq, align 8, !tbaa !147
  switch i32 %i.pi, label %bb.bz [
    i32 1, label %bb.bb
    i32 2, label %bb.bi
  ]

bb.bb:                                            ; preds = %b3MakeNormalFromPoints.exit
  %i.pj = call noundef i32 @llvm.smin.i32(i32 %.sroa.10.0, i32 %.sroa.20.0)
  %i.pk = sext i32 %i.pj to i64
  %i.pl = call noundef i32 @llvm.smax.i32(i32 %.sroa.10.0, i32 %.sroa.20.0)
  %i.pm = sext i32 %i.pl to i64
  %i.pn = shl nsw i64 %i.pk, 32
  %i.po = or i64 %i.pn, %i.pm                     ; 2 uses
  %i.pp = load i32, ptr %i.jb, align 8, !tbaa !133 ; 6 uses
  %.not24.i = icmp slt i32 %i.pp, 1
  br i1 %.not24.i, label %.critedge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bb
  %wide.trip.count.i1006 = zext nneg i32 %i.pp to i64
  br label %.lr.ph.i1007

bb.bc:                                            ; preds = %.lr.ph.i1007
  %indvars.iv.next.i1009 = add nuw nsw i64 %indvars.iv.i1008, 1 ; 2 uses
  %exitcond.not.i1010 = icmp eq i64 %indvars.iv.next.i1009, %wide.trip.count.i1006
  br i1 %exitcond.not.i1010, label %.critedge.i1011, label %.lr.ph.i1007, !llvm.loop !18

.lr.ph.i1007:                                     ; preds = %bb.bc, %.lr.ph.preheader.i
  %indvars.iv.i1008 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i1009, %bb.bc ] ; 2 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1008
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !157
  %i.ps = icmp eq i64 %i.pr, %i.po
  br i1 %i.ps, label %b3AddEdge.exit, label %bb.bc

.critedge.i1011:                                  ; preds = %bb.bc
  %.old.i = icmp eq i32 %i.pp, 64
  br i1 %.old.i, label %b3AddEdge.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i1011, %bb.bb
  %i.pt = sext i32 %i.pp to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %18, i64 %i.pt
  store i64 %i.po, ptr %i.pu, align 8, !tbaa !157
  %i.pv = add nsw i32 %i.pp, 1                    ; 2 uses
  store i32 %i.pv, ptr %i.jb, align 8, !tbaa !133
  br label %b3AddEdge.exit

b3AddEdge.exit:                                   ; preds = %.lr.ph.i1007, %.critedge.i1011, %.critedge.thread.i
  %.pr1503 = phi i32 [ %i.pv, %.critedge.thread.i ], [ 64, %.critedge.i1011 ], [ %i.pp, %.lr.ph.i1007 ] ; 6 uses
  %i.pw = call noundef i32 @llvm.smin.i32(i32 %.sroa.20.0, i32 %.sroa.30.0)
  %i.px = sext i32 %i.pw to i64
  %i.py = call noundef i32 @llvm.smax.i32(i32 %.sroa.20.0, i32 %.sroa.30.0)
  %i.pz = sext i32 %i.py to i64
  %i.qa = shl nsw i64 %i.px, 32
  %i.qb = or i64 %i.qa, %i.pz                     ; 2 uses
  %.not24.i1012 = icmp slt i32 %.pr1503, 1
  br i1 %.not24.i1012, label %.critedge.thread.i1021, label %.lr.ph.preheader.i1013

.lr.ph.preheader.i1013:                           ; preds = %b3AddEdge.exit
  %wide.trip.count.i1014 = zext nneg i32 %.pr1503 to i64
  br label %.lr.ph.i1015

bb.bd:                                            ; preds = %.lr.ph.i1015
  %indvars.iv.next.i1017 = add nuw nsw i64 %indvars.iv.i1016, 1 ; 2 uses
  %exitcond.not.i1018 = icmp eq i64 %indvars.iv.next.i1017, %wide.trip.count.i1014
  br i1 %exitcond.not.i1018, label %.critedge.i1019, label %.lr.ph.i1015, !llvm.loop !18

.lr.ph.i1015:                                     ; preds = %bb.bd, %.lr.ph.preheader.i1013
  %indvars.iv.i1016 = phi i64 [ 0, %.lr.ph.preheader.i1013 ], [ %indvars.iv.next.i1017, %bb.bd ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1016
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !157
  %i.qe = icmp eq i64 %i.qd, %i.qb
  br i1 %i.qe, label %b3AddEdge.exit1023, label %bb.bd

.critedge.i1019:                                  ; preds = %bb.bd
  %.old.i1020 = icmp eq i32 %.pr1503, 64
end_hunk_1
