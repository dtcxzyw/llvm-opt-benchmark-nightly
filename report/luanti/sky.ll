Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN3Sky6renderEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ak

.sink.split:                                      ; preds = %bb.w, %bb.af, %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.f
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %1) #31
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !112 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !77
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #30
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %_ZN13ScopeProfilerD2Ev.exit
  ret void

bb.ak:                                            ; preds = %bb.q, %bb.ah, %bb.p
  %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.p ], [ %i.du, %bb.q ], [ %.pn186.pn.pn.pn.pn, %bb.ah ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %1) #31
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ak ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, i8 noundef signext) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_Z18getWickedTimeOfDayf(float noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = fcmp nsz ogt float %0, 2.075000e-01
  %i.b = fcmp nsz olt float %0, 7.925000e-01
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fadd nsz float %0, -2.075000e-01
  %i.d = fdiv nsz float %i.c, f0x3F15C290
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %i.d, float 5.000000e-01, float 2.500000e-01)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = fcmp nsz olt float %0, 5.000000e-01
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = fdiv nnan nsz float %0, 2.075000e-01
  %i.h = fmul nnan nsz float %i.g, 2.500000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = fsub nsz float 1.000000e+00, %0
  %i.j = fdiv nsz float %i.i, -2.075000e-01
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.j, float 2.500000e-01, float 1.000000e+00)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi nsz float [ %i.e, %bb.b ], [ %i.h, %bb.d ], [ %i.k, %bb.e ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Sky10draw_starsEPN5video12IVideoDriverEf(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.core::CMatrix4", align 16   ; 8 uses
  %4 = alloca %"class.core::CMatrix4", align 16   ; 7 uses
  %i.a = fcmp nsz olt float %2, 5.000000e-01
  %i.b = fsub nsz float 1.000000e+00, %2
  %i.c = select nsz i1 %i.a, float %2, float %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.e = load float, ptr %i.d, align 8, !tbaa !37 ; 2 uses
  %i.f = fcmp nsz olt float %i.e, 0.000000e+00
  %i.g = select i1 %i.f, float 0.000000e+00, float %i.e ; 2 uses
  %i.h = fcmp nsz olt float %i.g, 1.000000e+00
  %i.i = select i1 %i.h, float %i.g, float 1.000000e+00 ; 2 uses
  %i.j = tail call nsz noundef float @llvm.fabs.f32(float %i.c)
  %i.k = fsub nsz float 2.500000e-01, %i.j
  %i.l = fmul nsz float %i.k, 2.000000e+01        ; 2 uses
  %i.m = fcmp nsz olt float %i.l, %i.i
  %i.n = select i1 %i.m, float %i.i, float %i.l   ; 2 uses
  %i.o = fcmp nsz olt float %i.n, 1.000000e+00
  %i.p = select i1 %i.o, float %i.n, float 1.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %.sroa.01.0.copyload = load i32, ptr %i.q, align 8, !tbaa !111 ; 4 uses
  %i.r = lshr i32 %.sroa.01.0.copyload, 24
  %i.s = uitofp nsz nneg i32 %i.r to float
  %i.t = fmul nnan nsz float %i.s, f0x3B808081
  %i.u = fmul nsz float %i.t, %i.p                ; 2 uses
  %i.v = fcmp nsz ugt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = and i32 %.sroa.01.0.copyload, 255
  %i.x = uitofp nsz nneg i32 %i.w to float
  %i.y = lshr i32 %.sroa.01.0.copyload, 8
  %i.z = lshr i32 %.sroa.01.0.copyload, 16
  %i.aa = and i32 %i.y, 255
  %i.ab = uitofp nsz nneg i32 %i.aa to float
  %i.ac = and i32 %i.z, 255
  %i.ad = uitofp nsz nneg i32 %i.ac to float
  %i.ae = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> poison, float %i.x, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.u, i64 3
  %i.ai = shufflevector <4 x float> %i.af, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = fmul nsz <4 x float> %i.ai, <float f0x3B808081, float f0x3B808081, float f0x3B808081, float 1.000000e+00>
  %i.ak = fmul nsz <4 x float> %i.aj, splat (float 2.550000e+02)
  %i.al = fadd nsz <4 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = tail call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.al)
  %i.an = fptosi <4 x float> %i.am to <4 x i32>
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ap = trunc <4 x i32> %i.ao to <4 x i8>
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <4 x i8> %i.ap, ptr %i.ar, align 4, !tbaa !111
  %i.as = fadd nsz float %2, -2.500000e-01
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.au = load float, ptr %i.at, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.av = load ptr, ptr %1, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.ay, i64 64, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bc = load <4 x float>, ptr %3, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.bd = load <4 x float>, ptr %i.az, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.be = load <4 x float>, ptr %i.ba, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.bf = load <4 x float>, ptr %i.bb, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bj = fpext nsz float %i.as to double
  %i.bk = fmul nsz double %i.bj, f0x401921FB54442D18
  %i.bl = fptrunc nsz double %i.bk to float
  %i.bm = fpext nsz float %i.bl to double
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.bm) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.bn = fmul nsz double %sin.i, 0.000000e+00    ; 4 uses
  %i.bo = insertelement <2 x double> poison, double %cos.i, i64 0 ; 2 uses
  %i.bp = insertelement <2 x double> %i.bo, double %sin.i, i64 1
  %i.bq = fneg nsz double %i.bn
  %i.br = fneg nsz double %sin.i
  %i.bs = fpext nsz float %i.au to double
  %i.bt = fmul nsz double %i.bs, f0x400921FB54442D18
  %i.bu = fdiv nsz double %i.bt, 1.800000e+02
  %i.bv = fptrunc nsz double %i.bu to float
  %i.bw = fpext nsz float %i.bv to double
  %sincos.i13 = tail call nsz { double, double } @llvm.sincos.f64(double %i.bw) ; 2 uses
  %cos.i15 = extractvalue { double, double } %sincos.i13, 1 ; 3 uses
  %i.bx = insertelement <2 x double> %i.bo, double %cos.i15, i64 1
  %i.by = fsub nsz <2 x double> splat (double 1.000000e+00), %i.bx ; 6 uses
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul nsz <2 x double> %i.bz, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> zeroinitializer, <2 x double> %i.bp) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = fptrunc nsz double %i.ce to float
  %i.cg = fsub nsz double %i.cb, %i.bn
  %i.ch = fptrunc nsz double %i.cg to float
  %i.ci = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bn, i64 1
  %i.ck = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> zeroinitializer, <2 x double> %i.cj) ; 2 uses
  %i.cl = shufflevector <2 x double> %i.cd, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %i.cm = fptrunc nsz <2 x double> %i.cl to <2 x float> ; 2 uses
  %i.cn = fadd nsz double %i.bn, %i.cb
  %i.co = fptrunc nsz double %i.cn to float
  %sin.i14 = extractvalue { double, double } %sincos.i13, 0 ; 3 uses
  %i.cp = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x double> %i.cp, double %sin.i14, i64 1
  %i.cr = fmul nsz <2 x double> %i.cq, zeroinitializer ; 6 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 1 ; 2 uses
  %i.ct = insertelement <2 x double> %i.cr, double %i.bq, i64 0
  %i.cu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer, <2 x double> %i.ct) ; 2 uses
  %i.cv = shufflevector <2 x double> %i.ck, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2>
  %i.cw = fptrunc nsz <2 x double> %i.cv to <2 x float> ; 2 uses
  %i.cx = extractelement <2 x double> %i.by, i64 0
  %i.cy = fadd nsz double %cos.i, %i.cx
  %i.cz = fptrunc nsz double %i.cy to float
  %i.da = fneg nsz double %sin.i14
  %i.db = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dc = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dh = insertelement <4 x float> poison, float %i.co, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dk = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dl = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fneg nsz double %i.cs
  %i.do = extractelement <2 x double> %i.by, i64 1
  %i.dp = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.dq = fsub nsz double %i.dp, %i.cs
  %i.dr = shufflevector <2 x double> %i.by, <2 x double> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.ds = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %sin.i14, i64 1
  %i.du = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> zeroinitializer, <2 x double> %i.dt) ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = fptrunc nsz double %i.dv to float       ; 2 uses
  %i.dx = extractelement <2 x double> %i.du, i64 1
  %i.dy = fptrunc nsz double %i.dx to float       ; 2 uses
  %i.dz = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ea = insertelement <2 x double> %i.dz, double %cos.i15, i64 0
  %i.eb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.ea)
  %i.ec = fptrunc nsz <2 x double> %i.eb to <2 x float> ; 5 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ef = extractelement <2 x float> %i.ec, i64 0
  %i.eg = tail call nsz double @llvm.fmuladd.f64(double %i.dp, double 0.000000e+00, double %i.da)
  %i.eh = fptrunc nsz double %i.eg to float       ; 3 uses
  %i.ei = fadd nsz double %cos.i15, %i.do
  %i.ej = insertelement <2 x double> %i.cu, double %i.ei, i64 0
  %i.ek = fptrunc nsz <2 x double> %i.ej to <2 x float> ; 2 uses
  %i.el = fptrunc nsz double %i.dq to float       ; 2 uses
  %i.em = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.en = insertelement <2 x float> %i.em, float %i.el, i64 0
  %i.eo = fmul nsz <2 x float> %i.en, zeroinitializer
  %i.ep = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> zeroinitializer, <2 x float> %i.eo)
  %i.eq = insertelement <2 x float> %i.em, float %i.eh, i64 1
  %i.er = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> zeroinitializer, <2 x float> %i.ep) ; 2 uses
  %i.es = fmul nsz float %i.dy, 0.000000e+00
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float 0.000000e+00, float %i.es)
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.ef, float 0.000000e+00, float %i.et)
  %i.ev = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.dy, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.el, i64 2
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 3 uses
  %i.ey = fmul nsz <4 x float> %i.db, %i.ex
  %i.ez = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.dw, i64 1
  %i.fa = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.ez, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.fc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.fb, <4 x float> %i.ey)
  %i.fd = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fe = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.fd, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ff = insertelement <4 x float> %i.fe, float %i.eh, i64 3
  %i.fg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.ff, <4 x float> %i.fc) ; 4 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fi = fmul nsz <4 x float> %i.bd, %i.fh
  %i.fj = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.fj, <4 x float> %i.fi)
  %i.fl = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.fl, <4 x float> %i.fk)
  %i.fn = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fo = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.fn, <4 x float> %i.fm)
  store <4 x float> %i.fo, ptr %4, align 16, !tbaa !37, !alias.scope !317
  %i.fp = fmul nsz <4 x float> %i.dd, %i.ex
  %i.fq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.fb, <4 x float> %i.fp)
  %i.fr = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ed, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ft = insertelement <4 x float> %i.fs, float %i.eh, i64 3 ; 2 uses
  %i.fu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.ft, <4 x float> %i.fq) ; 4 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fw = fmul nsz <4 x float> %i.bd, %i.fv
  %i.fx = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.fx, <4 x float> %i.fw)
  %i.fz = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ga = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.fz, <4 x float> %i.fy)
  %i.gb = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.gb, <4 x float> %i.ga)
  store <4 x float> %i.gc, ptr %i.bg, align 16, !tbaa !37, !alias.scope !317
  %i.gd = fmul nsz <4 x float> %i.dj, %i.ex
  %i.ge = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.fb, <4 x float> %i.gd)
  %i.gf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.ft, <4 x float> %i.ge) ; 4 uses
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gh = fmul nsz <4 x float> %i.bd, %i.gg
  %i.gi = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.gi, <4 x float> %i.gh)
  %i.gk = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.gk, <4 x float> %i.gj)
  %i.gm = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.gm, <4 x float> %i.gl)
  store <4 x float> %i.gn, ptr %i.bh, align 16, !tbaa !37, !alias.scope !317
  %i.go = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gp = fmul nsz <4 x float> %i.bd, %i.go
  %i.gq = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.gq, <4 x float> %i.gp)
  %i.gs = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.gt, <4 x float> %i.gr)
  %i.gv = fadd nsz <4 x float> %i.bf, %i.gu
  store <4 x float> %i.gv, ptr %i.bi, align 16, !tbaa !37, !alias.scope !317
  %i.gw = load ptr, ptr %1, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.gz = load ptr, ptr %1, align 8, !tbaa !32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(127) %i.aq)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !157
  %i.he = load ptr, ptr %1, align 8, !tbaa !32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 448
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.hd)
  %i.hh = load ptr, ptr %1, align 8, !tbaa !32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Sky8draw_sunEPN5video12IVideoDriverERKNS0_6SColorES5_f(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, float noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::array", align 4       ; 51 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %5, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 5 uses
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.1.i, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 76 ; 5 uses
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.2.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 108 ; 6 uses
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 116 ; 6 uses
  store i16 0, ptr %i.i, align 4, !tbaa !175
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.ptr.3.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.j, align 4, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 148 ; 6 uses
  store <2 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 156 ; 6 uses
  store i16 0, ptr %i.l, align 4, !tbaa !175
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !161
  %.not = icmp eq ptr %i.n, null
  %i.o = load ptr, ptr %1, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2196 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(127) %i.w)
  %i.x = load float, ptr %i.r, align 4, !tbaa !318 ; 4 uses
  %i.y = fmul nsz float %i.x, 1.190000e-01        ; 5 uses
  %i.z = fmul nsz float %i.x, f0x3DAC0832         ; 5 uses
  %i.aa = fmul nsz float %i.x, 7.000000e-02       ; 5 uses
  %i.ab = fmul nsz float %i.x, 4.900000e-02       ; 5 uses
  %i.ac = load i32, ptr %2, align 4, !tbaa !111   ; 5 uses
  %i.ad = and i32 %i.ac, 16777215                 ; 2 uses
  %i.ae = or disjoint i32 %i.ad, 201326592        ; 4 uses
  %i.af = or disjoint i32 %i.ad, 637534208        ; 4 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !111   ; 4 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 4 uses
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 4 uses
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %4, float 3.600000e+02, float -9.000000e+01) ; 4 uses
  %i.ai = fneg nsz float %i.y                     ; 4 uses
  store float %i.ai, ptr %5, align 4, !tbaa !37
  store float %i.ai, ptr %.sroa.443.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !111
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !37
  store i16 0, ptr %i.c, align 4, !tbaa !176
  store float %i.y, ptr %.ptr.1.i, align 4, !tbaa !37
  store float %i.ai, ptr %.sroa.432.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !37
  store i16 0, ptr %i.f, align 4, !tbaa !176
  store float %i.y, ptr %.ptr.2.i, align 4, !tbaa !37
  store float %i.y, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ae, ptr %i.g, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.ai, ptr %.ptr.3.i, align 4, !tbaa !37
  store float %i.y, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ae, ptr %i.j, align 4, !tbaa !111
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  call void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 4 dereferenceable(160) %5, float noundef 9.000000e+01, float noundef %i.ah)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky8draw_sunEPN5video12IVideoDriverERKNS0_6SColorES5_fE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0), !inline_history !5
  %i.am = fneg nsz float %i.z                     ; 4 uses
  store float %i.am, ptr %5, align 4, !tbaa !37
  store float %i.am, ptr %.sroa.443.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.af, ptr %i.a, align 4, !tbaa !111
