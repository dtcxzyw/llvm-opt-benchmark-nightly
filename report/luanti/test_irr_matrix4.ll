Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_matrix4?download=true
inline.NumInlined: 572
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL11LEFT_HANDEDRKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEE:bb.a
  %i.sv = extractelement <2 x float> %i.so, i64 1
  %i.sw = call nsz float @llvm.fabs.f32(float %i.sv)
  %i.sx = fcmp nsz ole float %i.sw, f0x358637BD
  %i.sy = select i1 %or.cond288.not, i1 %i.sx, i1 false
  %i.sz = zext i1 %i.sy to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.ta, align 8, !tbaa !22, !alias.scope !175
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.sz, ptr %i.tb, align 1, !tbaa !23, !alias.scope !175
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %1, align 8, !tbaa !25, !alias.scope !175
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.sz, ptr %i.tc, align 2, !tbaa !27, !alias.scope !175
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %44, ptr noundef nonnull align 8 dereferenceable(10) %1)
          to label %bb.eo unwind label %bb.eu

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.ew

bb.ep:                                            ; preds = %bb.eh
  %i.td = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.er unwind label %bb.fj

bb.eq:                                            ; preds = %bb.ej, %bb.ei
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %.pn153 = phi { ptr, i32 } [ %i.te, %bb.eq ], [ %i.td, %bb.ep ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %42) #19
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eg
  %.pn153.pn = phi { ptr, i32 } [ %.pn153, %bb.er ], [ %i.ra, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.fe

bb.et:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit229
  %i.tf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %bb.fd

bb.eu:                                            ; preds = %bb.en
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %.24 = extractvalue { ptr, i32 } %i.tg, 0
  %i.th = call ptr @__cxa_begin_catch(ptr %.24) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %44)
          to label %bb.ev unwind label %bb.fa

bb.ev:                                            ; preds = %bb.eu
  invoke void @__cxa_end_catch()
          to label %bb.ew unwind label %bb.fb

bb.ew:                                            ; preds = %bb.ev, %bb.eo
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %44)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.ti = getelementptr inbounds nuw i8, ptr %44, i64 59
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !34, !range !35, !noundef !36
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %_ZN5Catch16AssertionHandlerD2Ev.exit237, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.tl = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !25
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 160
  %i.tp = load ptr, ptr %i.to, align 8
  invoke void %i.tp(ptr noundef nonnull align 8 dereferenceable(8) %i.tm, ptr noundef nonnull align 8 dereferenceable(72) %44)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit237 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.tq = landingpad { ptr, i32 }
          catch ptr null
  %i.tr = extractvalue { ptr, i32 } %i.tq, 0
  call void @__clang_call_terminate(ptr %i.tr) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit237:          ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.ff

bb.fa:                                            ; preds = %bb.eu
  %i.ts = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fc unwind label %bb.fj

