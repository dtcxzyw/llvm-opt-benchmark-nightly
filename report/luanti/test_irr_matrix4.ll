Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_matrix4?download=true
inline.NumInlined: 572
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL11LEFT_HANDEDRKSt8functionIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEE:bb.a
  %i.rm = call nsz float @llvm.fmuladd.f32(float %i.rk, float 0.000000e+00, float %i.rl)
  %i.rn = load float, ptr %i.ne, align 4, !tbaa !19
  %i.ro = call nsz float @llvm.fmuladd.f32(float %i.rn, float 0.000000e+00, float %i.rm)
  %i.rp = load float, ptr %i.nf, align 4, !tbaa !19
  %i.rq = fadd nsz float %i.rp, %i.ro
  %i.rr = load float, ptr %i.ng, align 8, !tbaa !19
  %i.rs = load float, ptr %i.ni, align 8, !tbaa !19
  %i.rt = load float, ptr %i.mt, align 8, !tbaa !19
  %i.ru = load float, ptr %i.no, align 8, !tbaa !19
  %i.rv = insertelement <2 x float> %i.rg, float %i.rr, i64 1
  %i.rw = insertelement <2 x float> %i.rh, float %i.rs, i64 1
  %i.rx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rv, <2 x float> zeroinitializer, <2 x float> %i.rw)
  %i.ry = insertelement <2 x float> %i.ri, float %i.rt, i64 1
  %i.rz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ry, <2 x float> zeroinitializer, <2 x float> %i.rx)
  %i.sa = insertelement <2 x float> %i.rj, float %i.ru, i64 1
  %i.sb = fadd nsz <2 x float> %i.rz, %i.sa       ; 2 uses
  %i.sc = extractelement <2 x float> %i.sb, i64 0
  %i.sd = fadd nsz float %i.sc, 1.000000e+00
  %i.se = call nsz noundef float @llvm.fabs.f32(float %i.sd)
  %i.sf = fcmp nsz ole float %i.se, f0x358637BD
  %i.sg = call nsz float @llvm.fabs.f32(float %i.rq)
  %i.sh = fcmp nsz ole float %i.sg, f0x358637BD
  %or.cond288.not = select i1 %i.sf, i1 %i.sh, i1 false
  %i.si = extractelement <2 x float> %i.sb, i64 1
  %i.sj = call nsz float @llvm.fabs.f32(float %i.si)
  %i.sk = fcmp nsz ole float %i.sj, f0x358637BD
  %i.sl = select i1 %or.cond288.not, i1 %i.sk, i1 false
  %i.sm = zext i1 %i.sl to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.sn, align 8, !tbaa !22, !alias.scope !175
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.sm, ptr %i.so, align 1, !tbaa !23, !alias.scope !175
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %1, align 8, !tbaa !25, !alias.scope !175
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.sm, ptr %i.sp, align 2, !tbaa !27, !alias.scope !175
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %44, ptr noundef nonnull align 8 dereferenceable(10) %1)
          to label %bb.eo unwind label %bb.eu

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.ew

bb.ep:                                            ; preds = %bb.eh
  %i.sq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.er unwind label %bb.fj

bb.eq:                                            ; preds = %bb.ej, %bb.ei
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %.pn153 = phi { ptr, i32 } [ %i.sr, %bb.eq ], [ %i.sq, %bb.ep ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %42) #19
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eg
  %.pn153.pn = phi { ptr, i32 } [ %.pn153, %bb.er ], [ %i.qr, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.fe

bb.et:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit229
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %bb.fd

bb.eu:                                            ; preds = %bb.en
  %i.st = landingpad { ptr, i32 }
          catch ptr null
  %.24 = extractvalue { ptr, i32 } %i.st, 0
  %i.su = call ptr @__cxa_begin_catch(ptr %.24) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %44)
          to label %bb.ev unwind label %bb.fa

bb.ev:                                            ; preds = %bb.eu
  invoke void @__cxa_end_catch()
          to label %bb.ew unwind label %bb.fb

