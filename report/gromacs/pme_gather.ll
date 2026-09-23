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
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.at = icmp sgt i32 %i.b, 0
  %wide.trip.count90.i = zext i32 %i.b to i64     ; 4 uses
  %i.au = sitofp i32 %i.x to float
  %i.av = sitofp i32 %i.v to float
  %i.aw = sitofp i32 %i.t to float
  %i.ax = sext i32 %i.b to i64
  %xtraiter = and i64 %wide.trip.count90.i, 3     ; 3 uses
  %i.ay = icmp ult i32 %i.b, 4
  %unroll_iter = and i64 %wide.trip.count90.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod103 = icmp ne i64 %xtraiter, 0
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.az = phi i32 [ %i.q, %.lr.ph ], [ %i.ld, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !145
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !107
  %i.bd = sext i32 %i.bc to i64                   ; 3 uses
  %i.be = load i64, ptr %i.z, align 8
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bd
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !101
  %i.bi = fmul float %6, %i.bh                    ; 2 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.bd ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bj, align 4, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = fcmp une float %i.bi, 0.000000e+00
  br i1 %i.bl, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  store ptr %0, ptr %7, align 8, !tbaa !147, !noalias !148
  store ptr %1, ptr %i.aa, align 8, !tbaa !111, !noalias !148
  store ptr %4, ptr %i.ab, align 8, !tbaa !149, !noalias !148
  store ptr %5, ptr %i.ac, align 8, !tbaa !150, !noalias !148
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bm, ptr %i.ad, align 8, !tbaa !112, !noalias !148
  %i.bn = load ptr, ptr %i.aj, align 8, !tbaa !151, !alias.scope !146, !noalias !152
  %i.bo = load i32, ptr %i.ah, align 4, !tbaa !153, !noalias !148 ; 4 uses
  %i.bp = load i32, ptr %i.af, align 8, !tbaa !154, !noalias !148 ; 3 uses
  store i32 %i.bp, ptr %i.ae, align 4, !tbaa !115, !noalias !148
  store i32 %i.bo, ptr %i.ag, align 8, !tbaa !116, !noalias !148
  %i.bq = load i32, ptr %i.bb, align 4, !tbaa !107
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.br ; 4 uses
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !155, !noalias !148
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bt, ptr %i.ak, align 8, !tbaa !117, !noalias !148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bv, ptr %i.al, align 4, !tbaa !118, !noalias !148
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !107 ; 3 uses
  store i32 %i.bx, ptr %i.am, align 8, !tbaa !119, !noalias !148
  switch i32 %i.b, label %bb.g [
    i32 4, label %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit
    i32 5, label %bb.f
  ]

_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit: ; preds = %bb.e
  %i.by = shl nuw nsw i64 %indvars.iv, 2          ; 6 uses
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by ; 4 uses
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.by
  %i.cf = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.by ; 4 uses
  %i.ch = load ptr, ptr %i.ar, align 8, !tbaa !120
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.by
  %i.cj = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.by
  %.val66.i = load <4 x float>, ptr %i.ce, align 16, !tbaa !121
  %i.cl = shufflevector <4 x float> %.val66.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %.val.i = load <4 x float>, ptr %i.ck, align 16, !tbaa !121
  %i.cm = shufflevector <4 x float> %.val.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.cn = sext i32 %i.bx to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %1, i64 %i.cn ; 4 uses
  %i.co = insertelement <8 x i32> poison, i32 %i.bo, i64 0
  %i.cp = shufflevector <8 x i32> %i.co, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cq = mul <8 x i32> %i.cp, <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cr = add <8 x i32> %i.cq, <i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2> ; 4 uses
  %8 = call noundef <16 x float> @llvm.masked.expandload.v16f32.p0(ptr readonly %i.cc, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x float> zeroinitializer)
  %9 = shufflevector <16 x float> %8, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12> ; 8 uses
  %10 = call noundef <16 x float> @llvm.masked.expandload.v16f32.p0(ptr readonly %i.ci, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>, <16 x float> zeroinitializer)
  %11 = shufflevector <16 x float> %10, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12> ; 4 uses
  %i.cs = load float, ptr %i.ca, align 4, !tbaa !101
  %i.ct = insertelement <16 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %12 = load float, ptr %i.cg, align 4, !tbaa !101
  %13 = insertelement <16 x float> poison, float %12, i64 0
  %14 = shufflevector <16 x float> %13, <16 x float> poison, <16 x i32> zeroinitializer
  %i.cv = fmul <16 x float> %9, %14
  %i.cw = fmul <16 x float> %11, %i.cu
  %i.cx = fmul <16 x float> %9, %i.cu
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !101
  %i.da = insertelement <16 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <16 x float> %i.da, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !101
  %i.de = insertelement <16 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <16 x float> %i.de, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dg = fmul <16 x float> %9, %i.df
  %i.dh = fmul <16 x float> %11, %i.db
  %i.di = fmul <16 x float> %9, %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !101
  %i.dl = insertelement <16 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <16 x float> %i.dl, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !101
  %i.dp = insertelement <16 x float> poison, float %i.do, i64 0
  %i.dq = shufflevector <16 x float> %i.dp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.dr = fmul <16 x float> %9, %i.dq
  %i.ds = fmul <16 x float> %11, %i.dm
  %i.dt = fmul <16 x float> %9, %i.dm
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.dv = load float, ptr %i.du, align 4, !tbaa !101
  %i.dw = insertelement <16 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <16 x float> %i.dw, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !101
  %i.ea = insertelement <16 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <16 x float> %i.ea, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ec = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.ed = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ee = add <4 x i32> %i.ed, <i32 0, i32 1, i32 2, i32 3>
  %i.ef = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = mul <4 x i32> %i.ee, %i.eg
  %i.ei = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ej = shufflevector <4 x i32> %i.ei, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = add <4 x i32> %i.eh, %i.ej
  %i.el = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %i.em = shufflevector <4 x i32> %i.el, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.en = mul <4 x i32> %i.ek, %i.em              ; 4 uses
  %i.eo = extractelement <4 x i32> %i.en, i64 0
  %i.ep = sext i32 %i.eo to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ep
  %i.eq = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i, <8 x i32> %i.cr, <8 x i1> splat (i1 true), i32 4)
  %i.er = bitcast <8 x double> %i.eq to <16 x float> ; 2 uses
  %i.es = fmul <16 x float> %i.cl, %i.er          ; 2 uses
  %i.et = fmul <16 x float> %i.cm, %i.er
  %i.eu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cv, <16 x float> %i.es, <16 x float> zeroinitializer)
  %i.ev = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cw, <16 x float> %i.es, <16 x float> zeroinitializer)
  %i.ew = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cx, <16 x float> %i.et, <16 x float> zeroinitializer)
  %i.ex = extractelement <4 x i32> %i.en, i64 1
  %i.ey = sext i32 %i.ex to i64
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ey
  %i.ez = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i.1, <8 x i32> %i.cr, <8 x i1> splat (i1 true), i32 4)
  %i.fa = bitcast <8 x double> %i.ez to <16 x float> ; 2 uses
  %i.fb = fmul <16 x float> %i.cl, %i.fa          ; 2 uses
  %i.fc = fmul <16 x float> %i.cm, %i.fa
  %i.fd = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dg, <16 x float> %i.fb, <16 x float> %i.eu)
  %i.fe = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dh, <16 x float> %i.fb, <16 x float> %i.ev)
  %i.ff = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.di, <16 x float> %i.fc, <16 x float> %i.ew)
  %i.fg = extractelement <4 x i32> %i.en, i64 2
  %i.fh = sext i32 %i.fg to i64
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fh
  %i.fi = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i.2, <8 x i32> %i.cr, <8 x i1> splat (i1 true), i32 4)
  %i.fj = bitcast <8 x double> %i.fi to <16 x float> ; 2 uses
  %i.fk = fmul <16 x float> %i.cl, %i.fj          ; 2 uses
  %i.fl = fmul <16 x float> %i.cm, %i.fj
  %i.fm = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dr, <16 x float> %i.fk, <16 x float> %i.fd)
  %i.fn = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ds, <16 x float> %i.fk, <16 x float> %i.fe)
  %i.fo = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dt, <16 x float> %i.fl, <16 x float> %i.ff)
  %i.fp = extractelement <4 x i32> %i.en, i64 3
  %i.fq = sext i32 %i.fp to i64
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fq
  %i.fr = call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr readonly %gep.i.3, <8 x i32> %i.cr, <8 x i1> splat (i1 true), i32 4)
  %i.fs = bitcast <8 x double> %i.fr to <16 x float> ; 2 uses
  %i.ft = fmul <16 x float> %i.cl, %i.fs          ; 2 uses
  %i.fu = fmul <16 x float> %i.cm, %i.fs
  %i.fv = fmul <16 x float> %9, %i.eb
  %i.fw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fv, <16 x float> %i.ft, <16 x float> %i.fm) ; 2 uses
  %i.fx = fmul <16 x float> %11, %i.dx
  %i.fy = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fx, <16 x float> %i.ft, <16 x float> %i.fn) ; 2 uses
  %i.fz = fmul <16 x float> %9, %i.dx
  %i.ga = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fz, <16 x float> %i.fu, <16 x float> %i.fo) ; 2 uses
  %i.gb = shufflevector <16 x float> %i.fw, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gc = fadd <16 x float> %i.fw, %i.gb          ; 8 uses
  %i.gd = shufflevector <16 x float> %i.fy, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ge = fadd <16 x float> %i.fy, %i.gd          ; 8 uses
  %i.gf = shufflevector <16 x float> %i.ga, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gg = fadd <16 x float> %i.ga, %i.gf          ; 2 uses
  %i.gh = shufflevector <16 x float> %i.gg, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.gi = fadd <16 x float> %i.gg, %i.gh          ; 2 uses
  %i.gj = shufflevector <16 x float> %i.gi, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7, i32 10, i32 11, i32 10, i32 11, i32 14, i32 15, i32 14, i32 15>
  %i.gk = fadd <16 x float> %i.gi, %i.gj          ; 2 uses
  %i.gl = shufflevector <16 x float> %i.gk, <16 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = fadd <16 x float> %i.gk, %i.gl
  %.0.vec.extract.i68.i = extractelement <16 x float> %i.gm, i64 0
  %i.gn = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 0, i32 16>
  %i.go = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 4, i32 20>
  %i.gp = fadd <2 x float> %i.gn, %i.go
  %i.gq = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 2, i32 18>
  %i.gr = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 6, i32 22>
  %i.gs = fadd <2 x float> %i.gq, %i.gr
  %i.gt = fadd <2 x float> %i.gp, %i.gs
  %i.gu = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 1, i32 17>
  %i.gv = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 5, i32 21>
  %i.gw = fadd <2 x float> %i.gu, %i.gv
  %i.gx = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 3, i32 19>
  %i.gy = shufflevector <16 x float> %i.gc, <16 x float> %i.ge, <2 x i32> <i32 7, i32 23>
  %i.gz = fadd <2 x float> %i.gx, %i.gy
  %i.ha = fadd <2 x float> %i.gw, %i.gz
  %.sroa.074.4.vec.insert.i = fadd <2 x float> %i.gt, %i.ha
  br label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

