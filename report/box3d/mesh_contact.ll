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
  %i.ai = extractelement <2 x float> %i.h, i64 1  ; 2 uses
  %i.aj = fmul float %i.ai, %.sroa.011.0.vec.extract.i.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.g, %.sroa.71493.0.copyload
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.3.12.vec.extract.i.i.i = extractelement <2 x float> %.sroa.71493.0.copyload, i64 1
  %i.al = fneg float %.sroa.3.8.vec.extract.i.i.i
  %i.am = fsub float %i.aj, %i.ak
  %i.an = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> %.sroa.71493.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ao = fmul <2 x float> %i.g, %i.an
  %i.ap = fmul <2 x float> %i.h, %.sroa.61492.0.copyload
  %i.aq = fsub <2 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = shufflevector <2 x float> %i.h, <2 x float> %i.g, <2 x i32> <i32 1, i32 2>
  %i.as = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = fmul <2 x float> %i.h, %i.as
  %i.av = fadd <2 x float> %i.aq, %i.at           ; 2 uses
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ax = insertelement <2 x float> %i.aw, float %i.am, i64 0
  %i.ay = fadd <2 x float> %i.au, %i.ax           ; 2 uses
  %i.az = fmul <2 x float> %i.an, %i.av
  %i.ba = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> %.sroa.61492.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bb = fmul <2 x float> %i.ba, %i.ay
  %i.bc = fsub <2 x float> %i.az, %i.bb
  %foldExtExtBinop1971 = fmul <2 x float> %.sroa.61492.0.copyload, %i.ay
  %foldExtExtBinop1973 = fmul <2 x float> %.sroa.61492.0.copyload, %i.av
  %shift = shufflevector <2 x float> %foldExtExtBinop1973, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1975 = fsub <2 x float> %foldExtExtBinop1971, %shift
  %i.bd = extractelement <2 x float> %foldExtExtBinop1975, i64 0
  %i.be = fmul <2 x float> %i.bc, splat (float 2.000000e+00)
  %i.bf = fsub <2 x float> %i.be, %i.g
  %i.bg = fmul float %i.bd, 2.000000e+00
  %i.bh = fsub float %i.bg, %i.ai
  %i.bi = fneg <2 x float> %.sroa.61492.0.copyload
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fadd <2 x float> %i.ae, %i.ag
  %i.bl = fadd float %i.af, %i.ah
  %i.bm = fmul <2 x float> %i.bk, splat (float 5.000000e-01) ; 5 uses
  %i.bn = fmul float %i.bl, 5.000000e-01          ; 4 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %i.bn, i64 0
  %i.bq = fmul <2 x float> %.sroa.61492.0.copyload, %i.bp
  %i.br = fmul <2 x float> %i.an, %i.bm
  %i.bs = fmul <2 x float> %i.ba, %i.bm
  %i.bt = insertelement <2 x float> %i.bo, float %i.bn, i64 1 ; 2 uses
  %i.bu = fmul <2 x float> %.sroa.61492.0.copyload, %i.bt
  %i.bv = fsub <2 x float> %i.bq, %i.bs
  %i.bw = fsub <2 x float> %i.br, %i.bu
  %i.bx = fmul <2 x float> %i.as, %i.bt
  %i.by = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.ca = fmul <2 x float> %i.as, %i.bz
  %i.cb = fadd <2 x float> %i.bx, %i.bv           ; 2 uses
  %i.cc = fadd <2 x float> %i.ca, %i.bw           ; 2 uses
  %i.cd = fmul <2 x float> %i.ba, %i.cb
  %i.ce = fmul <2 x float> %i.an, %i.cc
  %i.cf = fsub <2 x float> %i.cd, %i.ce
  %foldExtExtBinop1977 = fmul <2 x float> %.sroa.61492.0.copyload, %i.cc
  %foldExtExtBinop1979 = fmul <2 x float> %.sroa.61492.0.copyload, %i.cb
  %shift1981 = shufflevector <2 x float> %foldExtExtBinop1977, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1982 = fsub <2 x float> %shift1981, %foldExtExtBinop1979
  %i.cg = extractelement <2 x float> %foldExtExtBinop1982, i64 0
  %i.ch = fmul <2 x float> %i.cf, splat (float 2.000000e+00)
  %i.ci = fadd <2 x float> %i.bm, %i.ch
  %i.cj = fmul float %i.cg, 2.000000e+00
  %i.ck = fadd float %i.bn, %i.cj
  %i.cl = fadd <2 x float> %i.bf, %i.ci           ; 2 uses
  %i.cm = fadd float %i.bh, %i.ck                 ; 2 uses
  %i.cn = fmul <2 x float> %.sroa.61492.0.copyload, %.sroa.61492.0.copyload ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop1984 = fmul <2 x float> %.sroa.71493.0.copyload, %.sroa.71493.0.copyload
  %shift1986 = shufflevector <2 x float> %.sroa.61492.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1987 = fmul <2 x float> %.sroa.61492.0.copyload, %shift1986
  %i.cp = extractelement <2 x float> %foldExtExtBinop1987, i64 0 ; 2 uses
  %i.cq = shufflevector <2 x float> %.sroa.71493.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %.sroa.61492.0.copyload, %i.cq ; 4 uses
  %i.cs = fmul <2 x float> %i.as, %i.bj           ; 4 uses
  %i.ct = fmul float %.sroa.3.12.vec.extract.i.i.i, %i.al ; 2 uses
  %i.cu = fadd float %i.cp, %i.ct
  %foldExtExtBinop1989 = fsub <2 x float> %i.cr, %i.cs
  %i.cv = extractelement <2 x float> %foldExtExtBinop1989, i64 0
  %i.cw = fmul float %i.cv, 2.000000e+00          ; 3 uses
  %i.cx = fsub float %i.cp, %i.ct
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cu, i64 1
  %i.da = fmul <2 x float> %i.cz, splat (float 2.000000e+00) ; 3 uses
  %i.db = shufflevector <2 x float> %foldExtExtBinop1984, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fadd <2 x float> %i.co, %i.db
  %i.dd = fmul <2 x float> %i.dc, splat (float 2.000000e+00)
  %i.de = fsub <2 x float> splat (float 1.000000e+00), %i.dd ; 3 uses
  %foldExtExtBinop1991 = fadd <2 x float> %i.cr, %i.cs
  %i.df = extractelement <2 x float> %foldExtExtBinop1991, i64 1
  %i.dg = fmul float %i.df, 2.000000e+00          ; 3 uses
  %i.dh = fadd <2 x float> %i.cr, %i.cs
  %i.di = fsub <2 x float> %i.cr, %i.cs
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.000000e+00) ; 3 uses
  %i.dl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cn)
  %i.dm = fmul float %i.dl, 2.000000e+00
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 3 uses
  %i.do = fcmp olt float %i.cw, 0.000000e+00
  %i.dp = fneg float %i.cw
  %i.dq = select i1 %i.do, float %i.dp, float %i.cw
  %i.dr = fcmp olt <2 x float> %i.da, zeroinitializer
  %i.ds = fneg <2 x float> %i.da
  %i.dt = select <2 x i1> %i.dr, <2 x float> %i.ds, <2 x float> %i.da
  %i.du = fcmp olt <2 x float> %i.de, zeroinitializer
  %i.dv = fneg <2 x float> %i.de
  %i.dw = select <2 x i1> %i.du, <2 x float> %i.dv, <2 x float> %i.de
  %i.dx = fcmp olt float %i.dg, 0.000000e+00
  %i.dy = fneg float %i.dg
  %i.dz = select i1 %i.dx, float %i.dy, float %i.dg
  %i.ea = fcmp olt <2 x float> %i.dk, zeroinitializer
  %i.eb = fneg <2 x float> %i.dk
  %i.ec = select <2 x i1> %i.ea, <2 x float> %i.eb, <2 x float> %i.dk
  %i.ed = fcmp olt float %i.dn, 0.000000e+00
  %i.ee = fneg float %i.dn
  %i.ef = select i1 %i.ed, float %i.ee, float %i.dn
  %i.eg = fsub <2 x float> %i.ag, %i.ae
  %i.eh = fsub float %i.ah, %i.af
  %i.ei = fmul <2 x float> %i.eg, splat (float 5.000000e-01) ; 4 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = fmul float %i.eh, 5.000000e-01          ; 2 uses
  %i.el = fmul <2 x float> %i.dt, %i.ej
  %i.em = fmul <2 x float> %i.dw, %i.ei
  %i.en = fadd <2 x float> %i.el, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ec, %i.ep
  %i.er = fadd <2 x float> %i.eq, %i.en           ; 2 uses
  %i.es = extractelement <2 x float> %i.ei, i64 0
  %i.et = fmul float %i.dq, %i.es
  %i.eu = extractelement <2 x float> %i.ei, i64 1
  %i.ev = fmul float %i.dz, %i.eu
  %i.ew = fadd float %i.et, %i.ev
  %i.ex = fmul float %i.ef, %i.ek
  %i.ey = fadd float %i.ex, %i.ew                 ; 2 uses
  %i.ez = fsub <2 x float> %i.cl, %i.er           ; 2 uses
  %i.fa = fsub float %i.cm, %i.ey                 ; 2 uses
  %i.fb = fadd <2 x float> %i.er, %i.cl           ; 2 uses
  %i.fc = fadd float %i.ey, %i.cm                 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !112
  %i.ff = icmp eq i32 %i.fe, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  br i1 %i.ff, label %bb.b, label %bb.c

bb.b:                                             ; preds = %b3AABB_Contains.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store <2 x float> %i.ez, ptr %16, align 8
  %.sroa.5.0..sroa_idx153.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store float %i.fa, ptr %.sroa.5.0..sroa_idx153.i, align 8
  %.sroa.6.0..sroa_idx156.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  store <2 x float> %i.fb, ptr %.sroa.6.0..sroa_idx156.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 20
  store float %i.fc, ptr %.sroa.7.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  store ptr %i.a, ptr %15, align 8, !tbaa !11
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 256, ptr %i.fh, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 0, ptr %i.fi, align 4, !tbaa !13
  call void @b3QueryMesh(ptr noundef nonnull %i.fg, ptr noundef nonnull byval(%struct.b3AABB) align 8 %16, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %15) #7
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.d

bb.c:                                             ; preds = %b3AABB_Contains.exit.thread.i
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store <2 x float> %i.ez, ptr %14, align 8
  %.sroa.5.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.fa, ptr %.sroa.5.0..sroa_idx154.i, align 8
  %.sroa.6.0..sroa_idx157.i = getelementptr inbounds nuw i8, ptr %14, i64 12
  store <2 x float> %i.fb, ptr %.sroa.6.0..sroa_idx157.i, align 4
  %.sroa.7.0..sroa_idx159.i = getelementptr inbounds nuw i8, ptr %14, i64 20
  store float %i.fc, ptr %.sroa.7.0..sroa_idx159.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  store ptr %i.a, ptr %13, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 256, ptr %i.fl, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 0, ptr %i.fm, align 4, !tbaa !13
  call void @b3QueryHeightField(ptr noundef %i.fk, ptr noundef nonnull byval(%struct.b3AABB) align 8 %14, ptr noundef nonnull @b3CollectTriangleIndicesCallback, ptr noundef nonnull %13) #7
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087.i = phi i32 [ %i.fj, %bb.b ], [ %i.fn, %bb.c ] ; 10 uses
  %i.fo = icmp eq i32 %.087.i, 256
  br i1 %i.fo, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.b.i = load i1, ptr @b3RefreshCache.s_once, align 1
end_hunk_0
begin_hunk_1_@b3ComputeMeshManifolds:bb.a
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !126
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !130
  %i.nv = icmp sgt i32 %i.nm, %i.nu
  br i1 %i.nv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.nm, ptr %i.nt, align 8, !tbaa !130
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.nw = load ptr, ptr %9, align 8, !tbaa !131
  %i.nx = sext i32 %i.nl to i64
  %i.ny = getelementptr inbounds i8, ptr %i.nw, i64 %i.nx
  br label %b3Bump.exit965

b3Bump.exit965:                                   ; preds = %b3Bump.exit959, %bb.ae, %bb.ah
  %.1.i964 = phi ptr [ null, %b3Bump.exit959 ], [ %i.nq, %bb.ae ], [ %i.ny, %bb.ah ]
  %i.nz = shl i32 %i.he, 6                        ; 3 uses
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %b3Bump.exit967, label %bb.ai

bb.ai:                                            ; preds = %b3Bump.exit965
  %i.ob = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !124
  %i.od = add nsw i32 %i.oc, 15
  %i.oe = and i32 %i.od, -16                      ; 2 uses
  %i.of = add nsw i32 %i.oe, %i.nz                ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !125
  %i.oi = icmp sgt i32 %i.of, %i.oh
  br i1 %i.oi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.oj = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.nz) #7
  br label %b3Bump.exit967

bb.ak:                                            ; preds = %bb.ai
  store i32 %i.of, ptr %i.ob, align 4, !tbaa !124
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !126
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 2 uses
  %i.on = load i32, ptr %i.om, align 8, !tbaa !130
  %i.oo = icmp sgt i32 %i.of, %i.on
  br i1 %i.oo, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.of, ptr %i.om, align 8, !tbaa !130
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.op = load ptr, ptr %9, align 8, !tbaa !131
  %i.oq = sext i32 %i.oe to i64
  %i.or = getelementptr inbounds i8, ptr %i.op, i64 %i.oq
  br label %b3Bump.exit967

b3Bump.exit967:                                   ; preds = %b3Bump.exit965, %bb.aj, %bb.am
  %.1.i966 = phi ptr [ null, %b3Bump.exit965 ], [ %i.oj, %bb.aj ], [ %i.or, %bb.am ]
  %i.os = load ptr, ptr %i.i, align 8, !tbaa !141
  %i.ot = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !112
  %i.ov = icmp eq i32 %i.ou, 3
  br i1 %i.ov, label %.thread1917, label %bb.an

bb.an:                                            ; preds = %b3Bump.exit967
  %i.ow = icmp slt i32 %i.he, 1
  br i1 %i.ow, label %.loopexit1544.thread, label %.lr.ph1580

.thread1917:                                      ; preds = %b3Bump.exit967
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !113
  %i.oz = icmp slt i32 %i.he, 1
  br i1 %i.oz, label %.loopexit1544.thread, label %.lr.ph1580

.lr.ph1580:                                       ; preds = %.thread1917, %bb.an
  %i.pa = phi ptr [ %i.oy, %.thread1917 ], [ null, %bb.an ]
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
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
  %i.pd = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %.sroa.4573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  %.sroa.4555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.pi = fmul float %i.my, -2.000000e+00
  %i.pj = zext nneg i32 %i.he to i64
  %i.pk = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.pl = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.pm = insertelement <4 x float> %i.pl, float %i.mu, i64 1
  %i.pn = insertelement <4 x float> %i.pm, float %i.mt, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.mv, i64 3
  %i.pp = insertelement <4 x float> poison, float %i.ld, i64 0
  %i.pq = insertelement <4 x float> %i.pp, float %i.lf, i64 1
  %i.pr = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ps = shufflevector <4 x float> %i.pk, <4 x float> %i.pr, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pt = insertelement <4 x float> %i.ps, float %i.mj, i64 3
  %i.pu = insertelement <4 x float> poison, float %i.mu, i64 2
  %i.pv = insertelement <4 x float> %i.pu, float %i.mt, i64 3
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1580, %bb.ca
  %indvars.iv1703 = phi i64 [ 0, %.lr.ph1580 ], [ %indvars.iv.next1704, %bb.ca ] ; 2 uses
  %.08301578 = phi i32 [ 0, %.lr.ph1580 ], [ %.4834.ph, %bb.ca ] ; 9 uses
  %.08351577 = phi i32 [ 0, %.lr.ph1580 ], [ %i.adj, %bb.ca ] ; 4 uses
  %.08411576 = phi i32 [ 0, %.lr.ph1580 ], [ %i.adk, %bb.ca ] ; 2 uses
  %.08481575 = phi i32 [ 0, %.lr.ph1580 ], [ %.2850.ph, %bb.ca ] ; 4 uses
  %.08511574 = phi i32 [ 0, %.lr.ph1580 ], [ %.2853.ph, %bb.ca ] ; 3 uses
  %i.pw = phi <2 x i32> [ zeroinitializer, %.lr.ph1580 ], [ %i.adi, %bb.ca ] ; 6 uses
  %i.px = getelementptr inbounds nuw [20 x i8], ptr %i.os, i64 %indvars.iv1703 ; 4 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !115 ; 3 uses
  %i.pz = load i32, ptr %i.pb, align 8, !tbaa !112
  %i.qa = icmp eq i32 %i.pz, 4
  br i1 %i.qa, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #7
  call void @b3GetMeshTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %20, ptr noundef nonnull %i.pc, i32 noundef %i.py) #7
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
  %i.qb = load ptr, ptr %i.pc, align 8, !tbaa !113
  call void @b3GetHeightFieldTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %21, ptr noundef %i.qb, i32 noundef %i.py) #7
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
  %foldExtExtBinop2000 = fmul <2 x float> %i.ml, %.sroa.0592.0
  %i.qc = extractelement <2 x float> %foldExtExtBinop2000, i64 0
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0592.0, i64 1 ; 2 uses
  %i.qd = fmul float %i.mu, %.sroa.03.4.vec.extract.i
  %i.qe = fadd float %i.qc, %i.qd
  %i.qf = fmul float %i.mo, %.sroa.5594.0
  %i.qg = fadd float %i.qf, %i.qe
  %i.qh = fmul float %i.mt, %.sroa.03.0.vec.extract.i
  %foldExtExtBinop2002 = fmul <2 x float> %i.ml, %.sroa.0592.0
  %i.qi = extractelement <2 x float> %foldExtExtBinop2002, i64 1
  %i.qj = fadd float %i.qh, %i.qi
  %i.qk = fmul float %i.mq, %.sroa.5594.0
  %i.ql = fadd float %i.qk, %i.qj
  %i.qm = fmul float %i.mj, %.sroa.03.0.vec.extract.i
  %i.qn = fmul float %i.mv, %.sroa.03.4.vec.extract.i
  %i.qo = fadd float %i.qm, %i.qn
  %i.qp = fadd float %i.lb, %i.qg
  %.sroa.08.0.vec.insert.i = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.qq = fadd float %i.ld, %i.ql
  %.sroa.08.4.vec.insert.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i, float %i.qq, i64 1
  store <2 x float> %.sroa.08.4.vec.insert.i, ptr %22, align 16, !tbaa !106
  %i.qr = fmul float %i.mo, %.sroa.7600.0
  %i.qs = fmul float %i.mq, %.sroa.7600.0
  %i.qt = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %.sroa.5594.0, i64 0
  %i.qu = fmul <4 x float> %i.po, %i.qt           ; 2 uses
  %i.qv = shufflevector <2 x float> %.sroa.6597.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %i.qw = insertelement <4 x float> %i.qv, float 1.000000e+00, i64 0
  %i.qx = fmul <4 x float> %i.pt, %i.qw
  %i.qy = shufflevector <2 x float> %.sroa.6597.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qz = insertelement <4 x float> poison, float %i.qo, i64 0
  %i.ra = shufflevector <4 x float> %i.qy, <4 x float> %i.qz, <4 x i32> <i32 4, i32 1, i32 0, i32 1> ; 2 uses
  %i.rb = fadd <4 x float> %i.qu, %i.ra
  %i.rc = fmul <4 x float> %i.qu, %i.ra
  %i.rd = shufflevector <4 x float> %i.rb, <4 x float> %i.rc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.re = fadd <4 x float> %i.qx, %i.rd           ; 3 uses
  %i.rf = extractelement <4 x float> %i.re, i64 0
  store float %i.rf, ptr %.sroa.4591.0..sroa_idx, align 8, !tbaa !106
  %i.rg = extractelement <4 x float> %i.re, i64 1
  %i.rh = fadd float %i.qr, %i.rg
  %i.ri = fmul float %i.mw, %.sroa.7600.0
  %i.rj = fadd float %i.lb, %i.rh
  %i.rk = insertelement <4 x float> poison, float %i.rj, i64 0
  %.sroa.03.0.vec.extract.i988 = extractelement <2 x float> %.sroa.8.0, i64 0
  %.sroa.03.4.vec.extract.i989 = extractelement <2 x float> %.sroa.8.0, i64 1
  %i.rl = fmul float %i.mo, %.sroa.9605.0
  %i.rm = insertelement <4 x float> %i.pv, float %i.qs, i64 0
  %i.rn = insertelement <4 x float> %i.rm, float %i.ri, i64 1 ; 2 uses
  %i.ro = shufflevector <2 x float> %.sroa.8.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rp = shufflevector <4 x float> %i.re, <4 x float> %i.ro, <4 x i32> <i32 2, i32 3, i32 5, i32 4> ; 2 uses
  %i.rq = fadd <4 x float> %i.rn, %i.rp
  %i.rr = fmul <4 x float> %i.rn, %i.rp
  %i.rs = shufflevector <4 x float> %i.rq, <4 x float> %i.rr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rt = fmul <2 x float> %i.ml, %.sroa.8.0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rv = shufflevector <4 x float> %i.pq, <4 x float> %i.ru, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rw = fadd <4 x float> %i.rv, %i.rs           ; 4 uses
  %i.rx = shufflevector <4 x float> %i.rk, <4 x float> %i.rw, <2 x i32> <i32 0, i32 4>
  store <2 x float> %i.rx, ptr %i.pd, align 4, !tbaa !106
  %i.ry = extractelement <4 x float> %i.rw, i64 1
  store float %i.ry, ptr %.sroa.4573.0..sroa_idx, align 4, !tbaa !106
  %i.rz = extractelement <4 x float> %i.rw, i64 2
  %i.sa = fadd float %i.rl, %i.rz
  %i.sb = fmul float %i.mq, %.sroa.9605.0
  %i.sc = extractelement <4 x float> %i.rw, i64 3
  %i.sd = fadd float %i.sb, %i.sc
  %i.se = fmul float %i.mj, %.sroa.03.0.vec.extract.i988
  %i.sf = fmul float %i.mv, %.sroa.03.4.vec.extract.i989
  %i.sg = fadd float %i.se, %i.sf
  %i.sh = fmul float %i.mw, %.sroa.9605.0
  %i.si = fadd float %i.sh, %i.sg
  %i.sj = fadd float %i.lb, %i.sa
  %.sroa.08.0.vec.insert.i996 = insertelement <2 x float> poison, float %i.sj, i64 0
  %i.sk = fadd float %i.ld, %i.sd
  %.sroa.08.4.vec.insert.i999 = insertelement <2 x float> %.sroa.08.0.vec.insert.i996, float %i.sk, i64 1
  %i.sl = fadd float %i.lf, %i.si
  store <2 x float> %.sroa.08.4.vec.insert.i999, ptr %i.pe, align 8, !tbaa !106
  store float %i.sl, ptr %.sroa.4555.0..sroa_idx, align 16, !tbaa !106
  %i.sm = getelementptr inbounds nuw i8, ptr %i.px, i64 4 ; 3 uses
  %i.sn = sub nsw i32 %i.nf, %.08481575           ; 3 uses
  %i.so = sext i32 %.08511574 to i64
  %i.sp = getelementptr inbounds [64 x i8], ptr %.1.i966, i64 %i.so ; 18 uses
  %i.sq = zext nneg i32 %.08481575 to i64
  %i.sr = getelementptr inbounds nuw [24 x i8], ptr %.1.i964, i64 %i.sq
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 24 ; 2 uses
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !144
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 32 ; 2 uses
  store i32 0, ptr %i.st, align 8, !tbaa !145
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 60
  store i32 %.sroa.40.0, ptr %i.su, align 4, !tbaa !146
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 56 ; 2 uses
  store i32 0, ptr %i.sv, align 8, !tbaa !147
  %i.sw = load i32, ptr %i.ot, align 8, !tbaa !112
  switch i32 %i.sw, label %bb.cb [
    i32 0, label %bb.as
    i32 3, label %bb.at
    i32 5, label %bb.ax
  ]

