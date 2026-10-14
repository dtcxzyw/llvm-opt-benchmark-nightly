Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/csputils?download=true
inline.NumInlined: 44
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_sws_rgb2xyz:.preheader.preheader
  %i.bn = insertelement <2 x i32> %i.bm, i32 %.sroa.0.0.extract.trunc.i47, i64 1
  %i.bo = sitofp <2 x i32> %i.bn to <2 x double>
  %i.bp = sitofp <2 x i32> %i.bl to <2 x double>
  %i.bq = fdiv nsz <2 x double> %i.bo, %i.bp
  %i.br = fptrunc <2 x double> %i.bq to <2 x float> ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1
  %i.bt = fpext nsz float %i.bs to double         ; 4 uses
  %i.bu = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.bv = insertelement <2 x i64> %i.bu, i64 %i.x, i64 1 ; 2 uses
  %i.bw = trunc <2 x i64> %i.bv to <2 x i32>
  %i.bx = lshr <2 x i64> %i.bv, splat (i64 32)
  %i.by = trunc nuw <2 x i64> %i.bx to <2 x i32>
  %i.bz = sitofp <2 x i32> %i.bw to <2 x double>
  %i.ca = sitofp <2 x i32> %i.by to <2 x double>
  %i.cb = fdiv nsz <2 x double> %i.bz, %i.ca
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float> ; 2 uses
  %i.cd = fpext <2 x float> %i.cc to <2 x double> ; 6 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = extractelement <2 x double> %i.cd, i64 1
  %i.cg = fsub nsz double %i.ce, %i.bt
  %i.ch = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %i.bt, i64 1
  %i.cj = fsub nsz <2 x double> %i.ci, %i.cd      ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = fneg nsz <2 x double> %i.bf             ; 2 uses
  %i.cm = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fmul nsz <2 x double> %i.cn, %i.cl
  %shift = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %shift, %i.cd
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cq = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.cf, double %i.cp)
  %i.cr = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cd, <2 x double> %i.co) ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0
  %i.cv = fneg nsz double %i.cu
  %i.cw = fneg nsz double %i.cq                   ; 2 uses
  %i.cx = tail call nsz double @llvm.fmuladd.f64(double %i.av, double %i.ck, double %i.cw)
  %i.cy = insertelement <2 x double> %i.ct, double %i.cw, i64 0
  %i.cz = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x double> %i.db, double %i.av, i64 1
  %i.dd = fsub nsz <2 x double> %i.bf, %i.dc      ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.bt, double %i.de, double %i.cx)
  %i.dg = fdiv nsz double 1.000000e+00, %i.df     ; 4 uses
  %i.dh = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dj = fmul nsz <2 x double> %i.cj, %i.di
  %i.dk = fptrunc <2 x double> %i.dj to <2 x float>
  %i.dl = fmul nsz <2 x double> %i.di, %i.cy
  %i.dm = fptrunc <2 x double> %i.dl to <2 x float>
  %i.dn = fmul nsz <2 x double> %i.dd, %i.di
  %i.do = fptrunc <2 x double> %i.dn to <2 x float>
  %i.dp = fmul nsz double %i.cg, %i.dg
  %i.dq = fptrunc nsz double %i.dp to float
  %i.dr = fmul nsz double %i.dg, %i.cv
  %i.ds = fptrunc nsz double %i.dr to float
  %i.dt = fmul nsz double %i.bh, %i.dg
  %i.du = fptrunc nsz double %i.dt to float
  %i.dv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.da, <2 x float> %i.dm)
  %i.dw = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dw, <2 x float> %i.dv) ; 4 uses
  %i.dy = tail call nsz float @llvm.fmuladd.f32(float %i.dq, float %i.ar, float %i.ds)
  %i.dz = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.ea = fmul nsz float %i.dz, %i.ap
  store float %i.ea, ptr %0, align 4, !tbaa !10
  store float %i.dz, ptr %i.ab, align 4, !tbaa !10
  %i.eb = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> %i.dx, <2 x i32> <i32 0, i32 2>
  %i.ed = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.dy, i64 0
  %i.ee = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.br, <2 x float> %i.ed) ; 3 uses
  %i.ef = extractelement <2 x float> %i.be, i64 0
  %i.eg = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.eh = fmul nsz float %i.eg, %i.ef
  store float %i.eh, ptr %.sroa.572.0..sroa_idx, align 4, !tbaa !10
  store float %i.eg, ptr %i.ac, align 4, !tbaa !10
  %shift75 = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop76 = fmul nsz <2 x float> %i.ee, %shift75
  %i.ei = extractelement <2 x float> %foldExtExtBinop76, i64 0
  store float %i.ei, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !10
  store <2 x float> %i.ee, ptr %i.ae, align 4, !tbaa !10
  %i.ej = shufflevector <2 x float> %i.dx, <2 x float> %i.ee, <2 x i32> <i32 1, i32 2>
  %i.ek = fmul nsz <2 x float> %i.ej, %i.cc
  store <2 x float> %i.ek, ptr %i.ad, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_xyz2rgb(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @ff_sws_rgb2xyz(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4 %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = fpext nsz float %i.b to double           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = fpext nsz float %i.h to double           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = fpext nsz float %i.k to double           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = fneg nsz double %i.i                     ; 2 uses
  %i.p = fneg nsz double %i.c                     ; 2 uses
  %i.q = fmul nsz double %i.p, %i.l
  %i.r = load <2 x float>, ptr %i.d, align 4, !tbaa !10
  %i.s = load <4 x float>, ptr %0, align 4, !tbaa !10
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.u = fpext <2 x float> %i.t to <2 x double>   ; 5 uses
  %i.v = fpext nsz float %i.f to double           ; 3 uses
  %i.w = insertelement <2 x float> %i.r, float %i.f, i64 1
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !10
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 4 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = extractelement <2 x double> %i.z, i64 0 ; 3 uses
  %i.ac = fmul nsz double %i.ab, %i.o
  %i.ad = fneg nsz <2 x double> %i.x              ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.af = fmul nsz double %i.ae, %i.ab
  %i.ag = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %i.ag, double %i.af)
  %i.ai = fmul nsz double %i.ae, %i.v
  %i.aj = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.ak = extractelement <2 x double> %i.u, i64 0 ; 3 uses
  %i.al = insertelement <2 x double> poison, double %i.l, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul nsz <2 x double> %i.am, %i.ad
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %i.ak, double %i.ab, double %i.q)
  %i.ap = fmul nsz double %i.aj, %i.p
  %i.aq = tail call nsz double @llvm.fmuladd.f64(double %i.ak, double %i.v, double %i.ap)
  %i.ar = tail call nsz double @llvm.fmuladd.f64(double %i.v, double %i.ag, double %i.ac) ; 2 uses
  %i.as = fneg nsz double %i.ah                   ; 2 uses
  %i.at = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %i.i, double %i.ai) ; 2 uses
  %i.au = fmul nsz double %i.aj, %i.as
  %i.av = tail call nsz double @llvm.fmuladd.f64(double %i.ak, double %i.ar, double %i.au)
  %i.aw = tail call nsz double @llvm.fmuladd.f64(double %i.l, double %i.at, double %i.av)
  %i.ax = fdiv nsz double 1.000000e+00, %i.aw     ; 2 uses
  %i.ay = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.az = insertelement <4 x double> %i.ay, double %i.as, i64 1
  %i.ba = insertelement <4 x double> %i.az, double %i.at, i64 2
  %i.bb = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = insertelement <2 x double> %i.ad, double %i.o, i64 1
  %i.be = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x double> %i.be, double %i.l, i64 1
  %i.bg = fmul nsz <2 x double> %i.bd, %i.bf
  %i.bh = insertelement <2 x double> %i.z, double %i.i, i64 0
  %i.bi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.bh, <2 x double> %i.bg)
  %i.bj = fneg nsz <2 x double> %i.bi             ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x double> %i.ba, <4 x double> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bm = fmul nsz <4 x double> %i.bl, %i.bc
  %i.bn = fptrunc <4 x double> %i.bm to <4 x float>
  store <4 x float> %i.bn, ptr %0, align 4, !tbaa !10
  %i.bo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.aa, <2 x double> %i.an)
  %i.bp = fneg nsz double %i.ao
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bj, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.br = insertelement <4 x double> %i.bq, double %i.bp, i64 3
  %i.bs = fmul nsz <4 x double> %i.br, %i.bc
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  store <4 x float> %i.bt, ptr %i.e, align 4, !tbaa !10
  %i.bu = fmul nsz double %i.aq, %i.ax
  %i.bv = fptrunc nsz double %i.bu to float
  store float %i.bv, ptr %i.n, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_get_adaptation(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.AVColorPrimariesDesc, align 8 ; 7 uses
  %7 = alloca %struct.SwsMatrix3x3, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i64 %2, ptr %6, align 8, !tbaa !12
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @ff_sws_rgb2xyz(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %7, ptr noundef nonnull %6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load <3 x float>, ptr %7, align 16       ; 3 uses
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %8 = load <1 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.j = load <3 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %9 = load <1 x float>, ptr %.sroa.15.0..sroa_idx, align 16
  %i.l = load <3 x float>, ptr %.sroa.21.0..sroa_idx, align 8 ; 3 uses
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @ff_sws_xyz2rgb(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %0, ptr noundef nonnull %6)
  tail call fastcc void @apply_chromatic_adaptation(i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull %0)
  %i.n = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.o = load float, ptr %i.b, align 4, !tbaa !10
  %i.p = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.r = shufflevector <4 x float> %i.n, <4 x float> %i.q, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.s = fmul nsz <4 x float> %i.k, %i.r
  %i.t = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.u = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.i, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.n, <4 x float> %i.q, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.m, <4 x float> %i.u)
  store <4 x float> %i.w, ptr %0, align 4, !tbaa !10
  %i.x = extractelement <3 x float> %i.j, i64 2
  %i.y = extractelement <3 x float> %i.h, i64 2
  %i.z = extractelement <3 x float> %i.l, i64 2
  %i.aa = load <4 x float>, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.ab = load float, ptr %i.g, align 4, !tbaa !10
  %i.ac = load float, ptr %i.f, align 4, !tbaa !10
  %i.ad = load float, ptr %i.e, align 4, !tbaa !10
  %i.ae = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.af = shufflevector <1 x float> %9, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> %i.ae, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ai = shufflevector <2 x float> %i.p, <2 x float> %i.ah, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.aj = fmul nsz <4 x float> %i.ag, %i.ai
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.al = insertelement <2 x float> %i.ak, float %i.o, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.an = shufflevector <3 x float> %i.h, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ao = shufflevector <1 x float> %8, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> %i.an, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.ap, <4 x float> %i.aj)
  %i.ar = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.as = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.at = insertelement <4 x float> poison, float %.sroa.24.0.copyload, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.as, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ar, <4 x float> %i.av, <4 x float> %i.aq)
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ax, ptr %i.c, align 4, !tbaa !10
  %i.ay = fmul nsz float %i.x, %i.ac
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.y, float %i.ay)
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.z, float %i.az)
  store float %i.ba, ptr %i.g, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @apply_chromatic_adaptation(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef captures(none) %4) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @av_div_q(i64 %0, i64 %1) #7
  %i.b = tail call i64 @av_sub_q(i64 4294967297, i64 %0) #7
  %i.c = tail call i64 @av_sub_q(i64 %i.b, i64 %1) #7
  %i.d = tail call i64 @av_div_q(i64 %i.c, i64 %1) #7
  %i.e = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.f = insertelement <2 x i64> %i.e, i64 %i.d, i64 1 ; 2 uses
  %i.g = trunc <2 x i64> %i.f to <2 x i32>
  %i.h = lshr <2 x i64> %i.f, splat (i64 32)
  %i.i = trunc nuw <2 x i64> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.g to <2 x double>
  %i.k = sitofp <2 x i32> %i.i to <2 x double>
  %i.l = fdiv nsz <2 x double> %i.j, %i.k
  %i.m = fptrunc <2 x double> %i.l to <2 x float> ; 2 uses
  %i.n = tail call i64 @av_div_q(i64 %2, i64 %3) #7
  %i.o = tail call i64 @av_sub_q(i64 4294967297, i64 %2) #7
  %i.p = tail call i64 @av_sub_q(i64 %i.o, i64 %3) #7
  %i.q = tail call i64 @av_div_q(i64 %i.p, i64 %3) #7
  %i.r = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %i.s = insertelement <2 x i64> %i.r, i64 %i.q, i64 1 ; 2 uses
  %i.t = trunc <2 x i64> %i.s to <2 x i32>
  %i.u = lshr <2 x i64> %i.s, splat (i64 32)
  %i.v = trunc nuw <2 x i64> %i.u to <2 x i32>
  %i.w = sitofp <2 x i32> %i.t to <2 x double>
  %i.x = sitofp <2 x i32> %i.v to <2 x double>
  %i.y = fdiv nsz <2 x double> %i.w, %i.x
  %i.z = fptrunc <2 x double> %i.y to <2 x float> ; 2 uses
  %.not1.i.not.i.i = icmp eq i64 %0, 0
  %.not1.i6.not.i.i = icmp eq i64 %2, 0
  %or.cond.i.i = select i1 %.not1.i.not.i.i, i1 %.not1.i6.not.i.i, i1 false
  br i1 %or.cond.i.i, label %ff_q_equal.exit.thread17.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.011.0.extract.trunc.i.i.i = trunc i64 %0 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %2 to i32 ; 2 uses
  %sext.i.i.i = shl i64 %0, 32
  %i.aa = ashr exact i64 %sext.i.i.i, 32
  %i.ab = ashr i64 %2, 32
  %i.ac = mul nsw i64 %i.ab, %i.aa
  %sext20.i.i.i = shl i64 %2, 32
  %i.ad = ashr exact i64 %sext20.i.i.i, 32
  %i.ae = ashr i64 %0, 32
  %i.af = mul nsw i64 %i.ad, %i.ae
  %.not.i.i.i = icmp eq i64 %i.ac, %i.af
  br i1 %.not.i.i.i, label %bb.c, label %.preheader46

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp ugt i64 %2, 4294967295
  %i.ah = icmp ugt i64 %0, 4294967295
  %or.cond.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i.i, label %ff_q_equal.exit.thread17.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i32 %.sroa.011.0.extract.trunc.i.i.i, 0
  %i.aj = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i, 0
  %or.cond5.i.i.not20.i = or i1 %i.ai, %i.aj
  %.unshifted.i.i = xor i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.011.0.extract.trunc.i.i.i
  %i.ak = icmp slt i32 %.unshifted.i.i, 0
  %or.cond.i = or i1 %or.cond5.i.i.not20.i, %i.ak
  br i1 %or.cond.i, label %.preheader46, label %ff_q_equal.exit.thread17.i

