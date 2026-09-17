Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN3Sky6renderEv:bb.a
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.11266.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13268.0..sroa_idx, align 4, !tbaa !176
  store float 1.000000e+00, ptr %8, align 16, !tbaa !178
  store float 1.000000e+00, ptr %.sroa.6294.0..sroa_idx, align 8, !tbaa !177
  store float -1.000000e+00, ptr %.ptr.1, align 8, !tbaa !178
  store float 1.000000e+00, ptr %i.lc, align 16, !tbaa !177
  store float -1.000000e+00, ptr %.ptr.2, align 16, !tbaa !178
  store float 1.000000e+00, ptr %i.ld, align 8, !tbaa !177
  store float 1.000000e+00, ptr %.ptr.3, align 8, !tbaa !178
  store float 1.000000e+00, ptr %i.le, align 16, !tbaa !177
  %i.lo = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 360
  %i.lq = load ptr, ptr %i.lp, align 8
  invoke void %i.lq(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky6renderEvE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0)
          to label %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.3 unwind label %bb.ao, !inline_history !5

_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.3: ; preds = %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.2
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %8, align 16, !tbaa !37
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.8296.0..sroa_idx, align 16, !tbaa !37
  store i32 %.sroa.097.0.copyload, ptr %i.eh, align 8, !tbaa !111
  store <2 x float> splat (float 1.000000e+00), ptr %i.ei, align 4, !tbaa !37
  store i16 0, ptr %i.ej, align 4, !tbaa !176
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %.ptr.1, align 8, !tbaa !37
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.8285.0..sroa_idx, align 8, !tbaa !37
  store i32 %.sroa.097.0.copyload, ptr %.sroa.10287.0..sroa_idx, align 16, !tbaa !111
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.11288.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13290.0..sroa_idx, align 4, !tbaa !176
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %.ptr.2, align 16, !tbaa !37
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.8274.0..sroa_idx, align 16, !tbaa !37
  store i32 %.sroa.097.0.copyload, ptr %.sroa.10276.0..sroa_idx, align 8, !tbaa !111
  store <2 x float> zeroinitializer, ptr %.sroa.11277.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13279.0..sroa_idx, align 4, !tbaa !176
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %.ptr.3, align 8, !tbaa !37
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.8263.0..sroa_idx, align 8, !tbaa !37
  store i32 %.sroa.097.0.copyload, ptr %.sroa.10265.0..sroa_idx, align 16, !tbaa !111
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.11266.0..sroa_idx, align 4, !tbaa !37
  store i16 0, ptr %.sroa.13268.0..sroa_idx, align 4, !tbaa !176
  %i.lr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 360
  %i.lt = load ptr, ptr %i.ls, align 8
  invoke void %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull @_ZZN3Sky6renderEvE7indices, i32 noundef 2, i32 noundef 0, i32 noundef 6, i32 noundef 0)
          to label %.sink.split unwind label %bb.ap, !inline_history !5

