Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlDrawRenderBatch:bb.a
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [72 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.v = load i32, ptr %i.u, align 4
  tail call void %i.n(i32 noundef 34962, i32 noundef %i.v) #56
  %i.w = load ptr, ptr @glad_glBufferSubData, align 8
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.y = mul nsw i32 %i.x, 3
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = load ptr, ptr %i.o, align 8
  %i.ac = load i32, ptr %i.q, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [72 x i8], ptr %i.ab, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.w(i32 noundef 34962, i64 noundef 0, i64 noundef %i.aa, ptr noundef %i.ag) #56
  %i.ah = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ai = load ptr, ptr %i.o, align 8
  %i.aj = load i32, ptr %i.q, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [72 x i8], ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i32, ptr %i.am, align 4
  tail call void %i.ah(i32 noundef 34962, i32 noundef %i.an) #56
  %i.ao = load ptr, ptr @glad_glBufferSubData, align 8
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = load ptr, ptr %i.o, align 8
  %i.au = load i32, ptr %i.q, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [72 x i8], ptr %i.at, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ao(i32 noundef 34962, i64 noundef 0, i64 noundef %i.as, ptr noundef %i.ay) #56
  %i.az = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ba = load ptr, ptr %i.o, align 8
  %i.bb = load i32, ptr %i.q, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [72 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 60
  %i.bf = load i32, ptr %i.be, align 4
  tail call void %i.az(i32 noundef 34962, i32 noundef %i.bf) #56
  %i.bg = load ptr, ptr @glad_glBufferSubData, align 8
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.bi = mul nsw i32 %i.bh, 3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  %i.bl = load ptr, ptr %i.o, align 8
  %i.bm = load i32, ptr %i.q, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [72 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bg(i32 noundef 34962, i64 noundef 0, i64 noundef %i.bk, ptr noundef %i.bq) #56
  %i.br = load ptr, ptr @glad_glBindBuffer, align 8
  %i.bs = load ptr, ptr %i.o, align 8
  %i.bt = load i32, ptr %i.q, align 4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [72 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load i32, ptr %i.bw, align 4
  tail call void %i.br(i32 noundef 34962, i32 noundef %i.bx) #56
  %i.by = load ptr, ptr @glad_glBufferSubData, align 8
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ca = shl nsw i32 %i.bz, 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.o, align 8
  %i.cd = load i32, ptr %i.q, align 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [72 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.by(i32 noundef 34962, i64 noundef 0, i64 noundef %i.cb, ptr noundef %i.ch) #56
  %i.ci = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ck = load ptr, ptr @glad_glBindVertexArray, align 8
  tail call void %i.ck(i32 noundef 0) #56
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.sroa.0.0.copyload = load <16 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  %i.cl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8 ; 5 uses
  %i.cm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 104), align 8 ; 5 uses
  %i.cn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 120), align 8 ; 5 uses
  %i.co = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 136), align 8 ; 5 uses
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2400), align 8, !range !4, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1                ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.al
  br i1 %i.cq, label %bb.am, label %bb.an

bb.h:                                             ; preds = %bb.f, %bb.al
  %i.dt = phi i1 [ %i.cq, %bb.f ], [ false, %bb.al ]
  %indvars.iv383 = phi i64 [ 0, %bb.f ], [ 1, %bb.al ] ; 3 uses
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2704), align 8 ; 2 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv383 to i32
  %i.dw = mul nuw nsw i32 %i.du, %i.dv
  %i.dx = sdiv i32 %i.dw, 2
  %i.dy = sdiv i32 %i.du, 2
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2708), align 4
  %i.ea = load ptr, ptr @glad_glViewport, align 8
  call void %i.ea(i32 noundef %i.dx, i32 noundef 0, i32 noundef %i.dy, i32 noundef %i.dz) #56, !inline_history !6
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2532), i64 %indvars.iv383 ; 4 uses
  %.sroa.7210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.11214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %.sroa.15218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ec = load <4 x float>, ptr %i.eb, align 4    ; 4 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ee = fmul <4 x float> %i.cm, %i.ed
  %i.ef = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.ef, <4 x float> %i.ee)
  %i.eh = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ei = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.eh, <4 x float> %i.eg)
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.ej, <4 x float> %i.ei)
  store <4 x float> %i.ek, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  %i.el = load <4 x float>, ptr %.sroa.7210.0..sroa_idx, align 4 ; 4 uses
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.en = fmul <4 x float> %i.cm, %i.em
  %i.eo = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.eo, <4 x float> %i.en)
  %i.eq = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.eq, <4 x float> %i.ep)
  %i.es = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.es, <4 x float> %i.er)
  store <4 x float> %i.et, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 104), align 8
  %i.eu = load <4 x float>, ptr %.sroa.11214.0..sroa_idx, align 4 ; 4 uses
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ew = fmul <4 x float> %i.cm, %i.ev
  %i.ex = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.ex, <4 x float> %i.ew)
  %i.ez = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.ez, <4 x float> %i.ey)
  %i.fb = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.fb, <4 x float> %i.fa)
  store <4 x float> %i.fc, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 120), align 8
  %i.fd = load <4 x float>, ptr %.sroa.15218.0..sroa_idx, align 4 ; 4 uses
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ff = fmul <4 x float> %i.cm, %i.fe
  %i.fg = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.fg, <4 x float> %i.ff)
  %i.fi = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.fi, <4 x float> %i.fh)
  %i.fk = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.fk, <4 x float> %i.fj)
  store <4 x float> %i.fl, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 136), align 8
  %i.fm = getelementptr inbounds nuw [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2404), i64 %indvars.iv383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr noundef nonnull align 4 dereferenceable(64) %i.fm, i64 64, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %i.fp = load ptr, ptr @glad_glUseProgram, align 8
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2384), align 8
  call void %i.fp(i32 noundef %i.fq) #56
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), align 4
  %8 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 96), align 8
  %9 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 100), align 4
  %.sroa.7242.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 104), align 8 ; 2 uses
  %.sroa.8243.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4 ; 2 uses
  %10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), align 8
  %11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 116), align 4
  %12 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 120), align 8
  %13 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 124), align 4
  %14 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  %15 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), align 4
  %16 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 136), align 8
  %17 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 140), align 4
  %18 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 144), align 8
  %19 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  %i.fr = load ptr, ptr @glad_glUniformMatrix4fv, align 8
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load i32, ptr %i.ft, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  %i.fv = load <16 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8 ; 5 uses
  %i.fw = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 poison, i32 13>
  %i.fx = insertelement <4 x float> %i.fw, float %.sroa.7242.0.copyload, i64 2
  %i.fy = insertelement <4 x float> poison, float %.sroa.7242.0.copyload, i64 0
  %i.fz = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 poison, i32 9, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x float> %i.fy, <4 x float> %i.fz, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %i.gb = fmul <4 x float> %i.fx, %i.ga
  %i.gc = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 4 uses
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.gd, <4 x float> %i.gb)
  %i.gf = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.gh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.gg, <4 x float> %i.ge)
  %i.gi = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = shufflevector <16 x float> %i.fv, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.gk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.gj, <4 x float> %i.gh)
  store <4 x float> %i.gk, ptr %1, align 16, !alias.scope !191
  %i.gl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 204), align 4 ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 188), align 4 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 172), align 4 ; 2 uses
  %i.gq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 156), align 4 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> %i.gp, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gt = shufflevector <4 x float> %i.gr, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.gu = insertelement <4 x float> %i.gt, float %.sroa.8243.0.copyload, i64 2
  %i.gv = insertelement <4 x float> poison, float %.sroa.8243.0.copyload, i64 0
  %i.gw = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gv, <4 x float> %i.gw, <4 x i32> <i32 0, i32 0, i32 4, i32 0>
  %i.gy = fmul <4 x float> %i.gu, %i.gx
  %i.gz = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.gd, <4 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = shufflevector <2 x float> %i.gq, <2 x float> %i.gp, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> %i.gw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.he, <4 x float> %i.ha)
  %i.hg = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 208), align 8 ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.18269.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 212), align 4
  %i.hj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 192), align 8 ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.14265.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 196), align 4
  %i.hl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 176), align 8 ; 2 uses
  %.sroa.10261.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 180), align 4
  %i.hm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 160), align 8 ; 2 uses
  %i.hn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 164), align 4
  %i.ho = shufflevector <2 x float> %i.hm, <2 x float> %i.hl, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.hp = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hr = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.ht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.hs, <4 x float> %i.hf)
  %i.hu = shufflevector <4 x float> %i.gr, <4 x float> %i.go, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hw = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = fmul <4 x float> %i.hv, %i.hw
  %i.hy = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hy, <4 x float> %i.gd, <4 x float> %i.hx)
  %i.ia = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ib = shufflevector <2 x float> %i.hm, <2 x float> %i.hl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> %i.id, <4 x float> %i.hz)
  %i.if = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.if, <4 x float> %i.hs, <4 x float> %i.ie)
  store <4 x float> %i.ht, ptr %i.cr, align 16, !alias.scope !191
  store <4 x float> %i.ig, ptr %i.cs, align 16, !alias.scope !191
  %i.ih = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fmul <4 x float> %i.hv, %i.ih
  %i.ij = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %i.gd, <4 x float> %i.ii)
  %i.il = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.im = shufflevector <4 x float> %i.ib, <4 x float> %i.hk, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.in = shufflevector <4 x float> %i.im, <4 x float> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.in, <4 x float> %i.ik)
  %i.ip = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = insertelement <4 x float> %i.hn, float %.sroa.10261.0.copyload, i64 1
  %i.ir = insertelement <4 x float> %i.iq, float %.sroa.14265.0.copyload, i64 2
  %i.is = insertelement <4 x float> %i.ir, float %.sroa.18269.0.copyload, i64 3
  %i.it = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.is, <4 x float> %i.io)
  store <4 x float> %i.it, ptr %i.ct, align 16, !alias.scope !191
  call void %i.fr(i32 noundef %i.fu, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load i32, ptr %i.iv, align 4            ; 2 uses
  %.not91 = icmp eq i32 %i.iw, -1
  br i1 %.not91, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ix = load ptr, ptr @glad_glUniformMatrix4fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %.sroa.0279.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), align 8
  %.sroa.10286.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 180), align 4
  %.sroa.14290.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 196), align 4
  %.sroa.18294.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 212), align 4
  store float %.sroa.0279.0.copyload, ptr %2, align 4, !alias.scope !192
  %i.iy = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 156), align 4
  %i.iz = shufflevector <12 x float> %i.iy, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.iz, ptr %i.cu, align 4, !alias.scope !192
  %i.ja = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 160), align 8
  %i.jb = shufflevector <12 x float> %i.ja, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jb, ptr %i.cv, align 4, !alias.scope !192
  %i.jc = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 164), align 4
  %i.jd = shufflevector <12 x float> %i.jc, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jd, ptr %i.cw, align 4, !alias.scope !192
  store float %.sroa.10286.0.copyload, ptr %i.cx, align 4, !alias.scope !192
  store float %.sroa.14290.0.copyload, ptr %i.cy, align 4, !alias.scope !192
  store float %.sroa.18294.0.copyload, ptr %i.cz, align 4, !alias.scope !192
  call void %i.ix(i32 noundef %i.iw, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.je = phi ptr [ %.pre, %bb.l ], [ %i.iu, %bb.k ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  %i.jg = load i32, ptr %i.jf, align 4            ; 2 uses
  %.not92 = icmp eq i32 %i.jg, -1
  br i1 %.not92, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jh = load ptr, ptr @glad_glUniformMatrix4fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %.sroa.0295.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  %.sroa.10302.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 116), align 4
  %.sroa.14306.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), align 4
  %.sroa.18310.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  store float %.sroa.0295.0.copyload, ptr %3, align 4, !alias.scope !193
  %i.ji = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), align 4
  %i.jj = shufflevector <12 x float> %i.ji, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jj, ptr %i.da, align 4, !alias.scope !193
  %i.jk = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 96), align 8
  %i.jl = shufflevector <12 x float> %i.jk, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jl, ptr %i.db, align 4, !alias.scope !193
  %i.jm = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 100), align 4
  %i.jn = shufflevector <12 x float> %i.jm, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jn, ptr %i.dc, align 4, !alias.scope !193
  store float %.sroa.10302.0.copyload, ptr %i.dd, align 4, !alias.scope !193
  store float %.sroa.14306.0.copyload, ptr %i.de, align 4, !alias.scope !193
  store float %.sroa.18310.0.copyload, ptr %i.df, align 4, !alias.scope !193
  call void %i.jh(i32 noundef %i.jg, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  %.pre392 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jo = phi ptr [ %.pre392, %bb.n ], [ %i.je, %bb.m ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 36
  %i.jq = load i32, ptr %i.jp, align 4            ; 2 uses
  %.not93 = icmp eq i32 %i.jq, -1
  br i1 %.not93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jr = load ptr, ptr @glad_glUniformMatrix4fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %.sroa.0311.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), align 8
  %.sroa.10318.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 244), align 4
  %.sroa.14322.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 260), align 4
  %.sroa.18326.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 276), align 4
  store float %.sroa.0311.0.copyload, ptr %4, align 4, !alias.scope !194
  %i.js = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 220), align 4
  %i.jt = shufflevector <12 x float> %i.js, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jt, ptr %i.dg, align 4, !alias.scope !194
  %i.ju = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 224), align 8
  %i.jv = shufflevector <12 x float> %i.ju, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jv, ptr %i.dh, align 4, !alias.scope !194
  %i.jw = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 228), align 4
  %i.jx = shufflevector <12 x float> %i.jw, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.jx, ptr %i.di, align 4, !alias.scope !194
  store float %.sroa.10318.0.copyload, ptr %i.dj, align 4, !alias.scope !194
  store float %.sroa.14322.0.copyload, ptr %i.dk, align 4, !alias.scope !194
  store float %.sroa.18326.0.copyload, ptr %i.dl, align 4, !alias.scope !194
  call void %i.jr(i32 noundef %i.jq, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %4) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %.pre393 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jy = phi ptr [ %.pre393, %bb.p ], [ %i.jo, %bb.o ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ka = load i32, ptr %i.jz, align 4            ; 2 uses
  %.not94 = icmp eq i32 %i.ka, -1
  br i1 %.not94, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.kb = load ptr, ptr @glad_glUniformMatrix4fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %.sroa.0327.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), align 8 ; 4 uses
  %i.kc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 220), align 4
  %i.kd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 236), align 4 ; 3 uses
  %.sroa.12336.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 252), align 4 ; 3 uses
  %i.ke = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 268), align 4 ; 3 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  %i.kg = fneg float %i.kf
  %i.kh = shufflevector <2 x float> %i.kd, <2 x float> %i.kc, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.ki = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.kj = insertelement <4 x float> %i.ki, float %i.kg, i64 2
  %i.kk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 272), align 8 ; 4 uses
  %.sroa.18342.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 276), align 4 ; 3 uses
  %i.kl = fneg float %.sroa.18342.0.copyload
  %i.km = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 224), align 8 ; 3 uses
  %i.kn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 240), align 8 ; 6 uses
  %i.ko = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 256), align 8 ; 6 uses
  %i.kp = extractelement <2 x float> %i.kk, i64 0 ; 2 uses
  %i.kq = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kr = shufflevector <2 x float> %i.ko, <2 x float> %i.kn, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.ks = fneg <4 x float> %i.kr                  ; 2 uses
  %i.kt = shufflevector <2 x float> %i.ko, <2 x float> %i.kn, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  %i.ku = shufflevector <2 x float> %i.kk, <2 x float> %i.ko, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.kv = fmul <4 x float> %i.ku, %i.ks
  %i.kw = shufflevector <2 x float> %i.kn, <2 x float> %i.km, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.kx = shufflevector <2 x float> %i.kk, <2 x float> %i.ko, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ky = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kt, <4 x float> %i.kx, <4 x float> %i.kv) ; 5 uses
  %i.kz = extractelement <4 x float> %i.ky, i64 1
  %i.la = fneg float %i.kz                        ; 2 uses
  %i.lb = extractelement <4 x float> %i.ky, i64 0
  %i.lc = extractelement <2 x float> %i.kn, i64 0
  %i.ld = fneg float %i.lc
  %i.le = fneg float %i.kp
  %i.lf = fneg float %i.kq
  %i.lg = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.lh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 228), align 4 ; 6 uses
  %20 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 232), align 8
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.li = insertelement <2 x float> %21, float %.sroa.0327.0.copyload, i64 1
  %i.lj = fneg <2 x float> %i.li
  %i.lk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 260), align 4 ; 4 uses
  %.sroa.15339.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 264), align 8
  %i.ll = fneg float %.sroa.15339.0.copyload
  %i.lm = fneg <4 x float> %i.kh                  ; 3 uses
  %i.ln = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 244), align 4 ; 7 uses
  %i.lo = shufflevector <2 x float> %i.lk, <2 x float> %i.ln, <2 x i32> <i32 1, i32 3>
  %i.lp = shufflevector <4 x float> %i.lm, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lq = fmul <2 x float> %i.lo, %i.lp
  %i.lr = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.ls = insertelement <4 x float> poison, float %.sroa.12336.0.copyload, i64 0
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> %i.lr, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.lv = fneg <4 x float> %i.lu                  ; 2 uses
  %i.lw = shufflevector <2 x float> %i.ln, <2 x float> %i.lh, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.lx = fmul <4 x float> %i.lw, %i.lm
  %i.ly = insertelement <2 x float> poison, float %.sroa.0327.0.copyload, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = insertelement <2 x float> %i.ke, float %.sroa.12336.0.copyload, i64 1 ; 2 uses
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.ma, <2 x float> %i.lq) ; 3 uses
  %i.mc = shufflevector <2 x float> %i.lk, <2 x float> %i.ln, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.md = fmul <4 x float> %i.mc, %i.lv
  %i.me = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.mf = insertelement <4 x float> %i.me, float %.sroa.0327.0.copyload, i64 1
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.mh = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mi = insertelement <2 x float> %i.mh, float %.sroa.12336.0.copyload, i64 0
  %i.mj = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.mk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mg, <4 x float> %i.mj, <4 x float> %i.lx) ; 8 uses
  %i.ml = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.ml, <4 x float> %i.md) ; 5 uses
  %i.mn = extractelement <2 x float> %i.mb, i64 0
  %i.mo = shufflevector <2 x float> %i.mb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.mp = shufflevector <4 x float> %i.mm, <4 x float> %i.mo, <2 x i32> <i32 1, i32 4>
  %i.mq = fneg <2 x float> %i.mp                  ; 3 uses
  %i.mr = shufflevector <4 x float> %i.kh, <4 x float> %i.lm, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.ms = shufflevector <4 x float> %i.kj, <4 x float> %i.lv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mt = extractelement <4 x float> %i.mk, i64 2
  %i.mu = extractelement <2 x float> %i.lh, i64 0
  %i.mv = fneg float %i.mu                        ; 2 uses
  %i.mw = shufflevector <2 x float> %i.kn, <2 x float> %i.lh, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.mx = fneg <4 x float> %i.mw
  %i.my = fmul float %i.kp, %i.mv
  %i.mz = fmul <4 x float> %i.kt, %i.mx
  %i.na = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kw, <4 x float> %i.kr, <4 x float> %i.mz) ; 8 uses
  %i.nb = fmul float %i.mt, %i.la
  %i.nc = extractelement <4 x float> %i.mk, i64 1
  %i.nd = call float @llvm.fmuladd.f32(float %i.nc, float %i.lb, float %i.nb)
  %i.ne = extractelement <4 x float> %i.na, i64 0
  %i.nf = call float @llvm.fmuladd.f32(float %i.mn, float %i.ne, float %i.nd)
  %i.ng = extractelement <4 x float> %i.mk, i64 0
  %i.nh = extractelement <4 x float> %i.na, i64 2
  %i.ni = extractelement <2 x float> %i.mq, i64 0
  %i.nj = extractelement <4 x float> %i.na, i64 1
  %i.nk = extractelement <4 x float> %i.mm, i64 0
  %i.nl = shufflevector <4 x float> %i.ky, <4 x float> %i.na, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.nm = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.nn = shufflevector <4 x float> %i.na, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.no = call float @llvm.fmuladd.f32(float %i.kq, float %.sroa.18342.0.copyload, float %i.my) ; 4 uses
  %i.np = insertelement <2 x float> %i.nn, float %i.no, i64 0
  %i.nq = fneg <2 x float> %i.np
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> %i.na, <4 x i32> <i32 poison, i32 0, i32 poison, i32 6>
  %i.nt = insertelement <4 x float> %i.ns, float %i.la, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.no, i64 2
  %i.nv = fmul <4 x float> %i.mj, %i.nu
  %i.nw = call float @llvm.fmuladd.f32(float %i.ng, float %i.no, float %i.nf)
  %i.nx = call float @llvm.fmuladd.f32(float %i.ni, float %i.nh, float %i.nw)
  %i.ny = call float @llvm.fmuladd.f32(float %i.nk, float %i.nj, float %i.nx)
  %i.nz = fdiv float 1.000000e+00, %i.ny
  %i.oa = insertelement <4 x float> poison, float %i.nz, i64 0
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.oc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mr, <4 x float> %i.nl, <4 x float> %i.nv)
  %i.od = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %i.nm, <4 x float> %i.oc)
  %i.oe = fmul <4 x float> %i.od, %i.ob
  %i.of = shufflevector <2 x float> %i.ln, <2 x float> %i.lh, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.og = insertelement <4 x float> %i.lg, float %i.no, i64 1
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.oi = fmul <4 x float> %i.of, %i.oh
  %i.oj = shufflevector <2 x float> %i.lj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ok = insertelement <4 x float> %i.oj, float %.sroa.0327.0.copyload, i64 2
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.om = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ol, <4 x float> %i.ky, <4 x float> %i.oi)
  %i.on = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.oo = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.op = shufflevector <4 x float> %i.on, <4 x float> %i.oo, <4 x i32> <i32 0, i32 poison, i32 poison, i32 5>
  %i.oq = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.or = shufflevector <4 x float> %i.op, <4 x float> %i.oq, <4 x i32> <i32 0, i32 0, i32 5, i32 3>
  %i.os = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.or, <4 x float> %i.na, <4 x float> %i.om)
  %i.ot = fmul <4 x float> %i.os, %i.ob
  %i.ou = shufflevector <2 x float> %i.lk, <2 x float> %i.ln, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ov = shufflevector <2 x float> %i.mq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ow = shufflevector <2 x float> %i.mq, <2 x float> %i.mb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ox = fmul <4 x float> %i.ou, %i.ow
  %i.oy = shufflevector <2 x float> %i.ln, <2 x float> %i.lh, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oz = insertelement <4 x float> %i.oy, float %i.mv, i64 2
  %i.pa = shufflevector <4 x float> %i.oz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.pb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pa, <4 x float> %i.mm, <4 x float> %i.ox)
  %i.pc = shufflevector <4 x float> %i.ks, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.pd = insertelement <4 x float> %i.pc, float %.sroa.18342.0.copyload, i64 0
  %i.pe = insertelement <4 x float> %i.pd, float %i.kl, i64 2
  %i.pf = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pf, <4 x float> %i.mk, <4 x float> %i.pb)
  %i.ph = fmul <4 x float> %i.pg, %i.ob
  %i.pi = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.pi, ptr %5, align 16, !alias.scope !195
  %i.pj = shufflevector <4 x float> %i.ot, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.pj, ptr %i.dm, align 16, !alias.scope !195
  %i.pk = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.pk, ptr %i.dn, align 16, !alias.scope !195
  %i.pl = shufflevector <2 x float> %i.ko, <2 x float> %i.kn, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.pm = shufflevector <4 x float> %i.mm, <4 x float> %i.mo, <4 x i32> <i32 1, i32 poison, i32 4, i32 poison>
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> %i.ov, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.po = fneg <4 x float> %i.mk
  %i.pp = shufflevector <4 x float> %i.pn, <4 x float> %i.po, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.pq = fmul <4 x float> %i.pl, %i.pp
  %i.pr = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ps = shufflevector <4 x float> %i.mm, <4 x float> %i.pr, <4 x i32> <i32 0, i32 0, i32 1, i32 4>
  %i.pt = shufflevector <4 x float> %i.pr, <4 x float> %i.mk, <4 x i32> <i32 poison, i32 0, i32 poison, i32 4>
  %i.pu = insertelement <4 x float> %i.pt, float %i.ld, i64 0
  %i.pv = insertelement <4 x float> %i.pu, float %i.lf, i64 2
  %i.pw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ps, <4 x float> %i.pv, <4 x float> %i.pq)
  %i.px = shufflevector <2 x float> %i.ko, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.py = shufflevector <4 x float> %i.mk, <4 x float> %i.px, <4 x i32> <i32 0, i32 2, i32 1, i32 4>
  %i.pz = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.qa = shufflevector <4 x float> %i.pz, <4 x float> %i.mk, <4 x i32> <i32 poison, i32 0, i32 poison, i32 5>
  %i.qb = insertelement <4 x float> poison, float %i.le, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.qd = shufflevector <4 x float> %i.qc, <4 x float> %i.qa, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.qe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.py, <4 x float> %i.qd, <4 x float> %i.pw)
  %i.qf = fmul <4 x float> %i.qe, %i.ob
  store <4 x float> %i.qf, ptr %i.do, align 16, !alias.scope !195
  call void %i.kb(i32 noundef %i.ka, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull %5) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.qg = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2712), align 8, !range !4, !noundef !5
  %i.qh = trunc nuw i8 %i.qg to i1
  %i.qi = load ptr, ptr %i.dp, align 8
  %i.qj = load i32, ptr %i.dq, align 4
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [72 x i8], ptr %i.qi, i64 %i.qk ; 2 uses
  br i1 %i.qh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.qm = load ptr, ptr @glad_glBindVertexArray, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  %i.qo = load i32, ptr %i.qn, align 8
  call void %i.qm(i32 noundef %i.qo) #56
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.qp = load ptr, ptr @glad_glBindBuffer, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 52
  %i.qr = load i32, ptr %i.qq, align 4
  call void %i.qp(i32 noundef 34962, i32 noundef %i.qr) #56
  %i.qs = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.qt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.qu = load i32, ptr %i.qt, align 4
  call void %i.qs(i32 noundef %i.qu, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.qv = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.qw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.qx = load i32, ptr %i.qw, align 4
  call void %i.qv(i32 noundef %i.qx) #56
  %i.qy = load ptr, ptr @glad_glBindBuffer, align 8
  %i.qz = load ptr, ptr %i.dp, align 8
  %i.ra = load i32, ptr %i.dq, align 4
  %i.rb = sext i32 %i.ra to i64
  %i.rc = getelementptr inbounds [72 x i8], ptr %i.qz, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  %i.re = load i32, ptr %i.rd, align 4
  call void %i.qy(i32 noundef 34962, i32 noundef %i.re) #56
  %i.rf = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.rg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.ri = load i32, ptr %i.rh, align 4
  call void %i.rf(i32 noundef %i.ri, i32 noundef 2, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.rj = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.rk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rm = load i32, ptr %i.rl, align 4
  call void %i.rj(i32 noundef %i.rm) #56
  %i.rn = load ptr, ptr @glad_glBindBuffer, align 8
  %i.ro = load ptr, ptr %i.dp, align 8
  %i.rp = load i32, ptr %i.dq, align 4
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [72 x i8], ptr %i.ro, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 60
  %i.rt = load i32, ptr %i.rs, align 4
  call void %i.rn(i32 noundef 34962, i32 noundef %i.rt) #56
  %i.ru = load ptr, ptr @glad_glVertexAttribPointer, align 8
  %i.rv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.rx = load i32, ptr %i.rw, align 4
  call void %i.ru(i32 noundef %i.rx, i32 noundef 3, i32 noundef 5126, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null) #56
  %i.ry = load ptr, ptr @glad_glEnableVertexAttribArray, align 8
  %i.rz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2392), align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 12
  %i.sb = load i32, ptr %i.sa, align 4
end_hunk_0
begin_hunk_1_@rlVertex3f:bb.a
  %i.do = extractelement <2 x float> %i.z, i64 1
  store float %i.do, ptr %i.dn, align 4
  %i.dp = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 52), align 4
  %i.dq = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [72 x i8], ptr %i.ds, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.ea = shl nsw i32 %i.dz, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eb
  store float %i.dp, ptr %i.ec, align 4
  %i.ed = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 56), align 8
  %i.ee = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [72 x i8], ptr %i.eg, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.eo = shl nsw i32 %i.en, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr [4 x i8], ptr %i.em, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store float %i.ed, ptr %i.er, align 4
  %i.es = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 60), align 4
  %i.et = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [72 x i8], ptr %i.ev, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fd = mul nsw i32 %i.fc, 3
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fe
  store float %i.es, ptr %i.ff, align 4
  %i.fg = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 64), align 8
  %i.fh = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [72 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.fr = mul nsw i32 %i.fq, 3
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [4 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  store float %i.fg, ptr %i.fu, align 4
  %i.fv = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 68), align 4
  %i.fw = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [72 x i8], ptr %i.fy, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.gg = mul nsw i32 %i.gf, 3
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr [4 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  store float %i.fv, ptr %i.gj, align 4
  %i.gk = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 72), align 8
  %i.gl = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [72 x i8], ptr %i.gn, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.gv = shl nsw i32 %i.gu, 2
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 %i.gw
  store i8 %i.gk, ptr %i.gx, align 1
  %i.gy = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 73), align 1
  %i.gz = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [72 x i8], ptr %i.hb, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.hj = shl nsw i32 %i.hi, 2
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 1
  store i8 %i.gy, ptr %i.hm, align 1
  %i.hn = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 74), align 2
  %i.ho = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [72 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.hy = shl nsw i32 %i.hx, 2
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr i8, ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 2
  store i8 %i.hn, ptr %i.ib, align 1
  %i.ic = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 75), align 1
  %i.id = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [72 x i8], ptr %i.if, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.in = shl nsw i32 %i.im, 2
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr i8, ptr %i.il, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 3
  store i8 %i.ic, ptr %i.iq, align 1
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.it = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.ix = load i32, ptr %i.iw, align 8
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr [16 x i8], ptr %i.iv, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 -12    ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlVertex2f(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RLGL, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load float, ptr %i.b, align 4
  tail call void @rlVertex3f(float noundef %0, float noundef %1, float noundef %i.c)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlVertex2i(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp i32 %0 to float
  %i.b = sitofp i32 %1 to float
  %i.c = load ptr, ptr @RLGL, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load float, ptr %i.d, align 4
  tail call void @rlVertex3f(float noundef %i.a, float noundef %i.b, float noundef %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlTexCoord2f(float noundef %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  store float %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 52), align 4
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 56), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlNormal3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = insertelement <2 x float> poison, float %0, i64 0 ; 2 uses
  %i.d = insertelement <2 x float> %i.c, float %1, i64 1 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 224), align 8
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.e = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), align 8 ; 2 uses
  %i.f = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 232), align 8 ; 2 uses
  %i.g = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.h = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 1, i32 3>
  %i.i = fmul <2 x float> %i.g, %i.h
  %i.j = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.k = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.k, <2 x float> %i.i)
  %i.m = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 240), align 8
  %i.n = insertelement <2 x float> %4, float %i.m, i64 1
  %i.o = insertelement <2 x float> poison, float %2, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.p, <2 x float> %i.l)
  %i.r = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 248), align 8
  %i.s = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 252), align 4
  %i.t = fmul float %1, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %i.r, float %0, float %i.t)
  %i.v = load float, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 256), align 8
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %2, float %i.u)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.w, %bb.b ], [ %2, %bb.a ]
  %i.x = phi <2 x float> [ %i.q, %bb.b ], [ %i.d, %bb.a ]
  store <2 x float> %i.x, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 60), align 4
  store float %.0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 68), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlColor4ub(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  store i8 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 72), align 8
  store i8 %1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 73), align 1
  store i8 %2, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 74), align 2
  store i8 %3, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 75), align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlColor4f(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <4 x float> poison, float %0, i64 0
  %i.b = insertelement <4 x float> %i.a, float %1, i64 1
  %i.c = insertelement <4 x float> %i.b, float %2, i64 2
  %i.d = insertelement <4 x float> %i.c, float %3, i64 3
  %i.e = fmul <4 x float> %i.d, splat (float 2.550000e+02)
  %i.f = fptoui <4 x float> %i.e to <4 x i8>
  store <4 x i8> %i.f, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 72), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlColor3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = fmul float %0, 2.550000e+02
  %i.b = fptoui float %i.a to i8
  %i.c = fmul float %1, 2.550000e+02
  %i.d = fptoui float %i.c to i8
  %i.e = fmul float %2, 2.550000e+02
  %i.f = fptoui float %i.e to i8
  store i8 %i.b, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 72), align 8
  store i8 %i.d, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 73), align 1
  store i8 %i.f, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 74), align 2
  store i8 -1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 75), align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlSetTexture(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.c = load ptr, ptr @RLGL, align 8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 8
  %i.k = shl nsw i32 %i.j, 2
  %.not6 = icmp slt i32 %i.b, %i.k
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rlDrawRenderBatch(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2340), align 4
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2336), align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2336), align 8
  %i.m = load ptr, ptr @RLGL, align 8             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [16 x i8], ptr %i.o, i64 %i.r ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = getelementptr i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4
  %.not = icmp eq i32 %i.v, %0
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.s, i64 -12
  %i.x = load i32, ptr %i.w, align 4              ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.t, align 4
  switch i32 %i.z, label %bb.j [
    i32 1, label %bb.h
    i32 4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.aa = and i32 %i.x, 3
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp samesign ult i32 %i.x, 4
  %i.ac = and i32 %i.x, 3
  %i.ad = sub nuw nsw i32 4, %i.ac
  %i.ae = select i1 %i.ab, i32 1, i32 %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.sink = phi i32 [ %i.ae, %bb.i ], [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.af = getelementptr i8, ptr %i.s, i64 -8
  store i32 %.sink, ptr %i.af, align 4
  %i.ag = load ptr, ptr @RLGL, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [16 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.aq = add nsw i32 %i.ap, %i.ao                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [72 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = shl nsw i32 %i.ax, 2
  %.not.i.not = icmp slt i32 %i.aq, %i.ay
  br i1 %.not.i.not, label %rlCheckRenderBatchLimit.exit, label %rlCheckRenderBatchLimit.exit.thread

rlCheckRenderBatchLimit.exit.thread:              ; preds = %bb.j
  %i.az = getelementptr i8, ptr %i.am, i64 -16
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr i8, ptr %i.am, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4
  tail call void @rlDrawRenderBatch(ptr noundef nonnull %i.ag)
  %i.bd = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [16 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  store i32 %i.ba, ptr %i.bk, align 4
  %i.bl = load ptr, ptr @RLGL, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [16 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  store i32 %i.bc, ptr %i.bs, align 4
  br label %bb.k

rlCheckRenderBatchLimit.exit:                     ; preds = %bb.j
  store i32 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 48), align 8
  %i.bt = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.aj, align 8
  %i.bv = load ptr, ptr %i.ah, align 8
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr [16 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -16
  %i.bz = load i32, ptr %i.by, align 4
  store i32 %i.bz, ptr %i.bx, align 4
  br label %bb.k

bb.k:                                             ; preds = %rlCheckRenderBatchLimit.exit.thread, %rlCheckRenderBatchLimit.exit, %bb.f
  %i.ca = load ptr, ptr @RLGL, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i32, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 255
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @rlDrawRenderBatch(ptr noundef nonnull %i.ca)
end_hunk_1
begin_hunk_2_@Vector4Equals:bb.a
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.514.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.5.12.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.y = fsub float %.sroa.514.12.vec.extract, %.sroa.5.12.vec.extract
  %i.z = tail call float @llvm.fabs.f32(float %i.y)
  %i.aa = tail call nsz float @llvm.fabs.f32(float %.sroa.514.12.vec.extract)
  %i.ab = tail call nsz float @llvm.fabs.f32(float %.sroa.5.12.vec.extract)
  %i.ac = tail call nsz float @llvm.maxnum.f32(float %i.aa, float %i.ab)
  %i.ad = tail call nsz float @llvm.maxnum.f32(float %i.ac, float 1.000000e+00)
  %i.ae = fmul nnan float %i.ad, f0x358637BD
  %i.af = fcmp ole float %i.z, %i.ae
  %i.ag = zext i1 %i.af to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ah = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.ag, %bb.d ]
  ret i32 %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @MatrixDeterminant(ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load float, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 8            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load float, ptr %i.m, align 8            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load float, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load float, ptr %i.r, align 4            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.u = load float, ptr %i.t, align 4
  %i.v = load <2 x float>, ptr %i.d, align 8      ; 2 uses
  %i.w = load float, ptr %i.j, align 4
  %i.x = load float, ptr %i.e, align 8            ; 2 uses
  %i.y = load <3 x float>, ptr %i.e, align 8      ; 4 uses
  %i.z = shufflevector <3 x float> %i.y, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 1, i32 0>
  %i.aa = load <2 x float>, ptr %i.o, align 8     ; 2 uses
  %i.ab = fneg <2 x float> %i.aa                  ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ad = fmul <4 x float> %i.z, %i.ac
  %i.ae = shufflevector <2 x float> %i.aa, <2 x float> %i.v, <4 x i32> <i32 0, i32 poison, i32 3, i32 2>
  %i.af = insertelement <4 x float> %i.ae, float %i.u, i64 1 ; 2 uses
  %i.ag = shufflevector <3 x float> %i.y, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 1, i32 2, i32 6, i32 1>
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.ah, <4 x float> %i.ad) ; 4 uses
  %i.aj = extractelement <4 x float> %i.ai, i64 1 ; 2 uses
  %i.ak = fneg float %i.aj
  %i.al = fmul float %i.n, %i.ak
  %i.am = extractelement <4 x float> %i.ai, i64 0 ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.i, float %i.am, float %i.al)
  %i.ao = extractelement <4 x float> %i.ai, i64 2 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ao, float %i.an)
  %i.aq = extractelement <4 x float> %i.ai, i64 3
  %i.ar = fneg float %i.aq                        ; 2 uses
  %i.as = fmul float %i.n, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.c, float %i.am, float %i.as)
  %i.au = extractelement <2 x float> %i.ab, i64 0
  %i.av = fmul float %i.x, %i.au
  %i.aw = extractelement <3 x float> %i.y, i64 2
  %i.ax = extractelement <2 x float> %i.v, i64 0  ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.aw, float %i.av) ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ay, float %i.at)
  %i.ba = fneg float %i.az
  %i.bb = fmul float %i.g, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.a, float %i.ap, float %i.bb)
  %i.bd = fmul float %i.i, %i.ar
  %i.be = tail call float @llvm.fmuladd.f32(float %i.c, float %i.aj, float %i.bd)
  %i.bf = fneg float %i.w
  %i.bg = fmul float %i.x, %i.bf
  %i.bh = extractelement <3 x float> %i.y, i64 1
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.bh, float %i.bg) ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.s, float %i.bi, float %i.be)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.l, float %i.bj, float %i.bc)
  %i.bl = fneg float %i.ay
  %i.bm = fmul float %i.i, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.c, float %i.ao, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.n, float %i.bi, float %i.bn)
  %i.bp = fneg float %i.q
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bo, float %i.bk)
  ret float %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @MatrixTrace(ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load float, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4
  %i.d = fadd float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load float, ptr %i.e, align 8
  %i.g = fadd float %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load float, ptr %i.h, align 4
  %i.j = fadd float %i.g, %i.i
  ret float %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @MatrixTranspose(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %1, align 8
  store float %i.a, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.l, ptr %i.m, align 4
  %i.n = load <12 x float>, ptr %i.b, align 4
  %i.o = shufflevector <12 x float> %i.n, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.o, ptr %i.e, align 4
  %i.p = load <12 x float>, ptr %i.c, align 8
  %i.q = shufflevector <12 x float> %i.p, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.q, ptr %i.f, align 4
  %i.r = load <12 x float>, ptr %i.d, align 4
  %i.s = shufflevector <12 x float> %i.r, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.s, ptr %i.g, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.u, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @MatrixInvert(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %1, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load float, ptr %i.f, align 4            ; 3 uses
  %i.t = load <2 x float>, ptr %i.d, align 4
  %i.u = load <2 x float>, ptr %i.e, align 4      ; 3 uses
  %i.v = load <2 x float>, ptr %i.g, align 4      ; 3 uses
  %i.w = extractelement <2 x float> %i.v, i64 0   ; 2 uses
  %i.x = fneg float %i.w
  %i.y = shufflevector <2 x float> %i.u, <2 x float> %i.t, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.z = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aa = insertelement <4 x float> %i.z, float %i.x, i64 2
  %i.ab = load <2 x float>, ptr %i.k, align 8     ; 4 uses
  %i.ac = load float, ptr %i.o, align 4           ; 3 uses
  %i.ad = fneg float %i.ac
  %i.ae = load <2 x float>, ptr %i.h, align 8     ; 3 uses
  %i.af = load <2 x float>, ptr %i.i, align 8     ; 6 uses
  %i.ag = load <2 x float>, ptr %i.j, align 8     ; 6 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.ak = fneg <4 x float> %i.aj                  ; 2 uses
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  %i.am = shufflevector <2 x float> %i.ab, <2 x float> %i.ag, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.an = fmul <4 x float> %i.am, %i.ak
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ap = shufflevector <2 x float> %i.ab, <2 x float> %i.ag, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.ap, <4 x float> %i.an) ; 5 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  %i.as = extractelement <2 x float> %i.af, i64 0
  %i.at = fneg float %i.as
  %i.au = fneg float %i.ah
  %i.av = fneg float %i.ai
  %i.aw = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ax = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %2 = load <4 x float>, ptr %i.b, align 8
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ay = insertelement <2 x float> %3, float %i.a, i64 1
  %i.az = fneg <2 x float> %i.ay
  %i.ba = load <2 x float>, ptr %i.n, align 4     ; 3 uses
  %i.bb = load float, ptr %i.c, align 8           ; 2 uses
  %i.bc = fneg float %i.bb
  %i.bd = fneg <4 x float> %i.y                   ; 3 uses
  %i.be = extractelement <4 x float> %i.bd, i64 1
  %i.bf = fmul float %i.bb, %i.be
  %i.bg = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.bh = insertelement <4 x float> poison, float %i.s, i64 0
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bg, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.bk = fneg <4 x float> %i.bj                  ; 2 uses
  %i.bl = load <2 x float>, ptr %i.m, align 4     ; 6 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> %i.ax, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.bn = fmul <4 x float> %i.bm, %i.bd
  %i.bo = shufflevector <2 x float> %i.ba, <2 x float> %i.bl, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bp = fmul <4 x float> %i.bo, %i.bk
  %i.bq = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float %i.a, i64 1
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bt = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x float> %i.bt, float %i.s, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bv, <4 x float> %i.bn) ; 8 uses
  %i.bx = insertelement <2 x float> %i.v, float %i.s, i64 1
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.by, <4 x float> %i.bp) ; 5 uses
  %i.ca = extractelement <4 x float> %i.bz, i64 1
  %i.cb = fneg float %i.ca                        ; 2 uses
  %i.cc = shufflevector <4 x float> %i.y, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.cd = shufflevector <4 x float> %i.aa, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ce = extractelement <2 x float> %i.ax, i64 0
  %i.cf = fneg float %i.ce                        ; 2 uses
  %i.cg = shufflevector <2 x float> %i.af, <2 x float> %i.ax, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.ch = fneg <4 x float> %i.cg
  %i.ci = fmul float %i.ah, %i.cf
  %i.cj = fmul <4 x float> %i.al, %i.ch
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.aj, <4 x float> %i.cj) ; 8 uses
  %i.cl = extractelement <4 x float> %i.bw, i64 2 ; 2 uses
  %i.cm = extractelement <4 x float> %i.bw, i64 1
  %i.cn = extractelement <4 x float> %i.ck, i64 0
  %i.co = extractelement <4 x float> %i.bw, i64 0
  %i.cp = extractelement <4 x float> %i.ck, i64 2
  %i.cq = extractelement <4 x float> %i.ck, i64 1
  %i.cr = extractelement <4 x float> %i.bz, i64 0
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ac, float %i.ci) ; 4 uses
  %i.ct = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x float> %i.ct, float %i.cs, i64 1
  %i.cv = fneg <2 x float> %i.cu                  ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = fmul float %i.cl, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.ar, float %i.cx)
  %i.cz = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 2>
  %i.da = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.dc = insertelement <4 x float> %i.db, float %i.cs, i64 2
  %i.dd = fmul <4 x float> %i.bv, %i.dc
  %i.de = shufflevector <4 x float> %i.aq, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 0, i32 4>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.de, <4 x float> %i.dd)
  %i.dg = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> %i.dg, <4 x float> %i.df)
  %i.di = shufflevector <2 x float> %i.bl, <2 x float> %i.ax, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dj = insertelement <4 x float> %i.aw, float %i.cs, i64 1
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dl = fneg <4 x float> %i.ck
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.dn = fmul <4 x float> %i.di, %i.dm
  %i.do = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dp = insertelement <4 x float> %i.do, float %i.a, i64 2
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.aq, <4 x float> %i.dn)
  %i.ds = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.dt = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 poison, i32 poison, i32 5>
  %i.dv = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.du, <4 x float> %i.dv, <4 x i32> <i32 0, i32 0, i32 5, i32 3>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.ck, <4 x float> %i.dr)
  %i.dy = shufflevector <2 x float> %i.ba, <2 x float> %i.bl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 poison, i32 6>
  %i.ea = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.eb = shufflevector <2 x float> %i.bl, <2 x float> %i.ax, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float %i.cf, i64 2
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ee = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.ef = insertelement <4 x float> %i.ee, float %i.ac, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.ad, i64 2
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.a, float %i.w, float %i.bf) ; 4 uses
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.cn, float %i.cy)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cs, float %i.ej)
  %i.el = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cp, float %i.ek)
  %i.em = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cq, float %i.el)
  %i.en = fdiv float 1.000000e+00, %i.em
  %i.eo = insertelement <4 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.eq = fmul <4 x float> %i.dh, %i.ep
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.er, ptr %0, align 4
  %i.es = fmul <4 x float> %i.dx, %i.ep
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.et, ptr %i.p, align 4
  %i.eu = insertelement <4 x float> %i.dz, float %i.ei, i64 2
  %i.ev = fneg float %i.ei                        ; 2 uses
  %i.ew = insertelement <4 x float> %i.ea, float %i.ev, i64 1
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ez = fmul <4 x float> %i.eu, %i.ey
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.bz, <4 x float> %i.ez)
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.bw, <4 x float> %i.fa)
  %i.fc = fmul <4 x float> %i.fb, %i.ep
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.fd, ptr %i.q, align 4
  %i.fe = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x float> %i.fe, float %i.ev, i64 1
  %i.fg = fneg float %i.cl
  %i.fh = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.fg, i64 1
  %i.fj = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fk = shufflevector <4 x float> %i.bz, <4 x float> %i.fj, <4 x i32> <i32 0, i32 0, i32 1, i32 4>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.bw, <4 x i32> <i32 poison, i32 0, i32 poison, i32 4>
  %i.fm = insertelement <4 x float> %i.fl, float %i.at, i64 0
  %i.fn = insertelement <4 x float> %i.fm, float %i.av, i64 2
  %i.fo = shufflevector <2 x float> %i.ag, <2 x float> %i.fi, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fp = shufflevector <2 x float> %i.ff, <2 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fq = fmul <4 x float> %i.fo, %i.fp
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fn, <4 x float> %i.fq)
  %i.fs = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ft = shufflevector <4 x float> %i.bw, <4 x float> %i.fs, <4 x i32> <i32 0, i32 2, i32 1, i32 4>
  %i.fu = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> %i.bw, <4 x i32> <i32 poison, i32 0, i32 poison, i32 5>
  %i.fw = insertelement <4 x float> poison, float %i.au, i64 0
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> %i.fv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.fy, <4 x float> %i.fr)
  %i.ga = fmul <4 x float> %i.fz, %i.ep
  store <4 x float> %i.ga, ptr %i.r, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @MatrixIdentity(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @MatrixAdd(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <4 x float>, ptr %1, align 8
  %i.k = load <4 x float>, ptr %2, align 8
  %i.l = fadd <4 x float> %i.j, %i.k
  store <4 x float> %i.l, ptr %0, align 4
  %i.m = load <4 x float>, ptr %i.a, align 8
  %i.n = load <4 x float>, ptr %i.b, align 8
  %i.o = fadd <4 x float> %i.m, %i.n
  store <4 x float> %i.o, ptr %i.c, align 4
  %i.p = load <4 x float>, ptr %i.d, align 8
  %i.q = load <4 x float>, ptr %i.e, align 8
  %i.r = fadd <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %i.f, align 4
  %i.s = load <4 x float>, ptr %i.g, align 8
  %i.t = load <4 x float>, ptr %i.h, align 8
  %i.u = fadd <4 x float> %i.s, %i.t
  store <4 x float> %i.u, ptr %i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @MatrixSubtract(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load <4 x float>, ptr %1, align 8
  %i.k = load <4 x float>, ptr %2, align 8
  %i.l = fsub <4 x float> %i.j, %i.k
end_hunk_2
begin_hunk_3_@QuaternionCubicHermiteSpline:bb.a
  %i.q = shufflevector <2 x float> %0, <2 x float> %3, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.s = fmul <4 x float> %i.q, %i.r
  %i.t = shufflevector <2 x float> %4, <2 x float> %5, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.u = insertelement <4 x float> poison, float %i.e, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = fmul <4 x float> %i.t, %i.v
  %i.x = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.y = insertelement <4 x float> poison, float %i.f, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = fmul <4 x float> %i.x, %i.z
  %i.ab = fadd <4 x float> %i.p, %i.s
  %i.ac = fadd <4 x float> %i.w, %i.ab
  %i.ad = fadd <4 x float> %i.aa, %i.ac           ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.ad, %i.ad
  %i.ae = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.af = extractelement <4 x float> %i.ad, i64 0 ; 2 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ae)
  %i.ah = extractelement <4 x float> %i.ad, i64 1 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = extractelement <4 x float> %i.ad, i64 3 ; 2 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ai) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ak)
  %i.al = fcmp oeq float %i.ak, 0.000000e+00
  %i.am = fdiv float 1.000000e+00, %sqrt.i
  %i.an = select i1 %i.al, float 1.000000e+00, float %i.am
  %i.ao = insertelement <4 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.ad, %i.ap           ; 2 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %.fca.0.insert.i113 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ar, 0
  %.fca.1.insert.i114 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i113, <2 x float> %i.as, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @QuaternionFromVector3ToVector3(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #13 {
bb.a:
  %.sroa.039.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.026.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 3 uses
  %.sroa.039.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %.sroa.026.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 3 uses
  %i.a = fmul float %.sroa.039.4.vec.extract, %.sroa.026.4.vec.extract
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract, float %.sroa.026.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %3, float %i.b) ; 3 uses
  %i.d = fneg float %.sroa.026.4.vec.extract
  %i.e = fmul float %1, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract, float %3, float %i.e) ; 3 uses
  %i.g = fneg float %3
  %i.h = fmul float %.sroa.039.0.vec.extract, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %1, float %.sroa.026.0.vec.extract, float %i.h) ; 3 uses
  %i.j = fneg float %.sroa.026.0.vec.extract
  %i.k = fmul float %.sroa.039.4.vec.extract, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract, float %.sroa.026.4.vec.extract, float %i.k) ; 3 uses
  %i.m = fmul float %i.i, %i.i
  %i.n = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.m)
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.n) ; 2 uses
  %i.p = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.o)
  %sqrt66 = tail call float @llvm.sqrt.f32(float %i.p)
  %i.q = fadd float %i.c, %sqrt66                 ; 3 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.o) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.r)
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  %i.t = fdiv float 1.000000e+00, %sqrt
  %i.u = select i1 %i.s, float 1.000000e+00, float %i.t ; 4 uses
  %i.v = fmul float %i.f, %i.u
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = fmul float %i.i, %i.u
  %.sroa.051.4.vec.insert57 = insertelement <2 x float> %i.w, float %i.x, i64 1
  %i.y = fmul float %i.l, %i.u
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = fmul float %i.q, %i.u
  %.sroa.8.12.vec.insert64 = insertelement <2 x float> %i.z, float %i.aa, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.051.4.vec.insert57, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.8.12.vec.insert64, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @QuaternionFromMatrix(ptr nofree noundef readonly byval(%struct.Matrix) align 8 captures(none) %0) local_unnamed_addr #22 {