ff_q_equal.exit.thread17.i:                       ; preds = %bb.d, %bb.c, %bb.a
  %.not1.i.not.i3.i = icmp eq i64 %1, 0
  %.not1.i6.not.i4.i = icmp eq i64 %3, 0
  %or.cond.i5.i = select i1 %.not1.i.not.i3.i, i1 %.not1.i6.not.i4.i, i1 false
  br i1 %or.cond.i5.i, label %ff_cie_xy_equal.exit.thread, label %bb.e

bb.e:                                             ; preds = %ff_q_equal.exit.thread17.i
  %.sroa.011.0.extract.trunc.i.i6.i = trunc i64 %1 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i7.i = trunc i64 %3 to i32 ; 2 uses
  %sext.i.i8.i = shl i64 %1, 32
  %i.al = ashr exact i64 %sext.i.i8.i, 32
  %i.am = ashr i64 %3, 32
  %i.an = mul nsw i64 %i.am, %i.al
  %sext20.i.i9.i = shl i64 %3, 32
  %i.ao = ashr exact i64 %sext20.i.i9.i, 32
  %i.ap = ashr i64 %1, 32
  %i.aq = mul nsw i64 %i.ao, %i.ap
  %.not.i.i10.i = icmp eq i64 %i.an, %i.aq
  br i1 %.not.i.i10.i, label %bb.f, label %.preheader46

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp ugt i64 %3, 4294967295
  %i.as = icmp ugt i64 %1, 4294967295
  %or.cond.i.i11.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i.i11.i, label %ff_cie_xy_equal.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %.sroa.011.0.extract.trunc.i.i6.i, 0
  %i.au = icmp eq i32 %.sroa.0.0.extract.trunc.i.i7.i, 0
  %or.cond5.i.i12.i.not50 = or i1 %i.at, %i.au
  %.unshifted.i13.i = xor i32 %.sroa.0.0.extract.trunc.i.i7.i, %.sroa.011.0.extract.trunc.i.i6.i
  %i.av = icmp slt i32 %.unshifted.i13.i, 0
  %or.cond = or i1 %or.cond5.i.i12.i.not50, %i.av
  br i1 %or.cond, label %.preheader46, label %ff_cie_xy_equal.exit.thread