bb.f:                                             ; preds = %bb.e
  %i.hb = call { <2 x float>, float } @_ZNK10do_fsplineclILi5EEENSt9enable_ifIXooeqT_Li4EeqT_Li5EEN3gmx11BasicVectorIfEEE4typeESt17integral_constantIiXT_EE(ptr noundef nonnull align 8 dereferenceable(68) %7) ; 2 uses
  %.fca.0.extract2 = extractvalue { <2 x float>, float } %i.hb, 0
  %.fca.1.extract3 = extractvalue { <2 x float>, float } %i.hb, 1
  br label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

bb.g:                                             ; preds = %bb.e
  %i.hc = mul nsw i64 %indvars.iv, %i.ax          ; 6 uses
  %i.hd = load ptr, ptr %i.an, align 8, !tbaa !120
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hc
  %i.hh = load ptr, ptr %i.ap, align 8, !tbaa !120
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hc ; 5 uses
  %i.hj = load ptr, ptr %i.aq, align 8, !tbaa !120
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hc
  %i.hl = load ptr, ptr %i.ar, align 8, !tbaa !120
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hc
  %i.hn = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.hc ; 5 uses
  br i1 %i.at, label %.lr.ph66.us.i, label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit

.lr.ph66.us.i:                                    ; preds = %bb.g, %._crit_edge67.split.us.us.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %._crit_edge67.split.us.us.i ], [ 0, %bb.g ] ; 4 uses
  %.sroa.0.074.us.i = phi <2 x float> [ %i.kh, %._crit_edge67.split.us.us.i ], [ zeroinitializer, %bb.g ]
  %.sroa.7.073.us.i = phi float [ %i.kj, %._crit_edge67.split.us.us.i ], [ 0.000000e+00, %bb.g ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv87.i
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !101 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv87.i
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !101
  %i.ht = trunc i64 %indvars.iv87.i to i32
  %i.hu = add i32 %i.bt, %i.ht
  %i.hv = mul i32 %i.hu, %i.bp
  %invariant.op70.us.i = add i32 %i.hv, %i.bv
  %i.hw = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hx = insertelement <2 x float> %i.hw, float %i.hq, i64 1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph66.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %._crit_edge.us.us.i ], [ 0, %.lr.ph66.us.i ] ; 4 uses
  %.sroa.0.163.us.us.i = phi <2 x float> [ %i.kh, %._crit_edge.us.us.i ], [ %.sroa.0.074.us.i, %.lr.ph66.us.i ]
  %.sroa.7.162.us.us.i = phi float [ %i.kj, %._crit_edge.us.us.i ], [ %.sroa.7.073.us.i, %.lr.ph66.us.i ]
  %i.hy = trunc nuw nsw i64 %indvars.iv82.i to i32
  %.reass71.us.us.i = add i32 %invariant.op70.us.i, %i.hy
  %i.hz = mul i32 %.reass71.us.us.i, %i.bo
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv82.i
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !101 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv82.i
  %i.id = load float, ptr %i.ic, align 4, !tbaa !101
  %invariant.op.us.us.i = add i32 %i.hz, %i.bx    ; 5 uses
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 7 uses
  %.04659.us.us.i = phi float [ %i.jr, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %.04758.us.us.i = phi float [ %i.jo, %.lr.ph.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.ie = trunc nuw nsw i64 %indvars.iv.i70 to i32
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.ie
  %i.if = sext i32 %.reass.us.us.i to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %1, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !101 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i70
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !101
  %i.ik = call float @llvm.fmuladd.f32(float %i.ij, float %i.ih, float %.04758.us.us.i)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i70
  %i.im = load float, ptr %i.il, align 4, !tbaa !101
  %i.in = call float @llvm.fmuladd.f32(float %i.im, float %i.ih, float %.04659.us.us.i)
  %indvars.iv.next.i71 = or disjoint i64 %indvars.iv.i70, 1 ; 3 uses
  %i.io = trunc nuw nsw i64 %indvars.iv.next.i71 to i32
  %.reass.us.us.i.1 = add i32 %invariant.op.us.us.i, %i.io
  %i.ip = sext i32 %.reass.us.us.i.1 to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !101 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next.i71
  %i.it = load float, ptr %i.is, align 4, !tbaa !101
  %i.iu = call float @llvm.fmuladd.f32(float %i.it, float %i.ir, float %i.ik)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next.i71
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !101
  %i.ix = call float @llvm.fmuladd.f32(float %i.iw, float %i.ir, float %i.in)
  %indvars.iv.next.i71.1 = or disjoint i64 %indvars.iv.i70, 2 ; 3 uses
  %i.iy = trunc nuw nsw i64 %indvars.iv.next.i71.1 to i32
  %.reass.us.us.i.2 = add i32 %invariant.op.us.us.i, %i.iy
  %i.iz = sext i32 %.reass.us.us.i.2 to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !101 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next.i71.1
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !101
  %i.je = call float @llvm.fmuladd.f32(float %i.jd, float %i.jb, float %i.iu)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next.i71.1
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !101
  %i.jh = call float @llvm.fmuladd.f32(float %i.jg, float %i.jb, float %i.ix)
  %indvars.iv.next.i71.2 = or disjoint i64 %indvars.iv.i70, 3 ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.next.i71.2 to i32
  %.reass.us.us.i.3 = add i32 %invariant.op.us.us.i, %i.ji
  %i.jj = sext i32 %.reass.us.us.i.3 to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !101 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next.i71.2
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !101
  %i.jo = call float @llvm.fmuladd.f32(float %i.jn, float %i.jl, float %i.je) ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next.i71.2
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !101
  %i.jr = call float @llvm.fmuladd.f32(float %i.jq, float %i.jl, float %i.jh) ; 3 uses
  %indvars.iv.next.i71.3 = add nuw nsw i64 %indvars.iv.i70, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !128

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv.i70.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next.i71.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.04659.us.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.jr, %._crit_edge.us.us.i.unr-lcssa ]
  %.04758.us.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.i ], [ %i.jo, %._crit_edge.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i70.epil = phi i64 [ %indvars.iv.next.i71.epil, %bb.h ], [ %indvars.iv.i70.epil.init, %.epil.preheader ] ; 4 uses
  %.04659.us.us.i.epil = phi float [ %i.kb, %bb.h ], [ %.04659.us.us.i.epil.init, %.epil.preheader ]
  %.04758.us.us.i.epil = phi float [ %i.jy, %bb.h ], [ %.04758.us.us.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.h ], [ 0, %.epil.preheader ]
  %i.js = trunc nuw nsw i64 %indvars.iv.i70.epil to i32
  %.reass.us.us.i.epil = add i32 %invariant.op.us.us.i, %i.js
  %i.jt = sext i32 %.reass.us.us.i.epil to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !101 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i70.epil
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !101
  %i.jy = call float @llvm.fmuladd.f32(float %i.jx, float %i.jv, float %.04758.us.us.i.epil) ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i70.epil
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !101
  %i.kb = call float @llvm.fmuladd.f32(float %i.ka, float %i.jv, float %.04659.us.us.i.epil) ; 2 uses
  %indvars.iv.next.i71.epil = add nuw nsw i64 %indvars.iv.i70.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i, label %bb.h, !llvm.loop !129

._crit_edge.us.us.i:                              ; preds = %bb.h, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa98 = phi float [ %i.jo, %._crit_edge.us.us.i.unr-lcssa ], [ %i.jy, %bb.h ]
  %.lcssa = phi float [ %i.jr, %._crit_edge.us.us.i.unr-lcssa ], [ %i.kb, %bb.h ]
  %i.kc = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.kd = insertelement <2 x float> %i.kc, float %i.id, i64 1
  %i.ke = fmul <2 x float> %i.hx, %i.kd
  %i.kf = insertelement <2 x float> poison, float %.lcssa98, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kg, <2 x float> %.sroa.0.163.us.us.i) ; 3 uses
  %i.ki = fmul float %i.hq, %i.ib
  %i.kj = call float @llvm.fmuladd.f32(float %i.ki, float %.lcssa, float %.sroa.7.162.us.us.i) ; 3 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count90.i
  br i1 %exitcond86.not.i, label %._crit_edge67.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !130

._crit_edge67.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count90.i
  br i1 %exitcond91.not.i, label %_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit, label %.lr.ph66.us.i, !llvm.loop !131

_ZNK10do_fsplineclIiEEN3gmx11BasicVectorIfEET_.exit: ; preds = %._crit_edge67.split.us.us.i, %bb.g, %bb.f, %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit
  %.sroa.10.0 = phi float [ %.fca.1.extract3, %bb.f ], [ %.0.vec.extract.i68.i, %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit ], [ 0.000000e+00, %bb.g ], [ %i.kj, %._crit_edge67.split.us.us.i ]
  %.sroa.0.0 = phi <2 x float> [ %.fca.0.extract2, %bb.f ], [ %.sroa.074.4.vec.insert.i, %_ZNK10do_fsplineclESt17integral_constantIiLi4EE.exit ], [ zeroinitializer, %bb.g ], [ %i.kh, %._crit_edge67.split.us.us.i ] ; 2 uses
  %i.kk = fneg float %i.bi                        ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.kl = fmul float %.sroa.0.0.vec.extract, %i.au ; 3 uses
  %i.km = fmul float %i.d, %i.kl
  %i.kn = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.bd ; 4 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !101
end_hunk_0