bb.a:
  %i.a = load float, ptr %0, align 8              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4            ; 4 uses
  %i.d = fadd float %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load float, ptr %i.e, align 8            ; 4 uses
  %i.g = fadd float %i.d, %i.f                    ; 2 uses
  %i.h = fsub float %i.a, %i.c
  %i.i = fsub float %i.h, %i.f                    ; 2 uses
  %i.j = fsub float %i.c, %i.a
  %i.k = fsub float %i.j, %i.f                    ; 2 uses
  %i.l = fsub float %i.f, %i.a
  %i.m = fsub float %i.l, %i.c                    ; 2 uses
  %i.n = fcmp ogt float %i.i, %i.g                ; 2 uses
  %.054 = zext i1 %i.n to i32
  %.0 = select i1 %i.n, float %i.i, float %i.g    ; 2 uses
  %i.o = fcmp ogt float %i.k, %.0                 ; 2 uses
  %.155 = select i1 %i.o, i32 2, i32 %.054
  %.1 = select i1 %i.o, float %i.k, float %.0     ; 2 uses
  %i.p = fcmp ogt float %i.m, %.1                 ; 2 uses
  %.256 = select i1 %i.p, i32 3, i32 %.155
  %.2 = select i1 %i.p, float %i.m, float %.1
  %i.q = fadd float %.2, 1.000000e+00
  %i.r = tail call float @sqrtf(float noundef %i.q) #56
  %i.s = fmul float %i.r, 5.000000e-01            ; 5 uses
  %i.t = fdiv float 2.500000e-01, %i.s            ; 11 uses
  switch i32 %.256, label %default.unreachable61 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load float, ptr %i.w, align 8
  %i.y = fsub float %i.v, %i.x
  %i.z = fmul float %i.t, %i.y
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load float, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load float, ptr %i.ac, align 8
  %i.ae = fsub float %i.ab, %i.ad
  %i.af = fmul float %i.t, %i.ae
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.af, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load float, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fmul float %i.t, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.10.8.vec.insert = insertelement <2 x float> %i.am, float %i.s, i64 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert30 = insertelement <2 x float> poison, float %i.s, i64 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load float, ptr %i.ap, align 8
  %i.ar = fsub float %i.ao, %i.aq
  %i.as = fmul float %i.t, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load float, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = fmul float %i.t, %i.ax
  %.sroa.0.4.vec.insert36 = insertelement <2 x float> %.sroa.0.0.vec.insert30, float %i.ay, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load float, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load float, ptr %i.bb, align 8
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = fmul float %i.t, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %.sroa.10.8.vec.insert43 = insertelement <2 x float> %i.bf, float %i.as, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load float, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load float, ptr %i.bi, align 8
  %i.bk = fsub float %i.bh, %i.bj
  %i.bl = fmul float %i.t, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load float, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load float, ptr %i.bo, align 4
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = fmul float %i.t, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %.sroa.0.0.vec.insert32 = insertelement <2 x float> %i.bs, float %i.s, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bu = load float, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load float, ptr %i.bv, align 8
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.t, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.10.8.vec.insert45 = insertelement <2 x float> %i.bz, float %i.bl, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.10.8.vec.insert47 = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load float, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = fsub float %i.cb, %i.cd
  %i.cf = fmul float %i.t, %i.ce
  %.sroa.10.12.vec.insert53 = insertelement <2 x float> %.sroa.10.8.vec.insert47, float %i.cf, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load <4 x float>, ptr %i.cg, align 8
  %2 = shufflevector <4 x float> %1, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load float, ptr %i.ci, align 8
  %i.ck = load <2 x float>, ptr %i.ch, align 8
  %i.cl = insertelement <2 x float> %2, float %i.cj, i64 1
  %i.cm = fadd <2 x float> %i.ck, %i.cl
  %i.cn = insertelement <2 x float> poison, float %i.t, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.co, %i.cm
  br label %bb.f