end_hunk_0
begin_hunk_1_@_ZN3Sky9draw_moonEPN5video12IVideoDriverERKNS0_6SColorES5_f:bb.a
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.af, ptr %i.g, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.aa, ptr %.ptr.3.i, align 4, !tbaa !37
  store float %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.af, ptr %i.j, align 4, !tbaa !111
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  call void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 4 dereferenceable(160) %5, float noundef -9.000000e+01, float noundef %i.ak)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 360
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky9draw_moonEPN5video12IVideoDriverERKNS0_6SColorES5_fE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0), !inline_history !5
  store float %i.aa, ptr %5, align 4, !tbaa !37
  store float %i.aa, ptr %.sroa.443.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !111
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 4, !tbaa !37
  store i16 0, ptr %i.c, align 4, !tbaa !176
  store float %i.ae, ptr %.ptr.1.i, align 4, !tbaa !37
  store float %i.aa, ptr %.sroa.432.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !111
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 4, !tbaa !37
  store i16 0, ptr %i.f, align 4, !tbaa !176
  store float %i.ae, ptr %.ptr.2.i, align 4, !tbaa !37
  store float %i.ae, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.aj, ptr %i.g, align 4, !tbaa !111
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.aa, ptr %.ptr.3.i, align 4, !tbaa !37
  store float %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.aj, ptr %i.j, align 4, !tbaa !111
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.k, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 760
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(127) %i.au)
  %i.av = load float, ptr %i.r, align 8, !tbaa !319
  %i.aw = fpext nsz float %i.av to double
  %i.ax = fmul nsz double %i.aw, f0x3FB374BC63333333
  %i.ay = fptrunc nsz double %i.ax to float       ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !171
  %.not17 = icmp eq ptr %i.ba, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi i32 [ %i.bc, %bb.d ], [ -1, %bb.c ] ; 4 uses
  %i.bd = fneg nsz float %i.ay                    ; 4 uses
  store float %i.bd, ptr %5, align 4, !tbaa !37
  %.sroa.443.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bd, ptr %.sroa.443.0..sroa_idx.i19, align 4, !tbaa !37
  %.sroa.544.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx.i20, align 4, !tbaa !37
  store i32 %.sroa.0.0, ptr %i.a, align 4, !tbaa !111
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 4, !tbaa !37
  store i16 0, ptr %i.c, align 4, !tbaa !176
  store float %i.ay, ptr %.ptr.1.i, align 4, !tbaa !37
  %.sroa.432.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float %i.bd, ptr %.sroa.432.0..sroa_idx.i28, align 4, !tbaa !37
  %.sroa.533.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx.i29, align 4, !tbaa !37
  store i32 %.sroa.0.0, ptr %i.d, align 4, !tbaa !111
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 4, !tbaa !37
  store i16 0, ptr %i.f, align 4, !tbaa !176
  store float %i.ay, ptr %.ptr.2.i, align 4, !tbaa !37
  %.sroa.421.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %i.ay, ptr %.sroa.421.0..sroa_idx.i38, align 4, !tbaa !37
  %.sroa.522.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx.i39, align 4, !tbaa !37
  store i32 %.sroa.0.0, ptr %i.g, align 4, !tbaa !111
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.bd, ptr %.ptr.3.i, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %5, i64 124
  store float %i.ay, ptr %.sroa.4.0..sroa_idx.i47, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i48, align 4, !tbaa !37
  store i32 %.sroa.0.0, ptr %i.j, align 4, !tbaa !111
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.k, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %4, float 3.600000e+02, float -9.000000e+01)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sink = phi float [ %i.be, %bb.e ], [ %i.ak, %bb.b ]
  call void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 4 dereferenceable(160) %5, float noundef -9.000000e+01, float noundef %.sink)
  %i.bf = load ptr, ptr %1, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 360
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky9draw_moonEPN5video12IVideoDriverERKNS0_6SColorES5_fE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !77
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Sky6updateEfffb10CameraModeff(ptr noundef nonnull align 8 dereferenceable(2368) %0, float noundef %1, float noundef %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !99, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0327 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  tail call void @_ZN3Sky6updateEfffb10CameraModeff(ptr noundef nonnull align 8 dereferenceable(2368) %0, float noundef %1, float noundef %2, float noundef %3, i1 noundef zeroext %4, i32 noundef %5, float noundef %6, float noundef %7)
  %i.d = add nuw nsw i32 %.0327, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !320

bb.d:                                             ; preds = %bb.a
  %i.e = zext i1 %4 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1796
  store float %1, ptr %i.f, align 4, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store float %2, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1804
  store i8 %i.e, ptr %i.h, align 4, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1819
  store i8 0, ptr %i.i, align 1, !tbaa !101
  %i.j = fpext nsz float %2 to double             ; 4 uses
  %i.k = fcmp nsz oge double %i.j, 2.000000e-01
  %i.l = fcmp nsz olt double %i.j, 3.500000e-01
  %i.m = and i1 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1996
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %.sroa.081.0.copyload = load i32, ptr %i.o, align 8, !tbaa !111 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %.sroa.080.0.copyload = load i32, ptr %i.p, align 4, !tbaa !111 ; 4 uses
  %i.q = and i32 %.sroa.080.0.copyload, 255
  %i.r = uitofp nsz nneg i32 %i.q to float
  %i.s = fmul nnan nsz float %i.r, f0x3B808081
  %i.t = lshr i32 %.sroa.080.0.copyload, 24
  %i.u = uitofp nsz nneg i32 %i.t to float
  %i.v = fmul nnan nsz float %i.u, f0x3B808081
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %.sroa.078.0.copyload = load i32, ptr %i.w, align 8, !tbaa !111 ; 4 uses
  %.sroa.077.0.copyload = load i32, ptr %i.n, align 4, !tbaa !111 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2004
  %i.y = lshr i32 %.sroa.080.0.copyload, 16
  %i.z = and i32 %i.y, 255
  %i.aa = uitofp nsz nneg i32 %i.z to float
  %i.ab = lshr i32 %.sroa.080.0.copyload, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = uitofp nsz nneg i32 %i.ac to float
  %i.ae = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = fmul nnan nsz <2 x float> %i.af, splat (float f0x3B808081) ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.x, align 4, !tbaa !111 ; 3 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 1   ; 3 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = and i32 %i.aj, 255
  %i.al = uitofp nsz nneg i32 %i.ak to float
  %i.am = lshr i32 %i.ai, 8
  %i.an = and i32 %i.am, 255
  %i.ao = uitofp nsz nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %i.ar = fmul nnan nsz <2 x float> %i.aq, splat (float f0x3B808081)
  %i.as = and i32 %i.ai, 255
  %i.at = uitofp nsz nneg i32 %i.as to float
  %i.au = lshr <2 x i32> %i.ah, splat (i32 24)
  %i.av = uitofp nsz nneg <2 x i32> %i.au to <2 x float>
  %i.aw = extractelement <2 x i32> %i.ah, i64 0   ; 3 uses
  %i.ax = lshr i32 %i.aw, 16
  %i.ay = and i32 %i.ax, 255
  %i.az = uitofp nsz nneg i32 %i.ay to float
  %i.ba = lshr i32 %i.aw, 8
  %i.bb = and i32 %i.ba, 255
  %i.bc = uitofp nsz nneg i32 %i.bb to float
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.bc, i64 1
  %i.bf = fmul nnan nsz <2 x float> %i.be, splat (float f0x3B808081)
  %i.bg = and i32 %i.aw, 255
  %i.bh = uitofp nsz nneg i32 %i.bg to float
  %i.bi = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul nnan nsz <2 x float> %i.bj, splat (float f0x3B808081)
  %i.bl = fmul nnan nsz <2 x float> %i.av, splat (float f0x3B808081)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2012
  %.sroa.075.0.copyload = load i32, ptr %i.bm, align 4, !tbaa !111 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %.sroa.7261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.bo = load <2 x float>, ptr %.sroa.7261.0..sroa_idx, align 4, !tbaa !37 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.bq = load <2 x float>, ptr %i.bn, align 4, !tbaa !37 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bp, align 4, !tbaa !37
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1916
  %i.bs = load <2 x float>, ptr %.sroa.5255.0..sroa_idx, align 4, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 3 uses
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !169 ; 4 uses
  br i1 %4, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bv = fsub nsz float %2, %i.bu
  %i.bw = tail call nsz noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp nsz olt float %i.bw, 2.000000e-01
  %i.by = fpext nsz float %i.bu to double         ; 2 uses
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = fmul nsz double %i.j, 5.000000e-02
  %i.ca = tail call nsz double @llvm.fmuladd.f64(double %i.by, double f0x3FEE666666666666, double %i.bz)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.cb = fmul nsz double %i.j, 2.000000e-01
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.by, double 8.000000e-01, double %i.cb)
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.cd = fcmp nsz olt float %3, %i.bu
  %i.ce = fpext nsz float %i.bu to double         ; 2 uses
  %i.cf = fpext nsz float %3 to double            ; 2 uses
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cg = fmul nsz double %i.cf, 5.000000e-02
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double f0x3FEE666666666666, double %i.cg)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ci = fmul nsz double %i.cf, 2.000000e-02
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.ce, double f0x3FEF5C28F5C28F5C, double %i.ci)
  br label %bb.n