bb.as:                                            ; preds = %bb.ar
  call void @b3CollideTriangleAndCapsule(ptr noundef nonnull %i.sp, i32 noundef %i.sn, ptr noundef nonnull %22, ptr noundef nonnull %i.pf, ptr noundef nonnull %i.sm) #7
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  br i1 %8, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.sx = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.sy = load i8, ptr %i.sx, align 4, !tbaa !113
  %i.sz = icmp eq i8 %i.sy, 4
  br i1 %i.sz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 0, ptr %i.sm, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.sroa.0498.0.copyload = load <2 x float>, ptr %22, align 16
  %.sroa.2499.0.copyload = load float, ptr %.sroa.4591.0..sroa_idx, align 8
  %.sroa.0496.0.copyload = load <2 x float>, ptr %i.pd, align 4
  %.sroa.2497.0.copyload = load float, ptr %.sroa.4573.0..sroa_idx, align 4
  %.sroa.0494.0.copyload = load <2 x float>, ptr %i.pe, align 8
  %.sroa.2495.0.copyload = load float, ptr %.sroa.4555.0..sroa_idx, align 16
  call void @b3CollideTriangleAndHull(ptr noundef nonnull %i.sp, i32 noundef %i.sn, <2 x float> %.sroa.0498.0.copyload, float %.sroa.2499.0.copyload, <2 x float> %.sroa.0496.0.copyload, float %.sroa.2497.0.copyload, <2 x float> %.sroa.0494.0.copyload, float %.sroa.2495.0.copyload, i32 noundef %.sroa.40.0, ptr noundef %i.pa, ptr noundef nonnull %i.sm, i1 noundef zeroext %i.ne) #7
  %i.ta = load i32, ptr %i.pg, align 8, !tbaa !151
  %i.tb = add nsw i32 %i.ta, 1
  store i32 %i.tb, ptr %i.pg, align 8, !tbaa !151
  %i.tc = getelementptr inbounds nuw i8, ptr %i.px, i64 11
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !113
  %i.te = zext i8 %i.td to i32
  %i.tf = load i32, ptr %i.ph, align 4, !tbaa !152
  %i.tg = add nsw i32 %i.tf, %i.te
  store i32 %i.tg, ptr %i.ph, align 4, !tbaa !152
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ar
  call void @b3CollideTriangleAndSphere(ptr noundef nonnull %i.sp, i32 noundef %i.sn, ptr noundef nonnull %22, ptr noundef nonnull %i.pf) #7
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.as
  %i.th = load i32, ptr %i.st, align 8, !tbaa !145 ; 5 uses
  %i.ti = icmp sgt i32 %i.th, 0
  br i1 %i.ti, label %bb.az, label %bb.ca

bb.az:                                            ; preds = %bb.ay
  %i.tj = add nsw i32 %.08511574, 1
  %i.tk = add nuw nsw i32 %i.th, %.08481575
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sp, i64 36
  store i32 %i.py, ptr %i.tl, align 4, !tbaa !153
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sp, i64 12
  %.sroa.0487.0.copyload = load <2 x float>, ptr %22, align 16 ; 2 uses
  %i.tn = load <4 x float>, ptr %.sroa.4591.0..sroa_idx, align 8
  %.sroa.0485.0.copyload = load <2 x float>, ptr %i.pd, align 4 ; 2 uses
  %.sroa.0483.0.copyload = load <2 x float>, ptr %i.pe, align 8 ; 2 uses
  %i.to = load <4 x float>, ptr %.sroa.4573.0..sroa_idx, align 4
  %i.tp = shufflevector <4 x float> %i.to, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.tq = shufflevector <2 x float> %.sroa.0483.0.copyload, <2 x float> %.sroa.0485.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.tr = fsub <2 x float> %i.tq, %.sroa.0487.0.copyload ; 3 uses
  %i.ts = shufflevector <2 x float> %.sroa.0485.0.copyload, <2 x float> %.sroa.0483.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.tt = fsub <2 x float> %i.ts, %.sroa.0487.0.copyload ; 3 uses
  %i.tu = shufflevector <4 x float> %i.tn, <4 x float> poison, <2 x i32> zeroinitializer
  %i.tv = fsub <2 x float> %i.tp, %i.tu           ; 2 uses
  %i.tw = fmul <2 x float> %i.tv, %i.tr
  %i.tx = shufflevector <2 x float> %i.tv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ty = fmul <2 x float> %i.tt, %i.tx
  %i.tz = fsub <2 x float> %i.tw, %i.ty           ; 3 uses
  %shift2004 = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2005 = fmul <2 x float> %i.tt, %shift2004
  %shift2007 = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2008 = fmul <2 x float> %shift2007, %i.tr
  %foldExtExtBinop2010 = fsub <2 x float> %foldExtExtBinop2005, %foldExtExtBinop2008 ; 3 uses
  %i.ua = fmul <2 x float> %i.tz, %i.tz           ; 2 uses
  %shift2012 = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2013 = fadd <2 x float> %shift2012, %i.ua
  %foldExtExtBinop2015 = fmul <2 x float> %foldExtExtBinop2010, %foldExtExtBinop2010
  %foldExtExtBinop2017 = fadd <2 x float> %foldExtExtBinop2015, %foldExtExtBinop2013
  %i.ub = extractelement <2 x float> %foldExtExtBinop2017, i64 0 ; 2 uses
  %i.uc = fcmp ogt float %i.ub, f0x057A0000
  br i1 %i.uc, label %bb.ba, label %b3MakeNormalFromPoints.exit

bb.ba:                                            ; preds = %bb.az
  %i.ud = extractelement <2 x float> %foldExtExtBinop2010, i64 0
  %sqrt.i = call float @llvm.sqrt.f32(float %i.ub)
  %i.ue = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.uf = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.ug = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uh = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = fmul <2 x float> %i.ug, %i.uh
  %i.uj = fmul float %i.ud, %i.ue
  br label %b3MakeNormalFromPoints.exit

b3MakeNormalFromPoints.exit:                      ; preds = %bb.az, %bb.ba
  %.sroa.018.0.i.i = phi <2 x float> [ %i.ui, %bb.ba ], [ zeroinitializer, %bb.az ] ; 2 uses
  %.sroa.5.0.i.i = phi float [ %i.uj, %bb.ba ], [ 0.000000e+00, %bb.az ] ; 2 uses
  store <2 x float> %.sroa.018.0.i.i, ptr %i.tm, align 4, !tbaa !106
  %.sroa.4490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sp, i64 20
  store float %.sroa.5.0.i.i, ptr %.sroa.4490.0..sroa_idx, align 4, !tbaa !106
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sp, i64 40
  store i32 %.sroa.10.0, ptr %i.uk, align 8, !tbaa !154
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sp, i64 44
  store i32 %.sroa.20.0, ptr %i.ul, align 4, !tbaa !155
  %i.um = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  store i32 %.sroa.30.0, ptr %i.um, align 8, !tbaa !156
  %i.un = load i32, ptr %i.sv, align 8, !tbaa !147
  switch i32 %i.un, label %bb.bz [
    i32 1, label %bb.bb
    i32 2, label %bb.bi
  ]

bb.bb:                                            ; preds = %b3MakeNormalFromPoints.exit
  %i.uo = call noundef i32 @llvm.smin.i32(i32 %.sroa.10.0, i32 %.sroa.20.0)
  %i.up = sext i32 %i.uo to i64
  %i.uq = call noundef i32 @llvm.smax.i32(i32 %.sroa.10.0, i32 %.sroa.20.0)
  %i.ur = sext i32 %i.uq to i64
  %i.us = shl nsw i64 %i.up, 32
  %i.ut = or i64 %i.us, %i.ur                     ; 2 uses
  %i.uu = load i32, ptr %i.jc, align 8, !tbaa !133 ; 6 uses
  %.not24.i = icmp slt i32 %i.uu, 1
  br i1 %.not24.i, label %.critedge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bb
  %wide.trip.count.i1006 = zext nneg i32 %i.uu to i64
  br label %.lr.ph.i1007

bb.bc:                                            ; preds = %.lr.ph.i1007
  %indvars.iv.next.i1009 = add nuw nsw i64 %indvars.iv.i1008, 1 ; 2 uses
  %exitcond.not.i1010 = icmp eq i64 %indvars.iv.next.i1009, %wide.trip.count.i1006
  br i1 %exitcond.not.i1010, label %.critedge.i1011, label %.lr.ph.i1007, !llvm.loop !18

.lr.ph.i1007:                                     ; preds = %bb.bc, %.lr.ph.preheader.i
  %indvars.iv.i1008 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i1009, %bb.bc ] ; 2 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1008
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !157
  %i.ux = icmp eq i64 %i.uw, %i.ut
  br i1 %i.ux, label %b3AddEdge.exit, label %bb.bc

.critedge.i1011:                                  ; preds = %bb.bc
  %.old.i = icmp eq i32 %i.uu, 64
  br i1 %.old.i, label %b3AddEdge.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i1011, %bb.bb
  %i.uy = sext i32 %i.uu to i64
  %i.uz = getelementptr inbounds [8 x i8], ptr %18, i64 %i.uy
  store i64 %i.ut, ptr %i.uz, align 8, !tbaa !157
  %i.va = add nsw i32 %i.uu, 1                    ; 2 uses
  store i32 %i.va, ptr %i.jc, align 8, !tbaa !133
  br label %b3AddEdge.exit

b3AddEdge.exit:                                   ; preds = %.lr.ph.i1007, %.critedge.i1011, %.critedge.thread.i
  %.pr1503 = phi i32 [ %i.va, %.critedge.thread.i ], [ 64, %.critedge.i1011 ], [ %i.uu, %.lr.ph.i1007 ] ; 6 uses
  %i.vb = call noundef i32 @llvm.smin.i32(i32 %.sroa.20.0, i32 %.sroa.30.0)
  %i.vc = sext i32 %i.vb to i64
  %i.vd = call noundef i32 @llvm.smax.i32(i32 %.sroa.20.0, i32 %.sroa.30.0)
  %i.ve = sext i32 %i.vd to i64
  %i.vf = shl nsw i64 %i.vc, 32
  %i.vg = or i64 %i.vf, %i.ve                     ; 2 uses
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
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1016
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !157
  %i.vj = icmp eq i64 %i.vi, %i.vg
  br i1 %i.vj, label %b3AddEdge.exit1023, label %bb.bd

.critedge.i1019:                                  ; preds = %bb.bd
  %.old.i1020 = icmp eq i32 %.pr1503, 64
  br i1 %.old.i1020, label %b3AddEdge.exit1023, label %.critedge.thread.i1021

.critedge.thread.i1021:                           ; preds = %.critedge.i1019, %b3AddEdge.exit
  %i.vk = sext i32 %.pr1503 to i64
  %i.vl = getelementptr inbounds [8 x i8], ptr %18, i64 %i.vk
  store i64 %i.vg, ptr %i.vl, align 8, !tbaa !157
  %i.vm = add nsw i32 %.pr1503, 1                 ; 2 uses
  store i32 %i.vm, ptr %i.jc, align 8, !tbaa !133
  br label %b3AddEdge.exit1023

b3AddEdge.exit1023:                               ; preds = %.lr.ph.i1015, %.critedge.i1019, %.critedge.thread.i1021
  %i.vn = phi i32 [ %i.vm, %.critedge.thread.i1021 ], [ 64, %.critedge.i1019 ], [ %.pr1503, %.lr.ph.i1015 ] ; 5 uses
  %i.vo = call noundef i32 @llvm.smin.i32(i32 %.sroa.30.0, i32 %.sroa.10.0)
  %i.vp = sext i32 %i.vo to i64
  %i.vq = call noundef i32 @llvm.smax.i32(i32 %.sroa.30.0, i32 %.sroa.10.0)
  %i.vr = sext i32 %i.vq to i64
  %i.vs = shl nsw i64 %i.vp, 32
  %i.vt = or i64 %i.vs, %i.vr                     ; 2 uses
  %.not24.i1024 = icmp slt i32 %i.vn, 1
  br i1 %.not24.i1024, label %.critedge.thread.i1033, label %.lr.ph.preheader.i1025

.lr.ph.preheader.i1025:                           ; preds = %b3AddEdge.exit1023
  %wide.trip.count.i1026 = zext nneg i32 %i.vn to i64
  br label %.lr.ph.i1027

bb.be:                                            ; preds = %.lr.ph.i1027
  %indvars.iv.next.i1029 = add nuw nsw i64 %indvars.iv.i1028, 1 ; 2 uses
  %exitcond.not.i1030 = icmp eq i64 %indvars.iv.next.i1029, %wide.trip.count.i1026
  br i1 %exitcond.not.i1030, label %.critedge.i1031, label %.lr.ph.i1027, !llvm.loop !18

.lr.ph.i1027:                                     ; preds = %bb.be, %.lr.ph.preheader.i1025
  %indvars.iv.i1028 = phi i64 [ 0, %.lr.ph.preheader.i1025 ], [ %indvars.iv.next.i1029, %bb.be ] ; 2 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1028
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !157
  %i.vw = icmp eq i64 %i.vv, %i.vt
  br i1 %i.vw, label %b3AddEdge.exit1035, label %bb.be

.critedge.i1031:                                  ; preds = %bb.be
  %.old.i1032 = icmp eq i32 %i.vn, 64
  br i1 %.old.i1032, label %b3AddEdge.exit1035, label %.critedge.thread.i1033

.critedge.thread.i1033:                           ; preds = %.critedge.i1031, %b3AddEdge.exit1023
  %i.vx = sext i32 %i.vn to i64
  %i.vy = getelementptr inbounds [8 x i8], ptr %18, i64 %i.vx
  store i64 %i.vt, ptr %i.vy, align 8, !tbaa !157
  %i.vz = add nsw i32 %i.vn, 1
  store i32 %i.vz, ptr %i.jc, align 8, !tbaa !133
  br label %b3AddEdge.exit1035

b3AddEdge.exit1035:                               ; preds = %.lr.ph.i1027, %.critedge.i1031, %.critedge.thread.i1033
  %i.wa = load i32, ptr %i.jd, align 4, !tbaa !135 ; 5 uses
  %.not19.i = icmp slt i32 %i.wa, 1
  br i1 %.not19.i, label %.critedge.thread.i1044, label %.lr.ph.preheader.i1036

.lr.ph.preheader.i1036:                           ; preds = %b3AddEdge.exit1035
  %wide.trip.count.i1037 = zext nneg i32 %i.wa to i64
  br label %.lr.ph.i1038

bb.bf:                                            ; preds = %.lr.ph.i1038
  %indvars.iv.next.i1040 = add nuw nsw i64 %indvars.iv.i1039, 1 ; 2 uses
  %exitcond.not.i1041 = icmp eq i64 %indvars.iv.next.i1040, %wide.trip.count.i1037
  br i1 %exitcond.not.i1041, label %.critedge.i1042, label %.lr.ph.i1038, !llvm.loop !19

.lr.ph.i1038:                                     ; preds = %bb.bf, %.lr.ph.preheader.i1036
  %indvars.iv.i1039 = phi i64 [ 0, %.lr.ph.preheader.i1036 ], [ %indvars.iv.next.i1040, %bb.bf ] ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.i1039
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !14
  %i.wd = icmp eq i32 %i.wc, %.sroa.10.0
  br i1 %i.wd, label %b3AddVertex.exit, label %bb.bf

.critedge.i1042:                                  ; preds = %bb.bf
  %.old.i1043 = icmp eq i32 %i.wa, 64
  br i1 %.old.i1043, label %.lr.ph.preheader.i1046, label %.critedge.thread.i1044

.critedge.thread.i1044:                           ; preds = %.critedge.i1042, %b3AddEdge.exit1035
  %i.we = sext i32 %i.wa to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %19, i64 %i.we
  store i32 %.sroa.10.0, ptr %i.wf, align 4, !tbaa !14
  %i.wg = load i32, ptr %i.jd, align 4, !tbaa !135
  %i.wh = add nsw i32 %i.wg, 1                    ; 2 uses
  store i32 %i.wh, ptr %i.jd, align 4, !tbaa !135
  br label %b3AddVertex.exit

b3AddVertex.exit:                                 ; preds = %.lr.ph.i1038, %.critedge.thread.i1044
  %.pr1505 = phi i32 [ %i.wh, %.critedge.thread.i1044 ], [ %i.wa, %.lr.ph.i1038 ] ; 3 uses
  %.not19.i1045 = icmp slt i32 %.pr1505, 1
  br i1 %.not19.i1045, label %b3AddVertex.exit1056, label %.lr.ph.preheader.i1046

.lr.ph.preheader.i1046:                           ; preds = %.critedge.i1042, %b3AddVertex.exit
  %.pr15051852 = phi i32 [ %.pr1505, %b3AddVertex.exit ], [ 64, %.critedge.i1042 ] ; 4 uses
  %wide.trip.count.i1047 = zext nneg i32 %.pr15051852 to i64
  br label %.lr.ph.i1048

bb.bg:                                            ; preds = %.lr.ph.i1048
  %indvars.iv.next.i1050 = add nuw nsw i64 %indvars.iv.i1049, 1 ; 2 uses
  %exitcond.not.i1051 = icmp eq i64 %indvars.iv.next.i1050, %wide.trip.count.i1047
  br i1 %exitcond.not.i1051, label %.critedge.i1052, label %.lr.ph.i1048, !llvm.loop !19