.preheader46:                                     ; preds = %bb.b, %bb.e, %bb.g, %bb.d
  %i.aw = shufflevector <2 x float> %i.m, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ax = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aw, <3 x float> <float -2.079000e-03, float 4.012880e-01, float -2.502680e-01>, <3 x float> <float 4.895200e-02, float 6.501730e-01, float f0x3F9A2A3D>)
  %i.ay = shufflevector <2 x float> %i.z, <2 x float> poison, <3 x i32> zeroinitializer
  %i.az = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ay, <3 x float> <float -2.079000e-03, float 4.012880e-01, float -2.502680e-01>, <3 x float> <float 4.895200e-02, float 6.501730e-01, float f0x3F9A2A3D>)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10 ; 3 uses
  %i.bh = fmul nsz float %i.be, 3.875270e-01
  %i.bi = fmul nsz float %i.be, 6.214470e-01
  %i.bj = fmul nsz float %i.be, -8.974000e-03
  %i.bk = shufflevector <2 x float> %i.m, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bl = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> <float 9.531270e-01, float -5.146100e-02, float 4.585400e-02>, <3 x float> %i.ax)
  %i.bm = shufflevector <2 x float> %i.z, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.bn = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> <float 9.531270e-01, float -5.146100e-02, float 4.585400e-02>, <3 x float> %i.az)
  %i.bo = fdiv nsz <3 x float> %i.bn, %i.bl       ; 3 uses
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bq = fmul nsz <4 x float> %i.bp, <float 4.012880e-01, float 6.501730e-01, float -5.146100e-02, float 4.012880e-01> ; 3 uses
  %i.br = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bs = fmul nsz <4 x float> %i.br, <float -2.502680e-01, float f0x3F9A2A3D, float 4.585400e-02, float -2.502680e-01> ; 3 uses
  %i.bt = shufflevector <3 x float> %i.bo, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bu = fmul nsz <4 x float> %i.bt, <float -2.079000e-03, float 4.895200e-02, float 9.531270e-01, float -2.079000e-03> ; 3 uses
  %i.bv = load <4 x float>, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.ba, align 4, !tbaa !10 ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> %i.by, <2 x i32> <i32 1, i32 4> ; 3 uses
  %i.ca = fmul nsz <2 x float> %i.bz, splat (float 3.875270e-01)
  %i.cb = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.cc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> splat (float f0x3FEE583F), <2 x float> %i.ca)
  %i.cd = shufflevector <2 x float> %i.bx, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> splat (float -1.584100e-02), <2 x float> %i.cc) ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cg = fmul nsz <2 x float> %i.bz, splat (float 6.214470e-01)
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> splat (float f0xBF8170CE), <2 x float> %i.cg)
  %i.ci = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> splat (float -3.412300e-02), <2 x float> %i.ch) ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = fmul nsz <2 x float> %i.bz, splat (float -8.974000e-03)
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> splat (float 1.491870e-01), <2 x float> %i.ck)
  %i.cm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> splat (float f0x3F866538), <2 x float> %i.cl) ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = fmul nsz <4 x float> %i.bs, %i.cj
  %i.cp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.bq, <4 x float> %i.co)
  %i.cq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.bu, <4 x float> %i.cp)
  store <4 x float> %i.cq, ptr %4, align 4, !tbaa !10
  %i.cr = extractelement <4 x float> %i.bs, i64 2
  %i.cs = extractelement <4 x float> %i.bq, i64 2
  %i.ct = extractelement <4 x float> %i.bu, i64 2
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float f0x3FEE583F, float %i.bh)
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float -1.584100e-02, float %i.cu) ; 2 uses
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float f0xBF8170CE, float %i.bi)
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float -3.412300e-02, float %i.cw) ; 2 uses
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float 1.491870e-01, float %i.bj)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float f0x3F866538, float %i.cy) ; 2 uses
  %i.da = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.db = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = insertelement <2 x float> %i.db, float %i.cx, i64 1
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = fmul nsz <4 x float> %i.da, %i.dd
  %i.df = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.cv, i64 1
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.di, <4 x float> %i.de)
  %i.dk = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dl = insertelement <2 x float> %i.dk, float %i.cz, i64 1
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dn = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dn, <4 x float> %i.dj)
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.dp, ptr %i.ba, align 4, !tbaa !10
  %i.dq = fmul nsz float %i.cr, %i.cx
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cs, float %i.dq)
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.ct, float %i.dr)
  store float %i.ds, ptr %i.bf, align 4, !tbaa !10
  br label %ff_cie_xy_equal.exit.thread