bb.k:                                             ; preds = %bb.f, %bb.g
  %storemerge326.in = phi double [ %i.cc, %bb.g ], [ %i.ca, %bb.f ]
  %.0117.ph = phi float [ 0.000000e+00, %bb.g ], [ f0x3F733333, %bb.f ] ; 2 uses
  %storemerge326 = fptrunc double %storemerge326.in to float ; 3 uses
  store float %storemerge326, ptr %i.bt, align 8, !tbaa !169
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1816
  store i8 1, ptr %i.ck, align 8, !tbaa !321
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !322
  %i.cn = fmul nsz float %i.cm, 9.800000e-01      ; 2 uses
  br i1 %i.m, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !323
  %i.cq = fmul nsz float %i.cp, 9.800000e-01
  %i.cr = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cn, i64 1
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.cs) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !102
  store <2 x float> %i.ct, ptr %i.co, align 4, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !37
  %i.da = fmul nsz <2 x float> %i.cz, splat (float 9.800000e-01)
  %i.db = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.da) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !324
  %i.de = insertelement <2 x float> %i.cv, float %i.dd, i64 1
  %i.df = fmul nsz <2 x float> %i.de, splat (float 9.800000e-01)
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.df) ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.di = load <2 x float>, ptr %i.dh, align 8
  %i.dj = insertelement <2 x float> %i.di, float %i.cx, i64 1
  %i.dk = fmul nsz <2 x float> %i.dj, splat (float 9.800000e-01)
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.dk) ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dg, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dm, ptr %i.cu, align 4, !tbaa !37
  %i.dn = shufflevector <2 x float> %i.dg, <2 x float> %i.dl, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.db, ptr %i.cy, align 4, !tbaa !37
  store <2 x float> %i.dn, ptr %i.dc, align 4, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.do, align 4, !tbaa !37
  %i.dq = fmul nsz <2 x float> %i.dp, splat (float 9.800000e-01)
  %i.dr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.dq) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.dt = load <2 x float>, ptr %i.ds, align 4, !tbaa !37
  %i.du = fmul nsz <2 x float> %i.dt, splat (float 9.800000e-01)
  %i.dv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.du) ; 2 uses
  store <2 x float> %i.dr, ptr %i.do, align 4, !tbaa !37
  store <2 x float> %i.dv, ptr %i.ds, align 4, !tbaa !37
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.dx = fcmp nsz olt float %2, 1.300000e-01     ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !323
  %i.ea = fmul nsz float %i.dz, 9.800000e-01
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.eb, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !102
  %i.ef = fmul nsz float %i.ee, 9.800000e-01
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %.385.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.385.v.v = and i32 %.385.v.v.v, 255
  %.385.v = uitofp nneg i32 %.385.v.v to float
  %.386.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.386.v.v = lshr i32 %.386.v.v.v, 24
  %.386.v = uitofp nneg i32 %.386.v.v to float
  %.386 = fmul nnan nsz float %.386.v, f0x3B808081
  %.389.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.389.v.v = and i32 %.389.v.v.v, 255
  %.389.v = uitofp nneg i32 %.389.v.v to float
  %.390.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.390.v.v = lshr i32 %.390.v.v.v, 24
  %.390.v = uitofp nneg i32 %.390.v.v to float
  %.390 = fmul nnan nsz float %.390.v, f0x3B808081
  %..v.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %..v.v.v = lshr i32 %..v.v.v.v, 16
  %..v.v = and i32 %..v.v.v, 255
  %..v = uitofp nneg i32 %..v.v to float
  %.384.v.v.v.v = select i1 %i.dx, i32 %.sroa.078.0.copyload, i32 %.sroa.081.0.copyload
  %.384.v.v.v = lshr i32 %.384.v.v.v.v, 8
  %.384.v.v = and i32 %.384.v.v.v, 255
  %.384.v = uitofp nneg i32 %.384.v.v to float
  %i.ej = insertelement <2 x float> poison, float %..v, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %.384.v, i64 1
  %i.el = fmul nnan nsz <2 x float> %i.ek, splat (float f0x3B808081)
  %i.em = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.cn, i64 1
  %i.eo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.en) ; 2 uses
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %.386, float f0x3CA3D700, float %i.ef)
  store <2 x float> %i.eo, ptr %i.dy, align 4, !tbaa !37
  %.387.v.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.387.v.v.v = lshr i32 %.387.v.v.v.v, 16
  %.387.v.v = and i32 %.387.v.v.v, 255
  %.387.v = uitofp nneg i32 %.387.v.v to float
  %.388.v.v.v.v = select i1 %i.dx, i32 %.sroa.075.0.copyload, i32 %.sroa.077.0.copyload
  %.388.v.v.v = lshr i32 %.388.v.v.v.v, 8
  %.388.v.v = and i32 %.388.v.v.v, 255
  %.388.v = uitofp nneg i32 %.388.v.v to float
  %i.eq = insertelement <2 x float> poison, float %.387.v, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.388.v, i64 1
  %i.es = fmul nnan nsz <2 x float> %i.er, splat (float f0x3B808081)
  %i.et = load <2 x float>, ptr %i.eg, align 4, !tbaa !37
  %i.eu = fmul nsz <2 x float> %i.et, splat (float 9.800000e-01)
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.eu) ; 2 uses
  %i.ew = load float, ptr %i.eh, align 4, !tbaa !324
  %i.ex = insertelement <2 x float> poison, float %.385.v, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %.389.v, i64 1
  %i.ez = fmul nnan nsz <2 x float> %i.ey, splat (float f0x3B808081)
  %i.fa = insertelement <2 x float> %i.ec, float %i.ew, i64 1
  %i.fb = fmul nsz <2 x float> %i.fa, splat (float 9.800000e-01)
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fb) ; 3 uses
  %.sroa.3.12.vec.insert.i156 = insertelement <2 x float> %i.fc, float %i.ep, i64 1
  store <2 x float> %.sroa.3.12.vec.insert.i156, ptr %i.eb, align 4, !tbaa !37
  %i.fd = load float, ptr %i.ei, align 8, !tbaa !102
  %i.fe = fmul nsz float %i.fd, 9.800000e-01
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %.390, float f0x3CA3D700, float %i.fe)
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.3.12.vec.insert.i162 = insertelement <2 x float> %i.fg, float %i.ff, i64 1
  store <2 x float> %i.ev, ptr %i.eg, align 4, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store <2 x float> %.sroa.3.12.vec.insert.i162, ptr %i.fh, align 4, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.fi, align 4, !tbaa !37
  %i.fk = fmul nsz <2 x float> %i.fj, splat (float 9.800000e-01)
  %i.fl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fk) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fm, align 4, !tbaa !37
  %i.fo = fmul nsz <2 x float> %i.fn, splat (float 9.800000e-01)
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fo) ; 2 uses
  store <2 x float> %i.fl, ptr %i.fi, align 4, !tbaa !37
  store <2 x float> %i.fp, ptr %i.fm, align 4, !tbaa !37
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i
  %storemerge.in = phi double [ %i.cj, %bb.j ], [ %i.ch, %bb.i ]
  %storemerge = fptrunc double %storemerge.in to float ; 2 uses
  store float %storemerge, ptr %i.bt, align 8, !tbaa !169
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1820 ; 2 uses
  %i.ft = load <2 x float>, ptr %i.fs, align 4, !tbaa !37
  %i.fu = fmul nsz <2 x float> %i.ft, splat (float 9.800000e-01)
  %i.fv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.fu) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 2 uses
  %i.fx = load <2 x float>, ptr %i.fw, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.fz = load <2 x float>, ptr %i.fy, align 8
  store <2 x float> %i.fv, ptr %i.fs, align 4, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1836 ; 2 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 4, !tbaa !37
  %i.gc = fmul nsz <2 x float> %i.gb, splat (float 9.800000e-01)
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gc) ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1844 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !324
  %i.gg = insertelement <2 x float> %i.fx, float %i.gf, i64 1
  %i.gh = fmul nsz <2 x float> %i.gg, splat (float 9.800000e-01)
  %i.gi = insertelement <2 x float> poison, float %i.s, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gh) ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.gm = load float, ptr %i.gl, align 8, !tbaa !102
  %i.gn = insertelement <2 x float> %i.fz, float %i.gm, i64 1
  %i.go = fmul nsz <2 x float> %i.gn, splat (float 9.800000e-01)
  %i.gp = insertelement <2 x float> poison, float %i.v, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.go) ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gk, <2 x float> %i.gr, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.gs, ptr %i.fw, align 4, !tbaa !37
  %i.gt = shufflevector <2 x float> %i.gk, <2 x float> %i.gr, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.gd, ptr %i.ga, align 4, !tbaa !37
  store <2 x float> %i.gt, ptr %i.ge, align 4, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1852 ; 2 uses
  %i.gv = load <2 x float>, ptr %i.gu, align 4, !tbaa !37
  %i.gw = fmul nsz <2 x float> %i.gv, splat (float 9.800000e-01)
  %i.gx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.gw) ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1860 ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gy, align 4, !tbaa !37
  %i.ha = fmul nsz <2 x float> %i.gz, splat (float 9.800000e-01)
  %i.hb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> splat (float f0x3CA3D700), <2 x float> %i.ha) ; 2 uses
  store <2 x float> %i.gx, ptr %i.gu, align 4, !tbaa !37
  store <2 x float> %i.hb, ptr %i.gy, align 4, !tbaa !37
  store i8 0, ptr %i.fr, align 8, !tbaa !321
  %i.hc = extractelement <2 x float> %i.hb, i64 0
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.hd = phi float [ %i.dw, %bb.l ], [ %i.fq, %bb.m ], [ %i.hc, %bb.n ]
  %i.he = phi float [ %storemerge326, %bb.l ], [ %storemerge326, %bb.m ], [ %storemerge, %bb.n ]
  %.0117295 = phi float [ %.0117.ph, %bb.l ], [ %.0117.ph, %bb.m ], [ f0x3F733333, %bb.n ] ; 2 uses
  %i.hf = phi <2 x float> [ %i.dr, %bb.l ], [ %i.fl, %bb.m ], [ %i.gx, %bb.n ]
  %i.hg = phi <2 x float> [ %i.db, %bb.l ], [ %i.ev, %bb.m ], [ %i.gd, %bb.n ]
  %i.hh = phi <2 x float> [ %i.ct, %bb.l ], [ %i.eo, %bb.m ], [ %i.fv, %bb.n ]
  %i.hi = phi <2 x float> [ %i.dg, %bb.l ], [ %i.fc, %bb.m ], [ %i.gk, %bb.n ]
  %i.hj = fmul nsz <2 x float> %i.hh, splat (float 2.550000e+02)
  %i.hk = fmul nsz <2 x float> %i.hi, splat (float 2.550000e+02)
  %i.hl = fadd nsz <2 x float> %i.hj, splat (float 5.000000e-01)
  %i.hm = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hl)
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  %i.ho = and <2 x i32> %i.hn, splat (i32 255)
  %i.hp = uitofp nsz nneg <2 x i32> %i.ho to <2 x float>
  %i.hq = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hs = fmul nsz <2 x float> %i.hr, %i.hp
  %i.ht = fptoui <2 x float> %i.hs to <2 x i32>   ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1868 ; 2 uses
  %i.hv = fmul nsz <2 x float> %i.hg, splat (float 2.550000e+02)
  %i.hw = fadd nsz <2 x float> %i.hv, splat (float 5.000000e-01)
  %i.hx = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.hw)
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>
  %i.hz = and <2 x i32> %i.hy, splat (i32 255)
  %i.ia = uitofp nsz nneg <2 x i32> %i.hz to <2 x float>
  %i.ib = fmul nsz <2 x float> %i.hr, %i.ia
  %i.ic = fptoui <2 x float> %i.ib to <2 x i32>   ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.ie = fadd nsz <2 x float> %i.hk, splat (float 5.000000e-01)
  %i.if = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ie)
  %i.ig = fptosi <2 x float> %i.if to <2 x i32>
  %i.ih = and <2 x i32> %i.ig, splat (i32 255)
  %i.ii = uitofp nsz nneg <2 x i32> %i.ih to <2 x float>
  %i.ij = fmul nsz <2 x float> %i.hr, %i.ii
  %i.ik = fptoui <2 x float> %i.ij to <2 x i32>
  %i.il = shufflevector <2 x i32> %i.ht, <2 x i32> %i.ic, <2 x i32> <i32 0, i32 2>
  %i.im = shl <2 x i32> %i.il, splat (i32 16)
  %i.in = shufflevector <2 x i32> %i.ht, <2 x i32> %i.ic, <2 x i32> <i32 1, i32 3>
  %i.io = shl <2 x i32> %i.in, splat (i32 8)
  %i.ip = and <2 x i32> %i.io, splat (i32 65280)
  %i.iq = and <2 x i32> %i.ik, splat (i32 255)    ; 3 uses
  %i.ir = or disjoint <2 x i32> %i.ip, %i.im
  %i.is = or disjoint <2 x i32> %i.ir, %i.iq
  %i.it = or <2 x i32> %i.is, splat (i32 -16777216)
  store <2 x i32> %i.it, ptr %i.hu, align 4, !tbaa !111
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1818
  %i.iv = load i8, ptr %i.iu, align 2, !tbaa !153, !range !119, !noundef !120
  %i.iw = trunc nuw i8 %i.iv to i1                ; 2 uses
  br i1 %i.iw, label %bb.p, label %.thread317

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %bb.q, label %_ZN3Sky15m_horizon_blendEv.exit198

bb.q:                                             ; preds = %bb.p
  %i.ix = fcmp nsz ult float %1, 5.000000e-01
  %i.iy = fsub nnan nsz float 1.000000e+00, %1
  %.in.i = select i1 %i.ix, float %1, float %i.iy
  %i.iz = fmul nsz float %.in.i, 2.000000e+00     ; 3 uses
  %i.ja = fpext nsz float %i.iz to double         ; 7 uses
  %i.jb = fcmp nsz ugt double %i.ja, 3.000000e-01
  br i1 %i.jb, label %bb.r, label %_ZN3Sky15m_horizon_blendEv.exit198

bb.r:                                             ; preds = %bb.q
  %i.jc = fcmp nsz ugt double %i.ja, 4.000000e-01
  br i1 %i.jc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jd = fadd nnan nsz double %i.ja, -3.000000e-01
  br label %_ZN3Sky15m_horizon_blendEv.exit

bb.t:                                             ; preds = %bb.r
  %i.je = fcmp nsz ugt float %i.iz, 5.000000e-01
  br i1 %i.je, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jf = fsub nnan nsz double 5.000000e-01, %i.ja
  br label %_ZN3Sky15m_horizon_blendEv.exit

_ZN3Sky15m_horizon_blendEv.exit:                  ; preds = %bb.s, %bb.u
  %.1.i.in.in = phi double [ %i.jd, %bb.s ], [ %i.jf, %bb.u ]
  %.1.i.in = fmul nnan nsz double %.1.i.in.in, 1.000000e+01
  %.1.i = fptrunc double %.1.i.in to float
  %i.jg = fcmp nsz une float %.1.i, 0.000000e+00
  br i1 %i.jg, label %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit, label %bb.z

_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit:           ; preds = %_ZN3Sky15m_horizon_blendEv.exit
  %i.jh = icmp sgt i32 %5, 2
  %i.ji = select i1 %i.jh, i32 -1, i32 1
  %i.jj = sitofp nsz i32 %i.ji to float
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.jj, float 9.000000e+01)
  %i.jl = frem nsz float %i.jk, 3.600000e+02      ; 3 uses
  %i.jm = fcmp nsz olt float %i.jl, 0.000000e+00
  %i.jn = fadd nsz float %i.jl, 3.600000e+02
  %i.jo = select nsz i1 %i.jm, float %i.jn, float %i.jl ; 3 uses
  %i.jp = fcmp nsz ogt float %i.jo, 1.800000e+02
  %i.jq = fsub nsz float 3.600000e+02, %i.jo
  %.0119 = select nsz i1 %i.jp, float %i.jq, float %i.jo
  %i.jr = tail call nsz noundef float @llvm.fabs.f32(float %7)
  %i.js = fsub nsz float 9.000000e+01, %i.jr
  %i.jt = insertelement <2 x float> poison, float %.0119, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.js, i64 1
  %i.jv = fdiv nsz <2 x float> %i.ju, <float 1.800000e+02, float 9.000000e+01>
  %i.jw = fpext nsz <2 x float> %i.jv to <2 x double> ; 2 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 0
  %i.jy = fneg nsz double %i.jx
  %i.jz = tail call nsz double @llvm.fmuladd.f64(double %i.jy, double 1.375000e+00, double 1.000000e+00) ; 3 uses
  %i.ka = fcmp nsz olt double %i.jz, 0.000000e+00
  %i.kb = fcmp nsz ogt double %i.jz, f0x3FE745D1745D1746
  %..i = select nsz i1 %i.kb, double f0x3FE745D1745D1746, double %i.jz
  %i.kc = fmul nsz double %..i, 1.375000e+00
  %i.kd = select i1 %i.ka, double 0.000000e+00, double %i.kc
  %i.ke = fptrunc nsz double %i.kd to float
  %i.kf = fpext nsz float %i.ke to double         ; 2 uses
  %i.kg = fsub nsz double 5.000000e-01, %i.kf
  %i.kh = extractelement <2 x double> %i.jw, i64 1
  %i.ki = fmul nsz double %i.kh, 1.500000e+00     ; 2 uses
  %i.kj = fcmp nsz olt double %i.ki, 1.000000e+00
  %i.kk = select nsz i1 %i.kj, double %i.ki, double 1.000000e+00
  %i.kl = fsub nsz double 1.000000e+00, %i.kk
  %i.km = tail call nsz double @llvm.fmuladd.f64(double %i.kg, double %i.kl, double %i.kf)
  %i.kn = fptrunc nsz double %i.km to float       ; 2 uses
  %i.ko = fcmp nsz ogt float %1, 5.000000e-01
  %i.kp = fsub nsz float 1.000000e+00, %i.kn
  %.1 = select nsz i1 %i.ko, float %i.kp, float %i.kn ; 2 uses
  %i.kq = fmul nsz float %2, 3.000000e+00         ; 3 uses
  %i.kr = fcmp nsz olt float %i.kq, 2.000000e-01
  %i.ks = fcmp nsz ogt float %i.kq, 1.000000e+00
  %..i189 = select nsz i1 %i.ks, float 1.000000e+00, float %i.kq
  %.0.i190 = select nsz i1 %i.kr, float 2.000000e-01, float %..i189 ; 10 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !171
  %.not = icmp ne ptr %i.ku, null
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.kw = load i8, ptr %i.kv, align 8, !range !119
  %i.kx = trunc nuw i8 %i.kw to i1                ; 2 uses
  %or.cond = select i1 %.not, i1 %i.kx, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !98 ; 3 uses
  %i.la = lshr i32 %i.kz, 16
  %i.lb = and i32 %i.la, 255
  %i.lc = uitofp nsz nneg i32 %i.lb to float
  %i.ld = fmul nsz float %.0.i190, %i.lc
  %i.le = fdiv nsz float %i.ld, 2.550000e+02
  %i.lf = lshr i32 %i.kz, 8
  %i.lg = and i32 %i.kz, 255
  %i.lh = uitofp nsz nneg i32 %i.lg to float
  %i.li = and i32 %i.lf, 255
  %i.lj = uitofp nsz nneg i32 %i.li to float
  %i.lk = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.lh, i64 1
  %i.lo = fmul nsz <2 x float> %i.ll, %i.ln
  %i.lp = fdiv nsz <2 x float> %i.lo, splat (float 2.550000e+02)
  br label %bb.x

bb.w:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  br i1 %i.kx, label %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, label %.thread298

_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.w
  %i.lq = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.lr = fcmp nsz olt float %2, 2.500000e-01
  %i.ls = fcmp nsz ogt float %2, 7.500000e-01
  %..i191 = select nsz i1 %i.ls, float 7.500000e-01, float %2
  %.0.i192 = select nsz i1 %i.lr, float 2.500000e-01, float %..i191
  %i.lt = fpext nsz float %.0.i192 to double
  %i.lu = fadd nsz double %i.lt, -2.500000e-01
  %i.lv = fmul nsz double %i.lu, 2.000000e+00
  %i.lw = tail call nsz double @llvm.fmuladd.f64(double %i.lv, double 7.500000e-01, double 2.500000e-01)
  %i.lx = fmul nsz double %i.lw, %i.lq
  %i.ly = fcmp nsz olt float %2, 5.000000e-02
  %i.lz = fcmp nsz ogt float %2, 1.500000e-01
  %..i193 = select nsz i1 %i.lz, float 1.500000e-01, float %2
  %.0.i194 = select nsz i1 %i.ly, float 5.000000e-02, float %..i193
  %i.ma = fpext nsz float %.0.i194 to double
  %i.mb = fadd nsz double %i.ma, -5.000000e-02
  %i.mc = fmul nsz double %i.mb, 1.000000e+01
  %i.md = fmul nsz double %i.mc, 6.250000e-01
  %i.me = fptrunc nsz double %i.lx to float       ; 2 uses
  %i.mf = fpext nsz float %i.me to double
  %i.mg = tail call nsz double @llvm.fmuladd.f64(double %i.mf, double 3.750000e-01, double %i.md)
  %i.mh = fmul nsz double %i.mg, %i.lq
  %i.mi = fptrunc nsz double %i.mh to float
  %i.mj = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.me, i64 1
  br label %bb.x

