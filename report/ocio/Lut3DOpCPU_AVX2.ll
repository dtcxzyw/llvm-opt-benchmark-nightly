Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU_AVX2?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520applyTetrahedralAVX2EPKfiS1_Pfi(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %i.b = alloca [32 x float], align 16            ; 10 uses
  %i.c = sitofp i32 %1 to float                   ; 4 uses
  %i.d = fadd float %i.c, -1.000000e+00
  %i.e = insertelement <8 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.g = fmul nnan float %i.c, 4.000000e+00
  %i.h = insertelement <8 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <8 x float> %i.h, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.j = fmul float %i.c, %i.c
  %i.k = fmul nnan float %i.j, 4.000000e+00
  %i.l = insertelement <8 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <8 x float> %i.l, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.n = sdiv i32 %4, 8
  %i.o = shl nsw i32 %i.n, 3                      ; 3 uses
  %i.p = sub nsw i32 %4, %i.o                     ; 2 uses
  %i.q = icmp sgt i32 %4, 7
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.069.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.eg, %bb.b ] ; 6 uses
  %.068.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.eh, %bb.b ] ; 6 uses
  %.not.i = icmp eq i32 %4, %i.o
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_124applyTetrahedralAVX2FuncILNS_8BitDepthE8ELS2_8EEEvPKfiPKvPvi.exit, label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.067123.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ei, %bb.b ]
  %.068122.i = phi ptr [ %3, %.lr.ph.i ], [ %i.eh, %bb.b ] ; 5 uses
  %.069121.i = phi ptr [ %2, %.lr.ph.i ], [ %i.eg, %bb.b ] ; 5 uses
  %i.t = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.069121.i, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.u = getelementptr inbounds nuw i8, ptr %.069121.i, i64 4
  %i.v = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.u, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.w = getelementptr inbounds nuw i8, ptr %.069121.i, i64 8
  %i.x = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.w, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.y = getelementptr inbounds nuw i8, ptr %.069121.i, i64 12
  %i.z = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.y, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aa = fmul <8 x float> %i.f, %i.t
  %i.ab = fmul <8 x float> %i.f, %i.v
  %i.ac = fmul <8 x float> %i.f, %i.x
  %i.ad = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.aa, <8 x float> zeroinitializer)
  %i.ae = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ab, <8 x float> zeroinitializer)
  %i.af = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ac, <8 x float> zeroinitializer)
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ad, <8 x float> %i.f) ; 2 uses
  %i.ah = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ae, <8 x float> %i.f) ; 2 uses
  %i.ai = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.af, <8 x float> %i.f) ; 2 uses
  %i.aj = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ag, i32 1) ; 3 uses
  %i.ak = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.al = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 3 uses
  %i.am = fsub <8 x float> %i.ag, %i.aj           ; 4 uses
  %i.an = fsub <8 x float> %i.ah, %i.ak           ; 4 uses
  %i.ao = fsub <8 x float> %i.ai, %i.al           ; 5 uses
  %i.ap = fadd <8 x float> %i.aj, splat (float 1.000000e+00)
  %i.aq = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.f, <8 x float> %i.ap)
  %i.ar = fadd <8 x float> %i.ak, splat (float 1.000000e+00)
  %i.as = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.f, <8 x float> %i.ar)
  %i.at = fadd <8 x float> %i.al, splat (float 1.000000e+00)
  %i.au = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.f, <8 x float> %i.at)
  %i.av = fmul <8 x float> %i.m, %i.aj            ; 3 uses
  %i.aw = fmul <8 x float> %i.m, %i.aq            ; 3 uses
  %i.ax = fmul <8 x float> %i.i, %i.ak            ; 3 uses
  %i.ay = fmul <8 x float> %i.i, %i.as            ; 3 uses
  %i.az = fmul <8 x float> %i.al, splat (float 4.000000e+00) ; 3 uses
  %i.ba = fmul <8 x float> %i.au, splat (float 4.000000e+00) ; 3 uses
  %i.bb = fcmp ule <8 x float> %i.am, %i.an       ; 3 uses
  %i.bc = fcmp ogt <8 x float> %i.an, %i.ao       ; 2 uses
  %i.bd = sext <8 x i1> %i.bc to <8 x i32>        ; 2 uses
  %i.be = fcmp ule <8 x float> %i.ao, %i.am       ; 4 uses
  %i.bf = sext <8 x i1> %i.be to <8 x i32>
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = select <8 x i1> %i.bb, <8 x float> zeroinitializer, <8 x float> %i.bg
  %i.bi = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.av, <8 x float> %i.aw, <8 x float> %i.bh)
  %i.bj = sext <8 x i1> %i.bb to <8 x i32>
  %i.bk = bitcast <8 x i32> %i.bj to <8 x float>  ; 2 uses
  %i.bl = select <8 x i1> %i.be, <8 x float> zeroinitializer, <8 x float> %i.bk
  %i.bm = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.aw, <8 x float> %i.av, <8 x float> %i.bl)
  %i.bn = select <8 x i1> %i.bc, <8 x float> %i.bk, <8 x float> zeroinitializer
  %i.bo = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ax, <8 x float> %i.ay, <8 x float> %i.bn)
  %i.bp = fadd <8 x float> %i.bi, %i.bo
  %i.bq = xor <8 x i32> %i.bd, splat (i32 -1)
  %i.br = bitcast <8 x i32> %i.bq to <8 x float>  ; 2 uses
  %i.bs = select <8 x i1> %i.bb, <8 x float> zeroinitializer, <8 x float> %i.br
  %i.bt = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ay, <8 x float> %i.ax, <8 x float> %i.bs)
  %i.bu = fadd <8 x float> %i.bm, %i.bt
  %i.bv = select <8 x i1> %i.be, <8 x float> zeroinitializer, <8 x float> %i.br
  %i.bw = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.az, <8 x float> %i.ba, <8 x float> %i.bv)
  %i.bx = fadd <8 x float> %i.bp, %i.bw
  %i.by = bitcast <8 x i32> %i.bd to <8 x float>
  %i.bz = select <8 x i1> %i.be, <8 x float> %i.by, <8 x float> zeroinitializer
  %i.ca = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ba, <8 x float> %i.az, <8 x float> %i.bz)
  %i.cb = fadd <8 x float> %i.bu, %i.ca
  %i.cc = fadd <8 x float> %i.av, %i.ax
  %i.cd = fadd <8 x float> %i.cc, %i.az
  %i.ce = fadd <8 x float> %i.aw, %i.ay
  %i.cf = fadd <8 x float> %i.ce, %i.ba
  %i.cg = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.am, <8 x float> %i.an) ; 2 uses
  %i.ch = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.am, <8 x float> %i.an) ; 2 uses
  %i.ci = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.cg, <8 x float> %i.ao) ; 4 uses
  %i.cj = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.cg, <8 x float> %i.ao)
  %i.ck = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ch, <8 x float> %i.ao) ; 2 uses
  %i.cl = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ch, <8 x float> %i.cj) ; 2 uses
  %i.cm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.cd) ; 3 uses
  %i.cn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.bx) ; 3 uses
  %i.co = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.cb) ; 3 uses
  %i.cp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.cf) ; 3 uses
  %i.cq = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.cm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.cr = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.r, <8 x i32> %i.cm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.cs = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.s, <8 x i32> %i.cm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.ct = fsub <8 x float> splat (float 1.000000e+00), %i.ck ; 3 uses
  %i.cu = fmul <8 x float> %i.ct, %i.cq
  %i.cv = fmul <8 x float> %i.ct, %i.cr
  %i.cw = fmul <8 x float> %i.ct, %i.cs
  %i.cx = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.cn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.cy = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.r, <8 x i32> %i.cn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.cz = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.s, <8 x i32> %i.cn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.da = fsub <8 x float> %i.ck, %i.cl           ; 3 uses
  %i.db = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.da, <8 x float> %i.cx, <8 x float> %i.cu)
  %i.dc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.da, <8 x float> %i.cy, <8 x float> %i.cv)
  %i.dd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.da, <8 x float> %i.cz, <8 x float> %i.cw)
  %i.de = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.co, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.df = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.r, <8 x i32> %i.co, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.dg = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.s, <8 x i32> %i.co, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.dh = fsub <8 x float> %i.cl, %i.ci           ; 3 uses
  %i.di = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dh, <8 x float> %i.de, <8 x float> %i.db)
  %i.dj = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dh, <8 x float> %i.df, <8 x float> %i.dc)
  %i.dk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dh, <8 x float> %i.dg, <8 x float> %i.dd)
  %i.dl = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.cp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.dm = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.r, <8 x i32> %i.cp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.dn = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.s, <8 x i32> %i.cp, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !23
  %i.do = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> %i.dl, <8 x float> %i.di) ; 2 uses
  %i.dp = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> %i.dm, <8 x float> %i.dj) ; 2 uses
  %i.dq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> %i.dn, <8 x float> %i.dk) ; 2 uses
  %i.dr = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ds = shufflevector <8 x float> %i.dq, <8 x float> %i.z, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.dt = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.du = shufflevector <8 x float> %i.dq, <8 x float> %i.z, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.dv = bitcast <8 x float> %i.dr to <4 x double> ; 2 uses
  %i.dw = bitcast <8 x float> %i.ds to <4 x double> ; 2 uses
  %i.dx = shufflevector <4 x double> %i.dv, <4 x double> %i.dw, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dy = shufflevector <4 x double> %i.dv, <4 x double> %i.dw, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.dz = bitcast <8 x float> %i.dt to <4 x double> ; 2 uses
  %i.ea = bitcast <8 x float> %i.du to <4 x double> ; 2 uses
  %i.eb = shufflevector <4 x double> %i.dz, <4 x double> %i.ea, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ec = shufflevector <4 x double> %i.dz, <4 x double> %i.ea, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.dx, ptr %.068122.i, align 1, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %.068122.i, i64 32
  store <4 x double> %i.dy, ptr %i.ed, align 1, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %.068122.i, i64 64
  store <4 x double> %i.eb, ptr %i.ee, align 1, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %.068122.i, i64 96
  store <4 x double> %i.ec, ptr %i.ef, align 1, !tbaa !24
  %i.eg = getelementptr inbounds nuw i8, ptr %.069121.i, i64 128 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.068122.i, i64 128 ; 2 uses
  %i.ei = add nuw nsw i32 %.067123.i, 8           ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %i.o
  br i1 %i.ej, label %bb.b, label %._crit_edge.i, !llvm.loop !10

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ek = shl nsw i32 %i.p, 2                     ; 2 uses
  %i.el = icmp sgt i32 %i.p, 0                    ; 2 uses
  br i1 %i.el, label %.lr.ph128.preheader.i, label %._crit_edge129.i

