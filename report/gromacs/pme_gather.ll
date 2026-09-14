Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_gather?download=true
inline.NumInlined: 148
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.do_fspline = type <{ ptr, ptr, ptr, ptr, i32, i32, i32, [4 x i8], ptr, i32, i32, i32, [4 x i8] }>

$_ZNK10do_fsplineclILi5EEENSt9enable_ifIXooeqT_Li4EeqT_Li5EEN3gmx11BasicVectorIfEEE4typeESt17integral_constantIiXT_EE = comdat any

@.str = private unnamed_addr constant [16 x i8] c"pme.nnodes == 1\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"MPI parallelization is not supported here\00", align 1
@"__PRETTY_FUNCTION__._ZZ22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomCommENK3$_0clEv" = private unnamed_addr constant [125 x i8] c"auto gather_energy_bsplines(const gmx_pme_t &, gmx::ArrayRef<const real>, const PmeAtomComm &)::(lambda)::operator()() const\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/ewald/pme_gather.cpp\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"atc.nthread == 1\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"OpenMP parallelization is not supported here\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z17gather_f_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEEbP11PmeAtomCommRK12splinedata_tf(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr %1, ptr nofree readnone captures(none) %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(228) %5, float noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.do_fspline, align 8         ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.d = load float, ptr %i.c, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.f = load float, ptr %i.e, align 4, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = load float, ptr %i.g, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.j = load float, ptr %i.i, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.l = load float, ptr %i.k, align 4, !tbaa !101
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = load float, ptr %i.m, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 2 uses
  %i.q = load i32, ptr %5, align 8, !tbaa !141    ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !142
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !144
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.ar = icmp sgt i32 %i.b, 0
  %wide.trip.count90.i = zext i32 %i.b to i64     ; 4 uses
  %i.as = sitofp i32 %i.x to float
  %i.at = sitofp i32 %i.v to float
  %i.au = sitofp i32 %i.t to float
  %i.av = sext i32 %i.b to i64
  %xtraiter = and i64 %wide.trip.count90.i, 3     ; 3 uses
  %i.aw = icmp ult i32 %i.b, 4
  %unroll_iter = and i64 %wide.trip.count90.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.ax = phi i32 [ %i.q, %.lr.ph ], [ %i.lb, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !145
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !107
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = load i64, ptr %i.z, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = load float, ptr %i.be, align 4, !tbaa !101
  %i.bg = fmul float %6, %i.bf                    ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.bb ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  store ptr %0, ptr %7, align 8, !tbaa !147, !noalias !148
  store ptr %1, ptr %i.aa, align 8, !tbaa !111, !noalias !148
  store ptr %4, ptr %i.ab, align 8, !tbaa !149, !noalias !148
  store ptr %5, ptr %i.ac, align 8, !tbaa !150, !noalias !148
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bk, ptr %i.ad, align 8, !tbaa !112, !noalias !148
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !151, !alias.scope !146, !noalias !152
  %10 = load i32, ptr %9, align 4, !tbaa !153, !noalias !148 ; 4 uses
  %11 = load i32, ptr %i.af, align 8, !tbaa !154, !noalias !148 ; 3 uses
  store i32 %11, ptr %i.ae, align 4, !tbaa !115, !noalias !148
  store i32 %10, ptr %8, align 8, !tbaa !116, !noalias !148
  %i.bm = load i32, ptr %i.az, align 4, !tbaa !107
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bn ; 4 uses
  store ptr %i.bo, ptr %i.ag, align 8, !tbaa !155, !noalias !148
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bp, ptr %i.ai, align 8, !tbaa !117, !noalias !148
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !107 ; 3 uses
  store i32 %i.br, ptr %i.aj, align 4, !tbaa !118, !noalias !148
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bt, ptr %i.ak, align 8, !tbaa !119, !noalias !148
  switch i32 %i.b, label %bb.g [
    i32 4, label %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit
    i32 5, label %bb.f
  ]

_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit: ; preds = %bb.e
  %i.bu = shl nuw nsw i64 %indvars.iv, 2          ; 6 uses
  %i.bv = load ptr, ptr %i.al, align 8, !tbaa !120
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu ; 4 uses
  %i.bx = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bu
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bu ; 4 uses
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bu
  %i.cf = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bu
  %.val66.i = load <4 x float>, ptr %i.ca, align 16, !tbaa !121
  %i.ch = shufflevector <4 x float> %.val66.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.val.i = load <4 x float>, ptr %i.cg, align 16, !tbaa !121
  %i.ci = shufflevector <4 x float> %.val.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cj = sext i32 %i.bt to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.cj ; 4 uses
  %12 = insertelement <8 x i32> poison, i32 %10, i64 0
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ck = mul <8 x i32> %13, <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cl = add <8 x i32> %i.ck, <i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2> ; 4 uses
  %i.cm = call noundef <16 x float> @llvm.masked.expandload.v16f32.p0(ptr readonly %i.by, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x float> zeroinitializer)
  %i.cn = shufflevector <16 x float> %i.cm, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12> ; 8 uses
  %i.co = call noundef <16 x float> @llvm.masked.expandload.v16f32.p0(ptr readonly %i.ce, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x float> zeroinitializer)
  %i.cp = shufflevector <16 x float> %i.co, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12> ; 4 uses
  %i.cq = load float, ptr %i.bw, align 4, !tbaa !101
  %i.cr = insertelement <16 x float> poison, float %i.cq, i64 0
  %i.cs = shufflevector <16 x float> %i.cr, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ct = load float, ptr %i.cc, align 4, !tbaa !101
  %i.cu = insertelement <16 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <16 x float> %i.cu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cw = fmul <16 x float> %i.cn, %i.cv
  %i.cx = fmul <16 x float> %i.cp, %i.cs
  %i.cy = fmul <16 x float> %i.cn, %i.cs
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !101
  %i.db = insertelement <16 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <16 x float> %i.db, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !101
  %i.df = insertelement <16 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dh = fmul <16 x float> %i.cn, %i.dg
  %i.di = fmul <16 x float> %i.cp, %i.dc
  %i.dj = fmul <16 x float> %i.cn, %i.dc
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !101
  %i.dm = insertelement <16 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <16 x float> %i.dm, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !101
  %i.dq = insertelement <16 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <16 x float> %i.dq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ds = fmul <16 x float> %i.cn, %i.dr
  %i.dt = fmul <16 x float> %i.cp, %i.dn
  %i.du = fmul <16 x float> %i.cn, %i.dn
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !101
  %i.dx = insertelement <16 x float> poison, float %i.dw, i64 0
  %i.dy = shufflevector <16 x float> %i.dx, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !101
  %i.eb = insertelement <16 x float> poison, float %i.ea, i64 0
  %i.ec = shufflevector <16 x float> %i.eb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ed = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ef = add <4 x i32> %i.ee, <i32 0, i32 1, i32 2, i32 3>
  %14 = insertelement <4 x i32> poison, i32 %11, i64 0
  %i.eg = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = mul <4 x i32> %i.ef, %i.eg
  %i.ei = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %i.ej = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = add <4 x i32> %i.eh, %i.ej
  %15 = insertelement <4 x i32> poison, i32 %10, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.el = mul <4 x i32> %i.ek, %16                ; 4 uses
  %i.em = extractelement <4 x i32> %i.el, i64 0
  %i.en = sext i32 %i.em to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.en
  %i.eo = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i, <8 x i32> %i.cl, <8 x i1> splat (i1 true), i32 4)
  %i.ep = bitcast <8 x double> %i.eo to <16 x float> ; 2 uses
  %i.eq = fmul <16 x float> %i.ch, %i.ep          ; 2 uses
  %i.er = fmul <16 x float> %i.ci, %i.ep
  %i.es = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cw, <16 x float> %i.eq, <16 x float> zeroinitializer)
  %i.et = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cx, <16 x float> %i.eq, <16 x float> zeroinitializer)
  %i.eu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cy, <16 x float> %i.er, <16 x float> zeroinitializer)
  %i.ev = extractelement <4 x i32> %i.el, i64 1
  %i.ew = sext i32 %i.ev to i64
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ew
  %i.ex = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i.1, <8 x i32> %i.cl, <8 x i1> splat (i1 true), i32 4)
  %i.ey = bitcast <8 x double> %i.ex to <16 x float> ; 2 uses
  %i.ez = fmul <16 x float> %i.ch, %i.ey          ; 2 uses
  %i.fa = fmul <16 x float> %i.ci, %i.ey
  %i.fb = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dh, <16 x float> %i.ez, <16 x float> %i.es)
  %i.fc = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.di, <16 x float> %i.ez, <16 x float> %i.et)
  %i.fd = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> %i.fa, <16 x float> %i.eu)
  %i.fe = extractelement <4 x i32> %i.el, i64 2
  %i.ff = sext i32 %i.fe to i64
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ff
  %i.fg = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i.2, <8 x i32> %i.cl, <8 x i1> splat (i1 true), i32 4)
  %i.fh = bitcast <8 x double> %i.fg to <16 x float> ; 2 uses
  %i.fi = fmul <16 x float> %i.ch, %i.fh          ; 2 uses
  %i.fj = fmul <16 x float> %i.ci, %i.fh
  %i.fk = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ds, <16 x float> %i.fi, <16 x float> %i.fb)
  %i.fl = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dt, <16 x float> %i.fi, <16 x float> %i.fc)
  %i.fm = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.du, <16 x float> %i.fj, <16 x float> %i.fd)
  %i.fn = extractelement <4 x i32> %i.el, i64 3
  %i.fo = sext i32 %i.fn to i64
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fo
  %i.fp = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i.3, <8 x i32> %i.cl, <8 x i1> splat (i1 true), i32 4)
  %i.fq = bitcast <8 x double> %i.fp to <16 x float> ; 2 uses
  %i.fr = fmul <16 x float> %i.ch, %i.fq          ; 2 uses
  %i.fs = fmul <16 x float> %i.ci, %i.fq
  %i.ft = fmul <16 x float> %i.cn, %i.ec
  %i.fu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ft, <16 x float> %i.fr, <16 x float> %i.fk) ; 2 uses
  %i.fv = fmul <16 x float> %i.cp, %i.dy
  %i.fw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fv, <16 x float> %i.fr, <16 x float> %i.fl) ; 2 uses
  %i.fx = fmul <16 x float> %i.cn, %i.dy
  %i.fy = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fx, <16 x float> %i.fs, <16 x float> %i.fm) ; 2 uses
  %i.fz = shufflevector <16 x float> %i.fu, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ga = fadd <16 x float> %i.fu, %i.fz          ; 8 uses
  %i.gb = shufflevector <16 x float> %i.fw, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = fadd <16 x float> %i.fw, %i.gb          ; 8 uses
  %i.gd = shufflevector <16 x float> %i.fy, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ge = fadd <16 x float> %i.fy, %i.gd          ; 2 uses
  %i.gf = shufflevector <16 x float> %i.ge, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.gg = fadd <16 x float> %i.ge, %i.gf          ; 2 uses
  %i.gh = shufflevector <16 x float> %i.gg, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.gi = fadd <16 x float> %i.gg, %i.gh          ; 2 uses
  %i.gj = shufflevector <16 x float> %i.gi, <16 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = fadd <16 x float> %i.gi, %i.gj
  %.0.vec.extract.i68.i = extractelement <16 x float> %i.gk, i64 0
  %i.gl = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 0, i32 16>
  %i.gm = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 4, i32 20>
  %i.gn = fadd <2 x float> %i.gl, %i.gm
  %i.go = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 2, i32 18>
  %i.gp = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 6, i32 22>
  %i.gq = fadd <2 x float> %i.go, %i.gp
  %i.gr = fadd <2 x float> %i.gn, %i.gq
  %i.gs = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 1, i32 17>
  %i.gt = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 5, i32 21>
  %i.gu = fadd <2 x float> %i.gs, %i.gt
  %i.gv = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 3, i32 19>
  %i.gw = shufflevector <16 x float> %i.ga, <16 x float> %i.gc, <2 x i32> <i32 7, i32 23>
  %i.gx = fadd <2 x float> %i.gv, %i.gw
  %i.gy = fadd <2 x float> %i.gu, %i.gx
  %.sroa.074.4.vec.insert.i = fadd <2 x float> %i.gr, %i.gy
  br label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

