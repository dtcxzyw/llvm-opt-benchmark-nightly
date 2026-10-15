Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuJacobiContactSolver?download=true
inline.NumInlined: 584
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_Z13solveContact3P16b3GpuConstraint4P9b3Vector3S2_S2_fRK11b3Matrix3x3S2_S2_S2_fS5_S2_S2_S2_S2_:bb.a
  %i.fb = load float, ptr %i.t, align 8, !tbaa !69
  %i.fc = load float, ptr %i.u, align 16, !tbaa !69
  %i.fd = load float, ptr %i.v, align 4, !tbaa !69
  %i.fe = extractelement <3 x float> %i.bn, i64 2
  %i.ff = fmul float %i.fe, %i.fd
  %i.fg = extractelement <3 x float> %i.bn, i64 1
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fg, float %i.ff)
  %i.fi = extractelement <3 x float> %i.bn, i64 0
  %i.fj = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fi, float %i.fh)
  %i.fk = fmul float %i.ea, %i.fj
  %i.fl = load float, ptr %i.w, align 8, !tbaa !69
  %i.fm = load <2 x float>, ptr %i.y, align 8
  %i.fn = fmul float %4, %.sroa.7.0.copyload
  %i.fo = fmul float %i.fn, %i.ea
  %i.fp = fmul <2 x float> %i.ad, %i.av
  %i.fq = fmul <2 x float> %i.fp, %i.ed
  %i.fr = load <2 x float>, ptr %11, align 16, !tbaa !69
  %i.fs = fadd <2 x float> %i.fq, %i.fr
  %i.ft = load float, ptr %i.d, align 8, !tbaa !69
  %i.fu = fadd float %i.fo, %i.ft
  %i.fv = load <2 x float>, ptr %i.x, align 16, !tbaa !69 ; 2 uses
  %i.fw = load <2 x float>, ptr %5, align 16, !tbaa !69 ; 2 uses
  %i.fx = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fy = shufflevector <2 x float> %i.fw, <2 x float> %i.fv, <2 x i32> <i32 1, i32 3>
  %i.fz = fmul <2 x float> %i.fx, %i.fy
  %i.ga = shufflevector <2 x float> %i.fw, <2 x float> %i.fv, <2 x i32> <i32 0, i32 2>
  %i.gb = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz)
  %i.gd = insertelement <2 x float> %i.fm, float %i.fl, i64 1
  %i.ge = shufflevector <3 x float> %i.bn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ge, <2 x float> %i.gc)
  %i.gg = fmul <2 x float> %i.ed, %i.gf
  store <2 x float> %i.fs, ptr %11, align 16, !tbaa !69
  store float %i.fu, ptr %i.d, align 8, !tbaa !69
  %i.gh = load <2 x float>, ptr %12, align 16, !tbaa !69
  %i.gi = fadd <2 x float> %i.gg, %i.gh
  store <2 x float> %i.gi, ptr %12, align 16, !tbaa !69
  %i.gj = load float, ptr %i.f, align 8, !tbaa !69
  %i.gk = fadd float %i.fk, %i.gj
  store float %i.gk, ptr %i.f, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gl = load <2 x float>, ptr %13, align 16, !tbaa !69
  %i.gm = fadd <2 x float> %i.ee, %i.gl
  store <2 x float> %i.gm, ptr %13, align 16, !tbaa !69
  %i.gn = load float, ptr %i.h, align 8, !tbaa !69
  %i.go = fadd float %i.ef, %i.gn
  store float %i.go, ptr %i.h, align 8, !tbaa !69
  %i.gp = load <2 x float>, ptr %14, align 16, !tbaa !69
  %i.gq = fadd <2 x float> %i.ez, %i.gp
  store <2 x float> %i.gq, ptr %14, align 16, !tbaa !69
  %i.gr = load float, ptr %i.j, align 8, !tbaa !69
  %i.gs = fadd float %i.fa, %i.gr
  store float %i.gs, ptr %i.j, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z12calcJacCoeffRK9b3Vector3S1_S1_S1_fPK11b3Matrix3x3fS4_ff(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, float noundef %4, ptr nofree noundef readonly captures(none) %5, float noundef %6, ptr nofree noundef readonly captures(none) %7, float noundef %8, float noundef %9) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !69 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = load float, ptr %i.m, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load float, ptr %i.r, align 8, !tbaa !69 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load float, ptr %5, align 16, !tbaa !69
  %i.v = load float, ptr %i.a, align 4, !tbaa !69
  %i.w = load <2 x float>, ptr %2, align 16, !tbaa !69 ; 3 uses
  %i.x = load float, ptr %i.b, align 4, !tbaa !69 ; 2 uses
  %i.y = fmul float %i.v, %i.x
  %i.z = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.u, float %i.z, float %i.y)
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.d, float %i.f, float %i.aa)
  %i.ac = load float, ptr %i.g, align 16, !tbaa !69
  %i.ad = load float, ptr %i.h, align 4, !tbaa !69
  %i.ae = fmul float %i.x, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.z, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.f, float %i.af)
  %i.ah = load float, ptr %i.k, align 16, !tbaa !69
  %i.ai = load float, ptr %i.l, align 4, !tbaa !69
  %i.aj = load <2 x float>, ptr %7, align 16, !tbaa !69 ; 2 uses
  %i.ak = load <2 x float>, ptr %3, align 16, !tbaa !69 ; 3 uses
  %i.al = load float, ptr %i.o, align 4, !tbaa !69 ; 2 uses
  %i.am = load <2 x float>, ptr %i.t, align 16, !tbaa !69
  %i.an = shufflevector <2 x float> %i.w, <2 x float> %i.aj, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 1> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float %i.ai, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ag, i64 2
  %i.at = fmul <4 x float> %i.ap, %i.as
  %i.au = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.av = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.ay = insertelement <4 x float> %i.ax, float %i.ab, i64 2
  %i.az = shufflevector <2 x float> %i.w, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.az, <4 x float> %i.at) ; 2 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bf = load float, ptr %i.be, align 16, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !69
  %i.bi = extractelement <2 x float> %i.ak, i64 0
  %i.bj = fmul float %i.al, %i.bh
  %i.bk = insertelement <4 x float> poison, float %i.n, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.q, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bf, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bd, i64 3
  %i.bo = insertelement <4 x float> %i.aq, float %i.f, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.s, i64 1
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.br = insertelement <4 x float> %i.ba, float %i.bj, i64 2
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bq, <4 x float> %i.br) ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.f, float %i.bb)
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !69
  %i.bx = extractelement <4 x float> %i.bs, i64 2
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.s, float %i.bx)
  %i.bz = extractelement <4 x float> %i.bs, i64 3
  %i.ca = fmul float %i.al, %i.bz
  %i.cb = extractelement <4 x float> %i.bs, i64 1
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bi, float %i.ca)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.s, float %i.cc)
  %i.ce = fadd float %4, %i.bu
  %i.cf = fadd float %6, %i.cd
  %i.cg = fmul float %9, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ce, float %8, float %i.cg)
  %i.ci = fdiv float -1.000000e+00, %i.ch
  ret float %i.ci
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_Z14setConstraint4RK9b3Vector3S1_S1_fRK11b3Matrix3x3S1_S1_S1_fS4_P10b3Contact4fffffP16b3GpuConstraint4(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %7, float noundef %8, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %9, ptr nofree noundef readonly captures(none) %10, float noundef %11, float noundef %12, float noundef %13, float noundef %14, float noundef %15, ptr nofree noundef writeonly captures(none) initializes((0, 16), (128, 152), (160, 168)) %16) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %16, i64 160
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !71
  %i.d = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.c, i1 true)
  store <2 x i32> %i.d, ptr %i.b, align 16, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.f = fdiv float 1.000000e+00, %11
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !72
  %i.i = getelementptr inbounds nuw i8, ptr %16, i64 12
  store float f0x3F333333, ptr %i.i, align 4, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 76 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 112
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.ah = load float, ptr %i.j, align 4, !tbaa !68 ; 4 uses
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %.preheader, label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 6 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = uitofp nneg i32 %i.aj to float
  %i.al = load float, ptr %i.j, align 4, !tbaa !68
  %i.am = fcmp ugt float %i.al, %i.ak
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv ; 2 uses
  %i.ao = load float, ptr %5, align 16, !tbaa !69
  %i.ap = load float, ptr %i.n, align 8, !tbaa !69
  %i.aq = load <2 x float>, ptr %i.m, align 4, !tbaa !69
  %i.ar = load float, ptr %i.l, align 8, !tbaa !69
  %i.as = load <3 x float>, ptr %i.an, align 16, !tbaa !69 ; 2 uses
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.au = extractelement <3 x float> %i.as, i64 2
  %i.av = fsub float %i.au, %i.ar                 ; 2 uses
  %i.aw = load <4 x float>, ptr %0, align 16
  %i.ax = insertelement <4 x float> poison, float %i.ap, i64 2
  %i.ay = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ba = shufflevector <4 x float> %i.aw, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bb = fsub <4 x float> %i.at, %i.ba           ; 3 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %.sroa.6192.0.copyload = load float, ptr %.sroa.6192.0..sroa_idx, align 4 ; 2 uses
  %i.bd = load <3 x float>, ptr %i.h, align 16    ; 3 uses
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 3 uses
  %i.bf = fneg <3 x float> %i.bd                  ; 2 uses
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1> ; 4 uses
  %i.bh = insertelement <4 x float> %i.bb, float %i.av, i64 3
  %i.bi = fmul <4 x float> %i.bh, %i.bg
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.be, <4 x float> %i.bi) ; 11 uses
  %i.bk = extractelement <3 x float> %i.bf, i64 2
  %i.bl = extractelement <3 x float> %i.bd, i64 0
  %i.bm = extractelement <4 x float> %i.bj, i64 3
  %i.bn = fneg float %i.bm                        ; 3 uses
  %i.bo = extractelement <4 x float> %i.bj, i64 0
  %i.bp = extractelement <4 x float> %i.bj, i64 2
  %i.bq = load float, ptr %i.p, align 8, !tbaa !69
  %i.br = extractelement <4 x float> %i.bj, i64 1 ; 4 uses
  %i.bs = load <4 x float>, ptr %4, align 16      ; 2 uses
  %i.bt = load <4 x float>, ptr %i.q, align 16    ; 2 uses
  %i.bu = shufflevector <4 x float> %i.at, <4 x float> %i.bb, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bx = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ao, i64 0
  %i.by = fsub <4 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = shufflevector <4 x float> %i.bg, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.ca = fmul <4 x float> %i.by, %i.bz
  %i.cb = insertelement <4 x float> poison, float %i.av, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cf = shufflevector <4 x float> %i.be, <4 x float> %i.bj, <4 x i32> <i32 0, i32 poison, i32 6, i32 6>
  %i.cg = insertelement <4 x float> %i.cf, float %.sroa.6192.0.copyload, i64 1
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.cg, <4 x float> %i.ca) ; 4 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  %i.cj = extractelement <4 x float> %i.ch, i64 1
  %i.ck = fneg float %i.cj                        ; 3 uses
  %i.cl = extractelement <4 x float> %i.ch, i64 2
  %i.cm = load float, ptr %i.s, align 8, !tbaa !69
  %i.cn = extractelement <4 x float> %i.ch, i64 3
  %i.co = load float, ptr %i.v, align 8, !tbaa !69
  %i.cp = fneg float %i.ci                        ; 3 uses
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.br, float %i.cl)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.br, float %i.cn)
  %i.cs = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.ct = load <4 x float>, ptr %i.x, align 16    ; 2 uses
  %i.cu = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.cv = shufflevector <4 x float> %i.bj, <4 x float> %i.cs, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cy = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cp, i64 1
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.db = fmul <4 x float> %i.cx, %i.da
  %i.dc = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dg = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.dh = shufflevector <4 x float> %i.bj, <4 x float> %i.dg, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.dh, <4 x float> %i.db)
  %i.dj = load float, ptr %i.t, align 16, !tbaa !69
  %i.dk = load float, ptr %i.u, align 4, !tbaa !69
  %i.dl = fmul float %i.bo, %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.bp, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.co, float %i.br, float %i.dm)
  %i.do = load float, ptr %i.w, align 8, !tbaa !69
  %i.dp = load float, ptr %i.y, align 8, !tbaa !69
  %i.dq = load float, ptr %i.ab, align 8, !tbaa !69
  %i.dr = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 1
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 2
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 3
  %i.dv = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.dw = shufflevector <4 x float> %i.bj, <4 x float> %i.dv, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.dw, <4 x float> %i.di) ; 4 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 2
  %i.dz = fmul float %i.dy, %i.cp
  %i.ea = extractelement <4 x float> %i.dx, i64 1
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.bn, float %i.dz)
  %i.ec = extractelement <4 x float> %i.dx, i64 3
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.ck, float %i.eb)
  %i.ee = extractelement <4 x float> %i.dx, i64 0
  %i.ef = fadd float %3, %i.ee
  %i.eg = fadd float %8, %i.ed
  %i.eh = fmul float %15, %i.eg
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ef, float %14, float %i.eh)
  %i.ej = fdiv float -1.000000e+00, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.ej, ptr %i.ek, align 4, !tbaa !68
  %i.el = load float, ptr %1, align 16, !tbaa !69
  %i.em = load float, ptr %i.ac, align 4, !tbaa !69
  %i.en = fmul float %.sroa.6192.0.copyload, %i.em
  %17 = load <4 x float>, ptr %1, align 16
  %i.eo = load float, ptr %i.ad, align 8, !tbaa !69
  %18 = load float, ptr %i.ae, align 8, !tbaa !69
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.el, float %i.en)
  %19 = load <4 x float>, ptr %2, align 16        ; 2 uses
  %20 = load <4 x float>, ptr %6, align 16        ; 2 uses
  %21 = load <4 x float>, ptr %7, align 16        ; 2 uses
  %22 = insertelement <4 x float> %19, float %i.ep, i64 0
  %23 = shufflevector <4 x float> %22, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %24 = shufflevector <4 x float> %23, <4 x float> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %25 = shufflevector <4 x float> %i.bj, <4 x float> %i.bg, <4 x i32> <i32 poison, i32 0, i32 6, i32 poison>
  %26 = insertelement <4 x float> %25, float 1.000000e+00, i64 0
  %27 = insertelement <4 x float> %26, float %i.cp, i64 3
  %28 = fmul <4 x float> %24, %27
  %29 = shufflevector <4 x float> %i.be, <4 x float> %i.bj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %29, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %31 = insertelement <4 x float> %30, float %i.bn, i64 3
  %32 = shufflevector <4 x float> %17, <4 x float> %19, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %33 = shufflevector <4 x float> %32, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %34 = shufflevector <4 x float> %33, <4 x float> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %35 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> %34, <4 x float> %28) ; 4 uses
  %36 = extractelement <4 x float> %35, i64 1
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.eo, float %36)
  %37 = extractelement <4 x float> %35, i64 0
  %38 = fadd float %37, %i.eq
  %39 = extractelement <4 x float> %35, i64 2
  %40 = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %18, float %39)
  %41 = fadd float %38, %40
  %i.er = load float, ptr %i.af, align 8, !tbaa !69
  %42 = extractelement <4 x float> %35, i64 3
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.er, float %42)
  %i.et = fadd float %41, %i.es
  %i.eu = fmul float %i.et, 0.000000e+00          ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  store float %i.eu, ptr %i.ev, align 4, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !68
  %i.ey = fadd float %12, %i.ex
  %i.ez = fmul float %13, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.f, float %i.eu)
  store float %i.fa, ptr %i.ev, align 4, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.fb = phi i64 [ 128, %bb.d ], [ 96, %bb.c ]
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.fd, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !109

