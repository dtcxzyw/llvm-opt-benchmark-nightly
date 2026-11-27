Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut1DOpCPU_AVX2?download=true
inline.NumInlined: 91
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_1::half" = type { i16 }

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_521AVX2GetLut1DApplyFuncENS_8BitDepthES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %cond = icmp eq i32 %0, 8
  br i1 %cond, label %bb.b, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 1, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.d:                                             ; preds = %bb.b
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.e:                                             ; preds = %bb.b
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.f:                                             ; preds = %bb.b
  %i.a = tail call noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv()
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = and i32 %i.b, 8192
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.h, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.g:                                             ; preds = %bb.b
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

bb.h:                                             ; preds = %bb.f, %bb.b
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_120GetConvertInBitDepthILNS_8BitDepthE8EEEPFvPKfS4_S4_iPKvPvlES2_.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_8EEEvPKfS4_S4_iPKvPvl, %bb.g ], [ @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_2EEEvPKfS4_S4_iPKvPvl, %bb.c ], [ @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_3EEEvPKfS4_S4_iPKvPvl, %bb.d ], [ @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_5EEEvPKfS4_S4_iPKvPvl, %bb.e ], [ @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl, %bb.b ], [ @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_7EEEvPKfS4_S4_iPKvPvl, %bb.f ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_1EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = sitofp i32 %3 to float
  %i.d = fadd float %i.c, -1.000000e+00
  %i.e = insertelement <8 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.g = sdiv i64 %6, 8
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 3                          ; 4 uses
  %i.i = trunc i64 %6 to i32                      ; 2 uses
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.050.lcssa = phi ptr [ %4, %bb.a ], [ %i.dd, %.lr.ph ] ; 6 uses
  %.049.lcssa = phi ptr [ %5, %bb.a ], [ %i.de, %.lr.ph ] ; 8 uses
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04892 = phi i32 [ %i.df, %.lr.ph ], [ 0, %bb.a ]
  %.04991 = phi ptr [ %i.de, %.lr.ph ], [ %5, %bb.a ] ; 2 uses
  %.05090 = phi ptr [ %i.dd, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.l = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.05090, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.m = getelementptr inbounds nuw i8, ptr %.05090, i64 4
  %i.n = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.m, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.o = getelementptr inbounds nuw i8, ptr %.05090, i64 8
  %i.p = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.o, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.q = getelementptr inbounds nuw i8, ptr %.05090, i64 12
  %i.r = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.q, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.s = fmul <8 x float> %i.f, %i.l
  %i.t = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.s, <8 x float> zeroinitializer)
  %i.u = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.t, <8 x float> %i.f) ; 2 uses
  %i.v = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.u, i32 1) ; 3 uses
  %i.w = fsub <8 x float> %i.u, %i.v
  %i.x = fadd <8 x float> %i.v, splat (float 1.000000e+00)
  %i.y = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.x, <8 x float> %i.f)
  %i.z = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.v)
  %i.aa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.y)
  %i.ab = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.z, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ac = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.aa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ad = fsub <8 x float> %i.ac, %i.ab
  %i.ae = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ad, <8 x float> %i.w, <8 x float> %i.ab) ; 2 uses
  %i.af = fmul <8 x float> %i.f, %i.n
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.af, <8 x float> zeroinitializer)
  %i.ah = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ag, <8 x float> %i.f) ; 2 uses
  %i.ai = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.aj = fsub <8 x float> %i.ah, %i.ai
  %i.ak = fadd <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.al = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ak, <8 x float> %i.f)
  %i.am = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ai)
  %i.an = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.al)
  %i.ao = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.am, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ap = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.an, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aq = fsub <8 x float> %i.ap, %i.ao
  %i.ar = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aq, <8 x float> %i.aj, <8 x float> %i.ao) ; 2 uses
  %i.as = fmul <8 x float> %i.f, %i.p
  %i.at = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.as, <8 x float> zeroinitializer)
  %i.au = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.at, <8 x float> %i.f) ; 2 uses
  %i.av = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 3 uses
  %i.aw = fsub <8 x float> %i.au, %i.av
  %i.ax = fadd <8 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ax, <8 x float> %i.f)
  %i.az = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.av)
  %i.ba = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ay)
  %i.bb = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.az, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bc = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ba, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bd = fsub <8 x float> %i.bc, %i.bb
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> %i.aw, <8 x float> %i.bb) ; 2 uses
  %i.bf = fmul <8 x float> %i.r, splat (float 2.550000e+02) ; 2 uses
  %i.bg = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bh = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bi = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bj = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bk = bitcast <8 x float> %i.bg to <4 x double> ; 2 uses
  %i.bl = bitcast <8 x float> %i.bh to <4 x double> ; 2 uses
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bn = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bo = bitcast <8 x float> %i.bi to <4 x double> ; 2 uses
  %i.bp = bitcast <8 x float> %i.bj to <4 x double> ; 2 uses
  %i.bq = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.br = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bs = bitcast <4 x double> %i.bm to <8 x float>
  %i.bt = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bs, <8 x float> zeroinitializer)
  %i.bu = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bt, <8 x float> splat (float 2.550000e+02))
  %i.bv = bitcast <4 x double> %i.bn to <8 x float>
  %i.bw = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bv, <8 x float> zeroinitializer)
  %i.bx = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bw, <8 x float> splat (float 2.550000e+02))
  %i.by = bitcast <4 x double> %i.bq to <8 x float>
  %i.bz = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.by, <8 x float> zeroinitializer)
  %i.ca = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bz, <8 x float> splat (float 2.550000e+02))
  %i.cb = bitcast <4 x double> %i.br to <8 x float>
  %i.cc = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.cb, <8 x float> zeroinitializer)
  %i.cd = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.cc, <8 x float> splat (float 2.550000e+02))
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.bu)
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.bx)
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.ca)
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.cd)
  %i.ci = bitcast <8 x i32> %i.ce to <32 x i8>
  %i.cj = shufflevector <32 x i8> %i.ci, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.ck = bitcast <8 x i32> %i.cf to <32 x i8>
  %i.cl = shufflevector <32 x i8> %i.ck, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28>
  %i.cm = or <32 x i8> %i.cl, %i.cj               ; 2 uses
  %i.cn = bitcast <32 x i8> %i.cm to <4 x i64>
  %i.co = shufflevector <4 x i64> %i.cn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cp = bitcast <32 x i8> %i.cm to <4 x i64>
  %i.cq = shufflevector <4 x i64> %i.cp, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.cr = or disjoint <2 x i64> %i.co, %i.cq
  %i.cs = bitcast <8 x i32> %i.cg to <32 x i8>
  %i.ct = shufflevector <32 x i8> %i.cs, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.cu = bitcast <8 x i32> %i.ch to <32 x i8>
  %i.cv = shufflevector <32 x i8> %i.cu, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28>
  %i.cw = or <32 x i8> %i.cv, %i.ct               ; 2 uses
  %i.cx = bitcast <32 x i8> %i.cw to <4 x i64>
  %i.cy = shufflevector <4 x i64> %i.cx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cz = bitcast <32 x i8> %i.cw to <4 x i64>
  %i.da = shufflevector <4 x i64> %i.cz, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.db = or disjoint <2 x i64> %i.cy, %i.da
  %i.dc = shufflevector <2 x i64> %i.cr, <2 x i64> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.dc, ptr %.04991, align 1, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.05090, i64 128 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.04991, i64 32 ; 2 uses
  %i.df = add nuw nsw i32 %.04892, 8              ; 2 uses
  %i.dg = icmp slt i32 %i.df, %i.h
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !llvm.loop !18

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.dh = shl nsw i32 %i.j, 2                     ; 5 uses
  %i.di = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.di, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %bb.b
  %i.dj = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 4)
  %i.dl = add nsw i64 %i.dk, -1                   ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 29
  br i1 %min.iters.check, label %.lr.ph97.preheader156, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader
  %i.do = shl nuw nsw i64 %i.dl, 2
  %i.dp = and i64 %i.do, 9223372036854775792
  %i.dq = add nuw nsw i64 %i.dp, 16               ; 2 uses
  %i.dr = getelementptr i8, ptr %i.a, i64 %i.dq
  %i.ds = getelementptr i8, ptr %.050.lcssa, i64 %i.dq
  %bound0 = icmp ult ptr %i.a, %i.ds
  %bound1 = icmp ult ptr %.050.lcssa, %i.dr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph97.preheader156, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 9223372036854775804     ; 4 uses
  %i.dt = shl i64 %n.vec, 2
  %i.du = shl i64 %n.vec, 4
  %i.dv = getelementptr i8, ptr %.050.lcssa, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.050.lcssa, i64 %i.dw
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !11, !alias.scope !30
  %.idx = shl nuw i64 %index, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store <16 x float> %wide.vec, ptr %i.dx, align 16, !tbaa !11, !alias.scope !31, !noalias !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %._crit_edge98, label %.lr.ph97.preheader156