bb.ao:                                            ; preds = %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.2, %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.1, %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208, %.preheader
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN5video12IVideoDriver23drawIndexedTriangleListEPKNS_9S3DVertexEjPKtj.exit208.3
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ai, %bb.ab, %bb.ad, %bb.ae, %bb.ao, %bb.ap, %bb.z
  %.pn186.pn.pn = phi { ptr, i32 } [ %i.fb, %bb.z ], [ %i.lu, %bb.ao ], [ %i.gj, %bb.ab ], [ %i.kl, %bb.ai ], [ %i.lv, %bb.ap ], [ %i.im, %bb.ad ], [ %i.iw, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.s, %bb.w, %bb.aq
  %.pn186.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.s ], [ %.pn186.pn.pn, %bb.aq ], [ %i.eg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.au

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
  %i.ab = and i32 %i.z, 255
  %i.ac = uitofp nsz nneg i32 %i.aa to float
  %i.ad = uitofp nsz nneg i32 %i.ab to float
  %i.ae = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ac, i64 1
  %i.ag = insertelement <4 x float> poison, float %i.x, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.u, i64 3
  %i.ai = shufflevector <4 x float> %i.af, <4 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = fmul nsz <4 x float> %i.ai, <float f0x3B808081, float f0x3B808081, float f0x3B808081, float 1.000000e+00>
  %i.ak = fmul nsz <4 x float> %i.aj, splat (float 2.550000e+02)
  %i.al = fadd nsz <4 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = tail call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.al)
  %i.an = fptosi <4 x float> %i.am to <4 x i32>
  %5 = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %6 = trunc <4 x i32> %5 to <4 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <4 x i8> %6, ptr %i.ap, align 4, !tbaa !111
  %i.aq = fadd nsz float %2, -2.500000e-01
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.as = load float, ptr %i.ar, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.at = load ptr, ptr %1, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.aw, i64 64, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = load <4 x float>, ptr %3, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.bb = load <4 x float>, ptr %i.ax, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.bc = load <4 x float>, ptr %i.ay, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.bd = load <4 x float>, ptr %i.az, align 16, !tbaa !37, !noalias !317 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bh = fpext nsz float %i.as to double
  %i.bi = fpext nsz float %i.aq to double
  %i.bj = fmul nsz double %i.bh, f0x400921FB54442D18
  %i.bk = fdiv nsz double %i.bj, 1.800000e+02
  %i.bl = fmul nsz double %i.bi, f0x401921FB54442D18
  %i.bm = fptrunc nsz double %i.bk to float
  %i.bn = fptrunc nsz double %i.bl to float
  %i.bo = fpext nsz float %i.bm to double
  %i.bp = fpext nsz float %i.bn to double
  %sincos.i13 = tail call nsz { double, double } @llvm.sincos.f64(double %i.bo) ; 2 uses
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.bp) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.bq = fmul nsz double %sin.i, 0.000000e+00    ; 4 uses
  %i.br = insertelement <2 x double> poison, double %cos.i, i64 0 ; 2 uses
  %i.bs = insertelement <2 x double> %i.br, double %sin.i, i64 1
  %i.bt = fneg nsz double %i.bq
  %i.bu = fneg nsz double %sin.i
  %cos.i15 = extractvalue { double, double } %sincos.i13, 1 ; 3 uses
  %i.bv = insertelement <2 x double> %i.br, double %cos.i15, i64 1
  %i.bw = fsub nsz <2 x double> splat (double 1.000000e+00), %i.bv ; 6 uses
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul nsz <2 x double> %i.bx, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> zeroinitializer, <2 x double> %i.bs) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = fptrunc nsz double %i.cc to float
  %i.ce = fsub nsz double %i.bz, %i.bq
  %i.cf = fptrunc nsz double %i.ce to float
  %i.cg = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.bq, i64 1
  %i.ci = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer, <2 x double> %i.ch) ; 2 uses
  %i.cj = shufflevector <2 x double> %i.cb, <2 x double> %i.ci, <2 x i32> <i32 1, i32 2>
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float> ; 2 uses
  %i.cl = fadd nsz double %i.bq, %i.bz
  %i.cm = fptrunc nsz double %i.cl to float
  %sin.i14 = extractvalue { double, double } %sincos.i13, 0 ; 3 uses
  %i.cn = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %sin.i14, i64 1
  %i.cp = fmul nsz <2 x double> %i.co, zeroinitializer ; 7 uses
  %i.cq = insertelement <2 x double> %i.cp, double %i.bt, i64 0
  %i.cr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> zeroinitializer, <2 x double> %i.cq) ; 2 uses
  %i.cs = shufflevector <2 x double> %i.ci, <2 x double> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.ct = fptrunc <2 x double> %i.cs to <2 x float> ; 2 uses
  %i.cu = extractelement <2 x double> %i.bw, i64 0
  %i.cv = fadd nsz double %cos.i, %i.cu
  %i.cw = fptrunc nsz double %i.cv to float
  %i.cx = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cy = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.da = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dd = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dg = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> zeroinitializer
  %i.dh = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = extractelement <2 x double> %i.cp, i64 0
  %shift = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.cp, %shift
  %i.dk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dl = tail call nsz double @llvm.fmuladd.f64(double %i.dj, double 0.000000e+00, double %sin.i14)
  %i.dm = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dn = insertelement <2 x double> %i.dm, double %cos.i15, i64 0
  %i.do = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.dn)
  %i.dp = fptrunc nsz double %i.dl to float       ; 2 uses
  %i.dq = fptrunc <2 x double> %i.do to <2 x float> ; 5 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dt = extractelement <2 x double> %i.bw, i64 1
  %i.du = fadd nsz double %cos.i15, %i.dt
  %i.dv = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1
  %i.dx = fptrunc <2 x double> %i.dw to <2 x float> ; 2 uses
  %i.dy = fptrunc nsz double %i.dk to float       ; 2 uses
  %i.dz = insertelement <2 x float> %i.dq, float %i.dy, i64 1
  %i.ea = fmul nsz <2 x float> %i.dz, zeroinitializer
  %i.eb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> zeroinitializer, <2 x float> %i.ea) ; 2 uses
  %i.ec = insertelement <2 x double> %i.dm, double %sin.i14, i64 1
  %i.ed = fneg nsz <2 x double> %i.ec
  %i.ee = shufflevector <2 x double> %i.bw, <2 x double> %i.cp, <2 x i32> <i32 1, i32 2>
  %i.ef = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> zeroinitializer, <2 x double> %i.ed)
  %i.eg = fptrunc <2 x double> %i.ef to <2 x float> ; 2 uses
  %i.eh = fmul nsz float %i.dp, 0.000000e+00
  %i.ei = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 0
  %i.ek = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> zeroinitializer, <2 x float> %i.ej) ; 2 uses
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> %i.eb, <2 x i32> <i32 0, i32 3>
  %i.em = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> zeroinitializer, <2 x float> %i.el) ; 2 uses
  %i.en = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.dp, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.dy, i64 2
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 3 uses
  %i.eq = fmul nsz <4 x float> %i.cx, %i.ep
  %i.er = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.es = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.er, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.et = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 3 uses
  %i.ev = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.eu, <4 x float> %i.eq)
  %i.ew = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ex = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.ew, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ez = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.ey, <4 x float> %i.ev) ; 4 uses
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fb = fmul nsz <4 x float> %i.bb, %i.fa
  %i.fc = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.fc, <4 x float> %i.fb)
  %i.fe = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ff = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.fe, <4 x float> %i.fd)
  %i.fg = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.fg, <4 x float> %i.ff)
  store <4 x float> %i.fh, ptr %4, align 16, !tbaa !37, !alias.scope !317
  %i.fi = fmul nsz <4 x float> %i.cz, %i.ep
  %i.fj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.eu, <4 x float> %i.fi)
  %i.fk = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.dr, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.fn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.fm, <4 x float> %i.fj) ; 4 uses
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fp = fmul nsz <4 x float> %i.bb, %i.fo
  %i.fq = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.fq, <4 x float> %i.fp)
  %i.fs = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ft = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.fs, <4 x float> %i.fr)
  %i.fu = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.fu, <4 x float> %i.ft)
  store <4 x float> %i.fv, ptr %i.be, align 16, !tbaa !37, !alias.scope !317
  %i.fw = fmul nsz <4 x float> %i.df, %i.ep
  %i.fx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.eu, <4 x float> %i.fw)
  %i.fy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.fm, <4 x float> %i.fx) ; 4 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ga = fmul nsz <4 x float> %i.bb, %i.fz
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.gb, <4 x float> %i.ga)
  %i.gd = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ge = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.gd, <4 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> %i.gf, <4 x float> %i.ge)
  store <4 x float> %i.gg, ptr %i.bf, align 16, !tbaa !37, !alias.scope !317
  %i.gh = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gi = fmul nsz <4 x float> %i.bb, %i.gh
  %i.gj = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.gj, <4 x float> %i.gi)
  %i.gl = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.gl, <4 x float> %i.gk)
  %i.gn = fadd nsz <4 x float> %i.bd, %i.gm
  store <4 x float> %i.gn, ptr %i.bg, align 16, !tbaa !37, !alias.scope !317
  %i.go = load ptr, ptr %1, align 8, !tbaa !32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.gr = load ptr, ptr %1, align 8, !tbaa !32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 96
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(127) %i.ao)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !157
  %i.gw = load ptr, ptr %1, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 448
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.gv)
  %i.gz = load ptr, ptr %1, align 8, !tbaa !32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN3Sky6updateEfffb10CameraModeff:bb.a
  %i.kl = fsub nsz double 5.000000e-01, %i.kk
  %i.km = extractelement <2 x double> %i.kb, i64 1
  %i.kn = fmul nsz double %i.km, 1.500000e+00     ; 2 uses
  %i.ko = fcmp nsz olt double %i.kn, 1.000000e+00
  %i.kp = select nsz i1 %i.ko, double %i.kn, double 1.000000e+00
  %i.kq = fsub nsz double 1.000000e+00, %i.kp
  %i.kr = tail call nsz double @llvm.fmuladd.f64(double %i.kl, double %i.kq, double %i.kk)
  %i.ks = fptrunc nsz double %i.kr to float       ; 2 uses
  %i.kt = fcmp nsz ogt float %1, 5.000000e-01
  %i.ku = fsub nsz float 1.000000e+00, %i.ks
  %.1 = select nsz i1 %i.kt, float %i.ku, float %i.ks ; 2 uses
  %i.kv = fmul nsz float %2, 3.000000e+00         ; 3 uses
  %i.kw = fcmp nsz olt float %i.kv, 2.000000e-01
  %i.kx = fcmp nsz ogt float %i.kv, 1.000000e+00
  %..i189 = select nsz i1 %i.kx, float 1.000000e+00, float %i.kv
  %.0.i190 = select nsz i1 %i.kw, float 2.000000e-01, float %..i189 ; 10 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !171
  %.not = icmp ne ptr %i.kz, null
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.lb = load i8, ptr %i.la, align 8, !range !119
  %i.lc = trunc nuw i8 %i.lb to i1                ; 2 uses
  %or.cond = select i1 %.not, i1 %i.lc, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !98 ; 3 uses
  %i.lf = lshr i32 %i.le, 8
  %i.lg = lshr i32 %i.le, 16
  %i.lh = and i32 %i.lg, 255
  %i.li = uitofp nsz nneg i32 %i.lh to float
  %i.lj = and i32 %i.le, 255
  %i.lk = and i32 %i.lf, 255
  %i.ll = uitofp nsz nneg i32 %i.lj to float
  %i.lm = uitofp nsz nneg i32 %i.lk to float
  %i.ln = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.ll, i64 1
  %i.lr = fmul nsz <2 x float> %i.lo, %i.lq
  %i.ls = fmul nsz float %.0.i190, %i.li
  %i.lt = fdiv nsz float %i.ls, 2.550000e+02
  %i.lu = fdiv nsz <2 x float> %i.lr, splat (float 2.550000e+02)
  br label %bb.x

