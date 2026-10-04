Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/raycast?download=true
inline.NumInlined: 192
inline.NumDeleted: 123
begin_hunk_0_@_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_:bb.a
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul nsz <2 x float> %3, %i.x
  %i.z = fadd nsz <2 x float> %1, %i.y            ; 2 uses
  %i.aa = fadd nsz float %2, %i.v                 ; 3 uses
  store <2 x float> %i.z, ptr %5, align 4, !tbaa !15
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.aa, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !77
  %i.ad = extractelement <2 x float> %i.z, i64 1  ; 2 uses
  %i.ae = fcmp nsz ult float %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fcmp nsz ugt float %i.ad, %i.ag
  %or.cond194 = select i1 %i.ae, i1 true, i1 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fcmp nsz ult float %i.aa, %i.aj
  %or.cond197 = select i1 %or.cond194, i1 true, i1 %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load float, ptr %i.al, align 4
  %i.an = fcmp nsz ugt float %i.aa, %i.am
  %or.cond200 = select i1 %or.cond197, i1 true, i1 %i.an
  br i1 %or.cond200, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = select i1 %i.s, float -1.000000e+00, float 1.000000e+00
  br label %.sink.split

bb.g:                                             ; preds = %bb.d, %bb.e, %_ZNK4core8aabbox3dIfE13isPointInsideERKNS_8vector3dIfEE.exit.thread
  %.sroa.0120.4.vec.extract130 = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.ap = fcmp nsz une float %.sroa.0120.4.vec.extract130, 0.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aq = fcmp nsz ogt float %.sroa.0120.4.vec.extract130, 0.000000e+00 ; 2 uses
  %.sroa.0141.4.vec.extract153 = extractelement <2 x float> %1, i64 1
  %. = select i1 %i.aq, i64 4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.as = load float, ptr %i.ar, align 4, !tbaa !15
  %i.at = fsub nsz float %i.as, %.sroa.0141.4.vec.extract153
  %.184 = fdiv nsz float %i.at, %.sroa.0120.4.vec.extract130 ; 4 uses
  %i.au = fcmp nsz oge float %.184, 0.000000e+00
  %i.av = fcmp nsz ole float %.184, 1.000000e+00
  %or.cond3 = and i1 %i.au, %i.av
  br i1 %or.cond3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aw = insertelement <2 x float> poison, float %.184, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul nsz <2 x float> %3, %i.ax
  %i.az = fmul nsz float %4, %.184
  %i.ba = fadd nsz <2 x float> %1, %i.ay          ; 2 uses
  %i.bb = fadd nsz float %2, %i.az                ; 3 uses
  store <2 x float> %i.ba, ptr %5, align 4, !tbaa !15
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bb, ptr %.sroa.420.0..sroa_idx, align 4, !tbaa !15
  %i.bc = load float, ptr %0, align 4, !tbaa !76
  %i.bd = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.be = fcmp nsz ult float %i.bd, %i.bc
  %i.bf = load float, ptr %i.c, align 4
  %i.bg = fcmp nsz ugt float %i.bd, %i.bf
  %or.cond202 = select i1 %i.be, i1 true, i1 %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = fcmp nsz ult float %i.bb, %i.bi
  %or.cond205 = select i1 %or.cond202, i1 true, i1 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fcmp nsz ugt float %i.bb, %i.bl
  %or.cond208 = select i1 %or.cond205, i1 true, i1 %i.bm
  br i1 %or.cond208, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = select i1 %i.aq, float -1.000000e+00, float 1.000000e+00
  br label %.sink.split

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bo = fcmp nsz une float %4, 0.000000e+00
  br i1 %i.bo, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bp = fcmp nsz ogt float %4, 0.000000e+00     ; 2 uses
  %.pn177.in.v = select i1 %i.bp, i64 8, i64 20
  %.pn177.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn177.in.v
  %.pn177 = load float, ptr %.pn177.in, align 4, !tbaa !15
  %.pn95 = fsub nsz float %.pn177, %2
  %.2 = fdiv nsz float %.pn95, %4                 ; 4 uses
  %i.bq = fcmp nsz oge float %.2, 0.000000e+00
  %i.br = fcmp nsz ole float %.2, 1.000000e+00
  %or.cond5 = and i1 %i.bq, %i.br
  br i1 %or.cond5, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bs = insertelement <2 x float> poison, float %.2, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul nsz <2 x float> %3, %i.bt
  %i.bv = fmul nsz float %4, %.2
  %i.bw = fadd nsz <2 x float> %1, %i.bu          ; 3 uses
  %i.bx = fadd nsz float %2, %i.bv
  store <2 x float> %i.bw, ptr %5, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bx, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %i.by = load float, ptr %0, align 4, !tbaa !76
  %i.bz = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.ca = fcmp nsz ugt float %i.by, %i.bz
  %i.cb = load float, ptr %i.c, align 4
  %i.cc = fcmp nsz ugt float %i.bz, %i.cb
  %or.cond210 = select i1 %i.ca, i1 true, i1 %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cg = fcmp nsz ult float %i.cf, %i.ce
  %or.cond213 = select i1 %or.cond210, i1 true, i1 %i.cg
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = fcmp nsz ugt float %i.cf, %i.ci
  %or.cond216 = select i1 %or.cond213, i1 true, i1 %i.cj
  br i1 %or.cond216, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = select i1 %i.bp, float -1.000000e+00, float 1.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.n, %bb.j, %bb.f
  %.sink191 = phi float [ %i.ao, %bb.f ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.c ]
  %.sink189 = phi float [ 0.000000e+00, %bb.f ], [ %i.bn, %bb.j ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.c ]
  %.sink187 = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.j ], [ %i.ck, %bb.n ], [ 0.000000e+00, %bb.c ]
  store float %.sink191, ptr %6, align 4, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %.sink189, ptr %i.cl, align 4, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sink187, ptr %i.cm, align 4, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %bb.m, %bb.k
  %.1 = phi i1 [ false, %bb.l ], [ true, %.sink.split ], [ false, %bb.m ], [ false, %bb.k ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_S5_PS5_S6_S6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %5, float %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #4 {
bb.a:
  %.sroa.075.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.075.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = fpext nsz float %.sroa.075.0.vec.extract to double
  %i.b = fmul nsz double %i.a, 5.000000e-01
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0 ; 2 uses
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.c = fpext nsz float %.sroa.075.4.vec.extract to double
  %i.d = fmul nsz double %i.c, 5.000000e-01
  %sincos34.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin35.i.i = extractvalue { double, double } %sincos34.i.i, 0
  %cos36.i.i = extractvalue { double, double } %sincos34.i.i, 1
  %i.e = fpext nsz float %2 to double
  %i.f = fmul nsz double %i.e, 5.000000e-01
  %sincos37.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.f) ; 2 uses
  %sin38.i.i = extractvalue { double, double } %sincos37.i.i, 0
  %cos39.i.i = extractvalue { double, double } %sincos37.i.i, 1
  %i.g = insertelement <2 x double> poison, double %cos36.i.i, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x double> poison, double %sin38.i.i, i64 0
  %i.j = insertelement <2 x double> %i.i, double %cos39.i.i, i64 1 ; 2 uses
  %i.k = fmul nsz <2 x double> %i.h, %i.j         ; 3 uses
  %i.l = insertelement <2 x double> poison, double %sin35.i.i, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul nsz <2 x double> %i.m, %i.j         ; 3 uses
  %i.o = fneg nsz <2 x double> %i.n
  %i.p = insertelement <2 x double> poison, double %cos.i.i, i64 0 ; 2 uses
  %i.q = insertelement <2 x double> %i.p, double %sin.i.i, i64 1 ; 2 uses
  %i.r = fmul nsz <2 x double> %i.q, %i.o
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.t = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.k, <2 x double> %i.s)
  %i.u = fptrunc <2 x double> %i.t to <2 x float> ; 3 uses
  %i.v = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x double> %i.k, <2 x double> %i.n, <2 x i32> <i32 0, i32 2>
  %i.y = fmul nsz <2 x double> %i.w, %i.x
  %i.z = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x double> %i.n, <2 x double> %i.k, <2 x i32> <i32 1, i32 3>
  %i.ab = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.y) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = fptrunc nsz double %i.ac to float       ; 3 uses
  %i.ae = extractelement <2 x double> %i.ab, i64 1
  %i.af = fptrunc nsz double %i.ae to float       ; 3 uses
  %i.ag = fmul nsz float %i.ad, %i.ad
  %i.ah = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = extractelement <2 x float> %i.u, i64 0  ; 2 uses
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ai)
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ak)
  %i.am = fpext nsz float %i.al to double
  %i.an = tail call nsz double @llvm.sqrt.f64(double %i.am)
  %i.ao = fdiv nsz double 1.000000e+00, %i.an
  %i.ap = fptrunc nsz double %i.ao to float       ; 3 uses
  %i.aq = fmul nsz float %i.ad, %i.ap             ; 11 uses
  %i.ar = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul nsz <2 x float> %i.as, %i.u        ; 12 uses
  %i.au = fneg nsz <2 x float> %i.at              ; 5 uses
  %shift = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %shift, %i.at
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aw = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ax = insertelement <2 x float> %i.aw, float %4, i64 0
  %i.ay = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.az = insertelement <2 x float> %i.ay, float %i.aq, i64 1 ; 3 uses
  %i.ba = fmul nsz <2 x float> %i.ax, %i.az
  %i.bb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %3, <2 x float> %i.ba) ; 4 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = fmul nsz <2 x float> %i.at, %i.bb
  %i.be = shufflevector <2 x float> %i.bb, <2 x float> %i.au, <2 x i32> <i32 1, i32 2>
  %i.bf = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %shift78 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop79 = fmul nsz <2 x float> %shift78, %i.at
  %i.bg = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.bh = shufflevector <2 x float> %i.at, <2 x float> %5, <2 x i32> <i32 1, i32 2>
  %i.bi = insertelement <2 x float> poison, float %6, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.aq, i64 1
  %i.bk = fmul nsz <2 x float> %i.bh, %i.bj
  %i.bl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %5, <2 x float> %i.bk) ; 5 uses
  %10 = extractelement <2 x float> %i.bl, i64 0
  %i.bm = extractelement <2 x float> %i.bl, i64 1
  %i.bn = fneg nsz float %i.aq                    ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0 ; 2 uses
  %i.bp = fmul nsz <2 x float> %i.at, %i.bl
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> %i.au, <2 x i32> <i32 1, i32 2>
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float %4, float %i.av) ; 3 uses
  %i.bs = insertelement <2 x float> %i.bo, float %i.br, i64 1
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.be, <2 x float> %i.bd)
  %i.bu = fmul nsz float %i.aq, %i.br
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float %6, float %i.bg) ; 3 uses
  %i.bw = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bx = insertelement <4 x float> %i.bw, float %i.br, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bv, i64 3
  %i.bz = shufflevector <2 x float> %3, <2 x float> %5, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.ca = insertelement <4 x float> %i.bz, float %4, i64 1
  %i.cb = insertelement <2 x float> %i.bo, float %i.bv, i64 1
  %i.cc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bq, <2 x float> %i.bp) ; 2 uses
  %i.cd = fmul nsz float %i.aq, %i.bv
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %10, float %i.cd)
  %i.cf = extractelement <2 x float> %i.cc, i64 0
  %i.cg = fmul nsz float %i.cf, 2.000000e+00
  %i.ch = extractelement <2 x float> %i.cc, i64 1
  %i.ci = fmul nsz float %i.ch, 2.000000e+00
  %i.cj = fmul nsz float %i.ce, 2.000000e+00
  %.scalar = fmul nsz float %i.af, %i.ap
  %.scalar81 = fmul nsz float %.scalar, 2.000000e+00 ; 6 uses
  %i.ck = insertelement <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float poison>, float %.scalar81, i64 3 ; 3 uses
  %11 = fmul nsz float %.scalar81, %i.bm
  %12 = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.bc, float %i.bu)
  %13 = shufflevector <2 x float> %i.bt, <2 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %14 = insertelement <4 x float> %13, float %12, i64 2
  %i.cl = fmul nsz <4 x float> %i.ck, %14
  %15 = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cm = fmul nsz <4 x float> %15, %i.by
  %i.cn = fadd nsz <4 x float> %i.ca, %i.cm       ; 2 uses
  %i.co = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 2, i32 0, i32 1, i32 5>
  %17 = fadd nsz <4 x float> %16, %i.cl           ; 3 uses
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %19 = fadd nsz float %6, %11
  %i.cp = extractelement <4 x float> %i.cn, i64 3
  %i.cq = fadd nsz float %i.cp, %i.cg
  %i.cr = extractelement <4 x float> %17, i64 3
  %i.cs = fadd nsz float %i.cr, %i.ci
  %i.ct = fadd nsz float %19, %i.cj
  %.sroa.0.0.vec.insert.i30.i42 = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.0.4.vec.insert.i31.i43 = insertelement <2 x float> %.sroa.0.0.vec.insert.i30.i42, float %i.cs, i64 1
  %i.cu = extractelement <4 x float> %17, i64 2
  %i.cv = tail call noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24) %0, <2 x float> %18, float %i.cu, <2 x float> %.sroa.0.4.vec.insert.i31.i43, float %i.ct, ptr noundef %7, ptr noundef %8) ; 2 uses
  br i1 %i.cv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cw = extractelement <2 x float> %i.at, i64 0 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !20 ; 3 uses
  %i.db = fneg nsz float %i.da
  %i.dc = fmul nsz float %i.cw, %i.db
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.cy, float %i.dc) ; 3 uses
  %i.de = load float, ptr %7, align 4, !tbaa !19  ; 3 uses
  %i.df = fneg nsz float %i.cy
  %i.dg = extractelement <2 x float> %i.at, i64 1 ; 4 uses
  %i.dh = fmul nsz float %i.dg, %i.df
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.de, float %i.dh) ; 3 uses
  %i.dj = fneg nsz float %i.de
  %i.dk = fmul nsz float %i.aq, %i.dj
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %i.dg, float %i.da, float %i.dk) ; 3 uses
  %i.dm = fneg nsz float %i.di
  %i.dn = fmul nsz float %i.cw, %i.dm
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.dl, float %i.dn)
  %i.dp = fneg nsz float %i.dl
  %i.dq = fmul nsz float %i.dg, %i.dp
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.dd, float %i.dq)
  %i.ds = fneg nsz float %i.dd
  %i.dt = fmul nsz float %i.aq, %i.ds
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dg, float %i.di, float %i.dt)
  %i.dv = fmul nsz float %.scalar81, %i.dd
  %i.dw = fmul nsz float %.scalar81, %i.di
  %i.dx = fmul nsz float %.scalar81, %i.dl
  %i.dy = fmul nsz float %i.do, 2.000000e+00
  %i.dz = fmul nsz float %i.dr, 2.000000e+00
  %i.ea = fmul nsz float %i.du, 2.000000e+00
  %i.eb = fadd nsz float %i.de, %i.dv
  %i.ec = fadd nsz float %i.da, %i.dw
  %i.ed = fadd nsz float %i.cy, %i.dx
  %i.ee = fadd nsz float %i.eb, %i.dy
  %i.ef = fadd nsz float %i.ec, %i.dz
  %i.eg = fadd nsz float %i.ed, %i.ea
  %.sroa.0.0.vec.insert.i30.i46 = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0.4.vec.insert.i31.i47 = insertelement <2 x float> %.sroa.0.0.vec.insert.i30.i46, float %i.ef, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i31.i47, ptr %7, align 4, !tbaa !15
  store float %i.eg, ptr %i.cx, align 4, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !78
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !15 ; 3 uses
  %i.ek = load <2 x float>, ptr %8, align 4, !tbaa !15 ; 3 uses
  %i.el = fneg nsz <2 x float> %i.ej
  %i.em = shufflevector <2 x float> %i.ej, <2 x float> %i.ek, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.en = fneg nsz <2 x float> %i.em
  %i.eo = fmul nsz <2 x float> %i.at, %i.el
  %i.ep = fmul nsz <2 x float> %i.az, %i.en
  %i.eq = insertelement <2 x float> %i.ay, float %i.aq, i64 0
  %i.er = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.em, <2 x float> %i.eo) ; 3 uses
  %i.es = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.ek, <2 x float> %i.ep) ; 4 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = fneg nsz float %i.et
  %i.ev = fmul nsz float %i.cw, %i.eu
  %i.ew = extractelement <2 x float> %i.es, i64 1
  %i.ex = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.ew, float %i.ev)
  %i.ey = shufflevector <2 x float> %i.es, <2 x float> %i.er, <2 x i32> <i32 1, i32 2>
  %i.ez = fneg nsz <2 x float> %i.ey
  %i.fa = fmul nsz <2 x float> %i.az, %i.ez
  %i.fb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.er, <2 x float> %i.fa)
  %i.fc = extractelement <2 x float> %i.er, i64 0
  %i.fd = fmul nsz float %.scalar81, %i.fc
  %20 = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.fe = fmul nsz <2 x float> %20, %i.es
  %i.ff = fmul nsz float %i.ex, 2.000000e+00
  %i.fg = fmul nsz <2 x float> %i.fb, splat (float 2.000000e+00)
  %i.fh = extractelement <2 x float> %i.ek, i64 0
  %i.fi = fadd nsz float %i.fh, %i.fd
  %i.fj = fadd nsz <2 x float> %i.ej, %i.fe
  %i.fk = fadd nsz float %i.fi, %i.ff
  %i.fl = fadd nsz <2 x float> %i.fj, %i.fg       ; 2 uses
  %.sroa.0.0.vec.insert.i30.i50 = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <2 x float> %.sroa.0.0.vec.insert.i30.i50, <2 x float> %i.fl, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.fm, ptr %8, align 4, !tbaa !15
  %i.fn = extractelement <2 x float> %i.fl, i64 1
  store float %i.fn, ptr %i.eh, align 4, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.cv
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14PointabilitiesC2ERKS_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79
  store i64 %i.g, ptr %i.e, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %0, ptr %5, align 8, !tbaa !81
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSM_NSB_10_AllocNodeISaINSB_10_Hash_nodeIS9_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  store i64 %i.o, ptr %i.m, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !79
  store i64 %i.s, ptr %i.q, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.v, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.k, ptr %4, align 8, !tbaa !81
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSM_NSB_10_AllocNodeISaINSB_10_Hash_nodeIS9_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr null, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.ab, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !79
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !80
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.ah, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.w, ptr %3, align 8, !tbaa !81
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSM_NSB_10_AllocNodeISaINSB_10_Hash_nodeIS9_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr null, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.an, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !80
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.at, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.ai, ptr %2, align 8, !tbaa !81
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSM_NSB_10_AllocNodeISaINSB_10_Hash_nodeIS9_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.w) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.g ], [ %i.av, %bb.f ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.k) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.au, %bb.e ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #18
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PointabilityTypeELb1EEEEE18_M_deallocate_nodeEPSC_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !29
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #18
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PointabilityTypeESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