default.unreachable61:                            ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.10.0 = phi <2 x float> [ %.sroa.10.12.vec.insert53, %bb.e ], [ %.sroa.10.8.vec.insert, %bb.b ], [ %.sroa.10.8.vec.insert43, %bb.c ], [ %.sroa.10.8.vec.insert45, %bb.d ]
  %.sroa.0.0 = phi <2 x float> [ %i.cp, %bb.e ], [ %.sroa.0.4.vec.insert, %bb.b ], [ %.sroa.0.4.vec.insert36, %bb.c ], [ %.sroa.0.0.vec.insert32, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.10.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @QuaternionToMatrix(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4
  %foldExtExtBinop = fmul <2 x float> %1, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.h = fmul <2 x float> %i.g, %2                ; 3 uses
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %1                ; 3 uses
  %i.k = fadd <2 x float> %i.j, %i.h
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> <float -2.000000e+00, float 2.000000e+00>, <2 x float> <float 1.000000e+00, float -0.000000e+00>)
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.m, ptr %i.d, align 4
  %i.n = fmul <2 x float> %1, %i.g                ; 4 uses
  %i.o = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x float> %i.o, %i.p              ; 4 uses
  %i.r = fsub <2 x float> %i.n, %i.q
  %i.s = fadd <2 x float> %i.n, %i.q
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.u = fmul <2 x float> %i.t, splat (float 2.000000e+00)
  store <2 x float> %i.u, ptr %i.e, align 4
  %foldExtExtBinop47 = fsub <2 x float> %i.j, %i.h
  %foldExtExtBinop49 = fadd <2 x float> %i.n, %i.q
  %i.v = shufflevector <2 x float> %foldExtExtBinop47, <2 x float> %foldExtExtBinop49, <2 x i32> <i32 1, i32 2>
  %i.w = fmul <2 x float> %i.v, splat (float 2.000000e+00)
  store <2 x float> %i.w, ptr %i.f, align 4
  %foldExtExtBinop51 = fsub <2 x float> %i.n, %i.q
  %i.x = extractelement <2 x float> %foldExtExtBinop51, i64 1
  %i.y = fmul float %i.x, 2.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.y, ptr %i.z, align 4
  %i.aa = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = shufflevector <2 x float> %i.h, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.ac = fadd <2 x float> %i.aa, %i.ab
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  store float %i.ae, ptr %0, align 4
  %i.af = extractelement <2 x float> %i.ad, i64 1
  store float %i.af, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, <2 x float> } @QuaternionFromAxisAngle(<2 x float> %0, float %1, float noundef %2) local_unnamed_addr #14 {