bb.f:                                             ; preds = %bb.e
  %i.gz = call { <2 x float>, float } @_ZNK10do_fsplineclILi5EEENSt9enable_ifIXooeqT_Li4EeqT_Li5EEN3gmx11BasicVectorIfEEE4typeESt17integral_constantIiXT_EE(ptr noundef nonnull align 8 dereferenceable(68) %7) ; 2 uses
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.gz, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.gz, 1
  br label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

bb.g:                                             ; preds = %bb.e
  %i.ha = mul nsw i64 %indvars.iv, %i.av          ; 6 uses
  %i.hb = load ptr, ptr %i.al, align 8, !tbaa !120
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load ptr, ptr %i.am, align 8, !tbaa !120
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.ha
  %i.hf = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.ha ; 5 uses
  %i.hh = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.ha
  %i.hj = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ha
  %i.hl = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ha ; 5 uses
  br i1 %i.ar, label %.lr.ph66.us.i, label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

.lr.ph66.us.i:                                    ; preds = %bb.g, %._crit_edge67.split.us.us.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %._crit_edge67.split.us.us.i ], [ 0, %bb.g ] ; 4 uses
  %.sroa.0.074.us.i = phi <2 x float> [ %i.kf, %._crit_edge67.split.us.us.i ], [ zeroinitializer, %bb.g ]
  %.sroa.7.073.us.i = phi float [ %i.kh, %._crit_edge67.split.us.us.i ], [ 0.000000e+00, %bb.g ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv87.i
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !101 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv87.i
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !101
  %i.hr = trunc i64 %indvars.iv87.i to i32
  %i.hs = add i32 %i.bp, %i.hr
  %i.ht = mul i32 %i.hs, %11
  %invariant.op70.us.i = add i32 %i.ht, %i.br
  %i.hu = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.ho, i64 1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph66.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %._crit_edge.us.us.i ], [ 0, %.lr.ph66.us.i ] ; 4 uses
  %.sroa.0.163.us.us.i = phi <2 x float> [ %i.kf, %._crit_edge.us.us.i ], [ %.sroa.0.074.us.i, %.lr.ph66.us.i ]
  %.sroa.7.162.us.us.i = phi float [ %i.kh, %._crit_edge.us.us.i ], [ %.sroa.7.073.us.i, %.lr.ph66.us.i ]
  %i.hw = trunc nuw nsw i64 %indvars.iv82.i to i32
  %.reass71.us.us.i = add i32 %invariant.op70.us.i, %i.hw
  %i.hx = mul i32 %.reass71.us.us.i, %10
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv82.i
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !101 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv82.i
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !101
  %invariant.op.us.us.i = add i32 %i.hx, %i.bt    ; 5 uses
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 7 uses
  %.04659.us.us.i = phi float [ %i.jp, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %.04758.us.us.i = phi float [ %i.jm, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.ic = trunc nuw nsw i64 %indvars.iv.i70 to i32
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.ic
  %i.id = sext i32 %.reass.us.us.i to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %1, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !101 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i70
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !101
  %i.ii = call float @llvm.fmuladd.f32(float %i.ih, float %i.if, float %.04758.us.us.i)
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i70
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !101
  %i.il = call float @llvm.fmuladd.f32(float %i.ik, float %i.if, float %.04659.us.us.i)
  %indvars.iv.next.i71 = or disjoint i64 %indvars.iv.i70, 1 ; 3 uses
  %i.im = trunc nuw nsw i64 %indvars.iv.next.i71 to i32
  %.reass.us.us.i.1 = add i32 %invariant.op.us.us.i, %i.im
  %i.in = sext i32 %.reass.us.us.i.1 to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %1, i64 %i.in
  %i.ip = load float, ptr %i.io, align 4, !tbaa !101 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next.i71
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !101
  %i.is = call float @llvm.fmuladd.f32(float %i.ir, float %i.ip, float %i.ii)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next.i71
  %i.iu = load float, ptr %i.it, align 4, !tbaa !101
  %i.iv = call float @llvm.fmuladd.f32(float %i.iu, float %i.ip, float %i.il)
  %indvars.iv.next.i71.1 = or disjoint i64 %indvars.iv.i70, 2 ; 3 uses
  %i.iw = trunc nuw nsw i64 %indvars.iv.next.i71.1 to i32
  %.reass.us.us.i.2 = add i32 %invariant.op.us.us.i, %i.iw
  %i.ix = sext i32 %.reass.us.us.i.2 to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !101 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next.i71.1
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !101
  %i.jc = call float @llvm.fmuladd.f32(float %i.jb, float %i.iz, float %i.is)
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next.i71.1
  %i.je = load float, ptr %i.jd, align 4, !tbaa !101
  %i.jf = call float @llvm.fmuladd.f32(float %i.je, float %i.iz, float %i.iv)
  %indvars.iv.next.i71.2 = or disjoint i64 %indvars.iv.i70, 3 ; 3 uses
  %i.jg = trunc nuw nsw i64 %indvars.iv.next.i71.2 to i32
  %.reass.us.us.i.3 = add i32 %invariant.op.us.us.i, %i.jg
  %i.jh = sext i32 %.reass.us.us.i.3 to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !101 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next.i71.2
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !101
  %i.jm = call float @llvm.fmuladd.f32(float %i.jl, float %i.jj, float %i.jc) ; 3 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next.i71.2
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !101
  %i.jp = call float @llvm.fmuladd.f32(float %i.jo, float %i.jj, float %i.jf) ; 3 uses
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i70, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !128

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv.i70.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next.i71.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.04659.us.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.jp, %._crit_edge.us.us.i.unr-lcssa ]
  %.04758.us.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.jm, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i70.epil = phi i64 [ %indvars.iv.next.i71.epil, %bb.h ], [ %indvars.iv.i70.epil.init, %.epil.preheader ] ; 4 uses
  %.04659.us.us.i.epil = phi float [ %i.jz, %bb.h ], [ %.04659.us.us.i.epil.init, %.epil.preheader ]
  %.04758.us.us.i.epil = phi float [ %i.jw, %bb.h ], [ %.04758.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.h ], [ 0, %.epil.preheader ]
  %i.jq = trunc nuw nsw i64 %indvars.iv.i70.epil to i32
  %.reass.us.us.i.epil = add i32 %invariant.op.us.us.i, %i.jq
  %i.jr = sext i32 %.reass.us.us.i.epil to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !101 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i70.epil
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !101
  %i.jw = call float @llvm.fmuladd.f32(float %i.jv, float %i.jt, float %.04758.us.us.i.epil) ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i70.epil
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !101
  %i.jz = call float @llvm.fmuladd.f32(float %i.jy, float %i.jt, float %.04659.us.us.i.epil) ; 2 uses
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i70.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.h, !llvm.loop !129

._crit_edge.us.us.i:                              ; preds = %bb.h, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa98 = phi float [ %i.jm, %._crit_edge.us.us.i.unr-lcssa ], [ %i.jw, %bb.h ]
  %.lcssa = phi float [ %i.jp, %._crit_edge.us.us.i.unr-lcssa ], [ %i.jz, %bb.h ]
  %i.ka = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %i.ib, i64 1
  %i.kc = fmul <2 x float> %i.hv, %i.kb
  %i.kd = insertelement <2 x float> poison, float %.lcssa98, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.ke, <2 x float> %.sroa.0.163.us.us.i) ; 3 uses
  %i.kg = fmul float %i.ho, %i.hz
  %i.kh = call float @llvm.fmuladd.f32(float %i.kg, float %.lcssa, float %.sroa.7.162.us.us.i) ; 3 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count90.i
  br i1 %exitcond86.not.i, label %._crit_edge67.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !130