.lr.ph.i1048:                                     ; preds = %bb.bg, %.lr.ph.preheader.i1046
  %indvars.iv.i1049 = phi i64 [ 0, %.lr.ph.preheader.i1046 ], [ %indvars.iv.next.i1050, %bb.bg ] ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv.i1049
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !14
  %i.wk = icmp eq i32 %i.wj, %.sroa.20.0
  br i1 %i.wk, label %.lr.ph.preheader.i1058, label %bb.bg

.critedge.i1052:                                  ; preds = %bb.bg
  %.old.i1053 = icmp eq i32 %.pr15051852, 64
  br i1 %.old.i1053, label %.lr.ph.preheader.i1058, label %b3AddVertex.exit1056

b3AddVertex.exit1056:                             ; preds = %b3AddVertex.exit, %.critedge.i1052
  %.pr15051853 = phi i32 [ %.pr15051852, %.critedge.i1052 ], [ %.pr1505, %b3AddVertex.exit ]
  %i.wl = sext i32 %.pr15051853 to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %19, i64 %i.wl
  store i32 %.sroa.20.0, ptr %i.wm, align 4, !tbaa !14
  %i.wn = load i32, ptr %i.jd, align 4, !tbaa !135 ; 2 uses
  %i.wo = add nsw i32 %i.wn, 1                    ; 3 uses
  store i32 %i.wo, ptr %i.jd, align 4, !tbaa !135
  %.not19.i1057 = icmp slt i32 %i.wn, 0
end_hunk_1
begin_hunk_2_@b3ComputeMeshManifolds:bb.a
  %i.akv = icmp eq i32 %i.aku, 34
  br i1 %i.akv, label %bb.do, label %b3FindEdge.exit1301.thread

bb.do:                                            ; preds = %b3FindEdge.exit.thread
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aka, i64 44
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !155 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aka, i64 48
  %i.akz = load i32, ptr %i.aky, align 8, !tbaa !156 ; 2 uses
  %i.ala = call noundef i32 @llvm.smin.i32(i32 %i.akx, i32 %i.akz)
  %i.alb = sext i32 %i.ala to i64
  %i.alc = call noundef i32 @llvm.smax.i32(i32 %i.akx, i32 %i.akz)
  %i.ald = sext i32 %i.alc to i64
  %i.ale = shl nsw i64 %i.alb, 32
  %i.alf = or i64 %i.ale, %i.ald
  br i1 %.not16.i, label %.lr.ph.i1297, label %b3FindEdge.exit1301.thread

bb.dp:                                            ; preds = %.lr.ph.i1297
  %indvars.iv.next.i1299 = add nuw nsw i64 %indvars.iv.i1298, 1 ; 2 uses
  %exitcond.not.i1300 = icmp eq i64 %indvars.iv.next.i1299, %wide.trip.count.i1287
  br i1 %exitcond.not.i1300, label %b3FindEdge.exit1301.thread, label %.lr.ph.i1297, !llvm.loop !27

.lr.ph.i1297:                                     ; preds = %bb.do, %bb.dp
  %indvars.iv.i1298 = phi i64 [ %indvars.iv.next.i1299, %bb.dp ], [ 0, %bb.do ] ; 2 uses
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1298
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !157
  %i.ali = icmp eq i64 %i.alh, %i.alf
  br i1 %i.ali, label %b3FindEdge.exit, label %bb.dp

b3FindEdge.exit1301.thread:                       ; preds = %bb.dp, %bb.do, %b3FindEdge.exit.thread
  %i.alj = and i32 %i.akc, 68
  %i.alk = icmp eq i32 %i.alj, 68
  br i1 %i.alk, label %bb.dq, label %b3FindEdge.exit1311.thread

bb.dq:                                            ; preds = %b3FindEdge.exit1301.thread
  %i.all = getelementptr inbounds nuw i8, ptr %i.aka, i64 48
  %i.alm = load i32, ptr %i.all, align 8, !tbaa !156 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.aka, i64 40
  %i.alo = load i32, ptr %i.aln, align 8, !tbaa !154 ; 2 uses
  %i.alp = call noundef i32 @llvm.smin.i32(i32 %i.alm, i32 %i.alo)
  %i.alq = sext i32 %i.alp to i64
  %i.alr = call noundef i32 @llvm.smax.i32(i32 %i.alm, i32 %i.alo)
  %i.als = sext i32 %i.alr to i64
  %i.alt = shl nsw i64 %i.alq, 32
  %i.alu = or i64 %i.alt, %i.als
  br i1 %.not16.i, label %.lr.ph.i1307, label %b3FindEdge.exit1311.thread

bb.dr:                                            ; preds = %.lr.ph.i1307
  %indvars.iv.next.i1309 = add nuw nsw i64 %indvars.iv.i1308, 1 ; 2 uses
  %exitcond.not.i1310 = icmp eq i64 %indvars.iv.next.i1309, %wide.trip.count.i1287
  br i1 %exitcond.not.i1310, label %b3FindEdge.exit1311.thread, label %.lr.ph.i1307, !llvm.loop !27

.lr.ph.i1307:                                     ; preds = %bb.dq, %bb.dr
  %indvars.iv.i1308 = phi i64 [ %indvars.iv.next.i1309, %bb.dr ], [ 0, %bb.dq ] ; 2 uses
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1308
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !157
  %i.alx = icmp eq i64 %i.alw, %i.alu
  br i1 %i.alx, label %b3FindEdge.exit, label %bb.dr

b3FindEdge.exit1311.thread:                       ; preds = %bb.dr, %bb.dq, %b3FindEdge.exit1301.thread
  %i.aly = add nsw i32 %.81586, 1
  %i.alz = sext i32 %.81586 to i64
  %i.ama = getelementptr inbounds [8 x i8], ptr %.1.i14961500, i64 %i.alz
  store ptr %i.aka, ptr %i.ama, align 8, !tbaa !163
  br label %b3FindEdge.exit

b3FindEdge.exit:                                  ; preds = %.lr.ph.i1288, %.lr.ph.i1297, %.lr.ph.i1307, %bb.dk, %b3FindEdge.exit1311.thread
  %.9 = phi i32 [ %i.aly, %b3FindEdge.exit1311.thread ], [ %.81586, %bb.dk ], [ %.81586, %.lr.ph.i1297 ], [ %.81586, %.lr.ph.i1307 ], [ %.81586, %.lr.ph.i1288 ] ; 2 uses
  %indvars.iv.next1707 = add nuw nsw i64 %indvars.iv1706, 1 ; 2 uses
  %exitcond1710.not = icmp eq i64 %indvars.iv.next1707, %wide.trip.count1709
  br i1 %exitcond1710.not, label %.loopexit1544, label %bb.dk, !llvm.loop !28

.loopexit1544:                                    ; preds = %b3FindEdge.exit, %.critedge949, %.preheader1550, %bb.db
  %.10 = phi i32 [ %.7, %.critedge949 ], [ %.4834.ph, %bb.db ], [ %.4834.ph, %.preheader1550 ], [ %.9, %b3FindEdge.exit ] ; 6 uses
  %i.amb = icmp eq i32 %.10, 0
  br i1 %i.amb, label %.loopexit1544.thread, label %bb.ds

.loopexit1544.thread:                             ; preds = %bb.an, %.thread1917, %.loopexit1544
  %i.amc = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 8, !tbaa !170 ; 2 uses
  %i.ame = icmp sgt i32 %i.amd, 0
  br i1 %i.ame, label %b3FreeManifolds.exit, label %._crit_edge1614.thread

b3FreeManifolds.exit:                             ; preds = %.loopexit1544.thread
  %i.amf = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !171
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !172
  call void @b3LockMutex(ptr noundef %i.ami) #7
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !173
  %i.aml = zext nneg i32 %i.amd to i64
  %i.amm = getelementptr [40 x i8], ptr %i.amk, i64 %i.aml
  %i.amn = getelementptr i8, ptr %i.amm, i64 -40
  call void @b3FreeElement(ptr noundef %i.amn, ptr noundef %i.amg) #7
  %i.amo = load ptr, ptr %i.amh, align 8, !tbaa !172
  call void @b3UnlockMutex(ptr noundef %i.amo) #7
  store ptr null, ptr %i.amf, align 8, !tbaa !171
  store i32 0, ptr %i.amc, align 8, !tbaa !170
  br label %._crit_edge1614.thread

bb.ds:                                            ; preds = %.loopexit1544
  %i.amp = mul i32 %.10, 40                       ; 3 uses
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %b3Bump.exit1313, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.amr = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !124
  %i.amt = add nsw i32 %i.ams, 15
  %i.amu = and i32 %i.amt, -16                    ; 2 uses
  %i.amv = add nsw i32 %i.amu, %i.amp             ; 4 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.amx = load i32, ptr %i.amw, align 8, !tbaa !125
  %i.amy = icmp sgt i32 %i.amv, %i.amx
  br i1 %i.amy, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.amz = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.amp) #7
  br label %b3Bump.exit1313

bb.dv:                                            ; preds = %bb.dt
  store i32 %i.amv, ptr %i.amr, align 4, !tbaa !124
  %i.ana = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !126
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 16 ; 2 uses
  %i.and = load i32, ptr %i.anc, align 8, !tbaa !130
  %i.ane = icmp sgt i32 %i.amv, %i.and
  br i1 %i.ane, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 %i.amv, ptr %i.anc, align 8, !tbaa !130
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.anf = load ptr, ptr %9, align 8, !tbaa !131
  %i.ang = sext i32 %i.amu to i64
  %i.anh = getelementptr inbounds i8, ptr %i.anf, i64 %i.ang
  br label %b3Bump.exit1313

b3Bump.exit1313:                                  ; preds = %bb.ds, %bb.du, %bb.dx
  %.1.i1312 = phi ptr [ null, %bb.ds ], [ %i.amz, %bb.du ], [ %i.anh, %bb.dx ] ; 9 uses
  %i.ani = shl i32 %.10, 2                        ; 3 uses
  %i.anj = icmp eq i32 %i.ani, 0
  br i1 %i.anj, label %b3Bump.exit1315, label %bb.dy

bb.dy:                                            ; preds = %b3Bump.exit1313
  %i.ank = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !124
  %i.anm = add nsw i32 %i.anl, 15
  %i.ann = and i32 %i.anm, -16                    ; 2 uses
  %i.ano = add nsw i32 %i.ann, %i.ani             ; 4 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !125
  %i.anr = icmp sgt i32 %i.ano, %i.anq
  br i1 %i.anr, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ans = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.ani) #7
  br label %b3Bump.exit1315

bb.ea:                                            ; preds = %bb.dy
  store i32 %i.ano, ptr %i.ank, align 4, !tbaa !124
  %i.ant = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !126
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 16 ; 2 uses
  %i.anw = load i32, ptr %i.anv, align 8, !tbaa !130
  %i.anx = icmp sgt i32 %i.ano, %i.anw
  br i1 %i.anx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 %i.ano, ptr %i.anv, align 8, !tbaa !130
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.any = load ptr, ptr %9, align 8, !tbaa !131
  %i.anz = sext i32 %i.ann to i64
  %i.aoa = getelementptr inbounds i8, ptr %i.any, i64 %i.anz
  br label %b3Bump.exit1315

b3Bump.exit1315:                                  ; preds = %b3Bump.exit1313, %bb.dz, %bb.ec
  %.1.i1314 = phi ptr [ null, %b3Bump.exit1313 ], [ %i.ans, %bb.dz ], [ %i.aoa, %bb.ec ] ; 2 uses
  %i.aob = icmp sgt i32 %.10, 0
  br i1 %i.aob, label %.lr.ph1613.preheader, label %._crit_edge1614.thread

.lr.ph1613.preheader:                             ; preds = %b3Bump.exit1315
  %wide.trip.count1724 = zext nneg i32 %.10 to i64
  br label %.lr.ph1613

._crit_edge1614:                                  ; preds = %bb.ef
  %.not1541 = icmp eq i32 %i.aoh, 0
  br i1 %.not1541, label %._crit_edge1614.thread, label %bb.eg

.lr.ph1613:                                       ; preds = %.lr.ph1613.preheader, %bb.ef
  %indvars.iv1721 = phi i64 [ 0, %.lr.ph1613.preheader ], [ %indvars.iv.next1722, %bb.ef ] ; 3 uses
  %.08991612 = phi i32 [ 0, %.lr.ph1613.preheader ], [ %.1900, %bb.ef ] ; 6 uses
  %.09011611 = phi i32 [ 0, %.lr.ph1613.preheader ], [ %i.aoh, %bb.ef ]
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %.1.i1314, i64 %indvars.iv1721 ; 3 uses
  store i32 -1, ptr %i.aoc, align 4, !tbaa !14
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %.1.i14961500, i64 %indvars.iv1721
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !163 ; 5 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 32 ; 2 uses
  %i.aog = load i32, ptr %i.aof, align 8, !tbaa !145 ; 2 uses
  %i.aoh = add nsw i32 %i.aog, %.09011611         ; 3 uses
  %.sroa.0278.0.copyload = load <2 x float>, ptr %i.aoe, align 8, !tbaa !106 ; 2 uses
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %.sroa.5280.0.copyload = load float, ptr %.sroa.5280.0..sroa_idx, align 8, !tbaa !106 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoe, i64 12
  %.sroa.0273.0.copyload = load <2 x float>, ptr %i.aoi, align 4, !tbaa !106 ; 2 uses
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aoe, i64 20
  %.sroa.5275.0.copyload = load float, ptr %.sroa.5275.0..sroa_idx, align 4, !tbaa !106 ; 2 uses
  %i.aoj = icmp sgt i32 %.08991612, 0
  br i1 %i.aoj, label %.lr.ph1605, label %._crit_edge1606.thread

.lr.ph1605:                                       ; preds = %.lr.ph1613
  %wide.trip.count1719 = zext nneg i32 %.08991612 to i64
  %i.aok = insertelement <2 x float> poison, float %.sroa.5275.0.copyload, i64 0
  %i.aol = insertelement <2 x float> %i.aok, float %.sroa.5280.0.copyload, i64 1
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph1605, %bb.ee
  %indvars.iv1716 = phi i64 [ 0, %.lr.ph1605 ], [ %indvars.iv.next1717, %bb.ee ] ; 4 uses
  %i.aom = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1716 ; 4 uses
  %.sroa.0262.0.copyload = load <2 x float>, ptr %i.aom, align 8
  %.sroa.2263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %.sroa.2263.0.copyload = load float, ptr %.sroa.2263.0..sroa_idx, align 8
  %i.aon = fmul <2 x float> %.sroa.0278.0.copyload, %.sroa.0262.0.copyload ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 12
  %.sroa.0257.0.copyload = load <2 x float>, ptr %i.aoo, align 4
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aom, i64 20
  %.sroa.2258.0.copyload = load float, ptr %.sroa.2258.0..sroa_idx, align 4
  %i.aop = fmul <2 x float> %.sroa.0273.0.copyload, %.sroa.0257.0.copyload ; 2 uses
  %i.aoq = shufflevector <2 x float> %i.aop, <2 x float> %i.aon, <2 x i32> <i32 0, i32 2>
  %i.aor = shufflevector <2 x float> %i.aop, <2 x float> %i.aon, <2 x i32> <i32 1, i32 3>
  %i.aos = fadd <2 x float> %i.aoq, %i.aor
  %i.aot = insertelement <2 x float> poison, float %.sroa.2258.0.copyload, i64 0
  %i.aou = insertelement <2 x float> %i.aot, float %.sroa.2263.0.copyload, i64 1
  %i.aov = fmul <2 x float> %i.aol, %i.aou
  %i.aow = fadd <2 x float> %i.aov, %i.aos
  %i.aox = fcmp ole <2 x float> %i.aow, splat (float f0x3F7EF9DB) ; 2 uses
  %i.aoy = extractelement <2 x i1> %i.aox, i64 0
  %i.aoz = extractelement <2 x i1> %i.aox, i64 1
  %or.cond = select i1 %i.aoz, i1 true, i1 %i.aoy
  br i1 %or.cond, label %bb.ee, label %._crit_edge1606

bb.ee:                                            ; preds = %bb.ed
  %indvars.iv.next1717 = add nuw nsw i64 %indvars.iv1716, 1 ; 2 uses
  %exitcond1720.not = icmp eq i64 %indvars.iv.next1717, %wide.trip.count1719
  br i1 %exitcond1720.not, label %._crit_edge1606.thread, label %bb.ed, !llvm.loop !29

._crit_edge1606:                                  ; preds = %bb.ed
  %i.apa = trunc nuw nsw i64 %indvars.iv1716 to i32
  store i32 %i.apa, ptr %i.aoc, align 4, !tbaa !14
  %i.apb = load i32, ptr %i.aof, align 8, !tbaa !145
  %i.apc = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1716
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 32 ; 2 uses
  %i.ape = load i32, ptr %i.apd, align 8, !tbaa !175
  %i.apf = add nsw i32 %i.ape, %i.apb
  store i32 %i.apf, ptr %i.apd, align 8, !tbaa !175
  br label %bb.ef

._crit_edge1606.thread:                           ; preds = %bb.ee, %.lr.ph1613
  %i.apg = sext i32 %.08991612 to i64
  %i.aph = getelementptr inbounds [40 x i8], ptr %.1.i1312, i64 %i.apg ; 5 uses
  store <2 x float> %.sroa.0278.0.copyload, ptr %i.aph, align 8, !tbaa !106
  %.sroa.5280.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  store float %.sroa.5280.0.copyload, ptr %.sroa.5280.0..sroa_idx281, align 8, !tbaa !106
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 12
  store <2 x float> %.sroa.0273.0.copyload, ptr %i.api, align 4, !tbaa !106
  %.sroa.5275.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.aph, i64 20
  store float %.sroa.5275.0.copyload, ptr %.sroa.5275.0..sroa_idx276, align 4, !tbaa !106
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 32
  store i32 %i.aog, ptr %i.apj, align 8, !tbaa !175
  store i32 %.08991612, ptr %i.aoc, align 4, !tbaa !14
  %i.apk = add nsw i32 %.08991612, 1
  br label %bb.ef

bb.ef:                                            ; preds = %._crit_edge1606.thread, %._crit_edge1606
  %.1900 = phi i32 [ %.08991612, %._crit_edge1606 ], [ %i.apk, %._crit_edge1606.thread ] ; 14 uses
  %indvars.iv.next1722 = add nuw nsw i64 %indvars.iv1721, 1 ; 2 uses
  %exitcond1725.not = icmp eq i64 %indvars.iv.next1722, %wide.trip.count1724
  br i1 %exitcond1725.not, label %._crit_edge1614, label %.lr.ph1613, !llvm.loop !30

bb.eg:                                            ; preds = %._crit_edge1614
  %i.apl = mul i32 %i.aoh, 24                     ; 3 uses
  %i.apm = icmp eq i32 %i.apl, 0
  br i1 %i.apm, label %b3Bump.exit1325, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.apn = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !124
  %i.app = add nsw i32 %i.apo, 15
  %i.apq = and i32 %i.app, -16                    ; 2 uses
  %i.apr = add nsw i32 %i.apq, %i.apl             ; 4 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.apt = load i32, ptr %i.aps, align 8, !tbaa !125
  %i.apu = icmp sgt i32 %i.apr, %i.apt
  br i1 %i.apu, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.apv = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.apl) #7
  br label %b3Bump.exit1325

bb.ej:                                            ; preds = %bb.eh
  store i32 %i.apr, ptr %i.apn, align 4, !tbaa !124
  %i.apw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !126
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 16 ; 2 uses
  %i.apz = load i32, ptr %i.apy, align 8, !tbaa !130
  %i.aqa = icmp sgt i32 %i.apr, %i.apz
  br i1 %i.aqa, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  store i32 %i.apr, ptr %i.apy, align 8, !tbaa !130
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aqb = load ptr, ptr %9, align 8, !tbaa !131
  %i.aqc = sext i32 %i.apq to i64
  %i.aqd = getelementptr inbounds i8, ptr %i.aqb, i64 %i.aqc
  br label %b3Bump.exit1325

b3Bump.exit1325:                                  ; preds = %bb.eg, %bb.ei, %bb.el
  %.1.i1324 = phi ptr [ null, %bb.eg ], [ %i.apv, %bb.ei ], [ %i.aqd, %bb.el ] ; 3 uses
  %i.aqe = icmp sgt i32 %.1900, 0                 ; 4 uses
  br i1 %i.aqe, label %.lr.ph1619.preheader, label %.lr.ph1624.preheader

.lr.ph1619.preheader:                             ; preds = %b3Bump.exit1325
  %wide.trip.count1729 = zext nneg i32 %.1900 to i64 ; 2 uses
  %xtraiter2126 = and i64 %wide.trip.count1729, 1
  %i.aqf = icmp eq i32 %.1900, 1
  br i1 %i.aqf, label %.lr.ph1619.epil.preheader, label %.lr.ph1619.preheader.new

.lr.ph1619.preheader.new:                         ; preds = %.lr.ph1619.preheader
  %unroll_iter2129 = and i64 %wide.trip.count1729, 2147483646
  br label %.lr.ph1619

