inline.NumInlined: 117
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@switch.table._ZN16OpenColorIO_v2_523AVX512GetLut1DApplyFuncENS_8BitDepthES0_ = private unnamed_addr constant [8 x ptr] [ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_2EEEvPKfS4_S4_iPKvPvl, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_3EEEvPKfS4_S4_iPKvPvl, ptr null, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_5EEEvPKfS4_S4_iPKvPvl, ptr null, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_7EEEvPKfS4_S4_iPKvPvl, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_8EEEvPKfS4_S4_iPKvPvl], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_523AVX512GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %cond = icmp eq i32 %0, 8
  br i1 %cond, label %bb.b, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 8
  br i1 %i.a, label %switch.lookup, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

switch.lookup:                                    ; preds = %bb.b
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_523AVX512GetLut1DApplyFuncENS_8BitDepthES0_, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit: ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %switch.load, %switch.lookup ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i64 noundef %6) #1 {
bb.a:
  %i.a = sitofp i32 %3 to float
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = sdiv i64 %6, 16
  %.tr = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr, 4                          ; 5 uses
  %i.g = trunc i64 %6 to i32                      ; 5 uses
  %i.h = sub i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi ptr [ %4, %bb.a ], [ %i.cm, %.lr.ph ] ; 4 uses
  %.027.lcssa = phi ptr [ %5, %bb.a ], [ %i.cn, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.j = xor i32 %i.f, -1
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  %xtraiter = and i32 %i.g, 7                     ; 4 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub i32 %i.h, %xtraiter
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.089 = phi i32 [ %i.co, %.lr.ph ], [ 0, %bb.a ]
  %.02788 = phi ptr [ %i.cn, %.lr.ph ], [ %5, %bb.a ] ; 5 uses
  %.02887 = phi ptr [ %i.cm, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.m = load <16 x float>, ptr %.02887, align 1, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02887, i64 64
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02887, i64 128
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02887, i64 192
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !8 ; 2 uses
  %i.t = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.v = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.w = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.y = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.z = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ab = fmul <16 x float> %i.d, %i.x
  %i.ac = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ab, <16 x float> zeroinitializer, i32 4)
  %i.ad = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ac, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ae = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ad, i32 1, <16 x float> %i.ad, i16 -1, i32 4) ; 3 uses
  %i.af = fsub <16 x float> %i.ad, %i.ae
  %i.ag = fadd <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ag, <16 x float> %i.d, i32 4)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ai, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.al = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.aj, <16 x i1> splat (i1 true), i32 4)
  %i.am = fsub <16 x float> %i.al, %i.ak
  %i.an = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> %i.af, <16 x float> %i.ak)
  %i.ao = fmul <16 x float> %i.d, %i.y
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ao, <16 x float> zeroinitializer, i32 4)
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ap, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aq, i32 1, <16 x float> %i.aq, i16 -1, i32 4) ; 3 uses
  %i.as = fsub <16 x float> %i.aq, %i.ar
  %i.at = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.au = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.d, i32 4)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.av, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.aw, <16 x i1> splat (i1 true), i32 4)
  %i.az = fsub <16 x float> %i.ay, %i.ax
  %i.ba = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.as, <16 x float> %i.ax)
  %i.bb = fmul <16 x float> %i.d, %i.z
  %i.bc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bb, <16 x float> zeroinitializer, i32 4)
  %i.bd = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bc, <16 x float> %i.d, i32 4) ; 3 uses
  %i.be = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bd, i32 1, <16 x float> %i.bd, i16 -1, i32 4) ; 3 uses
  %i.bf = fsub <16 x float> %i.bd, %i.be
  %i.bg = fadd <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bg, <16 x float> %i.d, i32 4)
  %i.bi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bi, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bj, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fsub <16 x float> %i.bl, %i.bk
  %i.bn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.bf, <16 x float> %i.bk)
  %i.bo = fmul <16 x float> %i.aa, splat (float 2.550000e+02)
  %i.bp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.an, <16 x float> zeroinitializer, i32 4)
  %i.bq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bp, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.br = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ba, <16 x float> zeroinitializer, i32 4)
  %i.bs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.br, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.bt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bn, <16 x float> zeroinitializer, i32 4)
  %i.bu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bt, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.bv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bo, <16 x float> zeroinitializer, i32 4)
  %i.bw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bv, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.bx = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.by = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bz = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ca = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cb = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.cc = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cd = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ce = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cf = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr %.02788, <16 x i32> %i.cf, i16 -1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.02788, i64 16
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr nonnull %i.cg, <16 x i32> %i.ch, i16 -1)
  %i.ci = getelementptr inbounds nuw i8, ptr %.02788, i64 32
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr nonnull %i.ci, <16 x i32> %i.cj, i16 -1)
  %i.ck = getelementptr inbounds nuw i8, ptr %.02788, i64 48
  %i.cl = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ce, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr nonnull %i.ck, <16 x i32> %i.cl, i16 -1)
  %i.cm = getelementptr inbounds nuw i8, ptr %.02887, i64 256 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02788, i64 64 ; 2 uses
  %i.co = add nuw nsw i32 %.089, 16               ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.f
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cr, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.cq = shl i64 %.025.i, 32                     ; 2 uses
  %i.cr = or disjoint i64 %i.cq, 4294967295       ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cs = or disjoint i64 %i.cq, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.025.i.epil = phi i64 [ %i.cu, %.lr.ph.i.epil ], [ %.025.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ct = shl i64 %.025.i.epil, 4                 ; 2 uses
  %i.cu = or disjoint i64 %i.ct, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil, !llvm.loop !12

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa109 = phi i64 [ %i.cs, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ] ; 3 uses
  %.lcssa108 = phi i64 [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.cu, %.lr.ph.i.epil ]
  %i.cv = trunc i64 %.lcssa108 to i16
  %i.cw = bitcast i16 %i.cv to <16 x i1>
  %i.cx = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.028.lcssa, <16 x i1> %i.cw, <16 x float> zeroinitializer) ; 2 uses
  %i.cy = lshr i64 %.lcssa109, 16
  %i.cz = trunc i64 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 64
  %i.db = bitcast i16 %i.cz to <16 x i1>
  %i.dc = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.da, <16 x i1> %i.db, <16 x float> zeroinitializer) ; 2 uses
  %i.dd = lshr i64 %.lcssa109, 32
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 128
  %i.dg = bitcast i16 %i.de to <16 x i1>
  %i.dh = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.df, <16 x i1> %i.dg, <16 x float> zeroinitializer) ; 2 uses
  %i.di = lshr i64 %.lcssa109, 48
  %i.dj = trunc nuw i64 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 192
  %i.dl = bitcast i16 %i.dj to <16 x i1>
  %i.dm = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.dk, <16 x i1> %i.dl, <16 x float> zeroinitializer) ; 2 uses
  %i.dn = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.do = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dp = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ds = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dt = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.du = fmul <16 x float> %i.d, %i.dr
  %i.dv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.du, <16 x float> zeroinitializer, i32 4)
  %i.dw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dv, <16 x float> %i.d, i32 4) ; 3 uses
  %i.dx = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dw, i32 1, <16 x float> %i.dw, i16 -1, i32 4) ; 3 uses
  %i.dy = fadd <16 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dy, <16 x float> %i.d, i32 4)
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ec = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ea, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ed = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.eb, <16 x i1> splat (i1 true), i32 4)
  %i.ee = fmul <16 x float> %i.d, %i.ds
  %i.ef = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ee, <16 x float> zeroinitializer, i32 4)
  %i.eg = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ef, <16 x float> %i.d, i32 4) ; 3 uses
  %i.eh = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eg, i32 1, <16 x float> %i.eg, i16 -1, i32 4) ; 3 uses
  %i.ei = fadd <16 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ei, <16 x float> %i.d, i32 4)
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.eh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ej, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.ek, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.en = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.el, <16 x i1> splat (i1 true), i32 4)
  %i.eo = fmul <16 x float> %i.d, %i.dt
  %i.ep = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.eo, <16 x float> zeroinitializer, i32 4)
  %i.eq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ep, <16 x float> %i.d, i32 4) ; 3 uses
  %i.er = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eq, i32 1, <16 x float> %i.eq, i16 -1, i32 4) ; 3 uses
  %i.es = fadd <16 x float> %i.er, splat (float 1.000000e+00)
  %i.et = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.es, <16 x float> %i.d, i32 4)
  %i.eu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ev = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.et, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ew = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.eu, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ex = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.ev, <16 x i1> splat (i1 true), i32 4)
  %xtraiter115 = and i32 %i.g, 7                  ; 4 uses
  %i.ey = icmp ult i32 %i.k, 7
  br i1 %i.ey, label %.lr.ph.i42.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %unroll_iter121 = sub i32 %i.h, %xtraiter115
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new
  %.02334.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %i.fa, %.lr.ph.i42 ]
  %niter122 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %niter122.next.7, %.lr.ph.i42 ]
  %i.ez = shl i64 %.02334.i, 32                   ; 2 uses
  %i.fa = or disjoint i64 %i.ez, 4294967295       ; 3 uses
  %niter122.next.7 = add nuw i32 %niter122, 8     ; 2 uses
  %niter122.ncmp.7 = icmp eq i32 %niter122.next.7, %unroll_iter121
  br i1 %niter122.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa, label %.lr.ph.i42, !llvm.loop !14

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa: ; preds = %.lr.ph.i42
  %i.fb = or disjoint i64 %i.ez, 4294967280
  %lcmp.mod117.not = icmp eq i32 %xtraiter115, 0
  br i1 %lcmp.mod117.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit, label %.lr.ph.i42.epil.preheader