._crit_edge67.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count90.i
  br i1 %exitcond91.not.i, label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit, label %.lr.ph66.us.i, !llvm.loop !131

_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit: ; preds = %._crit_edge67.split.us.us.i, %bb.g, %bb.f, %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit
  %.sroa.10.0 = phi float [ %.fca.1.extract3, %bb.f ], [ %.0.vec.extract.i68.i, %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit ], [ 0.000000e+00, %bb.g ], [ %i.kh, %._crit_edge67.split.us.us.i ]
  %.sroa.0.0 = phi <2 x float> [ %.fca.0.extract2, %bb.f ], [ %.sroa.074.4.vec.insert.i, %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit ], [ zeroinitializer, %bb.g ], [ %i.kf, %._crit_edge67.split.us.us.i ] ; 2 uses
  %i.ki = fneg float %i.bg                        ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.kj = fmul float %.sroa.0.0.vec.extract, %i.as ; 3 uses
  %i.kk = fmul float %i.d, %i.kj
  %i.kl = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.bb ; 4 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !101
  %i.kn = call float @llvm.fmuladd.f32(float %i.ki, float %i.kk, float %i.km)
  store float %i.kn, ptr %i.kl, align 4, !tbaa !101
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.ko = fmul float %.sroa.0.4.vec.extract, %i.at ; 2 uses
  %i.kp = fmul float %i.h, %i.ko
  %i.kq = call float @llvm.fmuladd.f32(float %i.kj, float %i.f, float %i.kp)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 4 ; 2 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !101
  %i.kt = call float @llvm.fmuladd.f32(float %i.ki, float %i.kq, float %i.ks)
  store float %i.kt, ptr %i.kr, align 4, !tbaa !101
  %i.ku = fmul float %i.l, %i.ko
  %i.kv = call float @llvm.fmuladd.f32(float %i.kj, float %i.j, float %i.ku)
  %i.kw = fmul float %.sroa.10.0, %i.au
  %i.kx = call float @llvm.fmuladd.f32(float %i.kw, float %i.n, float %i.kv)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !101
  %i.la = call float @llvm.fmuladd.f32(float %i.ki, float %i.kx, float %i.kz)
  store float %i.la, ptr %i.ky, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %.pre = load i32, ptr %5, align 8, !tbaa !141
  br label %bb.i