.lr.ph1624.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph1619
  %lcmp.mod2127.not = icmp eq i64 %xtraiter2126, 0
  br i1 %lcmp.mod2127.not, label %.lr.ph1624.preheader, label %.lr.ph1619.epil.preheader

.lr.ph1619.epil.preheader:                        ; preds = %.lr.ph1624.preheader.loopexit.unr-lcssa, %.lr.ph1619.preheader
  %indvars.iv1726.epil.init = phi i64 [ 0, %.lr.ph1619.preheader ], [ %indvars.iv.next1727.1, %.lr.ph1624.preheader.loopexit.unr-lcssa ]
  %.09101618.epil.init = phi i32 [ 0, %.lr.ph1619.preheader ], [ %i.ara, %.lr.ph1624.preheader.loopexit.unr-lcssa ]
  %lcmp.mod2128 = trunc i32 %.1900 to i1
  call void @llvm.assume(i1 %lcmp.mod2128)
  %i.aqg = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1726.epil.init ; 2 uses
  %i.aqh = sext i32 %.09101618.epil.init to i64
  %i.aqi = getelementptr inbounds [24 x i8], ptr %.1.i1324, i64 %i.aqh
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqg, i64 24
  store ptr %i.aqi, ptr %i.aqj, align 8, !tbaa !176
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqg, i64 36
  store i32 0, ptr %i.aqk, align 4, !tbaa !177
  br label %.lr.ph1624.preheader

.lr.ph1624.preheader:                             ; preds = %.lr.ph1619.epil.preheader, %.lr.ph1624.preheader.loopexit.unr-lcssa, %b3Bump.exit1325
  %wide.trip.count1737 = zext nneg i32 %.10 to i64
  br label %.lr.ph1624

.lr.ph1619:                                       ; preds = %.lr.ph1619, %.lr.ph1619.preheader.new
  %indvars.iv1726 = phi i64 [ 0, %.lr.ph1619.preheader.new ], [ %indvars.iv.next1727.1, %.lr.ph1619 ] ; 3 uses
  %.09101618 = phi i32 [ 0, %.lr.ph1619.preheader.new ], [ %i.ara, %.lr.ph1619 ] ; 2 uses
  %niter2130 = phi i64 [ 0, %.lr.ph1619.preheader.new ], [ %niter2130.next.1, %.lr.ph1619 ]
  %i.aql = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1726 ; 3 uses
  %i.aqm = sext i32 %.09101618 to i64
  %i.aqn = getelementptr inbounds [24 x i8], ptr %.1.i1324, i64 %i.aqm
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aql, i64 24
  store ptr %i.aqn, ptr %i.aqo, align 8, !tbaa !176
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aql, i64 36
  store i32 0, ptr %i.aqp, align 4, !tbaa !177
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aql, i64 32
  %i.aqr = load i32, ptr %i.aqq, align 8, !tbaa !175
  %i.aqs = add nsw i32 %i.aqr, %.09101618         ; 2 uses
  %i.aqt = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1726 ; 3 uses
  %i.aqu = sext i32 %i.aqs to i64
  %i.aqv = getelementptr inbounds [24 x i8], ptr %.1.i1324, i64 %i.aqu
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqt, i64 64
  store ptr %i.aqv, ptr %i.aqw, align 8, !tbaa !176
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqt, i64 76
  store i32 0, ptr %i.aqx, align 4, !tbaa !177
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqt, i64 72
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !175
  %i.ara = add nsw i32 %i.aqz, %i.aqs             ; 2 uses
  %indvars.iv.next1727.1 = add nuw nsw i64 %indvars.iv1726, 2 ; 2 uses
  %niter2130.next.1 = add i64 %niter2130, 2       ; 2 uses
  %niter2130.ncmp.1 = icmp eq i64 %niter2130.next.1, %unroll_iter2129
  br i1 %niter2130.ncmp.1, label %.lr.ph1624.preheader.loopexit.unr-lcssa, label %.lr.ph1619, !llvm.loop !31

.preheader:                                       ; preds = %.loopexit1542
  br i1 %i.aqe, label %.lr.ph1626, label %._crit_edge1627

.lr.ph1626:                                       ; preds = %.preheader
  %i.arb = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ard = getelementptr inbounds nuw i8, ptr %12, i64 16
  %wide.trip.count1742 = zext nneg i32 %.1900 to i64
  %i.are = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.arf = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.arg = getelementptr inbounds nuw i8, ptr %11, i64 72
  br label %bb.eo

.lr.ph1624:                                       ; preds = %.lr.ph1624.preheader, %.loopexit1542
  %indvars.iv1734 = phi i64 [ 0, %.lr.ph1624.preheader ], [ %indvars.iv.next1735, %.loopexit1542 ] ; 3 uses
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %.1.i1314, i64 %indvars.iv1734
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !14 ; 2 uses
  %i.arj = icmp eq i32 %i.ari, -1
  br i1 %i.arj, label %.loopexit1542, label %bb.em

bb.em:                                            ; preds = %.lr.ph1624
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %.1.i14961500, i64 %indvars.iv1734
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !163 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 32 ; 2 uses
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !145
  %i.aro = icmp sgt i32 %i.arn, 0
  br i1 %i.aro, label %.lr.ph1622, label %.loopexit1542

.lr.ph1622:                                       ; preds = %bb.em
  %i.arp = sext i32 %i.ari to i64
  %i.arq = getelementptr inbounds [40 x i8], ptr %.1.i1312, i64 %i.arp ; 2 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 24
  %i.art = getelementptr inbounds nuw i8, ptr %i.arq, i64 36 ; 3 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arl, i64 36
  %.pre1778 = load i32, ptr %i.art, align 4, !tbaa !177
  br label %bb.en

bb.en:                                            ; preds = %.lr.ph1622, %bb.en
  %i.arv = phi i32 [ %.pre1778, %.lr.ph1622 ], [ %i.ask, %bb.en ]
  %indvars.iv1731 = phi i64 [ 0, %.lr.ph1622 ], [ %indvars.iv.next1732, %bb.en ] ; 2 uses
  %i.arw = load ptr, ptr %i.arr, align 8, !tbaa !144
  %i.arx = getelementptr inbounds nuw [24 x i8], ptr %i.arw, i64 %indvars.iv1731 ; 3 uses
  %i.ary = load ptr, ptr %i.ars, align 8, !tbaa !176
  %i.arz = sext i32 %i.arv to i64
  %i.asa = getelementptr inbounds [24 x i8], ptr %i.ary, i64 %i.arz ; 4 uses
  %i.asb = load i32, ptr %i.aru, align 4, !tbaa !153
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 20
  store i32 %i.asb, ptr %i.asc, align 4, !tbaa !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.asa, ptr noundef nonnull align 4 dereferenceable(12) %i.arx, i64 12, i1 false), !tbaa.struct !179
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arx, i64 12
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !160
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asa, i64 12
  store float %i.ase, ptr %i.asf, align 4, !tbaa !160
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arx, i64 16
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !113
  store i32 %i.asi, ptr %i.asg, align 4, !tbaa !113
  %i.asj = load i32, ptr %i.art, align 4, !tbaa !177
  %i.ask = add nsw i32 %i.asj, 1                  ; 2 uses
  store i32 %i.ask, ptr %i.art, align 4, !tbaa !177
  %indvars.iv.next1732 = add nuw nsw i64 %indvars.iv1731, 1 ; 2 uses
  %i.asl = load i32, ptr %i.arm, align 8, !tbaa !145
  %i.asm = sext i32 %i.asl to i64
  %i.asn = icmp slt i64 %indvars.iv.next1732, %i.asm
  br i1 %i.asn, label %bb.en, label %.loopexit1542, !llvm.loop !32

.loopexit1542:                                    ; preds = %bb.en, %bb.em, %.lr.ph1624
  %indvars.iv.next1735 = add nuw nsw i64 %indvars.iv1734, 1 ; 2 uses
  %exitcond1738.not = icmp eq i64 %indvars.iv.next1735, %wide.trip.count1737
  br i1 %exitcond1738.not, label %.preheader, label %.lr.ph1624, !llvm.loop !33

._crit_edge1627:                                  ; preds = %b3ReduceCluster.exit, %.preheader
  %i.aso = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.asp = load i32, ptr %i.aso, align 8, !tbaa !170 ; 7 uses
  %i.asq = icmp sgt i32 %i.asp, 0                 ; 3 uses
  br i1 %i.asq, label %bb.fu, label %bb.ga

bb.eo:                                            ; preds = %.lr.ph1626, %b3ReduceCluster.exit
  %indvars.iv1739 = phi i64 [ 0, %.lr.ph1626 ], [ %indvars.iv.next1740, %b3ReduceCluster.exit ] ; 2 uses
  %i.asr = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1739 ; 4 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 24
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !176 ; 8 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asr, i64 36 ; 2 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !177 ; 7 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asr, i64 12
  %.sroa.0214.0.copyload = load <2 x float>, ptr %i.asw, align 4 ; 5 uses
  %.sroa.2215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asr, i64 20
  %.sroa.2215.0.copyload = load float, ptr %.sroa.2215.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.asx = icmp slt i32 %i.asv, 2
  br i1 %i.asx, label %b3ReduceCluster.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.asy = shl i32 %i.asv, 4                      ; 3 uses
  %i.asz = icmp eq i32 %i.asy, 0
  br i1 %i.asz, label %b3Bump.exit.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ata = load i32, ptr %i.arb, align 4, !tbaa !124
  %i.atb = add nsw i32 %i.ata, 15
  %i.atc = and i32 %i.atb, -16                    ; 2 uses
  %i.atd = add nsw i32 %i.atc, %i.asy             ; 4 uses
  %i.ate = load i32, ptr %i.arc, align 8, !tbaa !125
  %i.atf = icmp sgt i32 %i.atd, %i.ate
  br i1 %i.atf, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.atg = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull align 8 %12, i32 noundef %i.asy) #7
  br label %b3Bump.exit.i

bb.es:                                            ; preds = %bb.eq
  store i32 %i.atd, ptr %i.arb, align 4, !tbaa !124
  %i.ath = load ptr, ptr %i.ard, align 8, !tbaa !126
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 16 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !130
  %i.atk = icmp sgt i32 %i.atd, %i.atj
  br i1 %i.atk, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 %i.atd, ptr %i.ati, align 8, !tbaa !130
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.atl = load ptr, ptr %12, align 8, !tbaa !131
  %i.atm = sext i32 %i.atc to i64
  %i.atn = getelementptr inbounds i8, ptr %i.atl, i64 %i.atm
  br label %b3Bump.exit.i

b3Bump.exit.i:                                    ; preds = %bb.eu, %bb.er, %bb.ep
  %.1.i.i = phi ptr [ null, %bb.ep ], [ %i.atg, %bb.er ], [ %i.atn, %bb.eu ] ; 49 uses
  %.sroa.020.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0214.0.copyload, i64 0 ; 2 uses
  %i.ato = call float @llvm.fabs.f32(float %.sroa.020.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.ato, 5.000000e-01
  %.sroa.020.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0214.0.copyload, i64 1 ; 2 uses
  br i1 %or.cond.i.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %b3Bump.exit.i
  %i.atp = fneg <2 x float> %.sroa.0214.0.copyload
  %.sroa.012.4.vec.insert17.i.i = shufflevector <2 x float> %.sroa.0214.0.copyload, <2 x float> %i.atp, <2 x i32> <i32 1, i32 2>
  br label %bb.ex

bb.ew:                                            ; preds = %b3Bump.exit.i
  %i.atq = fneg float %.sroa.020.4.vec.extract.i.i
  %.sroa.012.4.vec.insert.i.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.2215.0.copyload, i64 1
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.sroa.012.0.i.i = phi <2 x float> [ %.sroa.012.4.vec.insert17.i.i, %bb.ev ], [ %.sroa.012.4.vec.insert.i.i, %bb.ew ] ; 3 uses
  %.sroa.7.0.i.i = phi float [ 0.000000e+00, %bb.ev ], [ %i.atq, %bb.ew ] ; 3 uses
  %i.atr = fmul <2 x float> %.sroa.012.0.i.i, %.sroa.012.0.i.i ; 2 uses
  %shift2022 = shufflevector <2 x float> %i.atr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2023 = fadd <2 x float> %i.atr, %shift2022
  %i.ats = extractelement <2 x float> %foldExtExtBinop2023, i64 0
  %i.att = fmul float %.sroa.7.0.i.i, %.sroa.7.0.i.i
  %i.atu = fadd float %i.att, %i.ats              ; 2 uses
  %i.atv = fcmp ogt float %i.atu, f0x057A0000
  br i1 %i.atv, label %bb.ey, label %.lr.ph.i1326

bb.ey:                                            ; preds = %bb.ex
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.atu)
  %i.atw = fdiv float 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.atx = insertelement <2 x float> poison, float %i.atw, i64 0
  %i.aty = shufflevector <2 x float> %i.atx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atz = fmul <2 x float> %.sroa.012.0.i.i, %i.aty
  %i.aua = fmul float %.sroa.7.0.i.i, %i.atw
  br label %.lr.ph.i1326

.lr.ph.i1326:                                     ; preds = %bb.ey, %bb.ex
  %.sroa.018.0.i.i.i = phi <2 x float> [ %i.atz, %bb.ey ], [ zeroinitializer, %bb.ex ] ; 5 uses
  %.sroa.5.0.i.i.i = phi float [ %i.aua, %bb.ey ], [ 0.000000e+00, %bb.ex ] ; 3 uses
  %i.aub = fmul float %.sroa.020.4.vec.extract.i.i, %.sroa.5.0.i.i.i
  %i.auc = shufflevector <2 x float> %.sroa.018.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aud = extractelement <2 x float> %.sroa.018.0.i.i.i, i64 1
  %i.aue = fmul float %.sroa.2215.0.copyload, %i.aud
  %i.auf = fsub float %i.aub, %i.aue
  %.sroa.03.0.vec.extract.i.i1328 = extractelement <2 x float> %.sroa.018.0.i.i.i, i64 0
  %i.aug = fmul float %.sroa.2215.0.copyload, %.sroa.03.0.vec.extract.i.i1328
  %i.auh = fmul float %.sroa.020.0.vec.extract.i.i, %.sroa.5.0.i.i.i
  %i.aui = fsub float %i.aug, %i.auh
  %i.auj = fmul <2 x float> %.sroa.0214.0.copyload, %i.auc ; 2 uses
  %.sroa.4.0..sroa_idx.i1329 = getelementptr inbounds nuw i8, ptr %i.ast, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i1329, align 4, !tbaa !106
  %.sroa.032.0.copyload.i = load <2 x float>, ptr %i.ast, align 4, !tbaa !106
  %wide.trip.count.i1330 = zext nneg i32 %i.asv to i64 ; 6 uses
  %i.auk = shufflevector <2 x float> %i.auj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aul = fsub <2 x float> %i.auj, %i.auk
  %i.aum = insertelement <2 x float> %i.aul, float %.sroa.5.0.i.i.i, i64 1
  %i.aun = insertelement <2 x float> %.sroa.018.0.i.i.i, float %i.auf, i64 0
  %i.auo = insertelement <2 x float> %.sroa.018.0.i.i.i, float %i.aui, i64 1
  br label %bb.fp

._crit_edge.i1336:                                ; preds = %bb.fp
  %i.aup = call float @b3GetLengthUnitsPerMeter() #7
  %i.auq = fmul float %i.aup, 5.000000e-03
  %i.aur = fmul float %i.auq, 2.500000e-01        ; 2 uses
  %i.aus = fmul float %i.aur, %i.aur              ; 7 uses
  %i.aut = call float @b3GetLengthUnitsPerMeter() #7
  %i.auu = fmul float %i.aut, 5.000000e-03        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.sroa.6.i.i)
  br label %bb.fa