bb.a:
  %.sroa.027.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.027.0.vec.extract, float %.sroa.027.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b) ; 2 uses
  %i.d = fcmp une float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.c)
  %i.e = fmul float %2, 5.000000e-01              ; 2 uses
  %i.f = tail call float @sinf(float noundef %i.e) #56
  %i.g = fdiv float 1.000000e+00, %sqrt
  %i.h = tail call float @cosf(float noundef %i.e) #56 ; 3 uses
  %i.i = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.j = insertelement <4 x float> %i.i, float %1, i64 2
  %i.k = insertelement <4 x float> %i.j, float %i.h, i64 3
  %i.l = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.g, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.n = fmul <4 x float> %i.k, %i.m
  %i.o = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.f, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.q = fmul <4 x float> %i.n, %i.p              ; 5 uses
  %foldExtExtBinop62 = fmul <4 x float> %i.q, %i.q
  %i.r = extractelement <4 x float> %foldExtExtBinop62, i64 1
  %i.s = extractelement <4 x float> %i.q, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <4 x float> %i.q, i64 2   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.v) ; 2 uses
  %sqrt60 = tail call float @llvm.sqrt.f32(float %i.w)
  %i.x = fcmp oeq float %i.w, 0.000000e+00
  %i.y = fdiv float 1.000000e+00, %sqrt60
  %i.z = select i1 %i.x, float 1.000000e+00, float %i.y
  %i.aa = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = fmul <4 x float> %i.q, %i.ab            ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.045.0 = phi <2 x float> [ %i.ad, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.8.0 = phi <2 x float> [ %i.ae, %bb.b ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.045.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.8.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @QuaternionToAxisAngle(<2 x float> %0, <2 x float> %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #19 {
bb.a:
  %.sroa.11.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.a = tail call float @llvm.fabs.f32(float %.sroa.11.12.vec.extract)
  %i.b = fcmp ogt float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.013.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract, float %.sroa.013.0.vec.extract, float %i.c)
  %.sroa.11.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract, float %.sroa.11.8.vec.extract, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract, float %.sroa.11.12.vec.extract, float %i.e) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.f)
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  %i.h = fdiv float 1.000000e+00, %sqrt
  %i.i = select i1 %i.g, float 1.000000e+00, float %i.h
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fmul <2 x float> %0, %i.k
  %i.m = fmul <2 x float> %1, %i.k                ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.11.12.vec.extract43.pre-phi = phi float [ %i.n, %bb.b ], [ %.sroa.11.12.vec.extract, %bb.a ] ; 3 uses
  %.sroa.013.0 = phi <2 x float> [ %i.l, %bb.b ], [ %0, %bb.a ]
  %.sroa.11.0 = phi <2 x float> [ %i.m, %bb.b ], [ %1, %bb.a ]
  %i.o = tail call float @acosf(float noundef %.sroa.11.12.vec.extract43.pre-phi) #56
  %i.p = fneg float %.sroa.11.12.vec.extract43.pre-phi
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %.sroa.11.12.vec.extract43.pre-phi, float 1.000000e+00)
  %i.r = tail call float @sqrtf(float noundef %i.q) #56 ; 3 uses
  %i.s = fcmp ogt float %i.r, f0x358637BD         ; 2 uses
  %.sroa.11.8.vec.extract34 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.t = fdiv float %.sroa.11.8.vec.extract34, %i.r
  %.sroa.7.0 = select i1 %i.s, float %i.t, float 0.000000e+00
  %i.u = fmul float %i.o, 2.000000e+00
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x float> %.sroa.013.0, %i.w
  %i.y = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %i.z = shufflevector <2 x i1> %i.y, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.x, <2 x float> <float 1.000000e+00, float 0.000000e+00>
  store <2 x float> %i.aa, ptr %2, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.u, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define { <2 x float>, <2 x float> } @QuaternionFromEuler(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #23 {
bb.a:
  %i.a = fmul float %0, 5.000000e-01              ; 2 uses
  %i.b = tail call float @cosf(float noundef %i.a) #56
  %i.c = tail call float @sinf(float noundef %i.a) #56
  %i.d = fmul float %1, 5.000000e-01              ; 2 uses
  %i.e = tail call float @cosf(float noundef %i.d) #56
  %i.f = tail call float @sinf(float noundef %i.d) #56
  %i.g = fmul float %2, 5.000000e-01              ; 2 uses
  %i.h = tail call float @cosf(float noundef %i.g) #56 ; 2 uses
  %i.i = tail call float @sinf(float noundef %i.g) #56 ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = insertelement <2 x float> %i.j, float %i.h, i64 1
  %i.l = fneg <2 x float> %i.k
  %i.m = insertelement <4 x float> poison, float %i.c, i64 0
  %i.n = insertelement <4 x float> %i.m, float %i.b, i64 1 ; 2 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.p = insertelement <4 x float> poison, float %i.e, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.f, i64 1 ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.s = fmul <4 x float> %i.o, %i.r
  %i.t = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.u = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.v = fmul <4 x float> %i.t, %i.u
  %i.w = insertelement <4 x float> poison, float %i.i, i64 0 ; 2 uses
  %i.x = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
end_hunk_3
begin_hunk_4_@WaitTime:bb.a
  %i.d = tail call double @llvm.fmuladd.f64(double %i.c, double 5.000000e-02, double %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  %i.e = fptosi double %i.d to i64                ; 2 uses
  %i.f = sitofp i64 %i.e to double
  %i.g = fsub double %i.d, %i.f
  %i.h = fmul double %i.g, 1.000000e+09
  %i.i = fptosi double %i.h to i64
  store i64 %i.e, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef nonnull %1) #56
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.m = fadd double %0, %i.b
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.n = call double @glfwGetTime() #56
  %i.o = fcmp olt double %i.n, %i.m
  br i1 %i.o, label %.preheader, label %bb.d

bb.d:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @TakeScreenshot(ptr noundef %0) local_unnamed_addr #25 {
bb.a:
  %1 = alloca %struct.Vector2, align 8            ; 6 uses
  %2 = alloca %struct.Image, align 8              ; 7 uses
  %i.a = alloca [4096 x i8], align 16             ; 8 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 39) #57
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.189)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8 ; 2 uses
  %i.d = and i32 %i.c, 8192
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 4575657222473777152, ptr %1, align 8
  %i.e = and i32 %i.c, 8194
  %or.cond.i = icmp eq i32 %i.e, 8192
  br i1 %or.cond.i, label %bb.e, label %GetWindowScaleDPI.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @platform.0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @glfwGetWindowContentScale(ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.g) #56
  %.pre.i = load <2 x float>, ptr %1, align 8
  br label %GetWindowScaleDPI.exit