bb.w:                                             ; preds = %_Z8rangelimIdidET_RKS0_RKT0_RKT1_.exit
  br i1 %i.lc, label %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, label %.thread298

_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.w
  %i.lv = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.lw = fcmp nsz olt float %2, 2.500000e-01
  %i.lx = fcmp nsz ogt float %2, 7.500000e-01
  %..i191 = select nsz i1 %i.lx, float 7.500000e-01, float %2
  %.0.i192 = select nsz i1 %i.lw, float 2.500000e-01, float %..i191
  %i.ly = fpext nsz float %.0.i192 to double
  %i.lz = fadd nsz double %i.ly, -2.500000e-01
  %i.ma = fmul nsz double %i.lz, 2.000000e+00
  %i.mb = tail call nsz double @llvm.fmuladd.f64(double %i.ma, double 7.500000e-01, double 2.500000e-01)
  %i.mc = fmul nsz double %i.mb, %i.lv
  %i.md = fcmp nsz olt float %2, 5.000000e-02
  %i.me = fcmp nsz ogt float %2, 1.500000e-01
  %..i193 = select nsz i1 %i.me, float 1.500000e-01, float %2
  %.0.i194 = select nsz i1 %i.md, float 5.000000e-02, float %..i193
  %i.mf = fpext nsz float %.0.i194 to double
  %i.mg = fadd nsz double %i.mf, -5.000000e-02
  %i.mh = fmul nsz double %i.mg, 1.000000e+01
  %i.mi = fmul nsz double %i.mh, 6.250000e-01
  %i.mj = fptrunc nsz double %i.mc to float       ; 2 uses
  %i.mk = fpext nsz float %i.mj to double
  %i.ml = tail call nsz double @llvm.fmuladd.f64(double %i.mk, double 3.750000e-01, double %i.mi)
  %i.mm = fmul nsz double %i.ml, %i.lv
  %i.mn = fptrunc nsz double %i.mm to float
  %i.mo = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.mj, i64 1
  br label %bb.x