.loopexit.i.i:                                    ; preds = %b3IsBetterCullCandidate.exit.thread291.i.i, %bb.fa
  %.1206.lcssa.i.i = phi float [ %.0205312.i.i, %bb.fa ], [ %.2207.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %.1202.lcssa.i.i = phi float [ %.0201313.i.i, %bb.fa ], [ %.2203.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ]
  %.1199.lcssa.i.i = phi i32 [ %.0198314.i.i, %bb.fa ], [ %.2200.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %.1196.lcssa.i.i = phi i32 [ %.0195315.i.i, %bb.fa ], [ %.2197.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond342.not.i.i = icmp eq i64 %indvars.iv.next339.i.i, %wide.trip.count.i1330
  br i1 %exitcond342.not.i.i, label %bb.ez, label %bb.fa, !llvm.loop !34

bb.ez:                                            ; preds = %.loopexit.i.i
  %i.auv = fcmp olt float %.1206.lcssa.i.i, %i.aus ; 2 uses
  br i1 %i.auv, label %.preheader.preheader.i.i, label %bb.ff

.preheader.preheader.i.i:                         ; preds = %bb.ez
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !182 ; 2 uses
  %i.auw = add nsw i64 %wide.trip.count.i1330, -1 ; 3 uses
  %xtraiter2131 = and i64 %i.auw, 1
  %i.aux = icmp eq i32 %i.asv, 2
  br i1 %i.aux, label %.preheader.i.i.epil.preheader, label %.preheader.preheader.i.i.new

.preheader.preheader.i.i.new:                     ; preds = %.preheader.preheader.i.i
  %unroll_iter2135 = and i64 %i.auw, -2
  br label %.preheader.i.i

bb.fa:                                            ; preds = %.loopexit.i.i, %._crit_edge.i1336
  %indvars.iv338.i.i = phi i64 [ 0, %._crit_edge.i1336 ], [ %indvars.iv.next339.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 1, %._crit_edge.i1336 ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  %.0195315.i.i = phi i32 [ -1, %._crit_edge.i1336 ], [ %.1196.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0198314.i.i = phi i32 [ -1, %._crit_edge.i1336 ], [ %.1199.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0201313.i.i = phi float [ f0x7F7FFFFF, %._crit_edge.i1336 ], [ %.1202.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0205312.i.i = phi float [ 0.000000e+00, %._crit_edge.i1336 ], [ %.1206.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next339.i.i = add nuw nsw i64 %indvars.iv338.i.i, 1 ; 3 uses
  %i.auy = icmp samesign ult i64 %indvars.iv.next339.i.i, %wide.trip.count.i1330
  br i1 %i.auy, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.fa
  %i.auz = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv338.i.i ; 2 uses
  %.sroa.071.0.copyload.i.i = load <2 x float>, ptr %i.auz, align 4, !tbaa !106
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 8
  %i.avb = load float, ptr %i.ava, align 4, !tbaa !182
  %i.avc = trunc nuw nsw i64 %indvars.iv338.i.i to i32
  br label %bb.fb

bb.fb:                                            ; preds = %b3IsBetterCullCandidate.exit.thread291.i.i, %.lr.ph.i.i
  %indvars.iv335.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next336.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 3 uses
  %.1196307.i.i = phi i32 [ %.0195315.i.i, %.lr.ph.i.i ], [ %.2197.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ]
  %.1199306.i.i = phi i32 [ %.0198314.i.i, %.lr.ph.i.i ], [ %.2200.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ]
  %.1202305.i.i = phi float [ %.0201313.i.i, %.lr.ph.i.i ], [ %.2203.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %.1206304.i.i = phi float [ %.0205312.i.i, %.lr.ph.i.i ], [ %.2207.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 3 uses
  %i.avd = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv335.i.i ; 2 uses
  %i.ave = load <2 x float>, ptr %i.avd, align 4
  %i.avf = fsub <2 x float> %i.ave, %.sroa.071.0.copyload.i.i ; 2 uses
  %i.avg = fmul <2 x float> %i.avf, %i.avf
  %i.avh = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avg) ; 3 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avd, i64 8
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !182
  %i.avk = fadd float %i.avb, %i.avj              ; 2 uses
  %i.avl = fadd float %i.aus, %.1206304.i.i
  %i.avm = fcmp ogt float %i.avh, %i.avl
  br i1 %i.avm, label %b3IsBetterCullCandidate.exit.thread.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.avn = fsub float %.1206304.i.i, %i.aus
  %i.avo = fcmp uge float %i.avh, %i.avn
  %i.avp = fsub float %.1202305.i.i, %i.auu
  %i.avq = fcmp olt float %i.avk, %i.avp
  %or.cond.i76.i = select i1 %i.avo, i1 %i.avq, i1 false
  br i1 %or.cond.i76.i, label %b3IsBetterCullCandidate.exit.thread.i.i, label %b3IsBetterCullCandidate.exit.thread291.i.i

b3IsBetterCullCandidate.exit.thread.i.i:          ; preds = %bb.fc, %bb.fb
  %i.avr = trunc nuw nsw i64 %indvars.iv335.i.i to i32
  br label %b3IsBetterCullCandidate.exit.thread291.i.i

b3IsBetterCullCandidate.exit.thread291.i.i:       ; preds = %b3IsBetterCullCandidate.exit.thread.i.i, %bb.fc
  %.2207.i.i = phi float [ %i.avh, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1206304.i.i, %bb.fc ] ; 2 uses
  %.2203.i.i = phi float [ %i.avk, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1202305.i.i, %bb.fc ] ; 2 uses
  %.2200.i.i = phi i32 [ %i.avc, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1199306.i.i, %bb.fc ] ; 2 uses
  %.2197.i.i = phi i32 [ %i.avr, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1196307.i.i, %bb.fc ] ; 2 uses
  %indvars.iv.next336.i.i = add nuw nsw i64 %indvars.iv335.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next336.i.i, %wide.trip.count.i1330
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.fb, !llvm.loop !35

.unr-lcssa:                                       ; preds = %.preheader.i.i
  %lcmp.mod2132.not = icmp eq i64 %xtraiter2131, 0
  br i1 %lcmp.mod2132.not, label %bb.fd, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader.preheader.i.i
  %.epil.init = phi float [ %.pre.i.i, %.preheader.preheader.i.i ], [ %i.awj, %.unr-lcssa ]
  %indvars.iv353.i.i.epil.init = phi i64 [ 1, %.preheader.preheader.i.i ], [ %indvars.iv.next354.i.i.1, %.unr-lcssa ] ; 2 uses
  %.0191333.i.i.epil.init = phi i32 [ 0, %.preheader.preheader.i.i ], [ %spec.select.i.i.1, %.unr-lcssa ]
  %lcmp.mod2134 = trunc i64 %i.auw to i1
  call void @llvm.assume(i1 %lcmp.mod2134)
  %i.avs = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv353.i.i.epil.init
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 8
  %i.avu = load float, ptr %i.avt, align 4, !tbaa !182
  %i.avv = fcmp olt float %i.avu, %.epil.init
  %i.avw = trunc nuw nsw i64 %indvars.iv353.i.i.epil.init to i32
  %spec.select.i.i.epil = select i1 %i.avv, i32 %i.avw, i32 %.0191333.i.i.epil.init
  br label %bb.fd

bb.fd:                                            ; preds = %.unr-lcssa, %.preheader.i.i.epil.preheader
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.1, %.unr-lcssa ], [ %spec.select.i.i.epil, %.preheader.i.i.epil.preheader ] ; 2 uses
  %.not.i.i = icmp eq i32 %spec.select.i.i.lcssa, 0
  br i1 %.not.i.i, label %b3CullPoints.exit.i, label %bb.fe

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i.new
  %i.avx = phi float [ %.pre.i.i, %.preheader.preheader.i.i.new ], [ %i.awj, %.preheader.i.i ] ; 2 uses
  %indvars.iv353.i.i = phi i64 [ 1, %.preheader.preheader.i.i.new ], [ %indvars.iv.next354.i.i.1, %.preheader.i.i ] ; 4 uses
  %.0191333.i.i = phi i32 [ 0, %.preheader.preheader.i.i.new ], [ %spec.select.i.i.1, %.preheader.i.i ]
  %niter2136 = phi i64 [ 0, %.preheader.preheader.i.i.new ], [ %niter2136.next.1, %.preheader.i.i ]
  %i.avy = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv353.i.i
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !182 ; 2 uses
  %i.awb = fcmp olt float %i.awa, %i.avx          ; 2 uses
  %i.awc = trunc nuw nsw i64 %indvars.iv353.i.i to i32
  %spec.select.i.i = select i1 %i.awb, i32 %i.awc, i32 %.0191333.i.i
  %indvars.iv.next354.i.i = add nuw nsw i64 %indvars.iv353.i.i, 1 ; 2 uses
  %i.awd = select i1 %i.awb, float %i.awa, float %i.avx ; 2 uses
  %i.awe = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv.next354.i.i
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !182 ; 2 uses
  %i.awh = fcmp olt float %i.awg, %i.awd          ; 2 uses
  %i.awi = trunc nuw nsw i64 %indvars.iv.next354.i.i to i32
  %spec.select.i.i.1 = select i1 %i.awh, i32 %i.awi, i32 %spec.select.i.i ; 3 uses
  %indvars.iv.next354.i.i.1 = add nuw nsw i64 %indvars.iv353.i.i, 2 ; 2 uses
  %i.awj = select i1 %i.awh, float %i.awg, float %i.awd ; 2 uses
  %niter2136.next.1 = add nuw i64 %niter2136, 2   ; 2 uses
  %niter2136.ncmp.1 = icmp eq i64 %niter2136.next.1, %unroll_iter2135
  br i1 %niter2136.ncmp.1, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !36

bb.fe:                                            ; preds = %bb.fd
  %i.awk = zext nneg i32 %spec.select.i.i.lcssa to i64
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %i.awk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.awl, i64 16, i1 false), !tbaa.struct !183
  br label %b3CullPoints.exit.i

bb.ff:                                            ; preds = %bb.ez
  %i.awm = sext i32 %.1199.lcssa.i.i to i64
  %i.awn = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.awm ; 3 uses
  %.sroa.0101.0.copyload.i.i = load <2 x float>, ptr %i.awn, align 4, !tbaa !106 ; 10 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.awo = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 4 ; 5 uses
  %i.awp = sext i32 %.1196.lcssa.i.i to i64
  %i.awq = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.awp ; 3 uses
  %.sroa.9112.16.copyload.i.i = load <2 x float>, ptr %i.awq, align 4, !tbaa !106 ; 9 uses
  %.sroa.16.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.awq, i64 8
  %i.awr = load i64, ptr %.sroa.16.16..sroa_idx.i.i, align 4 ; 5 uses
  %i.aws = getelementptr [16 x i8], ptr %.1.i.i, i64 %wide.trip.count.i1330
  %i.awt = getelementptr i8, ptr %i.aws, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.awq, ptr noundef nonnull align 4 dereferenceable(16) %i.awt, i64 16, i1 false), !tbaa.struct !183
  %i.awu = add nsw i32 %i.asv, -2                 ; 3 uses
  %i.awv = zext nneg i32 %i.awu to i64            ; 2 uses
  %i.aww = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %i.awv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.awn, ptr noundef nonnull align 4 dereferenceable(16) %i.aww, i64 16, i1 false), !tbaa.struct !183
  %i.awx = icmp eq i32 %i.awu, 0
  br i1 %i.awx, label %bb.fg, label %.lr.ph322.i.preheader.i

bb.fg:                                            ; preds = %bb.ff
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4, !tbaa !106
  %.sroa.9.0..sroa_idx107.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awo, ptr %.sroa.9.0..sroa_idx107.i.i, align 4
  %i.awy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.awy, align 4, !tbaa !106
  %.sroa.16.16..sroa_idx118.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awr, ptr %.sroa.16.16..sroa_idx118.i.i, align 4
  br label %b3CullPoints.exit.i

.lr.ph322.i.preheader.i:                          ; preds = %bb.ff
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.9112.16.copyload.i.i, i64 0
  %i.awz = fsub <2 x float> %.sroa.9112.16.copyload.i.i, %.sroa.0101.0.copyload.i.i ; 2 uses
  %i.axa = shufflevector <2 x float> %i.awz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph322.i.i

._crit_edge.i.i:                                  ; preds = %b3IsBetterCullCandidate.exit229.thread294.i.i
  %i.axb = fcmp olt float %.1185.i.i, 0.000000e+00
  %i.axc = icmp eq i32 %.1187.i.i, -1
  br i1 %i.axc, label %._crit_edge.thread.i.i, label %bb.fi

.lr.ph322.i.i:                                    ; preds = %b3IsBetterCullCandidate.exit229.thread294.i.i, %.lr.ph322.i.preheader.i
  %indvars.iv343.i.i = phi i64 [ %indvars.iv.next344.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ 0, %.lr.ph322.i.preheader.i ] ; 3 uses
  %.0184320.i.i = phi float [ %.1185.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ 0.000000e+00, %.lr.ph322.i.preheader.i ]
  %.0186319.i.i = phi i32 [ %.1187.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ -1, %.lr.ph322.i.preheader.i ]
  %.3204318.i.i = phi float [ %.4.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ f0x7F7FFFFF, %.lr.ph322.i.preheader.i ] ; 2 uses
  %.3208317.i.i = phi float [ %.4209.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ 0.000000e+00, %.lr.ph322.i.preheader.i ] ; 3 uses
  %i.axd = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv343.i.i ; 2 uses
  %.sroa.030.0.copyload.i.i = load <2 x float>, ptr %i.axd, align 4, !tbaa !106
  %i.axe = fsub <2 x float> %.sroa.030.0.copyload.i.i, %.sroa.0101.0.copyload.i.i
  %i.axf = fmul <2 x float> %i.axa, %i.axe        ; 2 uses
  %shift2028 = shufflevector <2 x float> %i.axf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2029 = fsub <2 x float> %shift2028, %i.axf
  %i.axg = extractelement <2 x float> %foldExtExtBinop2029, i64 0 ; 4 uses
  %i.axh = fcmp olt float %i.axg, 0.000000e+00
  %i.axi = fneg float %i.axg
  %i.axj = select i1 %i.axh, float %i.axi, float %i.axg ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axl = load float, ptr %i.axk, align 4, !tbaa !182 ; 2 uses
  %i.axm = fadd float %i.aus, %.3208317.i.i
  %i.axn = fcmp ogt float %i.axj, %i.axm
  br i1 %i.axn, label %b3IsBetterCullCandidate.exit229.thread.i.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph322.i.i
  %i.axo = fsub float %.3208317.i.i, %i.aus
  %i.axp = fcmp uge float %i.axj, %i.axo
  %i.axq = fsub float %.3204318.i.i, %i.auu
  %i.axr = fcmp olt float %i.axl, %i.axq
  %or.cond301.i.i = select i1 %i.axp, i1 %i.axr, i1 false
  br i1 %or.cond301.i.i, label %b3IsBetterCullCandidate.exit229.thread.i.i, label %b3IsBetterCullCandidate.exit229.thread294.i.i

b3IsBetterCullCandidate.exit229.thread.i.i:       ; preds = %bb.fh, %.lr.ph322.i.i
  %i.axs = trunc nuw nsw i64 %indvars.iv343.i.i to i32
  br label %b3IsBetterCullCandidate.exit229.thread294.i.i

b3IsBetterCullCandidate.exit229.thread294.i.i:    ; preds = %b3IsBetterCullCandidate.exit229.thread.i.i, %bb.fh
  %.4209.i.i = phi float [ %i.axj, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.3208317.i.i, %bb.fh ]
  %.4.i.i = phi float [ %i.axl, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.3204318.i.i, %bb.fh ]
  %.1187.i.i = phi i32 [ %i.axs, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.0186319.i.i, %bb.fh ] ; 3 uses
  %.1185.i.i = phi float [ %i.axg, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.0184320.i.i, %bb.fh ] ; 2 uses
  %indvars.iv.next344.i.i = add nuw nsw i64 %indvars.iv343.i.i, 1 ; 2 uses
  %exitcond347.not.i.i = icmp eq i64 %indvars.iv.next344.i.i, %i.awv
  br i1 %exitcond347.not.i.i, label %._crit_edge.i.i, label %.lr.ph322.i.i, !llvm.loop !37

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4, !tbaa !106
  %.sroa.9.0..sroa_idx108.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awo, ptr %.sroa.9.0..sroa_idx108.i.i, align 4
  %i.axt = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.axt, align 4, !tbaa !106
  %.sroa.16.16..sroa_idx119.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awr, ptr %.sroa.16.16..sroa_idx119.i.i, align 4
  br label %b3CullPoints.exit.i

bb.fi:                                            ; preds = %._crit_edge.i.i
  %i.axu = sext i32 %.1187.i.i to i64
  %i.axv = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.axu ; 3 uses
  %.sroa.16123.32.copyload.i.i = load <2 x float>, ptr %i.axv, align 4, !tbaa !106 ; 7 uses
  %.sroa.21.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axv, i64 8
  %i.axw = load i64, ptr %.sroa.21.32..sroa_idx.i.i, align 4 ; 3 uses
  %i.axx = icmp eq i32 %i.awu, 1
  br i1 %i.axx, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4, !tbaa !106
  %.sroa.9.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awo, ptr %.sroa.9.0..sroa_idx109.i.i, align 4
  %i.axy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.axy, align 4, !tbaa !106
  %.sroa.16.16..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awr, ptr %.sroa.16.16..sroa_idx120.i.i, align 4
  %i.axz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <2 x float> %.sroa.16123.32.copyload.i.i, ptr %i.axz, align 4, !tbaa !106
  %.sroa.21.32..sroa_idx127.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.axw, ptr %.sroa.21.32..sroa_idx127.i.i, align 4
  br label %b3CullPoints.exit.i

bb.fk:                                            ; preds = %bb.fi
  %i.aya = add nsw i32 %i.asv, -3
  %i.ayb = zext i32 %i.aya to i64                 ; 2 uses
  %i.ayc = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %i.ayb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.axv, ptr noundef nonnull align 4 dereferenceable(16) %i.ayc, i64 16, i1 false), !tbaa.struct !183
  br i1 %i.axb, label %bb.fl, label %._crit_edge358.i.i

._crit_edge358.i.i:                               ; preds = %bb.fk
  %.sroa.01.0.vec.extract.i230.i.i = extractelement <2 x float> %.sroa.16123.32.copyload.i.i, i64 0
  br label %.lr.ph330.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.ayd = fsub <2 x float> %.sroa.16123.32.copyload.i.i, %.sroa.0101.0.copyload.i.i
  br label %.lr.ph330.i.i

.lr.ph330.i.i:                                    ; preds = %bb.fl, %._crit_edge358.i.i
  %.sroa.01.0.vec.extract.i236.pre-phi.i.i = phi float [ %.sroa.01.0.vec.extract.i230.i.i, %._crit_edge358.i.i ], [ %.sroa.01.0.vec.extract.i.i.i, %bb.fl ]
  %.sroa.043.0.i.i = phi <2 x float> [ %i.awz, %._crit_edge358.i.i ], [ %i.ayd, %bb.fl ]
  %i.aye = phi <2 x float> [ %.sroa.16123.32.copyload.i.i, %._crit_edge358.i.i ], [ %.sroa.9112.16.copyload.i.i, %bb.fl ] ; 2 uses
  %i.ayf = phi <2 x float> [ %.sroa.9112.16.copyload.i.i, %._crit_edge358.i.i ], [ %.sroa.16123.32.copyload.i.i, %bb.fl ] ; 2 uses
  %i.ayg = fsub <2 x float> %i.aye, %i.ayf
  %i.ayh = insertelement <2 x float> %i.aye, float %.sroa.01.0.vec.extract.i236.pre-phi.i.i, i64 0 ; 2 uses
  %i.ayi = fsub <2 x float> %.sroa.0101.0.copyload.i.i, %i.ayh
  %i.ayj = shufflevector <2 x float> %i.ayi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ayk = shufflevector <2 x float> %.sroa.043.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.fm

._crit_edge331.i.i:                               ; preds = %b3IsBetterCullCandidate.exit279.thread297.i.i
  %i.ayl = icmp eq i32 %.3189.i.i, -1
  br i1 %i.ayl, label %._crit_edge331.thread.i.i, label %bb.fo

bb.fm:                                            ; preds = %b3IsBetterCullCandidate.exit279.thread297.i.i, %.lr.ph330.i.i
  %indvars.iv348.i.i = phi i64 [ 0, %.lr.ph330.i.i ], [ %indvars.iv.next349.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ] ; 3 uses
  %.2188327.i.i = phi i32 [ -1, %.lr.ph330.i.i ], [ %.3189.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ]
  %.5326.i.i = phi float [ f0x7F7FFFFF, %.lr.ph330.i.i ], [ %.6.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ] ; 2 uses
  %.5210325.i.i = phi float [ 0.000000e+00, %.lr.ph330.i.i ], [ %.6211.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ] ; 3 uses
  %i.aym = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv348.i.i ; 2 uses
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.aym, align 4, !tbaa !106 ; 3 uses
  %i.ayn = fsub <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.0101.0.copyload.i.i
  %i.ayo = fmul <2 x float> %i.ayk, %i.ayn        ; 2 uses
  %shift2031 = shufflevector <2 x float> %i.ayo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2032 = fsub <2 x float> %i.ayo, %shift2031
  %i.ayp = extractelement <2 x float> %foldExtExtBinop2032, i64 0 ; 2 uses
  %i.ayq = fsub <2 x float> %.sroa.07.0.copyload.i.i, %i.ayf
  %i.ayr = shufflevector <2 x float> %i.ayq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ays = fmul <2 x float> %i.ayg, %i.ayr        ; 2 uses
  %shift2034 = shufflevector <2 x float> %i.ays, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2035 = fsub <2 x float> %shift2034, %i.ays
  %i.ayt = extractelement <2 x float> %foldExtExtBinop2035, i64 0 ; 2 uses
  %i.ayu = fsub <2 x float> %.sroa.07.0.copyload.i.i, %i.ayh
  %i.ayv = fmul <2 x float> %i.ayj, %i.ayu        ; 2 uses
  %shift2037 = shufflevector <2 x float> %i.ayv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2038 = fsub <2 x float> %i.ayv, %shift2037
  %i.ayw = extractelement <2 x float> %foldExtExtBinop2038, i64 0 ; 2 uses
  %i.ayx = fcmp ogt float %i.ayt, %i.ayw
  %i.ayy = select i1 %i.ayx, float %i.ayt, float %i.ayw ; 2 uses
  %i.ayz = fcmp ogt float %i.ayp, %i.ayy
  %i.aza = select i1 %i.ayz, float %i.ayp, float %i.ayy ; 3 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aym, i64 8
  %i.azc = load float, ptr %i.azb, align 4, !tbaa !182 ; 2 uses
  %i.azd = fadd float %i.aus, %.5210325.i.i
  %i.aze = fcmp ogt float %i.aza, %i.azd
  br i1 %i.aze, label %b3IsBetterCullCandidate.exit279.thread.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.azf = fsub float %.5210325.i.i, %i.aus
  %i.azg = fcmp uge float %i.aza, %i.azf
  %i.azh = fsub float %.5326.i.i, %i.auu
  %i.azi = fcmp olt float %i.azc, %i.azh
  %or.cond303.i.i = select i1 %i.azg, i1 %i.azi, i1 false
  br i1 %or.cond303.i.i, label %b3IsBetterCullCandidate.exit279.thread.i.i, label %b3IsBetterCullCandidate.exit279.thread297.i.i

b3IsBetterCullCandidate.exit279.thread.i.i:       ; preds = %bb.fn, %bb.fm
  %i.azj = trunc nuw nsw i64 %indvars.iv348.i.i to i32
  br label %b3IsBetterCullCandidate.exit279.thread297.i.i

b3IsBetterCullCandidate.exit279.thread297.i.i:    ; preds = %b3IsBetterCullCandidate.exit279.thread.i.i, %bb.fn
  %.6211.i.i = phi float [ %i.aza, %b3IsBetterCullCandidate.exit279.thread.i.i ], [ %.5210325.i.i, %bb.fn ]
  %.6.i.i = phi float [ %i.azc, %b3IsBetterCullCandidate.exit279.thread.i.i ], [ %.5326.i.i, %bb.fn ]
  %.3189.i.i = phi i32 [ %i.azj, %b3IsBetterCullCandidate.exit279.thread.i.i ], [ %.2188327.i.i, %bb.fn ] ; 3 uses
  %indvars.iv.next349.i.i = add nuw nsw i64 %indvars.iv348.i.i, 1 ; 2 uses
  %exitcond352.not.i.i = icmp eq i64 %indvars.iv.next349.i.i, %i.ayb
  br i1 %exitcond352.not.i.i, label %._crit_edge331.i.i, label %bb.fm, !llvm.loop !38

._crit_edge331.thread.i.i:                        ; preds = %._crit_edge331.i.i
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4, !tbaa !106
  %.sroa.9.0..sroa_idx110.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awo, ptr %.sroa.9.0..sroa_idx110.i.i, align 4
  %i.azk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.azk, align 4, !tbaa !106
  %.sroa.16.16..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awr, ptr %.sroa.16.16..sroa_idx121.i.i, align 4
  %i.azl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <2 x float> %.sroa.16123.32.copyload.i.i, ptr %i.azl, align 4, !tbaa !106
  %.sroa.21.32..sroa_idx128.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.axw, ptr %.sroa.21.32..sroa_idx128.i.i, align 4
  br label %b3CullPoints.exit.i

bb.fo:                                            ; preds = %._crit_edge331.i.i
  %i.azm = sext i32 %.3189.i.i to i64
  %i.azn = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.azm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.azn, i64 16, i1 false), !tbaa.struct !183
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4, !tbaa !106
  %.sroa.9.0..sroa_idx111.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awo, ptr %.sroa.9.0..sroa_idx111.i.i, align 4
  %i.azo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.azo, align 4, !tbaa !106
  %.sroa.16.16..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awr, ptr %.sroa.16.16..sroa_idx122.i.i, align 4
  %i.azp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <2 x float> %.sroa.16123.32.copyload.i.i, ptr %i.azp, align 4, !tbaa !106
  %.sroa.21.32..sroa_idx129.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.axw, ptr %.sroa.21.32..sroa_idx129.i.i, align 4
  %i.azq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.azq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.sroa.6.i.i, i64 16, i1 false), !tbaa.struct !183
  br label %b3CullPoints.exit.i

b3CullPoints.exit.i:                              ; preds = %bb.fo, %._crit_edge331.thread.i.i, %bb.fj, %._crit_edge.thread.i.i, %bb.fg, %bb.fe, %bb.fd
  %exitcond92.not.i.1 = phi i1 [ false, %bb.fd ], [ true, %bb.fg ], [ false, %bb.fe ], [ true, %._crit_edge.thread.i.i ], [ false, %bb.fj ], [ false, %._crit_edge331.thread.i.i ], [ false, %bb.fo ]
  %exitcond92.not.i.2 = phi i1 [ false, %bb.fd ], [ false, %bb.fg ], [ false, %bb.fe ], [ false, %._crit_edge.thread.i.i ], [ true, %bb.fj ], [ true, %._crit_edge331.thread.i.i ], [ false, %bb.fo ]
  %.2.i.i = phi i32 [ 1, %bb.fd ], [ 2, %bb.fg ], [ 1, %bb.fe ], [ 2, %._crit_edge.thread.i.i ], [ 3, %bb.fj ], [ 3, %._crit_edge331.thread.i.i ], [ 4, %bb.fo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.azr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 12
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !184
  %i.azt = sext i32 %i.azs to i64
  %i.azu = getelementptr inbounds [24 x i8], ptr %i.ast, i64 %i.azt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(24) %i.azu, i64 24, i1 false), !tbaa.struct !185
  br i1 %i.auv, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fp, %.lr.ph.i1326
  %indvars.iv.i1331 = phi i64 [ 0, %.lr.ph.i1326 ], [ %indvars.iv.next.i1334, %bb.fp ] ; 4 uses
  %i.azv = getelementptr inbounds nuw [24 x i8], ptr %i.ast, i64 %indvars.iv.i1331 ; 3 uses
  %.sroa.020.0.copyload.i = load <2 x float>, ptr %i.azv, align 4
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azv, i64 8
  %.sroa.221.0.copyload.i = load float, ptr %.sroa.221.0..sroa_idx.i, align 4
  %i.azw = fsub float %.sroa.221.0.copyload.i, %.sroa.4.0.copyload.i
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv.i1331 ; 3 uses
  %i.azy = fsub <2 x float> %.sroa.020.0.copyload.i, %.sroa.032.0.copyload.i ; 2 uses
  %i.azz = fmul <2 x float> %i.aun, %i.azy
  %i.baa = fmul <2 x float> %i.auo, %i.azy
  %i.bab = shufflevector <2 x float> %i.baa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bac = fadd <2 x float> %i.azz, %i.bab
  %i.bad = insertelement <2 x float> poison, float %i.azw, i64 0
  %i.bae = shufflevector <2 x float> %i.bad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.baf = fmul <2 x float> %i.aum, %i.bae
  %i.bag = fadd <2 x float> %i.baf, %i.bac
  %i.bah = shufflevector <2 x float> %i.bag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bah, ptr %i.azx, align 4, !tbaa !106
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azv, i64 12
  %i.baj = load float, ptr %i.bai, align 4, !tbaa !160
  %i.bak = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  store float %i.baj, ptr %i.bak, align 4, !tbaa !182
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azx, i64 12
  %i.bam = trunc nuw nsw i64 %indvars.iv.i1331 to i32
  store i32 %i.bam, ptr %i.bal, align 4, !tbaa !184
  %indvars.iv.next.i1334 = add nuw nsw i64 %indvars.iv.i1331, 1 ; 2 uses
  %exitcond.not.i1335 = icmp eq i64 %indvars.iv.next.i1334, %wide.trip.count.i1330
  br i1 %exitcond.not.i1335, label %._crit_edge.i1336, label %bb.fp, !llvm.loop !39

bb.fq:                                            ; preds = %bb.ft, %bb.fs, %bb.fr, %b3CullPoints.exit.i
  %narrow.i = mul nuw nsw i32 %.2.i.i, 24
  %i.ban = zext nneg i32 %narrow.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ast, ptr noundef nonnull align 16 dereferenceable(1) %11, i64 %i.ban, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %b3ReduceCluster.exit

bb.fr:                                            ; preds = %b3CullPoints.exit.i
  %i.bao = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 28
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !184
  %i.baq = sext i32 %i.bap to i64
  %i.bar = getelementptr inbounds [24 x i8], ptr %i.ast, i64 %i.baq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.are, ptr noundef nonnull align 4 dereferenceable(24) %i.bar, i64 24, i1 false), !tbaa.struct !185
  br i1 %exitcond92.not.i.1, label %bb.fq, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.bas = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 44
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !184
  %i.bau = sext i32 %i.bat to i64
  %i.bav = getelementptr inbounds [24 x i8], ptr %i.ast, i64 %i.bau
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.arf, ptr noundef nonnull align 4 dereferenceable(24) %i.bav, i64 24, i1 false), !tbaa.struct !185
  br i1 %exitcond92.not.i.2, label %bb.fq, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.baw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 60
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !184
  %i.bay = sext i32 %i.bax to i64
  %i.baz = getelementptr inbounds [24 x i8], ptr %i.ast, i64 %i.bay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arg, ptr noundef nonnull align 4 dereferenceable(24) %i.baz, i64 24, i1 false), !tbaa.struct !185
  br label %bb.fq