.lr.ph97.preheader156:                            ; preds = %vector.memcheck, %.lr.ph97.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph97.preheader ], [ %i.dt, %middle.block ]
  %.15194.ph = phi ptr [ %.050.lcssa, %vector.memcheck ], [ %.050.lcssa, %.lr.ph97.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph97

._crit_edge98:                                    ; preds = %.lr.ph97, %middle.block, %bb.b
  %i.dz = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.a, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eb = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ea, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ed = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ec, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ef = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ee, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.eg = fmul <8 x float> %i.f, %i.dz
  %i.eh = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.eg, <8 x float> zeroinitializer)
  %i.ei = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.eh, <8 x float> %i.f) ; 2 uses
  %i.ej = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ei, i32 1) ; 3 uses
  %i.ek = fsub <8 x float> %i.ei, %i.ej
  %i.el = fadd <8 x float> %i.ej, splat (float 1.000000e+00)
  %i.em = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.el, <8 x float> %i.f)
  %i.en = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ej)
  %i.eo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.em)
  %i.ep = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.en, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.eq = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.eo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.er = fsub <8 x float> %i.eq, %i.ep
  %i.es = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.er, <8 x float> %i.ek, <8 x float> %i.ep) ; 2 uses
  %i.et = fmul <8 x float> %i.f, %i.eb
  %i.eu = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.et, <8 x float> zeroinitializer)
  %i.ev = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.eu, <8 x float> %i.f) ; 2 uses
  %i.ew = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ev, i32 1) ; 3 uses
  %i.ex = fsub <8 x float> %i.ev, %i.ew
  %i.ey = fadd <8 x float> %i.ew, splat (float 1.000000e+00)
  %i.ez = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ey, <8 x float> %i.f)
  %i.fa = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ew)
  %i.fb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ez)
  %i.fc = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fd = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fb, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fe = fsub <8 x float> %i.fd, %i.fc
  %i.ff = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fe, <8 x float> %i.ex, <8 x float> %i.fc) ; 2 uses
  %i.fg = fmul <8 x float> %i.f, %i.ed
  %i.fh = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fg, <8 x float> zeroinitializer)
  %i.fi = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fh, <8 x float> %i.f) ; 2 uses
  %i.fj = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fi, i32 1) ; 3 uses
  %i.fk = fsub <8 x float> %i.fi, %i.fj
  %i.fl = fadd <8 x float> %i.fj, splat (float 1.000000e+00)
  %i.fm = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fl, <8 x float> %i.f)
  %i.fn = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fj)
  %i.fo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fm)
  %i.fp = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fq = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fo, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fr = fsub <8 x float> %i.fq, %i.fp
  %i.fs = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fr, <8 x float> %i.fk, <8 x float> %i.fp) ; 2 uses
  %i.ft = fmul <8 x float> %i.ef, splat (float 2.550000e+02) ; 2 uses
  %i.fu = shufflevector <8 x float> %i.es, <8 x float> %i.ff, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.fv = shufflevector <8 x float> %i.fs, <8 x float> %i.ft, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.fw = shufflevector <8 x float> %i.es, <8 x float> %i.ff, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fx = shufflevector <8 x float> %i.fs, <8 x float> %i.ft, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.fy = bitcast <8 x float> %i.fu to <4 x double> ; 2 uses
  %i.fz = bitcast <8 x float> %i.fv to <4 x double> ; 2 uses
  %i.ga = shufflevector <4 x double> %i.fy, <4 x double> %i.fz, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gb = shufflevector <4 x double> %i.fy, <4 x double> %i.fz, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gc = bitcast <8 x float> %i.fw to <4 x double> ; 2 uses
  %i.gd = bitcast <8 x float> %i.fx to <4 x double> ; 2 uses
  %i.ge = shufflevector <4 x double> %i.gc, <4 x double> %i.gd, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gf = shufflevector <4 x double> %i.gc, <4 x double> %i.gd, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gg = bitcast <4 x double> %i.ga to <8 x float>
  %i.gh = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gg, <8 x float> zeroinitializer)
  %i.gi = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gh, <8 x float> splat (float 2.550000e+02))
  %i.gj = bitcast <4 x double> %i.gb to <8 x float>
  %i.gk = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gj, <8 x float> zeroinitializer)
  %i.gl = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gk, <8 x float> splat (float 2.550000e+02))
  %i.gm = bitcast <4 x double> %i.ge to <8 x float>
  %i.gn = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gm, <8 x float> zeroinitializer)
  %i.go = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gn, <8 x float> splat (float 2.550000e+02))
  %i.gp = bitcast <4 x double> %i.gf to <8 x float>
  %i.gq = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gp, <8 x float> zeroinitializer)
  %i.gr = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gq, <8 x float> splat (float 2.550000e+02))
  %i.gs = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gi)
  %i.gt = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gl)
  %i.gu = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.go)
  %i.gv = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gr)
  %i.gw = bitcast <8 x i32> %i.gs to <32 x i8>
  %i.gx = shufflevector <32 x i8> %i.gw, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.gy = bitcast <8 x i32> %i.gt to <32 x i8>
  %i.gz = shufflevector <32 x i8> %i.gy, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28>
  %i.ha = or <32 x i8> %i.gz, %i.gx               ; 2 uses
  %i.hb = bitcast <32 x i8> %i.ha to <4 x i64>
  %i.hc = shufflevector <4 x i64> %i.hb, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hd = bitcast <32 x i8> %i.ha to <4 x i64>
  %i.he = shufflevector <4 x i64> %i.hd, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hf = or disjoint <2 x i64> %i.hc, %i.he
  %i.hg = bitcast <8 x i32> %i.gu to <32 x i8>
  %i.hh = shufflevector <32 x i8> %i.hg, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.hi = bitcast <8 x i32> %i.gv to <32 x i8>
  %i.hj = shufflevector <32 x i8> %i.hi, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 20, i32 24, i32 28>
  %i.hk = or <32 x i8> %i.hj, %i.hh               ; 2 uses
  %i.hl = bitcast <32 x i8> %i.hk to <4 x i64>
  %i.hm = shufflevector <4 x i64> %i.hl, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hn = bitcast <32 x i8> %i.hk to <4 x i64>
  %i.ho = shufflevector <4 x i64> %i.hn, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hp = or disjoint <2 x i64> %i.hm, %i.ho
  %i.hq = shufflevector <2 x i64> %i.hf, <2 x i64> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.hq, ptr %i.b, align 16, !tbaa !8
  br i1 %i.di, label %iter.check, label %._crit_edge104