bb.x:                                             ; preds = %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, %bb.v
  %.sroa.0233.0.ph = phi float [ %i.le, %bb.v ], [ %.0.i190, %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.ml = phi <2 x float> [ %i.lp, %bb.v ], [ %i.mk, %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.mm = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.mn = fmul nsz float %.0.i190, 5.000000e-01
  %i.mo = fmul nsz double %i.mm, 6.000000e-01
  %i.mp = fptrunc nsz double %i.mo to float
  %i.mq = fmul nsz double %i.mm, 8.000000e-01
  %i.mr = fptrunc nsz double %i.mq to float
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !172
  %.not128 = icmp eq ptr %i.mt, null
  %i.mu = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mv = insertelement <2 x float> %i.mu, float %i.mp, i64 1
  br i1 %.not128, label %.thread306, label %bb.y

.thread298:                                       ; preds = %bb.w
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.016.0.copyload = load i32, ptr %i.mw, align 8, !tbaa !111 ; 4 uses
  %i.mx = lshr i32 %.sroa.016.0.copyload, 24
  %i.my = uitofp nsz nneg i32 %i.mx to float
  %i.mz = fmul nnan nsz float %i.my, f0x3B808081
  %i.na = fmul nnan nsz float %i.mz, 2.550000e+02
  %i.nb = fadd nsz float %i.na, 5.000000e-01
  %i.nc = tail call nsz float @llvm.floor.f32(float %i.nb)
  %i.nd = fptosi float %i.nc to i32
  %i.ne = and i32 %i.nd, 255
  %i.nf = uitofp nsz nneg i32 %i.ne to float
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !98 ; 3 uses
  %i.ni = lshr i32 %.sroa.016.0.copyload, 16
  %i.nj = and i32 %i.ni, 255
  %i.nk = uitofp nsz nneg i32 %i.nj to float
  %i.nl = fmul nnan nsz float %i.nk, f0x3B808081
  %i.nm = lshr i32 %.sroa.016.0.copyload, 8
  %i.nn = and i32 %.sroa.016.0.copyload, 255
  %i.no = uitofp nsz nneg i32 %i.nn to float
  %i.np = and i32 %i.nm, 255
  %i.nq = uitofp nsz nneg i32 %i.np to float
  %i.nr = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.no, i64 1
  %i.nt = fmul nnan nsz <2 x float> %i.ns, splat (float f0x3B808081)
  %i.nu = lshr i32 %i.nh, 16
  %i.nv = and i32 %i.nu, 255
  %i.nw = uitofp nsz nneg i32 %i.nv to float
  %i.nx = lshr i32 %i.nh, 8
  %i.ny = and i32 %i.nx, 255
  %i.nz = uitofp nsz nneg i32 %i.ny to float
  %i.oa = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nz, i64 1
  %i.oc = fdiv nnan nsz <2 x float> %i.ob, splat (float 2.550000e+02)
  %i.od = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = fmul nsz <2 x float> %i.oe, %i.oc
  %i.og = and i32 %i.nh, 255
  %i.oh = uitofp nsz nneg i32 %i.og to float
  %i.oi = fdiv nnan nsz float %i.oh, 2.550000e+02
  %i.oj = fmul nsz float %.0.i190, %i.oi
  br label %.thread306

bb.y:                                             ; preds = %bb.x
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !98 ; 3 uses
  %i.om = and i32 %i.ol, 255
  %i.on = uitofp nsz nneg i32 %i.om to float
  %i.oo = fmul nsz float %.0.i190, %i.on
  %i.op = fdiv nsz float %i.oo, 2.550000e+02
  %i.oq = lshr i32 %i.ol, 16
  %i.or = and i32 %i.oq, 255
  %i.os = uitofp nsz nneg i32 %i.or to float
  %i.ot = lshr i32 %i.ol, 8
  %i.ou = and i32 %i.ot, 255
  %i.ov = uitofp nsz nneg i32 %i.ou to float
  %i.ow = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.ox = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oy = insertelement <2 x float> poison, float %i.os, i64 0
  %i.oz = insertelement <2 x float> %i.oy, float %i.ov, i64 1
  %i.pa = fmul nsz <2 x float> %i.ox, %i.oz
  %i.pb = fdiv nsz <2 x float> %i.pa, splat (float 2.550000e+02)
  br label %.thread306

.thread306:                                       ; preds = %.thread298, %bb.y, %bb.x
  %.sroa.0233.0359 = phi float [ %.sroa.0233.0.ph, %bb.x ], [ %.sroa.0233.0.ph, %bb.y ], [ %i.nl, %.thread298 ]
  %.sroa.17236.0353 = phi float [ 2.550000e+02, %bb.x ], [ 2.550000e+02, %bb.y ], [ %i.nf, %.thread298 ]
  %.sroa.12.1 = phi nsz float [ %i.mr, %bb.x ], [ %i.op, %bb.y ], [ %i.oj, %.thread298 ]
  %i.pc = phi <2 x float> [ %i.mv, %bb.x ], [ %i.pb, %bb.y ], [ %i.of, %.thread298 ]
  %i.pd = phi <2 x float> [ %i.ml, %bb.x ], [ %i.ml, %bb.y ], [ %i.nt, %.thread298 ] ; 2 uses
  %i.pe = insertelement <2 x float> poison, float %.sroa.0233.0359, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> %i.pd, <2 x i32> <i32 0, i32 2>
  %i.pg = fmul nsz <2 x float> %i.pf, splat (float 2.550000e+02)
  %i.ph = fmul nsz <2 x float> %i.pc, splat (float 2.550000e+02)
  %i.pi = fsub nsz float 1.000000e+00, %.1
  %i.pj = insertelement <2 x float> %i.pd, float %.sroa.12.1, i64 0
  %i.pk = fmul nsz <2 x float> %i.pj, splat (float 2.550000e+02)
  %i.pl = fadd nsz <2 x float> %i.pk, splat (float 5.000000e-01)
  %i.pm = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.pl)
  %i.pn = fptosi <2 x float> %i.pm to <2 x i32>
  %i.po = and <2 x i32> %i.pn, splat (i32 255)
  %i.pp = fadd nsz <2 x float> %i.pg, splat (float 5.000000e-01)
  %i.pq = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.pp)
  %i.pr = fptosi <2 x float> %i.pq to <2 x i32>
  %i.ps = fadd nsz <2 x float> %i.ph, splat (float 5.000000e-01)
  %i.pt = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ps)
  %i.pu = fptosi <2 x float> %i.pt to <2 x i32>
  %i.pv = and <2 x i32> %i.pu, splat (i32 255)
  %i.pw = and <2 x i32> %i.pr, splat (i32 255)
  %i.px = insertelement <4 x float> poison, float %.1, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = shufflevector <2 x i32> %i.po, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.qa = uitofp nsz nneg <4 x i32> %i.pz to <4 x float> ; 2 uses
  %i.qb = insertelement <4 x float> %i.qa, float %.sroa.17236.0353, i64 3
  %i.qc = shufflevector <2 x i32> %i.pw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qd = uitofp nsz nneg <4 x i32> %i.qc to <4 x float>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> %i.qb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qf = fmul nsz <4 x float> %i.py, %i.qe
  %i.qg = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.qh = shufflevector <4 x float> %i.qg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qi = shufflevector <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, <4 x float> %i.qa, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.qj = shufflevector <2 x i32> %i.pv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qk = uitofp nsz nneg <4 x i32> %i.qj to <4 x float>
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> %i.qi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qh, <4 x float> %i.ql, <4 x float> %i.qf)
  %i.qn = fptoui <4 x float> %i.qm to <4 x i32>
  %i.qo = shufflevector <4 x i32> %i.qn, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.qp = trunc <4 x i32> %i.qo to <4 x i8>
  %i.qq = bitcast <4 x i8> %i.qp to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %_ZN3Sky15m_horizon_blendEv.exit, %.thread306
  %.sroa.0242.0314.ph = phi i32 [ -1, %bb.t ], [ -1, %_ZN3Sky15m_horizon_blendEv.exit ], [ %i.qq, %.thread306 ] ; 3 uses
  %i.qr = fcmp nsz ugt double %i.ja, 4.000000e-01
  br i1 %i.qr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qs = fadd nnan nsz double %i.ja, -3.000000e-01
  %i.qt = fmul nnan nsz double %i.qs, 1.000000e+01
  %i.qu = fptrunc nnan nsz double %i.qt to float
  br label %_ZN3Sky15m_horizon_blendEv.exit198

bb.ab:                                            ; preds = %bb.z
  %i.qv = fcmp nsz ugt float %i.iz, 5.000000e-01
  br i1 %i.qv, label %_ZN3Sky15m_horizon_blendEv.exit198, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qw = fsub nnan nsz double 5.000000e-01, %i.ja
  %i.qx = fmul nnan nsz double %i.qw, 1.000000e+01
  %i.qy = fptrunc nnan nsz double %i.qx to float
  br label %_ZN3Sky15m_horizon_blendEv.exit198

_ZN3Sky15m_horizon_blendEv.exit198:               ; preds = %bb.q, %bb.p, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0242.0313 = phi i32 [ %.sroa.0242.0314.ph, %bb.ab ], [ -1, %bb.p ], [ %.sroa.0242.0314.ph, %bb.aa ], [ %.sroa.0242.0314.ph, %bb.ac ], [ -1, %bb.q ] ; 4 uses
  %.1.i196 = phi nsz float [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.p ], [ %i.qu, %bb.aa ], [ %i.qy, %bb.ac ], [ 0.000000e+00, %bb.q ]
  %i.qz = fmul nnan nsz float %.1.i196, 5.000000e-01 ; 2 uses
  %i.ra = fsub nsz float 1.000000e+00, %i.qz
  %i.rb = and <2 x i32> %i.ht, splat (i32 255)
  %i.rc = extractelement <2 x i32> %i.iq, i64 0
  %i.rd = uitofp nsz nneg i32 %i.rc to float
  %i.re = bitcast i32 %.sroa.0242.0313 to <4 x i8>
  %i.rf = shufflevector <4 x i8> %i.re, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.rg = uitofp <4 x i8> %i.rf to <4 x float>    ; 2 uses
  %i.rh = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = fmul nsz <4 x float> %i.ri, %i.rg
  %i.rk = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rm = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.rd, i64 2
  %i.rn = shufflevector <2 x i32> %i.rb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ro = uitofp nsz nneg <4 x i32> %i.rn to <4 x float>
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> %i.rm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rl, <4 x float> %i.rp, <4 x float> %i.rj)
  %i.rr = fptoui <4 x float> %i.rq to <4 x i32>
  %i.rs = shufflevector <4 x i32> %i.rr, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.rt = trunc <4 x i32> %i.rs to <4 x i8>
  store <4 x i8> %i.rt, ptr %i.hu, align 4, !tbaa !111
  br i1 %4, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZN3Sky15m_horizon_blendEv.exit198
  %i.ru = fcmp nsz ult float %1, 5.000000e-01
  %i.rv = fsub nnan nsz float 1.000000e+00, %1
  %.in.i200 = select i1 %i.ru, float %1, float %i.rv
  %i.rw = fmul nsz float %.in.i200, 2.000000e+00  ; 2 uses
  %i.rx = fpext nsz float %i.rw to double         ; 4 uses
  %i.ry = fcmp nsz ugt double %i.rx, 3.000000e-01
  br i1 %i.ry, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.rz = fcmp nsz ugt double %i.rx, 4.000000e-01
  br i1 %i.rz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sa = fadd nnan nsz double %i.rx, -3.000000e-01
  %i.sb = fmul nnan nsz double %i.sa, 1.000000e+01
  %i.sc = fptrunc nnan nsz double %i.sb to float
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.sd = fcmp nsz ugt float %i.rw, 5.000000e-01
  br i1 %i.sd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.se = fsub nnan nsz double 5.000000e-01, %i.rx
  %i.sf = fmul nnan nsz double %i.se, 1.000000e+01
  %i.sg = fptrunc nnan nsz double %i.sf to float
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %_ZN3Sky15m_horizon_blendEv.exit198
  %.1.i199 = phi nsz float [ 0.000000e+00, %_ZN3Sky15m_horizon_blendEv.exit198 ], [ 0.000000e+00, %bb.ad ], [ %i.sc, %bb.af ], [ %i.sg, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.sh = fmul nnan nsz float %.1.i199, 2.500000e-01 ; 2 uses
  %i.si = fsub nsz float 1.000000e+00, %i.sh
  %i.sj = and <2 x i32> %i.ic, splat (i32 255)
  %i.sk = extractelement <2 x i32> %i.iq, i64 1
  %i.sl = uitofp nsz nneg i32 %i.sk to float
  %i.sm = insertelement <4 x float> poison, float %i.sh, i64 0
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.so = fmul nsz <4 x float> %i.sn, %i.rg
  %i.sp = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sr = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.sl, i64 2
  %i.ss = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.st = uitofp nsz nneg <4 x i32> %i.ss to <4 x float>
  %i.su = shufflevector <4 x float> %i.st, <4 x float> %i.sr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sq, <4 x float> %i.su, <4 x float> %i.so)
  %i.sw = fptoui <4 x float> %i.sv to <4 x i32>
  %i.sx = shufflevector <4 x i32> %i.sw, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.sy = trunc <4 x i32> %i.sx to <4 x i8>
  store <4 x i8> %i.sy, ptr %i.id, align 8, !tbaa !111
  br i1 %4, label %bb.ak, label %bb.aq

.thread317:                                       ; preds = %bb.o
  br i1 %4, label %.thread321, label %bb.aq

.thread321:                                       ; preds = %.thread317
  %i.sz = fcmp nsz olt float %2, f0x3F333333
  br i1 %i.sz, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %.thread321
  %i.ta = fmul nnan nsz float %2, 1.300000e+00
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.tb = fcmp nsz ult float %1, 5.000000e-01
  %i.tc = fsub nnan nsz float 1.000000e+00, %1
  %.in.i203 = select i1 %i.tb, float %1, float %i.tc
  %i.td = fmul nsz float %.in.i203, 2.000000e+00  ; 2 uses
  %i.te = fpext nsz float %i.td to double         ; 4 uses
  %i.tf = fcmp nsz ugt double %i.te, 3.000000e-01
  br i1 %i.tf, label %bb.al, label %_ZN3Sky15m_horizon_blendEv.exit204