.lr.ph128.preheader.i:                            ; preds = %bb.c
  %i.em = zext nneg i32 %i.ek to i64              ; 3 uses
  %i.en = tail call i64 @llvm.usub.sat.i64(i64 %i.em, i64 4) ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.en, 28
  br i1 %min.iters.check, label %.lr.ph128.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128.preheader.i
  %5 = tail call i64 @llvm.usub.sat.i64(i64 %i.em, i64 4)
  %6 = shl nuw nsw i64 %5, 2
  %i.eq = add nuw nsw i64 %6, 16                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.eq
  %scevgep8 = getelementptr i8, ptr %.069.lcssa.i, i64 %i.eq
  %bound0 = icmp ult ptr %i.a, %scevgep8
  %bound1 = icmp ult ptr %.069.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph128.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ep, 1073741820              ; 4 uses
  %i.er = shl nuw nsw i64 %n.vec, 2
  %i.es = shl nuw nsw i64 %n.vec, 4
  %i.et = getelementptr i8, ptr %.069.lcssa.i, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.069.lcssa.i, i64 %i.eu
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !27, !alias.scope !28
  %.idx = shl nuw i64 %index, 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store <16 x float> %wide.vec, ptr %i.ev, align 16, !tbaa !27, !alias.scope !29, !noalias !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %._crit_edge129.i, label %.lr.ph128.i.preheader