iter.check:                                       ; preds = %._crit_edge98
  %i.hr = zext nneg i32 %i.dh to i64              ; 4 uses
  %i.hs = call i64 @llvm.usub.sat.i64(i64 %i.hr, i64 4)
  %i.ht = lshr exact i64 %i.hs, 2
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 5 uses
  %min.iters.check123 = icmp ult i32 %i.dh, 16
  br i1 %min.iters.check123, label %.lr.ph103.preheader, label %vector.memcheck124

vector.memcheck124:                               ; preds = %iter.check
  %i.hv = getelementptr i8, ptr %.049.lcssa, i64 %i.hr
  %i.hw = getelementptr i8, ptr %i.b, i64 %i.hr
  %bound0125 = icmp ult ptr %.049.lcssa, %i.hw
  %bound1126 = icmp ult ptr %i.b, %i.hv
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph103.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck124
  %min.iters.check128 = icmp ult i32 %i.dh, 64
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph129

vector.ph129:                                     ; preds = %vector.main.loop.iter.check
  %i.hx = and i64 %i.hu, 12
  %n.vec130 = and i64 %i.hu, 1073741808           ; 4 uses
  %i.hy = shl nuw nsw i64 %n.vec130, 2            ; 2 uses
  %i.hz = getelementptr i8, ptr %.049.lcssa, i64 %i.hy
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph129, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next140, %vector.body131 ] ; 2 uses
  %i.ia = shl i64 %index132, 2                    ; 2 uses
  %next.gep133 = getelementptr i8, ptr %.049.lcssa, i64 %i.ia
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ia
  %wide.vec134 = load <64 x i8>, ptr %i.ib, align 16, !tbaa !8, !alias.scope !32
  store <64 x i8> %wide.vec134, ptr %next.gep133, align 1, !tbaa !8, !alias.scope !33, !noalias !32
  %index.next140 = add nuw i64 %index132, 16      ; 2 uses
  %i.ic = icmp eq i64 %index.next140, %n.vec130
  br i1 %i.ic, label %middle.block141, label %vector.body131, !llvm.loop !26