bb.ew:                                            ; preds = %bb.ev, %bb.eo
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %44)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.sv = getelementptr inbounds nuw i8, ptr %44, i64 59
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !34, !range !35, !noundef !36
  %i.sx = trunc nuw i8 %i.sw to i1
  br i1 %i.sx, label %_ZN5Catch16AssertionHandlerD2Ev.exit237, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.sy = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !25
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 160
  %i.tc = load ptr, ptr %i.tb, align 8
  invoke void %i.tc(ptr noundef nonnull align 8 dereferenceable(8) %i.sz, ptr noundef nonnull align 8 dereferenceable(72) %44)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit237 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.td = landingpad { ptr, i32 }
          catch ptr null
  %i.te = extractvalue { ptr, i32 } %i.td, 0
  call void @__clang_call_terminate(ptr %i.te) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit237:          ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.ff

bb.fa:                                            ; preds = %bb.eu
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fc unwind label %bb.fj

bb.fb:                                            ; preds = %bb.ew, %bb.ev
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %.pn157 = phi { ptr, i32 } [ %i.tg, %bb.fb ], [ %i.tf, %bb.fa ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %44) #19
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.et
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.fc ], [ %i.ss, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.es, %bb.ef, %bb.dp
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.fd ], [ %.pn153.pn, %bb.es ], [ %.pn150.pn, %bb.ef ], [ %i.on, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.fg

bb.ff:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit237, %bb.dg
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe, %bb.do
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %bb.fe ], [ %i.om, %bb.do ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.b
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret void

bb.fi:                                            ; preds = %bb.dn, %bb.fg, %bb.bp, %bb.dm, %bb.l, %bb.bo, %bb.k
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ic, %bb.bp ], [ %i.bj, %bb.l ], [ %i.bi, %bb.k ], [ %.pn131.pn.pn.pn, %bb.bo ], [ %.pn144.pn.pn.pn, %bb.dm ], [ %.pn157.pn.pn.pn, %bb.fg ], [ %i.ol, %bb.dn ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %.pn157.pn.pn.pn.pn.pn

bb.fj:                                            ; preds = %bb.fa, %bb.ep, %bb.ec, %bb.cz, %bb.co, %bb.cb, %bb.ay, %bb.an, %bb.x
  %i.th = landingpad { ptr, i32 }
          catch ptr null
  %i.ti = extractvalue { ptr, i32 } %i.th, 0
  call void @__clang_call_terminate(ptr %i.ti) #20
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
  %i.k = fptrunc nsz <2 x double> %i.j to <2 x float> ; 7 uses
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
  %i.x = fptrunc nsz <2 x double> %i.w to <2 x float> ; 6 uses
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
  %i.av = fptrunc nsz <2 x double> %i.au to <2 x float> ; 8 uses
  %i.aw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> zeroinitializer, <2 x float> %i.ak) ; 4 uses
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> zeroinitializer, <2 x float> %i.ah) ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.aw, %i.aw
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.az = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.ay)
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ba)
  %i.bc = tail call nsz noundef float @llvm.sqrt.f32(float %i.bb) ; 2 uses
  %i.bd = tail call nsz float @llvm.fabs.f32(float %i.bc)
  %i.be = fcmp nsz ole float %i.bd, f0x358637BD
  %i.bf = fpext nsz float %i.bc to double
  %i.bg = fdiv nsz double 1.000000e+00, %i.bf
  %i.bh = select i1 %i.be, double f0x37F0000010000010, double %i.bg ; 2 uses
  %i.bi = fpext nsz float %i.ae to double
  %i.bj = fmul nsz double %i.bh, %i.bi            ; 2 uses
  %i.bk = fcmp nsz olt double %i.bj, -1.000000e+00
  %i.bl = select i1 %i.bk, double -1.000000e+00, double %i.bj ; 2 uses
  %i.bm = fcmp nsz olt double %i.bl, 1.000000e+00
  %i.bn = select i1 %i.bm, double %i.bl, double 1.000000e+00 ; 2 uses
  %i.bo = tail call nsz noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fadd nsz double %i.bo, -1.000000e+00
  %i.bq = tail call nsz noundef double @llvm.fabs.f64(double %i.bp)
  %i.br = fcmp nsz ugt double %i.bq, 1.000000e-08
  br i1 %i.br, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.083.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.bs = fmul nsz float %.sroa.083.4.vec.extract, %i.z
  %i.bt = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.ac, i64 1
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> zeroinitializer, <2 x float> %i.bw)
  %i.by = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = insertelement <2 x float> <float 0.000000e+00, float poison>, float %3, i64 1
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.bx) ; 3 uses
  %i.cc = extractelement <2 x float> %i.k, i64 1
  %i.cd = extractelement <2 x float> %i.ai, i64 1
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.cc, float 0.000000e+00, float %i.cd)
  %i.cf = extractelement <2 x float> %i.av, i64 1
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %3, float %i.ce)
  %i.ch = extractelement <2 x float> %i.k, i64 0
  %i.ci = extractelement <2 x float> %i.ai, i64 0
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float 0.000000e+00, float %i.ci)
  %i.ck = extractelement <2 x float> %i.av, i64 0
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %3, float %i.cj)
  %i.cm = insertelement <2 x float> %i.ax, float %i.cg, i64 0 ; 2 uses
  %i.cn = fmul nsz <2 x float> %i.cm, %i.cm
  %i.co = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cp, <2 x float> %i.cn)
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cb, <2 x float> %i.cr)
  %i.ct = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cs) ; 2 uses
  %i.cu = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ct)
  %i.cv = fcmp nsz ole <2 x float> %i.cu, splat (float f0x358637BD)
  %i.cw = fpext nsz <2 x float> %i.ct to <2 x double>
  %i.cx = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.cw
  %i.cy = select <2 x i1> %i.cv, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.cx
  %i.cz = fpext nsz <2 x float> %i.cb to <2 x double>
  %i.da = fmul nsz <2 x double> %i.cy, %i.cz      ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = extractelement <2 x double> %i.da, i64 1
  %i.dd = tail call nsz double @llvm.atan2.f64(double %i.db, double %i.dc)
  %i.de = fpext nsz <2 x float> %i.aw to <2 x double>
  %i.df = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul nsz <2 x double> %i.dg, %i.de      ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  %i.dk = tail call nsz double @llvm.atan2.f64(double %i.dj, double %i.di)
  %i.dl = fptrunc nsz double %i.dd to float
  %i.dm = fpext nsz float %i.dl to double
  %i.dn = tail call nsz { double, double } @llvm.sincos.f64(double %i.dm)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

