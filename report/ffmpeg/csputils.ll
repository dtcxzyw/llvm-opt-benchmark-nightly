Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/csputils?download=true
inline.NumInlined: 44
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_sws_matrix3x3_mul:bb.a
  store float %i.dz, ptr %i.ea, align 4, !tbaa !10
  %i.eb = load float, ptr %i.dl, align 4, !tbaa !10
  %i.ec = load float, ptr %i.dn, align 4, !tbaa !10
  %i.ed = fmul nsz float %i.co, %i.ec
  %i.ee = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.eb, float %i.ed)
  %i.ef = load float, ptr %i.dr, align 4, !tbaa !10
  %i.eg = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.ef, float %i.ee)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.eg, ptr %i.eh, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = fmul nsz float %i.cc, %i.el
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.ej, float %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !10
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.ep, float %i.en)
  store float %i.eq, ptr %i.cd, align 4, !tbaa !10
  %i.er = load float, ptr %i.ei, align 4, !tbaa !10
  %i.es = load float, ptr %i.ek, align 4, !tbaa !10
  %i.et = fmul nsz float %i.ci, %i.es
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.er, float %i.et)
  %i.ev = load float, ptr %i.eo, align 4, !tbaa !10
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ev, float %i.eu)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ew, ptr %i.ex, align 4, !tbaa !10
  %i.ey = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ez = load float, ptr %i.ek, align 4, !tbaa !10
  %i.fa = fmul nsz float %i.co, %i.ez
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.ey, float %i.fa)
  %i.fc = load float, ptr %i.eo, align 4, !tbaa !10
  %i.fd = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %i.fc, float %i.fb)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.fd, ptr %i.fe, align 4, !tbaa !10
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_matrix3x3_invert(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !10
  %i.d = load <8 x float>, ptr %0, align 4, !tbaa !10 ; 4 uses
  %i.e = shufflevector <8 x float> %i.d, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 0>
  %i.f = fpext <4 x float> %i.e to <4 x double>   ; 5 uses
  %i.g = shufflevector <8 x float> %i.d, <8 x float> poison, <4 x i32> <i32 1, i32 5, i32 2, i32 2>
  %i.h = fpext <4 x float> %i.g to <4 x double>
  %i.i = shufflevector <8 x float> %i.d, <8 x float> poison, <4 x i32> <i32 3, i32 7, i32 4, i32 6>
  %i.j = fpext <4 x float> %i.i to <4 x double>   ; 6 uses
  %i.k = shufflevector <8 x float> %i.d, <8 x float> poison, <3 x i32> <i32 4, i32 poison, i32 5>
  %i.l = insertelement <3 x float> %i.k, float %i.c, i64 1
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.n = fpext <4 x float> %i.m to <4 x double>   ; 3 uses
  %i.o = fneg nsz <4 x double> %i.h               ; 4 uses
  %i.p = extractelement <4 x double> %i.o, i64 2
  %i.q = extractelement <4 x double> %i.j, i64 1  ; 2 uses
  %i.r = fmul nsz double %i.p, %i.q
  %i.s = extractelement <4 x double> %i.f, i64 2
  %i.t = extractelement <4 x double> %i.n, i64 1  ; 2 uses
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.s, double %i.t, double %i.r)
  %i.v = extractelement <4 x double> %i.o, i64 1
  %i.w = extractelement <4 x double> %i.j, i64 3  ; 3 uses
  %i.x = fmul nsz double %i.v, %i.w
  %i.y = extractelement <4 x double> %i.j, i64 0  ; 3 uses
  %i.z = tail call nsz double @llvm.fmuladd.f64(double %i.y, double %i.t, double %i.x)
  %i.aa = extractelement <4 x double> %i.f, i64 0
  %i.ab = extractelement <4 x double> %i.f, i64 1
  %i.ac = fneg nsz double %i.ab
  %i.ad = fmul nsz double %i.w, %i.ac
  %i.ae = fmul nsz <4 x double> %i.o, %i.j
  %i.af = fneg nsz double %i.u                    ; 2 uses
  %i.ag = fneg nsz double %i.z
  %i.ah = fmul nsz double %i.y, %i.af
  %i.ai = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.f, <4 x double> %i.n, <4 x double> %i.ae) ; 5 uses
  %i.aj = extractelement <4 x double> %i.ai, i64 1
  %i.ak = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.aj, double %i.ah)
  %i.al = extractelement <4 x double> %i.ai, i64 2
  %i.am = tail call nsz double @llvm.fmuladd.f64(double %i.w, double %i.al, double %i.ak)
  %i.an = fdiv nsz double 1.000000e+00, %i.am     ; 2 uses
  %i.ao = shufflevector <4 x double> %i.ai, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 2, i32 poison>
  %i.ap = insertelement <4 x double> %i.ao, double %i.af, i64 1
  %i.aq = insertelement <4 x double> %i.ap, double %i.ag, i64 3
  %i.ar = insertelement <4 x double> poison, double %i.an, i64 0
  %i.as = shufflevector <4 x double> %i.ar, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.at = fmul nsz <4 x double> %i.aq, %i.as
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  store <4 x float> %i.au, ptr %0, align 4, !tbaa !10
  %i.av = tail call nsz double @llvm.fmuladd.f64(double %i.y, double %i.q, double %i.ad)
  %i.aw = shufflevector <4 x double> %i.o, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <4 x double> %i.j, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.ay = fmul nsz <2 x double> %i.aw, %i.ax
  %i.az = shufflevector <4 x double> %i.f, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ba = shufflevector <4 x double> %i.n, <4 x double> %i.j, <2 x i32> <i32 2, i32 5>
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.ba, <2 x double> %i.ay)
  %i.bc = fneg nsz <2 x double> %i.bb
  %i.bd = shufflevector <4 x double> %i.ai, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x double> %i.bd, <4 x double> %i.be, <4 x i32> <i32 0, i32 4, i32 poison, i32 5>
  %i.bg = insertelement <4 x double> %i.bf, double %i.av, i64 2
  %i.bh = fmul nsz <4 x double> %i.bg, %i.as
  %i.bi = fptrunc <4 x double> %i.bh to <4 x float>
  store <4 x float> %i.bi, ptr %i.a, align 4, !tbaa !10
  %i.bj = extractelement <4 x double> %i.ai, i64 0
  %i.bk = fmul nsz double %i.bj, %i.an
  %i.bl = fptrunc nsz double %i.bk to float
  store float %i.bl, ptr %i.b, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_matrix3x3_apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.f = load float, ptr %0, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = fmul nsz float %i.c, %i.h
  %i.j = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.a, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.l, float %i.e, float %i.j)
  store float %i.m, ptr %1, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !10
  %i.r = fmul nsz float %i.c, %i.q
  %i.s = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.a, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.e, float %i.s)
  store float %i.v, ptr %i.b, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = fmul nsz float %i.c, %i.z
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %i.a, float %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !10
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.e, float %i.ab)
  store float %i.ae, ptr %i.d, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_sws_rgb2xyz(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.SwsMatrix3x3) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 4              ; 3 uses
  %i.e = tail call i64 @av_div_q(i64 %i.b, i64 %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 4              ; 3 uses
  %i.j = tail call i64 @av_div_q(i64 %i.g, i64 %i.i) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i64, ptr %i.m, align 4              ; 3 uses
  %i.o = tail call i64 @av_div_q(i64 %i.l, i64 %i.n) #7
  %i.p = tail call i64 @av_sub_q(i64 4294967297, i64 %i.b) #7
  %i.q = tail call i64 @av_sub_q(i64 %i.p, i64 %i.d) #7
  %i.r = tail call i64 @av_div_q(i64 %i.q, i64 %i.d) #7 ; 2 uses
  %i.s = tail call i64 @av_sub_q(i64 4294967297, i64 %i.g) #7
  %i.t = tail call i64 @av_sub_q(i64 %i.s, i64 %i.i) #7
  %i.u = tail call i64 @av_div_q(i64 %i.t, i64 %i.i) #7
  %i.v = tail call i64 @av_sub_q(i64 4294967297, i64 %i.l) #7
  %i.w = tail call i64 @av_sub_q(i64 %i.v, i64 %i.n) #7
  %i.x = tail call i64 @av_div_q(i64 %i.w, i64 %i.n) #7
  %i.y = load i64, ptr %1, align 4                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 4             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = tail call i64 @av_div_q(i64 %i.y, i64 %i.aa) #7
  %i.af = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.ag = insertelement <2 x i64> %i.af, i64 %i.ae, i64 1 ; 2 uses
  %i.ah = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ai = lshr <2 x i64> %i.ag, splat (i64 32)
  %i.aj = trunc nuw <2 x i64> %i.ai to <2 x i32>
  %i.ak = sitofp <2 x i32> %i.ah to <2 x double>
  %i.al = sitofp <2 x i32> %i.aj to <2 x double>
  %i.am = fdiv nsz <2 x double> %i.ak, %i.al      ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fptrunc nsz double %i.an to float       ; 2 uses
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = fptrunc nsz double %i.ap to float       ; 2 uses
  %i.ar = tail call i64 @av_sub_q(i64 4294967297, i64 %i.y) #7
  %i.as = tail call i64 @av_sub_q(i64 %i.ar, i64 %i.aa) #7
  %i.at = tail call i64 @av_div_q(i64 %i.as, i64 %i.aa) #7 ; 2 uses
  %i.au = fpext nsz float %i.ao to double         ; 4 uses
  %i.av = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %i.aw = insertelement <2 x i64> %i.av, i64 %i.o, i64 1 ; 2 uses
  %i.ax = trunc <2 x i64> %i.aw to <2 x i32>
  %i.ay = lshr <2 x i64> %i.aw, splat (i64 32)
  %i.az = trunc nuw <2 x i64> %i.ay to <2 x i32>
  %i.ba = sitofp <2 x i32> %i.ax to <2 x double>
  %i.bb = sitofp <2 x i32> %i.az to <2 x double>
  %i.bc = fdiv nsz <2 x double> %i.ba, %i.bb
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float> ; 3 uses
  %i.be = fpext <2 x float> %i.bd to <2 x double> ; 4 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bg = fsub nsz double %i.au, %i.bf
  %.sroa.0.0.extract.trunc.i47 = trunc i64 %i.r to i32
  %.sroa.0.0.extract.trunc.i59 = trunc i64 %i.at to i32
  %i.bh = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %i.bi = insertelement <2 x i64> %i.bh, i64 %i.r, i64 1
  %i.bj = lshr <2 x i64> %i.bi, splat (i64 32)
  %i.bk = trunc nuw <2 x i64> %i.bj to <2 x i32>
  %i.bl = insertelement <2 x i32> poison, i32 %.sroa.0.0.extract.trunc.i59, i64 0
  %i.bm = insertelement <2 x i32> %i.bl, i32 %.sroa.0.0.extract.trunc.i47, i64 1
  %i.bn = sitofp <2 x i32> %i.bm to <2 x double>
  %i.bo = sitofp <2 x i32> %i.bk to <2 x double>
  %i.bp = fdiv nsz <2 x double> %i.bn, %i.bo
  %i.bq = fptrunc <2 x double> %i.bp to <2 x float> ; 3 uses
  %i.br = extractelement <2 x float> %i.bq, i64 1
  %i.bs = fpext nsz float %i.br to double         ; 4 uses
  %i.bt = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.bu = insertelement <2 x i64> %i.bt, i64 %i.x, i64 1 ; 2 uses
  %i.bv = trunc <2 x i64> %i.bu to <2 x i32>
  %i.bw = lshr <2 x i64> %i.bu, splat (i64 32)
  %i.bx = trunc nuw <2 x i64> %i.bw to <2 x i32>
  %i.by = sitofp <2 x i32> %i.bv to <2 x double>
  %i.bz = sitofp <2 x i32> %i.bx to <2 x double>
  %i.ca = fdiv nsz <2 x double> %i.by, %i.bz
  %i.cb = fptrunc <2 x double> %i.ca to <2 x float> ; 2 uses
  %i.cc = fpext <2 x float> %i.cb to <2 x double> ; 6 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = extractelement <2 x double> %i.cc, i64 1
  %i.cf = fsub nsz double %i.cd, %i.bs
  %i.cg = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ch = insertelement <2 x double> %i.cg, double %i.bs, i64 1
  %i.ci = fsub nsz <2 x double> %i.ch, %i.cc      ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = fneg nsz <2 x double> %i.be             ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul nsz <2 x double> %i.cm, %i.ck
  %shift = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %shift, %i.cc
  %i.co = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.bf, double %i.ce, double %i.co)
  %i.cq = insertelement <2 x double> poison, double %i.au, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cc, <2 x double> %i.cn) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fneg nsz double %i.ct
  %i.cv = fneg nsz double %i.cp                   ; 2 uses
  %i.cw = tail call nsz double @llvm.fmuladd.f64(double %i.au, double %i.cj, double %i.cv)
  %i.cx = insertelement <2 x double> %i.cs, double %i.cv, i64 0
  %i.cy = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x double> %i.da, double %i.au, i64 1
  %i.dc = fsub nsz <2 x double> %i.be, %i.db      ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = tail call nsz double @llvm.fmuladd.f64(double %i.bs, double %i.dd, double %i.cw)
  %i.df = fdiv nsz double 1.000000e+00, %i.de     ; 4 uses
  %i.dg = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.di = fmul nsz <2 x double> %i.ci, %i.dh
  %i.dj = fptrunc <2 x double> %i.di to <2 x float>
  %i.dk = fmul nsz <2 x double> %i.dh, %i.cx
  %i.dl = fptrunc <2 x double> %i.dk to <2 x float>
  %i.dm = fmul nsz <2 x double> %i.dc, %i.dh
  %i.dn = fptrunc <2 x double> %i.dm to <2 x float>
  %i.do = fmul nsz double %i.cf, %i.df
  %i.dp = fptrunc nsz double %i.do to float
  %i.dq = fmul nsz double %i.df, %i.cu
  %i.dr = fptrunc nsz double %i.dq to float
  %i.ds = fmul nsz double %i.bg, %i.df
  %i.dt = fptrunc nsz double %i.ds to float
  %i.du = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.cz, <2 x float> %i.dl)
  %i.dv = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dv, <2 x float> %i.du) ; 4 uses
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.dp, float %i.aq, float %i.dr)
  %i.dy = extractelement <2 x float> %i.dw, i64 0 ; 2 uses
  %i.dz = fmul nsz float %i.dy, %i.ao
  store float %i.dz, ptr %0, align 4, !tbaa !10
  store float %i.dy, ptr %i.ab, align 4, !tbaa !10
  %i.ea = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.ec = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.dx, i64 0
  %i.ed = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.bq, <2 x float> %i.ec) ; 3 uses
  %i.ee = extractelement <2 x float> %i.bd, i64 0
  %i.ef = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.eg = fmul nsz float %i.ef, %i.ee
  store float %i.eg, ptr %.sroa.572.0..sroa_idx, align 4, !tbaa !10
  store float %i.ef, ptr %i.ac, align 4, !tbaa !10
  %shift75 = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop76 = fmul nsz <2 x float> %i.ed, %shift75
  %i.eh = extractelement <2 x float> %foldExtExtBinop76, i64 0
  store float %i.eh, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !10
  store <2 x float> %i.ed, ptr %i.ad, align 4, !tbaa !10
  %3 = shufflevector <2 x float> %i.dw, <2 x float> %i.ed, <2 x i32> <i32 1, i32 2>
  %4 = fmul nsz <2 x float> %3, %i.cb
  store <2 x float> %4, ptr %2, align 4, !tbaa !10
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
  %7 = alloca %struct.SwsMatrix3x3, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i64 %2, ptr %6, align 8, !tbaa !13
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @ff_sws_rgb2xyz(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %7, ptr noundef nonnull %6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load <2 x float>, ptr %7, align 8
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <2 x float>, ptr %.sroa.12.0..sroa_idx, align 4
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.m = load <2 x float>, ptr %.sroa.21.0..sroa_idx, align 8
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8
  %i.o = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4
  %i.q = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 8
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !11
  %i.s = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 4
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @ff_sws_xyz2rgb(ptr dead_on_unwind nonnull writable sret(%struct.SwsMatrix3x3) align 4 %0, ptr noundef nonnull %6)
  tail call fastcc void @apply_chromatic_adaptation(i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull %0)
  %i.u = load <2 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.v = load float, ptr %i.b, align 4, !tbaa !10
  %i.w = load <2 x float>, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.x = load <4 x float>, ptr %i.e, align 4
  %i.y = load <4 x float>, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.z = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ab = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.ac = load float, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.ad = shufflevector <2 x float> %i.u, <2 x float> %i.w, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ae = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.ag = fmul nsz <4 x float> %i.l, %i.af
  %i.ah = shufflevector <2 x float> %i.u, <2 x float> %i.w, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.aj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.j, <4 x float> %i.ag)
  %i.ak = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float %i.ac, i64 2
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.n, <4 x float> %i.aj) ; 2 uses
  %i.ao = extractelement <2 x float> %i.z, i64 0
  %i.ap = insertelement <4 x float> %i.x, float %i.ab, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.v, i64 2
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.as = fmul nsz <4 x float> %i.r, %i.ar
  %i.at = shufflevector <2 x float> %i.w, <2 x float> %i.u, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.p, <4 x float> %i.as)
  %i.aw = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 0, i32 poison>
  %i.ax = insertelement <4 x float> %i.aw, float %i.ac, i64 1
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.t, <4 x float> %i.av) ; 2 uses
  %i.ba = shufflevector <4 x float> %i.an, <4 x float> %i.az, <4 x i32> <i32 0, i32 3, i32 5, i32 1>
  store <4 x float> %i.ba, ptr %0, align 4, !tbaa !10
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.an, <4 x i32> <i32 0, i32 3, i32 6, i32 2>
  store <4 x float> %i.bb, ptr %i.e, align 4, !tbaa !10
  %i.bc = fmul nsz float %.sroa.18.0.copyload, %i.ab
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %.sroa.9.0.copyload, float %i.bc)
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %.sroa.27.0.copyload, float %i.bd)
  store float %i.be, ptr %i.h, align 4, !tbaa !10
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
  %i.e = tail call i64 @av_div_q(i64 %2, i64 %3) #7
  %i.f = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.g = insertelement <2 x i64> %i.f, i64 %i.e, i64 1 ; 2 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = trunc <4 x i64> %i.h to <4 x i32>
  %i.j = sitofp <4 x i32> %i.i to <4 x double>
  %i.k = shufflevector <2 x i64> %i.g, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.l = lshr <4 x i64> %i.k, splat (i64 32)
  %i.m = trunc nuw <4 x i64> %i.l to <4 x i32>
  %i.n = sitofp <4 x i32> %i.m to <4 x double>
  %i.o = fdiv nsz <4 x double> %i.j, %i.n
  %i.p = fptrunc <4 x double> %i.o to <4 x float> ; 2 uses
  %i.q = tail call i64 @av_sub_q(i64 4294967297, i64 %2) #7
end_hunk_0