middle.block141:                                  ; preds = %vector.body131
  %cmp.n142 = icmp eq i64 %i.hu, %n.vec130
  br i1 %cmp.n142, label %._crit_edge104, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block141
  %min.epilog.iters.check = icmp eq i64 %i.hx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph103.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec130, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.hu, 1073741820           ; 3 uses
  %i.id = shl nuw nsw i64 %n.vec143, 2            ; 2 uses
  %i.ie = getelementptr i8, ptr %.049.lcssa, i64 %i.id
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 2 uses
  %i.if = shl i64 %index144, 2                    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.049.lcssa, i64 %i.if
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.if
  %wide.vec146 = load <16 x i8>, ptr %i.ig, align 16, !tbaa !8, !alias.scope !32
  store <16 x i8> %wide.vec146, ptr %next.gep145, align 1, !tbaa !8, !alias.scope !33, !noalias !32
  %index.next152 = add nuw i64 %index144, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n153 = icmp eq i64 %i.hu, %n.vec143
  br i1 %cmp.n153, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %iter.check, %vector.memcheck124, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck124 ], [ %i.hy, %vec.epilog.iter.check ], [ %i.id, %vec.epilog.middle.block ]
  %.1100.ph = phi ptr [ %.049.lcssa, %iter.check ], [ %.049.lcssa, %vector.memcheck124 ], [ %i.hz, %vec.epilog.iter.check ], [ %i.ie, %vec.epilog.middle.block ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader156, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader156 ] ; 2 uses
  %.15194 = phi ptr [ %i.it, %.lr.ph97 ], [ %.15194.ph, %.lr.ph97.preheader156 ] ; 5 uses
  %i.ii = load float, ptr %.15194, align 4, !tbaa !11
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store float %i.ii, ptr %i.ij, align 16, !tbaa !11
  %i.ik = getelementptr inbounds nuw i8, ptr %.15194, i64 4
  %i.il = load float, ptr %i.ik, align 4, !tbaa !11
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store float %i.il, ptr %i.im, align 4, !tbaa !11
  %i.in = getelementptr inbounds nuw i8, ptr %.15194, i64 8
  %i.io = load float, ptr %i.in, align 4, !tbaa !11
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store float %i.io, ptr %i.ip, align 8, !tbaa !11
  %i.iq = getelementptr inbounds nuw i8, ptr %.15194, i64 12
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !11
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store float %i.ir, ptr %i.is, align 4, !tbaa !11
  %i.it = getelementptr inbounds nuw i8, ptr %.15194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.iu = icmp samesign ult i64 %indvars.iv.next, %i.dj
  br i1 %i.iu, label %.lr.ph97, label %._crit_edge98, !llvm.loop !28

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block141, %vec.epilog.middle.block, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader ] ; 2 uses
  %.1100 = phi ptr [ %i.jg, %.lr.ph103 ], [ %.1100.ph, %.lr.ph103.preheader ] ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv107 ; 4 uses
  %i.iw = load i8, ptr %i.iv, align 4, !tbaa !8
  store i8 %i.iw, ptr %.1100, align 1, !tbaa !8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.1100, i64 1
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %.1100, i64 2
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %.1100, i64 3
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.1100, i64 4
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next108, %i.hr
  br i1 %i.jh, label %.lr.ph103, label %._crit_edge104, !llvm.loop !29

