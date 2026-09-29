Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/repack?download=true
inline.NumInlined: 423
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 70
begin_hunk_0_@ggml_gemm_q4_0_8x8_q8_0:bb.a
  %i.jw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jv, i1 false) ; 2 uses
  %i.jx = icmp slt <64 x i8> %i.jv, zeroinitializer ; 2 uses
  %i.jy = select <64 x i1> %i.jx, <64 x i8> %i.gi, <64 x i8> %i.gh
  %i.jz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jw, <64 x i8> %i.jy)
  %i.ka = bitcast <8 x i32> %i.hf to <32 x i8>
  %i.kb = shufflevector <32 x i8> %i.ka, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kb, i1 false) ; 2 uses
  %i.kd = icmp slt <64 x i8> %i.kb, zeroinitializer ; 2 uses
  %i.ke = select <64 x i1> %i.kd, <64 x i8> %i.gk, <64 x i8> %i.gj
  %i.kf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jz, <64 x i8> %i.kc, <64 x i8> %i.ke)
  %i.kg = bitcast <8 x i32> %i.hd to <32 x i8>
  %i.kh = shufflevector <32 x i8> %i.kg, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ki = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kh, i1 false) ; 2 uses
  %i.kj = icmp slt <64 x i8> %i.kh, zeroinitializer ; 2 uses
  %i.kk = select <64 x i1> %i.kj, <64 x i8> %i.gm, <64 x i8> %i.gl
  %i.kl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kf, <64 x i8> %i.ki, <64 x i8> %i.kk)
  %i.km = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.kn = shufflevector <32 x i8> %i.km, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ko = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kn, i1 false) ; 2 uses
  %i.kp = icmp slt <64 x i8> %i.kn, zeroinitializer ; 2 uses
  %i.kq = select <64 x i1> %i.kp, <64 x i8> %i.go, <64 x i8> %i.gn
  %i.kr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kl, <64 x i8> %i.ko, <64 x i8> %i.kq)
  %i.ks = select <64 x i1> %i.jx, <64 x i8> %i.gq, <64 x i8> %i.gp
  %i.kt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jw, <64 x i8> %i.ks)
  %i.ku = select <64 x i1> %i.kd, <64 x i8> %i.gs, <64 x i8> %i.gr
  %i.kv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kt, <64 x i8> %i.kc, <64 x i8> %i.ku)
  %i.kw = select <64 x i1> %i.kj, <64 x i8> %i.gu, <64 x i8> %i.gt
  %i.kx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kv, <64 x i8> %i.ki, <64 x i8> %i.kw)
  %i.ky = select <64 x i1> %i.kp, <64 x i8> %i.gw, <64 x i8> %i.gv
  %i.kz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kx, <64 x i8> %i.ko, <64 x i8> %i.ky)
  %i.la = bitcast <8 x i32> %i.hh to <32 x i8>
  %i.lb = shufflevector <32 x i8> %i.la, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lb, i1 false) ; 2 uses
  %i.ld = icmp slt <64 x i8> %i.lb, zeroinitializer ; 2 uses
  %i.le = select <64 x i1> %i.ld, <64 x i8> %i.gi, <64 x i8> %i.gh
  %i.lf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.lc, <64 x i8> %i.le)
  %i.lg = bitcast <8 x i32> %i.hf to <32 x i8>
  %i.lh = shufflevector <32 x i8> %i.lg, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.li = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lh, i1 false) ; 2 uses
  %i.lj = icmp slt <64 x i8> %i.lh, zeroinitializer ; 2 uses
  %i.lk = select <64 x i1> %i.lj, <64 x i8> %i.gk, <64 x i8> %i.gj
  %i.ll = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lf, <64 x i8> %i.li, <64 x i8> %i.lk)
  %i.lm = bitcast <8 x i32> %i.hd to <32 x i8>
  %i.ln = shufflevector <32 x i8> %i.lm, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ln, i1 false) ; 2 uses
  %i.lp = icmp slt <64 x i8> %i.ln, zeroinitializer ; 2 uses
  %i.lq = select <64 x i1> %i.lp, <64 x i8> %i.gm, <64 x i8> %i.gl
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ll, <64 x i8> %i.lo, <64 x i8> %i.lq)
  %i.ls = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.lt = shufflevector <32 x i8> %i.ls, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lt, i1 false) ; 2 uses
  %i.lv = icmp slt <64 x i8> %i.lt, zeroinitializer ; 2 uses
  %i.lw = select <64 x i1> %i.lv, <64 x i8> %i.go, <64 x i8> %i.gn
  %i.lx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lr, <64 x i8> %i.lu, <64 x i8> %i.lw)
  %i.ly = select <64 x i1> %i.ld, <64 x i8> %i.gq, <64 x i8> %i.gp
  %i.lz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.lc, <64 x i8> %i.ly)
  %i.ma = select <64 x i1> %i.lj, <64 x i8> %i.gs, <64 x i8> %i.gr
  %i.mb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lz, <64 x i8> %i.li, <64 x i8> %i.ma)
  %i.mc = select <64 x i1> %i.lp, <64 x i8> %i.gu, <64 x i8> %i.gt
  %i.md = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.mb, <64 x i8> %i.lo, <64 x i8> %i.mc)
  %i.me = select <64 x i1> %i.lv, <64 x i8> %i.gw, <64 x i8> %i.gv
  %i.mf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.md, <64 x i8> %i.lu, <64 x i8> %i.me)
  %i.mg = add <16 x i32> %i.kr, %i.if             ; 2 uses
  %i.mh = add <16 x i32> %i.kz, %i.in             ; 2 uses
  %i.mi = add <16 x i32> %i.lx, %i.jl             ; 2 uses
  %i.mj = add <16 x i32> %i.mf, %i.jt             ; 2 uses
  %i.mk = shufflevector <16 x i32> %i.mg, <16 x i32> %i.mh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ml = shufflevector <16 x i32> %i.mg, <16 x i32> %i.mh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.mm = shufflevector <16 x i32> %i.mi, <16 x i32> %i.mj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.mn = shufflevector <16 x i32> %i.mi, <16 x i32> %i.mj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.mo = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.gz, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !111
  %i.mp = bitcast <4 x i32> %i.mo to <8 x half>
  %i.mq = shufflevector <8 x half> %i.mp, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mr = fpext <16 x half> %i.mq to <16 x float> ; 4 uses
  %i.ms = sitofp <16 x i32> %i.mk to <16 x float>
  %i.mt = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.mu = fmul <16 x float> %i.mt, %i.fq
  %.idx1300.i.us = shl nuw nsw i64 %indvars.iv.i.us, 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx1300.i.us ; 5 uses
  %i.mw = load <16 x float>, ptr %i.mv, align 64, !tbaa !9, !noalias !108
  %i.mx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ms, <16 x float> %i.mu, <16 x float> %i.mw)
  store <16 x float> %i.mx, ptr %i.mv, align 64, !tbaa !9, !noalias !108
  %i.my = sitofp <16 x i32> %i.ml to <16 x float>
  %i.mz = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.na = fmul <16 x float> %i.mz, %i.fq
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 64 ; 2 uses
  %i.nc = load <16 x float>, ptr %i.nb, align 64, !tbaa !9, !noalias !108
  %i.nd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.my, <16 x float> %i.na, <16 x float> %i.nc)
  store <16 x float> %i.nd, ptr %i.nb, align 64, !tbaa !9, !noalias !108
  %i.ne = sitofp <16 x i32> %i.mm to <16 x float>
  %i.nf = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.ng = fmul <16 x float> %i.nf, %i.fq
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 128 ; 2 uses
  %i.ni = load <16 x float>, ptr %i.nh, align 64, !tbaa !9, !noalias !108
  %i.nj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ne, <16 x float> %i.ng, <16 x float> %i.ni)
  store <16 x float> %i.nj, ptr %i.nh, align 64, !tbaa !9, !noalias !108
  %i.nk = sitofp <16 x i32> %i.mn to <16 x float>
  %i.nl = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.nm = fmul <16 x float> %i.nl, %i.fq
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mv, i64 192 ; 2 uses
  %i.no = load <16 x float>, ptr %i.nn, align 64, !tbaa !9, !noalias !108
  %i.np = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nk, <16 x float> %i.nm, <16 x float> %i.no)
  store <16 x float> %i.np, ptr %i.nn, align 64, !tbaa !9, !noalias !108
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %bb.c, label %bb.b, !llvm.loop !89

bb.c:                                             ; preds = %bb.b
  %i.nq = add nuw nsw i64 %.09911027.us.i.us, 1   ; 2 uses
  %exitcond1132.not.i.us = icmp eq i64 %i.nq, %i.f
  br i1 %exitcond1132.not.i.us, label %.preheader1020.us.loopexit.i.us, label %.lr.ph.us.i.us, !llvm.loop !90

.preheader1020.us.loopexit.i.us:                  ; preds = %bb.c
  %.pre.i.us = load <16 x float>, ptr %i.b, align 64, !tbaa !9, !noalias !108
  %.pre1222.i.us = load <16 x float>, ptr %.phi.trans.insert.i, align 64, !tbaa !9, !noalias !108
  %.pre1224.i.us = load <16 x float>, ptr %.phi.trans.insert1223.i, align 64, !tbaa !9, !noalias !108
  %.pre1226.i.us = load <16 x float>, ptr %.phi.trans.insert1225.i, align 64, !tbaa !9, !noalias !108
  %.pre1228.i.us = load <16 x float>, ptr %.phi.trans.insert1227.i, align 64, !tbaa !9, !noalias !108
  %.pre1230.i.us = load <16 x float>, ptr %.phi.trans.insert1229.i, align 64, !tbaa !9, !noalias !108
  %.pre1232.i.us = load <16 x float>, ptr %.phi.trans.insert1231.i, align 64, !tbaa !9, !noalias !108
  %.pre1234.i.us = load <16 x float>, ptr %.phi.trans.insert1233.i, align 64, !tbaa !9, !noalias !108
  %.pre1236.i.us = load <16 x float>, ptr %.phi.trans.insert1235.i, align 64, !tbaa !9, !noalias !108
  %.pre1238.i.us = load <16 x float>, ptr %.phi.trans.insert1237.i, align 64, !tbaa !9, !noalias !108
  %.pre1240.i.us = load <16 x float>, ptr %.phi.trans.insert1239.i, align 64, !tbaa !9, !noalias !108
  %.pre1242.i.us = load <16 x float>, ptr %.phi.trans.insert1241.i, align 64, !tbaa !9, !noalias !108
  %.pre1244.i.us = load <16 x float>, ptr %.phi.trans.insert1243.i, align 64, !tbaa !9, !noalias !108
  %.pre1246.i.us = load <16 x float>, ptr %.phi.trans.insert1245.i, align 64, !tbaa !9, !noalias !108
  %.pre1248.i.us = load <16 x float>, ptr %.phi.trans.insert1247.i, align 64, !tbaa !9, !noalias !108
  %.pre1250.i.us = load <16 x float>, ptr %.phi.trans.insert1249.i, align 64, !tbaa !9, !noalias !108
  %.idx1011.us.i.us = shl nuw nsw i64 %.09891029.us.i.us, 5
  %invariant.gep.us.i.us = getelementptr i8, ptr %1, i64 %.idx1011.us.i.us ; 16 uses
  %gep.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.br
  store <16 x float> %.pre.i.us, ptr %gep.us.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bt
  store <16 x float> %.pre1222.i.us, ptr %gep.us.1.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bv
  store <16 x float> %.pre1224.i.us, ptr %gep.us.2.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bx
  store <16 x float> %.pre1226.i.us, ptr %gep.us.3.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bz
  store <16 x float> %.pre1228.i.us, ptr %gep.us.4.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cb
  store <16 x float> %.pre1230.i.us, ptr %gep.us.5.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cd
  store <16 x float> %.pre1232.i.us, ptr %gep.us.6.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cf
  store <16 x float> %.pre1234.i.us, ptr %gep.us.7.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ch
  store <16 x float> %.pre1236.i.us, ptr %gep.us.8.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cj
  store <16 x float> %.pre1238.i.us, ptr %gep.us.9.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cl
  store <16 x float> %.pre1240.i.us, ptr %gep.us.10.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cn
  store <16 x float> %.pre1242.i.us, ptr %gep.us.11.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cp
  store <16 x float> %.pre1244.i.us, ptr %gep.us.12.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cr
  store <16 x float> %.pre1246.i.us, ptr %gep.us.13.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ct
  store <16 x float> %.pre1248.i.us, ptr %gep.us.14.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cv
  store <16 x float> %.pre1250.i.us, ptr %gep.us.15.i.us, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !108
  %i.nr = add nuw nsw i64 %.09891029.us.i.us, 2   ; 2 uses
  %i.ns = icmp slt i64 %i.nr, %i.r
  br i1 %i.ns, label %.preheader1021.us.i.us, label %._crit_edge.us.i, !llvm.loop !91