GetWindowScaleDPI.exit:                           ; preds = %bb.d, %bb.e
  %i.h = phi <2 x float> [ %.pre.i, %bb.e ], [ splat (float 1.000000e+00), %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %GetWindowScaleDPI.exit, %bb.c
  %.sroa.02.0 = phi <2 x float> [ %i.h, %GetWindowScaleDPI.exit ], [ splat (float 1.000000e+00), %bb.c ] ; 2 uses
  %i.i = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.j = uitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %.sroa.02.0, %i.j       ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fptosi float %i.l to i32
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fptosi float %i.n to i32
  %i.p = call ptr @rlReadScreenPixels(i32 noundef %i.m, i32 noundef %i.o) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  store ptr %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4
  %i.s = uitofp <2 x i32> %i.r to <2 x float>
  %i.t = fmul <2 x float> %.sroa.02.0, %i.s
  %i.u = fptosi <2 x float> %i.t to <2 x i32>
  store <2 x i32> %i.u, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 7, ptr %i.w, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 184), align 8
  %i.z = call ptr (ptr, ...) @TextFormat(ptr noundef nonnull @.str.190, ptr noundef %i.y, ptr noundef nonnull %0) #56
  %i.aa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 4095) #56 ; 0 uses
  %i.ab = call zeroext i1 @ExportImage(ptr noundef nonnull byval(%struct.Image) align 8 %2, ptr noundef nonnull %i.a) #56 ; 0 uses
  call void @free(ptr noundef %i.p) #56
  %i.ac = call i32 @access(ptr noundef nonnull readonly %i.a, i32 noundef 0) #56
  %.not.i.not = icmp eq i32 %i.ac, -1
  br i1 %.not.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.191, ptr noundef nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.192, ptr noundef nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