bb.c:                                             ; preds = %._crit_edge104, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_2EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %i.b = alloca [32 x i16], align 16              ; 8 uses
  %i.c = sitofp i32 %3 to float
  %i.d = fadd float %i.c, -1.000000e+00
  %i.e = insertelement <8 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.g = sdiv i64 %6, 8
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 3                          ; 4 uses
  %i.i = trunc i64 %6 to i32                      ; 2 uses
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.050.lcssa = phi ptr [ %4, %bb.a ], [ %i.dn, %.lr.ph ] ; 6 uses
  %.049.lcssa = phi ptr [ %5, %bb.a ], [ %i.do, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04892 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %bb.a ]
  %.04991 = phi ptr [ %i.do, %.lr.ph ], [ %5, %bb.a ] ; 3 uses
  %.05090 = phi ptr [ %i.dn, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %i.l = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.05090, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.m = getelementptr inbounds nuw i8, ptr %.05090, i64 4
  %i.n = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.m, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.o = getelementptr inbounds nuw i8, ptr %.05090, i64 8
  %i.p = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.o, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.q = getelementptr inbounds nuw i8, ptr %.05090, i64 12
  %i.r = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.q, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.s = fmul <8 x float> %i.f, %i.l
  %i.t = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.s, <8 x float> zeroinitializer)
  %i.u = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.t, <8 x float> %i.f) ; 2 uses
  %i.v = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.u, i32 1) ; 3 uses
  %i.w = fsub <8 x float> %i.u, %i.v
  %i.x = fadd <8 x float> %i.v, splat (float 1.000000e+00)
  %i.y = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.x, <8 x float> %i.f)
  %i.z = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.v)
  %i.aa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.y)
  %i.ab = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.z, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ac = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.aa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ad = fsub <8 x float> %i.ac, %i.ab
  %i.ae = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ad, <8 x float> %i.w, <8 x float> %i.ab) ; 2 uses
  %i.af = fmul <8 x float> %i.f, %i.n
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.af, <8 x float> zeroinitializer)
  %i.ah = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ag, <8 x float> %i.f) ; 2 uses
  %i.ai = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.aj = fsub <8 x float> %i.ah, %i.ai
  %i.ak = fadd <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.al = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ak, <8 x float> %i.f)
  %i.am = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ai)
  %i.an = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.al)
  %i.ao = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.am, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ap = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.an, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aq = fsub <8 x float> %i.ap, %i.ao
  %i.ar = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aq, <8 x float> %i.aj, <8 x float> %i.ao) ; 2 uses
  %i.as = fmul <8 x float> %i.f, %i.p
  %i.at = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.as, <8 x float> zeroinitializer)
  %i.au = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.at, <8 x float> %i.f) ; 2 uses
  %i.av = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 3 uses
  %i.aw = fsub <8 x float> %i.au, %i.av
  %i.ax = fadd <8 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ax, <8 x float> %i.f)
  %i.az = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.av)
  %i.ba = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ay)
  %i.bb = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.az, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bc = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ba, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bd = fsub <8 x float> %i.bc, %i.bb
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> %i.aw, <8 x float> %i.bb) ; 2 uses
  %i.bf = fmul <8 x float> %i.r, splat (float 1.023000e+03) ; 2 uses
  %i.bg = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bh = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bi = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bj = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bk = bitcast <8 x float> %i.bg to <4 x double> ; 2 uses
  %i.bl = bitcast <8 x float> %i.bh to <4 x double> ; 2 uses
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bn = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bo = bitcast <8 x float> %i.bi to <4 x double> ; 2 uses
  %i.bp = bitcast <8 x float> %i.bj to <4 x double> ; 2 uses
  %i.bq = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.br = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bs = bitcast <4 x double> %i.bm to <8 x float>
  %i.bt = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bs, <8 x float> zeroinitializer)
  %i.bu = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bt, <8 x float> splat (float 1.023000e+03))
  %i.bv = bitcast <4 x double> %i.bn to <8 x float>
end_hunk_0