bb.i:                                             ; preds = %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit, %bb.d
  %i.lb = phi i32 [ %.pre, %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit ], [ %i.ax, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp slt i64 %indvars.iv.next, %i.lc
  br i1 %i.ld, label %bb.b, label %._crit_edge, !llvm.loop !132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZNK10do_fsplineclILi5EEENSt9enable_ifIXooeqT_Li4EeqT_Li5EEN3gmx11BasicVectorIfEEE4typeESt17integral_constantIiXT_EE(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112
  %i.c = mul nsw i32 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157, !nonnull !158, !align !159 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.h = sext i32 %i.c to i64                     ; 6 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.h ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !158, !align !159
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !119 ; 2 uses
  %i.ad = and i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.af = sub nsw i64 0, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %.val6.i = load <4 x float>, ptr %i.ag, align 1, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val.i = load <4 x float>, ptr %i.ah, align 1, !tbaa !121
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %.val6.i101 = load <4 x float>, ptr %i.ai, align 1, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val.i102 = load <4 x float>, ptr %i.aj, align 1, !tbaa !121
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  %.sroa.066.0.copyload121 = load <16 x i1>, ptr %i.ak, align 2, !tbaa !163 ; 2 uses
  %i.al = shufflevector <4 x float> %.val6.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.am = select <16 x i1> %.sroa.066.0.copyload121, <16 x float> %i.al, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.an = shufflevector <16 x float> %i.am, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ao = shufflevector <4 x float> %.val6.i101, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ap = select <16 x i1> %.sroa.066.0.copyload121, <16 x float> %i.ao, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.aq = shufflevector <16 x float> %i.ap, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.ae
  %.sroa.060.0.copyload122 = load <16 x i1>, ptr %i.as, align 2, !tbaa !163 ; 2 uses
  %i.at = shufflevector <4 x float> %.val.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = select <16 x i1> %.sroa.060.0.copyload122, <16 x float> %i.at, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.av = shufflevector <16 x float> %i.au, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.aw = shufflevector <4 x float> %.val.i102, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ax = select <16 x i1> %.sroa.060.0.copyload122, <16 x float> %i.aw, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.ay = shufflevector <16 x float> %i.ax, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !117
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !115
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !116 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !111
  %i.bj = sext i32 %i.ac to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bi, i64 %i.bj
  %invariant.gep123 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !101 ; 2 uses
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre152 = load float, ptr %.phi.trans.insert151, align 4, !tbaa !101
  %.phi.trans.insert153 = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.pre154 = load float, ptr %.phi.trans.insert153, align 4, !tbaa !101 ; 2 uses
  %.phi.trans.insert155 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.pre156 = load float, ptr %.phi.trans.insert155, align 4, !tbaa !101
  %i.bk = load float, ptr %i.l, align 4, !tbaa !101 ; 2 uses
  %i.bl = load float, ptr %i.u, align 4, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !101 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.br = load float, ptr %i.bq, align 4, !tbaa !101 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !101
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.bu = shufflevector <4 x float> %i.fq, <4 x float> %i.ft, <2 x i32> <i32 0, i32 4>
  %i.bv = shufflevector <4 x float> %i.fq, <4 x float> %i.ft, <2 x i32> <i32 2, i32 6>
  %i.bw = fadd <2 x float> %i.bu, %i.bv
  %i.bx = shufflevector <4 x float> %i.fq, <4 x float> %i.ft, <2 x i32> <i32 1, i32 5>
  %i.by = shufflevector <4 x float> %i.fq, <4 x float> %i.ft, <2 x i32> <i32 3, i32 7>
  %i.bz = fadd <2 x float> %i.bx, %i.by
  %i.ca = fadd <2 x float> %i.bw, %i.bz
  %i.cb = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.cc = fadd <4 x float> %i.fw, %i.cb           ; 2 uses
  %shift = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.cc, %shift
  %i.cd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.ca, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cd, 1
  ret { <2 x float>, float } %.fca.1.insert

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.sroa.073.0132 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.fq, %bb.c ]
  %.sroa.071.0131 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ft, %bb.c ]
  %.sroa.069.0130 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.fw, %bb.c ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !101 ; 10 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !101 ; 5 uses
  %i.ci = trunc i64 %indvars.iv to i32
  %i.cj = add i32 %i.ba, %i.ci
  %i.ck = mul i32 %i.cj, %i.bc
  %invariant.op = add i32 %i.ck, %i.bg            ; 5 uses
  %i.cl = mul i32 %invariant.op, %i.be
  %i.cm = sext i32 %i.cl to i64
  %gep124 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.cm ; 2 uses
  %.val100 = load <4 x float>, ptr %gep124, align 16, !tbaa !121 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep124, i64 16
  %.val = load <4 x float>, ptr %i.cn, align 16, !tbaa !121 ; 2 uses
  %i.co = fmul <4 x float> %i.an, %.val100
  %i.cp = fmul <4 x float> %i.aq, %.val100
  %i.cq = fmul <4 x float> %i.av, %.val
  %i.cr = fmul <4 x float> %i.ay, %.val
  %i.cs = fadd <4 x float> %i.co, %i.cq           ; 2 uses
  %i.ct = fadd <4 x float> %i.cp, %i.cr
  %.scalar = fmul float %i.ch, %i.bk
  %i.cu = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cv, <4 x float> %i.cs, <4 x float> %.sroa.073.0132)
  %.scalar137 = fmul float %i.cf, %i.bl
  %i.cx = insertelement <4 x float> poison, float %.scalar137, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.cy, <4 x float> %i.cs, <4 x float> %.sroa.071.0131)
  %.scalar138 = fmul float %i.cf, %i.bk
  %i.da = insertelement <4 x float> poison, float %.scalar138, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.db, <4 x float> %i.ct, <4 x float> %.sroa.069.0130)
  %.reass.1 = add i32 %invariant.op, 1
  %i.dd = mul i32 %.reass.1, %i.be
  %i.de = sext i32 %i.dd to i64
  %gep124.1 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.de ; 2 uses
  %.val100.1 = load <4 x float>, ptr %gep124.1, align 16, !tbaa !121 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep124.1, i64 16
  %.val.1 = load <4 x float>, ptr %i.df, align 16, !tbaa !121 ; 2 uses
  %i.dg = fmul <4 x float> %i.an, %.val100.1
  %i.dh = fmul <4 x float> %i.aq, %.val100.1
  %i.di = fmul <4 x float> %i.av, %.val.1
  %i.dj = fmul <4 x float> %i.ay, %.val.1
  %i.dk = fadd <4 x float> %i.dg, %i.di           ; 2 uses
  %i.dl = fadd <4 x float> %i.dh, %i.dj
  %.scalar139 = fmul float %i.ch, %i.bn
  %i.dm = insertelement <4 x float> poison, float %.scalar139, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dn, <4 x float> %i.dk, <4 x float> %i.cw)
  %.scalar140 = fmul float %i.cf, %i.bp
  %i.dp = insertelement <4 x float> poison, float %.scalar140, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dq, <4 x float> %i.dk, <4 x float> %i.cz)
  %.scalar141 = fmul float %i.cf, %i.bn
  %i.ds = insertelement <4 x float> poison, float %.scalar141, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.dt, <4 x float> %i.dl, <4 x float> %i.dc)
  %.reass.2 = add i32 %invariant.op, 2
  %i.dv = mul i32 %.reass.2, %i.be
  %i.dw = sext i32 %i.dv to i64
  %gep124.2 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.dw ; 2 uses
  %.val100.2 = load <4 x float>, ptr %gep124.2, align 16, !tbaa !121 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %gep124.2, i64 16
  %.val.2 = load <4 x float>, ptr %i.dx, align 16, !tbaa !121 ; 2 uses
  %i.dy = fmul <4 x float> %i.an, %.val100.2
  %i.dz = fmul <4 x float> %i.aq, %.val100.2
  %i.ea = fmul <4 x float> %i.av, %.val.2
  %i.eb = fmul <4 x float> %i.ay, %.val.2
  %i.ec = fadd <4 x float> %i.dy, %i.ea           ; 2 uses
  %i.ed = fadd <4 x float> %i.dz, %i.eb
  %.scalar142 = fmul float %i.ch, %.pre
  %i.ee = insertelement <4 x float> poison, float %.scalar142, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ef, <4 x float> %i.ec, <4 x float> %i.do)
  %.scalar143 = fmul float %i.cf, %.pre152
  %i.eh = insertelement <4 x float> poison, float %.scalar143, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ei, <4 x float> %i.ec, <4 x float> %i.dr)
  %.scalar144 = fmul float %i.cf, %.pre
  %i.ek = insertelement <4 x float> poison, float %.scalar144, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.el, <4 x float> %i.ed, <4 x float> %i.du)
  %.reass.3 = add i32 %invariant.op, 3
  %i.en = mul i32 %.reass.3, %i.be
  %i.eo = sext i32 %i.en to i64
  %gep124.3 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.eo ; 2 uses
  %.val100.3 = load <4 x float>, ptr %gep124.3, align 16, !tbaa !121 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %gep124.3, i64 16
  %.val.3 = load <4 x float>, ptr %i.ep, align 16, !tbaa !121 ; 2 uses
  %i.eq = fmul <4 x float> %i.an, %.val100.3
  %i.er = fmul <4 x float> %i.aq, %.val100.3
  %i.es = fmul <4 x float> %i.av, %.val.3
  %i.et = fmul <4 x float> %i.ay, %.val.3
  %i.eu = fadd <4 x float> %i.eq, %i.es           ; 2 uses
  %i.ev = fadd <4 x float> %i.er, %i.et
  %.scalar145 = fmul float %i.ch, %.pre154
  %i.ew = insertelement <4 x float> poison, float %.scalar145, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> %i.eu, <4 x float> %i.eg)
  %.scalar146 = fmul float %i.cf, %.pre156
  %i.ez = insertelement <4 x float> poison, float %.scalar146, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fa, <4 x float> %i.eu, <4 x float> %i.ej)
  %.scalar147 = fmul float %i.cf, %.pre154
  %i.fc = insertelement <4 x float> poison, float %.scalar147, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fd, <4 x float> %i.ev, <4 x float> %i.em)
  %.reass.4 = add i32 %invariant.op, 4
  %i.ff = mul i32 %.reass.4, %i.be
  %i.fg = sext i32 %i.ff to i64
  %gep124.4 = getelementptr [4 x i8], ptr %invariant.gep123, i64 %i.fg ; 2 uses
  %.val100.4 = load <4 x float>, ptr %gep124.4, align 16, !tbaa !121 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep124.4, i64 16
  %.val.4 = load <4 x float>, ptr %i.fh, align 16, !tbaa !121 ; 2 uses
  %i.fi = fmul <4 x float> %i.an, %.val100.4
  %i.fj = fmul <4 x float> %i.aq, %.val100.4
  %i.fk = fmul <4 x float> %i.av, %.val.4
  %i.fl = fmul <4 x float> %i.ay, %.val.4
  %i.fm = fadd <4 x float> %i.fi, %i.fk           ; 2 uses
  %i.fn = fadd <4 x float> %i.fj, %i.fl
  %.scalar148 = fmul float %i.ch, %i.br
  %i.fo = insertelement <4 x float> poison, float %.scalar148, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fp, <4 x float> %i.fm, <4 x float> %i.ey) ; 5 uses
  %.scalar149 = fmul float %i.cf, %i.bt
  %i.fr = insertelement <4 x float> poison, float %.scalar149, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fs, <4 x float> %i.fm, <4 x float> %i.fb) ; 5 uses
  %.scalar150 = fmul float %i.cf, %i.br
  %i.fu = insertelement <4 x float> poison, float %.scalar150, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.fv, <4 x float> %i.fn, <4 x float> %i.fe) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !156
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.expandload.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double>, ptr, <8 x i32>, <8 x i1>, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: mustprogress uwtable
define noundef float @_Z22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomComm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(992) %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomCommENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 366) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.e = load i32, ptr %i.d, align 8, !tbaa !203
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ22gather_energy_bsplinesRK9gmx_pme_tN3gmx8ArrayRefIKfEERK11PmeAtomCommENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 367) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100
  %.fr82 = freeze i32 %i.h                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !204  ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.o = load i64, ptr %i.n, align 8
  %i.p = inttoptr i64 %i.o to ptr                 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = icmp sgt i32 %.fr82, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.x = load i32, ptr %i.w, align 4
  br i1 %i.v, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.y = icmp ult i32 %i.j, 8
  br i1 %i.y, label %.lr.ph80.split.epil.preheader, label %.lr.ph80.split.preheader.new