declare ptr @TextFormat(ptr noundef, ...) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @BeginMode2D(ptr nofree noundef readonly byval(%struct.Camera2D) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.float16, align 4            ; 10 uses
  %2 = alloca %struct.Matrix, align 8             ; 8 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.b, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @GetCameraMatrix2D(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %2, ptr noundef nonnull byval(%struct.Camera2D) align 8 %0)
  %.sroa.0.0.copyload = load float, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  store float %.sroa.0.0.copyload, ptr %1, align 4, !alias.scope !242
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load <12 x float>, ptr %.sroa.4.0..sroa_idx, align 4
  %i.e = shufflevector <12 x float> %i.d, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.e, ptr %i.c, align 4, !alias.scope !242
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load <12 x float>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = shufflevector <12 x float> %i.g, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.h, ptr %i.f, align 4, !alias.scope !242
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load <12 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.k = shufflevector <12 x float> %i.j, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.k, ptr %i.i, align 4, !alias.scope !242
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %.sroa.10.0.copyload, ptr %i.l, align 4, !alias.scope !242
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %.sroa.14.0.copyload, ptr %i.m, align 4, !alias.scope !242
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sroa.18.0.copyload, ptr %i.n, align 4, !alias.scope !242
  call void @rlMultMatrixf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @GetCameraMatrix2D(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Matrix) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly byval(%struct.Camera2D) align 8 captures(none) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 8
  %i.c = fneg float %i.b                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4
  %i.f = fneg float %i.e                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load float, ptr %i.g, align 8
  %i.i = fmul float %i.h, f0x3C8EFA35             ; 2 uses
  %i.j = tail call float @sinf(float noundef %i.i) #56, !noalias !245 ; 3 uses
  %i.k = tail call float @cosf(float noundef %i.i) #56, !noalias !245 ; 3 uses
  %i.l = fneg float %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load float, ptr %i.m, align 4            ; 7 uses
  %2 = load <4 x float>, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load <4 x float>, ptr %i.o, align 4
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float 0.000000e+00, float 0.000000e+00)
  %i.q = fmul float %i.n, 0.000000e+00
  %i.r = fadd float %i.q, 0.000000e+00            ; 3 uses
  %i.s = tail call float @llvm.fabs.f32(float %i.r) ; 2 uses
  %i.t = fmul float %i.r, %i.f
  %i.u = fmul float %i.j, 0.000000e+00            ; 2 uses
  %i.v = fneg float %i.u
  %i.w = fadd float %i.p, 0.000000e+00            ; 3 uses
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> poison, float %i.r, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.s, i64 1
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> zeroinitializer, <2 x float> %i.aa)
  %i.ac = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.c, i64 3
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.c, float %i.w, float %i.t)
  %i.ae = fadd float %i.ad, 0.000000e+00
  %i.af = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 3
  %i.aj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, float %i.s, i64 0
  %i.ak = fadd <4 x float> %i.ai, %i.aj           ; 4 uses
  %i.al = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = fsub float 1.000000e+00, %i.k           ; 5 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float 0.000000e+00, float %i.l) ; 2 uses
  %i.ao = fadd float %i.k, %i.am                  ; 4 uses
  %i.ap = fmul float %i.an, 0.000000e+00          ; 2 uses
  %i.aq = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ar = insertelement <2 x float> poison, float %i.am, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.v, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.j, i64 1
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> zeroinitializer, <2 x float> %i.au) ; 8 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = insertelement <2 x float> %i.av, float %i.am, i64 1
  %i.ay = extractelement <2 x float> %i.av, i64 0
  %i.az = shufflevector <2 x float> %i.aq, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ba = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ao, i64 1
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.am, float 0.000000e+00, float %i.k) ; 5 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.n, float %i.bb, float %i.ap)
  %i.bd = fmul float %i.n, %i.bb
  %i.be = tail call float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.bd)
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bb, i64 1
  %i.bh = fmul <2 x float> %i.bg, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 1
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.n, float %i.aw, float %i.bi)
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.u, i64 1
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.bl) ; 5 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 1 ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.n, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x float> %i.bm, float %i.an, i64 0
  %i.br = fmul <2 x float> %i.bp, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.ap) ; 2 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float %i.bs) ; 2 uses
  %.scalar = fadd float %i.bt, 0.000000e+00
  %i.bu = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.scalar, i64 3 ; 2 uses
  %i.bv = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.bt, i64 0
  %i.bw = fadd <4 x float> %i.bv, <float 0.000000e+00, float poison, float poison, float -0.000000e+00>
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> zeroinitializer, <2 x float> %i.bh) ; 2 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bs, i64 1
  %i.cb = fadd <2 x float> %i.bm, <float 0.000000e+00, float -0.000000e+00> ; 4 uses
  %i.cc = fadd <2 x float> %i.by, <float 0.000000e+00, float -0.000000e+00> ; 3 uses
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cf = fmul <4 x float> %i.ce, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ch = insertelement <2 x float> %i.cg, float %i.bc, i64 1
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> zeroinitializer, <2 x float> %i.ch)
  %i.cj = fadd <2 x float> %i.ci, <float -0.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1
  %i.cl = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cm = insertelement <2 x float> %i.cl, float %i.bb, i64 0
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> zeroinitializer, <2 x float> %i.br)
  %i.co = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x float> %i.co, float %i.ao, i64 1
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> zeroinitializer, <2 x float> %i.cn)
  %i.cr = fadd <2 x float> %i.cq, zeroinitializer ; 3 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.ck, float 0.000000e+00, float %i.cs)
  %i.cu = fmul float %i.cs, %i.f
  %i.cv = fmul ninf float %i.bn, 0.000000e+00     ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ay, float %i.cv)
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.cy) ; 2 uses
  %i.da = fadd <2 x float> %i.ba, %i.cz           ; 5 uses
  %i.db = fmul <2 x float> %i.cr, zeroinitializer ; 3 uses
  %i.dc = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.cj, <2 x float> %i.da, <2 x i32> <i32 1, i32 2>
  %i.de = fadd <2 x float> %i.dd, %i.db           ; 2 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dg = insertelement <4 x float> %i.df, float %i.ct, i64 1
  %i.dh = shufflevector <2 x float> %i.av, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.ca)
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = fadd <4 x float> %i.dj, zeroinitializer ; 3 uses
  %i.dl = extractelement <2 x float> %i.cz, i64 1
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.ao, float 0.000000e+00, float %i.dl)
  %i.dn = fadd float %i.dm, 0.000000e+00          ; 2 uses
  %i.do = extractelement <2 x float> %i.cb, i64 0
  %i.dp = shufflevector <2 x float> %i.cb, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.cc)
  %i.dr = extractelement <2 x float> %i.cr, i64 1 ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dc, float 0.000000e+00, float %i.dr)
  %i.dt = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = insertelement <2 x float> %i.dv, float %i.ds, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> zeroinitializer, <2 x float> %i.dw)
  %i.dy = shufflevector <2 x float> %i.cb, <2 x float> %i.dq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float %i.cu, i64 3
  %i.ea = fadd <4 x float> %i.dz, %i.cf           ; 3 uses
  %i.eb = extractelement <2 x float> %i.cc, i64 0
  %i.ec = fmul float %i.eb, %i.f
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.c, float %i.do, float %i.ec)
  %i.ee = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.ea, <2 x i32> <i32 1, i32 6>
  %i.eg = insertelement <2 x float> %i.db, float %i.ed, i64 1
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> zeroinitializer, <2 x float> %i.eg)
  %i.ei = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ej = fadd <2 x float> %i.ei, %i.eh           ; 2 uses
  %i.ek = fmul <2 x float> %i.ej, <float 1.000000e+00, float 0.000000e+00>
  %i.el = shufflevector <4 x float> %i.dk, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 6, i32 7>
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.en = shufflevector <4 x float> %i.dg, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> zeroinitializer, <4 x float> %i.en)
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> zeroinitializer, <4 x float> %i.eo) ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 poison, i32 poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.er, <4 x float> %i.ea)
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> zeroinitializer, <4 x float> %i.es) ; 3 uses
  %i.eu = fmul float %i.dr, %i.f
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.c, float %i.dc, float %i.eu)
  %i.ew = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ex = insertelement <2 x float> %i.ew, float %i.ev, i64 1
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> zeroinitializer, <2 x float> %i.ex)
  %i.ez = insertelement <2 x float> %i.dt, float %i.dn, i64 1
  %i.fa = fadd <2 x float> %i.ez, %i.ey           ; 2 uses
  %i.fb = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.dn, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fd = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <2 x float> %i.dx, <2 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> zeroinitializer, <4 x float> %i.fe) ; 2 uses
  %i.fg = fmul <4 x float> %i.bu, %i.et
  %i.fh = fadd <4 x float> %i.bu, %i.et           ; 2 uses
  %i.fi = shufflevector <4 x float> %i.fg, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fj = fadd <4 x float> %i.fi, %i.ep
  %i.fk = shufflevector <4 x float> %i.ff, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 3 uses
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> zeroinitializer, <4 x float> %i.fj)
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.al, <4 x float> %i.fl)
  %i.fn = shufflevector <4 x float> %i.ep, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fo = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fp = shufflevector <4 x float> %i.et, <4 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> zeroinitializer, <4 x float> %i.fp)
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> zeroinitializer, <4 x float> %i.fq)
  %i.fs = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.fs, <4 x float> %i.fr)
  store <4 x float> %i.fm, ptr %0, align 4
  store <4 x float> %i.ft, ptr %.sroa.723.0..sroa_idx, align 4
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fu = shufflevector <4 x float> %i.fi, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> zeroinitializer, <4 x float> %i.fu) ; 2 uses
  %i.fw = fadd <4 x float> %i.fk, %i.fv
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> zeroinitializer, <4 x float> %i.fw)
  store <4 x float> %i.fx, ptr %.sroa.1127.0..sroa_idx, align 4
  %.sroa.1531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> zeroinitializer, <4 x float> %i.fv)
  %i.fz = fadd <4 x float> %i.ak, %i.fy
  store <4 x float> %i.fz, ptr %.sroa.1531.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EndMode2D() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %0 = alloca %struct.float16, align 4            ; 10 uses
  %i.b = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.b)
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.d = load ptr, ptr @glad_glGetIntegerv, align 8
  call void %i.d(i32 noundef 36006, ptr noundef nonnull %i.a) #56, !inline_history !10
  %i.e = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #56
  %.sroa.01.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 100), align 4
  %.sroa.108.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 128), align 8
  %.sroa.1412.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 144), align 8
  %.sroa.1816.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 160), align 8
  store float %.sroa.01.0.copyload, ptr %0, align 4, !alias.scope !248
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 104), align 8
  %i.i = shufflevector <12 x float> %i.h, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.i, ptr %i.g, align 4, !alias.scope !248
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 108), align 4
  %i.l = shufflevector <12 x float> %i.k, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.l, ptr %i.j, align 4, !alias.scope !248
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load <12 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 112), align 8
  %i.o = shufflevector <12 x float> %i.n, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.o, ptr %i.m, align 4, !alias.scope !248
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %.sroa.108.0.copyload, ptr %i.p, align 4, !alias.scope !248
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %.sroa.1412.0.copyload, ptr %i.q, align 4, !alias.scope !248
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %.sroa.1816.0.copyload, ptr %i.r, align 4, !alias.scope !248
  call void @rlMultMatrixf(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeginMode3D(ptr nofree noundef readonly byval(%struct.Camera3D) align 8 captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %1 = alloca %struct.float16, align 4            ; 18 uses
  %i.a = load ptr, ptr @RLGL, align 8
  tail call void @rlDrawRenderBatch(ptr noundef %i.a)
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5889, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.c = icmp sgt i32 %i.b, 31
  br i1 %i.c, label %bb.b, label %rlPushMatrix.exit

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 5, ptr noundef nonnull @.str.1)
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  %i.d = icmp eq i32 %.pr, 5888
  br i1 %i.d, label %bb.c, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.b
  %.pre.i.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %rlPushMatrix.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 280), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  br label %rlPushMatrix.exit