bb.x:                                             ; preds = %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit, %bb.v
  %.sroa.0233.0.ph = phi float [ %i.lt, %bb.v ], [ %.0.i190, %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.mq = phi <2 x float> [ %i.lu, %bb.v ], [ %i.mp, %_Z8rangelimIfddET_RKS0_RKT0_RKT1_.exit ] ; 2 uses
  %i.mr = fpext nsz float %.0.i190 to double      ; 2 uses
  %i.ms = fmul nsz float %.0.i190, 5.000000e-01
  %i.mt = fmul nsz double %i.mr, 6.000000e-01
  %i.mu = fptrunc nsz double %i.mt to float
  %i.mv = fmul nsz double %i.mr, 8.000000e-01
  %i.mw = fptrunc nsz double %i.mv to float
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !172
  %.not128 = icmp eq ptr %i.my, null
  %i.mz = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.na = insertelement <2 x float> %i.mz, float %i.mu, i64 1
  br i1 %.not128, label %.thread306, label %bb.y

.thread298:                                       ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %.sroa.016.0.copyload = load i32, ptr %i.nb, align 8, !tbaa !111 ; 4 uses
  %i.nc = lshr i32 %.sroa.016.0.copyload, 24
  %i.nd = uitofp nsz nneg i32 %i.nc to float
  %i.ne = fmul nnan nsz float %i.nd, f0x3B808081
  %i.nf = fmul nnan nsz float %i.ne, 2.550000e+02
  %i.ng = fadd nsz float %i.nf, 5.000000e-01
  %i.nh = tail call nsz float @llvm.floor.f32(float %i.ng)
  %i.ni = fptosi float %i.nh to i32
  %i.nj = and i32 %i.ni, 255
  %i.nk = uitofp nsz nneg i32 %i.nj to float
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !98 ; 3 uses
  %i.nn = lshr i32 %.sroa.016.0.copyload, 8
  %i.no = lshr i32 %.sroa.016.0.copyload, 16
  %i.np = and i32 %i.no, 255
  %i.nq = and i32 %.sroa.016.0.copyload, 255
  %i.nr = and i32 %i.nn, 255
  %i.ns = uitofp nsz nneg i32 %i.nq to float
  %i.nt = uitofp nsz nneg i32 %i.nr to float
  %i.nu = uitofp nsz nneg i32 %i.np to float
  %i.nv = fmul nnan nsz float %i.nu, f0x3B808081
  %i.nw = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.nx = insertelement <2 x float> %i.nw, float %i.ns, i64 1
  %i.ny = fmul nnan nsz <2 x float> %i.nx, splat (float f0x3B808081)
  %i.nz = lshr i32 %i.nm, 8
  %i.oa = lshr i32 %i.nm, 16
  %i.ob = and i32 %i.nz, 255
  %i.oc = and i32 %i.oa, 255
  %i.od = uitofp nsz nneg i32 %i.ob to float
  %i.oe = uitofp nsz nneg i32 %i.oc to float
  %i.of = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.og = insertelement <2 x float> %i.of, float %i.od, i64 1
  %i.oh = fdiv nnan nsz <2 x float> %i.og, splat (float 2.550000e+02)
  %i.oi = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = fmul nsz <2 x float> %i.oj, %i.oh
  %i.ol = and i32 %i.nm, 255
  %i.om = uitofp nsz nneg i32 %i.ol to float
  %i.on = fdiv nnan nsz float %i.om, 2.550000e+02
  %i.oo = fmul nsz float %.0.i190, %i.on
  br label %.thread306

bb.y:                                             ; preds = %bb.x
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !98 ; 3 uses
  %i.or = and i32 %i.oq, 255
  %i.os = uitofp nsz nneg i32 %i.or to float
  %i.ot = fmul nsz float %.0.i190, %i.os
  %i.ou = fdiv nsz float %i.ot, 2.550000e+02
  %i.ov = lshr i32 %i.oq, 8
  %i.ow = lshr i32 %i.oq, 16
  %i.ox = and i32 %i.ov, 255
  %i.oy = and i32 %i.ow, 255
  %i.oz = uitofp nsz nneg i32 %i.ox to float
  %i.pa = uitofp nsz nneg i32 %i.oy to float
  %i.pb = insertelement <2 x float> poison, float %.0.i190, i64 0
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pe = insertelement <2 x float> %i.pd, float %i.oz, i64 1
  %i.pf = fmul nsz <2 x float> %i.pc, %i.pe
  %i.pg = fdiv nsz <2 x float> %i.pf, splat (float 2.550000e+02)
  br label %.thread306

.thread306:                                       ; preds = %.thread298, %bb.y, %bb.x
  %.sroa.0233.0359 = phi float [ %.sroa.0233.0.ph, %bb.x ], [ %.sroa.0233.0.ph, %bb.y ], [ %i.nv, %.thread298 ]
  %.sroa.17236.0353 = phi float [ 2.550000e+02, %bb.x ], [ 2.550000e+02, %bb.y ], [ %i.nk, %.thread298 ]
  %.sroa.12.1 = phi nsz float [ %i.mw, %bb.x ], [ %i.ou, %bb.y ], [ %i.oo, %.thread298 ]
  %i.ph = phi <2 x float> [ %i.na, %bb.x ], [ %i.pg, %bb.y ], [ %i.ok, %.thread298 ]
  %i.pi = phi <2 x float> [ %i.mq, %bb.x ], [ %i.mq, %bb.y ], [ %i.ny, %.thread298 ] ; 2 uses
  %i.pj = insertelement <2 x float> poison, float %.sroa.0233.0359, i64 0
  %i.pk = shufflevector <2 x float> %i.pj, <2 x float> %i.pi, <2 x i32> <i32 0, i32 2>
  %i.pl = fmul nsz <2 x float> %i.pk, splat (float 2.550000e+02)
  %i.pm = fmul nsz <2 x float> %i.ph, splat (float 2.550000e+02)
  %i.pn = fsub nsz float 1.000000e+00, %.1
  %i.po = insertelement <2 x float> %i.pi, float %.sroa.12.1, i64 0
  %i.pp = fmul nsz <2 x float> %i.po, splat (float 2.550000e+02)
  %i.pq = fadd nsz <2 x float> %i.pp, splat (float 5.000000e-01)
  %i.pr = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.pq)
  %i.ps = fptosi <2 x float> %i.pr to <2 x i32>
  %i.pt = and <2 x i32> %i.ps, splat (i32 255)
  %i.pu = fadd nsz <2 x float> %i.pl, splat (float 5.000000e-01)
  %i.pv = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.pu)
  %i.pw = fptosi <2 x float> %i.pv to <2 x i32>
  %i.px = fadd nsz <2 x float> %i.pm, splat (float 5.000000e-01)
  %i.py = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.px)
  %i.pz = fptosi <2 x float> %i.py to <2 x i32>
  %i.qa = and <2 x i32> %i.pz, splat (i32 255)
  %i.qb = and <2 x i32> %i.pw, splat (i32 255)
  %i.qc = insertelement <4 x float> poison, float %.1, i64 0
  %i.qd = shufflevector <4 x float> %i.qc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qe = shufflevector <2 x i32> %i.pt, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.qf = uitofp <4 x i32> %i.qe to <4 x float>   ; 2 uses
  %i.qg = insertelement <4 x float> %i.qf, float %.sroa.17236.0353, i64 3
  %i.qh = shufflevector <2 x i32> %i.qb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qi = uitofp <4 x i32> %i.qh to <4 x float>
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> %i.qg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qk = fmul nsz <4 x float> %i.qd, %i.qj
  %i.ql = insertelement <4 x float> poison, float %i.pn, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = shufflevector <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, <4 x float> %i.qf, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.qo = shufflevector <2 x i32> %i.qa, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qp = uitofp <4 x i32> %i.qo to <4 x float>
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> %i.qn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qm, <4 x float> %i.qq, <4 x float> %i.qk)
  %i.qs = fptoui <4 x float> %i.qr to <4 x i32>
  %8 = shufflevector <4 x i32> %i.qs, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %9 = trunc <4 x i32> %8 to <4 x i8>
  %10 = bitcast <4 x i8> %9 to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %_ZN3Sky15m_horizon_blendEv.exit, %.thread306
  %.sroa.0242.0314.ph = phi i32 [ -1, %bb.t ], [ -1, %_ZN3Sky15m_horizon_blendEv.exit ], [ %10, %.thread306 ] ; 3 uses
  %i.qt = fcmp nsz ugt double %i.jf, 4.000000e-01
  br i1 %i.qt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qu = fadd nnan nsz double %i.jf, -3.000000e-01
  %i.qv = fmul nnan nsz double %i.qu, 1.000000e+01
  %i.qw = fptrunc nnan nsz double %i.qv to float
  br label %_ZN3Sky15m_horizon_blendEv.exit198