._crit_edge.us.i:                                 ; preds = %.preheader1020.us.loopexit.i.us, %.preheader1021.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !108
  %i.nt = add nuw nsw i64 %.09861031.us.i, 4      ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar, %i.av
  br i1 %exitcond.not, label %.preheader1019.i, label %.lr.ph1033.split.us.i, !llvm.loop !92

.preheader1019.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph1033.split.i.preheader, %bb.a
  %.0986.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph1033.split.i.preheader ], [ %i.nt, %._crit_edge.us.i ] ; 7 uses
  %i.nu = sdiv i32 %5, 4
  %i.nv = sext i32 %i.nu to i64                   ; 12 uses
  %i.nw = icmp slt i64 %.0986.lcssa.i, %i.nv
  br i1 %i.nw, label %.lr.ph.i, label %._crit_edge1053.i

.lr.ph.i:                                         ; preds = %.preheader1019.i
  %i.nx = sdiv i32 %i.m, 8
  %i.ny = sext i32 %i.nx to i64                   ; 2 uses
  %i.nz = icmp sgt i32 %i.m, 7
  br i1 %i.nz, label %.lr.ph.split.us.i, label %._crit_edge1053.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.oa = icmp sgt i32 %0, 31
  br i1 %i.oa, label %.lr.ph1048.us.us.i, label %.lr.ph1048.us.i.preheader

.lr.ph1048.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  %i.ob = mul i64 %.0986.lcssa.i, %2
  %i.oc = shl i64 %i.ob, 4
  %i.od = shl i64 %2, 4                           ; 5 uses
  %i.oe = shl nuw nsw i64 %i.ny, 5
  %i.of = add nsw i64 %i.oe, -32
  %i.og = and i64 %i.of, -64
  %i.oh = add nsw i64 %i.og, 64                   ; 20 uses
  %i.oi = shl i64 %.0986.lcssa.i, 2               ; 3 uses
  %i.oj = or disjoint i64 %i.oi, 1
  %i.ok = mul i64 %2, %i.oj
  %i.ol = shl i64 %i.ok, 2
  %i.om = or disjoint i64 %i.oi, 2
  %i.on = mul i64 %2, %i.om
  %i.oo = shl i64 %i.on, 2
  %i.op = or disjoint i64 %i.oi, 3
  %i.oq = mul i64 %2, %i.op
  %i.or = shl i64 %i.oq, 2
  %i.os = getelementptr i8, ptr %1, i64 %i.or     ; 5 uses
  %i.ot = getelementptr i8, ptr %1, i64 %i.oo     ; 5 uses
  %i.ou = getelementptr i8, ptr %1, i64 %i.ol     ; 5 uses
  %i.ov = getelementptr i8, ptr %1, i64 %i.oc     ; 5 uses
  %i.ow = sub i64 %i.nv, %.0986.lcssa.i           ; 2 uses
  %xtraiter = and i64 %i.ow, 3                    ; 3 uses
  %i.ox = sub i64 %.0986.lcssa.i, %i.nv
  %i.oy = icmp ugt i64 %i.ox, -4
  br i1 %i.oy, label %.lr.ph1048.us.i.epil.preheader, label %.lr.ph1048.us.i.preheader.new

.lr.ph1048.us.i.preheader.new:                    ; preds = %.lr.ph1048.us.i.preheader
  %unroll_iter = and i64 %i.ow, -4
  br label %.lr.ph1048.us.i