bb.fb:                                            ; preds = %bb.ew, %bb.ev
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %.pn157 = phi { ptr, i32 } [ %i.tt, %bb.fb ], [ %i.ts, %bb.fa ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %44) #19
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.et
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.fc ], [ %i.tf, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.es, %bb.ef, %bb.dp
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.fd ], [ %.pn153.pn, %bb.es ], [ %.pn150.pn, %bb.ef ], [ %i.ot, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.fg

bb.ff:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit237, %bb.dg
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe, %bb.do
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %bb.fe ], [ %i.os, %bb.do ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.b
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret void

bb.fi:                                            ; preds = %bb.dn, %bb.fg, %bb.bp, %bb.dm, %bb.l, %bb.bo, %bb.k
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ii, %bb.bp ], [ %i.bj, %bb.l ], [ %i.bi, %bb.k ], [ %.pn131.pn.pn.pn, %bb.bo ], [ %.pn144.pn.pn.pn, %bb.dm ], [ %.pn157.pn.pn.pn, %bb.fg ], [ %i.or, %bb.dn ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %.pn157.pn.pn.pn.pn.pn

bb.fj:                                            ; preds = %bb.fa, %bb.ep, %bb.ec, %bb.cz, %bb.co, %bb.cb, %bb.ay, %bb.an, %bb.x
  %i.tu = landingpad { ptr, i32 }
          catch ptr null
  %i.tv = extractvalue { ptr, i32 } %i.tu, 0
  call void @__clang_call_terminate(ptr %i.tv) #20
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22CATCH2_INTERNAL_TEST_4vENK3$_3clEN4core8vector3dIfEES2_"(<2 x float> %0, float %1, <2 x float> %2, float %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %5 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %6 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %7 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %8 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %9 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.sroa.083.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.084.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.084.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.a = fpext nsz float %1 to double
  %sincos39.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.a) ; 2 uses
  %sin40.i = extractvalue { double, double } %sincos39.i, 0 ; 4 uses
  %cos41.i = extractvalue { double, double } %sincos39.i, 1 ; 4 uses
  %i.b = fneg nsz double %sin40.i
  %i.c = fneg nsz double %cos41.i
  %i.d = fpext nsz float %.sroa.084.0.vec.extract to double
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 3 uses
  %i.e = fpext nsz float %.sroa.084.4.vec.extract to double
  %sincos36.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0 ; 3 uses
  %cos38.i = extractvalue { double, double } %sincos36.i, 1 ; 3 uses
  %i.f = insertelement <2 x double> poison, double %cos38.i, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = insertelement <2 x double> poison, double %cos41.i, i64 0
  %i.i = insertelement <2 x double> %i.h, double %sin40.i, i64 1 ; 2 uses
  %i.j = fmul nsz <2 x double> %i.g, %i.i
  %i.k = fptrunc <2 x double> %i.j to <2 x float> ; 7 uses
  %i.l = fptrunc nsz double %sin37.i to float     ; 3 uses
  %i.m = fneg nsz float %i.l                      ; 2 uses
  %i.n = fmul nsz double %sin.i, %sin37.i
  %i.o = fmul nsz double %cos.i, %sin37.i
  %i.p = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x double> poison, double %i.b, i64 0
  %i.s = insertelement <2 x double> %i.r, double %cos41.i, i64 1
  %i.t = fmul nsz <2 x double> %i.q, %i.s
  %i.u = insertelement <2 x double> poison, double %i.n, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.i, <2 x double> %i.t)
  %i.x = fptrunc <2 x double> %i.w to <2 x float> ; 6 uses
  %i.y = fmul nsz double %sin.i, %cos38.i
  %i.z = fptrunc nsz double %i.y to float         ; 4 uses
  %i.aa = fmul nsz double %cos.i, %cos38.i
  %i.ab = fptrunc nsz double %i.aa to float       ; 4 uses
  %i.ac = fmul nsz float %i.z, 0.000000e+00       ; 2 uses
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.m, float %.sroa.083.0.vec.extract, float %i.ac)
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.ad) ; 3 uses
  %i.af = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul nsz <2 x float> %i.af, %i.x
  %i.ah = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> zeroinitializer, <2 x float> %i.ag)
  %i.ai = fmul nsz <2 x float> %i.x, zeroinitializer ; 3 uses
  %i.aj = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.aj, <2 x float> %i.ai)
  %i.al = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x double> poison, double %sin40.i, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.c, i64 1
  %i.ap = fmul nsz <2 x double> %i.am, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x double> poison, double %cos41.i, i64 0
  %i.at = insertelement <2 x double> %i.as, double %sin40.i, i64 1
  %i.au = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.at, <2 x double> %i.ap)
  %i.av = fptrunc <2 x double> %i.au to <2 x float> ; 8 uses
  %10 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> zeroinitializer, <2 x float> %i.ak) ; 4 uses
  %i.aw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> zeroinitializer, <2 x float> %i.ah) ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %10, %10
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ay = extractelement <2 x float> %10, i64 0   ; 2 uses
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.az)
  %i.bb = tail call nsz noundef float @llvm.sqrt.f32(float %i.ba) ; 2 uses
  %i.bc = tail call nsz float @llvm.fabs.f32(float %i.bb)
  %i.bd = fcmp nsz ole float %i.bc, f0x358637BD
  %i.be = fpext nsz float %i.bb to double
  %i.bf = fdiv nsz double 1.000000e+00, %i.be
  %i.bg = select i1 %i.bd, double f0x37F0000010000010, double %i.bf ; 2 uses
  %i.bh = fpext nsz float %i.ae to double
  %i.bi = fmul nsz double %i.bg, %i.bh            ; 2 uses
  %i.bj = fcmp nsz olt double %i.bi, -1.000000e+00
  %i.bk = select i1 %i.bj, double -1.000000e+00, double %i.bi ; 2 uses
  %i.bl = fcmp nsz olt double %i.bk, 1.000000e+00
  %i.bm = select i1 %i.bl, double %i.bk, double 1.000000e+00 ; 2 uses
  %i.bn = tail call nsz noundef double @llvm.fabs.f64(double %i.bm)
  %i.bo = fadd nsz double %i.bn, -1.000000e+00
  %i.bp = tail call nsz noundef double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp nsz ugt double %i.bp, 1.000000e-08
  br i1 %i.bq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.083.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.br = fmul nsz float %.sroa.083.4.vec.extract, %i.z
  %i.bs = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.ac, i64 1
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> zeroinitializer, <2 x float> %i.bv)
  %i.bx = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x float> <float 0.000000e+00, float poison>, float %3, i64 1
  %i.ca = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.bw) ; 3 uses
  %i.cb = extractelement <2 x float> %i.k, i64 1
  %i.cc = extractelement <2 x float> %i.ai, i64 1
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.cb, float 0.000000e+00, float %i.cc)
  %11 = extractelement <2 x float> %i.av, i64 1
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %11, float %3, float %i.cd)
  %i.cf = extractelement <2 x float> %i.k, i64 0
  %i.cg = extractelement <2 x float> %i.ai, i64 0
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float 0.000000e+00, float %i.cg)
  %12 = extractelement <2 x float> %i.av, i64 0
  %13 = tail call nsz float @llvm.fmuladd.f32(float %12, float %3, float %i.ch)
  %i.ci = insertelement <2 x float> %i.aw, float %i.ce, i64 0 ; 2 uses
  %i.cj = fmul nsz <2 x float> %i.ci, %i.ci
  %i.ck = insertelement <2 x float> poison, float %13, i64 0
  %14 = shufflevector <2 x float> %i.ck, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %14, <2 x float> %i.cj)
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.ca, <2 x float> %i.cm)
  %i.co = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cn) ; 2 uses
  %i.cp = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.co)
  %i.cq = fcmp nsz ole <2 x float> %i.cp, splat (float f0x358637BD)
  %i.cr = fpext <2 x float> %i.co to <2 x double>
  %i.cs = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.cr
  %i.ct = select <2 x i1> %i.cq, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.cs
  %i.cu = fpext <2 x float> %i.ca to <2 x double>
  %i.cv = fmul nsz <2 x double> %i.ct, %i.cu      ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = extractelement <2 x double> %i.cv, i64 1
  %i.cy = tail call nsz double @llvm.atan2.f64(double %i.cw, double %i.cx)
  %15 = fpext <2 x float> %10 to <2 x double>
  %16 = insertelement <2 x double> poison, double %i.bg, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fmul nsz <2 x double> %17, %15            ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %20 = extractelement <2 x double> %18, i64 1
  %i.cz = tail call nsz double @llvm.atan2.f64(double %20, double %19)
  %i.da = fptrunc nsz double %i.cy to float
  %i.db = fpext nsz float %i.da to double
  %i.dc = tail call nsz { double, double } @llvm.sincos.f64(double %i.db)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