.lr.ph.i42.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %.02334.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit ], [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i32 %xtraiter115, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.i42.epil

.lr.ph.i42.epil:                                  ; preds = %.lr.ph.i42.epil, %.lr.ph.i42.epil.preheader
  %.02334.i.epil = phi i64 [ %i.fd, %.lr.ph.i42.epil ], [ %.02334.i.epil.init, %.lr.ph.i42.epil.preheader ]
  %epil.iter116 = phi i32 [ %epil.iter116.next, %.lr.ph.i42.epil ], [ 0, %.lr.ph.i42.epil.preheader ]
  %i.fc = shl i64 %.02334.i.epil, 4               ; 2 uses
  %i.fd = or disjoint i64 %i.fc, 15               ; 2 uses
  %epil.iter116.next = add i32 %epil.iter116, 1   ; 2 uses
  %epil.iter116.cmp.not = icmp eq i32 %epil.iter116.next, %xtraiter115
  br i1 %epil.iter116.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit, label %.lr.ph.i42.epil, !llvm.loop !15

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit: ; preds = %.lr.ph.i42.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa
  %.lcssa107 = phi i64 [ %i.fb, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fc, %.lr.ph.i42.epil ] ; 3 uses
  %.lcssa = phi i64 [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fd, %.lr.ph.i42.epil ]
  %i.fe = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ff = fsub <16 x float> %i.dw, %i.dx
  %i.fg = fsub <16 x float> %i.ed, %i.ec
  %i.fh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fg, <16 x float> %i.ff, <16 x float> %i.ec)
  %i.fi = fsub <16 x float> %i.eg, %i.eh
  %i.fj = fsub <16 x float> %i.en, %i.em
  %i.fk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fj, <16 x float> %i.fi, <16 x float> %i.em)
  %i.fl = fsub <16 x float> %i.eq, %i.er
  %i.fm = fsub <16 x float> %i.ex, %i.ew
  %i.fn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fm, <16 x float> %i.fl, <16 x float> %i.ew)
  %i.fo = fmul <16 x float> %i.fe, splat (float 2.550000e+02)
  %i.fp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fh, <16 x float> zeroinitializer, i32 4)
  %i.fq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fp, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.fr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fk, <16 x float> zeroinitializer, i32 4)
  %i.fs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fr, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.ft = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fn, <16 x float> zeroinitializer, i32 4)
  %i.fu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ft, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.fv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fo, <16 x float> zeroinitializer, i32 4)
  %i.fw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fv, <16 x float> splat (float 2.550000e+02), i32 4) ; 2 uses
  %i.fx = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fy = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fz = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ga = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gb = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.gc = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gd = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ge = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gf = trunc i64 %.lcssa to i16
  %i.gg = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr %.027.lcssa, <16 x i32> %i.gg, i16 %i.gf)
  %i.gh = lshr i64 %.lcssa107, 16
  %i.gi = trunc i64 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 16
  %i.gk = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr nonnull %i.gj, <16 x i32> %i.gk, i16 %i.gi)
  %i.gl = lshr i64 %.lcssa107, 32
  %i.gm = trunc i64 %i.gl to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 32
  %i.go = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr nonnull %i.gn, <16 x i32> %i.go, i16 %i.gm)
  %i.gp = lshr i64 %.lcssa107, 48
  %i.gq = trunc nuw i64 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 48
  %i.gs = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ge, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr nonnull %i.gr, <16 x i32> %i.gs, i16 %i.gq)
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE1EE11StoreMaskedEPhDv16_fS4_S4_S4_j.exit, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_2EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i64 noundef %6) #1 {
bb.a:
  %i.a = sitofp i32 %3 to float
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = sdiv i64 %6, 16
  %.tr = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr, 4                          ; 5 uses
  %i.g = trunc i64 %6 to i32                      ; 5 uses
  %i.h = sub i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi ptr [ %4, %bb.a ], [ %i.cm, %.lr.ph ] ; 4 uses
  %.027.lcssa = phi ptr [ %5, %bb.a ], [ %i.cn, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.j = xor i32 %i.f, -1
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  %xtraiter = and i32 %i.g, 7                     ; 4 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub i32 %i.h, %xtraiter
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.086 = phi i32 [ %i.co, %.lr.ph ], [ 0, %bb.a ]
  %.02785 = phi ptr [ %i.cn, %.lr.ph ], [ %5, %bb.a ] ; 5 uses
  %.02884 = phi ptr [ %i.cm, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.m = load <16 x float>, ptr %.02884, align 1, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02884, i64 64
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02884, i64 128
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02884, i64 192
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !8 ; 2 uses
  %i.t = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.v = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.w = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.y = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.z = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ab = fmul <16 x float> %i.d, %i.x
  %i.ac = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ab, <16 x float> zeroinitializer, i32 4)
  %i.ad = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ac, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ae = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ad, i32 1, <16 x float> %i.ad, i16 -1, i32 4) ; 3 uses
  %i.af = fsub <16 x float> %i.ad, %i.ae
  %i.ag = fadd <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ag, <16 x float> %i.d, i32 4)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ai, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.al = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.aj, <16 x i1> splat (i1 true), i32 4)
  %i.am = fsub <16 x float> %i.al, %i.ak
  %i.an = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> %i.af, <16 x float> %i.ak)
  %i.ao = fmul <16 x float> %i.d, %i.y
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ao, <16 x float> zeroinitializer, i32 4)
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ap, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aq, i32 1, <16 x float> %i.aq, i16 -1, i32 4) ; 3 uses
  %i.as = fsub <16 x float> %i.aq, %i.ar
  %i.at = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.au = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.d, i32 4)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.av, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.aw, <16 x i1> splat (i1 true), i32 4)
  %i.az = fsub <16 x float> %i.ay, %i.ax
  %i.ba = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.as, <16 x float> %i.ax)
  %i.bb = fmul <16 x float> %i.d, %i.z
  %i.bc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bb, <16 x float> zeroinitializer, i32 4)
  %i.bd = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bc, <16 x float> %i.d, i32 4) ; 3 uses
  %i.be = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bd, i32 1, <16 x float> %i.bd, i16 -1, i32 4) ; 3 uses
  %i.bf = fsub <16 x float> %i.bd, %i.be
  %i.bg = fadd <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bg, <16 x float> %i.d, i32 4)
  %i.bi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bi, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bj, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fsub <16 x float> %i.bl, %i.bk
  %i.bn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.bf, <16 x float> %i.bk)
  %i.bo = fmul <16 x float> %i.aa, splat (float 1.023000e+03)
  %i.bp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.an, <16 x float> zeroinitializer, i32 4)
  %i.bq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bp, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.br = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ba, <16 x float> zeroinitializer, i32 4)
  %i.bs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.br, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.bt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bn, <16 x float> zeroinitializer, i32 4)
  %i.bu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bt, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.bv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bo, <16 x float> zeroinitializer, i32 4)
  %i.bw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bv, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.bx = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.by = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bz = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ca = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cb = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.cc = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cd = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ce = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cf = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr %.02785, <16 x i32> %i.cf, i16 -1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.02785, i64 32
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.cg, <16 x i32> %i.ch, i16 -1)
  %i.ci = getelementptr inbounds nuw i8, ptr %.02785, i64 64
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.ci, <16 x i32> %i.cj, i16 -1)
  %i.ck = getelementptr inbounds nuw i8, ptr %.02785, i64 96
  %i.cl = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ce, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.ck, <16 x i32> %i.cl, i16 -1)
  %i.cm = getelementptr inbounds nuw i8, ptr %.02884, i64 256 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02785, i64 128 ; 2 uses
  %i.co = add nuw nsw i32 %.086, 16               ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.f
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !16

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cr, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.cq = shl i64 %.025.i, 32                     ; 2 uses
  %i.cr = or disjoint i64 %i.cq, 4294967295       ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cs = or disjoint i64 %i.cq, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.025.i.epil = phi i64 [ %i.cu, %.lr.ph.i.epil ], [ %.025.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ct = shl i64 %.025.i.epil, 4                 ; 2 uses
  %i.cu = or disjoint i64 %i.ct, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil, !llvm.loop !17

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa106 = phi i64 [ %i.cs, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ] ; 3 uses
  %.lcssa105 = phi i64 [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.cu, %.lr.ph.i.epil ]
  %i.cv = trunc i64 %.lcssa105 to i16
  %i.cw = bitcast i16 %i.cv to <16 x i1>
  %i.cx = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.028.lcssa, <16 x i1> %i.cw, <16 x float> zeroinitializer) ; 2 uses
  %i.cy = lshr i64 %.lcssa106, 16
  %i.cz = trunc i64 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 64
  %i.db = bitcast i16 %i.cz to <16 x i1>
  %i.dc = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.da, <16 x i1> %i.db, <16 x float> zeroinitializer) ; 2 uses
  %i.dd = lshr i64 %.lcssa106, 32
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 128
  %i.dg = bitcast i16 %i.de to <16 x i1>
  %i.dh = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.df, <16 x i1> %i.dg, <16 x float> zeroinitializer) ; 2 uses
  %i.di = lshr i64 %.lcssa106, 48
  %i.dj = trunc nuw i64 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 192
  %i.dl = bitcast i16 %i.dj to <16 x i1>
  %i.dm = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.dk, <16 x i1> %i.dl, <16 x float> zeroinitializer) ; 2 uses
  %i.dn = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.do = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dp = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ds = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dt = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.du = fmul <16 x float> %i.d, %i.dr
  %i.dv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.du, <16 x float> zeroinitializer, i32 4)
  %i.dw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dv, <16 x float> %i.d, i32 4) ; 3 uses
  %i.dx = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dw, i32 1, <16 x float> %i.dw, i16 -1, i32 4) ; 3 uses
  %i.dy = fadd <16 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dy, <16 x float> %i.d, i32 4)
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ec = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ea, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ed = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.eb, <16 x i1> splat (i1 true), i32 4)
  %i.ee = fmul <16 x float> %i.d, %i.ds
  %i.ef = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ee, <16 x float> zeroinitializer, i32 4)
  %i.eg = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ef, <16 x float> %i.d, i32 4) ; 3 uses
  %i.eh = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eg, i32 1, <16 x float> %i.eg, i16 -1, i32 4) ; 3 uses
  %i.ei = fadd <16 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ei, <16 x float> %i.d, i32 4)
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.eh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ej, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.ek, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.en = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.el, <16 x i1> splat (i1 true), i32 4)
  %i.eo = fmul <16 x float> %i.d, %i.dt
  %i.ep = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.eo, <16 x float> zeroinitializer, i32 4)
  %i.eq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ep, <16 x float> %i.d, i32 4) ; 3 uses
  %i.er = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eq, i32 1, <16 x float> %i.eq, i16 -1, i32 4) ; 3 uses
  %i.es = fadd <16 x float> %i.er, splat (float 1.000000e+00)
  %i.et = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.es, <16 x float> %i.d, i32 4)
  %i.eu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ev = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.et, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ew = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.eu, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ex = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.ev, <16 x i1> splat (i1 true), i32 4)
  %xtraiter112 = and i32 %i.g, 7                  ; 4 uses
  %i.ey = icmp ult i32 %i.k, 7
  br i1 %i.ey, label %.lr.ph.i.i.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %unroll_iter118 = sub i32 %i.h, %xtraiter112
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new
  %.02334.i.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %i.fa, %.lr.ph.i.i ]
  %niter119 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %niter119.next.7, %.lr.ph.i.i ]
  %i.ez = shl i64 %.02334.i.i, 32                 ; 2 uses
  %i.fa = or disjoint i64 %i.ez, 4294967295       ; 3 uses
  %niter119.next.7 = add nuw i32 %niter119, 8     ; 2 uses
  %niter119.ncmp.7 = icmp eq i32 %niter119.next.7, %unroll_iter118
  br i1 %niter119.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !18

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.fb = or disjoint i64 %i.ez, 4294967280
  %lcmp.mod114.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %.02334.i.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit ], [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i32 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.02334.i.i.epil = phi i64 [ %i.fd, %.lr.ph.i.i.epil ], [ %.02334.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter113 = phi i32 [ %epil.iter113.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.fc = shl i64 %.02334.i.i.epil, 4             ; 2 uses
  %i.fd = or disjoint i64 %i.fc, 15               ; 2 uses
  %epil.iter113.next = add i32 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i32 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, label %.lr.ph.i.i.epil, !llvm.loop !19

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit: ; preds = %.lr.ph.i.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa
  %.lcssa104 = phi i64 [ %i.fb, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fc, %.lr.ph.i.i.epil ] ; 3 uses
  %.lcssa = phi i64 [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fd, %.lr.ph.i.i.epil ]
  %i.fe = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ff = fsub <16 x float> %i.dw, %i.dx
  %i.fg = fsub <16 x float> %i.ed, %i.ec
  %i.fh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fg, <16 x float> %i.ff, <16 x float> %i.ec)
  %i.fi = fsub <16 x float> %i.eg, %i.eh
  %i.fj = fsub <16 x float> %i.en, %i.em
  %i.fk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fj, <16 x float> %i.fi, <16 x float> %i.em)
  %i.fl = fsub <16 x float> %i.eq, %i.er
  %i.fm = fsub <16 x float> %i.ex, %i.ew
  %i.fn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fm, <16 x float> %i.fl, <16 x float> %i.ew)
  %i.fo = fmul <16 x float> %i.fe, splat (float 1.023000e+03)
  %i.fp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fh, <16 x float> zeroinitializer, i32 4)
  %i.fq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fp, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.fr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fk, <16 x float> zeroinitializer, i32 4)
  %i.fs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fr, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.ft = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fn, <16 x float> zeroinitializer, i32 4)
  %i.fu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ft, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.fv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fo, <16 x float> zeroinitializer, i32 4)
  %i.fw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fv, <16 x float> splat (float 1.023000e+03), i32 4) ; 2 uses
  %i.fx = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fy = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fz = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ga = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gb = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.gc = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gd = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ge = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gf = trunc i64 %.lcssa to i16
  %i.gg = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr %.027.lcssa, <16 x i32> %i.gg, i16 %i.gf)
  %i.gh = lshr i64 %.lcssa104, 16
  %i.gi = trunc i64 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 32
  %i.gk = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gj, <16 x i32> %i.gk, i16 %i.gi)
  %i.gl = lshr i64 %.lcssa104, 32
  %i.gm = trunc i64 %i.gl to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 64
  %i.go = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gn, <16 x i32> %i.go, i16 %i.gm)
  %i.gp = lshr i64 %.lcssa104, 48
  %i.gq = trunc nuw i64 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 96
  %i.gs = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ge, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gr, <16 x i32> %i.gs, i16 %i.gq)
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE2EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_3EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i64 noundef %6) #1 {
bb.a:
  %i.a = sitofp i32 %3 to float
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = sdiv i64 %6, 16
  %.tr = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr, 4                          ; 5 uses
  %i.g = trunc i64 %6 to i32                      ; 5 uses
  %i.h = sub i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi ptr [ %4, %bb.a ], [ %i.cm, %.lr.ph ] ; 4 uses
  %.027.lcssa = phi ptr [ %5, %bb.a ], [ %i.cn, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.j = xor i32 %i.f, -1
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  %xtraiter = and i32 %i.g, 7                     ; 4 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub i32 %i.h, %xtraiter
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.086 = phi i32 [ %i.co, %.lr.ph ], [ 0, %bb.a ]
  %.02785 = phi ptr [ %i.cn, %.lr.ph ], [ %5, %bb.a ] ; 5 uses
  %.02884 = phi ptr [ %i.cm, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.m = load <16 x float>, ptr %.02884, align 1, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02884, i64 64
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02884, i64 128
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02884, i64 192
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !8 ; 2 uses
  %i.t = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.v = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.w = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.y = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.z = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ab = fmul <16 x float> %i.d, %i.x
  %i.ac = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ab, <16 x float> zeroinitializer, i32 4)
  %i.ad = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ac, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ae = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ad, i32 1, <16 x float> %i.ad, i16 -1, i32 4) ; 3 uses
  %i.af = fsub <16 x float> %i.ad, %i.ae
  %i.ag = fadd <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ag, <16 x float> %i.d, i32 4)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ai, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.al = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.aj, <16 x i1> splat (i1 true), i32 4)
  %i.am = fsub <16 x float> %i.al, %i.ak
  %i.an = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> %i.af, <16 x float> %i.ak)
  %i.ao = fmul <16 x float> %i.d, %i.y
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ao, <16 x float> zeroinitializer, i32 4)
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ap, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aq, i32 1, <16 x float> %i.aq, i16 -1, i32 4) ; 3 uses
  %i.as = fsub <16 x float> %i.aq, %i.ar
  %i.at = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.au = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.d, i32 4)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.av, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.aw, <16 x i1> splat (i1 true), i32 4)
  %i.az = fsub <16 x float> %i.ay, %i.ax
  %i.ba = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.as, <16 x float> %i.ax)
  %i.bb = fmul <16 x float> %i.d, %i.z
  %i.bc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bb, <16 x float> zeroinitializer, i32 4)
  %i.bd = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bc, <16 x float> %i.d, i32 4) ; 3 uses
  %i.be = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bd, i32 1, <16 x float> %i.bd, i16 -1, i32 4) ; 3 uses
  %i.bf = fsub <16 x float> %i.bd, %i.be
  %i.bg = fadd <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bg, <16 x float> %i.d, i32 4)
  %i.bi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bi, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bj, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fsub <16 x float> %i.bl, %i.bk
  %i.bn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.bf, <16 x float> %i.bk)
  %i.bo = fmul <16 x float> %i.aa, splat (float 4.095000e+03)
  %i.bp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.an, <16 x float> zeroinitializer, i32 4)
  %i.bq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bp, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.br = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ba, <16 x float> zeroinitializer, i32 4)
  %i.bs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.br, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.bt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bn, <16 x float> zeroinitializer, i32 4)
  %i.bu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bt, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.bv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bo, <16 x float> zeroinitializer, i32 4)
  %i.bw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bv, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.bx = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.by = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bz = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ca = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cb = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.cc = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cd = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ce = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cf = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr %.02785, <16 x i32> %i.cf, i16 -1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.02785, i64 32
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.cg, <16 x i32> %i.ch, i16 -1)
  %i.ci = getelementptr inbounds nuw i8, ptr %.02785, i64 64
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.ci, <16 x i32> %i.cj, i16 -1)
  %i.ck = getelementptr inbounds nuw i8, ptr %.02785, i64 96
  %i.cl = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ce, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.ck, <16 x i32> %i.cl, i16 -1)
  %i.cm = getelementptr inbounds nuw i8, ptr %.02884, i64 256 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02785, i64 128 ; 2 uses
  %i.co = add nuw nsw i32 %.086, 16               ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.f
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cr, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.cq = shl i64 %.025.i, 32                     ; 2 uses
  %i.cr = or disjoint i64 %i.cq, 4294967295       ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cs = or disjoint i64 %i.cq, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.025.i.epil = phi i64 [ %i.cu, %.lr.ph.i.epil ], [ %.025.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ct = shl i64 %.025.i.epil, 4                 ; 2 uses
  %i.cu = or disjoint i64 %i.ct, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil, !llvm.loop !21

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa106 = phi i64 [ %i.cs, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ] ; 3 uses
  %.lcssa105 = phi i64 [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.cu, %.lr.ph.i.epil ]
  %i.cv = trunc i64 %.lcssa105 to i16
  %i.cw = bitcast i16 %i.cv to <16 x i1>
  %i.cx = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.028.lcssa, <16 x i1> %i.cw, <16 x float> zeroinitializer) ; 2 uses
  %i.cy = lshr i64 %.lcssa106, 16
  %i.cz = trunc i64 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 64
  %i.db = bitcast i16 %i.cz to <16 x i1>
  %i.dc = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.da, <16 x i1> %i.db, <16 x float> zeroinitializer) ; 2 uses
  %i.dd = lshr i64 %.lcssa106, 32
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 128
  %i.dg = bitcast i16 %i.de to <16 x i1>
  %i.dh = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.df, <16 x i1> %i.dg, <16 x float> zeroinitializer) ; 2 uses
  %i.di = lshr i64 %.lcssa106, 48
  %i.dj = trunc nuw i64 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 192
  %i.dl = bitcast i16 %i.dj to <16 x i1>
  %i.dm = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.dk, <16 x i1> %i.dl, <16 x float> zeroinitializer) ; 2 uses
  %i.dn = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.do = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dp = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ds = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dt = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.du = fmul <16 x float> %i.d, %i.dr
  %i.dv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.du, <16 x float> zeroinitializer, i32 4)
  %i.dw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dv, <16 x float> %i.d, i32 4) ; 3 uses
  %i.dx = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dw, i32 1, <16 x float> %i.dw, i16 -1, i32 4) ; 3 uses
  %i.dy = fadd <16 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dy, <16 x float> %i.d, i32 4)
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ec = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ea, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ed = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.eb, <16 x i1> splat (i1 true), i32 4)
  %i.ee = fmul <16 x float> %i.d, %i.ds
  %i.ef = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ee, <16 x float> zeroinitializer, i32 4)
  %i.eg = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ef, <16 x float> %i.d, i32 4) ; 3 uses
  %i.eh = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eg, i32 1, <16 x float> %i.eg, i16 -1, i32 4) ; 3 uses
  %i.ei = fadd <16 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ei, <16 x float> %i.d, i32 4)
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.eh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ej, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.ek, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.en = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.el, <16 x i1> splat (i1 true), i32 4)
  %i.eo = fmul <16 x float> %i.d, %i.dt
  %i.ep = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.eo, <16 x float> zeroinitializer, i32 4)
  %i.eq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ep, <16 x float> %i.d, i32 4) ; 3 uses
  %i.er = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eq, i32 1, <16 x float> %i.eq, i16 -1, i32 4) ; 3 uses
  %i.es = fadd <16 x float> %i.er, splat (float 1.000000e+00)
  %i.et = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.es, <16 x float> %i.d, i32 4)
  %i.eu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ev = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.et, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ew = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.eu, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ex = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.ev, <16 x i1> splat (i1 true), i32 4)
  %xtraiter112 = and i32 %i.g, 7                  ; 4 uses
  %i.ey = icmp ult i32 %i.k, 7
  br i1 %i.ey, label %.lr.ph.i.i.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %unroll_iter118 = sub i32 %i.h, %xtraiter112
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new
  %.02334.i.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %i.fa, %.lr.ph.i.i ]
  %niter119 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %niter119.next.7, %.lr.ph.i.i ]
  %i.ez = shl i64 %.02334.i.i, 32                 ; 2 uses
  %i.fa = or disjoint i64 %i.ez, 4294967295       ; 3 uses
  %niter119.next.7 = add nuw i32 %niter119, 8     ; 2 uses
  %niter119.ncmp.7 = icmp eq i32 %niter119.next.7, %unroll_iter118
  br i1 %niter119.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !22

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.fb = or disjoint i64 %i.ez, 4294967280
  %lcmp.mod114.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %.02334.i.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit ], [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i32 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.02334.i.i.epil = phi i64 [ %i.fd, %.lr.ph.i.i.epil ], [ %.02334.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter113 = phi i32 [ %epil.iter113.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.fc = shl i64 %.02334.i.i.epil, 4             ; 2 uses
  %i.fd = or disjoint i64 %i.fc, 15               ; 2 uses
  %epil.iter113.next = add i32 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i32 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, label %.lr.ph.i.i.epil, !llvm.loop !23

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit: ; preds = %.lr.ph.i.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa
  %.lcssa104 = phi i64 [ %i.fb, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fc, %.lr.ph.i.i.epil ] ; 3 uses
  %.lcssa = phi i64 [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fd, %.lr.ph.i.i.epil ]
  %i.fe = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ff = fsub <16 x float> %i.dw, %i.dx
  %i.fg = fsub <16 x float> %i.ed, %i.ec
  %i.fh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fg, <16 x float> %i.ff, <16 x float> %i.ec)
  %i.fi = fsub <16 x float> %i.eg, %i.eh
  %i.fj = fsub <16 x float> %i.en, %i.em
  %i.fk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fj, <16 x float> %i.fi, <16 x float> %i.em)
  %i.fl = fsub <16 x float> %i.eq, %i.er
  %i.fm = fsub <16 x float> %i.ex, %i.ew
  %i.fn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fm, <16 x float> %i.fl, <16 x float> %i.ew)
  %i.fo = fmul <16 x float> %i.fe, splat (float 4.095000e+03)
  %i.fp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fh, <16 x float> zeroinitializer, i32 4)
  %i.fq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fp, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.fr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fk, <16 x float> zeroinitializer, i32 4)
  %i.fs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fr, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.ft = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fn, <16 x float> zeroinitializer, i32 4)
  %i.fu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ft, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.fv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fo, <16 x float> zeroinitializer, i32 4)
  %i.fw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fv, <16 x float> splat (float 4.095000e+03), i32 4) ; 2 uses
  %i.fx = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fy = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fz = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ga = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gb = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.gc = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gd = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ge = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gf = trunc i64 %.lcssa to i16
  %i.gg = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr %.027.lcssa, <16 x i32> %i.gg, i16 %i.gf)
  %i.gh = lshr i64 %.lcssa104, 16
  %i.gi = trunc i64 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 32
  %i.gk = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gj, <16 x i32> %i.gk, i16 %i.gi)
  %i.gl = lshr i64 %.lcssa104, 32
  %i.gm = trunc i64 %i.gl to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 64
  %i.go = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gn, <16 x i32> %i.go, i16 %i.gm)
  %i.gp = lshr i64 %.lcssa104, 48
  %i.gq = trunc nuw i64 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 96
  %i.gs = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ge, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gr, <16 x i32> %i.gs, i16 %i.gq)
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE3EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_5EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i64 noundef %6) #1 {
bb.a:
  %i.a = sitofp i32 %3 to float
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = sdiv i64 %6, 16
  %.tr = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr, 4                          ; 5 uses
  %i.g = trunc i64 %6 to i32                      ; 5 uses
  %i.h = sub i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi ptr [ %4, %bb.a ], [ %i.cm, %.lr.ph ] ; 4 uses
  %.027.lcssa = phi ptr [ %5, %bb.a ], [ %i.cn, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.j = xor i32 %i.f, -1
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  %xtraiter = and i32 %i.g, 7                     ; 4 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub i32 %i.h, %xtraiter
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.086 = phi i32 [ %i.co, %.lr.ph ], [ 0, %bb.a ]
  %.02785 = phi ptr [ %i.cn, %.lr.ph ], [ %5, %bb.a ] ; 5 uses
  %.02884 = phi ptr [ %i.cm, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.m = load <16 x float>, ptr %.02884, align 1, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02884, i64 64
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02884, i64 128
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02884, i64 192
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !8 ; 2 uses
  %i.t = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.v = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.w = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.y = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.z = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ab = fmul <16 x float> %i.d, %i.x
  %i.ac = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ab, <16 x float> zeroinitializer, i32 4)
  %i.ad = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ac, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ae = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ad, i32 1, <16 x float> %i.ad, i16 -1, i32 4) ; 3 uses
  %i.af = fsub <16 x float> %i.ad, %i.ae
  %i.ag = fadd <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ag, <16 x float> %i.d, i32 4)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ai, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.al = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.aj, <16 x i1> splat (i1 true), i32 4)
  %i.am = fsub <16 x float> %i.al, %i.ak
  %i.an = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> %i.af, <16 x float> %i.ak)
  %i.ao = fmul <16 x float> %i.d, %i.y
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ao, <16 x float> zeroinitializer, i32 4)
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ap, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aq, i32 1, <16 x float> %i.aq, i16 -1, i32 4) ; 3 uses
  %i.as = fsub <16 x float> %i.aq, %i.ar
  %i.at = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.au = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.d, i32 4)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.av, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.aw, <16 x i1> splat (i1 true), i32 4)
  %i.az = fsub <16 x float> %i.ay, %i.ax
  %i.ba = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.as, <16 x float> %i.ax)
  %i.bb = fmul <16 x float> %i.d, %i.z
  %i.bc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bb, <16 x float> zeroinitializer, i32 4)
  %i.bd = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bc, <16 x float> %i.d, i32 4) ; 3 uses
  %i.be = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bd, i32 1, <16 x float> %i.bd, i16 -1, i32 4) ; 3 uses
  %i.bf = fsub <16 x float> %i.bd, %i.be
  %i.bg = fadd <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bg, <16 x float> %i.d, i32 4)
  %i.bi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bi, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bj, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fsub <16 x float> %i.bl, %i.bk
  %i.bn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.bf, <16 x float> %i.bk)
  %i.bo = fmul <16 x float> %i.aa, splat (float 6.553500e+04)
  %i.bp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.an, <16 x float> zeroinitializer, i32 4)
  %i.bq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bp, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.br = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ba, <16 x float> zeroinitializer, i32 4)
  %i.bs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.br, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.bt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bn, <16 x float> zeroinitializer, i32 4)
  %i.bu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bt, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.bv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bo, <16 x float> zeroinitializer, i32 4)
  %i.bw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bv, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.bx = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.by = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bz = shufflevector <16 x float> %i.bq, <16 x float> %i.bs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ca = shufflevector <16 x float> %i.bu, <16 x float> %i.bw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cb = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.cc = shufflevector <16 x float> %i.bx, <16 x float> %i.by, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cd = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ce = shufflevector <16 x float> %i.bz, <16 x float> %i.ca, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.cf = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr %.02785, <16 x i32> %i.cf, i16 -1)
  %i.cg = getelementptr inbounds nuw i8, ptr %.02785, i64 32
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.cg, <16 x i32> %i.ch, i16 -1)
  %i.ci = getelementptr inbounds nuw i8, ptr %.02785, i64 64
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.ci, <16 x i32> %i.cj, i16 -1)
  %i.ck = getelementptr inbounds nuw i8, ptr %.02785, i64 96
  %i.cl = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ce, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.ck, <16 x i32> %i.cl, i16 -1)
  %i.cm = getelementptr inbounds nuw i8, ptr %.02884, i64 256 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02785, i64 128 ; 2 uses
  %i.co = add nuw nsw i32 %.086, 16               ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.f
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !24

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cr, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.cq = shl i64 %.025.i, 32                     ; 2 uses
  %i.cr = or disjoint i64 %i.cq, 4294967295       ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cs = or disjoint i64 %i.cq, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.025.i.epil = phi i64 [ %i.cu, %.lr.ph.i.epil ], [ %.025.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ct = shl i64 %.025.i.epil, 4                 ; 2 uses
  %i.cu = or disjoint i64 %i.ct, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil, !llvm.loop !25

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa106 = phi i64 [ %i.cs, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ] ; 3 uses
  %.lcssa105 = phi i64 [ %i.cr, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.cu, %.lr.ph.i.epil ]
  %i.cv = trunc i64 %.lcssa105 to i16
  %i.cw = bitcast i16 %i.cv to <16 x i1>
  %i.cx = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.028.lcssa, <16 x i1> %i.cw, <16 x float> zeroinitializer) ; 2 uses
  %i.cy = lshr i64 %.lcssa106, 16
  %i.cz = trunc i64 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 64
  %i.db = bitcast i16 %i.cz to <16 x i1>
  %i.dc = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.da, <16 x i1> %i.db, <16 x float> zeroinitializer) ; 2 uses
  %i.dd = lshr i64 %.lcssa106, 32
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 128
  %i.dg = bitcast i16 %i.de to <16 x i1>
  %i.dh = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.df, <16 x i1> %i.dg, <16 x float> zeroinitializer) ; 2 uses
  %i.di = lshr i64 %.lcssa106, 48
  %i.dj = trunc nuw i64 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 192
  %i.dl = bitcast i16 %i.dj to <16 x i1>
  %i.dm = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.dk, <16 x i1> %i.dl, <16 x float> zeroinitializer) ; 2 uses
  %i.dn = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.do = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dp = shufflevector <16 x float> %i.cx, <16 x float> %i.dc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x float> %i.dh, <16 x float> %i.dm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dr = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ds = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dt = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.du = fmul <16 x float> %i.d, %i.dr
  %i.dv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.du, <16 x float> zeroinitializer, i32 4)
  %i.dw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dv, <16 x float> %i.d, i32 4) ; 3 uses
  %i.dx = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dw, i32 1, <16 x float> %i.dw, i16 -1, i32 4) ; 3 uses
  %i.dy = fadd <16 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dy, <16 x float> %i.d, i32 4)
  %i.ea = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ec = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ea, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ed = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.eb, <16 x i1> splat (i1 true), i32 4)
  %i.ee = fmul <16 x float> %i.d, %i.ds
  %i.ef = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ee, <16 x float> zeroinitializer, i32 4)
  %i.eg = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ef, <16 x float> %i.d, i32 4) ; 3 uses
  %i.eh = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eg, i32 1, <16 x float> %i.eg, i16 -1, i32 4) ; 3 uses
  %i.ei = fadd <16 x float> %i.eh, splat (float 1.000000e+00)
  %i.ej = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ei, <16 x float> %i.d, i32 4)
  %i.ek = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.eh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ej, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.ek, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.en = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.el, <16 x i1> splat (i1 true), i32 4)
  %i.eo = fmul <16 x float> %i.d, %i.dt
  %i.ep = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.eo, <16 x float> zeroinitializer, i32 4)
  %i.eq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ep, <16 x float> %i.d, i32 4) ; 3 uses
  %i.er = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eq, i32 1, <16 x float> %i.eq, i16 -1, i32 4) ; 3 uses
  %i.es = fadd <16 x float> %i.er, splat (float 1.000000e+00)
  %i.et = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.es, <16 x float> %i.d, i32 4)
  %i.eu = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.er, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ev = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.et, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ew = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.eu, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ex = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.ev, <16 x i1> splat (i1 true), i32 4)
  %xtraiter112 = and i32 %i.g, 7                  ; 4 uses
  %i.ey = icmp ult i32 %i.k, 7
  br i1 %i.ey, label %.lr.ph.i.i.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %unroll_iter118 = sub i32 %i.h, %xtraiter112
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new
  %.02334.i.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %i.fa, %.lr.ph.i.i ]
  %niter119 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %niter119.next.7, %.lr.ph.i.i ]
  %i.ez = shl i64 %.02334.i.i, 32                 ; 2 uses
  %i.fa = or disjoint i64 %i.ez, 4294967295       ; 3 uses
  %niter119.next.7 = add nuw i32 %niter119, 8     ; 2 uses
  %niter119.ncmp.7 = icmp eq i32 %niter119.next.7, %unroll_iter118
  br i1 %niter119.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !26

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.fb = or disjoint i64 %i.ez, 4294967280
  %lcmp.mod114.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %.02334.i.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit ], [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i32 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.02334.i.i.epil = phi i64 [ %i.fd, %.lr.ph.i.i.epil ], [ %.02334.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter113 = phi i32 [ %epil.iter113.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.fc = shl i64 %.02334.i.i.epil, 4             ; 2 uses
  %i.fd = or disjoint i64 %i.fc, 15               ; 2 uses
  %epil.iter113.next = add i32 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i32 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, label %.lr.ph.i.i.epil, !llvm.loop !27

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit: ; preds = %.lr.ph.i.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa
  %.lcssa104 = phi i64 [ %i.fb, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fc, %.lr.ph.i.i.epil ] ; 3 uses
  %.lcssa = phi i64 [ %i.fa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.fd, %.lr.ph.i.i.epil ]
  %i.fe = shufflevector <16 x float> %i.dp, <16 x float> %i.dq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.ff = fsub <16 x float> %i.dw, %i.dx
  %i.fg = fsub <16 x float> %i.ed, %i.ec
  %i.fh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fg, <16 x float> %i.ff, <16 x float> %i.ec)
  %i.fi = fsub <16 x float> %i.eg, %i.eh
  %i.fj = fsub <16 x float> %i.en, %i.em
  %i.fk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fj, <16 x float> %i.fi, <16 x float> %i.em)
  %i.fl = fsub <16 x float> %i.eq, %i.er
  %i.fm = fsub <16 x float> %i.ex, %i.ew
  %i.fn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fm, <16 x float> %i.fl, <16 x float> %i.ew)
  %i.fo = fmul <16 x float> %i.fe, splat (float 6.553500e+04)
  %i.fp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fh, <16 x float> zeroinitializer, i32 4)
  %i.fq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fp, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.fr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fk, <16 x float> zeroinitializer, i32 4)
  %i.fs = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fr, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.ft = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fn, <16 x float> zeroinitializer, i32 4)
  %i.fu = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ft, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.fv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.fo, <16 x float> zeroinitializer, i32 4)
  %i.fw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.fv, <16 x float> splat (float 6.553500e+04), i32 4) ; 2 uses
  %i.fx = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fy = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fz = shufflevector <16 x float> %i.fq, <16 x float> %i.fs, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ga = shufflevector <16 x float> %i.fu, <16 x float> %i.fw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gb = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.gc = shufflevector <16 x float> %i.fx, <16 x float> %i.fy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gd = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ge = shufflevector <16 x float> %i.fz, <16 x float> %i.ga, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.gf = trunc i64 %.lcssa to i16
  %i.gg = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr %.027.lcssa, <16 x i32> %i.gg, i16 %i.gf)
  %i.gh = lshr i64 %.lcssa104, 16
  %i.gi = trunc i64 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 32
  %i.gk = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gj, <16 x i32> %i.gk, i16 %i.gi)
  %i.gl = lshr i64 %.lcssa104, 32
  %i.gm = trunc i64 %i.gl to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 64
  %i.go = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.gd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gn, <16 x i32> %i.go, i16 %i.gm)
  %i.gp = lshr i64 %.lcssa104, 48
  %i.gq = trunc nuw i64 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 96
  %i.gs = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ge, <16 x i32> zeroinitializer, i16 -1, i32 4)
  tail call void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr nonnull %i.gr, <16 x i32> %i.gs, i16 %i.gq)
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE5EE11StoreMaskedEPtDv16_fS4_S4_S4_j.exit, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_7EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = sitofp i32 %3 to float
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = sdiv i64 %6, 16
  %.tr = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr, 4                          ; 5 uses
  %i.g = trunc i64 %6 to i32                      ; 5 uses
  %i.h = sub i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.028.lcssa = phi ptr [ %4, %bb.a ], [ %i.cd, %.lr.ph ] ; 4 uses
  %.027.lcssa = phi ptr [ %5, %bb.a ], [ %i.ce, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.j = xor i32 %i.f, -1
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  %xtraiter = and i32 %i.g, 7                     ; 4 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub i32 %i.h, %xtraiter
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.090 = phi i32 [ %i.cf, %.lr.ph ], [ 0, %bb.a ]
  %.02789 = phi ptr [ %i.ce, %.lr.ph ], [ %5, %bb.a ] ; 3 uses
  %.02888 = phi ptr [ %i.cd, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.m = load <16 x float>, ptr %.02888, align 1, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02888, i64 64
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02888, i64 128
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02888, i64 192
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !8 ; 2 uses
  %i.t = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.v = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.w = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.y = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.z = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ab = fmul <16 x float> %i.d, %i.x
  %i.ac = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ab, <16 x float> zeroinitializer, i32 4)
  %i.ad = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ac, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ae = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ad, i32 1, <16 x float> %i.ad, i16 -1, i32 4) ; 3 uses
  %i.af = fsub <16 x float> %i.ad, %i.ae
  %i.ag = fadd <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ag, <16 x float> %i.d, i32 4)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ai, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.al = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.aj, <16 x i1> splat (i1 true), i32 4)
  %i.am = fsub <16 x float> %i.al, %i.ak
  %i.an = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> %i.af, <16 x float> %i.ak) ; 2 uses
  %i.ao = fmul <16 x float> %i.d, %i.y
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ao, <16 x float> zeroinitializer, i32 4)
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ap, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aq, i32 1, <16 x float> %i.aq, i16 -1, i32 4) ; 3 uses
  %i.as = fsub <16 x float> %i.aq, %i.ar
  %i.at = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.au = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.d, i32 4)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.av, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.aw, <16 x i1> splat (i1 true), i32 4)
  %i.az = fsub <16 x float> %i.ay, %i.ax
  %i.ba = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.as, <16 x float> %i.ax) ; 2 uses
  %i.bb = fmul <16 x float> %i.d, %i.z
  %i.bc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bb, <16 x float> zeroinitializer, i32 4)
  %i.bd = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bc, <16 x float> %i.d, i32 4) ; 3 uses
  %i.be = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bd, i32 1, <16 x float> %i.bd, i16 -1, i32 4) ; 3 uses
  %i.bf = fsub <16 x float> %i.bd, %i.be
  %i.bg = fadd <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bg, <16 x float> %i.d, i32 4)
  %i.bi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bi, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bj, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fsub <16 x float> %i.bl, %i.bk
  %i.bn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.bf, <16 x float> %i.bk) ; 2 uses
  %i.bo = shufflevector <16 x float> %i.an, <16 x float> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bp = shufflevector <16 x float> %i.bn, <16 x float> %i.aa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bq = shufflevector <16 x float> %i.an, <16 x float> %i.ba, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.br = shufflevector <16 x float> %i.bn, <16 x float> %i.aa, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bs = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bt = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bu = shufflevector <16 x float> %i.bq, <16 x float> %i.br, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bv = shufflevector <16 x float> %i.bq, <16 x float> %i.br, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bw = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.bs, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.bx = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.bt, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.by = shufflevector <16 x i16> %i.bw, <16 x i16> %i.bx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bz = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.bu, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.ca = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.bv, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.cb = shufflevector <16 x i16> %i.bz, <16 x i16> %i.ca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <32 x i16> %i.by, ptr %.02789, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.02789, i64 64
  store <32 x i16> %i.cb, ptr %i.cc, align 1, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %.02888, i64 256 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02789, i64 128 ; 2 uses
  %i.cf = add nuw nsw i32 %.090, 16               ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.f
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !28

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ci, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ch = shl i64 %.025.i, 32                     ; 2 uses
  %i.ci = or disjoint i64 %i.ch, 4294967295       ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cj = or disjoint i64 %i.ch, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ci, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.025.i.epil = phi i64 [ %i.cl, %.lr.ph.i.epil ], [ %.025.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ck = shl i64 %.025.i.epil, 4                 ; 2 uses
  %i.cl = or disjoint i64 %i.ck, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil, !llvm.loop !29

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa110 = phi i64 [ %i.cj, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.ck, %.lr.ph.i.epil ] ; 3 uses
  %.lcssa109 = phi i64 [ %i.ci, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.cl, %.lr.ph.i.epil ]
  %i.cm = trunc i64 %.lcssa109 to i16
  %i.cn = bitcast i16 %i.cm to <16 x i1>
  %i.co = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.028.lcssa, <16 x i1> %i.cn, <16 x float> zeroinitializer) ; 2 uses
  %i.cp = lshr i64 %.lcssa110, 16
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 64
  %i.cs = bitcast i16 %i.cq to <16 x i1>
  %i.ct = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.cr, <16 x i1> %i.cs, <16 x float> zeroinitializer) ; 2 uses
  %i.cu = lshr i64 %.lcssa110, 32
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 128
  %i.cx = bitcast i16 %i.cv to <16 x i1>
  %i.cy = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.cw, <16 x i1> %i.cx, <16 x float> zeroinitializer) ; 2 uses
  %i.cz = lshr i64 %.lcssa110, 48
  %i.da = trunc nuw i64 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %.028.lcssa, i64 192
  %i.dc = bitcast i16 %i.da to <16 x i1>
  %i.dd = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.db, <16 x i1> %i.dc, <16 x float> zeroinitializer) ; 2 uses
  %i.de = shufflevector <16 x float> %i.co, <16 x float> %i.ct, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.df = shufflevector <16 x float> %i.cy, <16 x float> %i.dd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dg = shufflevector <16 x float> %i.co, <16 x float> %i.ct, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dh = shufflevector <16 x float> %i.cy, <16 x float> %i.dd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.di = shufflevector <16 x float> %i.de, <16 x float> %i.df, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.dj = shufflevector <16 x float> %i.de, <16 x float> %i.df, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dk = shufflevector <16 x float> %i.dg, <16 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.dl = fmul <16 x float> %i.d, %i.di
  %i.dm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.dl, <16 x float> zeroinitializer, i32 4)
  %i.dn = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dm, <16 x float> %i.d, i32 4) ; 3 uses
  %i.do = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dn, i32 1, <16 x float> %i.dn, i16 -1, i32 4) ; 3 uses
  %i.dp = fadd <16 x float> %i.do, splat (float 1.000000e+00)
  %i.dq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dp, <16 x float> %i.d, i32 4)
  %i.dr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.do, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ds = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.dr, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.du = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ds, <16 x i1> splat (i1 true), i32 4)
  %i.dv = fmul <16 x float> %i.d, %i.dj
  %i.dw = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.dv, <16 x float> zeroinitializer, i32 4)
  %i.dx = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dw, <16 x float> %i.d, i32 4) ; 3 uses
  %i.dy = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dx, i32 1, <16 x float> %i.dx, i16 -1, i32 4) ; 3 uses
  %i.dz = fadd <16 x float> %i.dy, splat (float 1.000000e+00)
  %i.ea = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dz, <16 x float> %i.d, i32 4)
  %i.eb = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dy, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ec = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ea, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ed = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.eb, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ee = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.ec, <16 x i1> splat (i1 true), i32 4)
  %i.ef = fmul <16 x float> %i.d, %i.dk
  %i.eg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ef, <16 x float> zeroinitializer, i32 4)
  %i.eh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.eg, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ei = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.eh, i32 1, <16 x float> %i.eh, i16 -1, i32 4) ; 3 uses
  %i.ej = fadd <16 x float> %i.ei, splat (float 1.000000e+00)
  %i.ek = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ej, <16 x float> %i.d, i32 4)
  %i.el = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ei, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.em = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ek, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.en = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.el, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.eo = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.em, <16 x i1> splat (i1 true), i32 4)
  %xtraiter116 = and i32 %i.g, 7                  ; 4 uses
  %i.ep = icmp ult i32 %i.k, 7
  br i1 %i.ep, label %.lr.ph.i42.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %unroll_iter122 = sub i32 %i.h, %xtraiter116
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new
  %.024.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %i.er, %.lr.ph.i42 ]
  %niter123 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %niter123.next.7, %.lr.ph.i42 ]
  %i.eq = shl i64 %.024.i, 16                     ; 2 uses
  %i.er = or disjoint i64 %i.eq, 65535            ; 3 uses
  %niter123.next.7 = add nuw i32 %niter123, 8     ; 2 uses
  %niter123.ncmp.7 = icmp eq i32 %niter123.next.7, %unroll_iter122
  br i1 %niter123.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i42, !llvm.loop !30

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i42
  %i.es = or disjoint i64 %i.eq, 65532
  %lcmp.mod118.not = icmp eq i32 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit, label %.lr.ph.i42.epil.preheader