bb.ab:                                            ; preds = %bb.z
  %i.qx = fcmp nsz ugt float %i.je, 5.000000e-01
  br i1 %i.qx, label %_ZN3Sky15m_horizon_blendEv.exit198, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qy = fsub nnan nsz double 5.000000e-01, %i.jf
  %i.qz = fmul nnan nsz double %i.qy, 1.000000e+01
  %i.ra = fptrunc nnan nsz double %i.qz to float
  br label %_ZN3Sky15m_horizon_blendEv.exit198

_ZN3Sky15m_horizon_blendEv.exit198:               ; preds = %bb.q, %bb.p, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0242.0313 = phi i32 [ %.sroa.0242.0314.ph, %bb.ab ], [ -1, %bb.p ], [ %.sroa.0242.0314.ph, %bb.aa ], [ %.sroa.0242.0314.ph, %bb.ac ], [ -1, %bb.q ] ; 7 uses
  %.1.i196 = phi nsz float [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.p ], [ %i.qw, %bb.aa ], [ %i.ra, %bb.ac ], [ 0.000000e+00, %bb.q ]
  %i.rb = fmul nnan nsz float %.1.i196, 5.000000e-01 ; 2 uses
  %i.rc = fsub nsz float 1.000000e+00, %i.rb
  %i.rd = and <2 x i32> %i.hy, splat (i32 255)
  %i.re = extractelement <2 x i32> %i.iv, i64 0
  %i.rf = uitofp nsz nneg i32 %i.re to float
  %i.rg = lshr i32 %.sroa.0242.0313, 24
  %i.rh = lshr i32 %.sroa.0242.0313, 8
  %i.ri = lshr i32 %.sroa.0242.0313, 16
  %i.rj = insertelement <4 x i32> poison, i32 %i.ri, i64 0
  %i.rk = insertelement <4 x i32> %i.rj, i32 %i.rh, i64 1
  %i.rl = insertelement <4 x i32> %i.rk, i32 %.sroa.0242.0313, i64 2
  %i.rm = insertelement <4 x i32> %i.rl, i32 %i.rg, i64 3
  %i.rn = and <4 x i32> %i.rm, <i32 255, i32 255, i32 255, i32 -1>
  %i.ro = uitofp <4 x i32> %i.rn to <4 x float>   ; 2 uses
  %i.rp = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rr = fmul nsz <4 x float> %i.rq, %i.ro
  %i.rs = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.rf, i64 2
  %i.rv = shufflevector <2 x i32> %i.rd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rw = uitofp <4 x i32> %i.rv to <4 x float>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> %i.ru, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ry = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rt, <4 x float> %i.rx, <4 x float> %i.rr)
  %i.rz = fptoui <4 x float> %i.ry to <4 x i32>
  %11 = shufflevector <4 x i32> %i.rz, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %12 = trunc <4 x i32> %11 to <4 x i8>
  store <4 x i8> %12, ptr %i.hz, align 4, !tbaa !111
  br i1 %4, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %_ZN3Sky15m_horizon_blendEv.exit198
  %i.sa = fcmp nsz ult float %1, 5.000000e-01
  %i.sb = fsub nnan nsz float 1.000000e+00, %1
  %.in.i200 = select i1 %i.sa, float %1, float %i.sb
  %i.sc = fmul nsz float %.in.i200, 2.000000e+00  ; 2 uses
  %i.sd = fpext nsz float %i.sc to double         ; 4 uses
  %i.se = fcmp nsz ugt double %i.sd, 3.000000e-01
  br i1 %i.se, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.sf = fcmp nsz ugt double %i.sd, 4.000000e-01
  br i1 %i.sf, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.sg = fadd nnan nsz double %i.sd, -3.000000e-01
  %i.sh = fmul nnan nsz double %i.sg, 1.000000e+01
  %i.si = fptrunc nnan nsz double %i.sh to float
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.sj = fcmp nsz ugt float %i.sc, 5.000000e-01
  br i1 %i.sj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.sk = fsub nnan nsz double 5.000000e-01, %i.sd
  %i.sl = fmul nnan nsz double %i.sk, 1.000000e+01
  %i.sm = fptrunc nnan nsz double %i.sl to float
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %_ZN3Sky15m_horizon_blendEv.exit198
  %.1.i199 = phi nsz float [ 0.000000e+00, %_ZN3Sky15m_horizon_blendEv.exit198 ], [ 0.000000e+00, %bb.ad ], [ %i.si, %bb.af ], [ %i.sm, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.sn = fmul nnan nsz float %.1.i199, 2.500000e-01 ; 2 uses
  %i.so = fsub nsz float 1.000000e+00, %i.sn
  %i.sp = and <2 x i32> %i.ih, splat (i32 255)
  %i.sq = extractelement <2 x i32> %i.iv, i64 1
  %i.sr = uitofp nsz nneg i32 %i.sq to float
  %i.ss = insertelement <4 x float> poison, float %i.sn, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = fmul nsz <4 x float> %i.st, %i.ro
  %i.sv = insertelement <4 x float> poison, float %i.so, i64 0
  %i.sw = shufflevector <4 x float> %i.sv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sx = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.sr, i64 2
  %i.sy = shufflevector <2 x i32> %i.sp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sz = uitofp <4 x i32> %i.sy to <4 x float>
  %i.ta = shufflevector <4 x float> %i.sz, <4 x float> %i.sx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.tb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sw, <4 x float> %i.ta, <4 x float> %i.su)
  %i.tc = fptoui <4 x float> %i.tb to <4 x i32>
  %13 = shufflevector <4 x i32> %i.tc, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %14 = trunc <4 x i32> %13 to <4 x i8>
  store <4 x i8> %14, ptr %i.ii, align 8, !tbaa !111
  br i1 %4, label %bb.ak, label %bb.aq