bb.c:                                             ; preds = %bb.a
  %21 = extractelement <2 x float> %i.aw, i64 1
  %i.dd = fpext nsz float %21 to double
  %i.de = extractelement <2 x float> %i.aw, i64 0
  %i.df = fneg nsz float %i.de
  %i.dg = fpext nsz float %i.df to double
  %i.dh = tail call nsz double @llvm.atan2.f64(double %i.dg, double %i.dd)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit: ; preds = %bb.b, %bb.c
  %.025.i.i.i = phi { double, double } [ { double 0.000000e+00, double 1.000000e+00 }, %bb.c ], [ %i.dc, %bb.b ] ; 2 uses
  %.0.i.i.i = phi nsz double [ %i.dh, %bb.c ], [ %i.cz, %bb.b ]
  %i.di = tail call nsz double @llvm.asin.f64(double %i.bm)
  %i.dj = fptrunc nsz double %i.di to float       ; 2 uses
  %i.dk = fneg nsz float %i.dj
  %i.dl = fptrunc nsz double %.0.i.i.i to float
  %sin.i24 = extractvalue { double, double } %.025.i.i.i, 0 ; 4 uses
  %cos.i25 = extractvalue { double, double } %.025.i.i.i, 1 ; 4 uses
  %i.dm = fpext nsz float %i.dk to double
  %sincos36.i26 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dm) ; 2 uses
  %sin37.i27 = extractvalue { double, double } %sincos36.i26, 0 ; 3 uses
  %cos38.i28 = extractvalue { double, double } %sincos36.i26, 1 ; 4 uses
  %i.dn = fpext nsz float %i.dl to double
  %sincos39.i29 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dn) ; 2 uses
  %sin40.i30 = extractvalue { double, double } %sincos39.i29, 0 ; 5 uses
  %cos41.i31 = extractvalue { double, double } %sincos39.i29, 1 ; 5 uses
  %i.do = fmul nsz double %cos38.i28, %cos41.i31
  %i.dp = fptrunc nsz double %i.do to float
  %i.dq = fmul nsz double %cos38.i28, %sin40.i30
  %i.dr = fptrunc nsz double %i.dq to float       ; 2 uses
  %i.ds = fptrunc nsz double %sin37.i27 to float  ; 2 uses
  %i.dt = fmul nsz double %sin37.i27, %sin.i24    ; 2 uses
  %i.du = fmul nsz double %sin37.i27, %cos.i25    ; 2 uses
  %i.dv = fneg nsz double %sin40.i30
  %i.dw = fmul nsz double %cos.i25, %i.dv
  %i.dx = tail call nsz double @llvm.fmuladd.f64(double %i.dt, double %cos41.i31, double %i.dw)
  %i.dy = fptrunc nsz double %i.dx to float       ; 2 uses
  %i.dz = fmul nsz double %cos.i25, %cos41.i31
  %i.ea = tail call nsz double @llvm.fmuladd.f64(double %i.dt, double %sin40.i30, double %i.dz)
  %i.eb = fptrunc nsz double %i.ea to float       ; 2 uses
  %i.ec = fmul nsz double %cos38.i28, %sin.i24
  %i.ed = fptrunc nsz double %i.ec to float       ; 2 uses
  %i.ee = fmul nsz double %sin.i24, %sin40.i30
  %i.ef = tail call nsz double @llvm.fmuladd.f64(double %i.du, double %cos41.i31, double %i.ee)
  %i.eg = fptrunc nsz double %i.ef to float       ; 2 uses
  %i.eh = fneg nsz double %cos41.i31
  %i.ei = fmul nsz double %sin.i24, %i.eh
  %i.ej = tail call nsz double @llvm.fmuladd.f64(double %i.du, double %sin40.i30, double %i.ei)
  %i.ek = fptrunc nsz double %i.ej to float       ; 2 uses
  %i.el = fmul nsz double %cos38.i28, %cos.i25
  %i.em = fptrunc nsz double %i.el to float       ; 2 uses
  %i.en = tail call nsz float @llvm.fabs.f32(float %i.dj)
  %i.eo = fadd nsz float %i.en, f0xBFC90FDB
  %i.ep = tail call nsz noundef float @llvm.fabs.f32(float %i.eo)
  %i.eq = fcmp nsz olt float %i.ep, f0x3C23D70A
  %i.er = extractelement <2 x float> %i.k, i64 0
  %i.es = fsub nsz float %i.er, %i.dp
  %i.et = tail call nsz float @llvm.fabs.f32(float %i.es) ; 2 uses
  br i1 %i.eq, label %bb.d, label %bb.v