.lr.ph128.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph128.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph128.preheader.i ], [ %i.er, %middle.block ]
  %.170125.i.ph = phi ptr [ %.069.lcssa.i, %vector.memcheck ], [ %.069.lcssa.i, %.lr.ph128.preheader.i ], [ %i.et, %middle.block ]
  br label %.lr.ph128.i

._crit_edge129.i:                                 ; preds = %.lr.ph128.i, %middle.block, %bb.c
  %i.ex = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.a, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ez = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ey, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fb = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.fa, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fd = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.fc, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fe = fmul <8 x float> %i.f, %i.ex
  %i.ff = fmul <8 x float> %i.f, %i.ez
  %i.fg = fmul <8 x float> %i.f, %i.fb
  %i.fh = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fe, <8 x float> zeroinitializer)
  %i.fi = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ff, <8 x float> zeroinitializer)
  %i.fj = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fg, <8 x float> zeroinitializer)
  %i.fk = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fh, <8 x float> %i.f) ; 2 uses
  %i.fl = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fi, <8 x float> %i.f) ; 2 uses
  %i.fm = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fj, <8 x float> %i.f) ; 2 uses
  %i.fn = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fk, i32 1) ; 3 uses
  %i.fo = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fl, i32 1) ; 3 uses
  %i.fp = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fm, i32 1) ; 3 uses
  %i.fq = fsub <8 x float> %i.fk, %i.fn           ; 4 uses
  %i.fr = fsub <8 x float> %i.fl, %i.fo           ; 4 uses
  %i.fs = fsub <8 x float> %i.fm, %i.fp           ; 5 uses
  %i.ft = fadd <8 x float> %i.fn, splat (float 1.000000e+00)
  %i.fu = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.f, <8 x float> %i.ft)
  %i.fv = fadd <8 x float> %i.fo, splat (float 1.000000e+00)
  %i.fw = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.f, <8 x float> %i.fv)
  %i.fx = fadd <8 x float> %i.fp, splat (float 1.000000e+00)
  %i.fy = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.f, <8 x float> %i.fx)
  %i.fz = fmul <8 x float> %i.m, %i.fn            ; 3 uses
  %i.ga = fmul <8 x float> %i.m, %i.fu            ; 3 uses
  %i.gb = fmul <8 x float> %i.i, %i.fo            ; 3 uses
  %i.gc = fmul <8 x float> %i.i, %i.fw            ; 3 uses
  %i.gd = fmul <8 x float> %i.fp, splat (float 4.000000e+00) ; 3 uses
  %i.ge = fmul <8 x float> %i.fy, splat (float 4.000000e+00) ; 3 uses
  %i.gf = fcmp ule <8 x float> %i.fq, %i.fr       ; 3 uses
  %i.gg = fcmp ogt <8 x float> %i.fr, %i.fs       ; 2 uses
  %i.gh = sext <8 x i1> %i.gg to <8 x i32>        ; 2 uses
  %i.gi = fcmp ule <8 x float> %i.fs, %i.fq       ; 4 uses
  %i.gj = sext <8 x i1> %i.gi to <8 x i32>
  %i.gk = bitcast <8 x i32> %i.gj to <8 x float>
  %i.gl = select <8 x i1> %i.gf, <8 x float> zeroinitializer, <8 x float> %i.gk
  %i.gm = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.fz, <8 x float> %i.ga, <8 x float> %i.gl)
  %i.gn = sext <8 x i1> %i.gf to <8 x i32>
  %i.go = bitcast <8 x i32> %i.gn to <8 x float>  ; 2 uses
  %i.gp = select <8 x i1> %i.gi, <8 x float> zeroinitializer, <8 x float> %i.go
  %i.gq = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ga, <8 x float> %i.fz, <8 x float> %i.gp)
  %i.gr = select <8 x i1> %i.gg, <8 x float> %i.go, <8 x float> zeroinitializer
  %i.gs = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.gb, <8 x float> %i.gc, <8 x float> %i.gr)
  %i.gt = fadd <8 x float> %i.gm, %i.gs
  %i.gu = xor <8 x i32> %i.gh, splat (i32 -1)
  %i.gv = bitcast <8 x i32> %i.gu to <8 x float>  ; 2 uses
  %i.gw = select <8 x i1> %i.gf, <8 x float> zeroinitializer, <8 x float> %i.gv
  %i.gx = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.gc, <8 x float> %i.gb, <8 x float> %i.gw)
  %i.gy = fadd <8 x float> %i.gq, %i.gx
  %i.gz = select <8 x i1> %i.gi, <8 x float> zeroinitializer, <8 x float> %i.gv
  %i.ha = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.gd, <8 x float> %i.ge, <8 x float> %i.gz)
  %i.hb = fadd <8 x float> %i.gt, %i.ha
  %i.hc = bitcast <8 x i32> %i.gh to <8 x float>
  %i.hd = select <8 x i1> %i.gi, <8 x float> %i.hc, <8 x float> zeroinitializer
  %i.he = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ge, <8 x float> %i.gd, <8 x float> %i.hd)
  %i.hf = fadd <8 x float> %i.gy, %i.he
  %i.hg = fadd <8 x float> %i.fz, %i.gb
  %i.hh = fadd <8 x float> %i.hg, %i.gd
  %i.hi = fadd <8 x float> %i.ga, %i.gc
  %i.hj = fadd <8 x float> %i.hi, %i.ge
  %i.hk = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fq, <8 x float> %i.fr) ; 2 uses
  %i.hl = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fq, <8 x float> %i.fr) ; 2 uses
  %i.hm = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.hk, <8 x float> %i.fs) ; 4 uses
  %i.hn = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.hk, <8 x float> %i.fs)
  %i.ho = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.hl, <8 x float> %i.fs) ; 2 uses
  %i.hp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.hl, <8 x float> %i.hn) ; 2 uses
  %i.hq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.hh) ; 3 uses
  %i.hr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.hb) ; 3 uses
  %i.hs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.hf) ; 3 uses
  %i.ht = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.hj) ; 3 uses
  %i.hu = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.hq, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.hw = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hv, <8 x i32> %i.hq, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.hy = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hx, <8 x i32> %i.hq, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.hz = fsub <8 x float> splat (float 1.000000e+00), %i.ho ; 3 uses
  %i.ia = fmul <8 x float> %i.hz, %i.hu
  %i.ib = fmul <8 x float> %i.hz, %i.hw
  %i.ic = fmul <8 x float> %i.hz, %i.hy
  %i.id = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.hr, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.ie = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hv, <8 x i32> %i.hr, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.if = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hx, <8 x i32> %i.hr, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.ig = fsub <8 x float> %i.ho, %i.hp           ; 3 uses
  %i.ih = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ig, <8 x float> %i.id, <8 x float> %i.ia)
  %i.ii = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ig, <8 x float> %i.ie, <8 x float> %i.ib)
  %i.ij = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ig, <8 x float> %i.if, <8 x float> %i.ic)
  %i.ik = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.hs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.il = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hv, <8 x i32> %i.hs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.im = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hx, <8 x i32> %i.hs, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.in = fsub <8 x float> %i.hp, %i.hm           ; 3 uses
  %i.io = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.in, <8 x float> %i.ik, <8 x float> %i.ih)
  %i.ip = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.in, <8 x float> %i.il, <8 x float> %i.ii)
  %i.iq = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.in, <8 x float> %i.im, <8 x float> %i.ij)
  %i.ir = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.ht, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.is = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hv, <8 x i32> %i.ht, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.it = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.hx, <8 x i32> %i.ht, <8 x float> splat (float -nan(0x3FFFFF)), i8 4), !noalias !32
  %i.iu = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hm, <8 x float> %i.ir, <8 x float> %i.io) ; 2 uses
  %i.iv = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hm, <8 x float> %i.is, <8 x float> %i.ip) ; 2 uses
  %i.iw = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hm, <8 x float> %i.it, <8 x float> %i.iq) ; 2 uses
  %i.ix = shufflevector <8 x float> %i.iu, <8 x float> %i.iv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.iy = shufflevector <8 x float> %i.iw, <8 x float> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.iz = shufflevector <8 x float> %i.iu, <8 x float> %i.iv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ja = shufflevector <8 x float> %i.iw, <8 x float> %i.fd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.jb = bitcast <8 x float> %i.ix to <4 x double> ; 2 uses
  %i.jc = bitcast <8 x float> %i.iy to <4 x double> ; 2 uses
  %i.jd = shufflevector <4 x double> %i.jb, <4 x double> %i.jc, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.je = shufflevector <4 x double> %i.jb, <4 x double> %i.jc, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.jf = bitcast <8 x float> %i.iz to <4 x double> ; 2 uses
  %i.jg = bitcast <8 x float> %i.ja to <4 x double> ; 2 uses
  %i.jh = shufflevector <4 x double> %i.jf, <4 x double> %i.jg, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ji = shufflevector <4 x double> %i.jf, <4 x double> %i.jg, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.jd, ptr %i.b, align 16, !tbaa !24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x double> %i.je, ptr %i.jj, align 16, !tbaa !24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <4 x double> %i.jh, ptr %i.jk, align 16, !tbaa !24
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <4 x double> %i.ji, ptr %i.jl, align 16, !tbaa !24
  br i1 %i.el, label %.lr.ph134.preheader.i, label %._crit_edge135.i