ff_cie_xy_equal.exit.thread:                      ; preds = %bb.g, %bb.f, %ff_q_equal.exit.thread17.i, %.preheader46
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_ipt_rgb2lms(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.SwsMatrix3x3, align 16      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store <4 x float> <float f0x3EB7E4F9, float f0x3F32963B, float f0xBD1296DC, float f0xBE44CC83>, ptr %0, align 4, !tbaa !10
  store <4 x float> <float f0x3F8CD9DB, float f0x3D9AB4EC, float f0x3BE3FC94, float f0x3D996DFA>, ptr %i.b, align 4, !tbaa !10
  store float f0x3F57E64F, ptr %i.f, align 4, !tbaa !10
  %i.g = load i64, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 4
  tail call fastcc void @apply_chromatic_adaptation(i64 %i.g, i64 %i.i, i64 42949672963127, i64 42949672963290, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @ff_sws_rgb2xyz(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %2, ptr noundef nonnull %1)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.j = load <3 x float>, ptr %2, align 16       ; 3 uses
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %3 = load <1 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.l = load <3 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %4 = load <1 x float>, ptr %.sroa.15.0..sroa_idx, align 16
  %i.n = load <3 x float>, ptr %.sroa.21.0..sroa_idx, align 8 ; 3 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.p = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.q = load float, ptr %i.a, align 4, !tbaa !10
  %i.r = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x float> %i.p, <4 x float> %i.s, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.u = fmul nsz <4 x float> %i.m, %i.t
  %i.v = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.k, <4 x float> %i.u)
  %i.x = shufflevector <4 x float> %i.p, <4 x float> %i.s, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.y = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.o, <4 x float> %i.w)
  store <4 x float> %i.y, ptr %0, align 4, !tbaa !10
  %i.z = extractelement <3 x float> %i.l, i64 2
  %i.aa = extractelement <3 x float> %i.j, i64 2
  %i.ab = extractelement <3 x float> %i.n, i64 2
  %i.ac = load <4 x float>, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.ad = load float, ptr %i.f, align 4, !tbaa !10
  %i.ae = load float, ptr %i.e, align 4, !tbaa !10
  %i.af = load float, ptr %i.d, align 4, !tbaa !10
  %i.ag = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ah = shufflevector <1 x float> %4, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.ag, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.aj = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ak = shufflevector <2 x float> %i.r, <2 x float> %i.aj, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.al = fmul nsz <4 x float> %i.ai, %i.ak
  %i.am = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.an = insertelement <2 x float> %i.am, float %i.q, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ap = shufflevector <3 x float> %i.j, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.aq = shufflevector <1 x float> %3, <1 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.as = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.ar, <4 x float> %i.al)
  %i.at = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.au = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.av = insertelement <4 x float> poison, float %.sroa.24.0.copyload, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.au, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ay = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.ax, <4 x float> %i.as)
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.az, ptr %i.b, align 4, !tbaa !10
  %i.ba = fmul nsz float %i.z, %i.ae
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.aa, float %i.ba)
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ab, float %i.bb)
  store float %i.bc, ptr %i.f, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_ipt_lms2rgb(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @ff_sws_ipt_rgb2lms(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4 %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = fpext nsz float %i.b to double           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = fpext nsz float %i.h to double           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = fpext nsz float %i.k to double           ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = fneg nsz double %i.i                     ; 2 uses
  %i.p = fneg nsz double %i.c                     ; 2 uses
  %i.q = fmul nsz double %i.p, %i.l
  %i.r = load <2 x float>, ptr %i.d, align 4, !tbaa !10
  %i.s = load <4 x float>, ptr %0, align 4, !tbaa !10
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.u = fpext <2 x float> %i.t to <2 x double>   ; 5 uses
  %i.v = fpext nsz float %i.f to double           ; 3 uses
  %i.w = insertelement <2 x float> %i.r, float %i.f, i64 1
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !10
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 4 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = extractelement <2 x double> %i.z, i64 0 ; 3 uses
  %i.ac = fmul nsz double %i.ab, %i.o
  %i.ad = fneg nsz <2 x double> %i.x              ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.af = fmul nsz double %i.ae, %i.ab
  %i.ag = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %i.ag, double %i.af)
  %i.ai = fmul nsz double %i.ae, %i.v
  %i.aj = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.ak = extractelement <2 x double> %i.u, i64 0 ; 3 uses
  %i.al = insertelement <2 x double> poison, double %i.l, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul nsz <2 x double> %i.am, %i.ad
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %i.ak, double %i.ab, double %i.q)
  %i.ap = fmul nsz double %i.aj, %i.p
  %i.aq = tail call nsz double @llvm.fmuladd.f64(double %i.ak, double %i.v, double %i.ap)
  %i.ar = tail call nsz double @llvm.fmuladd.f64(double %i.v, double %i.ag, double %i.ac) ; 2 uses
  %i.as = fneg nsz double %i.ah                   ; 2 uses
  %i.at = tail call nsz double @llvm.fmuladd.f64(double %i.c, double %i.i, double %i.ai) ; 2 uses
  %i.au = fmul nsz double %i.aj, %i.as
  %i.av = tail call nsz double @llvm.fmuladd.f64(double %i.ak, double %i.ar, double %i.au)
  %i.aw = tail call nsz double @llvm.fmuladd.f64(double %i.l, double %i.at, double %i.av)
  %i.ax = fdiv nsz double 1.000000e+00, %i.aw     ; 2 uses
  %i.ay = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.az = insertelement <4 x double> %i.ay, double %i.as, i64 1
  %i.ba = insertelement <4 x double> %i.az, double %i.at, i64 2
  %i.bb = insertelement <4 x double> poison, double %i.ax, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = insertelement <2 x double> %i.ad, double %i.o, i64 1
  %i.be = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x double> %i.be, double %i.l, i64 1
  %i.bg = fmul nsz <2 x double> %i.bd, %i.bf
  %i.bh = insertelement <2 x double> %i.z, double %i.i, i64 0
  %i.bi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.bh, <2 x double> %i.bg)
  %i.bj = fneg nsz <2 x double> %i.bi             ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x double> %i.ba, <4 x double> %i.bk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bm = fmul nsz <4 x double> %i.bl, %i.bc
  %i.bn = fptrunc <4 x double> %i.bm to <4 x float>
  store <4 x float> %i.bn, ptr %0, align 4, !tbaa !10
  %i.bo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.aa, <2 x double> %i.an)
  %i.bp = fneg nsz double %i.ao
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bj, <4 x i32> <i32 0, i32 2, i32 1, i32 poison>
  %i.br = insertelement <4 x double> %i.bq, double %i.bp, i64 3
  %i.bs = fmul nsz <4 x double> %i.br, %i.bc
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  store <4 x float> %i.bt, ptr %i.e, align 4, !tbaa !10
  %i.bu = fmul nsz double %i.aq, %i.ax
  %i.bv = fptrunc nsz double %i.bu to float
  store float %i.bv, ptr %i.n, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @ff_prim_superset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %0, align 4                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 4              ; 6 uses
  %i.h = load i64, ptr %i.d, align 4              ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 4              ; 6 uses
  %i.k = tail call fastcc i32 @test_point_line(i64 %i.a, i64 %i.c, i64 %i.e, i64 %i.g, i64 %i.h, i64 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 4              ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 4              ; 6 uses
  %i.p = tail call fastcc i32 @test_point_line(i64 %i.a, i64 %i.c, i64 %i.h, i64 %i.j, i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = tail call fastcc i32 @test_point_line(i64 %i.a, i64 %i.c, i64 %i.m, i64 %i.o, i64 %i.e, i64 %i.g) ; 2 uses
  %i.r = icmp sgt i32 %i.k, -1
  %i.s = icmp sgt i32 %i.p, -1
  %or.cond.not25.i = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp sgt i32 %i.q, -1
  %.not23.i = select i1 %or.cond.not25.i, i1 %i.t, i1 false
  %i.u = icmp slt i32 %i.k, 1
  %i.v = icmp slt i32 %i.p, 1
  %or.cond3.not29.i = select i1 %i.u, i1 %i.v, i1 false
  %i.w = icmp slt i32 %i.q, 1
  %.not26.i = select i1 %or.cond3.not29.i, i1 %i.w, i1 false
  %.not21.i = select i1 %.not23.i, i1 true, i1 %.not26.i
  br i1 %.not21.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 4              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 4             ; 3 uses
  %i.ab = tail call fastcc i32 @test_point_line(i64 %i.y, i64 %i.aa, i64 %i.e, i64 %i.g, i64 %i.h, i64 %i.j) ; 2 uses
  %i.ac = tail call fastcc i32 @test_point_line(i64 %i.y, i64 %i.aa, i64 %i.h, i64 %i.j, i64 %i.m, i64 %i.o) ; 2 uses
  %i.ad = tail call fastcc i32 @test_point_line(i64 %i.y, i64 %i.aa, i64 %i.m, i64 %i.o, i64 %i.e, i64 %i.g) ; 2 uses
  %i.ae = icmp sgt i32 %i.ab, -1
  %i.af = icmp sgt i32 %i.ac, -1
  %or.cond.not25.i6 = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = icmp sgt i32 %i.ad, -1
  %.not23.i7 = select i1 %or.cond.not25.i6, i1 %i.ag, i1 false
  %i.ah = icmp slt i32 %i.ab, 1
  %i.ai = icmp slt i32 %i.ac, 1
  %or.cond3.not29.i8 = select i1 %i.ah, i1 %i.ai, i1 false
  %i.aj = icmp slt i32 %i.ad, 1
  %.not26.i9 = select i1 %or.cond3.not29.i8, i1 %i.aj, i1 false
  %.not21.i10 = select i1 %.not23.i7, i1 true, i1 %.not26.i9
  br i1 %.not21.i10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 4            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i64, ptr %i.am, align 4            ; 3 uses
  %i.ao = tail call fastcc i32 @test_point_line(i64 %i.al, i64 %i.an, i64 %i.e, i64 %i.g, i64 %i.h, i64 %i.j) ; 2 uses
  %i.ap = tail call fastcc i32 @test_point_line(i64 %i.al, i64 %i.an, i64 %i.h, i64 %i.j, i64 %i.m, i64 %i.o) ; 2 uses
  %i.aq = tail call fastcc i32 @test_point_line(i64 %i.al, i64 %i.an, i64 %i.m, i64 %i.o, i64 %i.e, i64 %i.g) ; 2 uses
  %i.ar = icmp sgt i32 %i.ao, -1
  %i.as = icmp sgt i32 %i.ap, -1
  %or.cond.not25.i11 = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = icmp sgt i32 %i.aq, -1
  %.not23.i12 = select i1 %or.cond.not25.i11, i1 %i.at, i1 false
  %i.au = icmp slt i32 %i.ao, 1
  %i.av = icmp slt i32 %i.ap, 1
  %or.cond3.not29.i13 = select i1 %i.au, i1 %i.av, i1 false
  %i.aw = icmp slt i32 %i.aq, 1
  %.not26.i14 = select i1 %or.cond3.not29.i13, i1 %i.aw, i1 false
  %.not21.i15 = select i1 %.not23.i12, i1 true, i1 %.not26.i14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ax = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not21.i15, %bb.c ]
  ret i1 %i.ax
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_sub_q(i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @test_point_line(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @av_sub_q(i64 %0, i64 %4) #7
  %i.b = tail call i64 @av_sub_q(i64 %3, i64 %5) #7
  %i.c = tail call i64 @av_mul_q(i64 %i.a, i64 %i.b) #7 ; 4 uses
  %i.d = tail call i64 @av_sub_q(i64 %2, i64 %4) #7
  %i.e = tail call i64 @av_sub_q(i64 %1, i64 %5) #7
  %i.f = tail call i64 @av_mul_q(i64 %i.d, i64 %i.e) #7 ; 4 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.c to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.f to i32 ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.g = ashr exact i64 %sext.i, 32
end_hunk_0