b3ReduceCluster.exit:                             ; preds = %bb.eo, %bb.fq
  %.0.i = phi i32 [ %.2.i.i, %bb.fq ], [ %i.asv, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store i32 %.0.i, ptr %i.asu, align 4, !tbaa !177
  %indvars.iv.next1740 = add nuw nsw i64 %indvars.iv1739, 1 ; 2 uses
  %exitcond1743.not = icmp eq i64 %indvars.iv.next1740, %wide.trip.count1742
  br i1 %exitcond1743.not, label %._crit_edge1627, label %bb.eo, !llvm.loop !40

bb.fu:                                            ; preds = %._crit_edge1627
  %i.bba = zext nneg i32 %i.asp to i64
  %i.bbb = mul nuw nsw i64 %i.bba, 268            ; 2 uses
  %i.bbc = trunc i64 %i.bbb to i32                ; 3 uses
  %i.bbd = icmp eq i32 %i.bbc, 0
  br i1 %i.bbd, label %b3Bump.exit1338, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bbe = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !124
  %i.bbg = add nsw i32 %i.bbf, 15
  %i.bbh = and i32 %i.bbg, -16                    ; 2 uses
  %i.bbi = add nsw i32 %i.bbh, %i.bbc             ; 4 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bbk = load i32, ptr %i.bbj, align 8, !tbaa !125
  %i.bbl = icmp sgt i32 %i.bbi, %i.bbk
  br i1 %i.bbl, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.bbm = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.bbc) #7
  br label %b3Bump.exit1338

bb.fx:                                            ; preds = %bb.fv
  store i32 %i.bbi, ptr %i.bbe, align 4, !tbaa !124
  %i.bbn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !126
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 16 ; 2 uses
  %i.bbq = load i32, ptr %i.bbp, align 8, !tbaa !130
  %i.bbr = icmp sgt i32 %i.bbi, %i.bbq
  br i1 %i.bbr, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  store i32 %i.bbi, ptr %i.bbp, align 8, !tbaa !130
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.bbs = load ptr, ptr %9, align 8, !tbaa !131
  %i.bbt = sext i32 %i.bbh to i64
  %i.bbu = getelementptr inbounds i8, ptr %i.bbs, i64 %i.bbt
  br label %b3Bump.exit1338

b3Bump.exit1338:                                  ; preds = %bb.fu, %bb.fw, %bb.fz
  %.1.i1337 = phi ptr [ null, %bb.fu ], [ %i.bbm, %bb.fw ], [ %i.bbu, %bb.fz ] ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bbw = load ptr, ptr %i.bbv, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.1.i1337, ptr align 4 %i.bbw, i64 %i.bbb, i1 false)
  br label %bb.ga

bb.ga:                                            ; preds = %b3Bump.exit1338, %._crit_edge1627
  %.0909 = phi ptr [ %.1.i1337, %b3Bump.exit1338 ], [ null, %._crit_edge1627 ] ; 2 uses
  %.not933 = icmp eq i32 %i.asp, %.1900
  %i.bbx = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  br i1 %.not933, label %bb.gh, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bby = load i32, ptr %i.aso, align 8, !tbaa !170 ; 2 uses
  %i.bbz = icmp eq i32 %i.bby, 0
  br i1 %i.bbz, label %b3FreeManifolds.exit1339, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bca = load ptr, ptr %i.bbx, align 8, !tbaa !171
  %i.bcb = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !172
  call void @b3LockMutex(ptr noundef %i.bcc) #7
  %i.bcd = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !173
  %i.bcf = sext i32 %i.bby to i64
  %i.bcg = getelementptr [40 x i8], ptr %i.bce, i64 %i.bcf
  %i.bch = getelementptr i8, ptr %i.bcg, i64 -40
  call void @b3FreeElement(ptr noundef %i.bch, ptr noundef %i.bca) #7
  %i.bci = load ptr, ptr %i.bcb, align 8, !tbaa !172
  call void @b3UnlockMutex(ptr noundef %i.bci) #7
  br label %b3FreeManifolds.exit1339

b3FreeManifolds.exit1339:                         ; preds = %bb.gb, %bb.gc
  %i.bcj = icmp eq i32 %.1900, 0
  br i1 %i.bcj, label %b3AllocateManifolds.exit, label %bb.gd

bb.gd:                                            ; preds = %b3FreeManifolds.exit1339
  %i.bck = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !172
  call void @b3LockMutex(ptr noundef %i.bcl) #7
  %i.bcm = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 3 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 4 uses
  %i.bco = load i32, ptr %i.bcn, align 8, !tbaa !186 ; 2 uses
  %i.bcp = icmp slt i32 %i.bco, %.1900
  br i1 %i.bcp, label %.lr.ph.i1342, label %._crit_edge.i1340

.lr.ph.i1342:                                     ; preds = %bb.gd
  %i.bcq = getelementptr inbounds nuw i8, ptr %0, i64 3844 ; 2 uses
  br label %bb.ge

._crit_edge.i1340:                                ; preds = %bb.gg, %bb.gd
  %i.bcr = load ptr, ptr %i.bcm, align 8, !tbaa !173
  %i.bcs = sext i32 %.1900 to i64                 ; 2 uses
  %i.bct = getelementptr [40 x i8], ptr %i.bcr, i64 %i.bcs
  %i.bcu = getelementptr i8, ptr %i.bct, i64 -40
  %i.bcv = call ptr @b3AllocateElement(ptr noundef %i.bcu) #7 ; 2 uses
  %i.bcw = load ptr, ptr %i.bck, align 8, !tbaa !172
  call void @b3UnlockMutex(ptr noundef %i.bcw) #7
  %i.bcx = mul nsw i64 %i.bcs, 268
  call void @llvm.memset.p0.i64(ptr align 4 %i.bcv, i8 0, i64 %i.bcx, i1 false)
  br label %b3AllocateManifolds.exit

bb.ge:                                            ; preds = %bb.gg, %.lr.ph.i1342
  %.03033.i = phi i32 [ %i.bco, %.lr.ph.i1342 ], [ %i.bcy, %bb.gg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.bcy = add nsw i32 %.03033.i, 1               ; 3 uses
  %i.bcz = mul i32 %i.bcy, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %10, i32 noundef %i.bcz, i32 noundef 512) #7
  %i.bda = load i32, ptr %i.bcn, align 8, !tbaa !186 ; 2 uses
  %i.bdb = load i32, ptr %i.bcq, align 4, !tbaa !187 ; 4 uses
  %.not.i = icmp slt i32 %i.bda, %i.bdb
  %.pre.i = load ptr, ptr %i.bcm, align 8, !tbaa !173 ; 2 uses
  br i1 %.not.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bdc = mul i32 %i.bdb, 40
  %i.bdd = icmp eq i32 %i.bdb, 0
  %i.bde = shl nsw i32 %i.bdb, 1
  %spec.select.i = select i1 %i.bdd, i32 8, i32 %i.bde ; 2 uses
  %i.bdf = mul i32 %spec.select.i, 40
  %i.bdg = call ptr @b3GrowAlloc(ptr noundef %.pre.i, i32 noundef %i.bdc, i32 noundef %i.bdf) #7 ; 2 uses
  store ptr %i.bdg, ptr %i.bcm, align 8, !tbaa !173
  store i32 %spec.select.i, ptr %i.bcq, align 4, !tbaa !187
  %.pre34.i = load i32, ptr %i.bcn, align 8, !tbaa !186
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.bdh = phi i32 [ %.pre34.i, %bb.gf ], [ %i.bda, %bb.ge ] ; 2 uses
  %i.bdi = phi ptr [ %i.bdg, %bb.gf ], [ %.pre.i, %bb.ge ]
  %i.bdj = add nsw i32 %i.bdh, 1
  store i32 %i.bdj, ptr %i.bcn, align 8, !tbaa !186
  %i.bdk = sext i32 %i.bdh to i64
  %i.bdl = getelementptr inbounds [40 x i8], ptr %i.bdi, i64 %i.bdk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bdl, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  %exitcond.not.i1343 = icmp eq i32 %i.bcy, %.1900
  br i1 %exitcond.not.i1343, label %._crit_edge.i1340, label %bb.ge, !llvm.loop !41

b3AllocateManifolds.exit:                         ; preds = %b3FreeManifolds.exit1339, %._crit_edge.i1340
  %.0.i1341 = phi ptr [ %i.bcv, %._crit_edge.i1340 ], [ null, %b3FreeManifolds.exit1339 ]
  store ptr %.0.i1341, ptr %i.bbx, align 8, !tbaa !171
  %i.bdm = and i32 %.1900, 65535
  store i32 %i.bdm, ptr %i.aso, align 8, !tbaa !170
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ga
  %i.bdn = load ptr, ptr %i.bbx, align 8, !tbaa !171
  %i.bdo = load i32, ptr %i.aso, align 8, !tbaa !170
  %i.bdp = sext i32 %i.bdo to i64
  %i.bdq = mul nsw i64 %i.bdp, 268
  call void @llvm.memset.p0.i64(ptr align 4 %i.bdn, i8 0, i64 %i.bdq, i1 false)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %b3AllocateManifolds.exit
  br i1 %i.asq, label %bb.gj, label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.bdr = zext nneg i32 %i.asp to i64
  %i.bds = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !124
  %i.bdu = add nsw i32 %i.bdt, 15
  %i.bdv = and i32 %i.bdu, -16                    ; 2 uses
  %i.bdw = add nsw i32 %i.bdv, %i.asp             ; 4 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bdy = load i32, ptr %i.bdx, align 8, !tbaa !125
  %i.bdz = icmp sgt i32 %i.bdw, %i.bdy
  br i1 %i.bdz, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bea = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.asp) #7
  br label %b3Bump.exit1345

bb.gl:                                            ; preds = %bb.gj
  store i32 %i.bdw, ptr %i.bds, align 4, !tbaa !124
  %i.beb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !126
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 16 ; 2 uses
  %i.bee = load i32, ptr %i.bed, align 8, !tbaa !130
  %i.bef = icmp sgt i32 %i.bdw, %i.bee
  br i1 %i.bef, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 %i.bdw, ptr %i.bed, align 8, !tbaa !130
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.beg = load ptr, ptr %9, align 8, !tbaa !131
  %i.beh = sext i32 %i.bdv to i64
  %i.bei = getelementptr inbounds i8, ptr %i.beg, i64 %i.beh
  br label %b3Bump.exit1345

b3Bump.exit1345:                                  ; preds = %bb.gk, %bb.gn
  %.1.i1344 = phi ptr [ %i.bei, %bb.gn ], [ %i.bea, %bb.gk ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1.i1344, i8 0, i64 %i.bdr, i1 false)
  br label %bb.go

bb.go:                                            ; preds = %b3Bump.exit1345, %bb.gi
  %.0908 = phi ptr [ %.1.i1344, %b3Bump.exit1345 ], [ null, %bb.gi ] ; 2 uses
  %i.bej = load <2 x float>, ptr %.sroa.61478.0..sroa_idx, align 4 ; 6 uses
  %i.bek = load <2 x float>, ptr %.sroa.8.0..sroa_idx1480, align 4 ; 6 uses
  %i.bel = fmul <2 x float> %i.bej, %i.bej        ; 3 uses
  %foldExtExtBinop2040 = fmul <2 x float> %i.bek, %i.bek
  %shift2042 = shufflevector <2 x float> %i.bej, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2043 = fmul <2 x float> %i.bej, %shift2042 ; 2 uses
  %i.bem = shufflevector <2 x float> %i.bej, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ben = shufflevector <2 x float> %i.bek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.beo = fmul <2 x float> %i.bem, %i.ben        ; 4 uses
  %i.bep = shufflevector <2 x float> %i.bek, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.beq = fmul <2 x float> %i.bej, %i.bep        ; 4 uses
  %shift2045 = shufflevector <2 x float> %i.bek, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2046 = fmul <2 x float> %i.bek, %shift2045 ; 2 uses
  %i.ber = shufflevector <2 x float> %foldExtExtBinop2040, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bes = fadd <2 x float> %i.bel, %i.ber
  %i.bet = fmul <2 x float> %i.bes, splat (float 2.000000e+00)
  %foldExtExtBinop2048 = fadd <2 x float> %foldExtExtBinop2043, %foldExtExtBinop2046
  %foldExtExtBinop2050 = fsub <2 x float> %i.beo, %i.beq
  %i.beu = extractelement <2 x float> %foldExtExtBinop2050, i64 1
  %i.bev = fmul float %i.beu, 2.000000e+00        ; 3 uses
  %foldExtExtBinop2052 = fsub <2 x float> %foldExtExtBinop2043, %foldExtExtBinop2046
  %i.bew = shufflevector <2 x float> %foldExtExtBinop2048, <2 x float> %foldExtExtBinop2052, <2 x i32> <i32 0, i32 2>
  %i.bex = fmul <2 x float> %i.bew, splat (float 2.000000e+00) ; 4 uses
  %i.bey = fsub <2 x float> splat (float 1.000000e+00), %i.bet ; 4 uses
  %foldExtExtBinop2054 = fadd <2 x float> %i.beo, %i.beq
  %i.bez = extractelement <2 x float> %foldExtExtBinop2054, i64 0
  %i.bfa = fmul float %i.bez, 2.000000e+00        ; 3 uses
  %i.bfb = fadd <2 x float> %i.beo, %i.beq
  %i.bfc = fsub <2 x float> %i.beo, %i.beq
  %i.bfd = shufflevector <2 x float> %i.bfc, <2 x float> %i.bfb, <2 x i32> <i32 0, i32 3>
  %i.bfe = fmul <2 x float> %i.bfd, splat (float 2.000000e+00) ; 4 uses
  %shift2056 = shufflevector <2 x float> %i.bel, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2057 = fadd <2 x float> %i.bel, %shift2056
  %i.bff = extractelement <2 x float> %foldExtExtBinop2057, i64 0
  %i.bfg = fmul float %i.bff, 2.000000e+00
  %i.bfh = fsub float 1.000000e+00, %i.bfg        ; 3 uses
  %.sroa.0196.0.copyload = load <2 x float>, ptr %7, align 8
  %.sroa.2197.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0194.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.2195.0.copyload = load float, ptr %.sroa.51491.0..sroa_idx, align 8
  %i.bfi = fsub <2 x float> %.sroa.0196.0.copyload, %.sroa.0194.0.copyload
  %i.bfj = fsub float %.sroa.2197.0.copyload, %.sroa.2195.0.copyload
  br i1 %i.aqe, label %.lr.ph1645, label %._crit_edge1646

.lr.ph1645:                                       ; preds = %bb.go
  %i.bfk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %wide.trip.count1762 = zext nneg i32 %.1900 to i64
  %wide.trip.count1747 = zext nneg i32 %i.asp to i64
  %i.bfl = extractelement <2 x float> %i.bfe, i64 0
  %i.bfm = insertelement <2 x float> %i.bfe, float %i.bfh, i64 0
  %i.bfn = shufflevector <2 x float> %i.bey, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bfo = insertelement <2 x float> %i.bfn, float %i.bfa, i64 1
  %i.bfp = insertelement <2 x float> %i.bex, float %i.bev, i64 0
  br label %bb.gp