.lr.ph134.preheader.i:                            ; preds = %._crit_edge129.i
  %i.jm = zext nneg i32 %i.ek to i64              ; 3 uses
  %i.jn = call i64 @llvm.usub.sat.i64(i64 %i.jm, i64 4) ; 2 uses
  %i.jo = lshr exact i64 %i.jn, 2
  %i.jp = add nuw nsw i64 %i.jo, 1                ; 2 uses
  %min.iters.check21 = icmp samesign ult i64 %i.jn, 28
  br i1 %min.iters.check21, label %.lr.ph134.i.preheader, label %vector.memcheck13

vector.memcheck13:                                ; preds = %.lr.ph134.preheader.i
  %7 = call i64 @llvm.usub.sat.i64(i64 %i.jm, i64 4)
  %8 = shl nuw nsw i64 %7, 2
  %i.jq = add nuw nsw i64 %8, 16                  ; 2 uses
  %scevgep15 = getelementptr i8, ptr %.068.lcssa.i, i64 %i.jq
  %scevgep16 = getelementptr i8, ptr %i.b, i64 %i.jq
  %bound017 = icmp ult ptr %.068.lcssa.i, %scevgep16
  %bound118 = icmp ult ptr %i.b, %scevgep15
  %found.conflict19 = and i1 %bound017, %bound118
  br i1 %found.conflict19, label %.lr.ph134.i.preheader, label %vector.ph22