.lr.ph80.split.preheader.new:                     ; preds = %.lr.ph80.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext nneg i32 %.fr82 to i64             ; 5 uses
  %wide.trip.count103 = zext nneg i32 %i.j to i64
  %xtraiter112 = and i64 %i.ab, 3                 ; 3 uses
  %i.ac = icmp ult i32 %.fr82, 4
  %unroll_iter117 = and i64 %i.ab, 2147483644
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %bb.g
  %indvars.iv100 = phi i64 [ 0, %.lr.ph80.split.us.preheader ], [ %indvars.iv.next101, %bb.g ] ; 4 uses
  %.06178.us = phi float [ 0.000000e+00, %.lr.ph80.split.us.preheader ], [ %.162.us, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv100
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = fcmp une float %i.ae, 0.000000e+00
  br i1 %i.af, label %.lr.ph.us, label %bb.g

.lr.ph.us:                                        ; preds = %.lr.ph80.split.us
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %indvars.iv100 ; 3 uses
  %i.ah = mul nuw nsw i64 %indvars.iv100, %i.ab   ; 3 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !107
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ah
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ah
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ah ; 5 uses
  br label %.lr.ph72.us.us

.lr.ph72.us.us:                                   ; preds = %._crit_edge73.split.us.us.us, %.lr.ph.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge73.split.us.us.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %.05975.us.us = phi float [ %.lcssa, %._crit_edge73.split.us.us.us ], [ 0.000000e+00, %.lr.ph.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv95
  %i.au = load float, ptr %i.at, align 4, !tbaa !101
  %i.av = trunc i64 %indvars.iv95 to i32
  %i.aw = add i32 %i.ai, %i.av
  %i.ax = mul i32 %i.aw, %i.aa
  %i.ay = add i32 %i.ax, %i.ak
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.lr.ph72.us.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge.us.us.us ], [ 0, %.lr.ph72.us.us ] ; 3 uses
  %.169.us.us.us = phi float [ %.lcssa, %._crit_edge.us.us.us ], [ %.05975.us.us, %.lr.ph72.us.us ] ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = mul i32 %i.ba, %i.x
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv90
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !101
  %i.be = add i32 %i.bb, %i.am                    ; 5 uses
  %i.bf = fmul float %i.au, %i.bd                 ; 5 uses
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 6 uses
  %.267.us.us.us = phi float [ %i.cp, %.lr.ph.us.us.us.new ], [ %.169.us.us.us, %.lr.ph.us.us.us ]
  %niter118 = phi i64 [ %niter118.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bg = trunc nuw nsw i64 %indvars.iv85 to i32
  %i.bh = add i32 %i.be, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !101
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv85
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !101
  %i.bn = fmul float %i.bf, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bk, float %.267.us.us.us)
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 2 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %i.bq = add i32 %i.be, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !101
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next86
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !101
  %i.bw = fmul float %i.bf, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bt, float %i.bo)
  %indvars.iv.next86.1 = or disjoint i64 %indvars.iv85, 2 ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next86.1 to i32
  %i.bz = add i32 %i.be, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !101
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next86.1
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !101
  %i.cf = fmul float %i.bf, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cc, float %i.bx)
  %indvars.iv.next86.2 = or disjoint i64 %indvars.iv85, 3 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next86.2 to i32
  %i.ci = add i32 %i.be, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !101
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next86.2
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !101
  %i.co = fmul float %i.bf, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cl, float %i.cg) ; 3 uses
  %indvars.iv.next86.3 = add nuw nsw i64 %indvars.iv85, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %._crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !164

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod114.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv85.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next86.3, %._crit_edge.us.us.us.unr-lcssa ]
  %.267.us.us.us.epil.init = phi float [ %.169.us.us.us, %.lr.ph.us.us.us ], [ %i.cp, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv85.epil = phi i64 [ %indvars.iv.next86.epil, %bb.f ], [ %indvars.iv85.epil.init, %.epil.preheader ] ; 3 uses
  %.267.us.us.us.epil = phi float [ %i.cy, %bb.f ], [ %.267.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %bb.f ], [ 0, %.epil.preheader ]
  %i.cq = trunc nuw nsw i64 %indvars.iv85.epil to i32
  %i.cr = add i32 %i.be, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !101
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv85.epil
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !101
  %i.cx = fmul float %i.bf, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cu, float %.267.us.us.us.epil) ; 2 uses
  %indvars.iv.next86.epil = add nuw nsw i64 %indvars.iv85.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %._crit_edge.us.us.us, label %bb.f, !llvm.loop !165

