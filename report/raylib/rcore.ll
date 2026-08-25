Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@rlRotatef:bb.a
  %i.y = insertelement <4 x float> %i.x, float %.062, i64 2 ; 3 uses
  %i.z = shufflevector <4 x float> %i.w, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.aa = fmul <4 x float> %i.y, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.ac = insertelement <4 x float> %i.y, float 1.000000e+00, i64 3
  %i.ad = fmul <4 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = insertelement <4 x float> %i.ae, float 0.000000e+00, i64 3
  %i.ag = insertelement <4 x float> %i.af, float %i.p, i64 1
  %i.ah = insertelement <4 x float> %i.ag, float %i.n, i64 2
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.v, <4 x float> %i.ah) ; 2 uses
  %i.aj = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aa, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ad, <4 x i32> <i32 0, i32 poison, i32 5, i32 3>
  %i.al = insertelement <4 x float> %i.ak, float %.pre-phi, i64 1
  %i.am = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.l, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.r, i64 2
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.v, <4 x float> %i.ao) ; 2 uses
  %i.aq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.o, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.q, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.l, i64 2
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.v, <4 x float> %i.as) ; 2 uses
  %i.au = insertelement <4 x float> poison, float %.sroa.4104.0.copyload, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = fmul <4 x float> %i.av, %i.ap
  %i.ax = insertelement <4 x float> poison, float %.sroa.0103.0.copyload, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.ai, <4 x float> %i.aw)
  %i.ba = insertelement <4 x float> poison, float %.sroa.5105.0.copyload, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.at, <4 x float> %i.az)
  %i.bd = insertelement <4 x float> poison, float %.sroa.6106.0.copyload, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.bc)
  store <4 x float> %i.bf, ptr %i.s, align 4
  %i.bg = insertelement <4 x float> poison, float %.sroa.8108.0.copyload, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = insertelement <4 x float> %i.ap, float 0.000000e+00, i64 3 ; 3 uses
  %i.bj = fmul <4 x float> %i.bh, %i.bi
  %i.bk = insertelement <4 x float> poison, float %.sroa.7107.0.copyload, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = insertelement <4 x float> %i.ai, float 0.000000e+00, i64 3 ; 3 uses
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bm, <4 x float> %i.bj)
  %i.bo = insertelement <4 x float> poison, float %.sroa.9109.0.copyload, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = insertelement <4 x float> %i.at, float 0.000000e+00, i64 3 ; 3 uses
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bq, <4 x float> %i.bn)
  %i.bs = insertelement <4 x float> poison, float %.sroa.10110.0.copyload, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.br)
  store <4 x float> %i.bu, ptr %.sroa.7107.0..sroa_idx, align 4
  %i.bv = insertelement <4 x float> poison, float %.sroa.12112.0.copyload, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bw, %i.bi
  %i.by = insertelement <4 x float> poison, float %.sroa.11111.0.copyload, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bm, <4 x float> %i.bx)
  %i.cb = insertelement <4 x float> poison, float %.sroa.13113.0.copyload, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bq, <4 x float> %i.ca)
  %i.ce = insertelement <4 x float> poison, float %.sroa.14114.0.copyload, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cd)
  store <4 x float> %i.cg, ptr %.sroa.11111.0..sroa_idx, align 4
  %i.ch = insertelement <4 x float> poison, float %.sroa.16116.0.copyload, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fmul <4 x float> %i.ci, %i.bi
  %i.ck = insertelement <4 x float> poison, float %.sroa.15115.0.copyload, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.bm, <4 x float> %i.cj)
  %i.cn = insertelement <4 x float> poison, float %.sroa.17117.0.copyload, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.bq, <4 x float> %i.cm)
  %i.cq = insertelement <4 x float> poison, float %.sroa.18118.0.copyload, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cp)
  store <4 x float> %i.cs, ptr %.sroa.15115.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlScalef(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 17 uses
  %.sroa.038.0.copyload = load float, ptr %i.a, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.439.0.copyload = load float, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.540.0.copyload = load float, ptr %.sroa.540.0..sroa_idx, align 4
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.641.0.copyload = load float, ptr %.sroa.641.0..sroa_idx, align 4
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.742.0.copyload = load float, ptr %.sroa.742.0..sroa_idx, align 4
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.843.0.copyload = load float, ptr %.sroa.843.0..sroa_idx, align 4
  %.sroa.944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.944.0.copyload = load float, ptr %.sroa.944.0..sroa_idx, align 4
  %.sroa.1045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.1045.0.copyload = load float, ptr %.sroa.1045.0..sroa_idx, align 4
  %.sroa.1146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1146.0.copyload = load float, ptr %.sroa.1146.0..sroa_idx, align 4
  %.sroa.1247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.sroa.1247.0.copyload = load float, ptr %.sroa.1247.0..sroa_idx, align 4
  %.sroa.1348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.1348.0.copyload = load float, ptr %.sroa.1348.0..sroa_idx, align 4
  %.sroa.1449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.sroa.1449.0.copyload = load float, ptr %.sroa.1449.0..sroa_idx, align 4
  %.sroa.1550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.1550.0.copyload = load float, ptr %.sroa.1550.0..sroa_idx, align 4
  %.sroa.1651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.1651.0.copyload = load float, ptr %.sroa.1651.0..sroa_idx, align 4
  %.sroa.1752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.1752.0.copyload = load float, ptr %.sroa.1752.0..sroa_idx, align 4
  %.sroa.1853.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.sroa.1853.0.copyload = load float, ptr %.sroa.1853.0..sroa_idx, align 4
  %i.b = insertelement <2 x float> poison, float %.sroa.439.0.copyload, i64 0
  %i.c = insertelement <2 x float> <float 0.000000e+00, float poison>, float %1, i64 1 ; 4 uses
  %i.d = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> zeroinitializer
  %i.e = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.f = fmul <4 x float> %i.d, %i.e
  %i.g = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0 ; 4 uses
  %i.h = insertelement <4 x float> poison, float %.sroa.038.0.copyload, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.i, <4 x float> %i.f)
  %i.k = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %2, i64 2 ; 4 uses
  %i.l = insertelement <4 x float> poison, float %.sroa.540.0.copyload, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.m, <4 x float> %i.j)
  %i.o = insertelement <4 x float> poison, float %.sroa.641.0.copyload, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.n)
  store <4 x float> %i.q, ptr %i.a, align 4
  %i.r = insertelement <2 x float> poison, float %.sroa.843.0.copyload, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> zeroinitializer
  %i.t = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.u = fmul <4 x float> %i.s, %i.t
  %i.v = insertelement <4 x float> poison, float %.sroa.742.0.copyload, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.w, <4 x float> %i.u)
  %i.y = insertelement <4 x float> poison, float %.sroa.944.0.copyload, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.z, <4 x float> %i.x)
  %i.ab = insertelement <4 x float> poison, float %.sroa.1045.0.copyload, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aa)
  store <4 x float> %i.ad, ptr %.sroa.742.0..sroa_idx, align 4
  %i.ae = insertelement <2 x float> poison, float %.sroa.1247.0.copyload, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ah = fmul <4 x float> %i.af, %i.ag
  %i.ai = insertelement <4 x float> poison, float %.sroa.1146.0.copyload, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.aj, <4 x float> %i.ah)
  %i.al = insertelement <4 x float> poison, float %.sroa.1348.0.copyload, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.am, <4 x float> %i.ak)
  %i.ao = insertelement <4 x float> poison, float %.sroa.1449.0.copyload, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.an)
  store <4 x float> %i.aq, ptr %.sroa.1146.0..sroa_idx, align 4
  %i.ar = insertelement <2 x float> poison, float %.sroa.1651.0.copyload, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.au = fmul <4 x float> %i.as, %i.at
  %i.av = insertelement <4 x float> poison, float %.sroa.1550.0.copyload, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.aw, <4 x float> %i.au)
  %i.ay = insertelement <4 x float> poison, float %.sroa.1752.0.copyload, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.az, <4 x float> %i.ax)
  %i.bb = insertelement <4 x float> poison, float %.sroa.1853.0.copyload, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ba)
  store <4 x float> %i.bd, ptr %.sroa.1550.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlMultMatrixf(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 17 uses
  %.sroa.057.0.copyload = load float, ptr %i.l, align 4
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.458.0.copyload = load float, ptr %.sroa.458.0..sroa_idx, align 4
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.559.0.copyload = load float, ptr %.sroa.559.0..sroa_idx, align 4
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.sroa.660.0.copyload = load float, ptr %.sroa.660.0..sroa_idx, align 4
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.761.0.copyload = load float, ptr %.sroa.761.0..sroa_idx, align 4
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.862.0.copyload = load float, ptr %.sroa.862.0..sroa_idx, align 4
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.963.0.copyload = load float, ptr %.sroa.963.0..sroa_idx, align 4
  %.sroa.1064.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.1064.0.copyload = load float, ptr %.sroa.1064.0..sroa_idx, align 4
  %.sroa.1165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.sroa.1165.0.copyload = load float, ptr %.sroa.1165.0..sroa_idx, align 4
  %.sroa.1266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %.sroa.1266.0.copyload = load float, ptr %.sroa.1266.0..sroa_idx, align 4
  %.sroa.1367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.1367.0.copyload = load float, ptr %.sroa.1367.0..sroa_idx, align 4
  %.sroa.1468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %.sroa.1468.0.copyload = load float, ptr %.sroa.1468.0..sroa_idx, align 4
  %.sroa.1569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %.sroa.1569.0.copyload = load float, ptr %.sroa.1569.0..sroa_idx, align 4
  %.sroa.1670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %.sroa.1670.0.copyload = load float, ptr %.sroa.1670.0..sroa_idx, align 4
  %.sroa.1771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.1771.0.copyload = load float, ptr %.sroa.1771.0..sroa_idx, align 4
  %.sroa.1872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %.sroa.1872.0.copyload = load float, ptr %.sroa.1872.0..sroa_idx, align 4
  %i.m = load <16 x float>, ptr %0, align 4       ; 4 uses
  %i.n = shufflevector <16 x float> %i.m, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.o = insertelement <4 x float> poison, float %.sroa.458.0.copyload, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = fmul <4 x float> %i.n, %i.p
  %i.r = shufflevector <16 x float> %i.m, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 4 uses
  %i.s = insertelement <4 x float> poison, float %.sroa.057.0.copyload, i64 0
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.t, <4 x float> %i.q)
  %i.v = shufflevector <16 x float> %i.m, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.w = insertelement <4 x float> poison, float %.sroa.559.0.copyload, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.x, <4 x float> %i.u)
  %i.z = shufflevector <16 x float> %i.m, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.aa = insertelement <4 x float> poison, float %.sroa.660.0.copyload, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ab, <4 x float> %i.y)
  %i.ad = load <2 x float>, ptr %i.d, align 4     ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = load <2 x float>, ptr %i.c, align 4     ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ah = load <2 x float>, ptr %i.b, align 4     ; 2 uses
  %i.ai = load <2 x float>, ptr %i.a, align 4     ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.ak = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.am = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ao = insertelement <4 x float> poison, float %.sroa.862.0.copyload, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = insertelement <4 x float> poison, float %.sroa.761.0.copyload, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.as, <4 x float> %i.aq)
  %i.au = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ax = insertelement <4 x float> poison, float %.sroa.963.0.copyload, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ay, <4 x float> %i.at)
  %i.ba = insertelement <4 x float> poison, float %.sroa.1064.0.copyload, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = load <2 x float>, ptr %i.h, align 4     ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.be = load float, ptr %i.k, align 4
  %i.bf = load <2 x float>, ptr %i.g, align 4     ; 2 uses
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bh = load float, ptr %i.j, align 4
  %i.bi = load <2 x float>, ptr %i.f, align 4     ; 2 uses
  %i.bj = load float, ptr %i.i, align 4
  %i.bk = load <2 x float>, ptr %i.e, align 4     ; 2 uses
  %2 = load float, ptr %1, align 4
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.bi, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.bm = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bo = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bb, <4 x float> %i.az)
  %i.br = shufflevector <4 x float> %i.aj, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.bt = insertelement <4 x float> poison, float %.sroa.1266.0.copyload, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.bs, %i.bu
  %i.bw = insertelement <4 x float> poison, float %.sroa.1165.0.copyload, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.bx, <4 x float> %i.bv)
  %i.bz = shufflevector <2 x float> %i.bk, <2 x float> %i.bi, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cc = insertelement <4 x float> poison, float %.sroa.1367.0.copyload, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cd, <4 x float> %i.by)
  %i.cf = insertelement <4 x float> poison, float %.sroa.1468.0.copyload, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.cg, <4 x float> %i.ce)
  store <4 x float> %i.ac, ptr %i.l, align 4
  store <4 x float> %i.bq, ptr %.sroa.761.0..sroa_idx, align 4
  store <4 x float> %i.ch, ptr %.sroa.1165.0..sroa_idx, align 4
  %i.ci = insertelement <4 x float> poison, float %.sroa.1670.0.copyload, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fmul <4 x float> %i.bs, %i.cj
  %i.cl = insertelement <4 x float> poison, float %.sroa.1569.0.copyload, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.cm, <4 x float> %i.ck)
  %i.co = shufflevector <4 x float> %i.bz, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cq = insertelement <4 x float> poison, float %.sroa.1771.0.copyload, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %i.cn)
  %3 = insertelement <4 x float> poison, float %2, i64 0
  %i.ct = insertelement <4 x float> %3, float %i.bj, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.bh, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.be, i64 3
  %i.cw = insertelement <4 x float> poison, float %.sroa.1872.0.copyload, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cx, <4 x float> %i.cs)
  store <4 x float> %i.cy, ptr %.sroa.1569.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlFrustum(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %3, i64 1
  %i.c = insertelement <2 x double> poison, double %0, i64 0
  %i.d = insertelement <2 x double> %i.c, double %2, i64 1
  %i.e = fsub <2 x double> %i.b, %i.d
  %i.f = fsub double %5, %4
  %i.g = fptrunc double %i.f to float             ; 2 uses
  %i.h = fptrunc double %4 to float               ; 3 uses
  %i.i = fptrunc double %1 to float
  %i.j = fptrunc double %0 to float
  %i.k = fptrunc double %3 to float
  %i.l = fptrunc double %2 to float
  %i.m = fptrunc <2 x double> %i.e to <2 x float>
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.o = fadd float %i.l, %i.k
  %i.p = fadd float %i.j, %i.i
  %i.q = fmul float %i.h, 2.000000e+00
  %i.r = insertelement <4 x float> poison, float %i.q, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.p, i64 2
  %i.t = insertelement <4 x float> %i.s, float %i.o, i64 3
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.v = fdiv <4 x float> %i.u, %i.n              ; 4 uses
  %i.w = fptrunc double %5 to float               ; 2 uses
  %i.x = fadd float %i.h, %i.w
  %i.y = fneg float %i.x
  %i.z = fdiv float %i.y, %i.g
  %i.aa = fmul float %i.h, %i.w
  %i.ab = fmul float %i.aa, -2.000000e+00
  %i.ac = fdiv float %i.ab, %i.g
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 5 uses
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.sroa.1161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %.sroa.1565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.ad, align 4    ; 3 uses
  %i.af = load <4 x float>, ptr %.sroa.757.0..sroa_idx, align 4 ; 2 uses
  %i.ag = load <4 x float>, ptr %.sroa.1161.0..sroa_idx, align 4 ; 4 uses
  %i.ah = load <4 x float>, ptr %.sroa.1565.0..sroa_idx, align 4 ; 4 uses
  %i.ai = fmul <4 x float> %i.af, zeroinitializer ; 2 uses
  %i.aj = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.aj, <4 x float> %i.ai)
  %i.al = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.al, <4 x float> %i.ak)
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> zeroinitializer, <4 x float> %i.am)
  store <4 x float> %i.an, ptr %i.ad, align 4
  %i.ao = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ap = fmul <4 x float> %i.ao, %i.af
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> zeroinitializer, <4 x float> %i.ap)
  %i.ar = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> zeroinitializer, <4 x float> %i.as)
  store <4 x float> %i.at, ptr %.sroa.757.0..sroa_idx, align 4
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> zeroinitializer, <4 x float> %i.ai) ; 2 uses
  %i.av = insertelement <4 x float> poison, float %i.z, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.aw, <4 x float> %i.au)
  %i.ay = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.az, <4 x float> %i.ax)
  store <4 x float> %i.ba, ptr %.sroa.1161.0..sroa_idx, align 4
  %i.bb = fsub <4 x float> %i.au, %i.ag
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> zeroinitializer, <4 x float> %i.bb)
  store <4 x float> %i.bc, ptr %.sroa.1565.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @rlOrtho(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = insertelement <4 x double> poison, double %1, i64 0
  %i.b = insertelement <4 x double> %i.a, double %3, i64 1
  %i.c = insertelement <4 x double> %i.b, double %5, i64 2
  %i.d = insertelement <4 x double> poison, double %0, i64 0
  %i.e = insertelement <4 x double> %i.d, double %2, i64 1
  %i.f = insertelement <4 x double> %i.e, double %4, i64 2
  %i.g = fsub <4 x double> %i.c, %i.f
  %i.h = shufflevector <4 x double> %i.g, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = fptrunc double %0 to float
  %i.j = fptrunc double %1 to float
  %i.k = fadd float %i.i, %i.j
  %i.l = fneg float %i.k
  %i.m = fptrunc <4 x double> %i.h to <4 x float> ; 2 uses
  %i.n = insertelement <4 x float> <float 2.000000e+00, float 2.000000e+00, float -2.000000e+00, float poison>, float %i.l, i64 3
  %i.o = fdiv <4 x float> %i.n, %i.m              ; 4 uses
  %i.p = insertelement <2 x double> poison, double %3, i64 0
  %i.q = insertelement <2 x double> %i.p, double %5, i64 1
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = insertelement <2 x double> poison, double %2, i64 0
  %i.t = insertelement <2 x double> %i.s, double %4, i64 1
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fadd <2 x float> %i.u, %i.r
  %i.w = fneg <2 x float> %i.v
  %i.x = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.y = fdiv <2 x float> %i.w, %i.x              ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @RLGL, i64 80), align 8 ; 5 uses
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.sroa.1157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %.sroa.1561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %i.aa = load <4 x float>, ptr %i.z, align 4     ; 3 uses
  %i.ab = load <4 x float>, ptr %.sroa.753.0..sroa_idx, align 4 ; 2 uses
  %i.ac = load <4 x float>, ptr %.sroa.1157.0..sroa_idx, align 4 ; 4 uses
  %i.ad = load <4 x float>, ptr %.sroa.1561.0..sroa_idx, align 4 ; 4 uses
  %i.ae = fmul <4 x float> %i.ab, zeroinitializer ; 2 uses
  %i.af = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.af, <4 x float> %i.ae)
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> zeroinitializer, <4 x float> %i.ag)
  %i.ai = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.ai, <4 x float> %i.ah)
  store <4 x float> %i.aj, ptr %i.z, align 4
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.al = fmul <4 x float> %i.ak, %i.ab
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> zeroinitializer, <4 x float> %i.al)
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> zeroinitializer, <4 x float> %i.am)
  %i.ao = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.ao, <4 x float> %i.an)
  store <4 x float> %i.ap, ptr %.sroa.753.0..sroa_idx, align 4
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> zeroinitializer, <4 x float> %i.ae) ; 2 uses
  %i.ar = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.at, <4 x float> %i.as)
  store <4 x float> %i.au, ptr %.sroa.1157.0..sroa_idx, align 4
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> zeroinitializer, <4 x float> %i.aq)
  %i.aw = fadd <4 x float> %i.av, %i.ad
  store <4 x float> %i.aw, ptr %.sroa.1561.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @rlViewport(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @glad_glViewport, align 8
  tail call void %i.a(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @rlSetClipPlanes(double noundef %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  store double %0, ptr @rlCullDistanceNear, align 8
  store double %1, ptr @rlCullDistanceFar, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define double @rlGetCullDistanceNear() local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr @rlCullDistanceNear, align 8
  ret double %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define double @rlGetCullDistanceFar() local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr @rlCullDistanceFar, align 8
  ret double %i.a
}

; Function Attrs: nounwind uwtable
define void @rlBegin(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RLGL, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not = icmp eq i32 %i.i, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.g, i64 -12
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  switch i32 %i.i, label %bb.f [
    i32 1, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
end_hunk_0