.lr.ph1048.us.us.i:                               ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.11052.us.us.i = phi i64 [ %i.zz, %._crit_edge.split.us.us.us.i ], [ %.0986.lcssa.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.oz = mul nsw i64 %.11052.us.us.i, %i.f
  %i.pa = getelementptr inbounds [136 x i8], ptr %4, i64 %i.oz
  %i.pb = shl nuw nsw i64 %.11052.us.us.i, 2      ; 4 uses
  %i.pc = mul i64 %i.pb, %2
  %i.pd = or disjoint i64 %i.pb, 1
  %i.pe = mul i64 %i.pd, %2
  %i.pf = or disjoint i64 %i.pb, 2
  %i.pg = mul i64 %i.pf, %2
  %i.ph = or disjoint i64 %i.pb, 3
  %i.pi = mul i64 %i.ph, %2
  br label %.preheader1018.us.us.us.i

.preheader1018.us.us.us.i:                        ; preds = %..preheader1017_crit_edge.us.us.us.i, %.lr.ph1048.us.us.i
  %.09941047.us.us.us.i = phi i64 [ 0, %.lr.ph1048.us.us.i ], [ %i.zx, %..preheader1017_crit_edge.us.us.us.i ] ; 4 uses
  %i.pj = mul nuw nsw i64 %.09941047.us.us.us.i, %i.f
  %i.pk = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.pj
  %i.pl = or disjoint i64 %.09941047.us.us.us.i, 1
  %i.pm = mul nuw nsw i64 %i.pl, %i.f
  %i.pn = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.pm
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader1018.us.us.us.i
  %i.po = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zv, %bb.d ]
  %i.pp = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zr, %bb.d ]
  %i.pq = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zn, %bb.d ]
  %.09961038.us.us.us.i = phi i64 [ 0, %.preheader1018.us.us.us.i ], [ %i.zw, %bb.d ] ; 4 uses
  %i.pr = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zj, %bb.d ]
  %i.ps = getelementptr inbounds nuw [144 x i8], ptr %i.pk, i64 %.09961038.us.us.us.i ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load <8 x i32>, ptr %i.pt, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 48
  %i.pw = load <8 x i32>, ptr %i.pv, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 80
  %i.py = load <8 x i32>, ptr %i.px, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 112
  %i.qa = load <8 x i32>, ptr %i.pz, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.qb = getelementptr inbounds nuw [144 x i8], ptr %i.pn, i64 %.09961038.us.us.us.i ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load <8 x i32>, ptr %i.qc, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.qf = load <8 x i32>, ptr %i.qe, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 80
  %i.qh = load <8 x i32>, ptr %i.qg, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 112
  %i.qj = load <8 x i32>, ptr %i.qi, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.qk = shufflevector <8 x i32> %i.pu, <8 x i32> %i.pw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ql = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qm = shufflevector <16 x i32> %i.qk, <16 x i32> %i.ql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qn = shufflevector <8 x i32> %i.pu, <8 x i32> %i.pw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qo = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qp = shufflevector <16 x i32> %i.qn, <16 x i32> %i.qo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qq = shufflevector <8 x i32> %i.py, <8 x i32> %i.qa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qr = shufflevector <8 x i32> %i.qh, <8 x i32> %i.qj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qs = shufflevector <16 x i32> %i.qq, <16 x i32> %i.qr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qt = shufflevector <8 x i32> %i.py, <8 x i32> %i.qa, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qu = shufflevector <8 x i32> %i.qh, <8 x i32> %i.qj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qv = shufflevector <16 x i32> %i.qt, <16 x i32> %i.qu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qw = bitcast <16 x i32> %i.qm to <64 x i8>
  %i.qx = and <64 x i8> %i.qw, splat (i8 15)
  %i.qy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.qx) ; 2 uses
  %i.qz = bitcast <16 x i32> %i.qp to <64 x i8>
  %i.ra = and <64 x i8> %i.qz, splat (i8 15)
  %i.rb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ra) ; 2 uses
  %i.rc = bitcast <16 x i32> %i.qs to <64 x i8>
  %i.rd = and <64 x i8> %i.rc, splat (i8 15)
  %i.re = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.rd) ; 2 uses
  %i.rf = bitcast <16 x i32> %i.qv to <64 x i8>
  %i.rg = and <64 x i8> %i.rf, splat (i8 15)
  %i.rh = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.rg) ; 2 uses
  %i.ri = bitcast <16 x i32> %i.qm to <32 x i16>
  %i.rj = lshr <32 x i16> %i.ri, splat (i16 4)
  %i.rk = bitcast <32 x i16> %i.rj to <64 x i8>
  %i.rl = and <64 x i8> %i.rk, splat (i8 15)
  %i.rm = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.rl) ; 2 uses
  %i.rn = bitcast <16 x i32> %i.qp to <32 x i16>
  %i.ro = lshr <32 x i16> %i.rn, splat (i16 4)
  %i.rp = bitcast <32 x i16> %i.ro to <64 x i8>
  %i.rq = and <64 x i8> %i.rp, splat (i8 15)
  %i.rr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.rq) ; 2 uses
  %i.rs = bitcast <16 x i32> %i.qs to <32 x i16>
  %i.rt = lshr <32 x i16> %i.rs, splat (i16 4)
  %i.ru = bitcast <32 x i16> %i.rt to <64 x i8>
  %i.rv = and <64 x i8> %i.ru, splat (i8 15)
  %i.rw = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.rv) ; 2 uses
  %i.rx = bitcast <16 x i32> %i.qv to <32 x i16>
  %i.ry = lshr <32 x i16> %i.rx, splat (i16 4)
  %i.rz = bitcast <32 x i16> %i.ry to <64 x i8>
  %i.sa = and <64 x i8> %i.rz, splat (i8 15)
  %i.sb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.sa) ; 2 uses
  %i.sc = load <2 x i64>, ptr %i.qb, align 1, !tbaa !9, !alias.scope !106, !noalias !110
  %i.sd = load <2 x i64>, ptr %i.ps, align 1, !tbaa !9, !alias.scope !106, !noalias !110
  %i.se = shufflevector <2 x i64> %i.sd, <2 x i64> %i.sc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sf = bitcast <4 x i64> %i.se to <16 x half>
  %i.sg = fpext <16 x half> %i.sf to <16 x float> ; 4 uses
  %i.sh = getelementptr inbounds nuw [136 x i8], ptr %i.pa, i64 %.09961038.us.us.us.i ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load <8 x i32>, ptr %i.si, align 1, !tbaa !9, !alias.scope !107, !noalias !111 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 40
  %i.sl = load <8 x i32>, ptr %i.sk, align 1, !tbaa !9, !alias.scope !107, !noalias !111 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 72
  %i.sn = load <8 x i32>, ptr %i.sm, align 1, !tbaa !9, !alias.scope !107, !noalias !111 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sh, i64 104
  %i.sp = load <8 x i32>, ptr %i.so, align 1, !tbaa !9, !alias.scope !107, !noalias !111 ; 4 uses
  %i.sq = bitcast <8 x i32> %i.sp to <32 x i8>
  %i.sr = shufflevector <32 x i8> %i.sq, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ss = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sr, i1 false) ; 2 uses
  %i.st = icmp slt <64 x i8> %i.sr, zeroinitializer ; 2 uses
  %i.su = shufflevector <64 x i8> %i.rw, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sv = sub <64 x i8> zeroinitializer, %i.su    ; 2 uses
  %i.sw = select <64 x i1> %i.st, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.sx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.sw)
  %i.sy = bitcast <8 x i32> %i.sn to <32 x i8>
  %i.sz = shufflevector <32 x i8> %i.sy, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ta = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sz, i1 false) ; 2 uses
  %i.tb = icmp slt <64 x i8> %i.sz, zeroinitializer ; 2 uses
  %i.tc = shufflevector <64 x i8> %i.rm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.td = sub <64 x i8> zeroinitializer, %i.tc    ; 2 uses
  %i.te = select <64 x i1> %i.tb, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.tf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sx, <64 x i8> %i.ta, <64 x i8> %i.te)
  %i.tg = bitcast <8 x i32> %i.sl to <32 x i8>
  %i.th = shufflevector <32 x i8> %i.tg, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ti = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.th, i1 false) ; 2 uses
  %i.tj = icmp slt <64 x i8> %i.th, zeroinitializer ; 2 uses
  %i.tk = shufflevector <64 x i8> %i.re, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tl = sub <64 x i8> zeroinitializer, %i.tk    ; 2 uses
  %i.tm = select <64 x i1> %i.tj, <64 x i8> %i.tl, <64 x i8> %i.tk
  %i.tn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tf, <64 x i8> %i.ti, <64 x i8> %i.tm)
  %i.to = bitcast <8 x i32> %i.sj to <32 x i8>
  %i.tp = shufflevector <32 x i8> %i.to, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.tq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tp, i1 false) ; 2 uses
  %i.tr = icmp slt <64 x i8> %i.tp, zeroinitializer ; 2 uses
  %i.ts = shufflevector <64 x i8> %i.qy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tt = sub <64 x i8> zeroinitializer, %i.ts    ; 2 uses
  %i.tu = select <64 x i1> %i.tr, <64 x i8> %i.tt, <64 x i8> %i.ts
  %i.tv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tn, <64 x i8> %i.tq, <64 x i8> %i.tu)
  %i.tw = shufflevector <64 x i8> %i.sb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tx = sub <64 x i8> zeroinitializer, %i.tw    ; 2 uses
  %i.ty = select <64 x i1> %i.st, <64 x i8> %i.tx, <64 x i8> %i.tw
  %i.tz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.ty)
  %i.ua = shufflevector <64 x i8> %i.rr, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ub = sub <64 x i8> zeroinitializer, %i.ua    ; 2 uses
  %i.uc = select <64 x i1> %i.tb, <64 x i8> %i.ub, <64 x i8> %i.ua
  %i.ud = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tz, <64 x i8> %i.ta, <64 x i8> %i.uc)
  %i.ue = shufflevector <64 x i8> %i.rh, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.uf = sub <64 x i8> zeroinitializer, %i.ue    ; 2 uses
  %i.ug = select <64 x i1> %i.tj, <64 x i8> %i.uf, <64 x i8> %i.ue
  %i.uh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ud, <64 x i8> %i.ti, <64 x i8> %i.ug)
  %i.ui = shufflevector <64 x i8> %i.rb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.uj = sub <64 x i8> zeroinitializer, %i.ui    ; 2 uses
  %i.uk = select <64 x i1> %i.tr, <64 x i8> %i.uj, <64 x i8> %i.ui
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uh, <64 x i8> %i.tq, <64 x i8> %i.uk)
  %i.um = bitcast <8 x i32> %i.sp to <32 x i8>
  %i.un = shufflevector <32 x i8> %i.um, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.un, i1 false) ; 2 uses
  %i.up = icmp slt <64 x i8> %i.un, zeroinitializer ; 2 uses
  %i.uq = select <64 x i1> %i.up, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.ur = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uo, <64 x i8> %i.uq)
  %i.us = bitcast <8 x i32> %i.sn to <32 x i8>
  %i.ut = shufflevector <32 x i8> %i.us, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ut, i1 false) ; 2 uses
  %i.uv = icmp slt <64 x i8> %i.ut, zeroinitializer ; 2 uses
  %i.uw = select <64 x i1> %i.uv, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.ux = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ur, <64 x i8> %i.uu, <64 x i8> %i.uw)
  %i.uy = bitcast <8 x i32> %i.sl to <32 x i8>
  %i.uz = shufflevector <32 x i8> %i.uy, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.va = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uz, i1 false) ; 2 uses
  %i.vb = icmp slt <64 x i8> %i.uz, zeroinitializer ; 2 uses
  %i.vc = select <64 x i1> %i.vb, <64 x i8> %i.tl, <64 x i8> %i.tk
  %i.vd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ux, <64 x i8> %i.va, <64 x i8> %i.vc)
  %i.ve = bitcast <8 x i32> %i.sj to <32 x i8>
  %i.vf = shufflevector <32 x i8> %i.ve, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.vg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vf, i1 false) ; 2 uses
  %i.vh = icmp slt <64 x i8> %i.vf, zeroinitializer ; 2 uses
  %i.vi = select <64 x i1> %i.vh, <64 x i8> %i.tt, <64 x i8> %i.ts
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vd, <64 x i8> %i.vg, <64 x i8> %i.vi)
end_hunk_0
begin_hunk_1_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  %i.jw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jv, i1 false) ; 2 uses
  %i.jx = icmp slt <64 x i8> %i.jv, zeroinitializer ; 2 uses
  %i.jy = select <64 x i1> %i.jx, <64 x i8> %i.gi, <64 x i8> %i.gh
  %i.jz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jw, <64 x i8> %i.jy)
  %i.ka = bitcast <8 x i32> %i.hf to <32 x i8>
  %i.kb = shufflevector <32 x i8> %i.ka, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kb, i1 false) ; 2 uses
  %i.kd = icmp slt <64 x i8> %i.kb, zeroinitializer ; 2 uses
  %i.ke = select <64 x i1> %i.kd, <64 x i8> %i.gk, <64 x i8> %i.gj
  %i.kf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jz, <64 x i8> %i.kc, <64 x i8> %i.ke)
  %i.kg = bitcast <8 x i32> %i.hd to <32 x i8>
  %i.kh = shufflevector <32 x i8> %i.kg, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ki = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kh, i1 false) ; 2 uses
  %i.kj = icmp slt <64 x i8> %i.kh, zeroinitializer ; 2 uses
  %i.kk = select <64 x i1> %i.kj, <64 x i8> %i.gm, <64 x i8> %i.gl
  %i.kl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kf, <64 x i8> %i.ki, <64 x i8> %i.kk)
  %i.km = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.kn = shufflevector <32 x i8> %i.km, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ko = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kn, i1 false) ; 2 uses
  %i.kp = icmp slt <64 x i8> %i.kn, zeroinitializer ; 2 uses
  %i.kq = select <64 x i1> %i.kp, <64 x i8> %i.go, <64 x i8> %i.gn
  %i.kr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kl, <64 x i8> %i.ko, <64 x i8> %i.kq)
  %i.ks = select <64 x i1> %i.jx, <64 x i8> %i.gq, <64 x i8> %i.gp
  %i.kt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jw, <64 x i8> %i.ks)
  %i.ku = select <64 x i1> %i.kd, <64 x i8> %i.gs, <64 x i8> %i.gr
  %i.kv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kt, <64 x i8> %i.kc, <64 x i8> %i.ku)
  %i.kw = select <64 x i1> %i.kj, <64 x i8> %i.gu, <64 x i8> %i.gt
  %i.kx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kv, <64 x i8> %i.ki, <64 x i8> %i.kw)
  %i.ky = select <64 x i1> %i.kp, <64 x i8> %i.gw, <64 x i8> %i.gv
  %i.kz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kx, <64 x i8> %i.ko, <64 x i8> %i.ky)
  %i.la = bitcast <8 x i32> %i.hh to <32 x i8>
  %i.lb = shufflevector <32 x i8> %i.la, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lb, i1 false) ; 2 uses
  %i.ld = icmp slt <64 x i8> %i.lb, zeroinitializer ; 2 uses
  %i.le = select <64 x i1> %i.ld, <64 x i8> %i.gi, <64 x i8> %i.gh
  %i.lf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.lc, <64 x i8> %i.le)
  %i.lg = bitcast <8 x i32> %i.hf to <32 x i8>
  %i.lh = shufflevector <32 x i8> %i.lg, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.li = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lh, i1 false) ; 2 uses
  %i.lj = icmp slt <64 x i8> %i.lh, zeroinitializer ; 2 uses
  %i.lk = select <64 x i1> %i.lj, <64 x i8> %i.gk, <64 x i8> %i.gj
  %i.ll = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lf, <64 x i8> %i.li, <64 x i8> %i.lk)
  %i.lm = bitcast <8 x i32> %i.hd to <32 x i8>
  %i.ln = shufflevector <32 x i8> %i.lm, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ln, i1 false) ; 2 uses
  %i.lp = icmp slt <64 x i8> %i.ln, zeroinitializer ; 2 uses
  %i.lq = select <64 x i1> %i.lp, <64 x i8> %i.gm, <64 x i8> %i.gl
  %i.lr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ll, <64 x i8> %i.lo, <64 x i8> %i.lq)
  %i.ls = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.lt = shufflevector <32 x i8> %i.ls, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lt, i1 false) ; 2 uses
  %i.lv = icmp slt <64 x i8> %i.lt, zeroinitializer ; 2 uses
  %i.lw = select <64 x i1> %i.lv, <64 x i8> %i.go, <64 x i8> %i.gn
  %i.lx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lr, <64 x i8> %i.lu, <64 x i8> %i.lw)
  %i.ly = select <64 x i1> %i.ld, <64 x i8> %i.gq, <64 x i8> %i.gp
  %i.lz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.lc, <64 x i8> %i.ly)
  %i.ma = select <64 x i1> %i.lj, <64 x i8> %i.gs, <64 x i8> %i.gr
  %i.mb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lz, <64 x i8> %i.li, <64 x i8> %i.ma)
  %i.mc = select <64 x i1> %i.lp, <64 x i8> %i.gu, <64 x i8> %i.gt
  %i.md = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.mb, <64 x i8> %i.lo, <64 x i8> %i.mc)
  %i.me = select <64 x i1> %i.lv, <64 x i8> %i.gw, <64 x i8> %i.gv
  %i.mf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.md, <64 x i8> %i.lu, <64 x i8> %i.me)
  %i.mg = add <16 x i32> %i.kr, %i.if             ; 2 uses
  %i.mh = add <16 x i32> %i.kz, %i.in             ; 2 uses
  %i.mi = add <16 x i32> %i.lx, %i.jl             ; 2 uses
  %i.mj = add <16 x i32> %i.mf, %i.jt             ; 2 uses
  %i.mk = shufflevector <16 x i32> %i.mg, <16 x i32> %i.mh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.ml = shufflevector <16 x i32> %i.mg, <16 x i32> %i.mh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.mm = shufflevector <16 x i32> %i.mi, <16 x i32> %i.mj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.mn = shufflevector <16 x i32> %i.mi, <16 x i32> %i.mj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.mo = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.gz, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !158
  %i.mp = bitcast <4 x i32> %i.mo to <8 x half>
  %i.mq = shufflevector <8 x half> %i.mp, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mr = fpext <16 x half> %i.mq to <16 x float> ; 4 uses
  %i.ms = sitofp <16 x i32> %i.mk to <16 x float>
  %i.mt = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.mu = fmul <16 x float> %i.mt, %i.fq
  %.idx1300.i.us = shl nuw nsw i64 %indvars.iv.i.us, 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx1300.i.us ; 5 uses
  %i.mw = load <16 x float>, ptr %i.mv, align 64, !tbaa !9, !noalias !155
  %i.mx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ms, <16 x float> %i.mu, <16 x float> %i.mw)
  store <16 x float> %i.mx, ptr %i.mv, align 64, !tbaa !9, !noalias !155
  %i.my = sitofp <16 x i32> %i.ml to <16 x float>
  %i.mz = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.na = fmul <16 x float> %i.mz, %i.fq
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 64 ; 2 uses
  %i.nc = load <16 x float>, ptr %i.nb, align 64, !tbaa !9, !noalias !155
  %i.nd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.my, <16 x float> %i.na, <16 x float> %i.nc)
  store <16 x float> %i.nd, ptr %i.nb, align 64, !tbaa !9, !noalias !155
  %i.ne = sitofp <16 x i32> %i.mm to <16 x float>
  %i.nf = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.ng = fmul <16 x float> %i.nf, %i.fq
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 128 ; 2 uses
  %i.ni = load <16 x float>, ptr %i.nh, align 64, !tbaa !9, !noalias !155
  %i.nj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ne, <16 x float> %i.ng, <16 x float> %i.ni)
  store <16 x float> %i.nj, ptr %i.nh, align 64, !tbaa !9, !noalias !155
  %i.nk = sitofp <16 x i32> %i.mn to <16 x float>
  %i.nl = shufflevector <16 x float> %i.mr, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.nm = fmul <16 x float> %i.nl, %i.fq
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mv, i64 192 ; 2 uses
  %i.no = load <16 x float>, ptr %i.nn, align 64, !tbaa !9, !noalias !155
  %i.np = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nk, <16 x float> %i.nm, <16 x float> %i.no)
  store <16 x float> %i.np, ptr %i.nn, align 64, !tbaa !9, !noalias !155
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %bb.c, label %bb.b, !llvm.loop !136