.lr.ph.i42.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %.024.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit ], [ %i.er, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i32 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph.i42.epil

.lr.ph.i42.epil:                                  ; preds = %.lr.ph.i42.epil, %.lr.ph.i42.epil.preheader
  %.024.i.epil = phi i64 [ %i.eu, %.lr.ph.i42.epil ], [ %.024.i.epil.init, %.lr.ph.i42.epil.preheader ]
  %epil.iter117 = phi i32 [ %epil.iter117.next, %.lr.ph.i42.epil ], [ 0, %.lr.ph.i42.epil.preheader ]
  %i.et = shl i64 %.024.i.epil, 2                 ; 2 uses
  %i.eu = or disjoint i64 %i.et, 3                ; 2 uses
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit, label %.lr.ph.i42.epil, !llvm.loop !31

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i42.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa108 = phi i64 [ %i.es, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.et, %.lr.ph.i42.epil ]
  %.lcssa = phi i64 [ %i.er, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.eu, %.lr.ph.i42.epil ]
  %i.ev = shufflevector <16 x float> %i.dg, <16 x float> %i.dh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ew = fsub <16 x float> %i.dn, %i.do
  %i.ex = fsub <16 x float> %i.du, %i.dt
  %i.ey = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ex, <16 x float> %i.ew, <16 x float> %i.dt) ; 2 uses
  %i.ez = fsub <16 x float> %i.dx, %i.dy
  %i.fa = fsub <16 x float> %i.ee, %i.ed
  %i.fb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fa, <16 x float> %i.ez, <16 x float> %i.ed) ; 2 uses
  %i.fc = fsub <16 x float> %i.eh, %i.ei
  %i.fd = fsub <16 x float> %i.eo, %i.en
  %i.fe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.fd, <16 x float> %i.fc, <16 x float> %i.en) ; 2 uses
  %i.ff = shufflevector <16 x float> %i.ey, <16 x float> %i.fb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fg = shufflevector <16 x float> %i.fe, <16 x float> %i.ev, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fh = shufflevector <16 x float> %i.ey, <16 x float> %i.fb, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fi = shufflevector <16 x float> %i.fe, <16 x float> %i.ev, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fj = shufflevector <16 x float> %i.ff, <16 x float> %i.fg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.fk = shufflevector <16 x float> %i.ff, <16 x float> %i.fg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.fl = shufflevector <16 x float> %i.fh, <16 x float> %i.fi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.fm = shufflevector <16 x float> %i.fh, <16 x float> %i.fi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.fn = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.fj, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.fo = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.fk, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.fp = shufflevector <16 x i16> %i.fn, <16 x i16> %i.fo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fq = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.fl, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.fr = tail call <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float> %i.fm, i32 0, <16 x i16> zeroinitializer, i16 -1)
  %i.fs = shufflevector <16 x i16> %i.fq, <16 x i16> %i.fr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ft = trunc i64 %.lcssa to i16
  %i.fu = bitcast <32 x i16> %i.fp to <16 x i32>
  %i.fv = bitcast i16 %i.ft to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.fu, ptr align 1 %.027.lcssa, <16 x i1> %i.fv)
  %i.fw = lshr i64 %.lcssa108, 16
  %i.fx = trunc i64 %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 64
  %i.fz = bitcast <32 x i16> %i.fs to <16 x i32>
  %i.ga = bitcast i16 %i.fx to <16 x i1>
  tail call void @llvm.masked.store.v16i32.p0(<16 x i32> %i.fz, ptr nonnull align 1 %i.fy, <16 x i1> %i.ga)
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE7EE11StoreMaskedEPN9Imath_3_14halfEDv16_fS6_S6_S6_j.exit, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_8EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = sitofp i32 %3 to float
  %i.b = fadd float %i.a, -1.000000e+00
  %i.c = insertelement <16 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <16 x float> %i.c, <16 x float> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.e = sdiv i64 %6, 16
  %.tr = trunc i64 %i.e to i32
  %i.f = shl i32 %.tr, 4                          ; 5 uses
  %i.g = trunc i64 %6 to i32                      ; 5 uses
  %i.h = sub i32 %i.g, %i.f                       ; 2 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.026.lcssa = phi ptr [ %4, %bb.a ], [ %i.bz, %.lr.ph ] ; 4 uses
  %.025.lcssa = phi ptr [ %5, %bb.a ], [ %i.ca, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.j = xor i32 %i.f, -1
  %i.k = add i32 %i.j, %i.g                       ; 2 uses
  %xtraiter = and i32 %i.g, 7                     ; 4 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub i32 %i.h, %xtraiter
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.083 = phi i32 [ %i.cb, %.lr.ph ], [ 0, %bb.a ]
  %.02582 = phi ptr [ %i.ca, %.lr.ph ], [ %5, %bb.a ] ; 5 uses
  %.02681 = phi ptr [ %i.bz, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.m = load <16 x float>, ptr %.02681, align 1, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02681, i64 64
  %i.o = load <16 x float>, ptr %i.n, align 1, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02681, i64 128
  %i.q = load <16 x float>, ptr %i.p, align 1, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02681, i64 192
  %i.s = load <16 x float>, ptr %i.r, align 1, !tbaa !8 ; 2 uses
  %i.t = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.u = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.v = shufflevector <16 x float> %i.m, <16 x float> %i.o, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.w = shufflevector <16 x float> %i.q, <16 x float> %i.s, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.x = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.y = shufflevector <16 x float> %i.t, <16 x float> %i.u, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.z = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aa = shufflevector <16 x float> %i.v, <16 x float> %i.w, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ab = fmul <16 x float> %i.d, %i.x
  %i.ac = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ab, <16 x float> zeroinitializer, i32 4)
  %i.ad = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ac, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ae = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ad, i32 1, <16 x float> %i.ad, i16 -1, i32 4) ; 3 uses
  %i.af = fsub <16 x float> %i.ad, %i.ae
  %i.ag = fadd <16 x float> %i.ae, splat (float 1.000000e+00)
  %i.ah = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ag, <16 x float> %i.d, i32 4)
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ah, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ak = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.ai, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.al = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.aj, <16 x i1> splat (i1 true), i32 4)
  %i.am = fsub <16 x float> %i.al, %i.ak
  %i.an = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.am, <16 x float> %i.af, <16 x float> %i.ak) ; 2 uses
  %i.ao = fmul <16 x float> %i.d, %i.y
  %i.ap = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ao, <16 x float> zeroinitializer, i32 4)
  %i.aq = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ap, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ar = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aq, i32 1, <16 x float> %i.aq, i16 -1, i32 4) ; 3 uses
  %i.as = fsub <16 x float> %i.aq, %i.ar
  %i.at = fadd <16 x float> %i.ar, splat (float 1.000000e+00)
  %i.au = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.at, <16 x float> %i.d, i32 4)
  %i.av = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ar, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.au, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ax = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.av, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ay = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.aw, <16 x i1> splat (i1 true), i32 4)
  %i.az = fsub <16 x float> %i.ay, %i.ax
  %i.ba = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> %i.as, <16 x float> %i.ax) ; 2 uses
  %i.bb = fmul <16 x float> %i.d, %i.z
  %i.bc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bb, <16 x float> zeroinitializer, i32 4)
  %i.bd = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bc, <16 x float> %i.d, i32 4) ; 3 uses
  %i.be = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bd, i32 1, <16 x float> %i.bd, i16 -1, i32 4) ; 3 uses
  %i.bf = fsub <16 x float> %i.bd, %i.be
  %i.bg = fadd <16 x float> %i.be, splat (float 1.000000e+00)
  %i.bh = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.bg, <16 x float> %i.d, i32 4)
  %i.bi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.be, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bi, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.bj, <16 x i1> splat (i1 true), i32 4)
  %i.bm = fsub <16 x float> %i.bl, %i.bk
  %i.bn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.bf, <16 x float> %i.bk) ; 2 uses
  %i.bo = shufflevector <16 x float> %i.an, <16 x float> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bp = shufflevector <16 x float> %i.bn, <16 x float> %i.aa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bq = shufflevector <16 x float> %i.an, <16 x float> %i.ba, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.br = shufflevector <16 x float> %i.bn, <16 x float> %i.aa, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bs = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bt = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.bu = shufflevector <16 x float> %i.bq, <16 x float> %i.br, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.bv = shufflevector <16 x float> %i.bq, <16 x float> %i.br, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  store <16 x float> %i.bs, ptr %.02582, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.02582, i64 64
  store <16 x float> %i.bt, ptr %i.bw, align 1, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.02582, i64 128
  store <16 x float> %i.bu, ptr %i.bx, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.02582, i64 192
  store <16 x float> %i.bv, ptr %i.by, align 1, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.02681, i64 256 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02582, i64 256 ; 2 uses
  %i.cb = add nuw nsw i32 %.083, 16               ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.f
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !32

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ce, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.cd = shl i64 %.025.i, 32                     ; 2 uses
  %i.ce = or disjoint i64 %i.cd, 4294967295       ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa: ; preds = %.lr.ph.i
  %i.cf = or disjoint i64 %i.cd, 4294967280
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa, %.lr.ph.i.preheader
  %.025.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ce, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.025.i.epil = phi i64 [ %i.ch, %.lr.ph.i.epil ], [ %.025.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cg = shl i64 %.025.i.epil, 4                 ; 2 uses
  %i.ch = or disjoint i64 %i.cg, 15               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit, label %.lr.ph.i.epil, !llvm.loop !33

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit: ; preds = %.lr.ph.i.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa
  %.lcssa103 = phi i64 [ %i.cf, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.cg, %.lr.ph.i.epil ] ; 3 uses
  %.lcssa102 = phi i64 [ %i.ce, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.unr-lcssa ], [ %i.ch, %.lr.ph.i.epil ]
  %i.ci = trunc i64 %.lcssa102 to i16
  %i.cj = bitcast i16 %i.ci to <16 x i1>
  %i.ck = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr align 1 %.026.lcssa, <16 x i1> %i.cj, <16 x float> zeroinitializer) ; 2 uses
  %i.cl = lshr i64 %.lcssa103, 16
  %i.cm = trunc i64 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 64
  %i.co = bitcast i16 %i.cm to <16 x i1>
  %i.cp = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.cn, <16 x i1> %i.co, <16 x float> zeroinitializer) ; 2 uses
  %i.cq = lshr i64 %.lcssa103, 32
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 128
  %i.ct = bitcast i16 %i.cr to <16 x i1>
  %i.cu = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.cs, <16 x i1> %i.ct, <16 x float> zeroinitializer) ; 2 uses
  %i.cv = lshr i64 %.lcssa103, 48
  %i.cw = trunc nuw i64 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 192
  %i.cy = bitcast i16 %i.cw to <16 x i1>
  %i.cz = tail call noundef <16 x float> @llvm.masked.load.v16f32.p0(ptr nonnull align 1 %i.cx, <16 x i1> %i.cy, <16 x float> zeroinitializer) ; 2 uses
  %i.da = shufflevector <16 x float> %i.ck, <16 x float> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.db = shufflevector <16 x float> %i.cu, <16 x float> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dc = shufflevector <16 x float> %i.ck, <16 x float> %i.cp, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dd = shufflevector <16 x float> %i.cu, <16 x float> %i.cz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.de = shufflevector <16 x float> %i.da, <16 x float> %i.db, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.df = shufflevector <16 x float> %i.da, <16 x float> %i.db, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.dg = shufflevector <16 x float> %i.dc, <16 x float> %i.dd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.dh = fmul <16 x float> %i.d, %i.de
  %i.di = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.dh, <16 x float> zeroinitializer, i32 4)
  %i.dj = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.di, <16 x float> %i.d, i32 4) ; 3 uses
  %i.dk = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dj, i32 1, <16 x float> %i.dj, i16 -1, i32 4) ; 3 uses
  %i.dl = fadd <16 x float> %i.dk, splat (float 1.000000e+00)
  %i.dm = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dl, <16 x float> %i.d, i32 4)
  %i.dn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.do = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.dn, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.dq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %0, <16 x i32> %i.do, <16 x i1> splat (i1 true), i32 4)
  %i.dr = fmul <16 x float> %i.d, %i.df
  %i.ds = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.dr, <16 x float> zeroinitializer, i32 4)
  %i.dt = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ds, <16 x float> %i.d, i32 4) ; 3 uses
  %i.du = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dt, i32 1, <16 x float> %i.dt, i16 -1, i32 4) ; 3 uses
  %i.dv = fadd <16 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.dv, <16 x float> %i.d, i32 4)
  %i.dx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.du, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.dw, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.dx, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ea = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %1, <16 x i32> %i.dy, <16 x i1> splat (i1 true), i32 4)
  %i.eb = fmul <16 x float> %i.d, %i.dg
  %i.ec = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.eb, <16 x float> zeroinitializer, i32 4)
  %i.ed = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ec, <16 x float> %i.d, i32 4) ; 3 uses
  %i.ee = tail call noundef <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ed, i32 1, <16 x float> %i.ed, i16 -1, i32 4) ; 3 uses
  %i.ef = fadd <16 x float> %i.ee, splat (float 1.000000e+00)
  %i.eg = tail call noundef <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> %i.ef, <16 x float> %i.d, i32 4)
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ee, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ei = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.eg, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ej = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.eh, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ek = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %2, <16 x i32> %i.ei, <16 x i1> splat (i1 true), i32 4)
  %xtraiter109 = and i32 %i.g, 7                  ; 4 uses
  %i.el = icmp ult i32 %i.k, 7
  br i1 %i.el, label %.lr.ph.i40.epil.preheader, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new: ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %unroll_iter115 = sub i32 %i.h, %xtraiter109
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new
  %.01927.i = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %i.en, %.lr.ph.i40 ]
  %niter116 = phi i32 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit.new ], [ %niter116.next.7, %.lr.ph.i40 ]
  %i.em = shl i64 %.01927.i, 32                   ; 2 uses
  %i.en = or disjoint i64 %i.em, 4294967295       ; 3 uses
  %niter116.next.7 = add nuw i32 %niter116, 8     ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa, label %.lr.ph.i40, !llvm.loop !34

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa: ; preds = %.lr.ph.i40
  %i.eo = or disjoint i64 %i.em, 4294967280
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit, label %.lr.ph.i40.epil.preheader