bb.c:                                             ; preds = %bb.a
  %i.do = extractelement <2 x float> %i.ax, i64 1
  %i.dp = fpext nsz float %i.do to double
  %i.dq = extractelement <2 x float> %i.ax, i64 0
  %i.dr = fneg nsz float %i.dq
  %i.ds = fpext nsz float %i.dr to double
  %i.dt = tail call nsz double @llvm.atan2.f64(double %i.ds, double %i.dp)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit: ; preds = %bb.b, %bb.c
  %.025.i.i.i = phi { double, double } [ { double 0.000000e+00, double 1.000000e+00 }, %bb.c ], [ %i.dn, %bb.b ] ; 2 uses
  %.0.i.i.i = phi nsz double [ %i.dt, %bb.c ], [ %i.dk, %bb.b ]
  %i.du = tail call nsz double @llvm.asin.f64(double %i.bn)
  %i.dv = fptrunc nsz double %i.du to float       ; 2 uses
  %i.dw = fneg nsz float %i.dv
  %i.dx = fptrunc nsz double %.0.i.i.i to float
  %sin.i24 = extractvalue { double, double } %.025.i.i.i, 0 ; 4 uses
  %cos.i25 = extractvalue { double, double } %.025.i.i.i, 1 ; 4 uses
  %i.dy = fpext nsz float %i.dw to double
  %sincos36.i26 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dy) ; 2 uses
  %sin37.i27 = extractvalue { double, double } %sincos36.i26, 0 ; 3 uses
  %cos38.i28 = extractvalue { double, double } %sincos36.i26, 1 ; 4 uses
  %i.dz = fpext nsz float %i.dx to double
  %sincos39.i29 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dz) ; 2 uses
  %sin40.i30 = extractvalue { double, double } %sincos39.i29, 0 ; 5 uses
  %cos41.i31 = extractvalue { double, double } %sincos39.i29, 1 ; 5 uses
  %i.ea = fmul nsz double %cos38.i28, %cos41.i31
  %i.eb = fptrunc nsz double %i.ea to float
  %i.ec = fmul nsz double %cos38.i28, %sin40.i30
  %i.ed = fptrunc nsz double %i.ec to float       ; 2 uses
  %i.ee = fptrunc nsz double %sin37.i27 to float  ; 2 uses
  %i.ef = fmul nsz double %sin37.i27, %sin.i24    ; 2 uses
  %i.eg = fmul nsz double %sin37.i27, %cos.i25    ; 2 uses
  %i.eh = fneg nsz double %sin40.i30
  %i.ei = fmul nsz double %cos.i25, %i.eh
  %i.ej = tail call nsz double @llvm.fmuladd.f64(double %i.ef, double %cos41.i31, double %i.ei)
  %i.ek = fptrunc nsz double %i.ej to float       ; 2 uses
  %i.el = fmul nsz double %cos.i25, %cos41.i31
  %i.em = tail call nsz double @llvm.fmuladd.f64(double %i.ef, double %sin40.i30, double %i.el)
  %i.en = fptrunc nsz double %i.em to float       ; 2 uses
  %i.eo = fmul nsz double %cos38.i28, %sin.i24
  %i.ep = fptrunc nsz double %i.eo to float       ; 2 uses
  %i.eq = fmul nsz double %sin.i24, %sin40.i30
  %i.er = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %cos41.i31, double %i.eq)
  %i.es = fptrunc nsz double %i.er to float       ; 2 uses
  %i.et = fneg nsz double %cos41.i31
  %i.eu = fmul nsz double %sin.i24, %i.et
  %i.ev = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %sin40.i30, double %i.eu)
  %i.ew = fptrunc nsz double %i.ev to float       ; 2 uses
  %i.ex = fmul nsz double %cos38.i28, %cos.i25
  %i.ey = fptrunc nsz double %i.ex to float       ; 2 uses
  %i.ez = tail call nsz float @llvm.fabs.f32(float %i.dv)
  %i.fa = fadd nsz float %i.ez, f0xBFC90FDB
  %i.fb = tail call nsz noundef float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp nsz olt float %i.fb, f0x3C23D70A
  %i.fd = extractelement <2 x float> %i.k, i64 0
  %i.fe = fsub nsz float %i.fd, %i.eb
  %i.ff = tail call nsz float @llvm.fabs.f32(float %i.fe) ; 2 uses
  br i1 %i.fc, label %bb.d, label %bb.v