bb.c:                                             ; preds = %bb.b
  %i.nq = add nuw nsw i64 %.09911027.us.i.us, 1   ; 2 uses
  %exitcond1132.not.i.us = icmp eq i64 %i.nq, %i.f
  br i1 %exitcond1132.not.i.us, label %.preheader1020.us.loopexit.i.us, label %.lr.ph.us.i.us, !llvm.loop !137

.preheader1020.us.loopexit.i.us:                  ; preds = %bb.c
  %.pre.i.us = load <16 x float>, ptr %i.b, align 64, !tbaa !9, !noalias !155
  %.pre1222.i.us = load <16 x float>, ptr %.phi.trans.insert.i, align 64, !tbaa !9, !noalias !155
  %.pre1224.i.us = load <16 x float>, ptr %.phi.trans.insert1223.i, align 64, !tbaa !9, !noalias !155
  %.pre1226.i.us = load <16 x float>, ptr %.phi.trans.insert1225.i, align 64, !tbaa !9, !noalias !155
  %.pre1228.i.us = load <16 x float>, ptr %.phi.trans.insert1227.i, align 64, !tbaa !9, !noalias !155
  %.pre1230.i.us = load <16 x float>, ptr %.phi.trans.insert1229.i, align 64, !tbaa !9, !noalias !155
  %.pre1232.i.us = load <16 x float>, ptr %.phi.trans.insert1231.i, align 64, !tbaa !9, !noalias !155
  %.pre1234.i.us = load <16 x float>, ptr %.phi.trans.insert1233.i, align 64, !tbaa !9, !noalias !155
  %.pre1236.i.us = load <16 x float>, ptr %.phi.trans.insert1235.i, align 64, !tbaa !9, !noalias !155
  %.pre1238.i.us = load <16 x float>, ptr %.phi.trans.insert1237.i, align 64, !tbaa !9, !noalias !155
  %.pre1240.i.us = load <16 x float>, ptr %.phi.trans.insert1239.i, align 64, !tbaa !9, !noalias !155
  %.pre1242.i.us = load <16 x float>, ptr %.phi.trans.insert1241.i, align 64, !tbaa !9, !noalias !155
  %.pre1244.i.us = load <16 x float>, ptr %.phi.trans.insert1243.i, align 64, !tbaa !9, !noalias !155
  %.pre1246.i.us = load <16 x float>, ptr %.phi.trans.insert1245.i, align 64, !tbaa !9, !noalias !155
  %.pre1248.i.us = load <16 x float>, ptr %.phi.trans.insert1247.i, align 64, !tbaa !9, !noalias !155
  %.pre1250.i.us = load <16 x float>, ptr %.phi.trans.insert1249.i, align 64, !tbaa !9, !noalias !155
  %.idx1011.us.i.us = shl nuw nsw i64 %.09891029.us.i.us, 5
  %invariant.gep.us.i.us = getelementptr i8, ptr %1, i64 %.idx1011.us.i.us ; 16 uses
  %gep.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.br
  store <16 x float> %.pre.i.us, ptr %gep.us.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bt
  store <16 x float> %.pre1222.i.us, ptr %gep.us.1.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bv
  store <16 x float> %.pre1224.i.us, ptr %gep.us.2.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bx
  store <16 x float> %.pre1226.i.us, ptr %gep.us.3.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bz
  store <16 x float> %.pre1228.i.us, ptr %gep.us.4.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cb
  store <16 x float> %.pre1230.i.us, ptr %gep.us.5.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cd
  store <16 x float> %.pre1232.i.us, ptr %gep.us.6.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cf
  store <16 x float> %.pre1234.i.us, ptr %gep.us.7.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ch
  store <16 x float> %.pre1236.i.us, ptr %gep.us.8.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cj
  store <16 x float> %.pre1238.i.us, ptr %gep.us.9.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cl
  store <16 x float> %.pre1240.i.us, ptr %gep.us.10.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cn
  store <16 x float> %.pre1242.i.us, ptr %gep.us.11.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cp
  store <16 x float> %.pre1244.i.us, ptr %gep.us.12.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cr
  store <16 x float> %.pre1246.i.us, ptr %gep.us.13.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ct
  store <16 x float> %.pre1248.i.us, ptr %gep.us.14.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cv
  store <16 x float> %.pre1250.i.us, ptr %gep.us.15.i.us, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !155
  %i.nr = add nuw nsw i64 %.09891029.us.i.us, 2   ; 2 uses
  %i.ns = icmp slt i64 %i.nr, %i.r
  br i1 %i.ns, label %.preheader1021.us.i.us, label %._crit_edge.us.i, !llvm.loop !138

._crit_edge.us.i:                                 ; preds = %.preheader1020.us.loopexit.i.us, %.preheader1021.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !155
  %i.nt = add nuw nsw i64 %.09861031.us.i, 4      ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar, %i.av
  br i1 %exitcond.not, label %.preheader1019.i, label %.lr.ph1033.split.us.i, !llvm.loop !139

.preheader1019.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph1033.split.i.preheader, %bb.a
  %.0986.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph1033.split.i.preheader ], [ %i.nt, %._crit_edge.us.i ] ; 7 uses
  %i.nu = sdiv i32 %5, 4
  %i.nv = sext i32 %i.nu to i64                   ; 12 uses
  %i.nw = icmp slt i64 %.0986.lcssa.i, %i.nv
  br i1 %i.nw, label %.lr.ph.i, label %._crit_edge1053.i

.lr.ph.i:                                         ; preds = %.preheader1019.i
  %i.nx = sdiv i32 %i.m, 8
  %i.ny = sext i32 %i.nx to i64                   ; 2 uses
  %i.nz = icmp sgt i32 %i.m, 7
  br i1 %i.nz, label %.lr.ph.split.us.i, label %._crit_edge1053.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.oa = icmp sgt i32 %0, 31
  br i1 %i.oa, label %.lr.ph1048.us.us.i, label %.lr.ph1048.us.i.preheader