.lr.ph.i40.epil.preheader:                        ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit
  %.01927.i.epil.init = phi i64 [ 0, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE10LoadMaskedEPKfRDv16_fS6_S6_S6_j.exit ], [ %i.en, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i32 %xtraiter109, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i40.epil

.lr.ph.i40.epil:                                  ; preds = %.lr.ph.i40.epil, %.lr.ph.i40.epil.preheader
  %.01927.i.epil = phi i64 [ %i.eq, %.lr.ph.i40.epil ], [ %.01927.i.epil.init, %.lr.ph.i40.epil.preheader ]
  %epil.iter110 = phi i32 [ %epil.iter110.next, %.lr.ph.i40.epil ], [ 0, %.lr.ph.i40.epil.preheader ]
  %i.ep = shl i64 %.01927.i.epil, 4               ; 2 uses
  %i.eq = or disjoint i64 %i.ep, 15               ; 2 uses
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit, label %.lr.ph.i40.epil, !llvm.loop !35

_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit: ; preds = %.lr.ph.i40.epil, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa
  %.lcssa101 = phi i64 [ %i.eo, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.ep, %.lr.ph.i40.epil ] ; 3 uses
  %.lcssa = phi i64 [ %i.en, %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit.unr-lcssa ], [ %i.eq, %.lr.ph.i40.epil ]
  %i.er = shufflevector <16 x float> %i.dc, <16 x float> %i.dd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.es = fsub <16 x float> %i.dj, %i.dk
  %i.et = fsub <16 x float> %i.dq, %i.dp
  %i.eu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.et, <16 x float> %i.es, <16 x float> %i.dp) ; 2 uses
  %i.ev = fsub <16 x float> %i.dt, %i.du
  %i.ew = fsub <16 x float> %i.ea, %i.dz
  %i.ex = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ew, <16 x float> %i.ev, <16 x float> %i.dz) ; 2 uses
  %i.ey = fsub <16 x float> %i.ed, %i.ee
  %i.ez = fsub <16 x float> %i.ek, %i.ej
  %i.fa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ez, <16 x float> %i.ey, <16 x float> %i.ej) ; 2 uses
  %i.fb = shufflevector <16 x float> %i.eu, <16 x float> %i.ex, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fc = shufflevector <16 x float> %i.fa, <16 x float> %i.er, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.fd = shufflevector <16 x float> %i.eu, <16 x float> %i.ex, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fe = shufflevector <16 x float> %i.fa, <16 x float> %i.er, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ff = shufflevector <16 x float> %i.fb, <16 x float> %i.fc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.fg = shufflevector <16 x float> %i.fb, <16 x float> %i.fc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.fh = shufflevector <16 x float> %i.fd, <16 x float> %i.fe, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.fi = shufflevector <16 x float> %i.fd, <16 x float> %i.fe, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.fj = trunc i64 %.lcssa to i16
  %i.fk = bitcast i16 %i.fj to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.ff, ptr align 1 %.025.lcssa, <16 x i1> %i.fk)
  %i.fl = lshr i64 %.lcssa101, 16
  %i.fm = trunc i64 %i.fl to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 64
  %i.fo = bitcast i16 %i.fm to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.fg, ptr nonnull align 1 %i.fn, <16 x i1> %i.fo)
  %i.fp = lshr i64 %.lcssa101, 32
  %i.fq = trunc i64 %i.fp to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 128
  %i.fs = bitcast i16 %i.fq to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.fh, ptr nonnull align 1 %i.fr, <16 x i1> %i.fs)
  %i.ft = lshr i64 %.lcssa101, 48
  %i.fu = trunc nuw i64 %i.ft to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 192
  %i.fw = bitcast i16 %i.fu to <16 x i1>
  tail call void @llvm.masked.store.v16f32.p0(<16 x float> %i.fi, ptr nonnull align 1 %i.fv, <16 x i1> %i.fw)
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_514AVX512RGBAPackILNS_8BitDepthE8EE11StoreMaskedEPfDv16_fS4_S4_S4_j.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.x86.avx512.mask.pmov.db.mem.512(ptr, <16 x i32>, i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr captures(none), <16 x i1>, <16 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.x86.avx512.mask.pmov.dw.mem.512(ptr, <16 x i32>, i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx512.mask.vcvtps2ph.512(<16 x float>, i32 immarg, <16 x i16>, i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i32.p0(<16 x i32>, ptr captures(none), <16 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr captures(none), <16 x i1>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !13}
end_hunk_0