bb.f:                                             ; preds = %.preheader
  %i.fe = fdiv nnan float 1.000000e+00, %i.ah
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = fmul <4 x float> %i.fg, %i.ob           ; 5 uses
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fj = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> %i.oe, <2 x i32> <i32 0, i32 3>
  %i.fl = load float, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !68 ; 6 uses
  %i.fm = tail call noundef float @llvm.fabs.f32(float %i.fl)
  %i.fn = fcmp ogt float %i.fm, f0x3F3504F3
  br i1 %i.fn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fo = load float, ptr %.sroa.6192.0..sroa_idx, align 4, !tbaa !68 ; 3 uses
  %i.fp = fmul nnan float %i.fl, %i.fl
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fp) ; 2 uses
  %i.fr = tail call noundef float @sqrtf(float noundef %i.fq) #23
  %i.fs = fdiv float 1.000000e+00, %i.fr          ; 2 uses
  %i.ft = fneg float %i.fl
  %i.fu = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.fs, i64 0 ; 2 uses
  %i.fv = insertelement <4 x float> %i.fu, float %i.fo, i64 1
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.fx = shufflevector <4 x float> %i.fu, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 0, i32 6, i32 0>
  %i.fy = insertelement <4 x float> %i.fx, float %i.ft, i64 0
  %i.fz = fmul <4 x float> %i.fw, %i.fy           ; 3 uses
  %i.ga = extractelement <4 x float> %i.fz, i64 0 ; 2 uses
  %i.gb = fmul float %i.fq, %i.fs
  %i.gc = load float, ptr %i.h, align 16, !tbaa !68 ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = extractelement <4 x float> %i.fz, i64 1
  %i.gf = fmul float %i.ge, %i.gd
  %i.gg = fmul float %i.ga, %i.gc
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.gh = load float, ptr %i.h, align 16, !tbaa !68 ; 3 uses
  %i.gi = load float, ptr %.sroa.6192.0..sroa_idx, align 4, !tbaa !68 ; 3 uses
  %i.gj = fmul float %i.gi, %i.gi
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.gj) ; 2 uses
  %i.gl = tail call noundef float @sqrtf(float noundef %i.gk) #23
  %i.gm = fdiv float 1.000000e+00, %i.gl          ; 3 uses
  %i.gn = fneg float %i.gi
  %i.go = fmul float %i.gm, %i.gn                 ; 3 uses
  %i.gp = fmul float %i.gh, %i.gm                 ; 3 uses
  %i.gq = fneg float %i.fl
  %i.gr = fmul float %i.gp, %i.gq
  %i.gs = fmul float %i.fl, %i.go
  %i.gt = fmul float %i.gk, %i.gm
  %i.gu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.gp, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.go, i64 2
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit:   ; preds = %bb.g, %bb.h
  %.sroa.14.0 = phi float [ %i.gf, %bb.g ], [ %i.gs, %bb.h ]
  %.sroa.11222.0 = phi float [ %i.gb, %bb.g ], [ %i.gr, %bb.h ] ; 2 uses
  %.sroa.5.0 = phi float [ %i.ga, %bb.g ], [ %i.gp, %bb.h ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.go, %bb.h ]
  %.sink.i = phi float [ %i.gg, %bb.g ], [ %i.gt, %bb.h ] ; 2 uses
  %i.gw = phi <4 x float> [ %i.fz, %bb.g ], [ %i.gv, %bb.h ] ; 2 uses
  %i.gx = load float, ptr %i.n, align 8, !tbaa !69
  %i.gy = load float, ptr %5, align 16, !tbaa !69
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.ha = fneg <4 x float> %i.gw                  ; 2 uses
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hc = load <2 x float>, ptr %0, align 16, !tbaa !69
  %i.hd = load <2 x float>, ptr %i.m, align 4, !tbaa !69 ; 2 uses
  %i.he = shufflevector <2 x float> %i.hc, <2 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.hf = insertelement <4 x float> %i.he, float %i.gx, i64 2 ; 2 uses
  %i.hg = fsub <4 x float> %i.fh, %i.hf           ; 8 uses
  %i.hh = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hi = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hj = shufflevector <4 x float> %i.hf, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hk = fsub <4 x float> %i.hh, %i.hj           ; 4 uses
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.hm = fmul <4 x float> %i.hl, %i.hb
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.gw, <4 x float> %i.hn) ; 8 uses
  %i.hp = extractelement <4 x float> %i.hk, i64 3
  %i.hq = extractelement <4 x float> %i.ho, i64 3
  %i.hr = fneg float %i.hq                        ; 2 uses
  %i.hs = extractelement <4 x float> %i.ho, i64 2
  %i.ht = extractelement <4 x float> %i.ho, i64 1 ; 3 uses
  %i.hu = load float, ptr %i.p, align 8, !tbaa !69
  %i.hv = extractelement <4 x float> %i.ho, i64 0 ; 3 uses
  %i.hw = load float, ptr %i.q, align 16, !tbaa !69
  %i.hx = load float, ptr %i.s, align 8, !tbaa !69
  %i.hy = load float, ptr %i.v, align 8, !tbaa !69
  %i.hz = load float, ptr %4, align 16, !tbaa !69
  %i.ia = load float, ptr %i.r, align 4, !tbaa !69
  %i.ib = load float, ptr %i.o, align 4, !tbaa !69
  %i.ic = shufflevector <4 x float> %i.fh, <4 x float> %i.hg, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.id = insertelement <4 x float> %i.ic, float %i.ia, i64 2
  %i.ie = insertelement <4 x float> %i.id, float %i.ib, i64 3
  %i.if = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.gy, i64 0
  %i.ig = fsub <4 x float> %i.ie, %i.if           ; 4 uses
  %i.ih = shufflevector <4 x float> %i.ha, <4 x float> %i.ho, <4 x i32> <i32 1, i32 2, i32 6, i32 6>
  %i.ii = fmul <4 x float> %i.ig, %i.ih           ; 4 uses
  %i.ij = extractelement <4 x float> %i.ii, i64 0
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.hp, float %.sroa.0.0, float %i.ij)
  %i.il = extractelement <4 x float> %i.ii, i64 1
  %i.im = extractelement <4 x float> %i.ig, i64 0
  %i.in = tail call float @llvm.fmuladd.f32(float %i.im, float %.sroa.5.0, float %i.il)
  %i.io = fneg float %i.in                        ; 2 uses
  %i.ip = fneg float %i.ik                        ; 2 uses
  %i.iq = extractelement <4 x float> %i.ii, i64 3
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ht, float %i.iq)
  %i.is = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hv, float %i.ir)
  %i.it = extractelement <4 x float> %i.ii, i64 2
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.ht, float %i.it)
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %i.hx, float %i.hv, float %i.iu)
  %i.iw = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.ix = load <4 x float>, ptr %i.x, align 16    ; 2 uses
  %i.iy = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.iz = shufflevector <4 x float> %i.ho, <4 x float> %i.iw, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> %i.iy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jc = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.jd = insertelement <4 x float> %i.jc, float %i.ip, i64 1
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.jf = fmul <4 x float> %i.jb, %i.je
  %i.jg = insertelement <4 x float> poison, float %i.is, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> %i.iw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> %i.iy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jk = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.jl = shufflevector <4 x float> %i.ho, <4 x float> %i.jk, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.jm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jj, <4 x float> %i.jl, <4 x float> %i.jf)
  %i.jn = load float, ptr %i.t, align 16, !tbaa !69
  %i.jo = load float, ptr %i.u, align 4, !tbaa !69
  %i.jp = fmul float %i.hs, %i.jo
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.ht, float %i.jp)
  %i.jr = tail call noundef float @llvm.fmuladd.f32(float %i.hy, float %i.hv, float %i.jq)
  %i.js = load float, ptr %i.w, align 8, !tbaa !69
  %i.jt = load float, ptr %i.y, align 8, !tbaa !69
  %i.ju = load float, ptr %i.ab, align 8, !tbaa !69
  %i.jv = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jw = insertelement <4 x float> %i.jv, float %i.js, i64 1
  %i.jx = insertelement <4 x float> %i.jw, float %i.jt, i64 2
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 3
  %i.jz = insertelement <4 x float> poison, float %i.io, i64 0
  %i.ka = shufflevector <4 x float> %i.ho, <4 x float> %i.jz, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.kb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.ka, <4 x float> %i.jm) ; 4 uses
  %i.kc = extractelement <4 x float> %i.kb, i64 2
  %i.kd = fmul float %i.kc, %i.ip
  %i.ke = extractelement <4 x float> %i.kb, i64 1
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.hr, float %i.kd)
  %i.kg = extractelement <4 x float> %i.kb, i64 3
  %i.kh = tail call noundef float @llvm.fmuladd.f32(float %i.kg, float %i.io, float %i.kf)
  %i.ki = extractelement <4 x float> %i.kb, i64 0
  %i.kj = fadd float %3, %i.ki
  %i.kk = fadd float %8, %i.kh
  %i.kl = fmul float %15, %i.kk
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kj, float %14, float %i.kl)
  %i.kn = fdiv float -1.000000e+00, %i.km
  store float %i.kn, ptr %i.g, align 16, !tbaa !68
  store float 0.000000e+00, ptr %i.gz, align 8, !tbaa !68
  %i.ko = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.kp = insertelement <4 x float> %i.ko, float %.sroa.11222.0, i64 1
  %i.kq = insertelement <4 x float> %i.kp, float %.sroa.14.0, i64 2 ; 2 uses
  %i.kr = fneg <4 x float> %i.kq
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 3 uses
  %i.kt = extractelement <4 x float> %i.hg, i64 2
  %foldExtExtBinop = fmul <4 x float> %i.hg, %i.ks
  %i.ku = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.kv = extractelement <4 x float> %i.hg, i64 1
  %foldExtExtBinop229 = fmul <4 x float> %i.hg, %i.ks
  %i.kw = extractelement <4 x float> %foldExtExtBinop229, i64 0
  %i.kx = shufflevector <4 x float> %i.hg, <4 x float> %i.hk, <4 x i32> <i32 poison, i32 1, i32 7, i32 3>
  %i.ky = shufflevector <4 x float> %i.ig, <4 x float> %i.kx, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.kz = fmul <4 x float> %i.ky, %i.ks
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.lb = shufflevector <4 x float> %i.hg, <4 x float> %i.hk, <4 x i32> <i32 3, i32 7, i32 0, i32 poison>
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> %i.ig, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ld = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lc, <4 x float> %i.ld, <4 x float> %i.la) ; 4 uses
  %i.lf = extractelement <4 x float> %i.le, i64 0
  %i.lg = fneg float %i.lf                        ; 3 uses
  %i.lh = extractelement <4 x float> %i.le, i64 1
  %i.li = fneg float %i.lh                        ; 3 uses
end_hunk_0