bb.al:                                            ; preds = %bb.ak
  %i.tg = fcmp nsz ugt double %i.te, 4.000000e-01
  br i1 %i.tg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.th = fadd nnan nsz double %i.te, -3.000000e-01
  %i.ti = fmul nnan nsz double %i.th, 1.000000e+01
  %i.tj = fptrunc nsz double %i.ti to float
  br label %_ZN3Sky15m_horizon_blendEv.exit204

bb.an:                                            ; preds = %bb.al
  %i.tk = fcmp nsz ugt float %i.td, 5.000000e-01
  br i1 %i.tk, label %_ZN3Sky15m_horizon_blendEv.exit204, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tl = fsub nnan nsz double 5.000000e-01, %i.te
  %i.tm = fmul nnan nsz double %i.tl, 1.000000e+01
  %i.tn = fptrunc nsz double %i.tm to float
  br label %_ZN3Sky15m_horizon_blendEv.exit204

_ZN3Sky15m_horizon_blendEv.exit204:               ; preds = %bb.ak, %bb.am, %bb.an, %bb.ao
  %.1.i202 = phi nsz float [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ak ], [ %i.tj, %bb.am ], [ %i.tn, %bb.ao ]
  %i.to = tail call nsz float @llvm.fmuladd.f32(float %.1.i202, float 1.500000e-01, float %2)
  %i.tp = tail call nsz noundef float @llvm.minnum.f32(float %i.to, float 1.000000e+00) ; 2 uses
  %i.tq = fcmp nsz olt float %2, 5.000000e-01
  br i1 %i.tq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN3Sky15m_horizon_blendEv.exit204
  %i.tr = fmul nnan nsz float %2, 1.300000e+00
  %i.ts = tail call nsz noundef float @llvm.maxnum.f32(float %i.tp, float %i.tr)
  br label %bb.aq

bb.aq:                                            ; preds = %.thread317, %bb.ai, %bb.aj, %.thread321, %bb.ap, %_ZN3Sky15m_horizon_blendEv.exit204
  %.sroa.0242.1319 = phi i32 [ %.sroa.0242.0313, %bb.ap ], [ %.sroa.0242.0313, %_ZN3Sky15m_horizon_blendEv.exit204 ], [ -1, %bb.aj ], [ -1, %.thread321 ], [ %.sroa.0242.0313, %bb.ai ], [ -1, %.thread317 ] ; 4 uses
  %.0118 = phi nsz float [ %i.ts, %bb.ap ], [ %i.tp, %_ZN3Sky15m_horizon_blendEv.exit204 ], [ %i.ta, %bb.aj ], [ %2, %.thread321 ], [ %3, %bb.ai ], [ %3, %.thread317 ]
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 1812 ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !325
  %i.tv = fmul nsz float %.0117295, %i.tu
  %i.tw = fpext nsz float %i.tv to double
  %i.tx = fpext nsz float %.0118 to double
  %i.ty = fpext nsz float %.0117295 to double
  %i.tz = fsub nsz double 1.000000e+00, %i.ty
  %i.ua = tail call nsz double @llvm.fmuladd.f64(double %i.tx, double %i.tz, double %i.tw)
  %i.ub = fptrunc nsz double %i.ua to float       ; 3 uses
  store float %i.ub, ptr %i.tt, align 4, !tbaa !325
  %i.uc = fmul nsz float %i.hd, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1876 ; 3 uses
  %i.ue = insertelement <2 x float> poison, float %i.ub, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = fmul nsz <2 x float> %i.hf, %i.uf
  store <2 x float> %i.ug, ptr %i.ud, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1884 ; 3 uses
  store float %i.uc, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store float 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  br i1 %i.iw, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ud, align 4, !tbaa !37
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %i.uh = lshr i32 %.sroa.0242.1319, 16
  %i.ui = lshr i32 %.sroa.0242.1319, 8
  %i.uj = and i32 %i.uh, 255
  %i.uk = uitofp nsz nneg i32 %i.uj to float
  %i.ul = and i32 %i.ui, 255
  %i.um = uitofp nsz nneg i32 %i.ul to float
  %i.un = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.uo = insertelement <2 x float> %i.un, float %i.um, i64 1
  %i.up = fmul nnan nsz <2 x float> %i.uo, splat (float f0x3B808081)
  %i.uq = and i32 %.sroa.0242.1319, 255
  %i.ur = lshr i32 %.sroa.0242.1319, 24
  %i.us = uitofp nsz nneg i32 %i.uq to float
  %i.ut = uitofp nsz nneg i32 %i.ur to float
  %i.uu = insertelement <2 x float> poison, float %i.us, i64 0
  %i.uv = insertelement <2 x float> %i.uu, float %i.ut, i64 1
  %i.uw = fmul nnan nsz <2 x float> %i.uv, splat (float f0x3B808081)
  br i1 %4, label %bb.as, label %_ZN3Sky15m_horizon_blendEv.exit207

bb.as:                                            ; preds = %bb.ar
  %i.ux = fcmp nsz ult float %1, 5.000000e-01
  %i.uy = fsub nnan nsz float 1.000000e+00, %1
  %.in.i206 = select i1 %i.ux, float %1, float %i.uy
  %i.uz = fmul nsz float %.in.i206, 2.000000e+00  ; 2 uses
  %i.va = fpext nsz float %i.uz to double         ; 4 uses
  %i.vb = fcmp nsz ugt double %i.va, 3.000000e-01
  br i1 %i.vb, label %bb.at, label %_ZN3Sky15m_horizon_blendEv.exit207

bb.at:                                            ; preds = %bb.as
  %i.vc = fcmp nsz ugt double %i.va, 4.000000e-01
  br i1 %i.vc, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vd = fadd nnan nsz double %i.va, -3.000000e-01
  %i.ve = fmul nnan nsz double %i.vd, 1.000000e+01
  %i.vf = fptrunc nnan nsz double %i.ve to float
  br label %_ZN3Sky15m_horizon_blendEv.exit207

bb.av:                                            ; preds = %bb.at
  %i.vg = fcmp nsz ugt float %i.uz, 5.000000e-01
  br i1 %i.vg, label %_ZN3Sky15m_horizon_blendEv.exit207, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.vh = fsub nnan nsz double 5.000000e-01, %i.va
  %i.vi = fmul nnan nsz double %i.vh, 1.000000e+01
  %i.vj = fptrunc nnan nsz double %i.vi to float
  br label %_ZN3Sky15m_horizon_blendEv.exit207

_ZN3Sky15m_horizon_blendEv.exit207:               ; preds = %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw
  %.1.i205 = phi nsz float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.as ], [ %i.vf, %bb.au ], [ %i.vj, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.vk = fmul nnan nsz float %.1.i205, 2.500000e-01 ; 2 uses
  %i.vl = fsub nsz float 1.000000e+00, %i.vk
  %i.vm = insertelement <2 x float> poison, float %i.vk, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = fmul nsz <2 x float> %i.up, %i.vn
  %i.vp = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.01.0.copyload, <2 x float> %i.vq, <2 x float> %i.vo)
  %i.vs = fmul nsz <2 x float> %i.uw, %i.vn
  %i.vt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.2.0.copyload, <2 x float> %i.vq, <2 x float> %i.vs)
  store <2 x float> %i.vr, ptr %i.ud, align 4, !tbaa !37
  store <2 x float> %i.vt, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.aq, %_ZN3Sky15m_horizon_blendEv.exit207
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN3Sky15getSunDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2368) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.b = load float, ptr %i.a, align 4, !tbaa !170 ; 6 uses
  %i.c = fcmp nsz ogt float %i.b, 2.075000e-01
  %i.d = fcmp nsz olt float %i.b, 7.925000e-01
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fadd nsz float %i.b, -2.075000e-01
  %i.f = fdiv nsz float %i.e, f0x3F15C290
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float 5.000000e-01, float 2.500000e-01)
  br label %_Z18getWickedTimeOfDayf.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp nsz olt float %i.b, 5.000000e-01
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fdiv nnan nsz float %i.b, 2.075000e-01
  %i.j = fmul nnan nsz float %i.i, 2.500000e-01
  br label %_Z18getWickedTimeOfDayf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = fsub nsz float 1.000000e+00, %i.b
  %i.l = fdiv nsz float %i.k, -2.075000e-01
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 2.500000e-01, float 1.000000e+00)
  br label %_Z18getWickedTimeOfDayf.exit

_Z18getWickedTimeOfDayf.exit:                     ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi nsz float [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  %i.n = tail call nsz float @llvm.fmuladd.f32(float %.0.i, float 3.600000e+02, float -9.000000e+01)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.p = load float, ptr %i.o, align 8, !tbaa !154
  %i.q = fpext nsz float %i.n to double
  %i.r = fmul nsz double %i.q, f0x3F91DF46A2529D39
  %sincos.i3.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.r) ; 2 uses
  %sin.i4.i = extractvalue { double, double } %sincos.i3.i, 0 ; 2 uses
  %cos.i5.i = extractvalue { double, double } %sincos.i3.i, 1 ; 2 uses
  %i.s = fmul nsz double %sin.i4.i, 0.000000e+00
  %i.t = fmul nsz double %cos.i5.i, 0.000000e+00
  %i.u = fadd nsz double %sin.i4.i, %i.t
  %i.v = fptrunc nsz double %i.u to float
  %i.w = fpext nsz float %i.p to double
  %i.x = fmul nsz double %i.w, f0x3F91DF46A2529D39
  %sincos.i6.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.x) ; 2 uses
  %sin.i7.i = extractvalue { double, double } %sincos.i6.i, 0
  %cos.i8.i = extractvalue { double, double } %sincos.i6.i, 1
  %i.y = fpext nsz float %i.v to double
  %i.z = fsub nsz double %cos.i5.i, %i.s
  %i.aa = insertelement <2 x double> poison, double %cos.i8.i, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %sin.i7.i, i64 1 ; 2 uses
  %i.ac = fmul nsz <2 x double> %i.ab, <double f0xBC91A62640000000, double f0x3C91A62640000000>
  %i.ad = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ac) ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.z, i64 0
  %i.ai = fptrunc nsz <2 x double> %i.ah to <2 x float>
  %i.aj = extractelement <2 x double> %i.ag, i64 0
  %i.ak = fptrunc nsz double %i.aj to float
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.ak, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN3Sky16getMoonDirectionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2368) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.b = load float, ptr %i.a, align 4, !tbaa !170 ; 6 uses
  %i.c = fcmp nsz ogt float %i.b, 2.075000e-01
  %i.d = fcmp nsz olt float %i.b, 7.925000e-01
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fadd nsz float %i.b, -2.075000e-01
  %i.f = fdiv nsz float %i.e, f0x3F15C290
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float 5.000000e-01, float 2.500000e-01)
  br label %_Z18getWickedTimeOfDayf.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp nsz olt float %i.b, 5.000000e-01
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = fdiv nnan nsz float %i.b, 2.075000e-01
  %i.j = fmul nnan nsz float %i.i, 2.500000e-01
  br label %_Z18getWickedTimeOfDayf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = fsub nsz float 1.000000e+00, %i.b
  %i.l = fdiv nsz float %i.k, -2.075000e-01
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 2.500000e-01, float 1.000000e+00)
  br label %_Z18getWickedTimeOfDayf.exit