rlPushMatrix.exit:                                ; preds = %bb.a, %.._crit_edge.i_crit_edge, %bb.c
  %i.e = phi ptr [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 216), %bb.c ], [ %.pre.i.pre, %.._crit_edge.i_crit_edge ], [ getelementptr inbounds nuw (i8, ptr @RLGL, i64 152), %bb.a ]
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 284), i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.e, i64 64, i1 false)
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 2332), align 4
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 7 uses
  store float 1.000000e+00, ptr %i.k, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store float 1.000000e+00, ptr %.sroa.61.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 76), align 4
  %i.m = uitofp i32 %i.l to float
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 80), align 8
  %i.o = uitofp i32 %i.n to float
  %i.p = fdiv float %i.m, %i.o                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %rlPushMatrix.exit
  %i.s = load double, ptr @rlCullDistanceNear, align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load float, ptr %i.t, align 4
  %i.v = fpext float %i.u to double
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = fmul double %i.w, f0x3F91DF46A0000000
  %i.y = tail call double @tan(double noundef %i.x) #56
  %i.z = fmul double %i.s, %i.y                   ; 3 uses
  %i.aa = fpext float %i.p to double
  %i.ab = fmul double %i.z, %i.aa                 ; 2 uses
  %i.ac = fneg double %i.ab
  %i.ad = fneg double %i.z
  %i.ae = load double, ptr @rlCullDistanceFar, align 8
  tail call void @rlFrustum(double noundef %i.ac, double noundef %i.ab, double noundef %i.ad, double noundef %i.z, double noundef %i.s, double noundef %i.ae)
  br label %bb.f