._crit_edge1646:                                  ; preds = %._crit_edge1642, %bb.go
  %i.bfq = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !192 ; 2 uses
  %.not.i1354 = icmp eq ptr %i.bfr, null
  %i.bfs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bft = select i1 %.not.i1354, ptr %i.bfs, ptr %i.bfr ; 6 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !192 ; 2 uses
  %.not.i1355 = icmp eq ptr %i.bfv, null
  %i.bfw = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bfx = select i1 %.not.i1355, ptr %i.bfw, ptr %i.bfv ; 9 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !193
  %i.bga = icmp sgt i32 %i.bfz, 0
  br i1 %i.bga, label %bb.gx, label %bb.he

bb.gp:                                            ; preds = %.lr.ph1645, %._crit_edge1642
  %indvars.iv1759 = phi i64 [ 0, %.lr.ph1645 ], [ %indvars.iv.next1760, %._crit_edge1642 ] ; 3 uses
  %i.bgb = getelementptr inbounds nuw [40 x i8], ptr %.1.i1312, i64 %indvars.iv1759 ; 5 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 36
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !177 ; 3 uses
  %i.bge = load ptr, ptr %i.bfk, align 8, !tbaa !171
  %i.bgf = getelementptr inbounds nuw [268 x i8], ptr %i.bge, i64 %indvars.iv1759 ; 7 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 264
  store i32 %i.bgd, ptr %i.bgg, align 4, !tbaa !195
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgf, i64 224
  %.sroa.0170.0.copyload = load <2 x float>, ptr %i.bgb, align 8 ; 4 uses
  %.sroa.2171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8 ; 2 uses
  %.sroa.2171.0.copyload = load float, ptr %.sroa.2171.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i1356 = extractelement <2 x float> %.sroa.0170.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i1357 = extractelement <2 x float> %.sroa.0170.0.copyload, i64 1
  %i.bgi = fmul <2 x float> %i.bex, %.sroa.0170.0.copyload
  %i.bgj = shufflevector <2 x float> %.sroa.0170.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bgk = fmul <2 x float> %i.bey, %i.bgj
  %i.bgl = fadd <2 x float> %i.bgi, %i.bgk
  %i.bgm = insertelement <2 x float> poison, float %.sroa.2171.0.copyload, i64 0
  %i.bgn = shufflevector <2 x float> %i.bgm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgo = fmul <2 x float> %i.bfe, %i.bgn
  %i.bgp = fadd <2 x float> %i.bgo, %i.bgl
  %i.bgq = shufflevector <2 x float> %i.bgp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bgr = fmul float %i.bev, %.sroa.03.0.vec.extract.i1356
  %i.bgs = fmul float %i.bfa, %.sroa.03.4.vec.extract.i1357
  %i.bgt = fadd float %i.bgr, %i.bgs
  %i.bgu = fmul float %i.bfh, %.sroa.2171.0.copyload
  %i.bgv = fadd float %i.bgu, %i.bgt
  store <2 x float> %i.bgq, ptr %i.bgh, align 4, !tbaa !106
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgf, i64 232
  store float %i.bgv, ptr %.sroa.4173.0..sroa_idx, align 4, !tbaa !106
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.bgb, align 8 ; 4 uses
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2171.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop2059 = fmul <2 x float> %i.bex, %.sroa.0162.0.copyload
  %shift2061 = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2062 = fmul <2 x float> %i.bey, %shift2061
  %foldExtExtBinop2064 = fadd <2 x float> %foldExtExtBinop2059, %foldExtExtBinop2062
  %i.bgw = extractelement <2 x float> %foldExtExtBinop2064, i64 0
  %i.bgx = fmul float %i.bfl, %.sroa.2163.0.copyload
  %i.bgy = fadd float %i.bgx, %i.bgw
  %i.bgz = fmul <2 x float> %i.bfp, %.sroa.0162.0.copyload
  %i.bha = fmul <2 x float> %i.bfo, %.sroa.0162.0.copyload
  %i.bhb = shufflevector <2 x float> %i.bha, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bhc = fadd <2 x float> %i.bhb, %i.bgz
  %i.bhd = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.bhe = shufflevector <2 x float> %i.bhd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhf = fmul <2 x float> %i.bfm, %i.bhe
  %i.bhg = fadd <2 x float> %i.bhf, %i.bhc
  br i1 %i.asq, label %.lr.ph1632, label %._crit_edge1633.thread

._crit_edge1633:                                  ; preds = %bb.gr
  %.not935 = icmp eq i32 %.2895, -1
  br i1 %.not935, label %._crit_edge1633.thread, label %bb.gs

.lr.ph1632:                                       ; preds = %bb.gp, %bb.gr
  %indvars.iv1744 = phi i64 [ %indvars.iv.next1745, %bb.gr ], [ 0, %bb.gp ] ; 4 uses
  %.08931629 = phi i32 [ %.2895, %bb.gr ], [ -1, %bb.gp ] ; 2 uses
  %.08961628 = phi float [ %.2898, %bb.gr ], [ 9.950000e-01, %bb.gp ] ; 3 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %.0908, i64 %indvars.iv1744
  %i.bhi = load i8, ptr %i.bhh, align 1, !tbaa !196, !range !197, !noundef !198
  %i.bhj = trunc nuw i8 %i.bhi to i1
  br i1 %i.bhj, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1632
  %i.bhk = getelementptr inbounds nuw [268 x i8], ptr %.0909, i64 %indvars.iv1744 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 224
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.bhl, align 4 ; 2 uses
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhk, i64 232
  %.sroa.2146.0.copyload = load float, ptr %.sroa.2146.0..sroa_idx, align 4
  %.sroa.04.4.vec.extract.i1370 = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.bhm = fmul float %i.bgy, %.sroa.04.4.vec.extract.i1370
  %i.bhn = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bho = insertelement <2 x float> %i.bhn, float %.sroa.2146.0.copyload, i64 0
  %i.bhp = fmul <2 x float> %i.bhg, %i.bho        ; 2 uses
  %i.bhq = extractelement <2 x float> %i.bhp, i64 1
  %i.bhr = fadd float %i.bhq, %i.bhm
  %i.bhs = extractelement <2 x float> %i.bhp, i64 0
  %i.bht = fadd float %i.bhs, %i.bhr              ; 2 uses
  %i.bhu = fcmp ogt float %i.bht, %.08961628      ; 2 uses
  %.1897 = select i1 %i.bhu, float %i.bht, float %.08961628
  %i.bhv = trunc nuw nsw i64 %indvars.iv1744 to i32
  %.1894 = select i1 %i.bhu, i32 %i.bhv, i32 %.08931629
  br label %bb.gr

bb.gr:                                            ; preds = %.lr.ph1632, %bb.gq
  %.2898 = phi float [ %.08961628, %.lr.ph1632 ], [ %.1897, %bb.gq ]
  %.2895 = phi i32 [ %.08931629, %.lr.ph1632 ], [ %.1894, %bb.gq ] ; 3 uses
  %indvars.iv.next1745 = add nuw nsw i64 %indvars.iv1744, 1 ; 2 uses
  %exitcond1748.not = icmp eq i64 %indvars.iv.next1745, %wide.trip.count1747
  br i1 %exitcond1748.not, label %._crit_edge1633, label %.lr.ph1632, !llvm.loop !42

bb.gs:                                            ; preds = %._crit_edge1633
  %i.bhw = sext i32 %.2895 to i64                 ; 2 uses
  %i.bhx = getelementptr inbounds [268 x i8], ptr %.0909, i64 %i.bhw ; 4 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bgf, i64 240
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhx, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bhy, ptr noundef nonnull align 4 dereferenceable(12) %i.bhz, i64 12, i1 false), !tbaa.struct !179
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bgf, i64 252
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhx, i64 252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bia, ptr noundef nonnull align 4 dereferenceable(12) %i.bib, i64 12, i1 false), !tbaa.struct !179
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhx, i64 236
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !199
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bgf, i64 236
  store float %i.bid, ptr %i.bie, align 4, !tbaa !199
  %i.bif = getelementptr inbounds i8, ptr %.0908, i64 %i.bhw
  store i8 1, ptr %i.bif, align 1, !tbaa !196
  br label %._crit_edge1633.thread

._crit_edge1633.thread:                           ; preds = %bb.gp, %bb.gs, %._crit_edge1633
  %.0889 = phi ptr [ %i.bhx, %bb.gs ], [ null, %._crit_edge1633 ], [ null, %bb.gp ] ; 3 uses
  %i.big = icmp sgt i32 %i.bgd, 0
  br i1 %i.big, label %.lr.ph1641, label %._crit_edge1642

.lr.ph1641:                                       ; preds = %._crit_edge1633.thread
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bgb, i64 24
  %24 = load ptr, ptr %i.bih, align 8, !tbaa !176
  %.not936 = icmp eq ptr %.0889, null
  %i.bii = getelementptr inbounds nuw i8, ptr %.0889, i64 264
  %wide.trip.count1757 = zext nneg i32 %i.bgd to i64
  br label %bb.gt

._crit_edge1642:                                  ; preds = %.loopexit, %._crit_edge1633.thread
  %indvars.iv.next1760 = add nuw nsw i64 %indvars.iv1759, 1 ; 2 uses
  %exitcond1763.not = icmp eq i64 %indvars.iv.next1760, %wide.trip.count1762
  br i1 %exitcond1763.not, label %._crit_edge1646, label %bb.gp, !llvm.loop !43

bb.gt:                                            ; preds = %.lr.ph1641, %.loopexit
  %indvars.iv1754 = phi i64 [ 0, %.lr.ph1641 ], [ %indvars.iv.next1755, %.loopexit ] ; 3 uses
  %i.bij = getelementptr inbounds nuw [24 x i8], ptr %24, i64 %indvars.iv1754 ; 5 uses
  %i.bik = getelementptr inbounds nuw [56 x i8], ptr %i.bgf, i64 %indvars.iv1754 ; 9 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 12
  %.sroa.0115.0.copyload = load <2 x float>, ptr %i.bij, align 4 ; 4 uses
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bij, i64 8
  %.sroa.2116.0.copyload = load float, ptr %.sroa.2116.0..sroa_idx, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i1372 = extractelement <2 x float> %.sroa.0115.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i1373 = extractelement <2 x float> %.sroa.0115.0.copyload, i64 1
  %i.bim = fmul <2 x float> %i.bex, %.sroa.0115.0.copyload
  %i.bin = shufflevector <2 x float> %.sroa.0115.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bio = fmul <2 x float> %i.bey, %i.bin
  %i.bip = fadd <2 x float> %i.bim, %i.bio
  %i.biq = insertelement <2 x float> poison, float %.sroa.2116.0.copyload, i64 0
  %i.bir = shufflevector <2 x float> %i.biq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bis = fmul <2 x float> %i.bfe, %i.bir
  %i.bit = fadd <2 x float> %i.bis, %i.bip
  %i.biu = shufflevector <2 x float> %i.bit, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.biv = fmul float %i.bev, %.sroa.03.0.vec.extract.i1372
  %i.biw = fmul float %i.bfa, %.sroa.03.4.vec.extract.i1373
  %i.bix = fadd float %i.biv, %i.biw
  %i.biy = fmul float %i.bfh, %.sroa.2116.0.copyload
  %i.biz = fadd float %i.biy, %i.bix              ; 2 uses
  store <2 x float> %i.biu, ptr %i.bil, align 4, !tbaa !106
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bik, i64 20
  store float %i.biz, ptr %.sroa.4118.0..sroa_idx, align 4, !tbaa !106
  %i.bja = fadd <2 x float> %i.bfi, %i.biu
  %i.bjb = fadd float %i.bfj, %i.biz
  store <2 x float> %i.bja, ptr %i.bik, align 4, !tbaa !106
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bik, i64 8
  store float %i.bjb, ptr %.sroa.4110.0..sroa_idx, align 4, !tbaa !106
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bij, i64 12
  %i.bjd = load float, ptr %i.bjc, align 4, !tbaa !160
  %i.bje = fsub float %i.bjd, %i.na
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bik, i64 24
  store float %i.bje, ptr %i.bjf, align 4, !tbaa !201
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bij, i64 16
  %i.bjh = load i32, ptr %i.bjg, align 4
  %i.bji = call i32 @llvm.bswap.i32(i32 %i.bjh)   ; 2 uses
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bik, i64 44
  store i32 %i.bji, ptr %i.bjj, align 4, !tbaa !202
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bij, i64 20
  %i.bjl = load i32, ptr %i.bjk, align 4, !tbaa !178 ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bik, i64 48
  store i32 %i.bjl, ptr %i.bjm, align 4, !tbaa !203
  br i1 %.not936, label %.loopexit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bjn = load i32, ptr %i.bii, align 4, !tbaa !195 ; 2 uses
  %i.bjo = icmp sgt i32 %i.bjn, 0
  br i1 %i.bjo, label %.lr.ph1638.preheader, label %.loopexit

.lr.ph1638.preheader:                             ; preds = %bb.gu
  %wide.trip.count1752 = zext nneg i32 %i.bjn to i64
  br label %.lr.ph1638

.lr.ph1638:                                       ; preds = %.lr.ph1638.preheader, %bb.gw
  %indvars.iv1749 = phi i64 [ 0, %.lr.ph1638.preheader ], [ %indvars.iv.next1750, %bb.gw ] ; 2 uses
  %i.bjp = getelementptr inbounds nuw [56 x i8], ptr %.0889, i64 %indvars.iv1749 ; 4 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 44
  %i.bjr = load i32, ptr %i.bjq, align 4, !tbaa !202
  %i.bjs = icmp eq i32 %i.bji, %i.bjr
  br i1 %i.bjs, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.lr.ph1638
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjp, i64 48
  %i.bju = load i32, ptr %i.bjt, align 4, !tbaa !203
  %i.bjv = icmp eq i32 %i.bjl, %i.bju
  br i1 %i.bjv, label %.critedge951, label %bb.gw

.critedge951:                                     ; preds = %bb.gv
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjp, i64 48
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjp, i64 32
  %i.bjy = load float, ptr %i.bjx, align 4, !tbaa !204
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bik, i64 32
  store float %i.bjy, ptr %i.bjz, align 4, !tbaa !204
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bik, i64 52
  store i8 1, ptr %i.bka, align 4, !tbaa !205
  store i32 -1, ptr %i.bjw, align 4, !tbaa !203
  br label %.loopexit

bb.gw:                                            ; preds = %bb.gv, %.lr.ph1638
  %indvars.iv.next1750 = add nuw nsw i64 %indvars.iv1749, 1 ; 2 uses
  %exitcond1753.not = icmp eq i64 %indvars.iv.next1750, %wide.trip.count1752
  br i1 %exitcond1753.not, label %.loopexit, label %.lr.ph1638, !llvm.loop !44

.loopexit:                                        ; preds = %bb.gw, %bb.gu, %.critedge951, %bb.gt
  %indvars.iv.next1755 = add nuw nsw i64 %indvars.iv1754, 1 ; 2 uses
  %exitcond1758.not = icmp eq i64 %indvars.iv.next1755, %wide.trip.count1757
  br i1 %exitcond1758.not, label %._crit_edge1642, label %bb.gt, !llvm.loop !45

bb.gx:                                            ; preds = %._crit_edge1646
  %i.bkb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bkc = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !113 ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 80
  %i.bkf = load i32, ptr %i.bke, align 8, !tbaa !14
  %i.bkg = ptrtoint ptr %i.bkd to i64
  %i.bkh = sext i32 %i.bkf to i64
  %i.bki = add nsw i64 %i.bkh, %i.bkg
  %i.bkj = inttoptr i64 %i.bki to ptr             ; 2 uses
  br i1 %i.aqe, label %.lr.ph1668, label %._crit_edge1669.thread

.lr.ph1668:                                       ; preds = %bb.gx
  %i.bkk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not934 = icmp eq ptr %4, null
  %i.bkl = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bfx, i64 24 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bfx, i64 4
  %wide.trip.count1772 = zext nneg i32 %.1900 to i64
  br label %bb.gy

._crit_edge1669:                                  ; preds = %._crit_edge1655
  %i.bkp = fcmp ogt float %.1869.lcssa, 0.000000e+00
  br i1 %i.bkp, label %bb.hd, label %._crit_edge1669.thread

bb.gy:                                            ; preds = %.lr.ph1668, %._crit_edge1655
  %indvars.iv1769 = phi i64 [ 0, %.lr.ph1668 ], [ %indvars.iv.next1770, %._crit_edge1655 ] ; 2 uses
  %.08681665 = phi float [ 0.000000e+00, %.lr.ph1668 ], [ %.1869.lcssa, %._crit_edge1655 ] ; 2 uses
  %.sroa.073.01662 = phi <2 x float> [ zeroinitializer, %.lr.ph1668 ], [ %.sroa.073.1.lcssa, %._crit_edge1655 ] ; 2 uses
  %.sroa.11.01661 = phi float [ 0.000000e+00, %.lr.ph1668 ], [ %.sroa.11.1.lcssa, %._crit_edge1655 ] ; 2 uses
  %i.bkq = phi <2 x float> [ zeroinitializer, %.lr.ph1668 ], [ %i.bkw, %._crit_edge1655 ] ; 2 uses
  %i.bkr = load ptr, ptr %i.bkk, align 8, !tbaa !171
  %i.bks = getelementptr inbounds nuw [268 x i8], ptr %i.bkr, i64 %indvars.iv1769 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 264
  %i.bku = load i32, ptr %i.bkt, align 4, !tbaa !195 ; 2 uses
  %i.bkv = icmp sgt i32 %i.bku, 0
  br i1 %i.bkv, label %.lr.ph1654.preheader, label %._crit_edge1655

.lr.ph1654.preheader:                             ; preds = %bb.gy
  %wide.trip.count1767 = zext nneg i32 %i.bku to i64
  br label %.lr.ph1654

._crit_edge1655:                                  ; preds = %bb.hc, %bb.gy
  %.sroa.11.1.lcssa = phi float [ %.sroa.11.01661, %bb.gy ], [ %i.bmi, %bb.hc ] ; 3 uses
  %.sroa.073.1.lcssa = phi <2 x float> [ %.sroa.073.01662, %bb.gy ], [ %i.bmh, %bb.hc ] ; 3 uses
  %.1869.lcssa = phi float [ %.08681665, %bb.gy ], [ %i.bmj, %bb.hc ] ; 3 uses
  %i.bkw = phi <2 x float> [ %i.bkq, %bb.gy ], [ %i.bmg, %bb.hc ] ; 2 uses
  %indvars.iv.next1770 = add nuw nsw i64 %indvars.iv1769, 1 ; 2 uses
  %exitcond1773.not = icmp eq i64 %indvars.iv.next1770, %wide.trip.count1772
  br i1 %exitcond1773.not, label %._crit_edge1669, label %bb.gy, !llvm.loop !46

.lr.ph1654:                                       ; preds = %.lr.ph1654.preheader, %bb.hc
  %indvars.iv1764 = phi i64 [ 0, %.lr.ph1654.preheader ], [ %indvars.iv.next1765, %bb.hc ] ; 2 uses
  %.18691651 = phi float [ %.08681665, %.lr.ph1654.preheader ], [ %i.bmj, %bb.hc ]
  %.sroa.073.11648 = phi <2 x float> [ %.sroa.073.01662, %.lr.ph1654.preheader ], [ %i.bmh, %bb.hc ]
  %.sroa.11.11647 = phi float [ %.sroa.11.01661, %.lr.ph1654.preheader ], [ %i.bmi, %bb.hc ]
  %i.bkx = phi <2 x float> [ %i.bkq, %.lr.ph1654.preheader ], [ %i.bmg, %bb.hc ]
  %i.bky = getelementptr inbounds nuw [56 x i8], ptr %i.bks, i64 %indvars.iv1764
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 48
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !203 ; 2 uses
  %i.blb = load i32, ptr %i.bkb, align 8, !tbaa !112
  %i.blc = icmp eq i32 %i.blb, 4
  br i1 %i.blc, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %.lr.ph1654
  %i.bld = sext i32 %i.bla to i64
  %i.ble = getelementptr inbounds i8, ptr %i.bkj, i64 %i.bld
  %i.blf = load i8, ptr %i.ble, align 1, !tbaa !113 ; 2 uses
  %i.blg = zext i8 %i.blf to i32
  br i1 %.not934, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.blh = zext i8 %i.blf to i64
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.blh
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !14
  br label %bb.hc

bb.hb:                                            ; preds = %.lr.ph1654
  %i.blk = ashr i32 %i.bla, 1
  %i.bll = sext i32 %i.blk to i64
  %i.blm = getelementptr inbounds i8, ptr %i.bkj, i64 %i.bll
  %i.bln = load i8, ptr %i.blm, align 1, !tbaa !113
  %i.blo = zext i8 %i.bln to i32
  br label %bb.hc