.lr.ph1048.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  %i.ob = mul i64 %.0986.lcssa.i, %2
  %i.oc = shl i64 %i.ob, 4
  %i.od = shl i64 %2, 4                           ; 5 uses
  %i.oe = shl nuw nsw i64 %i.ny, 5
  %i.of = add nsw i64 %i.oe, -32
  %i.og = and i64 %i.of, -64
  %i.oh = add nsw i64 %i.og, 64                   ; 20 uses
  %i.oi = shl i64 %.0986.lcssa.i, 2               ; 3 uses
  %i.oj = or disjoint i64 %i.oi, 1
  %i.ok = mul i64 %2, %i.oj
  %i.ol = shl i64 %i.ok, 2
  %i.om = or disjoint i64 %i.oi, 2
  %i.on = mul i64 %2, %i.om
  %i.oo = shl i64 %i.on, 2
  %i.op = or disjoint i64 %i.oi, 3
  %i.oq = mul i64 %2, %i.op
  %i.or = shl i64 %i.oq, 2
  %i.os = getelementptr i8, ptr %1, i64 %i.or     ; 5 uses
  %i.ot = getelementptr i8, ptr %1, i64 %i.oo     ; 5 uses
  %i.ou = getelementptr i8, ptr %1, i64 %i.ol     ; 5 uses
  %i.ov = getelementptr i8, ptr %1, i64 %i.oc     ; 5 uses
  %i.ow = sub i64 %i.nv, %.0986.lcssa.i           ; 2 uses
  %xtraiter = and i64 %i.ow, 3                    ; 3 uses
  %i.ox = sub i64 %.0986.lcssa.i, %i.nv
  %i.oy = icmp ugt i64 %i.ox, -4
  br i1 %i.oy, label %.lr.ph1048.us.i.epil.preheader, label %.lr.ph1048.us.i.preheader.new

.lr.ph1048.us.i.preheader.new:                    ; preds = %.lr.ph1048.us.i.preheader
  %unroll_iter = and i64 %i.ow, -4
  br label %.lr.ph1048.us.i