._crit_edge.us.us.us:                             ; preds = %bb.f, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cp, %._crit_edge.us.us.us.unr-lcssa ], [ %i.cy, %bb.f ] ; 3 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %i.ab
  br i1 %exitcond94.not, label %._crit_edge73.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !166

._crit_edge73.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %i.ab
  br i1 %exitcond99.not, label %._crit_edge.split.us.us, label %.lr.ph72.us.us, !llvm.loop !167

._crit_edge.split.us.us:                          ; preds = %._crit_edge73.split.us.us.us
  %i.cz = tail call float @llvm.fmuladd.f32(float %.lcssa, float %i.ae, float %.06178.us)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.split.us.us, %.lr.ph80.split.us
  %.162.us = phi float [ %i.cz, %._crit_edge.split.us.us ], [ %.06178.us, %.lr.ph80.split.us ] ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge, label %.lr.ph80.split.us, !llvm.loop !168

._crit_edge.loopexit109.unr-lcssa:                ; preds = %.lr.ph80.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph80.split.epil.preheader

.lr.ph80.split.epil.preheader:                    ; preds = %._crit_edge.loopexit109.unr-lcssa, %.lr.ph80.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph80.split.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit109.unr-lcssa ]
  %.06178.epil.init = phi float [ 0.000000e+00, %.lr.ph80.split.preheader ], [ %spec.select.7, %._crit_edge.loopexit109.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph80.split.epil

.lr.ph80.split.epil:                              ; preds = %.lr.ph80.split.epil, %.lr.ph80.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph80.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph80.split.epil ] ; 2 uses
  %.06178.epil = phi float [ %.06178.epil.init, %.lr.ph80.split.epil.preheader ], [ %spec.select.epil, %.lr.ph80.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph80.split.epil.preheader ], [ %epil.iter.next, %.lr.ph80.split.epil ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.db = load float, ptr %i.da, align 4, !tbaa !101 ; 2 uses
  %i.dc = fcmp une float %i.db, 0.000000e+00
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.db, float 0.000000e+00, float %.06178.epil)
  %spec.select.epil = select i1 %i.dc, float %i.dd, float %.06178.epil ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph80.split.epil, !llvm.loop !169

._crit_edge:                                      ; preds = %._crit_edge.loopexit109.unr-lcssa, %.lr.ph80.split.epil, %bb.g, %bb.e
  %.061.lcssa = phi float [ 0.000000e+00, %bb.e ], [ %.162.us, %bb.g ], [ %spec.select.7, %._crit_edge.loopexit109.unr-lcssa ], [ %spec.select.epil, %.lr.ph80.split.epil ]
  ret float %.061.lcssa