bb.d:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr @.str, ptr %7, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 131, ptr %i.eu, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.41, i64 24, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ev = fcmp nsz ugt float %i.et, 1.000000e-03
  br i1 %i.ev, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ew = extractelement <2 x float> %i.k, i64 1
  %i.ex = fsub nsz float %i.ew, %i.dr
  %i.ey = call nsz noundef float @llvm.fabs.f32(float %i.ex)
  %i.ez = fcmp nsz ugt float %i.ey, 1.000000e-03
  br i1 %i.ez, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fa = fsub nsz float %i.ds, %i.l
  %i.fb = call nsz noundef float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp nsz ugt float %i.fb, 1.000000e-03
  %i.fd = extractelement <2 x float> %i.x, i64 0
  %i.fe = fsub nsz float %i.fd, %i.dy
  %i.ff = call nsz float @llvm.fabs.f32(float %i.fe)
  %i.fg = fcmp nsz ugt float %i.ff, 1.000000e-03
  %or.cond = select i1 %i.fc, i1 true, i1 %i.fg
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fh = extractelement <2 x float> %i.x, i64 1
  %i.fi = fsub nsz float %i.fh, %i.eb
  %i.fj = call nsz noundef float @llvm.fabs.f32(float %i.fi)
  %i.fk = fcmp nsz ugt float %i.fj, 1.000000e-03
  br i1 %i.fk, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %22 = fsub nsz float %i.z, %i.ed
  %23 = call nsz noundef float @llvm.fabs.f32(float %22)
  %24 = fcmp nsz ugt float %23, 1.000000e-03
  %25 = extractelement <2 x float> %i.av, i64 0
  %i.fl = fsub nsz float %25, %i.eg
  %i.fm = call nsz float @llvm.fabs.f32(float %i.fl)
  %i.fn = fcmp nsz ugt float %i.fm, 1.000000e-03
  %or.cond94 = select i1 %24, i1 true, i1 %i.fn
  br i1 %or.cond94, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %26 = extractelement <2 x float> %i.av, i64 1
  %i.fo = fsub nsz float %26, %i.ek
  %i.fp = call nsz noundef float @llvm.fabs.f32(float %i.fo)
  %i.fq = fcmp nsz ugt float %i.fp, 1.000000e-03
  br i1 %i.fq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fr = fsub nsz float %i.ab, %i.em
  %i.fs = call nsz noundef float @llvm.fabs.f32(float %i.fr)
  %i.ft = fcmp nsz ole float %i.fs, 1.000000e-03
  %i.fu = zext i1 %i.ft to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.lcssa.i = phi i8 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.f ], [ %i.fu, %bb.j ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.fv, align 8, !tbaa !22, !alias.scope !180
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %.lcssa.i, ptr %i.fw, align 1, !tbaa !23, !alias.scope !180
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %5, align 8, !tbaa !25, !alias.scope !180
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i8 %.lcssa.i, ptr %i.fx, align 2, !tbaa !27, !alias.scope !180
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  %i.ga = call ptr @__cxa_begin_catch(ptr %i.fz) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.l
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 59
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !34, !range !35, !noundef !36
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !25
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 160
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.an

bb.s:                                             ; preds = %bb.m
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.ap

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.pn20 = phi { ptr, i32 } [ %i.gm, %bb.t ], [ %i.gl, %bb.s ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ao

bb.v:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr @.str, ptr %9, align 8, !tbaa !16
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 133, ptr %i.gn, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.42, i64 19, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.go = fcmp nsz ugt float %i.et, f0x3727C5AC
  br i1 %i.go, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gp = extractelement <2 x float> %i.k, i64 1
  %i.gq = fsub nsz float %i.gp, %i.dr
  %i.gr = call nsz noundef float @llvm.fabs.f32(float %i.gq)
  %i.gs = fcmp nsz ugt float %i.gr, f0x3727C5AC
  br i1 %i.gs, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gt = fsub nsz float %i.ds, %i.l
  %i.gu = call nsz noundef float @llvm.fabs.f32(float %i.gt)
  %i.gv = fcmp nsz ugt float %i.gu, f0x3727C5AC
  %i.gw = extractelement <2 x float> %i.x, i64 0
  %i.gx = fsub nsz float %i.gw, %i.dy
  %i.gy = call nsz float @llvm.fabs.f32(float %i.gx)
  %i.gz = fcmp nsz ugt float %i.gy, f0x3727C5AC
  %or.cond94.a = select i1 %i.gv, i1 true, i1 %i.gz
  br i1 %or.cond94.a, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ha = extractelement <2 x float> %i.x, i64 1
  %i.hb = fsub nsz float %i.ha, %i.eb
  %i.hc = call nsz noundef float @llvm.fabs.f32(float %i.hb)
  %i.hd = fcmp nsz ugt float %i.hc, f0x3727C5AC
  br i1 %i.hd, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %27 = fsub nsz float %i.z, %i.ed
  %28 = call nsz noundef float @llvm.fabs.f32(float %27)
  %29 = fcmp nsz ugt float %28, f0x3727C5AC
  %30 = extractelement <2 x float> %i.av, i64 0
  %i.he = fsub nsz float %30, %i.eg
  %i.hf = call nsz float @llvm.fabs.f32(float %i.he)
  %i.hg = fcmp nsz ugt float %i.hf, f0x3727C5AC
  %or.cond102 = select i1 %29, i1 true, i1 %i.hg
  br i1 %or.cond102, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %31 = extractelement <2 x float> %i.av, i64 1
  %i.hh = fsub nsz float %31, %i.ek
  %i.hi = call nsz noundef float @llvm.fabs.f32(float %i.hh)
  %i.hj = fcmp nsz ugt float %i.hi, f0x3727C5AC
  br i1 %i.hj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = fsub nsz float %i.ab, %i.em
  %i.hl = call nsz noundef float @llvm.fabs.f32(float %i.hk)
  %i.hm = fcmp nsz ole float %i.hl, f0x3727C5AC
  %i.hn = zext i1 %i.hm to i8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.lcssa.i35 = phi i8 [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.x ], [ %i.hn, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ho, align 8, !tbaa !22, !alias.scope !181
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %.lcssa.i35, ptr %i.hp, align 1, !tbaa !23, !alias.scope !181
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %4, align 8, !tbaa !25, !alias.scope !181
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 %.lcssa.i35, ptr %i.hq, align 2, !tbaa !27, !alias.scope !181
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(10) %4)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  %i.ht = call ptr @__cxa_begin_catch(ptr %i.hs) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af, %bb.ad
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.hu = getelementptr inbounds nuw i8, ptr %8, i64 59
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !34, !range !35, !noundef !36
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %_ZN5Catch16AssertionHandlerD2Ev.exit34, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !25
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 160
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit34 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ic = landingpad { ptr, i32 }
          catch ptr null
  %i.id = extractvalue { ptr, i32 } %i.ic, 0
  call void @__clang_call_terminate(ptr %i.id) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit34:           ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.an

bb.ak:                                            ; preds = %bb.ae
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.ap

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.pn = phi { ptr, i32 } [ %i.if, %bb.al ], [ %i.ie, %bb.ak ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ao

bb.an:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit34, %_ZN5Catch16AssertionHandlerD2Ev.exit
  ret void

bb.ao:                                            ; preds = %bb.am, %bb.u
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.u ], [ %.pn, %bb.am ]
  resume { ptr, i32 } %.pn20.pn

bb.ap:                                            ; preds = %bb.ak, %bb.s
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #20
  unreachable
}

declare noundef i32 @_ZN5Catch7getSeedEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators23RandomFloatingGeneratorIfEC2Effj(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !66
  store i8 0, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !182
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch10Generators23RandomFloatingGeneratorIfEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN5Catch11SimplePcg32C1Ej(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %3)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store float %1, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %2, ptr %i.g, align 4, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = invoke noundef float @_ZN5Catch9nextafterEff(float noundef %1, float noundef +inf)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.j = invoke noundef float @_ZN5Catch9nextafterEff(float noundef %2, float noundef -inf)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %.noexc
  %i.k = fsub nsz float %i.i, %1                  ; 2 uses
  %i.l = fsub nsz float %2, %i.j                  ; 2 uses
  %i.m = fcmp nsz olt float %i.k, %i.l
  %i.n = select nsz i1 %i.m, float %i.l, float %i.k ; 3 uses
  store float %i.n, ptr %i.h, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load <2 x float>, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.n, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv nsz <2 x float> %i.p, %i.r          ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 3 uses
  %i.u = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  %i.v = fsub nsz float %i.u, %i.t                ; 4 uses
  %i.w = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.p) ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = extractelement <2 x float> %i.w, i64 1
  %i.z = fcmp nsz ole float %i.x, %i.y            ; 2 uses
  %i.aa = fsub nsz float %i.u, %i.v
  %i.ab = fsub nsz float %i.aa, %i.t
  %i.ac = fadd nsz float %i.t, %i.v
  %i.ad = fsub nsz float %i.u, %i.ac
  %i.ae = select nsz i1 %i.z, float %i.ab, float %i.ad
  %i.af = tail call nsz noundef float @llvm.ceil.f32(float %i.v)
  %i.ag = fptoui float %i.af to i32               ; 2 uses
  %i.ah = uitofp nsz i32 %i.ag to float
  %i.ai = fcmp nsz oeq float %i.v, %i.ah
  %i.aj = fcmp nsz ogt float %i.ae, 0.000000e+00
  %narrow.i.i = and i1 %i.ai, %i.aj
  %i.ak = zext i1 %narrow.i.i to i32
  %i.al = add i32 %i.ak, %i.ag                    ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.am, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ao = add i32 %i.al, 1                        ; 3 uses
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !54
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc5
  %i.aq = xor i32 %i.al, -1
  %i.ar = urem i32 %i.aq, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc5
  %.0.i.i.i = phi i32 [ %i.ar, %bb.c ], [ 0, %.noexc5 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.0.i.i.i, ptr %i.as, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.au = fcmp nsz oeq float %i.n, f0x73800000
  %..i.i = select i1 %i.au, i32 16777215, i32 -1
  store i32 %..i.i, ptr %i.at, align 4, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = zext i1 %i.z to i8
  store i8 %i.aw, ptr %i.av, align 8, !tbaa !57
  %i.ax = invoke noundef float @_ZN5Catch35uniform_floating_point_distributionIfEclINS_11SimplePcg32EEEfRT_(ptr noundef nonnull align 4 dereferenceable(33) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.ax, ptr %i.ay, align 4, !tbaa !52
  ret void

bb.f:                                             ; preds = %bb.d, %.noexc, %bb.b, %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #19
  resume { ptr, i32 } %i.az
}

; Function Attrs: nounwind
declare void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

declare void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch9UnaryExprIbE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(11) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
