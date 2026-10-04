Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN3Sky6renderEv:bb.a
.sink.split:                                      ; preds = %bb.y, %bb.am, %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.f
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %1) #31
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !112 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.as
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !77
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #30
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %_ZN13ScopeProfilerD2Ev.exit
  ret void

bb.au:                                            ; preds = %bb.r, %bb.ar, %bb.q, %bb.p
  %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.r ], [ %i.dt, %bb.p ], [ %i.du, %bb.q ], [ %.pn186.pn.pn.pn.pn, %bb.ar ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %1) #31
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.au ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
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
  %i.cm = fptrunc <2 x double> %i.cl to <2 x float> ; 2 uses
  %i.cn = fadd nsz double %i.bn, %i.cb
  %i.co = fptrunc nsz double %i.cn to float
  %sin.i14 = extractvalue { double, double } %sincos.i13, 0 ; 3 uses
  %i.cp = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x double> %i.cp, double %sin.i14, i64 1
  %i.cr = fmul nsz <2 x double> %i.cq, zeroinitializer ; 6 uses
  %5 = extractelement <2 x double> %i.cr, i64 1   ; 2 uses
  %i.cs = insertelement <2 x double> %i.cr, double %i.bq, i64 0
  %i.ct = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer, <2 x double> %i.cs) ; 2 uses
  %i.cu = shufflevector <2 x double> %i.ck, <2 x double> %i.ct, <2 x i32> <i32 1, i32 2>
  %i.cv = fptrunc <2 x double> %i.cu to <2 x float> ; 2 uses
  %i.cw = extractelement <2 x double> %i.by, i64 0
  %i.cx = fadd nsz double %cos.i, %i.cw
  %i.cy = fptrunc nsz double %i.cx to float
  %i.cz = extractelement <2 x double> %i.by, i64 1
  %i.da = fadd nsz double %cos.i15, %i.cz
  %6 = fneg nsz double %sin.i14
  %i.db = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dc = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dh = insertelement <4 x float> poison, float %i.co, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dk = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dl = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = fneg nsz double %5
  %i.dn = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %8 = fsub nsz double %i.dn, %5
  %9 = shufflevector <2 x double> %i.by, <2 x double> %i.cr, <2 x i32> <i32 1, i32 2>
  %10 = insertelement <2 x double> poison, double %7, i64 0
  %11 = insertelement <2 x double> %10, double %sin.i14, i64 1
  %12 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> zeroinitializer, <2 x double> %11) ; 2 uses
  %i.do = extractelement <2 x double> %12, i64 0
  %13 = fptrunc nsz double %i.do to float         ; 2 uses
  %14 = extractelement <2 x double> %12, i64 1
  %i.dp = fptrunc nsz double %14 to float         ; 2 uses
  %i.dq = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x double> %i.dq, double %cos.i15, i64 0
  %i.ds = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.dr)
  %i.dt = fptrunc <2 x double> %i.ds to <2 x float> ; 5 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dw = extractelement <2 x float> %i.dt, i64 0
  %15 = tail call nsz double @llvm.fmuladd.f64(double %i.dn, double 0.000000e+00, double %6)
  %16 = fptrunc nsz double %15 to float           ; 3 uses
  %i.dx = insertelement <2 x double> %i.ct, double %i.da, i64 0
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float> ; 2 uses
  %i.dz = fptrunc nsz double %8 to float          ; 2 uses
  %17 = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = insertelement <2 x float> %17, float %i.dz, i64 0
  %i.eb = fmul nsz <2 x float> %i.ea, zeroinitializer
  %i.ec = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> zeroinitializer, <2 x float> %i.eb)
  %18 = insertelement <2 x float> %17, float %16, i64 1
  %19 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> zeroinitializer, <2 x float> %i.ec) ; 2 uses
  %i.ed = fmul nsz float %i.dp, 0.000000e+00
  %20 = tail call nsz float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %i.ed)
  %i.ee = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float 0.000000e+00, float %20)
  %i.ef = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.dp, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.dz, i64 2
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 3 uses
  %i.ei = fmul nsz <4 x float> %i.db, %i.eh
  %i.ej = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %13, i64 1
  %i.ek = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.em = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.el, <4 x float> %i.ei)
  %i.en = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eo = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.en, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %21 = insertelement <4 x float> %i.eo, float %16, i64 3
  %i.ep = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %21, <4 x float> %i.em) ; 4 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.er = fmul nsz <4 x float> %i.bd, %i.eq
  %i.es = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.et = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.es, <4 x float> %i.er)
  %i.eu = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ev = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.eu, <4 x float> %i.et)
  %i.ew = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.ew, <4 x float> %i.ev)
  store <4 x float> %i.ex, ptr %4, align 16, !tbaa !37, !alias.scope !317
  %i.ey = fmul nsz <4 x float> %i.dd, %i.eh
  %i.ez = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.el, <4 x float> %i.ey)
  %i.fa = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %22 = insertelement <4 x float> %i.fb, float %16, i64 3 ; 2 uses
  %i.fc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %22, <4 x float> %i.ez) ; 4 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fe = fmul nsz <4 x float> %i.bd, %i.fd
  %i.ff = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.ff, <4 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fi = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.fh, <4 x float> %i.fg)
  %i.fj = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.fj, <4 x float> %i.fi)
  store <4 x float> %i.fk, ptr %i.bg, align 16, !tbaa !37, !alias.scope !317
  %i.fl = fmul nsz <4 x float> %i.dj, %i.eh
  %i.fm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.el, <4 x float> %i.fl)
  %i.fn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %22, <4 x float> %i.fm) ; 4 uses
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fp = fmul nsz <4 x float> %i.bd, %i.fo
  %i.fq = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.fq, <4 x float> %i.fp)
  %i.fs = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ft = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.fs, <4 x float> %i.fr)
  %i.fu = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.fu, <4 x float> %i.ft)
  store <4 x float> %i.fv, ptr %i.bh, align 16, !tbaa !37, !alias.scope !317
  %23 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fw = fmul nsz <4 x float> %i.bd, %23
  %i.fx = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.fx, <4 x float> %i.fw)
  %i.fz = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ga, <4 x float> %i.fy)
  %i.gc = fadd nsz <4 x float> %i.bf, %i.gb
  store <4 x float> %i.gc, ptr %i.bi, align 16, !tbaa !37, !alias.scope !317
  %i.gd = load ptr, ptr %1, align 8, !tbaa !32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.gg = load ptr, ptr %1, align 8, !tbaa !32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(127) %i.aq)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !157
  %i.gl = load ptr, ptr %1, align 8, !tbaa !32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 448
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.gk)
  %i.go = load ptr, ptr %1, align 8, !tbaa !32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %3)
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
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !37
  store i16 0, ptr %i.c, align 4, !tbaa !176
  store float %i.z, ptr %.ptr.1.i, align 4, !tbaa !37
  store float %i.am, ptr %.sroa.432.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.af, ptr %i.d, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !37
  store i16 0, ptr %i.f, align 4, !tbaa !176
  store float %i.z, ptr %.ptr.2.i, align 4, !tbaa !37
  store float %i.z, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.af, ptr %i.g, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.am, ptr %.ptr.3.i, align 4, !tbaa !37
  store float %i.z, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.af, ptr %i.j, align 4, !tbaa !111
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  call void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 4 dereferenceable(160) %5, float noundef 9.000000e+01, float noundef %i.ah)
  %i.an = load ptr, ptr %1, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky8draw_sunEPN5video12IVideoDriverERKNS0_6SColorES5_fE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0), !inline_history !5
  %i.aq = fneg nsz float %i.aa                    ; 4 uses
  store float %i.aq, ptr %5, align 4, !tbaa !37
  store float %i.aq, ptr %.sroa.443.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.544.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !111
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !37
  store i16 0, ptr %i.c, align 4, !tbaa !176
  store float %i.aa, ptr %.ptr.1.i, align 4, !tbaa !37
  store float %i.aq, ptr %.sroa.432.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.533.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.u, align 4, !tbaa !37
  store i16 0, ptr %i.f, align 4, !tbaa !176
  store float %i.aa, ptr %.ptr.2.i, align 4, !tbaa !37
  store float %i.aa, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.522.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ac, ptr %i.g, align 4, !tbaa !111
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !37
  store i16 0, ptr %i.i, align 4, !tbaa !176
  store float %i.aq, ptr %.ptr.3.i, align 4, !tbaa !37
  store float %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !37
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !37
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !111
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !37
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !37
  store i16 0, ptr %i.l, align 4, !tbaa !176
  call void @_ZN3Sky14place_sky_bodyERSt5arrayIN5video9S3DVertexELm4EEff(ptr noundef nonnull align 8 dereferenceable(2368) %0, ptr noundef nonnull align 4 dereferenceable(160) %5, float noundef 9.000000e+01, float noundef %i.ah)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 360
end_hunk_0