.thread317:                                       ; preds = %bb.o
  br i1 %4, label %.thread321, label %bb.aq

.thread321:                                       ; preds = %.thread317
  %i.td = fcmp nsz olt float %2, f0x3F333333
  br i1 %i.td, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %.thread321
  %i.te = fmul nnan nsz float %2, 1.300000e+00
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.tf = fcmp nsz ult float %1, 5.000000e-01
  %i.tg = fsub nnan nsz float 1.000000e+00, %1
  %.in.i203 = select i1 %i.tf, float %1, float %i.tg
  %i.th = fmul nsz float %.in.i203, 2.000000e+00  ; 2 uses
  %i.ti = fpext nsz float %i.th to double         ; 4 uses
  %i.tj = fcmp nsz ugt double %i.ti, 3.000000e-01
  br i1 %i.tj, label %bb.al, label %_ZN3Sky15m_horizon_blendEv.exit204

bb.al:                                            ; preds = %bb.ak
  %i.tk = fcmp nsz ugt double %i.ti, 4.000000e-01
  br i1 %i.tk, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.tl = fadd nnan nsz double %i.ti, -3.000000e-01
  %i.tm = fmul nnan nsz double %i.tl, 1.000000e+01
  %i.tn = fptrunc nsz double %i.tm to float
  br label %_ZN3Sky15m_horizon_blendEv.exit204

bb.an:                                            ; preds = %bb.al
  %i.to = fcmp nsz ugt float %i.th, 5.000000e-01
  br i1 %i.to, label %_ZN3Sky15m_horizon_blendEv.exit204, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.tp = fsub nnan nsz double 5.000000e-01, %i.ti
  %i.tq = fmul nnan nsz double %i.tp, 1.000000e+01
  %i.tr = fptrunc nsz double %i.tq to float
  br label %_ZN3Sky15m_horizon_blendEv.exit204

_ZN3Sky15m_horizon_blendEv.exit204:               ; preds = %bb.ak, %bb.am, %bb.an, %bb.ao
  %.1.i202 = phi nsz float [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ak ], [ %i.tn, %bb.am ], [ %i.tr, %bb.ao ]
  %i.ts = tail call nsz float @llvm.fmuladd.f32(float %.1.i202, float 1.500000e-01, float %2)
  %i.tt = tail call nsz noundef float @llvm.minnum.f32(float %i.ts, float 1.000000e+00) ; 2 uses
  %i.tu = fcmp nsz olt float %2, 5.000000e-01
  br i1 %i.tu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN3Sky15m_horizon_blendEv.exit204
  %i.tv = fmul nnan nsz float %2, 1.300000e+00
  %i.tw = tail call nsz noundef float @llvm.maxnum.f32(float %i.tt, float %i.tv)
  br label %bb.aq

bb.aq:                                            ; preds = %.thread317, %bb.ai, %bb.aj, %.thread321, %bb.ap, %_ZN3Sky15m_horizon_blendEv.exit204
  %.sroa.0242.1319 = phi i32 [ %.sroa.0242.0313, %bb.ap ], [ %.sroa.0242.0313, %_ZN3Sky15m_horizon_blendEv.exit204 ], [ -1, %bb.aj ], [ -1, %.thread321 ], [ %.sroa.0242.0313, %bb.ai ], [ -1, %.thread317 ] ; 4 uses
  %.0118 = phi nsz float [ %i.tw, %bb.ap ], [ %i.tt, %_ZN3Sky15m_horizon_blendEv.exit204 ], [ %i.te, %bb.aj ], [ %2, %.thread321 ], [ %3, %bb.ai ], [ %3, %.thread317 ]
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 1812 ; 2 uses
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !325
  %i.tz = fmul nsz float %.0117295, %i.ty
  %i.ua = fpext nsz float %i.tz to double
  %i.ub = fpext nsz float %.0118 to double
  %i.uc = fpext nsz float %.0117295 to double
  %i.ud = fsub nsz double 1.000000e+00, %i.uc
  %i.ue = tail call nsz double @llvm.fmuladd.f64(double %i.ub, double %i.ud, double %i.ua)
  %i.uf = fptrunc nsz double %i.ue to float       ; 3 uses
  store float %i.uf, ptr %i.tx, align 4, !tbaa !325
  %i.ug = fmul nsz float %i.hi, %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1876 ; 3 uses
  %i.ui = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.uj = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uk = fmul nsz <2 x float> %i.hk, %i.uj
  store <2 x float> %i.uk, ptr %i.uh, align 4, !tbaa !37
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1884 ; 3 uses
  store float %i.ug, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store float 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !37
  br i1 %i.jb, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.uh, align 4
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4
  %i.ul = lshr i32 %.sroa.0242.1319, 24
  %i.um = lshr i32 %.sroa.0242.1319, 16
  %i.un = lshr i32 %.sroa.0242.1319, 8
  %i.uo = insertelement <4 x i32> poison, i32 %i.un, i64 0
  %i.up = insertelement <4 x i32> %i.uo, i32 %i.um, i64 1
  %i.uq = insertelement <4 x i32> %i.up, i32 %i.ul, i64 2
  %i.ur = insertelement <4 x i32> %i.uq, i32 %.sroa.0242.1319, i64 3
  %i.us = and <4 x i32> %i.ur, <i32 255, i32 255, i32 -1, i32 255>
  %i.ut = uitofp <4 x i32> %i.us to <4 x float>   ; 2 uses
  %i.uu = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uv = fmul nnan nsz <2 x float> %i.uu, splat (float f0x3B808081)
  %i.uw = shufflevector <4 x float> %i.ut, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ux = fmul nnan nsz <2 x float> %i.uw, splat (float f0x3B808081)
  br i1 %4, label %bb.as, label %_ZN3Sky15m_horizon_blendEv.exit207

bb.as:                                            ; preds = %bb.ar
  %i.uy = fcmp nsz ult float %1, 5.000000e-01
  %i.uz = fsub nnan nsz float 1.000000e+00, %1
  %.in.i206 = select i1 %i.uy, float %1, float %i.uz
  %i.va = fmul nsz float %.in.i206, 2.000000e+00  ; 2 uses
  %i.vb = fpext nsz float %i.va to double         ; 4 uses
  %i.vc = fcmp nsz ugt double %i.vb, 3.000000e-01
  br i1 %i.vc, label %bb.at, label %_ZN3Sky15m_horizon_blendEv.exit207

