Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU_AVX512?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_522applyTetrahedralAVX512EPKfiS1_Pfi(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp i32 %1 to float                   ; 4 uses
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = fmul nnan float %i.a, 4.000000e+00
  %i.f = insertelement <16 x float> poison, float %i.e, i64 0
  %i.g = shufflevector <16 x float> %i.f, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.h = fmul float %i.a, %i.a
  %i.i = fmul nnan float %i.h, 4.000000e+00
  %i.j = insertelement <16 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <16 x float> %i.j, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.l = sdiv i32 %4, 16
  %i.m = shl nsw i32 %i.l, 4                      ; 3 uses
  %i.n = sub i32 %4, %i.m                         ; 4 uses
  %i.o = icmp sgt i32 %4, 15
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.047.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.ee, %bb.b ] ; 4 uses
  %.046.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.ef, %bb.b ] ; 4 uses
  %.not.i = icmp eq i32 %4, %i.m
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126applyTetrahedralAVX512FuncILNS_8BitDepthE8ELS2_8EEEvPKfiPKvPvi.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter = and i32 %4, 7                       ; 4 uses
  %i.r = icmp ult i32 %i.n, 8
  br i1 %i.r, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = sub nuw i32 %i.n, %xtraiter
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.0132.i = phi i32 [ 0, %.lr.ph.i ], [ %i.eg, %bb.b ]
  %.046131.i = phi ptr [ %3, %.lr.ph.i ], [ %i.ef, %bb.b ] ; 5 uses
  %.047130.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ee, %bb.b ] ; 5 uses
  %i.s = load <16 x float>, ptr %.047130.i, align 1, !tbaa !17 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.047130.i, i64 64
  %i.u = load <16 x float>, ptr %i.t, align 1, !tbaa !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.047130.i, i64 128
  %i.w = load <16 x float>, ptr %i.v, align 1, !tbaa !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.047130.i, i64 192
  %i.y = load <16 x float>, ptr %i.x, align 1, !tbaa !17 ; 2 uses
  %i.z = shufflevector <16 x float> %i.s, <16 x float> %i.u, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aa = shufflevector <16 x float> %i.w, <16 x float> %i.y, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ab = shufflevector <16 x float> %i.s, <16 x float> %i.u, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ac = shufflevector <16 x float> %i.w, <16 x float> %i.y, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ad = shufflevector <16 x float> %i.z, <16 x float> %i.aa, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ae = shufflevector <16 x float> %i.z, <16 x float> %i.aa, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.af = shufflevector <16 x float> %i.ab, <16 x float> %i.ac, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ag = shufflevector <16 x float> %i.ab, <16 x float> %i.ac, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ah = fmul <16 x float> %i.d, %i.ad
  %i.ai = fmul <16 x float> %i.d, %i.ae
  %i.aj = fmul <16 x float> %i.d, %i.af
  %i.ak = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ah, <16 x float> zeroinitializer, i32 4)
  %i.al = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ai, <16 x float> zeroinitializer, i32 4)
  %i.am = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aj, <16 x float> zeroinitializer, i32 4)
  %i.an = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ak, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ao = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.al, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.am, <16 x float> %i.d, i32 4) ; 3 uses
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.an, i32 1, <16 x float> %i.an, i16 -1, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ao, i32 1, <16 x float> %i.ao, i16 -1, i32 4) ; 3 uses
  %i.as = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ap, i32 1, <16 x float> %i.ap, i16 -1, i32 4) ; 3 uses
  %i.at = fsub <16 x float> %i.an, %i.aq          ; 4 uses
  %i.au = fsub <16 x float> %i.ao, %i.ar          ; 4 uses
  %i.av = fsub <16 x float> %i.ap, %i.as          ; 5 uses
  %i.aw = fadd <16 x float> %i.aq, splat (float 1.000000e+00)
  %i.ax = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.d, <16 x float> %i.aw, i32 4)
  %i.ay = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.az = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.d, <16 x float> %i.ay, i32 4)
  %i.ba = fadd <16 x float> %i.as, splat (float 1.000000e+00)
  %i.bb = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.d, <16 x float> %i.ba, i32 4)
  %i.bc = fmul <16 x float> %i.k, %i.aq           ; 3 uses
  %i.bd = fmul <16 x float> %i.k, %i.ax           ; 3 uses
  %i.be = fmul <16 x float> %i.g, %i.ar           ; 3 uses
  %i.bf = fmul <16 x float> %i.g, %i.az           ; 3 uses
  %i.bg = fmul <16 x float> %i.as, splat (float 4.000000e+00) ; 3 uses
  %i.bh = fmul <16 x float> %i.bb, splat (float 4.000000e+00) ; 3 uses
  %i.bi = fcmp ogt <16 x float> %i.at, %i.au      ; 3 uses
  %i.bj = fcmp ogt <16 x float> %i.au, %i.av      ; 3 uses
  %i.bk = fcmp ogt <16 x float> %i.av, %i.at      ; 3 uses
  %i.bl = xor <16 x i1> %i.bk, splat (i1 true)    ; 2 uses
  %i.bm = and <16 x i1> %i.bi, %i.bl
  %i.bn = select <16 x i1> %i.bm, <16 x float> %i.bd, <16 x float> %i.bc
  %i.bo = xor <16 x i1> %i.bi, splat (i1 true)    ; 2 uses
  %i.bp = and <16 x i1> %i.bk, %i.bo
  %i.bq = select <16 x i1> %i.bp, <16 x float> %i.bc, <16 x float> %i.bd
  %i.br = and <16 x i1> %i.bj, %i.bo
  %i.bs = select <16 x i1> %i.br, <16 x float> %i.bf, <16 x float> %i.be
  %i.bt = fadd <16 x float> %i.bn, %i.bs
  %i.bu = xor <16 x i1> %i.bj, splat (i1 true)    ; 2 uses
  %i.bv = and <16 x i1> %i.bi, %i.bu
  %i.bw = select <16 x i1> %i.bv, <16 x float> %i.be, <16 x float> %i.bf
  %i.bx = fadd <16 x float> %i.bq, %i.bw
  %i.by = and <16 x i1> %i.bk, %i.bu
  %i.bz = select <16 x i1> %i.by, <16 x float> %i.bh, <16 x float> %i.bg
  %i.ca = fadd <16 x float> %i.bt, %i.bz
  %i.cb = and <16 x i1> %i.bj, %i.bl
  %i.cc = select <16 x i1> %i.cb, <16 x float> %i.bg, <16 x float> %i.bh
  %i.cd = fadd <16 x float> %i.bx, %i.cc
  %i.ce = fadd <16 x float> %i.bc, %i.be
  %i.cf = fadd <16 x float> %i.ce, %i.bg
  %i.cg = fadd <16 x float> %i.bd, %i.bf
  %i.ch = fadd <16 x float> %i.cg, %i.bh
  %i.ci = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.au, i32 4) ; 2 uses
  %i.cj = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.at, <16 x float> %i.au, i32 4) ; 2 uses
  %i.ck = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ci, <16 x float> %i.av, i32 4) ; 4 uses
  %i.cl = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ci, <16 x float> %i.av, i32 4)
  %i.cm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.cj, <16 x float> %i.av, i32 4) ; 2 uses
  %i.cn = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.cj, <16 x float> %i.cl, i32 4) ; 2 uses
  %i.co = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.cf, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ca, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ch, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.cs = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.co, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.ct = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.p, <16 x i32> %i.co, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.cu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.q, <16 x i32> %i.co, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.cv = fsub <16 x float> splat (float 1.000000e+00), %i.cm ; 3 uses
  %i.cw = fmul <16 x float> %i.cv, %i.cs
  %i.cx = fmul <16 x float> %i.cv, %i.ct
  %i.cy = fmul <16 x float> %i.cv, %i.cu
  %i.cz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.cp, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.da = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.p, <16 x i32> %i.cp, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.db = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.q, <16 x i32> %i.cp, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.dc = fsub <16 x float> %i.cm, %i.cn          ; 3 uses
  %i.dd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dc, <16 x float> %i.cz, <16 x float> %i.cw)
  %i.de = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dc, <16 x float> %i.da, <16 x float> %i.cx)
  %i.df = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dc, <16 x float> %i.db, <16 x float> %i.cy)
  %i.dg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.cq, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.dh = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.p, <16 x i32> %i.cq, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.di = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.q, <16 x i32> %i.cq, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.dj = fsub <16 x float> %i.cn, %i.ck          ; 3 uses
  %i.dk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> %i.dg, <16 x float> %i.dd)
  %i.dl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> %i.dh, <16 x float> %i.de)
  %i.dm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> %i.di, <16 x float> %i.df)
  %i.dn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.cr, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.do = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.p, <16 x i32> %i.cr, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.dp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.q, <16 x i32> %i.cr, <16 x i1> splat (i1 true), i32 4), !noalias !18
  %i.dq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ck, <16 x float> %i.dn, <16 x float> %i.dk) ; 2 uses
  %i.dr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ck, <16 x float> %i.do, <16 x float> %i.dl) ; 2 uses
  %i.ds = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ck, <16 x float> %i.dp, <16 x float> %i.dm) ; 2 uses
  %i.dt = shufflevector <16 x float> %i.dq, <16 x float> %i.dr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.du = shufflevector <16 x float> %i.ds, <16 x float> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dv = shufflevector <16 x float> %i.dq, <16 x float> %i.dr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dw = shufflevector <16 x float> %i.ds, <16 x float> %i.ag, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dx = shufflevector <16 x float> %i.dt, <16 x float> %i.du, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.dy = shufflevector <16 x float> %i.dt, <16 x float> %i.du, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dz = shufflevector <16 x float> %i.dv, <16 x float> %i.dw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ea = shufflevector <16 x float> %i.dv, <16 x float> %i.dw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  store <16 x float> %i.dx, ptr %.046131.i, align 1, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %.046131.i, i64 64
  store <16 x float> %i.dy, ptr %i.eb, align 1, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %.046131.i, i64 128
  store <16 x float> %i.dz, ptr %i.ec, align 1, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %.046131.i, i64 192
  store <16 x float> %i.ea, ptr %i.ed, align 1, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.047130.i, i64 256 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.046131.i, i64 256 ; 2 uses
  %i.eg = add nuw nsw i32 %.0132.i, 16            ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %i.m
  br i1 %i.eh, label %bb.b, label %._crit_edge.i, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.025.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.ei = shl i64 %.025.i.i, 32                   ; 2 uses
  %i.ej = or disjoint i64 %i.ei, 4294967295       ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.ek = or disjoint i64 %i.ei, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.025.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ej, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa ]
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.025.i.i.epil = phi i64 [ %i.em, %.lr.ph.i.i.epil ], [ %.025.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.el = shl i64 %.025.i.i.epil, 4               ; 2 uses
  %i.em = or disjoint i64 %i.el, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !12

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa
  %.lcssa26 = phi i64 [ %i.ek, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa ], [ %i.el, %.lr.ph.i.i.epil ] ; 3 uses
  %.lcssa25 = phi i64 [ %i.ej, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.unr-lcssa ], [ %i.em, %.lr.ph.i.i.epil ]
  %i.en = trunc i64 %.lcssa25 to i16
  %i.eo = bitcast i16 %i.en to <16 x i1>
  %i.ep = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.047.lcssa.i, <16 x i1> %i.eo, <16 x float> zeroinitializer) ; 2 uses
  %i.eq = lshr i64 %.lcssa26, 16
  %i.er = trunc i64 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %.047.lcssa.i, i64 64
  %i.et = bitcast i16 %i.er to <16 x i1>
  %i.eu = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.es, <16 x i1> %i.et, <16 x float> zeroinitializer) ; 2 uses
  %i.ev = lshr i64 %.lcssa26, 32
  %i.ew = trunc i64 %i.ev to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %.047.lcssa.i, i64 128
  %i.ey = bitcast i16 %i.ew to <16 x i1>
  %i.ez = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.ex, <16 x i1> %i.ey, <16 x float> zeroinitializer) ; 2 uses
  %i.fa = lshr i64 %.lcssa26, 48
  %i.fb = trunc nuw i64 %i.fa to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %.047.lcssa.i, i64 192
  %i.fd = bitcast i16 %i.fb to <16 x i1>
  %i.fe = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.fc, <16 x i1> %i.fd, <16 x float> zeroinitializer) ; 2 uses
  %i.ff = shufflevector <16 x float> %i.ep, <16 x float> %i.eu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fg = shufflevector <16 x float> %i.ez, <16 x float> %i.fe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fh = shufflevector <16 x float> %i.ep, <16 x float> %i.eu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fi = shufflevector <16 x float> %i.ez, <16 x float> %i.fe, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fj = shufflevector <16 x float> %i.ff, <16 x float> %i.fg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.fk = shufflevector <16 x float> %i.ff, <16 x float> %i.fg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.fl = shufflevector <16 x float> %i.fh, <16 x float> %i.fi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.fm = fmul <16 x float> %i.d, %i.fj
  %i.fn = fmul <16 x float> %i.d, %i.fk
  %i.fo = fmul <16 x float> %i.d, %i.fl
  %i.fp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fm, <16 x float> zeroinitializer, i32 4)
  %i.fq = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fn, <16 x float> zeroinitializer, i32 4)
  %i.fr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fo, <16 x float> zeroinitializer, i32 4)
  %i.fs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fp, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ft = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fq, <16 x float> %i.d, i32 4) ; 3 uses
  %i.fu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fr, <16 x float> %i.d, i32 4) ; 3 uses
  %i.fv = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fs, i32 1, <16 x float> %i.fs, i16 -1, i32 4) ; 3 uses
  %i.fw = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ft, i32 1, <16 x float> %i.ft, i16 -1, i32 4) ; 3 uses
  %i.fx = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fu, i32 1, <16 x float> %i.fu, i16 -1, i32 4) ; 3 uses
  %i.fy = fsub <16 x float> %i.fs, %i.fv          ; 4 uses
  %i.fz = fsub <16 x float> %i.ft, %i.fw          ; 4 uses
  %i.ga = fsub <16 x float> %i.fu, %i.fx          ; 5 uses
  %i.gb = fadd <16 x float> %i.fv, splat (float 1.000000e+00)
  %i.gc = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.d, <16 x float> %i.gb, i32 4)
  %i.gd = fadd <16 x float> %i.fw, splat (float 1.000000e+00)
  %i.ge = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.d, <16 x float> %i.gd, i32 4)
  %i.gf = fadd <16 x float> %i.fx, splat (float 1.000000e+00)
  %i.gg = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.d, <16 x float> %i.gf, i32 4)
  %i.gh = fmul <16 x float> %i.k, %i.fv           ; 3 uses
  %i.gi = fmul <16 x float> %i.k, %i.gc           ; 3 uses
  %i.gj = fmul <16 x float> %i.g, %i.fw           ; 3 uses
  %i.gk = fmul <16 x float> %i.g, %i.ge           ; 3 uses
  %i.gl = fmul <16 x float> %i.fx, splat (float 4.000000e+00) ; 3 uses
  %i.gm = fmul <16 x float> %i.gg, splat (float 4.000000e+00) ; 3 uses
  %i.gn = fcmp ogt <16 x float> %i.fy, %i.fz      ; 3 uses
  %i.go = fcmp ogt <16 x float> %i.fz, %i.ga      ; 3 uses
  %i.gp = fcmp ogt <16 x float> %i.ga, %i.fy      ; 3 uses
  %i.gq = xor <16 x i1> %i.gp, splat (i1 true)    ; 2 uses
  %i.gr = and <16 x i1> %i.gn, %i.gq
  %i.gs = select <16 x i1> %i.gr, <16 x float> %i.gi, <16 x float> %i.gh
  %i.gt = xor <16 x i1> %i.gn, splat (i1 true)    ; 2 uses
  %i.gu = and <16 x i1> %i.gp, %i.gt
  %i.gv = select <16 x i1> %i.gu, <16 x float> %i.gh, <16 x float> %i.gi
  %i.gw = and <16 x i1> %i.go, %i.gt
  %i.gx = select <16 x i1> %i.gw, <16 x float> %i.gk, <16 x float> %i.gj
  %i.gy = fadd <16 x float> %i.gs, %i.gx
  %i.gz = xor <16 x i1> %i.go, splat (i1 true)    ; 2 uses
  %i.ha = and <16 x i1> %i.gn, %i.gz
  %i.hb = select <16 x i1> %i.ha, <16 x float> %i.gj, <16 x float> %i.gk
  %i.hc = fadd <16 x float> %i.gv, %i.hb
  %i.hd = and <16 x i1> %i.gp, %i.gz
  %i.he = select <16 x i1> %i.hd, <16 x float> %i.gm, <16 x float> %i.gl
  %i.hf = fadd <16 x float> %i.gy, %i.he
  %i.hg = and <16 x i1> %i.go, %i.gq
  %i.hh = select <16 x i1> %i.hg, <16 x float> %i.gl, <16 x float> %i.gm
  %i.hi = fadd <16 x float> %i.hc, %i.hh
  %i.hj = fadd <16 x float> %i.gh, %i.gj
  %i.hk = fadd <16 x float> %i.hj, %i.gl
  %i.hl = fadd <16 x float> %i.gi, %i.gk
  %i.hm = fadd <16 x float> %i.hl, %i.gm
  %i.hn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.hk, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ho = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.hf, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hp = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.hi, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.hm, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.hn, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ht = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hs, <16 x i32> %i.hn, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.hv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hu, <16 x i32> %i.hn, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.hw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ho, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.hx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hs, <16 x i32> %i.ho, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.hy = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hu, <16 x i32> %i.ho, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.hz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.hp, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.ia = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hs, <16 x i32> %i.hp, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.ib = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hu, <16 x i32> %i.hp, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.ic = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.hq, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.id = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hs, <16 x i32> %i.hq, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %i.ie = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.hu, <16 x i32> %i.hq, <16 x i1> splat (i1 true), i32 4), !noalias !21
  %xtraiter32 = and i32 %4, 7                     ; 4 uses
  %i.if = icmp ult i32 %i.n, 8
  br i1 %i.if, label %.lr.ph.i57.i.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i
  %unroll_iter38 = sub nuw i32 %i.n, %xtraiter32
  br label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.lr.ph.i57.i, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.new
  %.01927.i.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.new ], [ %i.ih, %.lr.ph.i57.i ]
  %niter39 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i.new ], [ %niter39.next.7, %.lr.ph.i57.i ]
  %i.ig = shl i64 %.01927.i.i, 32                 ; 2 uses
  %i.ih = or disjoint i64 %i.ig, 4294967295       ; 3 uses
  %niter39.next.7 = add i32 %niter39, 8           ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38
  br i1 %niter39.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa, label %.lr.ph.i57.i, !llvm.loop !15

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa: ; preds = %.lr.ph.i57.i
  %i.ii = or disjoint i64 %i.ig, 4294967280
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i, label %.lr.ph.i57.i.epil.preheader