.lr.ph1048.us.us.i:                               ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.11052.us.us.i = phi i64 [ %i.zz, %._crit_edge.split.us.us.us.i ], [ %.0986.lcssa.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.oz = mul nsw i64 %.11052.us.us.i, %i.f
  %i.pa = getelementptr inbounds [136 x i8], ptr %4, i64 %i.oz
  %i.pb = shl nuw nsw i64 %.11052.us.us.i, 2      ; 4 uses
  %i.pc = mul i64 %i.pb, %2
  %i.pd = or disjoint i64 %i.pb, 1
  %i.pe = mul i64 %i.pd, %2
  %i.pf = or disjoint i64 %i.pb, 2
  %i.pg = mul i64 %i.pf, %2
  %i.ph = or disjoint i64 %i.pb, 3
  %i.pi = mul i64 %i.ph, %2
  br label %.preheader1018.us.us.us.i

.preheader1018.us.us.us.i:                        ; preds = %..preheader1017_crit_edge.us.us.us.i, %.lr.ph1048.us.us.i
  %.09941047.us.us.us.i = phi i64 [ 0, %.lr.ph1048.us.us.i ], [ %i.zx, %..preheader1017_crit_edge.us.us.us.i ] ; 4 uses
  %i.pj = mul nuw nsw i64 %.09941047.us.us.us.i, %i.f
  %i.pk = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.pj
  %i.pl = or disjoint i64 %.09941047.us.us.us.i, 1
  %i.pm = mul nuw nsw i64 %i.pl, %i.f
  %i.pn = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.pm
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader1018.us.us.us.i
  %i.po = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zv, %bb.d ]
  %i.pp = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zr, %bb.d ]
  %i.pq = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zn, %bb.d ]
  %.09961038.us.us.us.i = phi i64 [ 0, %.preheader1018.us.us.us.i ], [ %i.zw, %bb.d ] ; 4 uses
  %i.pr = phi <16 x float> [ zeroinitializer, %.preheader1018.us.us.us.i ], [ %i.zj, %bb.d ]
  %i.ps = getelementptr inbounds nuw [144 x i8], ptr %i.pk, i64 %.09961038.us.us.us.i ; 5 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load <8 x i32>, ptr %i.pt, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 48
  %i.pw = load <8 x i32>, ptr %i.pv, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 80
  %i.py = load <8 x i32>, ptr %i.px, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 112
  %i.qa = load <8 x i32>, ptr %i.pz, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.qb = getelementptr inbounds nuw [144 x i8], ptr %i.pn, i64 %.09961038.us.us.us.i ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load <8 x i32>, ptr %i.qc, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.qf = load <8 x i32>, ptr %i.qe, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 80
  %i.qh = load <8 x i32>, ptr %i.qg, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 112
  %i.qj = load <8 x i32>, ptr %i.qi, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.qk = shufflevector <8 x i32> %i.pu, <8 x i32> %i.pw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ql = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qm = shufflevector <16 x i32> %i.qk, <16 x i32> %i.ql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qn = shufflevector <8 x i32> %i.pu, <8 x i32> %i.pw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qo = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qp = shufflevector <16 x i32> %i.qn, <16 x i32> %i.qo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qq = shufflevector <8 x i32> %i.py, <8 x i32> %i.qa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qr = shufflevector <8 x i32> %i.qh, <8 x i32> %i.qj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qs = shufflevector <16 x i32> %i.qq, <16 x i32> %i.qr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qt = shufflevector <8 x i32> %i.py, <8 x i32> %i.qa, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qu = shufflevector <8 x i32> %i.qh, <8 x i32> %i.qj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qv = shufflevector <16 x i32> %i.qt, <16 x i32> %i.qu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qw = bitcast <16 x i32> %i.qm to <64 x i8>
  %i.qx = and <64 x i8> %i.qw, splat (i8 15)
  %i.qy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.qx) ; 2 uses
  %i.qz = bitcast <16 x i32> %i.qp to <64 x i8>
  %i.ra = and <64 x i8> %i.qz, splat (i8 15)
  %i.rb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ra) ; 2 uses
  %i.rc = bitcast <16 x i32> %i.qs to <64 x i8>
  %i.rd = and <64 x i8> %i.rc, splat (i8 15)
  %i.re = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.rd) ; 2 uses
  %i.rf = bitcast <16 x i32> %i.qv to <64 x i8>
  %i.rg = and <64 x i8> %i.rf, splat (i8 15)
  %i.rh = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.rg) ; 2 uses
  %i.ri = bitcast <16 x i32> %i.qm to <32 x i16>
  %i.rj = lshr <32 x i16> %i.ri, splat (i16 4)
  %i.rk = bitcast <32 x i16> %i.rj to <64 x i8>
  %i.rl = and <64 x i8> %i.rk, splat (i8 15)
  %i.rm = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.rl) ; 2 uses
  %i.rn = bitcast <16 x i32> %i.qp to <32 x i16>
  %i.ro = lshr <32 x i16> %i.rn, splat (i16 4)
  %i.rp = bitcast <32 x i16> %i.ro to <64 x i8>
  %i.rq = and <64 x i8> %i.rp, splat (i8 15)
  %i.rr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.rq) ; 2 uses
  %i.rs = bitcast <16 x i32> %i.qs to <32 x i16>
  %i.rt = lshr <32 x i16> %i.rs, splat (i16 4)
  %i.ru = bitcast <32 x i16> %i.rt to <64 x i8>
  %i.rv = and <64 x i8> %i.ru, splat (i8 15)
  %i.rw = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.rv) ; 2 uses
  %i.rx = bitcast <16 x i32> %i.qv to <32 x i16>
  %i.ry = lshr <32 x i16> %i.rx, splat (i16 4)
  %i.rz = bitcast <32 x i16> %i.ry to <64 x i8>
  %i.sa = and <64 x i8> %i.rz, splat (i8 15)
  %i.sb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.sa) ; 2 uses
  %i.sc = load <2 x i64>, ptr %i.qb, align 1, !tbaa !9, !alias.scope !153, !noalias !157
  %i.sd = load <2 x i64>, ptr %i.ps, align 1, !tbaa !9, !alias.scope !153, !noalias !157
  %i.se = shufflevector <2 x i64> %i.sd, <2 x i64> %i.sc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sf = bitcast <4 x i64> %i.se to <16 x half>
  %i.sg = fpext <16 x half> %i.sf to <16 x float> ; 4 uses
  %i.sh = getelementptr inbounds nuw [136 x i8], ptr %i.pa, i64 %.09961038.us.us.us.i ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load <8 x i32>, ptr %i.si, align 1, !tbaa !9, !alias.scope !154, !noalias !158 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 40
  %i.sl = load <8 x i32>, ptr %i.sk, align 1, !tbaa !9, !alias.scope !154, !noalias !158 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 72
  %i.sn = load <8 x i32>, ptr %i.sm, align 1, !tbaa !9, !alias.scope !154, !noalias !158 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sh, i64 104
  %i.sp = load <8 x i32>, ptr %i.so, align 1, !tbaa !9, !alias.scope !154, !noalias !158 ; 4 uses
  %i.sq = bitcast <8 x i32> %i.sp to <32 x i8>
  %i.sr = shufflevector <32 x i8> %i.sq, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ss = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sr, i1 false) ; 2 uses
  %i.st = icmp slt <64 x i8> %i.sr, zeroinitializer ; 2 uses
  %i.su = shufflevector <64 x i8> %i.rw, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sv = sub <64 x i8> zeroinitializer, %i.su    ; 2 uses
  %i.sw = select <64 x i1> %i.st, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.sx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.sw)
  %i.sy = bitcast <8 x i32> %i.sn to <32 x i8>
  %i.sz = shufflevector <32 x i8> %i.sy, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ta = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sz, i1 false) ; 2 uses
  %i.tb = icmp slt <64 x i8> %i.sz, zeroinitializer ; 2 uses
  %i.tc = shufflevector <64 x i8> %i.rm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.td = sub <64 x i8> zeroinitializer, %i.tc    ; 2 uses
  %i.te = select <64 x i1> %i.tb, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.tf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sx, <64 x i8> %i.ta, <64 x i8> %i.te)
  %i.tg = bitcast <8 x i32> %i.sl to <32 x i8>
  %i.th = shufflevector <32 x i8> %i.tg, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ti = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.th, i1 false) ; 2 uses
  %i.tj = icmp slt <64 x i8> %i.th, zeroinitializer ; 2 uses
  %i.tk = shufflevector <64 x i8> %i.re, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tl = sub <64 x i8> zeroinitializer, %i.tk    ; 2 uses
  %i.tm = select <64 x i1> %i.tj, <64 x i8> %i.tl, <64 x i8> %i.tk
  %i.tn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tf, <64 x i8> %i.ti, <64 x i8> %i.tm)
  %i.to = bitcast <8 x i32> %i.sj to <32 x i8>
  %i.tp = shufflevector <32 x i8> %i.to, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.tq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tp, i1 false) ; 2 uses
  %i.tr = icmp slt <64 x i8> %i.tp, zeroinitializer ; 2 uses
  %i.ts = shufflevector <64 x i8> %i.qy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tt = sub <64 x i8> zeroinitializer, %i.ts    ; 2 uses
  %i.tu = select <64 x i1> %i.tr, <64 x i8> %i.tt, <64 x i8> %i.ts
  %i.tv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tn, <64 x i8> %i.tq, <64 x i8> %i.tu)
  %i.tw = shufflevector <64 x i8> %i.sb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tx = sub <64 x i8> zeroinitializer, %i.tw    ; 2 uses
  %i.ty = select <64 x i1> %i.st, <64 x i8> %i.tx, <64 x i8> %i.tw
  %i.tz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ss, <64 x i8> %i.ty)
  %i.ua = shufflevector <64 x i8> %i.rr, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ub = sub <64 x i8> zeroinitializer, %i.ua    ; 2 uses
  %i.uc = select <64 x i1> %i.tb, <64 x i8> %i.ub, <64 x i8> %i.ua
  %i.ud = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tz, <64 x i8> %i.ta, <64 x i8> %i.uc)
  %i.ue = shufflevector <64 x i8> %i.rh, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.uf = sub <64 x i8> zeroinitializer, %i.ue    ; 2 uses
  %i.ug = select <64 x i1> %i.tj, <64 x i8> %i.uf, <64 x i8> %i.ue
  %i.uh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ud, <64 x i8> %i.ti, <64 x i8> %i.ug)
  %i.ui = shufflevector <64 x i8> %i.rb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.uj = sub <64 x i8> zeroinitializer, %i.ui    ; 2 uses
  %i.uk = select <64 x i1> %i.tr, <64 x i8> %i.uj, <64 x i8> %i.ui
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uh, <64 x i8> %i.tq, <64 x i8> %i.uk)
  %i.um = bitcast <8 x i32> %i.sp to <32 x i8>
  %i.un = shufflevector <32 x i8> %i.um, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.un, i1 false) ; 2 uses
  %i.up = icmp slt <64 x i8> %i.un, zeroinitializer ; 2 uses
  %i.uq = select <64 x i1> %i.up, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.ur = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uo, <64 x i8> %i.uq)
  %i.us = bitcast <8 x i32> %i.sn to <32 x i8>
  %i.ut = shufflevector <32 x i8> %i.us, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ut, i1 false) ; 2 uses
  %i.uv = icmp slt <64 x i8> %i.ut, zeroinitializer ; 2 uses
  %i.uw = select <64 x i1> %i.uv, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.ux = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ur, <64 x i8> %i.uu, <64 x i8> %i.uw)
  %i.uy = bitcast <8 x i32> %i.sl to <32 x i8>
  %i.uz = shufflevector <32 x i8> %i.uy, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.va = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uz, i1 false) ; 2 uses
  %i.vb = icmp slt <64 x i8> %i.uz, zeroinitializer ; 2 uses
  %i.vc = select <64 x i1> %i.vb, <64 x i8> %i.tl, <64 x i8> %i.tk
  %i.vd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ux, <64 x i8> %i.va, <64 x i8> %i.vc)
  %i.ve = bitcast <8 x i32> %i.sj to <32 x i8>
  %i.vf = shufflevector <32 x i8> %i.ve, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.vg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vf, i1 false) ; 2 uses
  %i.vh = icmp slt <64 x i8> %i.vf, zeroinitializer ; 2 uses
  %i.vi = select <64 x i1> %i.vh, <64 x i8> %i.tt, <64 x i8> %i.ts
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vd, <64 x i8> %i.vg, <64 x i8> %i.vi)
end_hunk_1
begin_hunk_2_@ggml_gemm_mxfp4_8x8_q8_0:bb.a
  %i.jx = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jw, i1 false) ; 2 uses
  %i.jy = icmp slt <64 x i8> %i.jw, zeroinitializer ; 2 uses
  %i.jz = select <64 x i1> %i.jy, <64 x i8> %i.gj, <64 x i8> %i.gi
  %i.ka = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jx, <64 x i8> %i.jz)
  %i.kb = bitcast <8 x i32> %i.hg to <32 x i8>
  %i.kc = shufflevector <32 x i8> %i.kb, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kd = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.kc, i1 false) ; 2 uses
  %i.ke = icmp slt <64 x i8> %i.kc, zeroinitializer ; 2 uses
  %i.kf = select <64 x i1> %i.ke, <64 x i8> %i.gl, <64 x i8> %i.gk
  %i.kg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ka, <64 x i8> %i.kd, <64 x i8> %i.kf)
  %i.kh = bitcast <8 x i32> %i.he to <32 x i8>
  %i.ki = shufflevector <32 x i8> %i.kh, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kj = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ki, i1 false) ; 2 uses
  %i.kk = icmp slt <64 x i8> %i.ki, zeroinitializer ; 2 uses
  %i.kl = select <64 x i1> %i.kk, <64 x i8> %i.gn, <64 x i8> %i.gm
  %i.km = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kg, <64 x i8> %i.kj, <64 x i8> %i.kl)
  %i.kn = bitcast <8 x i32> %i.hc to <32 x i8>
  %i.ko = shufflevector <32 x i8> %i.kn, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.kp = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ko, i1 false) ; 2 uses
  %i.kq = icmp slt <64 x i8> %i.ko, zeroinitializer ; 2 uses
  %i.kr = select <64 x i1> %i.kq, <64 x i8> %i.gp, <64 x i8> %i.go
  %i.ks = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.km, <64 x i8> %i.kp, <64 x i8> %i.kr)
  %i.kt = select <64 x i1> %i.jy, <64 x i8> %i.gr, <64 x i8> %i.gq
  %i.ku = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jx, <64 x i8> %i.kt)
  %i.kv = select <64 x i1> %i.ke, <64 x i8> %i.gt, <64 x i8> %i.gs
  %i.kw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ku, <64 x i8> %i.kd, <64 x i8> %i.kv)
  %i.kx = select <64 x i1> %i.kk, <64 x i8> %i.gv, <64 x i8> %i.gu
  %i.ky = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.kw, <64 x i8> %i.kj, <64 x i8> %i.kx)
  %i.kz = select <64 x i1> %i.kq, <64 x i8> %i.gx, <64 x i8> %i.gw
  %i.la = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ky, <64 x i8> %i.kp, <64 x i8> %i.kz)
  %i.lb = bitcast <8 x i32> %i.hi to <32 x i8>
  %i.lc = shufflevector <32 x i8> %i.lb, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ld = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lc, i1 false) ; 2 uses
  %i.le = icmp slt <64 x i8> %i.lc, zeroinitializer ; 2 uses
  %i.lf = select <64 x i1> %i.le, <64 x i8> %i.gj, <64 x i8> %i.gi
  %i.lg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ld, <64 x i8> %i.lf)
  %i.lh = bitcast <8 x i32> %i.hg to <32 x i8>
  %i.li = shufflevector <32 x i8> %i.lh, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lj = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.li, i1 false) ; 2 uses
  %i.lk = icmp slt <64 x i8> %i.li, zeroinitializer ; 2 uses
  %i.ll = select <64 x i1> %i.lk, <64 x i8> %i.gl, <64 x i8> %i.gk
  %i.lm = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lg, <64 x i8> %i.lj, <64 x i8> %i.ll)
  %i.ln = bitcast <8 x i32> %i.he to <32 x i8>
  %i.lo = shufflevector <32 x i8> %i.ln, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lp = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lo, i1 false) ; 2 uses
  %i.lq = icmp slt <64 x i8> %i.lo, zeroinitializer ; 2 uses
  %i.lr = select <64 x i1> %i.lq, <64 x i8> %i.gn, <64 x i8> %i.gm
  %i.ls = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.lm, <64 x i8> %i.lp, <64 x i8> %i.lr)
  %i.lt = bitcast <8 x i32> %i.hc to <32 x i8>
  %i.lu = shufflevector <32 x i8> %i.lt, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.lv = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.lu, i1 false) ; 2 uses
  %i.lw = icmp slt <64 x i8> %i.lu, zeroinitializer ; 2 uses
  %i.lx = select <64 x i1> %i.lw, <64 x i8> %i.gp, <64 x i8> %i.go
  %i.ly = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ls, <64 x i8> %i.lv, <64 x i8> %i.lx)
  %i.lz = select <64 x i1> %i.le, <64 x i8> %i.gr, <64 x i8> %i.gq
  %i.ma = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ld, <64 x i8> %i.lz)
  %i.mb = select <64 x i1> %i.lk, <64 x i8> %i.gt, <64 x i8> %i.gs
  %i.mc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ma, <64 x i8> %i.lj, <64 x i8> %i.mb)
  %i.md = select <64 x i1> %i.lq, <64 x i8> %i.gv, <64 x i8> %i.gu
  %i.me = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.mc, <64 x i8> %i.lp, <64 x i8> %i.md)
  %i.mf = select <64 x i1> %i.lw, <64 x i8> %i.gx, <64 x i8> %i.gw
  %i.mg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.me, <64 x i8> %i.lv, <64 x i8> %i.mf)
  %i.mh = add <16 x i32> %i.ks, %i.ig             ; 2 uses
  %i.mi = add <16 x i32> %i.la, %i.io             ; 2 uses
  %i.mj = add <16 x i32> %i.ly, %i.jm             ; 2 uses
  %i.mk = add <16 x i32> %i.mg, %i.ju             ; 2 uses
  %i.ml = shufflevector <16 x i32> %i.mh, <16 x i32> %i.mi, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.mm = shufflevector <16 x i32> %i.mh, <16 x i32> %i.mi, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.mn = shufflevector <16 x i32> %i.mj, <16 x i32> %i.mk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.mo = shufflevector <16 x i32> %i.mj, <16 x i32> %i.mk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.mp = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.ha, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !185
  %i.mq = bitcast <4 x i32> %i.mp to <8 x half>
  %i.mr = shufflevector <8 x half> %i.mq, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ms = fpext <16 x half> %i.mr to <16 x float> ; 4 uses
  %i.mt = sitofp <16 x i32> %i.ml to <16 x float>
  %i.mu = shufflevector <16 x float> %i.ms, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.mv = fmul <16 x float> %i.fr, %i.mu
  %.idx1384.i.us = shl nuw nsw i64 %indvars.iv.i.us, 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx1384.i.us ; 5 uses
  %i.mx = load <16 x float>, ptr %i.mw, align 64, !tbaa !9, !noalias !182
  %i.my = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mt, <16 x float> %i.mv, <16 x float> %i.mx)
  store <16 x float> %i.my, ptr %i.mw, align 64, !tbaa !9, !noalias !182
  %i.mz = sitofp <16 x i32> %i.mm to <16 x float>
  %i.na = shufflevector <16 x float> %i.ms, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.nb = fmul <16 x float> %i.fr, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 64 ; 2 uses
  %i.nd = load <16 x float>, ptr %i.nc, align 64, !tbaa !9, !noalias !182
  %i.ne = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mz, <16 x float> %i.nb, <16 x float> %i.nd)
  store <16 x float> %i.ne, ptr %i.nc, align 64, !tbaa !9, !noalias !182
  %i.nf = sitofp <16 x i32> %i.mn to <16 x float>
  %i.ng = shufflevector <16 x float> %i.ms, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.nh = fmul <16 x float> %i.fr, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 128 ; 2 uses
  %i.nj = load <16 x float>, ptr %i.ni, align 64, !tbaa !9, !noalias !182
  %i.nk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nf, <16 x float> %i.nh, <16 x float> %i.nj)
  store <16 x float> %i.nk, ptr %i.ni, align 64, !tbaa !9, !noalias !182
  %i.nl = sitofp <16 x i32> %i.mo to <16 x float>
  %i.nm = shufflevector <16 x float> %i.ms, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.nn = fmul <16 x float> %i.fr, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.mw, i64 192 ; 2 uses
  %i.np = load <16 x float>, ptr %i.no, align 64, !tbaa !9, !noalias !182
  %i.nq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nl, <16 x float> %i.nn, <16 x float> %i.np)
  store <16 x float> %i.nq, ptr %i.no, align 64, !tbaa !9, !noalias !182
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 4
  br i1 %exitcond.not.i.us, label %bb.c, label %bb.b, !llvm.loop !163