bb.at:                                            ; preds = %bb.as
  %i.vd = fcmp nsz ugt double %i.vb, 4.000000e-01
  br i1 %i.vd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ve = fadd nnan nsz double %i.vb, -3.000000e-01
  %i.vf = fmul nnan nsz double %i.ve, 1.000000e+01
  %i.vg = fptrunc nnan nsz double %i.vf to float
  br label %_ZN3Sky15m_horizon_blendEv.exit207

bb.av:                                            ; preds = %bb.at
  %i.vh = fcmp nsz ugt float %i.va, 5.000000e-01
  br i1 %i.vh, label %_ZN3Sky15m_horizon_blendEv.exit207, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.vi = fsub nnan nsz double 5.000000e-01, %i.vb
  %i.vj = fmul nnan nsz double %i.vi, 1.000000e+01
  %i.vk = fptrunc nnan nsz double %i.vj to float
  br label %_ZN3Sky15m_horizon_blendEv.exit207

_ZN3Sky15m_horizon_blendEv.exit207:               ; preds = %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw
  %.1.i205 = phi nsz float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.as ], [ %i.vg, %bb.au ], [ %i.vk, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.vl = fmul nnan nsz float %.1.i205, 2.500000e-01 ; 2 uses
  %i.vm = fsub nsz float 1.000000e+00, %i.vl
  %i.vn = insertelement <2 x float> poison, float %i.vl, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vp = fmul nsz <2 x float> %i.uv, %i.vo
  %i.vq = insertelement <2 x float> poison, float %i.vm, i64 0
  %i.vr = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.01.0.copyload, <2 x float> %i.vr, <2 x float> %i.vp)
  %i.vt = fmul nsz <2 x float> %i.ux, %i.vo
  %i.vu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.2.0.copyload, <2 x float> %i.vr, <2 x float> %i.vt)
  store <2 x float> %i.vs, ptr %i.uh, align 4
  store <2 x float> %i.vu, ptr %.sroa.5.0..sroa_idx, align 4
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
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !77
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !77
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !104
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !432, !noalias !433
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !112, !alias.scope !433, !noalias !432 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !104, !alias.scope !433, !noalias !432 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !434
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !112, !alias.scope !432, !noalias !433
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !77, !alias.scope !433, !noalias !432
  store i64 %i.an, ptr %i.af, align 8, !tbaa !77, !alias.scope !432, !noalias !433
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !104, !alias.scope !433, !noalias !432
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !104, !alias.scope !432, !noalias !433
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !112, !alias.scope !433, !noalias !432
  store i64 0, ptr %i.ap, align 8, !tbaa !104, !alias.scope !433, !noalias !432
  store i8 0, ptr %i.ah, align 8, !tbaa !77, !alias.scope !433, !noalias !432
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !428

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !103, !alias.scope !435, !noalias !436
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !112, !alias.scope !436, !noalias !435 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !104, !alias.scope !436, !noalias !435 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !437
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !112, !alias.scope !435, !noalias !436
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !77, !alias.scope !436, !noalias !435
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !77, !alias.scope !435, !noalias !436
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !104, !alias.scope !436, !noalias !435
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !104, !alias.scope !435, !noalias !436
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !112, !alias.scope !436, !noalias !435
  store i64 0, ptr %i.be, align 8, !tbaa !104, !alias.scope !436, !noalias !435
  store i8 0, ptr %i.aw, align 8, !tbaa !77, !alias.scope !436, !noalias !435
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !428

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !115
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !113
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !114
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !115
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #31 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #32
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare extern_weak void @_ZTH13warningstream() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #26