vector.ph22:                                      ; preds = %vector.memcheck13
  %n.vec23 = and i64 %i.jp, 1073741820            ; 4 uses
  %i.jr = shl nuw nsw i64 %n.vec23, 2
  %i.js = shl nuw nsw i64 %n.vec23, 4
  %i.jt = getelementptr i8, ptr %.068.lcssa.i, i64 %i.js
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next33, %vector.body24 ] ; 3 uses
  %i.ju = shl i64 %index25, 4
  %next.gep26 = getelementptr i8, ptr %.068.lcssa.i, i64 %i.ju
  %.idx38 = shl nuw i64 %index25, 4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx38
  %wide.vec27 = load <16 x float>, ptr %i.jv, align 16, !tbaa !27, !alias.scope !33
  store <16 x float> %wide.vec27, ptr %next.gep26, align 4, !tbaa !27, !alias.scope !34, !noalias !33
  %index.next33 = add nuw i64 %index25, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next33, %n.vec23
  br i1 %i.jw, label %middle.block34, label %vector.body24, !llvm.loop !20

middle.block34:                                   ; preds = %vector.body24
  %cmp.n35 = icmp eq i64 %i.jp, %n.vec23
  br i1 %cmp.n35, label %._crit_edge135.i, label %.lr.ph134.i.preheader