bb.e:                                             ; preds = %rlPushMatrix.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fpext float %i.ag to double
  %i.ai = fmul double %i.ah, 5.000000e-01         ; 3 uses
  %i.aj = fpext float %i.p to double
  %i.ak = fmul double %i.ai, %i.aj                ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = fneg double %i.ai
  %i.an = load double, ptr @rlCullDistanceNear, align 8
  %i.ao = load double, ptr @rlCullDistanceFar, align 8
  tail call void @rlOrtho(double noundef %i.al, double noundef %i.ak, double noundef %i.am, double noundef %i.ai, double noundef %i.an, double noundef %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %rlPushMatrix.exit, %bb.e, %bb.d
  store ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8
  store i32 5888, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 76), align 4
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 88), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 92), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 108), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 112), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 128), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @RLGL, i64 132), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 148), align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 8 ; 6 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ap, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aq, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.070.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 0
  %foldExtExtBinop = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %.sroa.070.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload, i64 1
  %foldExtExtBinop34 = fsub <2 x float> %.sroa.03.0.copyload, %.sroa.01.0.copyload
  %i.as = extractelement <2 x float> %foldExtExtBinop34, i64 1 ; 3 uses
  %i.at = fsub float %.sroa.24.0.copyload, %.sroa.22.0.copyload ; 3 uses
end_hunk_4