bb.hc:                                            ; preds = %bb.gz, %bb.ha, %bb.hb
  %.0864 = phi i32 [ %i.blj, %bb.ha ], [ %i.blg, %bb.gz ], [ %i.blo, %bb.hb ] ; 2 uses
  %i.blp = load i32, ptr %i.bfy, align 4, !tbaa !193
  %i.blq = add nsw i32 %i.blp, -1
  %i.blr = icmp slt i32 %.0864, 0
  %i.bls = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.blq, i32 %.0864)
  %i.blt = select i1 %i.blr, i32 0, i32 %i.bls
  %i.blu = sext i32 %i.blt to i64
  %i.blv = getelementptr inbounds [40 x i8], ptr %i.bft, i64 %i.blu ; 5 uses
  %.sroa.047.0.copyload = load float, ptr %i.blv, align 8, !tbaa !106
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blv, i64 4
  %.sroa.448.0.copyload = load float, ptr %.sroa.448.0..sroa_idx, align 4, !tbaa !106
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blv, i64 12
  %.sroa.549.0.copyload = load <2 x float>, ptr %.sroa.549.0..sroa_idx, align 4, !tbaa !106
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blv, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !106
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.blv, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !157 ; 2 uses
  %i.blw = load ptr, ptr %i.bkl, align 8, !tbaa !206
  %i.blx = load float, ptr %i.bfx, align 8, !tbaa !207
  %i.bly = load i64, ptr %i.bkm, align 8, !tbaa !208
  %i.blz = call float %i.blw(float noundef %.sroa.047.0.copyload, i64 noundef %.sroa.7.0.copyload, float noundef %i.blx, i64 noundef %i.bly) #7
  %i.bma = load ptr, ptr %i.bkn, align 8, !tbaa !209
  %i.bmb = load float, ptr %i.bko, align 4, !tbaa !210
  %i.bmc = load i64, ptr %i.bkm, align 8, !tbaa !208
  %i.bmd = call float %i.bma(float noundef %.sroa.448.0.copyload, i64 noundef %.sroa.7.0.copyload, float noundef %i.bmb, i64 noundef %i.bmc) #7
  %i.bme = insertelement <2 x float> poison, float %i.blz, i64 0
  %i.bmf = insertelement <2 x float> %i.bme, float %i.bmd, i64 1
  %i.bmg = fadd <2 x float> %i.bkx, %i.bmf        ; 2 uses
  %i.bmh = fadd <2 x float> %.sroa.073.11648, %.sroa.549.0.copyload ; 2 uses
  %i.bmi = fadd float %.sroa.11.11647, %.sroa.6.0.copyload ; 2 uses
  %i.bmj = fadd float %.18691651, 1.000000e+00    ; 2 uses
  %indvars.iv.next1765 = add nuw nsw i64 %indvars.iv1764, 1 ; 2 uses
  %exitcond1768.not = icmp eq i64 %indvars.iv.next1765, %wide.trip.count1767
  br i1 %exitcond1768.not, label %._crit_edge1655, label %.lr.ph1654, !llvm.loop !47

bb.hd:                                            ; preds = %._crit_edge1669
  %i.bmk = fdiv float 1.000000e+00, %.1869.lcssa  ; 2 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bmm = insertelement <2 x float> poison, float %i.bmk, i64 0
  %i.bmn = shufflevector <2 x float> %i.bmm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bmo = fmul <2 x float> %i.bkw, %i.bmn        ; 2 uses
  %i.bmp = extractelement <2 x float> %i.bmo, i64 0
  store float %i.bmp, ptr %i.bml, align 8, !tbaa !211
  %i.bmq = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bmr = extractelement <2 x float> %i.bmo, i64 1
  store float %i.bmr, ptr %i.bmq, align 8, !tbaa !212
  %i.bms = fmul <2 x float> %.sroa.073.1.lcssa, %i.bmn
  %i.bmt = fmul float %.sroa.11.1.lcssa, %i.bmk
  br label %._crit_edge1669.thread

bb.he:                                            ; preds = %._crit_edge1646
  %i.bmu = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.bmv = load ptr, ptr %i.bmu, align 8, !tbaa !206
  %i.bmw = load float, ptr %i.bft, align 8, !tbaa !207
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bft, i64 24 ; 2 uses
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !208
  %i.bmz = load float, ptr %i.bfx, align 8, !tbaa !207
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bfx, i64 24 ; 2 uses
  %i.bnb = load i64, ptr %i.bna, align 8, !tbaa !208
  %i.bnc = call float %i.bmv(float noundef %i.bmw, i64 noundef %i.bmy, float noundef %i.bmz, i64 noundef %i.bnb) #7
  %i.bnd = getelementptr inbounds nuw i8, ptr %2, i64 144
  store float %i.bnc, ptr %i.bnd, align 8, !tbaa !211
  %i.bne = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !209
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bft, i64 4
  %i.bnh = load float, ptr %i.bng, align 4, !tbaa !210
  %i.bni = load i64, ptr %i.bmx, align 8, !tbaa !208
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bfx, i64 4
  %i.bnk = load float, ptr %i.bnj, align 4, !tbaa !210
  %i.bnl = load i64, ptr %i.bna, align 8, !tbaa !208
  %i.bnm = call float %i.bnf(float noundef %i.bnh, i64 noundef %i.bni, float noundef %i.bnk, i64 noundef %i.bnl) #7
  %i.bnn = getelementptr inbounds nuw i8, ptr %2, i64 192
  store float %i.bnm, ptr %i.bnn, align 8, !tbaa !212
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bft, i64 12
  %.sroa.073.0.copyload = load <2 x float>, ptr %i.bno, align 4, !tbaa !106
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bft, i64 20
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !106
  br label %._crit_edge1669.thread

._crit_edge1669.thread:                           ; preds = %bb.gx, %._crit_edge1669, %bb.hd, %bb.he
  %.sroa.11.3 = phi float [ %.sroa.11.0.copyload, %bb.he ], [ %i.bmt, %bb.hd ], [ %.sroa.11.1.lcssa, %._crit_edge1669 ], [ 0.000000e+00, %bb.gx ] ; 4 uses
  %.sroa.073.3 = phi <2 x float> [ %.sroa.073.0.copyload, %bb.he ], [ %i.bms, %bb.hd ], [ %.sroa.073.1.lcssa, %._crit_edge1669 ], [ zeroinitializer, %bb.gx ] ; 4 uses
  %i.bnp = load <2 x float>, ptr %.sroa.61492.0..sroa_idx, align 4 ; 6 uses
  %i.bnq = load <2 x float>, ptr %.sroa.71493.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop2066 = fmul <2 x float> %.sroa.073.3, %i.bnq
  %i.bnr = extractelement <2 x float> %foldExtExtBinop2066, i64 0
  %.sroa.011.0.vec.extract.i.i1402 = extractelement <2 x float> %i.bnp, i64 0
  %i.bns = fmul float %.sroa.11.3, %.sroa.011.0.vec.extract.i.i1402
  %i.bnt = fsub float %i.bnr, %i.bns
  %i.bnu = shufflevector <2 x float> %.sroa.073.3, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bnv = insertelement <2 x float> %i.bnu, float %.sroa.11.3, i64 1 ; 2 uses
  %i.bnw = fmul <2 x float> %i.bnv, %i.bnp
  %i.bnx = shufflevector <2 x float> %i.bnp, <2 x float> %i.bnq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bny = fmul <2 x float> %.sroa.073.3, %i.bnx
  %i.bnz = fsub <2 x float> %i.bnw, %i.bny        ; 2 uses
  %i.boa = insertelement <2 x float> %i.bnu, float %.sroa.11.3, i64 0
  %i.bob = shufflevector <2 x float> %i.bnq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.boc = fmul <2 x float> %i.boa, %i.bob
  %i.bod = fmul <2 x float> %i.bnv, %i.bob
  %i.boe = fadd <2 x float> %i.boc, %i.bnz        ; 2 uses
  %i.bof = shufflevector <2 x float> %i.bnz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bog = insertelement <2 x float> %i.bof, float %i.bnt, i64 0
  %i.boh = fadd <2 x float> %i.bod, %i.bog        ; 2 uses
  %i.boi = fmul <2 x float> %i.bnx, %i.boe
  %i.boj = shufflevector <2 x float> %i.bnq, <2 x float> %i.bnp, <2 x i32> <i32 0, i32 2>
  %i.bok = fmul <2 x float> %i.boj, %i.boh
  %i.bol = fsub <2 x float> %i.boi, %i.bok
  %foldExtExtBinop2068 = fmul <2 x float> %i.bnp, %i.boh
  %foldExtExtBinop2070 = fmul <2 x float> %i.bnp, %i.boe
  %shift2072 = shufflevector <2 x float> %foldExtExtBinop2070, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2073 = fsub <2 x float> %foldExtExtBinop2068, %shift2072
  %i.bom = extractelement <2 x float> %foldExtExtBinop2073, i64 0
  %i.bon = fmul <2 x float> %i.bol, splat (float 2.000000e+00)
  %i.boo = fadd <2 x float> %.sroa.073.3, %i.bon
  %i.bop = fmul float %i.bom, 2.000000e+00
  %i.boq = fadd float %.sroa.11.3, %i.bop
  %i.bor = load i32, ptr %i.ot, align 8, !tbaa !112
  switch i32 %i.bor, label %bb.hi [
    i32 5, label %bb.hf
    i32 0, label %bb.hg
    i32 3, label %bb.hh
  ]

bb.hf:                                            ; preds = %._crit_edge1669.thread
  %i.bos = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.bot = load float, ptr %i.bos, align 4, !tbaa !113
  br label %bb.hi

bb.hg:                                            ; preds = %._crit_edge1669.thread
  %i.bou = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.bov = load float, ptr %i.bou, align 8, !tbaa !113
  br label %bb.hi

bb.hh:                                            ; preds = %._crit_edge1669.thread
  %i.bow = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !113
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 48
  %i.boz = load float, ptr %i.boy, align 8, !tbaa !215
  br label %bb.hi

bb.hi:                                            ; preds = %._crit_edge1669.thread, %bb.hg, %bb.hh, %bb.hf
  %.0847 = phi float [ %i.bot, %bb.hf ], [ %i.bov, %bb.hg ], [ %i.boz, %bb.hh ], [ 0.000000e+00, %._crit_edge1669.thread ]
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  %i.bpb = load float, ptr %i.bpa, align 8, !tbaa !216
  %i.bpc = fmul float %.0847, %i.bpb
  %i.bpd = getelementptr inbounds nuw i8, ptr %2, i64 196
  store float %i.bpc, ptr %i.bpd, align 4, !tbaa !217
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bfx, i64 12
  %i.bpf = load <2 x float>, ptr %.sroa.61478.0..sroa_idx, align 4 ; 6 uses
  %i.bpg = load <2 x float>, ptr %.sroa.8.0..sroa_idx1480, align 4 ; 4 uses
  %.sroa.014.0.copyload = load <2 x float>, ptr %i.bpe, align 4 ; 4 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfx, i64 20
  %.sroa.215.0.copyload = load float, ptr %.sroa.215.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop2075 = fmul <2 x float> %i.bpg, %.sroa.014.0.copyload
  %i.bph = extractelement <2 x float> %foldExtExtBinop2075, i64 0
  %.sroa.011.0.vec.extract.i.i1412 = extractelement <2 x float> %i.bpf, i64 0
  %i.bpi = fmul float %.sroa.011.0.vec.extract.i.i1412, %.sroa.215.0.copyload
  %i.bpj = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bpk = fsub float %i.bph, %i.bpi
  %i.bpl = shufflevector <2 x float> %.sroa.014.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bpm = insertelement <2 x float> %i.bpl, float %.sroa.215.0.copyload, i64 1 ; 2 uses
  %i.bpn = fmul <2 x float> %i.bpf, %i.bpm
  %i.bpo = shufflevector <2 x float> %i.bpf, <2 x float> %i.bpg, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bpp = fmul <2 x float> %i.bpo, %.sroa.014.0.copyload
  %i.bpq = fsub <2 x float> %i.bpn, %i.bpp        ; 2 uses
  %i.bpr = shufflevector <2 x float> %i.bpg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bps = insertelement <2 x float> %i.bpl, float %.sroa.215.0.copyload, i64 0
  %i.bpt = fmul <2 x float> %i.bpr, %i.bps
  %i.bpu = fmul <2 x float> %i.bpr, %i.bpm
  %i.bpv = fadd <2 x float> %i.bpt, %i.bpq        ; 2 uses
  %i.bpw = shufflevector <2 x float> %i.bpq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bpx = insertelement <2 x float> %i.bpw, float %i.bpk, i64 0
  %i.bpy = fadd <2 x float> %i.bpu, %i.bpx        ; 2 uses
  %i.bpz = fmul <2 x float> %i.bpo, %i.bpv
  %i.bqa = shufflevector <2 x float> %i.bpg, <2 x float> %i.bpf, <2 x i32> <i32 0, i32 2>
  %i.bqb = fmul <2 x float> %i.bqa, %i.bpy
  %i.bqc = fsub <2 x float> %i.bpz, %i.bqb
  %foldExtExtBinop2077 = fmul <2 x float> %i.bpf, %i.bpy
  %foldExtExtBinop2079 = fmul <2 x float> %i.bpf, %i.bpv
  %shift2081 = shufflevector <2 x float> %foldExtExtBinop2079, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2082 = fsub <2 x float> %foldExtExtBinop2077, %shift2081
  %i.bqd = extractelement <2 x float> %foldExtExtBinop2082, i64 0
  %i.bqe = fmul <2 x float> %i.bqc, splat (float 2.000000e+00)
  %i.bqf = fadd <2 x float> %.sroa.014.0.copyload, %i.bqe
  %i.bqg = fmul float %i.bqd, 2.000000e+00
  %i.bqh = fadd float %.sroa.215.0.copyload, %i.bqg
  %i.bqi = fsub <2 x float> %i.boo, %i.bqf
  %i.bqj = fsub float %i.boq, %i.bqh
  store <2 x float> %i.bqi, ptr %i.bpj, align 8, !tbaa !106
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 208
  store float %i.bqj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !106
  br label %._crit_edge1614.thread

._crit_edge1614.thread:                           ; preds = %b3Bump.exit1315, %bb.cb, %bb.hi, %._crit_edge1614, %.loopexit1544.thread, %b3FreeManifolds.exit
  %.4 = phi i1 [ false, %bb.cb ], [ false, %.loopexit1544.thread ], [ false, %b3FreeManifolds.exit ], [ false, %._crit_edge1614 ], [ true, %bb.hi ], [ false, %b3Bump.exit1315 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

declare void @b3GetMeshTriangle(ptr dead_on_unwind writable sret(%struct.b3Triangle) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @b3GetHeightFieldTriangle(ptr dead_on_unwind writable sret(%struct.b3Triangle) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b3CollideTriangleAndCapsule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3CollideTriangleAndHull(ptr noundef, i32 noundef, <2 x float>, float, <2 x float>, float, <2 x float>, float, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3CollideTriangleAndSphere(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #2

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @b3QueryMesh(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i1 @b3CollectTriangleIndicesCallback(<2 x float> %0, float %1, <2 x float> %2, float %3, <2 x float> %4, float %5, i32 noundef %6, ptr nofree noundef captures(none) %7) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %7, align 8, !tbaa !11
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  store i32 %6, ptr %i.h, align 4, !tbaa !14
  %i.i = load i32, ptr %i.a, align 4, !tbaa !13
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !13
  %i.k = load i32, ptr %i.c, align 8, !tbaa !12
  %i.l = icmp slt i32 %i.j, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @b3QueryHeightField(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3ArenaOverflowAlloc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @b3LockMutex(ptr noundef) local_unnamed_addr #2

declare void @b3FreeElement(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3UnlockMutex(ptr noundef) local_unnamed_addr #2

declare void @b3CreateBlockAllocator(ptr dead_on_unwind writable sret(%struct.b3BlockAllocator) align 8, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @b3AllocateElement(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

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
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!"b3TriangleQueryContext", !9, i64 0, !5, i64 8, !5, i64 12}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!10, !5, i64 12}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !116}
!16 = distinct !{!16, !116}
!17 = distinct !{!17, !116}
!18 = distinct !{!18, !116}
!19 = distinct !{!19, !116}
!20 = distinct !{!20, !116}
!21 = distinct !{!21, !116}
!22 = distinct !{!22, !116}
!23 = distinct !{!23, !116}
!24 = distinct !{!24, !116}
!25 = distinct !{!25, !116}
!26 = distinct !{!26, !116}
!27 = distinct !{!27, !116}
!28 = distinct !{!28, !116}
!29 = distinct !{!29, !116}
!30 = distinct !{!30, !116}
!31 = distinct !{!31, !116}
!32 = distinct !{!32, !116}
!33 = distinct !{!33, !116}
!34 = distinct !{!34, !116}
!35 = distinct !{!35, !116}
!36 = distinct !{!36, !116}
!37 = distinct !{!37, !116}
!38 = distinct !{!38, !116}
!39 = distinct !{!39, !116}
!40 = distinct !{!40, !116}
!41 = distinct !{!41, !116}
!42 = distinct !{!42, !116}
!43 = distinct !{!43, !116}
!44 = distinct !{!44, !116}
!45 = distinct !{!45, !116}
!46 = distinct !{!46, !116}
!47 = distinct !{!47, !116}
!48 = !{!"p1 omnipotent char", !8, i64 0}
!49 = !{!"b3Stack", !48, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 792}
!50 = !{!"b3DynamicArray_int", !9, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS12b3MoveResult", !8, i64 0}
!52 = !{!"p1 _ZTS10b3MovePair", !8, i64 0}
!53 = !{!"b3AtomicInt", !5, i64 0}
!54 = !{!"p1 _ZTS9b3SetItem", !8, i64 0}
!55 = !{!"b3HashSet", !54, i64 0, !5, i64 8, !5, i64 12}
!56 = !{!"b3BroadPhase", !4, i64 0, !4, i64 240, !50, i64 288, !51, i64 304, !52, i64 312, !5, i64 320, !53, i64 324, !55, i64 328}
!57 = !{!"b3ConstraintGraph", !4, i64 0}
!58 = !{!"p1 _ZTS16b3BlockAllocator", !8, i64 0}
!59 = !{!"b3DynamicArray_b3BlockAllocator", !58, i64 0, !5, i64 8, !5, i64 12}
!60 = !{!"p1 _ZTS7b3Mutex", !8, i64 0}
!61 = !{!"b3IdPool", !50, i64 0, !5, i64 16}
!62 = !{!"p1 _ZTS6b3Body", !8, i64 0}
!63 = !{!"b3DynamicArray_b3Body", !62, i64 0, !5, i64 8, !5, i64 12}
!64 = !{!"p1 _ZTS11b3SolverSet", !8, i64 0}
!65 = !{!"b3DynamicArray_b3SolverSet", !64, i64 0, !5, i64 8, !5, i64 12}
!66 = !{!"p1 _ZTS7b3Joint", !8, i64 0}
!67 = !{!"b3DynamicArray_b3Joint", !66, i64 0, !5, i64 8, !5, i64 12}
!68 = !{!"p1 _ZTS9b3Contact", !8, i64 0}
!69 = !{!"b3DynamicArray_b3Contact", !68, i64 0, !5, i64 8, !5, i64 12}
!70 = !{!"p1 _ZTS8b3Island", !8, i64 0}
!71 = !{!"b3DynamicArray_b3Island", !70, i64 0, !5, i64 8, !5, i64 12}
!72 = !{!"p1 _ZTS7b3Shape", !8, i64 0}
!73 = !{!"b3DynamicArray_b3Shape", !72, i64 0, !5, i64 8, !5, i64 12}
!74 = !{!"p1 _ZTS11b3NameEntry", !8, i64 0}
!75 = !{!"b3DynamicArray_b3NameEntry", !74, i64 0, !5, i64 8, !5, i64 12}
!76 = !{!"b3NameCache", !75, i64 0, !8, i64 16}
!77 = !{!"p1 _ZTS8b3Sensor", !8, i64 0}
!78 = !{!"b3DynamicArray_b3Sensor", !77, i64 0, !5, i64 8, !5, i64 12}
!79 = !{!"p1 _ZTS13b3TaskContext", !8, i64 0}
!80 = !{!"b3DynamicArray_b3TaskContext", !79, i64 0, !5, i64 8, !5, i64 12}
!81 = !{!"p1 _ZTS19b3SensorTaskContext", !8, i64 0}
!82 = !{!"b3DynamicArray_b3SensorTaskContext", !81, i64 0, !5, i64 8, !5, i64 12}
!83 = !{!"p1 _ZTS15b3BodyMoveEvent", !8, i64 0}
end_hunk_2