bb.d:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr @.str, ptr %7, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 131, ptr %i.fg, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.41, i64 24, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.fh = fcmp nsz ugt float %i.ff, 1.000000e-03
  br i1 %i.fh, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fi = extractelement <2 x float> %i.k, i64 1
  %i.fj = fsub nsz float %i.fi, %i.ed
  %i.fk = call nsz noundef float @llvm.fabs.f32(float %i.fj)
  %i.fl = fcmp nsz ugt float %i.fk, 1.000000e-03
  br i1 %i.fl, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fm = fsub nsz float %i.ee, %i.l
  %i.fn = call nsz noundef float @llvm.fabs.f32(float %i.fm)
  %i.fo = fcmp nsz ugt float %i.fn, 1.000000e-03
  %i.fp = extractelement <2 x float> %i.x, i64 0
  %i.fq = fsub nsz float %i.fp, %i.ek
  %i.fr = call nsz float @llvm.fabs.f32(float %i.fq)
  %i.fs = fcmp nsz ugt float %i.fr, 1.000000e-03
  %or.cond = select i1 %i.fo, i1 true, i1 %i.fs
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ft = extractelement <2 x float> %i.x, i64 1
  %i.fu = fsub nsz float %i.ft, %i.en
  %i.fv = call nsz noundef float @llvm.fabs.f32(float %i.fu)
  %i.fw = fcmp nsz ugt float %i.fv, 1.000000e-03
  br i1 %i.fw, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fx = fsub nsz float %i.z, %i.ep
  %i.fy = call nsz noundef float @llvm.fabs.f32(float %i.fx)
  %i.fz = fcmp nsz ugt float %i.fy, 1.000000e-03
  %i.ga = extractelement <2 x float> %i.av, i64 0
  %i.gb = fsub nsz float %i.ga, %i.es
  %i.gc = call nsz float @llvm.fabs.f32(float %i.gb)
  %i.gd = fcmp nsz ugt float %i.gc, 1.000000e-03
  %or.cond94 = select i1 %i.fz, i1 true, i1 %i.gd
  br i1 %or.cond94, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ge = extractelement <2 x float> %i.av, i64 1
  %i.gf = fsub nsz float %i.ge, %i.ew
  %i.gg = call nsz noundef float @llvm.fabs.f32(float %i.gf)
  %i.gh = fcmp nsz ugt float %i.gg, 1.000000e-03
  br i1 %i.gh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gi = fsub nsz float %i.ab, %i.ey
  %i.gj = call nsz noundef float @llvm.fabs.f32(float %i.gi)
  %i.gk = fcmp nsz ole float %i.gj, 1.000000e-03
  %i.gl = zext i1 %i.gk to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.lcssa.i = phi i8 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.f ], [ %i.gl, %bb.j ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.gm, align 8, !tbaa !22, !alias.scope !180
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %.lcssa.i, ptr %i.gn, align 1, !tbaa !23, !alias.scope !180
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %5, align 8, !tbaa !25, !alias.scope !180
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i8 %.lcssa.i, ptr %i.go, align 2, !tbaa !27, !alias.scope !180
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  %i.gr = call ptr @__cxa_begin_catch(ptr %i.gq) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.l
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 59
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !34, !range !35, !noundef !36
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !25
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 160
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.an

bb.s:                                             ; preds = %bb.m
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.ap

bb.t:                                             ; preds = %bb.o, %bb.n
  %i.hd = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN5Catch10Generators23RandomFloatingGeneratorIfEC2Effj:bb.a

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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.b = load i8, ptr %i.a, align 2, !tbaa !188, !range !35, !noalias !187, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sink4.i.i.sroa.gep6 = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 1702195828, ptr %i.d, align 8, !alias.scope !189
  br label %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.c:                                             ; preds = %bb.a
  %.sink4.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.26, i64 5, i1 false)
  br label %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b, %bb.c
  %.sink4.i.i.sroa.phi = phi ptr [ %.sink4.i.i.sroa.gep, %bb.c ], [ %.sink4.i.i.sroa.gep6, %bb.b ]
  %.sink.i.i = phi i64 [ 5, %bb.c ], [ 4, %bb.b ] ; 2 uses
  store i8 0, ptr %.sink4.i.i.sroa.phi, align 1, !tbaa !67, !alias.scope !189
  store ptr %i.d, ptr %2, align 8, !tbaa !65, !alias.scope !189
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i, ptr %i.e, align 8, !tbaa !66, !alias.scope !189
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.sink.i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !190    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = load i64, ptr %i.d, align 8, !tbaa !67
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !190    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !tbaa !67
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.k
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEPFvS3_S5_EE9_M_invokeERKSt9_Any_dataS3_S7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %2, align 4, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 4, !tbaa !19
  tail call void %i.a(ptr noundef nonnull align 4 dereferenceable(64) %1, <2 x float> %.sroa.01.0.copyload.i.i, float %.sroa.22.0.copyload.i.i), !inline_history !191
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEPFvS3_S5_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFvRN4core8CMatrix4IfEENS_8vector3dIfEEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !39
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvRN4core8CMatrix4IfEENS1_8vector3dIfEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_4vE3$_0E9_M_invokeERKSt9_Any_dataS3_S7_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 12), (16, 28), (32, 44)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) #13 align 2 {
bb.a:
  %i.a = load float, ptr %2, align 4, !tbaa !192
  %i.b = fpext nsz float %i.a to double
  %sincos.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i, 0 ; 3 uses
  %cos.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !193
  %i.e = fpext nsz float %i.d to double
  %sincos36.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin37.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i, 0 ; 3 uses
  %cos38.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i, 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !64
  %i.h = fpext nsz float %i.g to double
  %sincos39.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin40.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 0 ; 5 uses
  %cos41.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 1 ; 5 uses
  %i.i = fmul nsz double %cos38.i.i.i.i, %cos41.i.i.i.i
  %i.j = fptrunc nsz double %i.i to float
  store float %i.j, ptr %1, align 4, !tbaa !19
  %i.k = fmul nsz double %cos38.i.i.i.i, %sin40.i.i.i.i
  %i.l = fptrunc nsz double %i.k to float
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = fptrunc nsz double %sin37.i.i.i.i to float
  %i.o = fneg nsz float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.o, ptr %i.p, align 4, !tbaa !19
  %i.q = fmul nsz double %sin.i.i.i.i, %sin37.i.i.i.i
  %i.r = fmul nsz double %cos.i.i.i.i, %sin37.i.i.i.i
  %i.s = fneg nsz double %sin40.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = insertelement <2 x double> poison, double %cos.i.i.i.i, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = insertelement <2 x double> poison, double %i.s, i64 0
  %i.x = insertelement <2 x double> %i.w, double %cos41.i.i.i.i, i64 1
  %i.y = fmul nsz <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.q, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %cos41.i.i.i.i, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %sin40.i.i.i.i, i64 1
  %i.ad = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ac, <2 x double> %i.y)
  %i.ae = fptrunc nsz <2 x double> %i.ad to <2 x float>
  store <2 x float> %i.ae, ptr %i.t, align 4, !tbaa !19
  %i.af = fmul nsz double %sin.i.i.i.i, %cos38.i.i.i.i
  %i.ag = fptrunc nsz double %i.af to float
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.ag, ptr %i.ah, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = fneg nsz double %cos41.i.i.i.i
  %i.ak = insertelement <2 x double> poison, double %sin.i.i.i.i, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %sin40.i.i.i.i, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = fmul nsz <2 x double> %i.al, %i.an
  %i.ap = insertelement <2 x double> poison, double %i.r, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = insertelement <2 x double> poison, double %cos41.i.i.i.i, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %sin40.i.i.i.i, i64 1
  %i.at = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.as, <2 x double> %i.ao)
  %i.au = fptrunc nsz <2 x double> %i.at to <2 x float>
  store <2 x float> %i.au, ptr %i.ai, align 4, !tbaa !19
  %i.av = fmul nsz double %cos.i.i.i.i, %cos38.i.i.i.i
  %i.aw = fptrunc nsz double %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.aw, ptr %i.ax, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4core8CMatrix4IfEERKNS0_8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZL22CATCH2_INTERNAL_TEST_4vE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !39
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_4vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