.lr.ph134.i.preheader:                            ; preds = %vector.memcheck13, %.lr.ph134.preheader.i, %middle.block34
  %indvars.iv138.i.ph = phi i64 [ 0, %vector.memcheck13 ], [ 0, %.lr.ph134.preheader.i ], [ %i.jr, %middle.block34 ]
  %.1131.i.ph = phi ptr [ %.068.lcssa.i, %vector.memcheck13 ], [ %.068.lcssa.i, %.lr.ph134.preheader.i ], [ %i.jt, %middle.block34 ]
  br label %.lr.ph134.i

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.preheader, %.lr.ph128.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph128.i ], [ %indvars.iv.i.ph, %.lr.ph128.i.preheader ] ; 2 uses
  %.170125.i = phi ptr [ %i.ki, %.lr.ph128.i ], [ %.170125.i.ph, %.lr.ph128.i.preheader ] ; 5 uses
  %i.jx = load float, ptr %.170125.i, align 4, !tbaa !27
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  store float %i.jx, ptr %i.jy, align 16, !tbaa !27
  %i.jz = getelementptr inbounds nuw i8, ptr %.170125.i, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !27
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store float %i.ka, ptr %i.kb, align 4, !tbaa !27
  %i.kc = getelementptr inbounds nuw i8, ptr %.170125.i, i64 8
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !27
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store float %i.kd, ptr %i.ke, align 8, !tbaa !27
  %i.kf = getelementptr inbounds nuw i8, ptr %.170125.i, i64 12
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !27
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store float %i.kg, ptr %i.kh, align 4, !tbaa !27
  %i.ki = getelementptr inbounds nuw i8, ptr %.170125.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next.i, %i.em
  br i1 %i.kj, label %.lr.ph128.i, label %._crit_edge129.i, !llvm.loop !21