_Z18getWickedTimeOfDayf.exit:                     ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi nsz float [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  %i.n = tail call nsz float @llvm.fmuladd.f32(float %.0.i, float 3.600000e+02, float -9.000000e+01)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.p = load float, ptr %i.o, align 8, !tbaa !154
  %i.q = fpext nsz float %i.n to double
  %i.r = fmul nsz double %i.q, f0x3F91DF46A2529D39
  %sincos.i3.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.r) ; 2 uses
  %sin.i4.i = extractvalue { double, double } %sincos.i3.i, 0 ; 2 uses
  %cos.i5.i = extractvalue { double, double } %sincos.i3.i, 1 ; 2 uses
  %i.s = fmul nsz double %sin.i4.i, -0.000000e+00
  %i.t = fmul nsz double %cos.i5.i, 0.000000e+00
  %i.u = fsub nsz double %i.t, %sin.i4.i
  %i.v = fptrunc nsz double %i.u to float
  %i.w = fpext nsz float %i.p to double
  %i.x = fmul nsz double %i.w, f0x3F91DF46A2529D39
  %sincos.i6.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.x) ; 2 uses
  %sin.i7.i = extractvalue { double, double } %sincos.i6.i, 0
  %cos.i8.i = extractvalue { double, double } %sincos.i6.i, 1
  %i.y = fpext nsz float %i.v to double
  %i.z = fsub nsz double %i.s, %cos.i5.i
  %i.aa = insertelement <2 x double> poison, double %cos.i8.i, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %sin.i7.i, i64 1 ; 2 uses
  %i.ac = fmul nsz <2 x double> %i.ab, <double f0x3CAA793940000000, double f0xBCAA793940000000>
  %i.ad = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.af, <2 x double> %i.ac) ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double %i.z, i64 0
  %i.ai = fptrunc nsz <2 x double> %i.ah to <2 x float>
  %i.aj = extractelement <2 x double> %i.ag, i64 0
  %i.ak = fptrunc nsz double %i.aj to float
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.ak, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Sky13draw_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEffRKNS1_6SColorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2368) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(160) initializes((0, 38), (40, 78), (80, 118), (120, 158)) %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.03.0.copyload = load i32, ptr %4, align 4, !tbaa !111 ; 2 uses
  store float %2, ptr %1, align 4, !tbaa !37
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %2, ptr %.sroa.443.0..sroa_idx, align 4, !tbaa !37
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx, align 4, !tbaa !37
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.03.0.copyload, ptr %.sroa.948.0..sroa_idx, align 4, !tbaa !111
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.1049.0..sroa_idx, align 4, !tbaa !37
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 0, ptr %.sroa.1251.0..sroa_idx, align 4, !tbaa !176
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %3, ptr %i.a, align 4, !tbaa !37
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %2, ptr %.sroa.432.0..sroa_idx, align 4, !tbaa !37
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx, align 4, !tbaa !37
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.sroa.03.0.copyload, ptr %.sroa.937.0..sroa_idx, align 4, !tbaa !111
  %.sroa.1038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.1038.0..sroa_idx, align 4, !tbaa !37
  %.sroa.1240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %.sroa.1240.0..sroa_idx, align 4, !tbaa !176
  %.sroa.01.0.copyload = load i32, ptr %4, align 4, !tbaa !111 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %3, ptr %i.b, align 4, !tbaa !37
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %3, ptr %.sroa.421.0..sroa_idx, align 4, !tbaa !37
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx, align 4, !tbaa !37
  %.sroa.926.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %.sroa.01.0.copyload, ptr %.sroa.926.0..sroa_idx, align 4, !tbaa !111
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  store <2 x float> zeroinitializer, ptr %.sroa.1027.0..sroa_idx, align 4, !tbaa !37
  %.sroa.1229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 0, ptr %.sroa.1229.0..sroa_idx, align 4, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %2, ptr %i.c, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %3, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %.sroa.01.0.copyload, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !111
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 148
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !37
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2368) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(160) %1, float noundef %2, float noundef %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fpext nsz float %2 to double
  %i.b = fmul nsz double %i.a, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.c = fpext nsz float %3 to double
  %i.d = fmul nsz double %i.c, f0x3F91DF46A2529D39
  %sincos.i13 = tail call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin.i14 = extractvalue { double, double } %sincos.i13, 0
  %cos.i15 = extractvalue { double, double } %sincos.i13, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.f = load float, ptr %i.e, align 8, !tbaa !154
  %i.g = fpext nsz float %i.f to double
  %i.h = fmul nsz double %i.g, f0x3F91DF46A2529D39
  %sincos.i16 = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin.i17 = extractvalue { double, double } %sincos.i16, 0
  %cos.i18 = extractvalue { double, double } %sincos.i16, 1
  %i.i = load float, ptr %1, align 4, !tbaa !178
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !177
  %i.l = fpext nsz float %i.i to double
  %i.m = fpext nsz float %i.k to double           ; 2 uses
  %i.n = fneg nsz double %i.m
  %i.o = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.p = insertelement <2 x double> %i.o, double %sin.i, i64 1 ; 5 uses
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = fmul nsz <2 x double> %i.p, %i.r
  %i.t = insertelement <2 x double> poison, double %i.l, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.w = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.v, <2 x double> %i.s) ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 1
  %i.y = fptrunc nsz double %i.x to float
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = fptrunc nsz double %i.z to float
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !179
  %i.ad = fpext nsz float %i.y to double
  %i.ae = fpext nsz float %i.ac to double         ; 2 uses
  %i.af = fneg nsz double %i.ae
  %i.ag = insertelement <2 x double> poison, double %cos.i15, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %sin.i14, i64 1 ; 5 uses
  %i.ai = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.af, i64 1
  %i.ak = fmul nsz <2 x double> %i.ah, %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.ak) ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 1
  %i.aq = fptrunc nsz double %i.ap to float
  %i.ar = extractelement <2 x double> %i.ao, i64 0
  %i.as = fptrunc nsz double %i.ar to float
  store float %i.aq, ptr %1, align 4, !tbaa !178
  %i.at = fpext nsz float %i.as to double
  %i.au = fpext nsz float %i.aa to double         ; 2 uses
  %i.av = fneg nsz double %i.au
  %i.aw = insertelement <2 x double> poison, double %sin.i17, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %cos.i18, i64 1 ; 5 uses
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  %i.ba = fmul nsz <2 x double> %i.ax, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.be = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> %i.ba)
  %i.bf = fptrunc nsz <2 x double> %i.be to <2 x float>
  store <2 x float> %i.bf, ptr %i.ab, align 4, !tbaa !37
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bg = load float, ptr %.0.ptr.1, align 4, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !177
  %i.bj = fpext nsz float %i.bg to double
  %i.bk = fpext nsz float %i.bi to double         ; 2 uses
  %i.bl = fneg nsz double %i.bk
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fmul nsz <2 x double> %i.p, %i.bn
  %i.bp = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.v, <2 x double> %i.bo) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 1
  %i.bt = fptrunc nsz double %i.bs to float
  %i.bu = extractelement <2 x double> %i.br, i64 0
  %i.bv = fptrunc nsz double %i.bu to float
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !179
  %i.by = fpext nsz float %i.bt to double
  %i.bz = fpext nsz float %i.bx to double         ; 2 uses
  %i.ca = fneg nsz double %i.bz
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = fmul nsz <2 x double> %i.ah, %i.cc
  %i.ce = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.an, <2 x double> %i.cd)
  %i.ch = fptrunc nsz <2 x double> %i.cg to <2 x float> ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 1
  store float %i.ci, ptr %.0.ptr.1, align 4, !tbaa !178
  %i.cj = extractelement <2 x float> %i.ch, i64 0
  %i.ck = fpext nsz float %i.cj to double
  %i.cl = fpext nsz float %i.bv to double         ; 2 uses
  %i.cm = fneg nsz double %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cl, i64 1
  %i.cp = fmul nsz <2 x double> %i.ax, %i.co
  %i.cq = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.bd, <2 x double> %i.cp)
  %i.ct = fptrunc nsz <2 x double> %i.cs to <2 x float>
  store <2 x float> %i.ct, ptr %i.bw, align 4, !tbaa !37
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cu = load float, ptr %.0.ptr.2, align 4, !tbaa !178
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !177
  %i.cx = fpext nsz float %i.cu to double
  %i.cy = fpext nsz float %i.cw to double         ; 2 uses
  %i.cz = fneg nsz double %i.cy
  %i.da = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cz, i64 1
  %i.dc = fmul nsz <2 x double> %i.p, %i.db
  %i.dd = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.v, <2 x double> %i.dc) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = fptrunc nsz double %i.dg to float
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = fptrunc nsz double %i.di to float
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !179
  %i.dm = fpext nsz float %i.dh to double
  %i.dn = fpext nsz float %i.dl to double         ; 2 uses
  %i.do = fneg nsz double %i.dn
  %i.dp = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1
  %i.dr = fmul nsz <2 x double> %i.ah, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.an, <2 x double> %i.dr) ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = fptrunc nsz double %i.dv to float
  %i.dx = extractelement <2 x double> %i.du, i64 0
  %i.dy = fptrunc nsz double %i.dx to float
  store float %i.dw, ptr %.0.ptr.2, align 4, !tbaa !178
  %i.dz = fpext nsz float %i.dy to double
  %i.ea = fpext nsz float %i.dj to double         ; 2 uses
  %i.eb = fneg nsz double %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.ea, i64 1
  %i.ee = fmul nsz <2 x double> %i.ax, %i.ed
  %i.ef = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.bd, <2 x double> %i.ee)
  %i.ei = fptrunc nsz <2 x double> %i.eh to <2 x float>
  store <2 x float> %i.ei, ptr %i.dk, align 4, !tbaa !37
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ej = load float, ptr %.0.ptr.3, align 4, !tbaa !178
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.el = load float, ptr %i.ek, align 4, !tbaa !177
  %i.em = fpext nsz float %i.ej to double
  %i.en = fpext nsz float %i.el to double         ; 2 uses
  %i.eo = fneg nsz double %i.en
  %i.ep = insertelement <2 x double> poison, double %i.en, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eo, i64 1
  %i.er = fmul nsz <2 x double> %i.p, %i.eq
  %i.es = insertelement <2 x double> poison, double %i.em, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.v, <2 x double> %i.er) ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 1
  %i.ew = fptrunc nsz double %i.ev to float
  %i.ex = extractelement <2 x double> %i.eu, i64 0
  %i.ey = fptrunc nsz double %i.ex to float
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !179
  %i.fb = fpext nsz float %i.ew to double
  %i.fc = fpext nsz float %i.fa to double         ; 2 uses
  %i.fd = fneg nsz double %i.fc
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1
  %i.fg = fmul nsz <2 x double> %i.ah, %i.ff
  %i.fh = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.an, <2 x double> %i.fg)
  %i.fk = fptrunc nsz <2 x double> %i.fj to <2 x float> ; 2 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 1
  store float %i.fl, ptr %.0.ptr.3, align 4, !tbaa !178
  %i.fm = extractelement <2 x float> %i.fk, i64 0
  %i.fn = fpext nsz float %i.fm to double
  %i.fo = fpext nsz float %i.ey to double         ; 2 uses
  %i.fp = fneg nsz double %i.fo
  %i.fq = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fo, i64 1
  %i.fs = fmul nsz <2 x double> %i.ax, %i.fr
  %i.ft = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %i.bd, <2 x double> %i.fs)
  %i.fw = fptrunc nsz <2 x double> %i.fv to <2 x float>
  store <2 x float> %i.fw, ptr %i.ez, align 4, !tbaa !37
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @_ZL17getTextureAsImageRPN5video6IImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14ITextureSource(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !329    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !159
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !159
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #31, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !329
  br label %bb.d

bb.d:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.p, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %.not.i14 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i14, label %_ZTW10infostream.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.e, %bb.f
  %i.q = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !192, !nonnull !120, !align !193 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !326
  %.v.i = select i1 %i.u, i64 976, i64 984
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.18, ptr %i.a, align 8, !tbaa !194
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !195  ; 5 uses
  %.not.i15 = icmp eq ptr %i.x, null
  br i1 %.not.i15, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.g

bb.g:                                             ; preds = %_ZTW10infostream.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !202
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !195
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.g, %bb.h
  %i.af = phi ptr [ %.pre.i, %bb.h ], [ %i.x, %bb.g ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !104
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ag, i64 noundef %i.ai) ; 0 uses
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !195  ; 5 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.i

bb.i:                                             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  %i.ak = load ptr, ptr %.pr, align 8, !tbaa !32
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.pr, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !202
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i17 = load ptr, ptr %i.v, align 8, !tbaa !195 ; 2 uses
  %.pre = load ptr, ptr %.pre.i17, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre20 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i64 [ %.pre20, %bb.j ], [ %i.am, %bb.i ]
  %i.as = phi ptr [ %.pre.i17, %bb.j ], [ %.pr, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !335 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt16__throw_bad_castv() #34
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !340
  %.not.i1.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 67
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !77
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.av)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.av, i8 noundef signext 10), !inline_history !327
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i = phi i8 [ %i.az, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef signext %.0.i.i.i)
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW10infostream.exit, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bg = load ptr, ptr %2, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef null) ; 6 uses
  %i.bk = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !342 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i18, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30 ; 3 uses
  %.not2.i = icmp eq ptr %i.bm, null
  br i1 %.not2.i, label %bb.p, label %_ZN15RenderingEngine16get_video_driverEv.exit

bb.p:                                             ; preds = %bb.o, %_ZN11StreamProxylsEPFRSoS0_E.exit
  call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #34
  unreachable

_ZN15RenderingEngine16get_video_driverEv.exit:    ; preds = %bb.o
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm), !inline_history !328 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !350
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(112) %i.bj, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 592
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i32 noundef %i.bs, ptr noundef nonnull align 4 dereferenceable(8) %i.bt, ptr noundef %i.bw, i1 noundef zeroext false, i1 noundef zeroext true)
  store ptr %i.ca, ptr %0, align 8, !tbaa !329
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(112) %i.bj)
  br label %bb.q

bb.q:                                             ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Sky17setSunriseTextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.d = load i64, ptr %i.c, align 8, !tbaa !104  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3Sky11updateStarsEv:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %.pre.i51, %bb.k ], [ %i.ak, %bb.j ]
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 16384) ; 0 uses
  br label %_ZN11StreamProxylsIiEERS_OT_.exit

_ZN11StreamProxylsIiEERS_OT_.exit:                ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.10, ptr %i.a, align 8, !tbaa !194
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 16384, ptr %i.n, align 4, !tbaa !156
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !157
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 200) #30
  resume { ptr, i32 } %i.av

bb.n:                                             ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit
  %i.aw = phi i32 [ 16384, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ %i.o, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit ] ; 2 uses
  %i.ax = phi ptr [ %.pre, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ %i.e, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !209 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !210 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 15 uses
  %i.be = shl nuw nsw i32 %i.aw, 2
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 12 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !214
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 40
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !215
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bk
  %i.bs = mul nuw nsw i64 %i.bf, 40
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33 ; 4 uses
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !215 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.bt, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !216, !alias.scope !372
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bu, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cb) #30
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !214
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store ptr %i.cc, ptr %i.bo, align 8, !tbaa !215
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bf
  store ptr %i.cd, ptr %i.bg, align 8, !tbaa !213
  %.pre324 = load i32, ptr %i.n, align 4, !tbaa !156
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ce = phi i32 [ %i.aw, %bb.n ], [ %.pre324, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cf = mul i32 %i.ce, 6
  %i.cg = zext i32 %i.cf to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 16 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.cj = load ptr, ptr %i.bd, align 8, !tbaa !219
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 1
  %i.co = icmp ult i64 %i.cn, %i.cg
  br i1 %i.co, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cl
  %i.ct = shl nuw nsw i64 %i.cg, 1
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #33 ; 4 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 4 uses
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %bb.p, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cu, ptr align 2 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.p, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %.not.i8.i52 = icmp eq ptr %i.cv, null
  br i1 %.not.i8.i52, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dd) #30
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.q, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.cu, ptr %i.bd, align 8, !tbaa !219
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !220
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cg
  store ptr %i.df, ptr %i.ch, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !221 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit, %bb.r
  %i.dl = phi i64 [ %i.dk, %bb.r ], [ %i.dh, %_ZNSt6vectorItSaItEE7reserveEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dl, i64 noundef -2720673578348880933)
  %i.dm = load i32, ptr %i.n, align 4, !tbaa !156
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2292
  %i.do = load float, ptr %i.dn, align 4, !tbaa !373
  %i.dp = fpext nsz float %i.do to double
  %i.dq = fmul nsz double %i.dp, 3.000000e-03
  %i.dr = fptrunc nsz double %i.dq to float       ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dy = fneg nsz float %i.dr                    ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 9 uses
  %i.ee = insertelement <2 x float> poison, float %i.dr, i64 0 ; 3 uses
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eg = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ei = insertelement <2 x float> %i.ee, float %i.dy, i64 1
  %i.ej = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

.preheader:                                       ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108
  %i.ek = icmp eq i32 %i.jk, 0
  br i1 %i.ek, label %._crit_edge, label %.lr.ph319

.lr.ph319:                                        ; preds = %.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 13 uses
  %.pre325 = load ptr, ptr %i.el, align 8, !tbaa !220
  %.pre326 = load ptr, ptr %i.ch, align 8, !tbaa !218
  br label %bb.ak