.lr.ph.i57.i.epil.preheader:                      ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i
  %.01927.i.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.i ], [ %i.ih, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa ]
  %lcmp.mod37 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i57.i.epil

.lr.ph.i57.i.epil:                                ; preds = %.lr.ph.i57.i.epil, %.lr.ph.i57.i.epil.preheader
  %.01927.i.i.epil = phi i64 [ %i.ik, %.lr.ph.i57.i.epil ], [ %.01927.i.i.epil.init, %.lr.ph.i57.i.epil.preheader ]
  %epil.iter33 = phi i32 [ %epil.iter33.next, %.lr.ph.i57.i.epil ], [ 0, %.lr.ph.i57.i.epil.preheader ]
  %i.ij = shl i64 %.01927.i.i.epil, 4             ; 2 uses
  %i.ik = or disjoint i64 %i.ij, 15               ; 2 uses
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i, label %.lr.ph.i57.i.epil, !llvm.loop !16

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i: ; preds = %.lr.ph.i57.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa
  %.lcssa24 = phi i64 [ %i.ii, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa ], [ %i.ij, %.lr.ph.i57.i.epil ] ; 3 uses
  %.lcssa = phi i64 [ %i.ih, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i.unr-lcssa ], [ %i.ik, %.lr.ph.i57.i.epil ]
  %i.il = shufflevector <16 x float> %i.fh, <16 x float> %i.fi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.im = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fy, <16 x float> %i.fz, i32 4) ; 2 uses
  %i.in = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fy, <16 x float> %i.fz, i32 4) ; 2 uses
  %i.io = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.im, <16 x float> %i.ga, i32 4) ; 4 uses
  %i.ip = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.im, <16 x float> %i.ga, i32 4)
  %i.iq = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.in, <16 x float> %i.ga, i32 4) ; 2 uses
  %i.ir = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.in, <16 x float> %i.ip, i32 4) ; 2 uses
  %i.is = fsub <16 x float> splat (float 1.000000e+00), %i.iq ; 3 uses
  %i.it = fmul <16 x float> %i.hr, %i.is
  %i.iu = fmul <16 x float> %i.ht, %i.is
  %i.iv = fmul <16 x float> %i.hv, %i.is
  %i.iw = fsub <16 x float> %i.iq, %i.ir          ; 3 uses
  %i.ix = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.iw, <16 x float> %i.hw, <16 x float> %i.it)
  %i.iy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.iw, <16 x float> %i.hx, <16 x float> %i.iu)
  %i.iz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.iw, <16 x float> %i.hy, <16 x float> %i.iv)
  %i.ja = fsub <16 x float> %i.ir, %i.io          ; 3 uses
  %i.jb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ja, <16 x float> %i.hz, <16 x float> %i.ix)
  %i.jc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ja, <16 x float> %i.ia, <16 x float> %i.iy)
  %i.jd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ja, <16 x float> %i.ib, <16 x float> %i.iz)
  %i.je = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.io, <16 x float> %i.ic, <16 x float> %i.jb) ; 2 uses
  %i.jf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.io, <16 x float> %i.id, <16 x float> %i.jc) ; 2 uses
  %i.jg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.io, <16 x float> %i.ie, <16 x float> %i.jd) ; 2 uses
  %i.jh = shufflevector <16 x float> %i.je, <16 x float> %i.jf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ji = shufflevector <16 x float> %i.jg, <16 x float> %i.il, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.jj = shufflevector <16 x float> %i.je, <16 x float> %i.jf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.jk = shufflevector <16 x float> %i.jg, <16 x float> %i.il, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.jl = shufflevector <16 x float> %i.jh, <16 x float> %i.ji, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.jm = shufflevector <16 x float> %i.jh, <16 x float> %i.ji, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.jn = shufflevector <16 x float> %i.jj, <16 x float> %i.jk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.jo = shufflevector <16 x float> %i.jj, <16 x float> %i.jk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.jp = trunc i64 %.lcssa to i16
  %i.jq = bitcast i16 %i.jp to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.jl, ptr align 1 %.046.lcssa.i, <16 x i1> %i.jq)
  %i.jr = lshr i64 %.lcssa24, 16
  %i.js = trunc i64 %i.jr to i16
  %i.jt = getelementptr inbounds nuw i8, ptr %.046.lcssa.i, i64 64
  %i.ju = bitcast i16 %i.js to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.jm, ptr nonnull align 1 %i.jt, <16 x i1> %i.ju)
  %i.jv = lshr i64 %.lcssa24, 32
  %i.jw = trunc i64 %i.jv to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %.046.lcssa.i, i64 128
  %i.jy = bitcast i16 %i.jw to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.jn, ptr nonnull align 1 %i.jx, <16 x i1> %i.jy)
  %i.jz = lshr i64 %.lcssa24, 48
  %i.ka = trunc nuw i64 %i.jz to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %.046.lcssa.i, i64 192
  %i.kc = bitcast i16 %i.ka to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.jo, ptr nonnull align 1 %i.kb, <16 x i1> %i.kc)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_126applyTetrahedralAVX512FuncILNS_8BitDepthE8ELS2_8EEEvPKfiPKvPvi.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_126applyTetrahedralAVX512FuncILNS_8BitDepthE8ELS2_8EEEvPKfiPKvPvi.exit: ; preds = %._crit_edge.i, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_125interp_tetrahedral_avx512ERKNS0_18Lut3DContextAVX512ERDv16_fS5_S5_S5_"}
!9 = distinct !{!9, !8, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_125interp_tetrahedral_avx512ERKNS0_18Lut3DContextAVX512ERDv16_fS5_S5_S5_: argument 0"}
!10 = distinct !{!10, !19}
!11 = distinct !{!11, !19}
!12 = distinct !{!12, !20}
!13 = distinct !{!13, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_125interp_tetrahedral_avx512ERKNS0_18Lut3DContextAVX512ERDv16_fS5_S5_S5_"}
!14 = distinct !{!14, !13, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_125interp_tetrahedral_avx512ERKNS0_18Lut3DContextAVX512ERDv16_fS5_S5_S5_: argument 0"}
!15 = distinct !{!15, !19}
!16 = distinct !{!16, !20}
!17 = !{!4, !4, i64 0}
!18 = !{!9}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!14}
end_hunk_0