._crit_edge135.i:                                 ; preds = %.lr.ph134.i, %middle.block34, %._crit_edge129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_124applyTetrahedralAVX2FuncILNS_8BitDepthE8ELS2_8EEEvPKfiPKvPvi.exit

.lr.ph134.i:                                      ; preds = %.lr.ph134.i.preheader, %.lr.ph134.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.lr.ph134.i ], [ %indvars.iv138.i.ph, %.lr.ph134.i.preheader ] ; 2 uses
  %.1131.i = phi ptr [ %i.kv, %.lr.ph134.i ], [ %.1131.i.ph, %.lr.ph134.i.preheader ] ; 5 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv138.i ; 4 uses
  %i.kl = load float, ptr %i.kk, align 16, !tbaa !27
  store float %i.kl, ptr %.1131.i, align 4, !tbaa !27
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.kn = load float, ptr %i.km, align 4, !tbaa !27
  %i.ko = getelementptr inbounds nuw i8, ptr %.1131.i, i64 4
  store float %i.kn, ptr %i.ko, align 4, !tbaa !27
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kq = load float, ptr %i.kp, align 8, !tbaa !27
  %i.kr = getelementptr inbounds nuw i8, ptr %.1131.i, i64 8
  store float %i.kq, ptr %i.kr, align 4, !tbaa !27
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !27
  %i.ku = getelementptr inbounds nuw i8, ptr %.1131.i, i64 12
  store float %i.kt, ptr %i.ku, align 4, !tbaa !27
  %i.kv = getelementptr inbounds nuw i8, ptr %.1131.i, i64 16
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 4 ; 2 uses
  %i.kw = icmp samesign ult i64 %indvars.iv.next139.i, %i.jm
  br i1 %i.kw, label %.lr.ph134.i, label %._crit_edge135.i, !llvm.loop !22

_ZN16OpenColorIO_v2_512_GLOBAL__N_124applyTetrahedralAVX2FuncILNS_8BitDepthE8ELS2_8EEEvPKfiPKvPvi.exit: ; preds = %._crit_edge.i, %._crit_edge135.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_123interp_tetrahedral_avx2ERKNS0_16Lut3DContextAVX2ERDv8_fS5_S5_S5_"}
!9 = distinct !{!9, !8, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_123interp_tetrahedral_avx2ERKNS0_16Lut3DContextAVX2ERDv8_fS5_S5_S5_: argument 0"}
!10 = distinct !{!10, !25}
!11 = distinct !{!11, !"LVerDomain"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !25, !30, !31}
!15 = distinct !{!15, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_123interp_tetrahedral_avx2ERKNS0_16Lut3DContextAVX2ERDv8_fS5_S5_S5_"}
!16 = distinct !{!16, !15, !"_ZN16OpenColorIO_v2_512_GLOBAL__N_123interp_tetrahedral_avx2ERKNS0_16Lut3DContextAVX2ERDv8_fS5_S5_S5_: argument 0"}
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !25, !30, !31}
!21 = distinct !{!21, !25, !30}
!22 = distinct !{!22, !25, !30}
!23 = !{!9}
!24 = !{!4, !4, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"float", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!12}
!29 = !{!13}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!16}
!33 = !{!18}
!34 = !{!19}
end_hunk_0