.lr.ph80.split:                                   ; preds = %.lr.ph80.split, %.lr.ph80.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph80.split.preheader.new ], [ %indvars.iv.next.7, %.lr.ph80.split ] ; 9 uses
  %.06178 = phi float [ 0.000000e+00, %.lr.ph80.split.preheader.new ], [ %spec.select.7, %.lr.ph80.split ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph80.split.preheader.new ], [ %niter.next.7, %.lr.ph80.split ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.df = load float, ptr %i.de, align 4, !tbaa !101 ; 2 uses
  %i.dg = fcmp une float %i.df, 0.000000e+00
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.df, float 0.000000e+00, float %.06178)
  %spec.select = select i1 %i.dg, float %i.dh, float %.06178 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !101 ; 2 uses
  %i.dl = fcmp une float %i.dk, 0.000000e+00
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dk, float 0.000000e+00, float %spec.select)
  %spec.select.1 = select i1 %i.dl, float %i.dm, float %spec.select ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !101 ; 2 uses
  %i.dq = fcmp une float %i.dp, 0.000000e+00
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float %spec.select.1)
  %spec.select.2 = select i1 %i.dq, float %i.dr, float %spec.select.1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !101 ; 2 uses
  %i.dv = fcmp une float %i.du, 0.000000e+00
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.du, float 0.000000e+00, float %spec.select.2)
  %spec.select.3 = select i1 %i.dv, float %i.dw, float %spec.select.2 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !101 ; 2 uses
  %i.ea = fcmp une float %i.dz, 0.000000e+00
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dz, float 0.000000e+00, float %spec.select.3)
  %spec.select.4 = select i1 %i.ea, float %i.eb, float %spec.select.3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !101 ; 2 uses
  %i.ef = fcmp une float %i.ee, 0.000000e+00
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %spec.select.4)
  %spec.select.5 = select i1 %i.ef, float %i.eg, float %spec.select.4 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !101 ; 2 uses
  %i.ek = fcmp une float %i.ej, 0.000000e+00
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ej, float 0.000000e+00, float %spec.select.5)
  %spec.select.6 = select i1 %i.ek, float %i.el, float %spec.select.5 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.eo = load float, ptr %i.en, align 4, !tbaa !101 ; 2 uses
  %i.ep = fcmp une float %i.eo, 0.000000e+00
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eo, float 0.000000e+00, float %spec.select.6)
  %spec.select.7 = select i1 %i.ep, float %i.eq, float %spec.select.6 ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit109.unr-lcssa, label %.lr.ph80.split, !llvm.loop !168
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS10tmpi_comm_", !9, i64 0}
!11 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !9, i64 0}
!12 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !11, i64 0}
!13 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !12, i64 0}
!14 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !13, i64 0}
!15 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !14, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !15, i64 0}
!17 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !16, i64 0}
!18 = !{!"_ZTSN3gmx7MpiCommE", !10, i64 0, !6, i64 8, !6, i64 12, !17, i64 16}
!19 = !{!"p1 _ZTSN3gmx7MpiCommE", !9, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"float", !5, i64 0}
!22 = !{!"_ZTS10PmeRunMode", !5, i64 0}
!23 = !{!"p1 _ZTS6PmeGpu", !9, i64 0}
!24 = !{!"p1 _ZTS15EwaldBoxZScaler", !9, i64 0}
!25 = !{!"_ZTSSt10_Head_baseILm0EP15EwaldBoxZScalerLb0EE", !24, i64 0}
!26 = !{!"_ZTSSt11_Tuple_implILm0EJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !25, i64 0}
!27 = !{!"_ZTSSt5tupleIJP15EwaldBoxZScalerSt14default_deleteIS0_EEE", !26, i64 0}
!28 = !{!"_ZTSSt15__uniq_ptr_implI15EwaldBoxZScalerSt14default_deleteIS0_EE", !27, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_dataI15EwaldBoxZScalerSt14default_deleteIS0_ELb1ELb1EE", !28, i64 0}
!30 = !{!"_ZTSSt10unique_ptrI15EwaldBoxZScalerSt14default_deleteIS0_EE", !29, i64 0}
!31 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!32 = !{!"p1 _ZTS15pme_spline_work", !9, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EP15pme_spline_workLb0EE", !32, i64 0}
!34 = !{!"_ZTSSt11_Tuple_implILm0EJP15pme_spline_workSt14default_deleteIS0_EEE", !33, i64 0}
!35 = !{!"_ZTSSt5tupleIJP15pme_spline_workSt14default_deleteIS0_EEE", !34, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_implI15pme_spline_workSt14default_deleteIS0_EE", !35, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_dataI15pme_spline_workSt14default_deleteIS0_ELb1ELb1EE", !36, i64 0}
!38 = !{!"_ZTSSt10unique_ptrI15pme_spline_workSt14default_deleteIS0_EE", !37, i64 0}
!39 = !{!"p1 _ZTS15PmeGridsStorage", !9, i64 0}
!40 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!41 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrI15PmeGridsStorageLN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !41, i64 8}
!43 = !{!"_ZTSSt10shared_ptrI15PmeGridsStorageE", !42, i64 0}
!44 = !{!"p1 _ZTS14PmeAndFftGrids", !9, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseI14PmeAndFftGridsSaIS0_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorI14PmeAndFftGridsSaIS0_EE", !47, i64 0}
!49 = !{!"p1 _ZTSN9gmx_pme_t8GridsRefE", !9, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIN9gmx_pme_t8GridsRefESaIS1_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIN9gmx_pme_t8GridsRefESaIS1_EE", !52, i64 0}
!54 = !{!"any p2 pointer", !9, i64 0}
!55 = !{!"p2 _ZTS9t_complex", !54, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIP9t_complexSaIS1_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIP9t_complexSaIS1_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIP9t_complexSaIS1_EE", !58, i64 0}
!60 = !{!"p1 int", !9, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIiSaIiEE", !63, i64 0}
!65 = !{!"p1 float", !9, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIfSaIfEE", !68, i64 0}
!70 = !{!"p1 _ZTS11PmeAtomComm", !9, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseI11PmeAtomCommSaIS0_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseI11PmeAtomCommSaIS0_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorI11PmeAtomCommSaIS0_EE", !73, i64 0}
!75 = !{!"_ZTSSt5arrayISt6vectorIfSaIfEELm3EE", !5, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorIfN3gmx30DefaultInitializationAllocatorIfSaIfEEEE", !78, i64 0}
!80 = !{!"_ZTSSt5arrayI13pme_overlap_tLm2EE", !5, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EP11PmeAtomCommLb0EE", !70, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJP11PmeAtomCommSt14default_deleteIS0_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJP11PmeAtomCommSt14default_deleteIS0_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implI11PmeAtomCommSt14default_deleteIS0_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataI11PmeAtomCommSt14default_deleteIS0_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrI11PmeAtomCommSt14default_deleteIS0_EE", !85, i64 0}
!87 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !90, i64 0}
!92 = !{!"p1 _ZTS8PmeSolve", !9, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EP8PmeSolveLb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJP8PmeSolveSt14default_deleteIS0_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJP8PmeSolveSt14default_deleteIS0_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implI8PmeSolveSt14default_deleteIS0_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataI8PmeSolveSt14default_deleteIS0_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrI8PmeSolveSt14default_deleteIS0_EE", !97, i64 0}
!99 = !{!"_ZTS9gmx_pme_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !18, i64 32, !19, i64 56, !5, i64 64, !20, i64 80, !6, i64 84, !20, i64 88, !20, i64 89, !20, i64 90, !20, i64 91, !20, i64 92, !20, i64 93, !20, i64 94, !20, i64 95, !6, i64 96, !6, i64 100, !6, i64 104, !20, i64 108, !6, i64 112, !21, i64 116, !21, i64 120, !21, i64 124, !6, i64 128, !21, i64 132, !22, i64 136, !23, i64 144, !30, i64 152, !31, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !38, i64 192, !43, i64 200, !48, i64 216, !48, i64 240, !53, i64 264, !59, i64 288, !64, i64 312, !64, i64 336, !64, i64 360, !69, i64 384, !69, i64 408, !69, i64 432, !74, i64 456, !5, i64 480, !21, i64 516, !75, i64 520, !79, i64 592, !79, i64 616, !80, i64 640, !86, i64 928, !91, i64 936, !69, i64 960, !98, i64 984}
!100 = !{!99, !6, i64 112}
!101 = !{!21, !21, i64 0}
!102 = !{!"_ZTSN3gmx12ArrayRefIterINS_11BasicVectorIfEEEE", !87, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE", !105, i64 0}
!107 = !{!6, !6, i64 0}
!108 = !{!"p1 _ZTS9gmx_pme_t", !9, i64 0}
!109 = !{!"p1 _ZTS12splinedata_t", !9, i64 0}
!110 = !{!"_ZTS10do_fspline", !108, i64 0, !65, i64 8, !70, i64 16, !109, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !60, i64 48, !6, i64 56, !6, i64 60, !6, i64 64}
!111 = !{!110, !65, i64 8}
!112 = !{!110, !6, i64 32}
!113 = !{!"p1 _ZTSN3gmx11BasicVectorIiEE", !9, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!110, !6, i64 36}
!116 = !{!110, !6, i64 40}
!117 = !{!110, !6, i64 56}
!118 = !{!110, !6, i64 60}
!119 = !{!110, !6, i64 64}
!120 = !{!65, !65, i64 0}
!121 = !{!5, !5, i64 0}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = distinct !{!124, !"_ZN10do_fsplineC2ERK9gmx_pme_tPKfRK11PmeAtomCommRK12splinedata_ti"}
!125 = distinct !{!125, !124, !"_ZN10do_fsplineC2ERK9gmx_pme_tPKfRK11PmeAtomCommRK12splinedata_ti: argument 1"}
!126 = distinct !{!126, !124, !"_ZN10do_fsplineC2ERK9gmx_pme_tPKfRK11PmeAtomCommRK12splinedata_ti: argument 2"}
!127 = distinct !{!127, !124, !"_ZN10do_fsplineC2ERK9gmx_pme_tPKfRK11PmeAtomCommRK12splinedata_ti: argument 0"}
!128 = distinct !{!128, !122}
!129 = distinct !{!129, !123}
!130 = distinct !{!130, !122}
!131 = distinct !{!131, !122}
!132 = distinct !{!132, !122}
!133 = !{!102, !87, i64 0}
!134 = !{!"_ZTSSt5arrayIPfLm3EE", !5, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !137, i64 0}
!139 = !{!"_ZTS18SplineCoefficients", !134, i64 0, !69, i64 24, !69, i64 48, !138, i64 72}
!140 = !{!"_ZTS12splinedata_t", !6, i64 0, !106, i64 8, !139, i64 32, !139, i64 128, !6, i64 224}
!141 = !{!140, !6, i64 0}
!142 = !{!99, !6, i64 104}
!143 = !{!99, !6, i64 100}
!144 = !{!99, !6, i64 96}
!145 = !{!103, !60, i64 0}
!146 = !{!125}
!147 = !{!108, !108, i64 0}
!148 = !{!127, !125, !126}
!149 = !{!70, !70, i64 0}
!150 = !{!109, !109, i64 0}
!151 = !{!114, !113, i64 0}
!152 = !{!127, !126}
!153 = !{!99, !6, i64 172}
!154 = !{!99, !6, i64 168}
!155 = !{!110, !60, i64 48}
!156 = distinct !{!156, !122}
!157 = !{!110, !109, i64 24}
!158 = !{}
!159 = !{i64 8}
!160 = !{!110, !108, i64 0}
!161 = !{!32, !32, i64 0}
!162 = !{!"short", !5, i64 0}
!163 = !{!162, !162, i64 0}
!164 = distinct !{!164, !122}
!165 = distinct !{!165, !123}
!166 = distinct !{!166, !122}
!167 = distinct !{!167, !122}
!168 = distinct !{!168, !122}
!169 = distinct !{!169, !123}
!170 = !{!99, !6, i64 16}
!171 = !{!"p1 _ZTS13SlabCommSetup", !9, i64 0}
!172 = !{!"_ZTSNSt12_Vector_baseI13SlabCommSetupSaIS0_EE17_Vector_impl_dataE", !171, i64 0, !171, i64 8, !171, i64 16}
!173 = !{!"_ZTSNSt12_Vector_baseI13SlabCommSetupSaIS0_EE12_Vector_implE", !172, i64 0}
!174 = !{!"_ZTSSt12_Vector_baseI13SlabCommSetupSaIS0_EE", !173, i64 0}
!175 = !{!"_ZTSSt6vectorI13SlabCommSetupSaIS0_EE", !174, i64 0}
!176 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !9, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !176, i64 0, !176, i64 8, !176, i64 16}
!178 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !177, i64 0}
!179 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !178, i64 0}
!180 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !179, i64 0}
!181 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !87, i64 0}
!182 = !{!"_ZTSN3gmx8ArrayRefIKNS_11BasicVectorIfEEEE", !181, i64 0, !181, i64 8}
!183 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !65, i64 0}
!184 = !{!"_ZTSN3gmx8ArrayRefIKfEE", !183, i64 0, !183, i64 8}
!185 = !{!"_ZTSN3gmx8ArrayRefINS_11BasicVectorIfEEEE", !102, i64 0, !102, i64 8}
!186 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!187 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_Vector_implE", !186, i64 0}
!188 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !187, i64 0}
!189 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !188, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_Vector_implE", !114, i64 0}
!191 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !190, i64 0}
!192 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIiEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE", !191, i64 0}
!193 = !{!"p1 _ZTS15AtomToThreadMap", !9, i64 0}
!194 = !{!"_ZTSNSt12_Vector_baseI15AtomToThreadMapSaIS0_EE17_Vector_impl_dataE", !193, i64 0, !193, i64 8, !193, i64 16}
!195 = !{!"_ZTSNSt12_Vector_baseI15AtomToThreadMapSaIS0_EE12_Vector_implE", !194, i64 0}
!196 = !{!"_ZTSSt12_Vector_baseI15AtomToThreadMapSaIS0_EE", !195, i64 0}
!197 = !{!"_ZTSSt6vectorI15AtomToThreadMapSaIS0_EE", !196, i64 0}
!198 = !{!"_ZTSNSt12_Vector_baseI12splinedata_tSaIS0_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!199 = !{!"_ZTSNSt12_Vector_baseI12splinedata_tSaIS0_EE12_Vector_implE", !198, i64 0}
!200 = !{!"_ZTSSt12_Vector_baseI12splinedata_tSaIS0_EE", !199, i64 0}
!201 = !{!"_ZTSSt6vectorI12splinedata_tSaIS0_EE", !200, i64 0}
!202 = !{!"_ZTS11PmeAtomComm", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !175, i64 24, !6, i64 48, !64, i64 56, !106, i64 80, !180, i64 104, !6, i64 128, !182, i64 136, !184, i64 152, !185, i64 168, !189, i64 184, !79, i64 208, !189, i64 232, !20, i64 256, !6, i64 260, !192, i64 264, !189, i64 288, !6, i64 312, !106, i64 320, !197, i64 344, !201, i64 368}
!203 = !{!202, !6, i64 312}
!204 = !{!202, !6, i64 128}
!205 = !{!198, !109, i64 0}
end_hunk_0
