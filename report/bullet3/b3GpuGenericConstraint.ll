Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuGenericConstraint?download=true
inline.NumInlined: 67
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22b3GpuGenericConstraint8getInfo1EPjPK15b3RigidBodyData(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !9
  %cond = icmp eq i32 %i.a, 3
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %1, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z19getInfo2Point2PointP22b3GpuGenericConstraintP20b3GpuConstraintInfo2PK15b3RigidBodyData(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [80 x i8], ptr %2, i64 %i.c ; 7 uses
  %.sroa.2096.48.copyload = load float, ptr %i.d, align 16
  %.sroa.2297.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.2297.48.copyload = load float, ptr %.sroa.2297.48..sroa_idx, align 4
  %.sroa.2398.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2398.48.copyload = load float, ptr %.sroa.2398.48..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load float, ptr %i.e, align 16, !tbaa !17 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !17 ; 5 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load float, ptr %i.k, align 8, !tbaa !17 ; 4 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !17 ; 5 uses
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.m)
  %i.q = fdiv float 2.000000e+00, %i.p            ; 3 uses
  %i.r = fmul float %i.f, %i.q                    ; 2 uses
  %i.s = fmul float %i.h, %i.q                    ; 3 uses
  %i.t = fmul float %i.l, %i.q                    ; 4 uses
  %i.u = fmul float %i.o, %i.r                    ; 2 uses
  %i.v = fmul float %i.o, %i.s                    ; 2 uses
  %i.w = fmul float %i.o, %i.t                    ; 2 uses
  %i.x = fmul float %i.f, %i.r                    ; 2 uses
  %i.y = fmul float %i.f, %i.s                    ; 2 uses
  %i.z = fmul float %i.f, %i.t                    ; 2 uses
  %i.aa = fmul float %i.h, %i.s                   ; 2 uses
  %i.ab = fmul float %i.h, %i.t                   ; 2 uses
  %i.ac = fmul float %i.l, %i.t                   ; 2 uses
  %i.ad = fadd float %i.aa, %i.ac
  %i.ae = fsub float 1.000000e+00, %i.ad
  %i.af = fsub float %i.y, %i.w
  %i.ag = fadd float %i.z, %i.v
  %i.ah = fadd float %i.y, %i.w
  %i.ai = fadd float %i.x, %i.ac
  %i.aj = fsub float 1.000000e+00, %i.ai
  %i.ak = fsub float %i.ab, %i.u
  %i.al = fsub float %i.z, %i.v
  %i.am = fadd float %i.ab, %i.u
  %i.an = fadd float %i.x, %i.aa
  %i.ao = fsub float 1.000000e+00, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !18
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [80 x i8], ptr %2, i64 %i.ar ; 6 uses
  %.sroa.20.48.copyload = load float, ptr %i.as, align 16
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.22.48.copyload = load float, ptr %.sroa.22.48..sroa_idx, align 4
  %.sroa.23.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.23.48.copyload = load float, ptr %.sroa.23.48..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.av = load <3 x float>, ptr %i.at, align 16, !tbaa !17 ; 5 uses
  %i.aw = load float, ptr %i.au, align 4, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !17 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19 ; 3 uses
  store float 1.000000e+00, ptr %i.ba, align 4, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  store float 1.000000e+00, ptr %i.bf, align 4, !tbaa !24
  %i.bg = shl nsw i32 %i.bc, 1
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %i.ba, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store float 1.000000e+00, ptr %i.bj, align 4, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load float, ptr %i.bk, align 16, !tbaa !17 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17 ; 3 uses
  %i.bo = fmul float %i.af, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.bl, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load float, ptr %i.bq, align 8, !tbaa !17 ; 3 uses
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.br, float %i.bp) ; 3 uses
  %i.bt = fmul float %i.aj, %i.bn
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.bl, float %i.bt)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.br, float %i.bu) ; 3 uses
  %i.bw = fmul float %i.am, %i.bn
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bl, float %i.bw)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.br, float %i.bx) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26 ; 6 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.bd ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.bh ; 3 uses
  %i.cd = fneg float %i.bs
  %i.ce = fneg float %i.bv
  %i.cf = fneg float %i.by
  store float 0.000000e+00, ptr %i.ca, align 16, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.by, ptr %i.cg, align 4, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store float %i.ce, ptr %i.ch, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store float 0.000000e+00, ptr %i.ci, align 4, !tbaa !17
  store float %i.cf, ptr %i.cb, align 16, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store float 0.000000e+00, ptr %i.cj, align 4, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.bs, ptr %i.ck, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !17
  store float %i.bv, ptr %i.cc, align 16, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %i.cd, ptr %i.cm, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <2 x float> zeroinitializer, ptr %i.cn, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !27 ; 4 uses
  %.not = icmp eq ptr %i.cp, null
  %.pre = load i32, ptr %i.bb, align 8, !tbaa !25 ; 4 uses
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre100 = sext i32 %.pre to i64
  %.pre101 = shl nsw i32 %.pre, 1
  %.pre103 = sext i32 %.pre101 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store float -1.000000e+00, ptr %i.cp, align 4, !tbaa !24
  %i.cq = sext i32 %.pre to i64                   ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store float -1.000000e+00, ptr %i.cs, align 4, !tbaa !24
  %i.ct = shl nsw i32 %.pre, 1
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cp, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  store float -1.000000e+00, ptr %i.cw, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi104 = phi i64 [ %.pre103, %._crit_edge ], [ %i.cu, %bb.b ]
  %.pre-phi = phi i64 [ %.pre100, %._crit_edge ], [ %i.cq, %bb.b ]
  %i.cx = shufflevector <3 x float> %i.av, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.cy = fmul float %i.aw, %i.aw
  %i.cz = extractelement <3 x float> %i.av, i64 0 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cy)
  %i.db = extractelement <3 x float> %i.av, i64 2 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.da)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.dc)
  %i.de = fdiv float 2.000000e+00, %i.dd
  %i.df = shufflevector <3 x float> %i.av, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 1>
  %i.dg = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fmul <4 x float> %i.df, %i.dh           ; 4 uses
  %i.dj = fmul <4 x float> %i.cx, %i.di           ; 3 uses
  %i.dk = shufflevector <3 x float> %i.av, <3 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.dl = insertelement <3 x float> %i.dk, float %i.ay, i64 1
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dn = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 1>
  %i.do = fmul <4 x float> %i.dm, %i.dn           ; 4 uses
  %i.dp = fadd <4 x float> %i.dj, %i.do           ; 4 uses
  %i.dq = extractelement <4 x float> %i.dp, i64 0
  %i.dr = fsub float 1.000000e+00, %i.dq
  %shift = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %i.cx, %shift
  %i.ds = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dt = extractelement <4 x float> %i.di, i64 3
  %i.du = fmul float %i.ay, %i.dt                 ; 2 uses
  %i.dv = fsub float %i.ds, %i.du
  %shift106 = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop107 = fadd <4 x float> %i.do, %shift106
  %i.dw = extractelement <4 x float> %foldExtExtBinop107, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dy = extractelement <4 x float> %i.dp, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !28 ; 6 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %.pre-phi ; 4 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %.pre-phi104 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ej = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.ek = insertelement <2 x float> %i.ej, float %i.ds, i64 0 ; 2 uses
  %i.el = shufflevector <4 x float> %i.do, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.em = insertelement <2 x float> %i.el, float %i.du, i64 0 ; 2 uses
  %i.en = fadd <2 x float> %i.ek, %i.em
  %i.eo = fsub <2 x float> %i.ek, %i.em
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  %i.eq = insertelement <2 x float> %i.ej, float 1.000000e+00, i64 1
  %i.er = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <2 x i32> <i32 3, i32 6>
  %i.es = fsub <2 x float> %i.eq, %i.er
  %i.et = fsub float 1.000000e+00, %i.dw
  %3 = load <3 x float>, ptr %i.dx, align 16, !tbaa !17 ; 5 uses
  %4 = load float, ptr %i.dx, align 16, !tbaa !17
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = fmul <2 x float> %i.es, %5
  %i.ev = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ew = insertelement <2 x float> %i.ev, float %i.et, i64 0
  %6 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %6, <2 x float> %i.eu)
  %8 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %8, <2 x float> %7) ; 3 uses
  %9 = extractelement <3 x float> %3, i64 1
  %10 = fmul float %i.dy, %9
  %11 = tail call float @llvm.fmuladd.f32(float %i.dv, float %4, float %10)
  %12 = extractelement <3 x float> %3, i64 2
  %13 = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float %12, float %11) ; 3 uses
  %14 = fneg float %13
  store float 0.000000e+00, ptr %i.ea, align 16, !tbaa !17
  store float %14, ptr %i.ed, align 4, !tbaa !17
  %i.ey = extractelement <2 x float> %i.ex, i64 1 ; 2 uses
  store float %i.ey, ptr %i.ee, align 8, !tbaa !17
  store float 0.000000e+00, ptr %i.ef, align 4, !tbaa !17
  store float %13, ptr %i.eb, align 16, !tbaa !17
  store float 0.000000e+00, ptr %i.eg, align 4, !tbaa !17
  %i.ez = fneg <2 x float> %i.ex                  ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  store float %i.fa, ptr %i.eh, align 8, !tbaa !17
  store float 0.000000e+00, ptr %i.ei, align 4, !tbaa !17
  %i.fb = extractelement <2 x float> %i.ez, i64 1
  store float %i.fb, ptr %i.ec, align 16, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.fd = extractelement <2 x float> %i.ex, i64 0 ; 2 uses
  store float %i.fd, ptr %i.fc, align 4, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store <2 x float> zeroinitializer, ptr %i.fe, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !29
  %i.fh = load float, ptr %1, align 8, !tbaa !30
  %i.fi = fmul float %i.fg, %i.fh                 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !31 ; 3 uses
  %i.fl = load i32, ptr %i.bb, align 8, !tbaa !25
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = fadd float %i.fd, %.sroa.20.48.copyload
  %i.fo = fsub float %i.fn, %i.bs
  %i.fp = fsub float %i.fo, %.sroa.2096.48.copyload
  %i.fq = fmul float %i.fi, %i.fp
  store float %i.fq, ptr %i.fk, align 4, !tbaa !24
  %i.fr = fadd float %i.ey, %.sroa.22.48.copyload
  %i.fs = fsub float %i.fr, %i.bv
  %i.ft = fsub float %i.fs, %.sroa.2297.48.copyload
  %i.fu = fmul float %i.fi, %i.ft
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fm
  store float %i.fu, ptr %i.fv, align 4, !tbaa !24
  %i.fw = fadd float %13, %.sroa.23.48.copyload
  %i.fx = fsub float %i.fw, %i.by
  %i.fy = fsub float %i.fx, %.sroa.2398.48.copyload
  %i.fz = fmul float %i.fi, %i.fy
  %.idx = shl nsw i64 %i.fm, 3
  %i.ga = getelementptr inbounds i8, ptr %i.fk, i64 %.idx
  store float %i.fz, ptr %i.ga, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN22b3GpuGenericConstraint8getInfo2EP20b3GpuConstraintInfo2PK15b3RigidBodyData(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !9
  %cond = icmp eq i32 %i.a, 3
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z19getInfo2Point2PointP22b3GpuGenericConstraintP20b3GpuConstraintInfo2PK15b3RigidBodyData(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTS22b3GpuGenericConstraint", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 12, !12, i64 16, !12, i64 32, !13, i64 48, !6, i64 64, !6, i64 68, !7, i64 72}
!11 = !{!"float", !7, i64 0}
!12 = !{!"_ZTS9b3Vector3", !7, i64 0}
!13 = !{!"_ZTS12b3Quaternion", !14, i64 0}
!14 = !{!"_ZTS10b3QuadWord", !7, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!10, !6, i64 4}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !6, i64 8}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTS20b3GpuConstraintInfo2", !11, i64 0, !11, i64 4, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !6, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !23, i64 80, !6, i64 88, !11, i64 92}
!21 = !{!"p1 float", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"p1 int", !22, i64 0}
!24 = !{!11, !11, i64 0}
!25 = !{!20, !6, i64 40}
!26 = !{!20, !21, i64 16}
!27 = !{!20, !21, i64 24}
!28 = !{!20, !21, i64 32}
!29 = !{!20, !11, i64 4}
!30 = !{!20, !11, i64 0}
!31 = !{!20, !21, i64 48}
end_hunk_0
