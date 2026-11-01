Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOAnimation?download=true
inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver20UpdateAnimRangeSetupEv:bb.a
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15ExtractBindPoseER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6193.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8194.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0182.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.5183.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.o, %bb.f ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.8184.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.w, null
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load float, ptr %i.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0188.0 = phi float [ 0.000000e+00, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not14 = icmp eq ptr %i.ac, null
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5189.0 = phi float [ 0.000000e+00, %bb.k ], [ %i.ag, %bb.l ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not15 = icmp eq ptr %i.ai, null
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.8190.0 = phi float [ 0.000000e+00, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0185.0 = phi float [ 1.000000e+00, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not17 = icmp eq ptr %i.au, null
  br i1 %.not17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.5186.0 = phi float [ 1.000000e+00, %bb.q ], [ %i.ay, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not18 = icmp eq ptr %i.ba, null
  br i1 %.not18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.8187.0 = phi float [ 1.000000e+00, %bb.s ], [ %i.be, %bb.t ] ; 2 uses
  %i.bf = tail call noundef float @cosf(float noundef %.sroa.8190.0) #16 ; 2 uses
  %i.bg = tail call noundef float @sinf(float noundef %.sroa.8190.0) #16 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = tail call noundef float @cosf(float noundef %.sroa.5189.0) #16 ; 7 uses
  %i.bj = tail call noundef float @sinf(float noundef %.sroa.5189.0) #16 ; 6 uses
  %i.bk = fneg float %i.bj                        ; 2 uses
  %i.bl = tail call noundef float @cosf(float noundef %.sroa.0188.0) #16 ; 4 uses
  %i.bm = tail call noundef float @sinf(float noundef %.sroa.0188.0) #16 ; 4 uses
  %i.bn = fneg float %i.bm                        ; 2 uses
  %i.bo = fadd float %i.bl, 0.000000e+00
  %i.bp = fadd float %i.bm, 0.000000e+00
  %i.bq = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %.sroa.0182.0, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bl, i64 2
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.bo, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.bp, i64 2
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> zeroinitializer, <4 x float> %i.bv) ; 4 uses
  %i.bx = insertelement <4 x float> poison, float %.sroa.0182.0, i64 0 ; 2 uses
  %i.by = insertelement <4 x float> %i.bx, float %i.bn, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %.sroa.5183.0, i64 3
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cb = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 2, i32 3, i32 7>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> zeroinitializer, <4 x float> %i.cb) ; 9 uses
  %i.cd = extractelement <4 x float> %i.bw, i64 1
  %i.ce = fmul float %i.cd, %i.bi
  %i.cf = extractelement <4 x float> %i.cc, i64 3
  %i.cg = fmul float %i.cf, %i.bi
  %i.ch = extractelement <4 x float> %i.cc, i64 2
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bm, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.cj = fadd float %i.bl, %i.ci
  %i.ck = shufflevector <4 x float> %i.bw, <4 x float> %i.cc, <4 x i32> <i32 poison, i32 3, i32 poison, i32 6>
  %i.cl = insertelement <4 x float> %i.ck, float %i.cj, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.bm, i64 1
  %i.co = fsub <4 x float> %i.cm, %i.cn
  %i.cp = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sroa.8184.0, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.bl, i64 2
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> zeroinitializer, <4 x float> %i.co) ; 6 uses
  %i.ct = extractelement <4 x float> %i.cs, i64 2
  %i.cu = tail call float @llvm.fmuladd.f32(float %.sroa.8184.0, float 0.000000e+00, float 0.000000e+00) ; 3 uses
  %i.cv = fadd <4 x float> %i.cs, <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 6 uses
  %i.cw = fmul float %i.cu, %i.bk
  %i.cx = extractelement <4 x float> %i.cs, i64 1 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %i.cw)
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.cu, i64 1
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.dc = insertelement <4 x float> %i.db, float %i.bi, i64 3
  %i.dd = fmul <4 x float> %i.dc, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %foldExtExtBinop = fadd <4 x float> %i.dd, %i.cs
  %i.de = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.df = extractelement <4 x float> %i.cs, i64 0
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float 0.000000e+00, float %i.de)
  %i.dh = fmul float %i.cu, %i.bi
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %i.dh)
  %2 = extractelement <4 x float> %i.cv, i64 0
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.bj, float %2, float %i.di)
  %i.dk = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bi, i64 0
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.cv, <4 x float> %i.dd) ; 2 uses
  %i.dm = extractelement <4 x float> %i.dl, i64 2
  %i.dn = fadd float %i.dm, 0.000000e+00
  %i.do = extractelement <4 x float> %i.cv, i64 2 ; 2 uses
  %i.dp = extractelement <4 x float> %i.cv, i64 3
  %i.dq = fmul float %i.bj, -0.000000e+00
  %i.dr = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bj, i64 3
  %i.ds = shufflevector <4 x float> %i.cs, <4 x float> %i.cv, <4 x i32> <i32 poison, i32 0, i32 7, i32 6>
  %i.dt = insertelement <4 x float> %i.dl, float %i.dq, i64 2
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dp, float 0.000000e+00, float 0.000000e+00)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.do, float 0.000000e+00, float %i.du)
  %i.dw = insertelement <3 x float> <float 0.000000e+00, float poison, float poison>, float %i.bg, i64 1
  %i.dx = insertelement <3 x float> %i.dw, float %i.bf, i64 2 ; 4 uses
  %i.dy = insertelement <3 x float> <float 0.000000e+00, float poison, float poison>, float %i.bf, i64 1
  %i.dz = insertelement <3 x float> %i.dy, float %i.bh, i64 2 ; 4 uses
  %i.ea = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %.sroa.5186.0, i64 1 ; 3 uses
  %i.eb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0185.0, i64 0 ; 3 uses
  %i.ec = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.8187.0, i64 2 ; 3 uses
  %.sroa.15100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.27104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ed = insertelement <3 x float> poison, float %i.dn, i64 0
  %i.ee = shufflevector <3 x float> %i.ed, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ef = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.5186.0, i64 1
  %i.eg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.0185.0, i64 0
  %i.eh = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.ei = shufflevector <4 x float> %i.bw, <4 x float> %i.cc, <2 x i32> <i32 1, i32 7> ; 2 uses
  %i.ej = fmul <2 x float> %i.ei, zeroinitializer ; 3 uses
  %i.ek = extractelement <2 x float> %i.ej, i64 0
  %i.el = fadd float %i.ek, %i.eh
  %i.em = extractelement <4 x float> %i.cc, i64 1 ; 2 uses
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float 0.000000e+00, float %i.el)
  %i.eo = insertelement <4 x float> %i.bx, float %.sroa.5183.0, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %.sroa.8184.0, i64 2
  %i.eq = insertelement <4 x float> %i.ep, float %i.dv, i64 3
  %i.er = fadd <4 x float> %i.eq, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 7 uses
  %i.es = extractelement <4 x float> %i.er, i64 0 ; 2 uses
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float 0.000000e+00, float %i.en)
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.eh, float 0.000000e+00, float %i.ce)
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.em, float %i.eu)
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.es, float 0.000000e+00, float %i.ev)
  %i.ex = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ei, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %.sroa.5183.0, float 0.000000e+00, float %i.ch) ; 3 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %.sroa.5183.0, float 0.000000e+00, float %i.ct) ; 4 uses
  %i.fc = extractelement <2 x float> %i.ej, i64 1
  %i.fd = fadd float %i.fc, %i.fa
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fb, float 0.000000e+00, float %i.fd)
  %i.ff = extractelement <4 x float> %i.er, i64 1 ; 2 uses
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float 0.000000e+00, float %i.fe)
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fa, float 0.000000e+00, float %i.cg)
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.fb, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ff, float 0.000000e+00, float %i.fi)
  %i.fk = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fl = insertelement <2 x float> %i.fk, float %i.fa, i64 1 ; 2 uses
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> zeroinitializer, <2 x float> %i.ez)
  %i.fn = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fq = insertelement <2 x float> %i.fp, float %i.fb, i64 1
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fq, <2 x float> %i.fm)
  %i.fs = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> zeroinitializer, <2 x float> %i.fr) ; 3 uses
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> zeroinitializer, <2 x float> %i.ej)
  %i.fv = extractelement <4 x float> %i.er, i64 2 ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float 0.000000e+00, float %i.dg)
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fv, float 0.000000e+00, float %i.dj)
  %i.fy = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> %i.ds, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.fz, <4 x float> %i.dt) ; 5 uses
  %i.gb = extractelement <4 x float> %i.ga, i64 3
  %i.gc = fadd float %i.gb, 0.000000e+00
  %i.gd = extractelement <4 x float> %i.ga, i64 2
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.do, float %i.gd)
  %i.gf = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 1, i32 poison, i32 6, i32 poison>
  %i.gg = insertelement <4 x float> %i.gf, float %i.fb, i64 1
  %i.gh = insertelement <4 x float> %i.gg, float %i.ge, i64 3
  %i.gi = fadd <4 x float> %i.gh, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.gj = insertelement <3 x float> poison, float %i.ew, i64 0
  %i.gk = shufflevector <3 x float> %i.gj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gl = fmul <3 x float> %i.dx, %i.gk
  %i.gm = insertelement <3 x float> poison, float %i.et, i64 0
  %i.gn = shufflevector <3 x float> %i.gm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.go = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dz, <3 x float> %i.gn, <3 x float> %i.gl) ; 2 uses
  %i.gp = shufflevector <2 x float> %i.ft, <2 x float> poison, <3 x i32> zeroinitializer
  %i.gq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gp, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %i.go)
  %i.gr = insertelement <3 x float> poison, float %i.gc, i64 0
  %i.gs = shufflevector <3 x float> %i.gr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gt = fmul <3 x float> %i.dx, %i.gs
  %i.gu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dz, <3 x float> %i.ee, <3 x float> %i.gt) ; 2 uses
  %i.gv = shufflevector <3 x float> %i.gu, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <4 x float> %i.ga, <4 x float> %i.gv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 4>
  %i.gx = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> %i.gw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> zeroinitializer, <4 x float> %i.gy)
  %i.ha = fadd <4 x float> %i.er, %i.gz           ; 6 uses
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> poison, <3 x i32> zeroinitializer
  %i.hc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hb, <3 x float> zeroinitializer, <3 x float> %i.gq) ; 3 uses
  %i.hd = shufflevector <3 x float> %i.hc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.he = fmul <4 x float> %i.ea, %i.hd
  %i.hf = shufflevector <3 x float> %i.hc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.hf, <4 x float> %i.he)
  %i.hh = shufflevector <3 x float> %i.hc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.hi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.hh, <4 x float> %i.hg)
  %i.hj = insertelement <3 x float> poison, float %i.fj, i64 0
  %i.hk = shufflevector <3 x float> %i.hj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hl = fmul <3 x float> %i.dx, %i.hk
  %i.hm = insertelement <3 x float> poison, float %i.fg, i64 0
  %i.hn = shufflevector <3 x float> %i.hm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ho = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dz, <3 x float> %i.hn, <3 x float> %i.hl) ; 2 uses
  %i.hp = insertelement <3 x float> poison, float %i.fx, i64 0
  %i.hq = shufflevector <3 x float> %i.hp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hr = fmul <3 x float> %i.dx, %i.hq
  %i.hs = insertelement <3 x float> poison, float %i.fw, i64 0
  %i.ht = shufflevector <3 x float> %i.hs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dz, <3 x float> %i.ht, <3 x float> %i.hr) ; 2 uses
  %i.hv = extractelement <3 x float> %i.hu, i64 0
  %i.hw = shufflevector <4 x float> %i.gi, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.hx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hw, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %i.gu)
  %i.hy = shufflevector <4 x float> %i.er, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.hz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hy, <3 x float> zeroinitializer, <3 x float> %i.hx) ; 6 uses
  %i.ia = shufflevector <3 x float> %i.hz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ib = fmul <2 x float> %i.ef, %i.ia           ; 2 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = extractelement <3 x float> %i.hz, i64 1
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float 0.000000e+00, float %i.ic) ; 2 uses
  %i.if = extractelement <3 x float> %i.hz, i64 0
  %i.ig = shufflevector <3 x float> %i.hz, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ih = shufflevector <4 x float> %i.ga, <4 x float> %i.ig, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.ii = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> %i.ih, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ik = shufflevector <3 x float> %i.go, <3 x float> %i.ho, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.il = insertelement <4 x float> %i.ik, float %i.hv, i64 2
  %i.im = insertelement <4 x float> %i.il, float %i.ie, i64 3
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> zeroinitializer, <4 x float> %i.im)
  %i.io = fadd <4 x float> %i.ha, %i.in           ; 4 uses
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hi)
  store <4 x float> %i.iq, ptr %1, align 4
  %i.ir = shufflevector <2 x float> %i.ft, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.is = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ir, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %i.ho)
  %i.it = shufflevector <4 x float> %i.ha, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.iu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.it, <3 x float> zeroinitializer, <3 x float> %i.is) ; 3 uses
  %i.iv = shufflevector <3 x float> %i.iu, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iw = fmul <4 x float> %i.ea, %i.iv
  %i.ix = shufflevector <3 x float> %i.iu, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.ix, <4 x float> %i.iw)
  %i.iz = shufflevector <3 x float> %i.iu, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ja = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.iz, <4 x float> %i.iy)
  %i.jb = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jb, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ja)
  store <4 x float> %i.jc, ptr %.sroa.15100.0..sroa_idx, align 4
  %i.jd = shufflevector <4 x float> %i.ga, <4 x float> poison, <3 x i32> zeroinitializer
  %i.je = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jd, <3 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, <3 x float> %i.hu)
  %i.jf = shufflevector <4 x float> %i.ha, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.jg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jf, <3 x float> zeroinitializer, <3 x float> %i.je) ; 3 uses
  %i.jh = shufflevector <3 x float> %i.jg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ji = fmul <4 x float> %i.ea, %i.jh
  %i.jj = shufflevector <3 x float> %i.jg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.jj, <4 x float> %i.ji)
  %i.jl = shufflevector <3 x float> %i.jg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.jm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.jl, <4 x float> %i.jk)
  %i.jn = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jm)
  store <4 x float> %i.jo, ptr %.sroa.27104.0..sroa_idx, align 4
  %i.jp = shufflevector <3 x float> %i.hz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.jp, <2 x float> %i.ib)
  %i.jr = shufflevector <3 x float> %i.hz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.js = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> zeroinitializer, <2 x float> %i.jq)
  %i.jt = shufflevector <4 x float> %i.ha, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> zeroinitializer, <2 x float> %i.js)
  %i.jv = tail call float @llvm.fmuladd.f32(float %.sroa.8187.0, float %i.if, float %i.ie)
  %i.jw = extractelement <4 x float> %i.ha, i64 3
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jw, float 0.000000e+00, float %i.jv)
  store <2 x float> %i.ju, ptr %.sroa.39108.0..sroa_idx, align 4
  %.sroa.45110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.jx, ptr %.sroa.45110.0..sroa_idx, align 4
  %i.jy = extractelement <4 x float> %i.io, i64 3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.sink = phi float [ %i.jy, %bb.u ], [ 1.000000e+00, %bb.b ]
  %.sroa.48111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sink, ptr %.sroa.48111.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 40
end_hunk_0