declare extern_weak void @_ZTH10infostream() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null}
!1 = distinct !{!1, !70}
!2 = distinct !{!2, !70}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !70}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSN5video6SColorE", !14, i64 0}
!18 = !{!"any pointer", !13, i64 0}
!19 = !{!"p1 _ZTS13RenderingCore", !18, i64 0}
!20 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !19, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !20, i64 0}
!22 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !21, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !23, i64 0}
!25 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !24, i64 0}
!26 = !{!"p1 _ZTS14IrrlichtDevice", !18, i64 0}
!27 = !{!"p1 _ZTSN5video12IVideoDriverE", !18, i64 0}
!28 = !{!"p1 _ZTS15MyEventReceiver", !18, i64 0}
!29 = !{!"_ZTS15RenderingEngine", !17, i64 0, !17, i64 4, !25, i64 8, !26, i64 16, !27, i64 24, !28, i64 32}
!30 = !{!29, !26, i64 16}
!31 = !{!"vtable pointer", !12, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"bool", !13, i64 0}
!34 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !13, i64 0, !33, i64 32}
!35 = !{!34, !33, i64 32}
!36 = !{!"float", !13, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !18, i64 0}
!39 = !{!"_ZTSNSt8__detail15_List_node_baseE", !38, i64 0, !38, i64 8}
!40 = !{!39, !38, i64 8}
!41 = !{!39, !38, i64 0}
!42 = !{!"long", !13, i64 0}
!43 = !{!"_ZTSNSt8__detail17_List_node_headerE", !39, i64 0, !42, i64 16}
!44 = !{!43, !42, i64 16}
!45 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !13, i64 0, !33, i64 8}
!46 = !{!45, !33, i64 8}
!47 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !34, i64 0}
!48 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !47, i64 0}
!49 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !48, i64 0}
!50 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !49, i64 0}
!51 = !{!"_ZTSN4core8CMatrix4IfEE", !13, i64 0}
!52 = !{!"_ZTSN4core8vector3dIfEE", !36, i64 0, !36, i64 4, !36, i64 8}
!53 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !43, i64 0}
!54 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !53, i64 0}
!55 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !54, i64 0}
!56 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !45, i64 0}
!57 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !57, i64 0}
!59 = !{!"p1 _ZTSN5scene10ISceneNodeE", !18, i64 0}
!60 = !{!"p1 _ZTSN5scene13ISceneManagerE", !18, i64 0}
!61 = !{!"short", !13, i64 0}
!62 = !{!"_ZTSN5scene10ISceneNodeE", !50, i64 8, !51, i64 48, !52, i64 112, !52, i64 124, !52, i64 136, !55, i64 152, !58, i64 176, !59, i64 192, !60, i64 200, !14, i64 208, !61, i64 212, !61, i64 214, !33, i64 216, !33, i64 217}
!63 = !{!62, !59, i64 192}
!64 = !{!62, !60, i64 200}
!65 = !{!62, !14, i64 208}
!66 = !{!62, !61, i64 212}
!67 = !{!62, !61, i64 214}
!68 = !{!62, !33, i64 216}
!69 = !{!62, !33, i64 217}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"p1 _ZTSN5video8ITextureE", !18, i64 0}
!72 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !13, i64 0}
!73 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !13, i64 0}
!74 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !18, i64 0}
!75 = !{!"_ZTSN5video14SMaterialLayerE", !71, i64 0, !13, i64 8, !13, i64 8, !13, i64 9, !72, i64 10, !73, i64 11, !13, i64 12, !13, i64 13, !74, i64 16}
!76 = !{!75, !71, i64 0}
!77 = !{!13, !13, i64 0}
!78 = !{!"_ZTSN4core8aabbox3dIfEE", !52, i64 0, !52, i64 12}
!79 = !{!"_ZTSN5video7SColorfE", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!80 = !{!"p1 omnipotent char", !18, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !80, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !81, i64 0, !42, i64 8, !13, i64 16}
!83 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !84, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !85, i64 0}
!87 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !86, i64 0}
!88 = !{!"_ZTS8SkyColor", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24}
!89 = !{!"_ZTS12SkyboxParams", !17, i64 0, !82, i64 8, !87, i64 40, !33, i64 64, !88, i64 68, !17, i64 96, !17, i64 100, !82, i64 104, !36, i64 136, !61, i64 140, !36, i64 144, !17, i64 148, !33, i64 152}
!90 = !{!"_ZTS9SunParams", !33, i64 0, !82, i64 8, !82, i64 40, !82, i64 72, !33, i64 104, !36, i64 108}
!91 = !{!"_ZTS10MoonParams", !33, i64 0, !82, i64 8, !82, i64 40, !36, i64 72}
!92 = !{!"_ZTS10StarParams", !33, i64 0, !14, i64 4, !17, i64 8, !36, i64 12, !36, i64 16, !42, i64 24}
!93 = !{!"p1 _ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !18, i64 0}
!94 = !{!"_ZTS7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE", !93, i64 0}
!95 = !{!"p1 _ZTSN5video6IImageE", !18, i64 0}
!96 = !{!"_ZTS3Sky", !62, i64 0, !78, i64 220, !13, i64 248, !33, i64 1784, !17, i64 1788, !33, i64 1792, !36, i64 1796, !36, i64 1800, !33, i64 1804, !36, i64 1808, !36, i64 1812, !33, i64 1816, !33, i64 1817, !33, i64 1818, !33, i64 1819, !79, i64 1820, !79, i64 1836, !79, i64 1852, !17, i64 1868, !17, i64 1872, !79, i64 1876, !79, i64 1892, !79, i64 1908, !89, i64 1928, !90, i64 2088, !91, i64 2200, !92, i64 2280, !33, i64 2312, !42, i64 2320, !94, i64 2328, !71, i64 2336, !71, i64 2344, !95, i64 2352, !95, i64 2360}
!97 = !{!96, !33, i64 1784}
!98 = !{!17, !14, i64 0}
!99 = !{!96, !33, i64 1792}
!100 = !{!96, !33, i64 1817}
!101 = !{!96, !33, i64 1819}
!102 = !{!79, !36, i64 12}
!103 = !{!81, !80, i64 0}
!104 = !{!82, !42, i64 8}
!105 = !{!89, !36, i64 136}
!106 = !{!89, !61, i64 140}
!107 = !{!89, !36, i64 144}
!108 = !{!89, !33, i64 152}
!109 = !{!96, !33, i64 2312}
!110 = !{!96, !42, i64 2320}
!111 = !{!14, !14, i64 0}
!112 = !{!82, !80, i64 0}
!113 = !{!84, !83, i64 0}
!114 = !{!84, !83, i64 8}
!115 = !{!84, !83, i64 16}
!116 = !{!90, !33, i64 0}
!117 = !{!90, !33, i64 104}
!118 = !{!90, !36, i64 108}
!119 = !{i8 0, i8 2}
!120 = !{}
!121 = !{!91, !33, i64 0}
!122 = !{!91, !36, i64 72}
!123 = !{!33, !33, i64 0}
!124 = !{!42, !42, i64 0}
!125 = !{!75, !74, i64 16}
!126 = !{!"_ZTSSt14_Rb_tree_color", !13, i64 0}
!127 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!128 = !{!"_ZTSSt18_Rb_tree_node_base", !126, i64 0, !127, i64 8, !127, i64 16, !127, i64 24}
!129 = !{!"_ZTSSt15_Rb_tree_header", !128, i64 0, !42, i64 32}
!130 = !{!129, !127, i64 16}
!131 = !{!129, !127, i64 24}
!132 = !{!129, !42, i64 32}
!133 = !{!129, !127, i64 8}
!134 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !13, i64 0}
!135 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!136 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !135, i64 0}
!137 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !136, i64 0, !129, i64 8}
!138 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !137, i64 0}
!139 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJifEESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !138, i64 0}
!140 = !{!"p1 _ZTS22IShaderUniformSetterRC", !18, i64 0}
!141 = !{!"_ZTS7irr_ptrI22IShaderUniformSetterRCE", !140, i64 0}
!142 = !{!"_ZTS10ShaderInfo", !82, i64 0, !134, i64 32, !134, i64 36, !139, i64 40, !141, i64 88}
!143 = !{!142, !134, i64 36}
!144 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !13, i64 0}
!145 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !13, i64 0}
!146 = !{!"_ZTSN5video13E_COLOR_PLANEE", !13, i64 0}
!147 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !13, i64 0}
!148 = !{!"_ZTSN5video8E_ZWRITEE", !13, i64 0}
!149 = !{!"_ZTSN5video9SMaterialE", !13, i64 0, !134, i64 96, !17, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !144, i64 124, !145, i64 124, !146, i64 125, !147, i64 125, !33, i64 126, !33, i64 126, !148, i64 126, !33, i64 126, !33, i64 126, !33, i64 126, !33, i64 126}
!150 = !{!149, !134, i64 96}
!151 = !{!"p1 _ZTS8Settings", !18, i64 0}
end_hunk_2