bb.t:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108
  %.045317 = phi i16 [ 0, %.lr.ph ], [ %i.ji, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.em = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.en = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.eo = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.ep = sitofp nsz i32 %i.eo to float
  %i.eq = insertelement <2 x i32> poison, i32 %i.em, i64 0
  %i.er = insertelement <2 x i32> %i.eq, i32 %i.en, i64 1
  %i.es = sitofp nsz <2 x i32> %i.er to <2 x float>
  store <2 x float> %i.es, ptr %2, align 8, !tbaa !37
  store float %i.ep, ptr %i.ds, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.dt, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.du, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.dv, align 8, !tbaa !37
  store float 1.000000e+00, ptr %i.dw, align 4, !tbaa !37
  store float 1.000000e+00, ptr %3, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.dx, align 8, !tbaa !177
  %i.et = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.eu = load <1 x float>, ptr %i.eb, align 8
  %i.ev = load <1 x float>, ptr %i.ec, align 8
  %i.ew = load float, ptr %i.dv, align 8, !tbaa !37 ; 3 uses
  %i.ex = shufflevector <1 x float> %i.eu, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ey = shufflevector <1 x float> %i.ev, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ez = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ex, <2 x float> %i.ey) ; 3 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 1
  %i.fb = call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.ew, float %i.fa) ; 2 uses
  %i.fc = extractelement <2 x float> %i.ez, i64 0
  %i.fd = call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.ew, float %i.fc) ; 2 uses
  %i.fe = load <2 x float>, ptr %3, align 8, !tbaa !37 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.dz, align 8, !tbaa !37 ; 2 uses
  %i.fg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.fe, <2 x float> %i.ff) ; 2 uses
  %i.fh = load <2 x float>, ptr %i.ea, align 8, !tbaa !37 ; 4 uses
  %i.fi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.fh, <2 x float> %i.fg) ; 2 uses
  %i.fj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fe, <2 x float> %i.ff) ; 2 uses
  %i.fk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.fh, <2 x float> %i.fj) ; 2 uses
  %i.fl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fh, <2 x float> %i.fj) ; 2 uses
  %i.fm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fh, <2 x float> %i.fg) ; 2 uses
  %i.fn = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.fo, <2 x float> %i.ez) ; 4 uses
  %i.fq = load ptr, ptr %i.ed, align 8, !tbaa !215 ; 8 uses
  %i.fr = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not.i.i65, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.fi, ptr %i.fq, align 4, !tbaa !37
  %.sroa.0256.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store float %i.fb, ptr %.sroa.0256.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5257.0..sroa_idx, i8 0, i64 26, i1 false)
  store ptr %i.fs, ptr %i.ed, align 8, !tbaa !215
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.ft = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.w, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.fy = sdiv exact i64 %i.fw, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 230584300921369395)
  %i.gc = select i1 %i.ga, i64 230584300921369395, i64 %i.gb ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.gd = mul nuw nsw i64 %i.gc, 40
  %i.ge = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #33 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw ; 3 uses
  store <2 x float> %i.fi, ptr %i.gf, align 4, !tbaa !37
  %.sroa.0256.sroa.5.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store float %i.fb, ptr %.sroa.0256.sroa.5.0..sroa_idx311, align 4, !tbaa !37
  %.sroa.5257.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ft, %i.fq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5257.0..sroa_idx258, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i ], [ %i.ge, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i ], [ %i.ft, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !216, !alias.scope !374
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.fq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ge, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.gh, %.lr.ph.i.i.i.i.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.gj = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.gl) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ge, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.gi, ptr %i.ed, align 8, !tbaa !215
  %i.gm = getelementptr inbounds nuw [40 x i8], ptr %i.ge, i64 %i.gc ; 2 uses
  store ptr %i.gm, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.u, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.gn = phi ptr [ %i.fr, %bb.u ], [ %i.gm, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 5 uses
  %i.go = phi ptr [ %i.fs, %bb.u ], [ %i.gi, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 5 uses
  %.not.i.i67 = icmp eq ptr %i.go, %i.gn
  br i1 %.not.i.i67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit
  store <2 x float> %i.fk, ptr %i.go, align 4, !tbaa !37
  %.sroa.0224.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store float %i.fd, ptr %.sroa.0224.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5225.0..sroa_idx, i8 0, i64 26, i1 false)
  store ptr %i.gp, ptr %i.ed, align 8, !tbaa !215
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80

bb.z:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit
  %i.gq = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = ptrtoint ptr %i.gq to i64               ; 2 uses
  %i.gt = sub i64 %i.gr, %i.gs                    ; 3 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.aa, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68: ; preds = %bb.z
  %i.gv = sdiv exact i64 %i.gt, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i69 = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i.i69, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gw, i64 230584300921369395)
  %i.gz = select i1 %i.gx, i64 230584300921369395, i64 %i.gy ; 3 uses
  %.not.i.i.i.i70 = icmp ne i64 %i.gz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i70)
  %i.ha = mul nuw nsw i64 %i.gz, 40
  %i.hb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #33 ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gt ; 3 uses
  store <2 x float> %i.fk, ptr %i.hc, align 4, !tbaa !37
  %.sroa.0224.sroa.5.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store float %i.fd, ptr %.sroa.0224.sroa.5.0..sroa_idx303, align 4, !tbaa !37
  %.sroa.5225.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %.not10.i.i.i.i.i.i71 = icmp eq ptr %i.gq, %i.gn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5225.0..sroa_idx226, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i71, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76, label %.lr.ph.i.i.i.i.i.i72

.lr.ph.i.i.i.i.i.i72:                             ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68, %.lr.ph.i.i.i.i.i.i72
  %.012.i.i.i.i.i.i73 = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i72 ], [ %i.hb, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ] ; 2 uses
  %.0911.i.i.i.i.i.i74 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i72 ], [ %i.gq, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i73, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i74, i64 40, i1 false), !tbaa.struct !216, !alias.scope !375
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i74, i64 40 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i73, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.hd, %i.gn
  br i1 %.not.i.i.i.i.i.i75, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76, label %.lr.ph.i.i.i.i.i.i72, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i72, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68
  %.0.lcssa.i.i.i.i.i.i77 = phi ptr [ %i.hb, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ], [ %i.he, %.lr.ph.i.i.i.i.i.i72 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i77, i64 40 ; 2 uses
  %.not.i23.i.i.i78 = icmp eq ptr %i.gq, null
  br i1 %.not.i23.i.i.i78, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76
  %i.hg = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.hi) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79: ; preds = %bb.ab, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76
  store ptr %i.hb, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.hf, ptr %i.ed, align 8, !tbaa !215
  %i.hj = getelementptr inbounds nuw [40 x i8], ptr %i.hb, i64 %i.gz ; 2 uses
  store ptr %i.hj, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80: ; preds = %bb.y, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79
  %i.hk = phi ptr [ %i.gn, %bb.y ], [ %i.hj, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79 ] ; 5 uses
  %i.hl = phi ptr [ %i.gp, %bb.y ], [ %i.hf, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79 ] ; 5 uses
  %.not.i.i81 = icmp eq ptr %i.hl, %i.hk
  br i1 %.not.i.i81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80
  store <2 x float> %i.fl, ptr %i.hl, align 4, !tbaa !37
  %.sroa.0192.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hm = extractelement <2 x float> %i.fp, i64 0
  store float %i.hm, ptr %.sroa.0192.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
end_hunk_2
begin_hunk_3_@_ZN3Sky11updateStarsEv:bb.a
  %.sroa.speculated.i.i.i.i146 = call i64 @llvm.umax.i64(i64 %i.op, i64 1)
  %i.oq = add i64 %.sroa.speculated.i.i.i.i146, %i.op ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.op
  %i.os = call i64 @llvm.umin.i64(i64 %i.oq, i64 4611686018427387903)
  %i.ot = select i1 %i.or, i64 4611686018427387903, i64 %i.os ; 3 uses
  %.not.i.i.i.i147 = icmp ne i64 %i.ot, 0
  call void @llvm.assume(i1 %.not.i.i.i.i147)
  %i.ou = shl nuw nsw i64 %i.ot, 1
  %i.ov = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ou) #33 ; 4 uses
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 %i.on ; 2 uses
  store i16 %i.jz, ptr %i.ow, align 2, !tbaa !176
  %i.ox = icmp sgt i64 %i.on, 0
  br i1 %i.ox, label %bb.bn, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i148

bb.bn:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i145
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ov, ptr align 2 %i.ok, i64 %i.on, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i148

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i148: ; preds = %bb.bn, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i145
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 2 ; 2 uses
  %.not.i17.i.i.i149 = icmp eq ptr %i.ok, null
  br i1 %.not.i17.i.i.i149, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i150, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i148
  %i.oz = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = sub i64 %i.pa, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.pb) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i150

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i150: ; preds = %bb.bo, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i148
  store ptr %i.ov, ptr %i.bd, align 8, !tbaa !219
  store ptr %i.oy, ptr %i.el, align 8, !tbaa !220
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %i.ot ; 2 uses
  store ptr %i.pc, ptr %i.ch, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit151

_ZNSt6vectorItSaItEE9push_backEOt.exit151:        ; preds = %bb.bk, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i150
  %i.pd = phi ptr [ %i.oh, %bb.bk ], [ %i.pc, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i150 ]
  %i.pe = phi ptr [ %i.oj, %bb.bk ], [ %i.oy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i150 ]
  %i.pf = add i16 %.0318, 1                       ; 2 uses
  %i.pg = zext i16 %i.pf to i32
  %i.ph = load i32, ptr %i.n, align 4, !tbaa !156
  %i.pi = icmp ugt i32 %i.ph, %i.pg
  br i1 %i.pi, label %bb.ak, label %._crit_edge, !llvm.loop !371
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Sky11setStarSeedEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2368) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221
  %.not = icmp ne i64 %i.b, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.d = load i8, ptr %i.c, align 8, !range !119
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !221
  tail call void @_ZN3Sky11updateStarsEv(ptr noundef nonnull align 8 dereferenceable(2368) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.b, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE, i64 24), ptr %0, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE, i64 160), ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, -4096
  store i16 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.g, align 2, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, -4096
  store i16 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 42
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.l, align 2, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, -4096
  store i16 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 66
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.q, align 2, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.t = load i16, ptr %i.s, align 8
  %i.u = and i16 %i.t, -4096
  store i16 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 90
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.v, align 2, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.x, align 4, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i16 3857, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 -108, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.ab, align 8, !tbaa !225
  %i.ac = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33
          to label %bb.b unwind label %bb.d       ; 8 uses

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i32 1, ptr %i.ae, align 8, !tbaa !159
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !224
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !378
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 1, ptr %i.ah, align 8, !tbaa !379
  store ptr getelementptr inbounds nuw inrange(-24, 128) (i8, ptr @_ZTVN5scene13CVertexBufferIN5video9S3DVertexEEE, i64 24), ptr %i.ac, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene13CVertexBufferIN5video9S3DVertexEEE, i64 176), ptr %i.ad, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ai, i8 0, i64 33, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !209
  %i.ak = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33
          to label %bb.c unwind label %bb.d       ; 8 uses

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i32 1, ptr %i.am, align 8, !tbaa !159
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !224
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !378
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !379
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5scene12CIndexBufferItEE, i64 24), ptr %i.ak, align 8, !tbaa !32
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene12CIndexBufferItEE, i64 112), ptr %i.al, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !210
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.c) #31
  resume { ptr, i32 } %i.as
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #3

declare noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %.sroa.065.0.copyload = load float, ptr %1, align 4, !tbaa !37 ; 3 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.058.0.copyload = load float, ptr %2, align 4, !tbaa !37 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.a = load <2 x float>, ptr %.sroa.768.0..sroa_idx, align 4, !tbaa !37 ; 6 uses
  %i.b = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !37 ; 6 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.a, %i.a
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %.sroa.065.0.copyload, float %.sroa.065.0.copyload, float %i.c)
  %i.e = extractelement <2 x float> %i.a, i64 1   ; 2 uses
  %i.f = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d) ; 2 uses
  %i.g = fcmp nsz oeq float %i.f, 0.000000e+00
  %i.h = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.i = insertelement <2 x float> %i.h, float %.sroa.065.0.copyload, i64 1 ; 2 uses
  br i1 %i.g, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fpext nsz float %i.f to double
  %i.k = tail call nsz double @llvm.sqrt.f64(double %i.j)
  %i.l = fdiv nsz double 1.000000e+00, %i.k
  %i.m = fpext nsz <2 x float> %i.i to <2 x double>
  %i.n = fpext nsz <2 x float> %i.a to <2 x double>
  %i.o = insertelement <2 x double> poison, double %i.l, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul nsz <2 x double> %i.p, %i.m
  %i.r = fmul nsz <2 x double> %i.p, %i.n
  %i.s = fptrunc nsz <2 x double> %i.q to <2 x float>
  %i.t = fptrunc nsz <2 x double> %i.r to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %i.u = phi <2 x float> [ %i.i, %bb.a ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = phi <2 x float> [ %i.a, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %foldExtExtBinop77 = fmul nsz <2 x float> %i.b, %i.b
  %i.w = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %.sroa.058.0.copyload, float %.sroa.058.0.copyload, float %i.w)
  %i.y = extractelement <2 x float> %i.b, i64 1   ; 2 uses
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.x) ; 2 uses
  %i.aa = fcmp nsz oeq float %i.z, 0.000000e+00
  %i.ab = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %.sroa.058.0.copyload, i64 1 ; 2 uses
  br i1 %i.aa, label %_ZN4core8vector3dIfE9normalizeEv.exit35, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.ad = fpext nsz float %i.z to double
  %i.ae = tail call nsz double @llvm.sqrt.f64(double %i.ad)
  %i.af = fdiv nsz double 1.000000e+00, %i.ae
  %i.ag = fpext nsz <2 x float> %i.ac to <2 x double>
  %i.ah = fpext nsz <2 x float> %i.b to <2 x double>
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul nsz <2 x double> %i.aj, %i.ag
  %i.al = fmul nsz <2 x double> %i.aj, %i.ah
  %i.am = fptrunc nsz <2 x double> %i.al to <2 x float>
  %i.an = fptrunc nsz <2 x double> %i.ak to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit35

_ZN4core8vector3dIfE9normalizeEv.exit35:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %i.ao = phi <2 x float> [ %i.b, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.am, %bb.c ] ; 4 uses
  %i.ap = phi <2 x float> [ %i.ac, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.an, %bb.c ] ; 2 uses
  %i.aq = fneg nsz <2 x float> %i.v
  %i.ar = fmul nsz <2 x float> %i.ap, %i.aq
  %i.as = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.u, <2 x float> %i.ar) ; 4 uses
  %i.at = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.au = fneg nsz float %i.at
  %i.av = extractelement <2 x float> %i.ao, i64 0
  %i.aw = fmul nsz float %i.av, %i.au
  %i.ax = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.ay = extractelement <2 x float> %i.v, i64 0
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.aw) ; 6 uses
  %i.ba = extractelement <2 x float> %i.as, i64 1 ; 4 uses
  %i.bb = fmul nsz float %i.ba, %i.ba
  %i.bc = extractelement <2 x float> %i.as, i64 0 ; 4 uses
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bb)
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bd) ; 2 uses
  %i.bf = fcmp nsz oeq float %i.be, 0.000000e+00
  br i1 %i.bf, label %_ZN4core8vector3dIfE9normalizeEv.exit36, label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit35
  %i.bg = fpext nsz float %i.be to double
  %i.bh = tail call nsz double @llvm.sqrt.f64(double %i.bg)
  %i.bi = fdiv nsz double 1.000000e+00, %i.bh     ; 2 uses
  %i.bj = fpext nsz <2 x float> %i.as to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x double> %i.bl, %i.bj
  %i.bn = fptrunc nsz <2 x double> %i.bm to <2 x float>
  %i.bo = fpext nsz float %i.az to double
  %i.bp = fmul nsz double %i.bi, %i.bo
  %i.bq = fptrunc nsz double %i.bp to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit36