bb.c:                                             ; preds = %bb.b
  %i.nr = add nuw nsw i64 %.010751111.us.i.us, 1  ; 2 uses
  %exitcond1216.not.i.us = icmp eq i64 %i.nr, %i.f
  br i1 %exitcond1216.not.i.us, label %.preheader1104.us.loopexit.i.us, label %.lr.ph.us.i.us, !llvm.loop !164

.preheader1104.us.loopexit.i.us:                  ; preds = %bb.c
  %.pre.i.us = load <16 x float>, ptr %i.b, align 64, !tbaa !9, !noalias !182
  %.pre1306.i.us = load <16 x float>, ptr %.phi.trans.insert.i, align 64, !tbaa !9, !noalias !182
  %.pre1308.i.us = load <16 x float>, ptr %.phi.trans.insert1307.i, align 64, !tbaa !9, !noalias !182
  %.pre1310.i.us = load <16 x float>, ptr %.phi.trans.insert1309.i, align 64, !tbaa !9, !noalias !182
  %.pre1312.i.us = load <16 x float>, ptr %.phi.trans.insert1311.i, align 64, !tbaa !9, !noalias !182
  %.pre1314.i.us = load <16 x float>, ptr %.phi.trans.insert1313.i, align 64, !tbaa !9, !noalias !182
  %.pre1316.i.us = load <16 x float>, ptr %.phi.trans.insert1315.i, align 64, !tbaa !9, !noalias !182
  %.pre1318.i.us = load <16 x float>, ptr %.phi.trans.insert1317.i, align 64, !tbaa !9, !noalias !182
  %.pre1320.i.us = load <16 x float>, ptr %.phi.trans.insert1319.i, align 64, !tbaa !9, !noalias !182
  %.pre1322.i.us = load <16 x float>, ptr %.phi.trans.insert1321.i, align 64, !tbaa !9, !noalias !182
  %.pre1324.i.us = load <16 x float>, ptr %.phi.trans.insert1323.i, align 64, !tbaa !9, !noalias !182
  %.pre1326.i.us = load <16 x float>, ptr %.phi.trans.insert1325.i, align 64, !tbaa !9, !noalias !182
  %.pre1328.i.us = load <16 x float>, ptr %.phi.trans.insert1327.i, align 64, !tbaa !9, !noalias !182
  %.pre1330.i.us = load <16 x float>, ptr %.phi.trans.insert1329.i, align 64, !tbaa !9, !noalias !182
  %.pre1332.i.us = load <16 x float>, ptr %.phi.trans.insert1331.i, align 64, !tbaa !9, !noalias !182
  %.pre1334.i.us = load <16 x float>, ptr %.phi.trans.insert1333.i, align 64, !tbaa !9, !noalias !182
  %.idx1095.us.i.us = shl nuw nsw i64 %.010731113.us.i.us, 5
  %invariant.gep.us.i.us = getelementptr i8, ptr %1, i64 %.idx1095.us.i.us ; 16 uses
  %gep.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.br
  store <16 x float> %.pre.i.us, ptr %gep.us.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.1.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bt
  store <16 x float> %.pre1306.i.us, ptr %gep.us.1.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.2.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bv
  store <16 x float> %.pre1308.i.us, ptr %gep.us.2.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.3.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bx
  store <16 x float> %.pre1310.i.us, ptr %gep.us.3.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.4.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.bz
  store <16 x float> %.pre1312.i.us, ptr %gep.us.4.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.5.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cb
  store <16 x float> %.pre1314.i.us, ptr %gep.us.5.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.6.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cd
  store <16 x float> %.pre1316.i.us, ptr %gep.us.6.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.7.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cf
  store <16 x float> %.pre1318.i.us, ptr %gep.us.7.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.8.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ch
  store <16 x float> %.pre1320.i.us, ptr %gep.us.8.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.9.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cj
  store <16 x float> %.pre1322.i.us, ptr %gep.us.9.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.10.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cl
  store <16 x float> %.pre1324.i.us, ptr %gep.us.10.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.11.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cn
  store <16 x float> %.pre1326.i.us, ptr %gep.us.11.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.12.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cp
  store <16 x float> %.pre1328.i.us, ptr %gep.us.12.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.13.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cr
  store <16 x float> %.pre1330.i.us, ptr %gep.us.13.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.14.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.ct
  store <16 x float> %.pre1332.i.us, ptr %gep.us.14.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us.15.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.i.us, i64 %i.cv
  store <16 x float> %.pre1334.i.us, ptr %gep.us.15.i.us, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !182
  %i.ns = add nuw nsw i64 %.010731113.us.i.us, 2  ; 2 uses
  %i.nt = icmp slt i64 %i.ns, %i.r
  br i1 %i.nt, label %.preheader1105.us.i.us, label %._crit_edge.us.i, !llvm.loop !165

._crit_edge.us.i:                                 ; preds = %.preheader1104.us.loopexit.i.us, %.preheader1105.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !182
  %i.nu = add nuw nsw i64 %.010701115.us.i, 4     ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar, %i.av
  br i1 %exitcond.not, label %.preheader1103.i, label %.lr.ph1117.split.us.i, !llvm.loop !166

.preheader1103.i:                                 ; preds = %._crit_edge.us.i, %.lr.ph1117.split.i.preheader, %bb.a
  %.01070.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph1117.split.i.preheader ], [ %i.nu, %._crit_edge.us.i ] ; 7 uses
  %i.nv = sdiv i32 %5, 4
  %i.nw = sext i32 %i.nv to i64                   ; 12 uses
  %i.nx = icmp slt i64 %.01070.lcssa.i, %i.nw
  br i1 %i.nx, label %.lr.ph.i, label %._crit_edge1137.i

.lr.ph.i:                                         ; preds = %.preheader1103.i
  %i.ny = sdiv i32 %i.m, 8
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = icmp sgt i32 %i.m, 7
  br i1 %i.oa, label %.lr.ph.split.us.i, label %._crit_edge1137.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.ob = icmp sgt i32 %0, 31
  br i1 %i.ob, label %.lr.ph1132.us.us.i, label %.lr.ph1132.us.i.preheader

.lr.ph1132.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  %i.oc = mul i64 %.01070.lcssa.i, %2
  %i.od = shl i64 %i.oc, 4
  %i.oe = shl i64 %2, 4                           ; 5 uses
  %i.of = shl nuw nsw i64 %i.nz, 5
  %i.og = add nsw i64 %i.of, -32
  %i.oh = and i64 %i.og, -64
  %i.oi = add nsw i64 %i.oh, 64                   ; 20 uses
  %i.oj = shl i64 %.01070.lcssa.i, 2              ; 3 uses
  %i.ok = or disjoint i64 %i.oj, 1
  %i.ol = mul i64 %2, %i.ok
  %i.om = shl i64 %i.ol, 2
  %i.on = or disjoint i64 %i.oj, 2
  %i.oo = mul i64 %2, %i.on
  %i.op = shl i64 %i.oo, 2
  %i.oq = or disjoint i64 %i.oj, 3
  %i.or = mul i64 %2, %i.oq
  %i.os = shl i64 %i.or, 2
  %i.ot = getelementptr i8, ptr %1, i64 %i.os     ; 5 uses
  %i.ou = getelementptr i8, ptr %1, i64 %i.op     ; 5 uses
  %i.ov = getelementptr i8, ptr %1, i64 %i.om     ; 5 uses
  %i.ow = getelementptr i8, ptr %1, i64 %i.od     ; 5 uses
  %i.ox = sub i64 %i.nw, %.01070.lcssa.i          ; 2 uses
  %xtraiter = and i64 %i.ox, 3                    ; 3 uses
  %i.oy = sub i64 %.01070.lcssa.i, %i.nw
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %.lr.ph1132.us.i.epil.preheader, label %.lr.ph1132.us.i.preheader.new

.lr.ph1132.us.i.preheader.new:                    ; preds = %.lr.ph1132.us.i.preheader
  %unroll_iter = and i64 %i.ox, -4
  br label %.lr.ph1132.us.i

.lr.ph1132.us.us.i:                               ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.11136.us.us.i = phi i64 [ %i.aab, %._crit_edge.split.us.us.us.i ], [ %.01070.lcssa.i, %.lr.ph.split.us.i ] ; 3 uses
  %i.pa = mul nsw i64 %.11136.us.us.i, %i.f
  %i.pb = getelementptr inbounds [136 x i8], ptr %4, i64 %i.pa
  %i.pc = shl nuw nsw i64 %.11136.us.us.i, 2      ; 4 uses
  %i.pd = mul i64 %i.pc, %2
  %i.pe = or disjoint i64 %i.pc, 1
  %i.pf = mul i64 %i.pe, %2
  %i.pg = or disjoint i64 %i.pc, 2
  %i.ph = mul i64 %i.pg, %2
  %i.pi = or disjoint i64 %i.pc, 3
  %i.pj = mul i64 %i.pi, %2
  br label %.preheader1102.us.us.us.i