declare void @_ZN5Catch11SimplePcg32C1Ej(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Catch10Generators23RandomFloatingGeneratorIfE4nextEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = tail call nsz noundef float @_ZN5Catch35uniform_floating_point_distributionIfEclINS_11SimplePcg32EEEfRT_(ptr noundef nonnull align 4 dereferenceable(33) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.c, ptr %i.d, align 4, !tbaa !52
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10Generators10IGeneratorIfE13stringifyImplB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(4) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.e = load float, ptr %i.d, align 4, !tbaa !19, !noalias !196
  tail call void @_ZN5Catch11StringMakerIfvE7convertB5cxx11Ef(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators23RandomFloatingGeneratorIfED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5Catch10Generators23RandomFloatingGeneratorIfE3getEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  ret ptr %i.a
}

declare noundef float @_ZN5Catch9nextafterEff(float noundef, float noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN5Catch35uniform_floating_point_distributionIfEclINS_11SimplePcg32EEEfRT_(ptr noundef nonnull align 4 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %i.d = icmp eq i32 %i.c, 0
  %i.e = tail call noundef i32 @_ZN5Catch11SimplePcg32clEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  br i1 %i.d, label %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4, !tbaa !54
  %i.g = zext i32 %i.e to i64
  %i.h = zext i32 %i.f to i64
  %i.i = mul nuw i64 %i.h, %i.g                   ; 2 uses
  %.sroa.0.0.insert.insert.i.i = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 32) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.0.in11.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.5.012.i = trunc nuw i64 %.sroa.5.0.in11.i to i32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = icmp ugt i32 %i.k, %.sroa.5.012.i
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.m = tail call noundef i32 @_ZN5Catch11SimplePcg32clEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.n = load i32, ptr %i.b, align 4, !tbaa !54
  %i.o = zext i32 %i.m to i64
  %i.p = zext i32 %i.n to i64
  %i.q = mul nuw i64 %i.p, %i.o                   ; 2 uses
  %.sroa.0.0.insert.insert.i10.i = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 32) ; 2 uses
  %.sroa.5.0.in.i = lshr i64 %.sroa.0.0.insert.insert.i10.i, 32
  %.sroa.5.0.i = trunc nuw i64 %.sroa.5.0.in.i to i32
  %i.r = load i32, ptr %i.j, align 4, !tbaa !55
  %i.s = icmp ugt i32 %i.r, %.sroa.5.0.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.in.in.lcssa.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ %.sroa.0.0.insert.insert.i10.i, %.lr.ph.i ]
  %.sroa.01.0.i = trunc i64 %.sroa.5.0.in.in.lcssa.i to i32
  %i.t = load i32, ptr %i.a, align 4, !tbaa !56
  %i.u = add i32 %i.t, %.sroa.01.0.i
  br label %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit

_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit: ; preds = %bb.a, %._crit_edge.i
  %.0.i = phi i32 [ %i.u, %._crit_edge.i ], [ %i.e, %bb.a ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 4, !tbaa !57, !range !35, !noundef !36
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !58
  %i.aa = icmp eq i32 %.0.i, %i.z                 ; 2 uses
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load float, ptr %0, align 4, !tbaa !59
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !61 ; 4 uses
  %i.ag = icmp ugt i32 %.0.i, %i.af
  br i1 %i.ag, label %.lr.ph27, label %.._crit_edge28_crit_edge

.._crit_edge28_crit_edge:                         ; preds = %bb.e
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre35 = load float, ptr %.phi.trans.insert34, align 4, !tbaa !62
  br label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.e
  %i.ah = uitofp nsz i32 %i.af to float
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !62 ; 2 uses
  %i.ak = fneg nsz float %i.ah
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph27, %bb.f
  %.01425 = phi float [ %i.ad, %.lr.ph27 ], [ %i.al, %bb.f ]
  %.01524 = phi i32 [ %.0.i, %.lr.ph27 ], [ %i.am, %bb.f ]
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float %.01425) ; 2 uses
  %i.am = sub nuw i32 %.01524, %i.af              ; 3 uses
  %i.an = icmp ugt i32 %i.am, %i.af
  br i1 %i.an, label %bb.f, label %._crit_edge28, !llvm.loop !1

._crit_edge28:                                    ; preds = %bb.f, %.._crit_edge28_crit_edge
  %i.ao = phi float [ %.pre35, %.._crit_edge28_crit_edge ], [ %i.aj, %bb.f ]
  %.015.lcssa = phi i32 [ %.0.i, %.._crit_edge28_crit_edge ], [ %i.am, %bb.f ]
  %.014.lcssa = phi float [ %i.ad, %.._crit_edge28_crit_edge ], [ %i.al, %bb.f ]
  %i.ap = uitofp nsz i32 %.015.lcssa to float
  %i.aq = fneg nsz float %i.ap
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.ao, float %.014.lcssa)
  br label %bb.k

bb.g:                                             ; preds = %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !60
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.au = load float, ptr %0, align 4, !tbaa !59  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !61 ; 4 uses
  %i.ax = icmp ugt i32 %.0.i, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !62
end_hunk_1