_ZN4core8vector3dIfE9normalizeEv.exit36:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit35, %bb.d
  %.sroa.13.0 = phi nsz float [ %i.az, %_ZN4core8vector3dIfE9normalizeEv.exit35 ], [ %i.bq, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi nsz <2 x float> [ %i.as, %_ZN4core8vector3dIfE9normalizeEv.exit35 ], [ %i.bn, %bb.d ] ; 2 uses
  %foldExtExtBinop79 = fmul nsz <2 x float> %i.v, %i.ao
  %i.br = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.ax, float %i.br)
  %i.bt = extractelement <2 x float> %i.ao, i64 1
  %i.bu = extractelement <2 x float> %i.u, i64 0
  %i.bv = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bu, float %i.bt, float %i.bs) ; 4 uses
  %i.bw = fsub nsz float 1.000000e+00, %i.bv      ; 3 uses
  %.sroa.0.0.vec.extract47 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 3 uses
  %i.bx = fmul nsz float %i.bw, %.sroa.0.0.vec.extract47 ; 2 uses
  %.sroa.0.4.vec.extract54 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 3 uses
  %i.by = fmul nsz float %i.bw, %.sroa.0.4.vec.extract54 ; 2 uses
  %i.bz = fmul nsz float %i.bw, %.sroa.13.0       ; 2 uses
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float %.sroa.0.0.vec.extract47, float %i.bv)
  store float %i.ca, ptr %0, align 4, !tbaa !37
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %.sroa.0.4.vec.extract54, float %i.bv)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.cb, ptr %i.cc, align 4, !tbaa !37
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %.sroa.13.0, float %i.bv)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cd, ptr %i.ce, align 4, !tbaa !37
  %i.cf = fmul nsz float %.sroa.0.4.vec.extract54, %i.bx ; 2 uses
  %i.cg = fmul nsz float %i.bz, %.sroa.0.0.vec.extract47 ; 2 uses
  %i.ch = fmul nsz float %.sroa.13.0, %i.by       ; 2 uses
  %i.ci = fsub nsz float %i.cf, %i.az
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !37
  %i.ck = fadd nsz float %i.ba, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !37
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !37
  %i.cn = fadd nsz float %i.az, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cn, ptr %i.co, align 4, !tbaa !37
  %i.cp = fsub nsz float %i.ch, %i.bc
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !37
  %i.cs = fsub nsz float %i.cg, %i.ba
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !37
  %i.cu = fadd nsz float %i.bc, %i.ch
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !37
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3Sky12setSkyColorsERK8SkyColor(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2368) initializes((1996, 2024)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1996
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.a, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !380
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN3Sky14setHorizonTintEN5video6SColorES1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2368) initializes((2024, 2032), (2312, 2313)) %0, i32 %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store i32 %1, ptr %i.a, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2028
  store i32 %2, ptr %i.b, align 4, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !104
  switch i64 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !112    ; 2 uses
  %i.f = load i32, ptr %i.e, align 1
  %i.g = xor i32 %i.f, 1634100580
  %i.h = getelementptr i8, ptr %i.e, i64 3
  %i.i = load i32, ptr %i.h, align 1
  %i.j = xor i32 %i.i, 1953264993
  %i.k = or i32 %i.g, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5: ; preds = %bb.a
  %i.o = load ptr, ptr %3, align 8, !tbaa !112    ; 2 uses
  %i.p = load i32, ptr %i.o, align 1
  %i.q = xor i32 %i.p, 1953723747
  %i.r = getelementptr i8, ptr %i.o, i64 4
  %i.s = load i16, ptr %i.r, align 1
  %i.t = zext i16 %i.s to i32
  %i.u = xor i32 %i.t, 28015
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7
  %.sink = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.thread7 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2312
  store i8 %.sink, ptr %i.z, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Sky18addTextureToSkyboxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14ITextureSource(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.video::SMaterial", align 8  ; 21 uses
  %i.b = icmp sgt i32 %2, 6
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !103
  %i.h = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !104  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.j, ptr %i.a, align 8, !tbaa !124
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !112
  %i.m = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.m, ptr %i.g, align 8, !tbaa !77
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !77
  store i8 %i.o, ptr %i.n, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !104
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %i.c, align 8, !tbaa !114
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1968
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.f
  %i.w = call noundef ptr @_ZN14ITextureSource17getTextureForMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr null, ptr %4, align 8, !tbaa !76, !alias.scope !383
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !alias.scope !383
  %i.z = and i16 %i.y, -4096
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 10
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.aa, align 2, !tbaa !77, !alias.scope !383
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !383
  %i.ad = load i16, ptr %i.ac, align 8, !alias.scope !383
end_hunk_3
begin_hunk_4_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.db, <2 x float> %i.df)
  %i.dj = load <2 x float>, ptr %i.bf, align 8, !tbaa !37
  %i.dk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dn = load <2 x float>, ptr %i.bg, align 8, !tbaa !37
  %i.do = fadd nsz <2 x float> %i.dm, %i.dn
  %i.dp = load float, ptr %i.bh, align 8, !tbaa !37
  %i.dq = load float, ptr %i.bi, align 8, !tbaa !37
  %i.dr = fmul nsz float %i.cz, %i.dq
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %i.bj, align 8, !tbaa !37
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dt, float %i.ds)
  %i.dv = load float, ptr %i.bk, align 8, !tbaa !37
  %i.dw = fadd nsz float %i.dv, %i.du
  store <2 x float> %i.do, ptr %i.x, align 4, !tbaa !37
  store float %i.dw, ptr %i.cx, align 4, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.dz = load float, ptr %i.aa, align 4, !tbaa !178 ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !179 ; 2 uses
  %i.eb = load float, ptr %i.dy, align 4, !tbaa !177 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.ed = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul nsz <2 x float> %i.ef, %i.ed
  %i.eh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ec, <2 x float> %i.eg)
  %i.ek = load <2 x float>, ptr %i.bf, align 8, !tbaa !37
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ek, <2 x float> %i.ej)
  %i.eo = load <2 x float>, ptr %i.bg, align 8, !tbaa !37
  %i.ep = fadd nsz <2 x float> %i.en, %i.eo
  %i.eq = load float, ptr %i.bh, align 8, !tbaa !37
  %i.er = load float, ptr %i.bi, align 8, !tbaa !37
  %i.es = fmul nsz float %i.ea, %i.er
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.eq, float %i.es)
  %i.eu = load float, ptr %i.bj, align 8, !tbaa !37
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.eu, float %i.et)
  %i.ew = load float, ptr %i.bk, align 8, !tbaa !37
  %i.ex = fadd nsz float %i.ew, %i.ev
  store <2 x float> %i.ep, ptr %i.aa, align 4, !tbaa !37
  store float %i.ex, ptr %i.dy, align 4, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.fa = load float, ptr %i.ad, align 4, !tbaa !178 ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !179 ; 2 uses
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !177 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.fe = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul nsz <2 x float> %i.fg, %i.fe
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fd, <2 x float> %i.fh)
  %i.fl = load <2 x float>, ptr %i.bf, align 8, !tbaa !37
  %i.fm = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fp = load <2 x float>, ptr %i.bg, align 8, !tbaa !37
  %i.fq = fadd nsz <2 x float> %i.fo, %i.fp
  %i.fr = load float, ptr %i.bh, align 8, !tbaa !37
  %i.fs = load float, ptr %i.bi, align 8, !tbaa !37
  %i.ft = fmul nsz float %i.fb, %i.fs
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fr, float %i.ft)
  %i.fv = load float, ptr %i.bj, align 8, !tbaa !37
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  %i.fx = load float, ptr %i.bk, align 8, !tbaa !37
  %i.fy = fadd nsz float %i.fx, %i.fw
  store <2 x float> %i.fq, ptr %i.ad, align 4, !tbaa !37
  store float %i.fy, ptr %i.ez, align 4, !tbaa !37
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !178 ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !179 ; 2 uses
  %i.gd = load float, ptr %i.ga, align 4, !tbaa !177 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.gf = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul nsz <2 x float> %i.gh, %i.gf
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ge, <2 x float> %i.gi)
  %i.gm = load <2 x float>, ptr %i.bf, align 8, !tbaa !37
  %i.gn = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.gl)
  %i.gq = load <2 x float>, ptr %i.bg, align 8, !tbaa !37
  %i.gr = fadd nsz <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bh, align 8, !tbaa !37
  %i.gt = load float, ptr %i.bi, align 8, !tbaa !37
  %i.gu = fmul nsz float %i.gc, %i.gt
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bj, align 8, !tbaa !37
  %i.gx = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bk, align 8, !tbaa !37
  %i.gz = fadd nsz float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ae, align 4, !tbaa !37
  store float %i.gz, ptr %i.ga, align 4, !tbaa !37
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.hc = load float, ptr %i.af, align 4, !tbaa !178 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !179 ; 2 uses
  %i.he = load float, ptr %i.hb, align 4, !tbaa !177 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.hg = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.hh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.hi, %i.hg
  %i.hk = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hf, <2 x float> %i.hj)
  %i.hn = load <2 x float>, ptr %i.bf, align 8, !tbaa !37
  %i.ho = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hr = load <2 x float>, ptr %i.bg, align 8, !tbaa !37
  %i.hs = fadd nsz <2 x float> %i.hq, %i.hr
  %i.ht = load float, ptr %i.bh, align 8, !tbaa !37
  %i.hu = load float, ptr %i.bi, align 8, !tbaa !37
  %i.hv = fmul nsz float %i.hd, %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hc, float %i.ht, float %i.hv)
  %i.hx = load float, ptr %i.bj, align 8, !tbaa !37
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.hx, float %i.hw)
  %i.hz = load float, ptr %i.bk, align 8, !tbaa !37
  %i.ia = fadd nsz float %i.hz, %i.hy
  store <2 x float> %i.hs, ptr %i.af, align 4, !tbaa !37
  store float %i.ia, ptr %i.hb, align 4, !tbaa !37
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.id = load float, ptr %i.az, align 4, !tbaa !178 ; 2 uses
  %i.ie = load float, ptr %i.ib, align 4, !tbaa !179 ; 2 uses
  %i.if = load float, ptr %i.ic, align 4, !tbaa !177 ; 2 uses
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.ih = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.ii = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul nsz <2 x float> %i.ij, %i.ih
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ig, <2 x float> %i.ik)
  %i.io = load <2 x float>, ptr %i.bf, align 8, !tbaa !37
  %i.ip = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.io, <2 x float> %i.in)
  %i.is = load <2 x float>, ptr %i.bg, align 8, !tbaa !37
  %i.it = fadd nsz <2 x float> %i.ir, %i.is
  %i.iu = load float, ptr %i.bh, align 8, !tbaa !37
  %i.iv = load float, ptr %i.bi, align 8, !tbaa !37
  %i.iw = fmul nsz float %i.ie, %i.iv
  %i.ix = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.iu, float %i.iw)
  %i.iy = load float, ptr %i.bj, align 8, !tbaa !37
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.if, float %i.iy, float %i.ix)
  %i.ja = load float, ptr %i.bk, align 8, !tbaa !37
  %i.jb = fadd nsz float %i.ja, %i.iz
  store <2 x float> %i.it, ptr %i.az, align 4, !tbaa !37
  store float %i.jb, ptr %i.ic, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !177
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 4 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %sin40.i.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = fneg nsz double %sin40.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = fneg nsz double %cos41.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !37
  %i.t = fmul nsz <2 x float> %i.s, splat (float f0x3C8EFA35)
  %i.u = fpext nsz <2 x float> %i.t to <2 x double>
  %i.v = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.u) ; 2 uses
  %i.w = extractvalue { <2 x double>, <2 x double> } %i.v, 0 ; 5 uses
  %i.x = extractvalue { <2 x double>, <2 x double> } %i.v, 1 ; 5 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul nsz <2 x double> %i.z, %i.k
  %i.ab = fptrunc nsz <2 x double> %i.aa to <2 x float> ; 5 uses
  store <2 x float> %i.ab, ptr %0, align 4, !tbaa !37
  %i.ac = extractelement <2 x double> %i.w, i64 1
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.l, align 4, !tbaa !37
  %i.af = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x double> %i.af, %i.w       ; 3 uses
  %i.ah = fmul nsz double %i.y, %i.m
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %cos41.i.i, double %i.ah)
  %i.ak = fptrunc nsz double %i.aj to float       ; 3 uses
  store float %i.ak, ptr %i.n, align 4, !tbaa !37
  %i.al = fmul nsz double %i.y, %cos41.i.i
  %i.am = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.an = fmul nsz double %i.am, %sin40.i.i
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double %cos41.i.i, double %i.an)
  %i.aq = fptrunc nsz double %i.ap to float       ; 3 uses
  store float %i.aq, ptr %i.p, align 4, !tbaa !37
  %i.ar = fmul nsz double %i.am, %i.q
  %i.as = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> poison, double %i.al, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.at, <2 x double> %i.av) ; 2 uses
  %i.ax = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul nsz <2 x double> %i.x, %i.ax       ; 2 uses
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = fptrunc nsz <2 x double> %i.az to <2 x float> ; 4 uses
  store <2 x float> %i.ba, ptr %i.d, align 4, !tbaa !37
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bc = fptrunc nsz <2 x double> %i.bb to <2 x float> ; 4 uses
  store <2 x float> %i.bc, ptr %i.r, align 4, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !37 ; 5 uses
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !177 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.bh, ptr %i.bi, align 4, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !178 ; 4 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !179 ; 2 uses
  %i.bo = fcmp nsz oeq float %i.bn, 1.000000e+00
  %or.cond = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !177
  %i.br = fcmp nsz une float %i.bq, 1.000000e+00
  br i1 %i.br, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bs = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bn, %bb.a ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !177 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = fmul nsz float %i.ak, 0.000000e+00      ; 2 uses
  %i.bw = fmul nsz <2 x float> %i.ba, zeroinitializer ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bv, i64 0
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.by, <2 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.aq, i64 0 ; 3 uses
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cb)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %0, align 4, !tbaa !37
  %i.cg = extractelement <2 x float> %i.bw, i64 1
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bk, float %i.cg)
  %i.ci = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.ch)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cj)
  store float %i.ck, ptr %i.l, align 4, !tbaa !37
  %i.cl = fmul nsz float %i.bk, 0.000000e+00
  store float %i.cl, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !37
  %i.cm = extractelement <2 x float> %i.ab, i64 0
  %i.cn = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ak, i64 0
  %i.cr = fmul nsz <2 x float> %i.co, %i.cq
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cs)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.n, align 4, !tbaa !37
  %i.cv = extractelement <2 x float> %i.ba, i64 1
  %i.cw = fmul nsz float %i.bs, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cw)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cx)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cy)
  store float %i.cz, ptr %i.o, align 4, !tbaa !37
  %i.da = fmul nsz float %i.bs, 0.000000e+00
  store float %i.da, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !37
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.bv) ; 2 uses
  %i.dc = fmul nsz float %i.bu, 0.000000e+00
  store float %i.dc, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !37
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.db)
  %i.de = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.ae, i64 1
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 3 uses
  %i.dh = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dk = insertelement <2 x float> %i.dj, float %i.db, i64 0
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.di, <2 x float> %i.dk)
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.p, align 4, !tbaa !37
  %i.dn = extractelement <2 x float> %i.dg, i64 1
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.bu, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.do)
  store float %i.dp, ptr %i.c, align 4, !tbaa !37
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.dg) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 0
  %i.dt = fadd nsz <2 x float> %i.bf, %i.ds
  store <2 x float> %i.dt, ptr %i.be, align 4, !tbaa !37
  %i.du = extractelement <2 x float> %i.dq, i64 1
  %i.dv = fadd nsz float %i.du, %i.bh
  store float %i.dv, ptr %i.bi, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !159
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !166
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
end_hunk_4