.preheader1102.us.us.us.i:                        ; preds = %..preheader1101_crit_edge.us.us.us.i, %.lr.ph1132.us.us.i
  %.010781131.us.us.us.i = phi i64 [ 0, %.lr.ph1132.us.us.i ], [ %i.zz, %..preheader1101_crit_edge.us.us.us.i ] ; 4 uses
  %i.pk = mul nuw nsw i64 %.010781131.us.us.us.i, %i.f
  %i.pl = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.pk
  %i.pm = or disjoint i64 %.010781131.us.us.us.i, 1
  %i.pn = mul nuw nsw i64 %i.pm, %i.f
  %i.po = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.pn
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader1102.us.us.us.i
  %i.pp = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.zx, %bb.d ]
  %i.pq = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.zt, %bb.d ]
  %i.pr = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.zp, %bb.d ]
  %.010801122.us.us.us.i = phi i64 [ 0, %.preheader1102.us.us.us.i ], [ %i.zy, %bb.d ] ; 4 uses
  %i.ps = phi <16 x float> [ zeroinitializer, %.preheader1102.us.us.us.i ], [ %i.zl, %bb.d ]
  %i.pt = getelementptr inbounds nuw [136 x i8], ptr %i.pl, i64 %.010801122.us.us.us.i ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load <8 x i32>, ptr %i.pu, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.px = load <8 x i32>, ptr %i.pw, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 72
  %i.pz = load <8 x i32>, ptr %i.py, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 104
  %i.qb = load <8 x i32>, ptr %i.qa, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.qc = getelementptr inbounds nuw [136 x i8], ptr %i.po, i64 %.010801122.us.us.us.i ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load <8 x i32>, ptr %i.qd, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 40
  %i.qg = load <8 x i32>, ptr %i.qf, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 72
  %i.qi = load <8 x i32>, ptr %i.qh, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qc, i64 104
  %i.qk = load <8 x i32>, ptr %i.qj, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.ql = shufflevector <8 x i32> %i.pv, <8 x i32> %i.px, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qm = shufflevector <8 x i32> %i.qe, <8 x i32> %i.qg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qn = shufflevector <16 x i32> %i.ql, <16 x i32> %i.qm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qo = shufflevector <8 x i32> %i.pv, <8 x i32> %i.px, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qp = shufflevector <8 x i32> %i.qe, <8 x i32> %i.qg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qq = shufflevector <16 x i32> %i.qo, <16 x i32> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qr = shufflevector <8 x i32> %i.pz, <8 x i32> %i.qb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qs = shufflevector <8 x i32> %i.qi, <8 x i32> %i.qk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qt = shufflevector <16 x i32> %i.qr, <16 x i32> %i.qs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qu = shufflevector <8 x i32> %i.pz, <8 x i32> %i.qb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qv = shufflevector <8 x i32> %i.qi, <8 x i32> %i.qk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qw = shufflevector <16 x i32> %i.qu, <16 x i32> %i.qv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.qx = bitcast <16 x i32> %i.qn to <64 x i8>
  %i.qy = and <64 x i8> %i.qx, splat (i8 15)
  %i.qz = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.qy) ; 2 uses
  %i.ra = bitcast <16 x i32> %i.qq to <64 x i8>
  %i.rb = and <64 x i8> %i.ra, splat (i8 15)
  %i.rc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.rb) ; 2 uses
  %i.rd = bitcast <16 x i32> %i.qt to <64 x i8>
  %i.re = and <64 x i8> %i.rd, splat (i8 15)
  %i.rf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.re) ; 2 uses
  %i.rg = bitcast <16 x i32> %i.qw to <64 x i8>
  %i.rh = and <64 x i8> %i.rg, splat (i8 15)
  %i.ri = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.rh) ; 2 uses
  %i.rj = bitcast <16 x i32> %i.qn to <32 x i16>
  %i.rk = lshr <32 x i16> %i.rj, splat (i16 4)
  %i.rl = bitcast <32 x i16> %i.rk to <64 x i8>
  %i.rm = and <64 x i8> %i.rl, splat (i8 15)
  %i.rn = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.rm) ; 2 uses
  %i.ro = bitcast <16 x i32> %i.qq to <32 x i16>
  %i.rp = lshr <32 x i16> %i.ro, splat (i16 4)
  %i.rq = bitcast <32 x i16> %i.rp to <64 x i8>
  %i.rr = and <64 x i8> %i.rq, splat (i8 15)
  %i.rs = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.rr) ; 2 uses
  %i.rt = bitcast <16 x i32> %i.qt to <32 x i16>
  %i.ru = lshr <32 x i16> %i.rt, splat (i16 4)
  %i.rv = bitcast <32 x i16> %i.ru to <64 x i8>
  %i.rw = and <64 x i8> %i.rv, splat (i8 15)
  %i.rx = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.rw) ; 2 uses
  %i.ry = bitcast <16 x i32> %i.qw to <32 x i16>
  %i.rz = lshr <32 x i16> %i.ry, splat (i16 4)
  %i.sa = bitcast <32 x i16> %i.rz to <64 x i8>
  %i.sb = and <64 x i8> %i.sa, splat (i8 15)
  %i.sc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.sb) ; 2 uses
  %i.sd = load <8 x i8>, ptr %i.qc, align 1, !tbaa !9, !alias.scope !180, !noalias !184
  %i.se = load <8 x i8>, ptr %i.pt, align 1, !tbaa !9, !alias.scope !180, !noalias !184
  %i.sf = shufflevector <8 x i8> %i.se, <8 x i8> %i.sd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sg = zext <16 x i8> %i.sf to <16 x i64>
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <16 x i64> %i.sg
  %i.si = tail call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.sh, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !13, !noalias !182 ; 4 uses
  %i.sj = getelementptr inbounds nuw [136 x i8], ptr %i.pb, i64 %.010801122.us.us.us.i ; 5 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load <8 x i32>, ptr %i.sk, align 1, !tbaa !9, !alias.scope !181, !noalias !185 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 40
  %i.sn = load <8 x i32>, ptr %i.sm, align 1, !tbaa !9, !alias.scope !181, !noalias !185 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 72
  %i.sp = load <8 x i32>, ptr %i.so, align 1, !tbaa !9, !alias.scope !181, !noalias !185 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 104
  %i.sr = load <8 x i32>, ptr %i.sq, align 1, !tbaa !9, !alias.scope !181, !noalias !185 ; 4 uses
  %i.ss = bitcast <8 x i32> %i.sr to <32 x i8>
  %i.st = shufflevector <32 x i8> %i.ss, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.su = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.st, i1 false) ; 2 uses
  %i.sv = icmp slt <64 x i8> %i.st, zeroinitializer ; 2 uses
  %i.sw = shufflevector <64 x i8> %i.rx, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sx = sub <64 x i8> zeroinitializer, %i.sw    ; 2 uses
  %i.sy = select <64 x i1> %i.sv, <64 x i8> %i.sx, <64 x i8> %i.sw
  %i.sz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.su, <64 x i8> %i.sy)
  %i.ta = bitcast <8 x i32> %i.sp to <32 x i8>
  %i.tb = shufflevector <32 x i8> %i.ta, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.tc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tb, i1 false) ; 2 uses
  %i.td = icmp slt <64 x i8> %i.tb, zeroinitializer ; 2 uses
  %i.te = shufflevector <64 x i8> %i.rn, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tf = sub <64 x i8> zeroinitializer, %i.te    ; 2 uses
  %i.tg = select <64 x i1> %i.td, <64 x i8> %i.tf, <64 x i8> %i.te
  %i.th = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sz, <64 x i8> %i.tc, <64 x i8> %i.tg)
  %i.ti = bitcast <8 x i32> %i.sn to <32 x i8>
  %i.tj = shufflevector <32 x i8> %i.ti, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.tk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tj, i1 false) ; 2 uses
  %i.tl = icmp slt <64 x i8> %i.tj, zeroinitializer ; 2 uses
  %i.tm = shufflevector <64 x i8> %i.rf, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tn = sub <64 x i8> zeroinitializer, %i.tm    ; 2 uses
  %i.to = select <64 x i1> %i.tl, <64 x i8> %i.tn, <64 x i8> %i.tm
  %i.tp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.th, <64 x i8> %i.tk, <64 x i8> %i.to)
  %i.tq = bitcast <8 x i32> %i.sl to <32 x i8>
  %i.tr = shufflevector <32 x i8> %i.tq, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ts = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tr, i1 false) ; 2 uses
  %i.tt = icmp slt <64 x i8> %i.tr, zeroinitializer ; 2 uses
  %i.tu = shufflevector <64 x i8> %i.qz, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tv = sub <64 x i8> zeroinitializer, %i.tu    ; 2 uses
  %i.tw = select <64 x i1> %i.tt, <64 x i8> %i.tv, <64 x i8> %i.tu
  %i.tx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tp, <64 x i8> %i.ts, <64 x i8> %i.tw)
  %i.ty = shufflevector <64 x i8> %i.sc, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tz = sub <64 x i8> zeroinitializer, %i.ty    ; 2 uses
  %i.ua = select <64 x i1> %i.sv, <64 x i8> %i.tz, <64 x i8> %i.ty
  %i.ub = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.su, <64 x i8> %i.ua)
  %i.uc = shufflevector <64 x i8> %i.rs, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ud = sub <64 x i8> zeroinitializer, %i.uc    ; 2 uses
  %i.ue = select <64 x i1> %i.td, <64 x i8> %i.ud, <64 x i8> %i.uc
  %i.uf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ub, <64 x i8> %i.tc, <64 x i8> %i.ue)
  %i.ug = shufflevector <64 x i8> %i.ri, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.uh = sub <64 x i8> zeroinitializer, %i.ug    ; 2 uses
  %i.ui = select <64 x i1> %i.tl, <64 x i8> %i.uh, <64 x i8> %i.ug
  %i.uj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uf, <64 x i8> %i.tk, <64 x i8> %i.ui)
  %i.uk = shufflevector <64 x i8> %i.rc, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ul = sub <64 x i8> zeroinitializer, %i.uk    ; 2 uses
  %i.um = select <64 x i1> %i.tt, <64 x i8> %i.ul, <64 x i8> %i.uk
  %i.un = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uj, <64 x i8> %i.ts, <64 x i8> %i.um)
  %i.uo = bitcast <8 x i32> %i.sr to <32 x i8>
  %i.up = shufflevector <32 x i8> %i.uo, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.up, i1 false) ; 2 uses
  %i.ur = icmp slt <64 x i8> %i.up, zeroinitializer ; 2 uses
  %i.us = select <64 x i1> %i.ur, <64 x i8> %i.sx, <64 x i8> %i.sw
  %i.ut = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uq, <64 x i8> %i.us)
  %i.uu = bitcast <8 x i32> %i.sp to <32 x i8>
  %i.uv = shufflevector <32 x i8> %i.uu, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uv, i1 false) ; 2 uses
  %i.ux = icmp slt <64 x i8> %i.uv, zeroinitializer ; 2 uses
  %i.uy = select <64 x i1> %i.ux, <64 x i8> %i.tf, <64 x i8> %i.te
  %i.uz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ut, <64 x i8> %i.uw, <64 x i8> %i.uy)
  %i.va = bitcast <8 x i32> %i.sn to <32 x i8>
  %i.vb = shufflevector <32 x i8> %i.va, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.vc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vb, i1 false) ; 2 uses
  %i.vd = icmp slt <64 x i8> %i.vb, zeroinitializer ; 2 uses
  %i.ve = select <64 x i1> %i.vd, <64 x i8> %i.tn, <64 x i8> %i.tm
  %i.vf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uz, <64 x i8> %i.vc, <64 x i8> %i.ve)
  %i.vg = bitcast <8 x i32> %i.sl to <32 x i8>
  %i.vh = shufflevector <32 x i8> %i.vg, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.vi = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vh, i1 false) ; 2 uses
  %i.vj = icmp slt <64 x i8> %i.vh, zeroinitializer ; 2 uses
  %i.vk = select <64 x i1> %i.vj, <64 x i8> %i.tv, <64 x i8> %i.tu
end_hunk_2
