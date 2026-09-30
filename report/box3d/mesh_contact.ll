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
  %i.h = load <2 x float>, ptr %.sroa.41490.0..sroa_idx, align 4 ; 5 uses
  %.sroa.61492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.61492.0.copyload = load <2 x float>, ptr %.sroa.61492.0..sroa_idx, align 4 ; 22 uses
  %.sroa.71493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.sroa.71493.0.copyload = load <2 x float>, ptr %.sroa.71493.0..sroa_idx, align 4 ; 15 uses
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
  %.sroa.011.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.61492.0.copyload, i64 0
  %.sroa.3.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.71493.0.copyload, i64 1
  %i.ai = fneg float %.sroa.3.8.vec.extract.i.i.i
  %24 = extractelement <2 x float> %i.h, i64 1    ; 2 uses
  %i.aj = fmul float %24, %.sroa.011.0.vec.extract.i.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.g, %.sroa.71493.0.copyload
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = fsub float %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> %.sroa.71493.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.an = fmul <2 x float> %i.g, %i.am
  %i.ao = fmul <2 x float> %i.h, %.sroa.61492.0.copyload
  %i.ap = fsub <2 x float> %i.an, %i.ao           ; 2 uses
  %i.aq = shufflevector <2 x float> %i.h, <2 x float> %i.g, <2 x i32> <i32 1, i32 2>
  %i.ar = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.as = fmul <2 x float> %i.aq, %i.ar
  %i.at = fmul <2 x float> %i.h, %i.ar
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
  %.sroa.01476.0.copyload = load float, ptr %7, align 8
  %.sroa.4.0..sroa_idx1477 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx1477, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %.sroa.61478.0.copyload = load <2 x float>, ptr %.sroa.61478.0..sroa_idx, align 4 ; 6 uses
  %.sroa.8.0..sroa_idx1480 = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %.sroa.8.0.copyload1481 = load <2 x float>, ptr %.sroa.8.0..sroa_idx1480, align 4 ; 6 uses
  %.sroa.433.8.vec.extract.i = extractelement <2 x float> %.sroa.71493.0.copyload, i64 0
  %.sroa.443.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload1481, i64 0 ; 5 uses
  %i.jd = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.je = shufflevector <2 x float> %.sroa.61478.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.61478.0.copyload, i64 0 ; 5 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.61492.0.copyload, i64 0
  %25 = extractelement <2 x float> %.sroa.61478.0.copyload, i64 1 ; 6 uses
  %26 = fmul float %.sroa.011.0.vec.extract.i.i, %25
  %27 = extractelement <2 x float> %.sroa.61492.0.copyload, i64 1 ; 2 uses
  %28 = fmul float %27, %.sroa.03.0.vec.extract.i.i
  %29 = fsub float %26, %28
  %.sroa.443.12.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload1481, i64 1 ; 5 uses
  %30 = fmul float %.sroa.433.8.vec.extract.i, %.sroa.443.12.vec.extract.i
  %31 = fadd float %29, %30
  %.sroa.433.12.vec.extract.i = extractelement <2 x float> %.sroa.71493.0.copyload, i64 1 ; 2 uses
  %32 = fmul float %.sroa.433.12.vec.extract.i, %.sroa.443.8.vec.extract.i
  %33 = fsub float %31, %32                       ; 5 uses
  %34 = fmul float %.sroa.433.12.vec.extract.i, %.sroa.443.12.vec.extract.i
  %foldExtExtBinop1993 = fmul <2 x float> %.sroa.61492.0.copyload, %.sroa.61478.0.copyload
  %35 = extractelement <2 x float> %foldExtExtBinop1993, i64 0
  %36 = fmul float %27, %25
  %37 = fadd float %35, %36
  %foldExtExtBinop1995 = fmul <2 x float> %.sroa.71493.0.copyload, %.sroa.8.0.copyload1481
  %38 = extractelement <2 x float> %foldExtExtBinop1995, i64 0
  %39 = fadd float %38, %37
  %40 = fadd float %34, %39                       ; 3 uses
  %41 = extractelement <2 x float> %i.g, i64 0
  %42 = fsub float %41, %.sroa.01476.0.copyload   ; 4 uses
  %i.jf = extractelement <2 x float> %i.g, i64 1
  %43 = fsub float %i.jf, %.sroa.4.0.copyload     ; 4 uses
  %44 = extractelement <2 x float> %i.h, i64 1
  %45 = fsub float %44, %.sroa.5.0.copyload       ; 4 uses
  %46 = fmul float %45, %25
  %47 = fmul float %43, %.sroa.443.8.vec.extract.i
  %48 = fsub float %46, %47
  %49 = fmul float %42, %.sroa.443.8.vec.extract.i
  %50 = fmul float %45, %.sroa.03.0.vec.extract.i.i
  %51 = fsub float %49, %50
  %52 = fmul float %43, %.sroa.03.0.vec.extract.i.i
  %53 = fmul float %42, %25
  %54 = fsub float %52, %53
  %55 = fmul float %42, %.sroa.443.12.vec.extract.i
  %56 = fsub float %48, %55                       ; 2 uses
  %57 = fmul float %43, %.sroa.443.12.vec.extract.i
  %58 = fsub float %51, %57                       ; 2 uses
  %59 = fmul float %45, %.sroa.443.12.vec.extract.i
  %60 = fsub float %54, %59                       ; 2 uses
  %61 = fmul float %25, %60
  %62 = fmul float %.sroa.443.8.vec.extract.i, %58
  %63 = fsub float %61, %62
  %64 = fmul float %.sroa.443.8.vec.extract.i, %56
  %65 = fmul float %.sroa.03.0.vec.extract.i.i, %60
  %66 = fsub float %64, %65
  %67 = fmul float %.sroa.03.0.vec.extract.i.i, %58
  %68 = fmul float %25, %56
  %69 = fsub float %67, %68
  %70 = fmul float %63, 2.000000e+00
  %71 = fadd float %42, %70                       ; 3 uses
  %72 = fmul float %66, 2.000000e+00
  %73 = fadd float %43, %72                       ; 3 uses
  %74 = fmul float %69, 2.000000e+00
  %75 = fadd float %45, %74                       ; 3 uses
  %i.jg = fmul float %33, %33
  %76 = fmul float %33, %40                       ; 2 uses
  %77 = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> %.sroa.61492.0.copyload, <2 x i32> <i32 0, i32 3>
  %78 = shufflevector <2 x float> %.sroa.61478.0.copyload, <2 x float> %.sroa.8.0.copyload1481, <2 x i32> <i32 0, i32 2>
  %i.jh = fmul <2 x float> %77, %78
  %79 = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> %.sroa.71493.0.copyload, <2 x i32> <i32 0, i32 2>
  %80 = shufflevector <2 x float> %.sroa.8.0.copyload1481, <2 x float> %.sroa.61478.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ji = fmul <2 x float> %79, %80
  %81 = fsub <2 x float> %i.jh, %i.ji
  %82 = shufflevector <2 x float> %.sroa.8.0.copyload1481, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fmul <2 x float> %i.jd, %82
  %83 = fadd <2 x float> %i.jj, %81
  %84 = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = fmul <2 x float> %84, %i.je
  %85 = fsub <2 x float> %83, %i.jk               ; 4 uses
  %i.jl = fmul <2 x float> %85, %85               ; 3 uses
  %86 = extractelement <2 x float> %85, i64 0     ; 3 uses
  %87 = extractelement <2 x float> %85, i64 1     ; 3 uses
  %88 = fmul float %87, %86                       ; 2 uses
  %89 = fmul float %33, %87                       ; 2 uses
  %90 = fmul float %40, %87                       ; 2 uses
  %91 = fmul float %33, %86                       ; 2 uses
  %i.jm = fmul float %40, %86                     ; 2 uses
  %92 = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jn = shufflevector <2 x float> %92, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fadd <2 x float> %i.jn, %i.jl
  %i.jp = fmul <2 x float> %i.jo, splat (float 2.000000e+00)
  %i.jq = fadd float %76, %88
  %93 = fsub float %89, %i.jm
  %i.jr = fmul float %93, 2.000000e+00            ; 3 uses
  %i.js = fsub float %88, %76
  %94 = fsub <2 x float> splat (float 1.000000e+00), %i.jp ; 4 uses
  %95 = fadd float %91, %90
  %96 = fadd float %89, %i.jm
  %97 = fmul float %96, 2.000000e+00              ; 3 uses
  %98 = fsub float %91, %90
  %i.jt = fmul float %98, 2.000000e+00            ; 3 uses
  %shift1997 = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1998 = fadd <2 x float> %shift1997, %i.jl
  %99 = extractelement <2 x float> %foldExtExtBinop1998, i64 0
  %100 = fmul float %99, 2.000000e+00
  %101 = fmul float %i.jq, 2.000000e+00           ; 3 uses
  %102 = fmul float %i.js, 2.000000e+00           ; 3 uses
  %i.ju = fmul float %95, 2.000000e+00            ; 3 uses
  %i.jv = fsub float 1.000000e+00, %100           ; 3 uses
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
  %103 = insertelement <4 x float> poison, float %75, i64 0
  %104 = insertelement <4 x float> poison, float %i.jv, i64 0
  %105 = insertelement <4 x float> %104, float %102, i64 1
  %106 = insertelement <4 x float> %105, float %101, i64 2
  %107 = insertelement <4 x float> %106, float %i.ju, i64 3
  %108 = insertelement <4 x float> poison, float %73, i64 0
  %109 = insertelement <4 x float> %108, float %75, i64 1
  %110 = shufflevector <2 x float> %94, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %111 = shufflevector <4 x float> %103, <4 x float> %110, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %112 = insertelement <4 x float> %111, float %i.jr, i64 3
  %113 = insertelement <4 x float> poison, float %102, i64 2
  %114 = insertelement <4 x float> %113, float %101, i64 3
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
  %.sroa.5594.0 = phi float [ %.sroa.5594.0.copyload, %bb.ap ], [ %.sroa.5594.0.copyload596, %bb.aq ] ; 3 uses
  %.sroa.6597.0 = phi <2 x float> [ %.sroa.6597.0.copyload, %bb.ap ], [ %.sroa.6597.0.copyload599, %bb.aq ] ; 2 uses
  %.sroa.7600.0 = phi float [ %.sroa.7600.0.copyload, %bb.ap ], [ %.sroa.7600.0.copyload602, %bb.aq ] ; 3 uses
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.0.copyload, %bb.ap ], [ %.sroa.8.0.copyload604, %bb.aq ] ; 4 uses
  %.sroa.9605.0 = phi float [ %.sroa.9605.0.copyload, %bb.ap ], [ %.sroa.9605.0.copyload607, %bb.aq ] ; 3 uses
  %.sroa.10.0 = phi i32 [ %.sroa.10.0.copyload, %bb.ap ], [ %.sroa.10.0.copyload609, %bb.aq ] ; 19 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.0.copyload, %bb.ap ], [ %.sroa.20.0.copyload620, %bb.aq ] ; 19 uses
  %.sroa.30.0 = phi i32 [ %.sroa.30.0.copyload, %bb.ap ], [ %.sroa.30.0.copyload631, %bb.aq ] ; 19 uses
  %.sroa.40.0 = phi i32 [ %.sroa.40.0.copyload, %bb.ap ], [ %.sroa.40.0.copyload642, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #7
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0592.0, i64 0 ; 2 uses
  %foldExtExtBinop2000 = fmul <2 x float> %94, %.sroa.0592.0
  %i.mp = extractelement <2 x float> %foldExtExtBinop2000, i64 0
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0592.0, i64 1 ; 2 uses
  %115 = fmul float %102, %.sroa.03.4.vec.extract.i
  %116 = fadd float %i.mp, %115
  %i.mq = fmul float %97, %.sroa.5594.0
  %117 = fadd float %i.mq, %116
  %i.mr = fmul float %101, %.sroa.03.0.vec.extract.i
  %foldExtExtBinop2002 = fmul <2 x float> %94, %.sroa.0592.0
  %118 = extractelement <2 x float> %foldExtExtBinop2002, i64 1
  %i.ms = fadd float %i.mr, %118
  %i.mt = fmul float %i.jt, %.sroa.5594.0
  %i.mu = fadd float %i.mt, %i.ms
  %119 = fmul float %i.jr, %.sroa.03.0.vec.extract.i
  %120 = fmul float %i.ju, %.sroa.03.4.vec.extract.i
  %121 = fadd float %119, %120
  %122 = fadd float %71, %117
  %.sroa.08.0.vec.insert.i = insertelement <2 x float> poison, float %122, i64 0
  %i.mv = fadd float %73, %i.mu
  %.sroa.08.4.vec.insert.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i, float %i.mv, i64 1
  store <2 x float> %.sroa.08.4.vec.insert.i, ptr %22, align 16, !tbaa !106
  %123 = fmul float %97, %.sroa.7600.0
  %124 = fmul float %i.jt, %.sroa.7600.0
  %125 = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.sroa.5594.0, i64 0
  %126 = fmul <4 x float> %107, %125              ; 2 uses
  %127 = shufflevector <2 x float> %.sroa.6597.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %128 = insertelement <4 x float> %127, float 1.000000e+00, i64 0
  %129 = fmul <4 x float> %112, %128
  %130 = shufflevector <2 x float> %.sroa.6597.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %131 = insertelement <4 x float> poison, float %121, i64 0
  %132 = shufflevector <4 x float> %130, <4 x float> %131, <4 x i32> <i32 4, i32 1, i32 0, i32 1> ; 2 uses
  %133 = fadd <4 x float> %126, %132
  %134 = fmul <4 x float> %126, %132
  %135 = shufflevector <4 x float> %133, <4 x float> %134, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %136 = fadd <4 x float> %129, %135              ; 3 uses
  %i.mw = extractelement <4 x float> %136, i64 0
  store float %i.mw, ptr %.sroa.4591.0..sroa_idx, align 8, !tbaa !106
  %i.mx = extractelement <4 x float> %136, i64 1
  %137 = fadd float %123, %i.mx
  %i.my = fmul float %i.jv, %.sroa.7600.0
  %i.mz = fadd float %71, %137
  %138 = insertelement <4 x float> poison, float %i.mz, i64 0
  %.sroa.03.0.vec.extract.i988 = extractelement <2 x float> %.sroa.8.0, i64 0
  %.sroa.03.4.vec.extract.i989 = extractelement <2 x float> %.sroa.8.0, i64 1
  %i.na = fmul float %97, %.sroa.9605.0
  %139 = insertelement <4 x float> %114, float %124, i64 0
  %140 = insertelement <4 x float> %139, float %i.my, i64 1 ; 2 uses
  %141 = shufflevector <2 x float> %.sroa.8.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %142 = shufflevector <4 x float> %136, <4 x float> %141, <4 x i32> <i32 2, i32 3, i32 5, i32 4> ; 2 uses
  %143 = fadd <4 x float> %140, %142
  %144 = fmul <4 x float> %140, %142
  %145 = shufflevector <4 x float> %143, <4 x float> %144, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nb = fmul <2 x float> %94, %.sroa.8.0
  %146 = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %147 = shufflevector <4 x float> %109, <4 x float> %146, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %148 = fadd <4 x float> %147, %145              ; 4 uses
  %149 = shufflevector <4 x float> %138, <4 x float> %148, <2 x i32> <i32 0, i32 4>
  store <2 x float> %149, ptr %i.mc, align 4, !tbaa !106
  %150 = extractelement <4 x float> %148, i64 1
  store float %150, ptr %.sroa.4573.0..sroa_idx, align 4, !tbaa !106
  %151 = extractelement <4 x float> %148, i64 2
  %152 = fadd float %i.na, %151
  %i.nc = fmul float %i.jt, %.sroa.9605.0
  %i.nd = extractelement <4 x float> %148, i64 3
  %153 = fadd float %i.nc, %i.nd
  %154 = fmul float %i.jr, %.sroa.03.0.vec.extract.i988
  %i.ne = fmul float %i.ju, %.sroa.03.4.vec.extract.i989
  %i.nf = fadd float %154, %i.ne
  %155 = fmul float %i.jv, %.sroa.9605.0
  %156 = fadd float %155, %i.nf
  %157 = fadd float %71, %152
  %.sroa.08.0.vec.insert.i996 = insertelement <2 x float> poison, float %157, i64 0
  %158 = fadd float %73, %153
  %.sroa.08.4.vec.insert.i999 = insertelement <2 x float> %.sroa.08.0.vec.insert.i996, float %158, i64 1
  %i.ng = fadd float %75, %156
  store <2 x float> %.sroa.08.4.vec.insert.i999, ptr %i.md, align 8, !tbaa !106
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
