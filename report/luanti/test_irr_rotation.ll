Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_rotation?download=true
inline.NumInlined: 386
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Catch35uniform_floating_point_distributionIfEclINS_11SimplePcg32EEEfRT_:bb.a

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
  %i.at = load float, ptr %i.as, align 4, !tbaa !43
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.au = load float, ptr %0, align 4, !tbaa !42  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44 ; 4 uses
  %i.ax = icmp ugt i32 %.0.i, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !45
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ay = uitofp nsz i32 %i.aw to float
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !45 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.022 = phi float [ %i.au, %.lr.ph ], [ %i.bb, %bb.j ]
  %.121 = phi i32 [ %.0.i, %.lr.ph ], [ %i.bc, %bb.j ]
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ba, float %.022) ; 2 uses
  %i.bc = sub nuw i32 %.121, %i.aw                ; 3 uses
  %i.bd = icmp ugt i32 %i.bc, %i.aw
  br i1 %i.bd, label %bb.j, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.j, %.._crit_edge_crit_edge
  %i.be = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.ba, %bb.j ]
  %.1.lcssa = phi i32 [ %.0.i, %.._crit_edge_crit_edge ], [ %i.bc, %bb.j ]
  %.0.lcssa = phi float [ %i.au, %.._crit_edge_crit_edge ], [ %i.bb, %bb.j ]
  %i.bf = uitofp nsz i32 %.1.lcssa to float
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.be, float %.0.lcssa)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h, %._crit_edge28, %bb.d
  %.016 = phi nsz float [ %i.ab, %bb.d ], [ %i.ar, %._crit_edge28 ], [ %i.at, %bb.h ], [ %i.bg, %._crit_edge ]
  ret float %.016
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare noundef i32 @_ZN5Catch11SimplePcg32clEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN5Catch11StringMakerIfvE7convertB5cxx11Ef(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, float noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.val = load <2 x float>, ptr %1, align 4, !tbaa !23 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load float, ptr %i.a, align 4, !tbaa !23
  %.sroa.016.0.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 0
  %i.b = fpext nsz float %.sroa.016.0.vec.extract.i.i.i to double ; 2 uses
  %sincos.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i, 0 ; 3 uses
  %cos.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i, 1 ; 3 uses
  %.sroa.016.4.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 1
  %i.c = fmul nsz double %i.b, 5.000000e-01
  %sincos.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.c) ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0 ; 2 uses
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1
  %i.d = fpext nsz float %.sroa.016.4.vec.extract.i.i.i to double ; 2 uses
  %sincos36.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin37.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i, 0 ; 3 uses
  %cos38.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i, 1 ; 4 uses
  %i.e = fpext nsz float %.val2 to double         ; 2 uses
  %sincos39.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin40.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 0 ; 5 uses
  %cos41.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 1 ; 5 uses
  %i.f = fmul nsz double %cos38.i.i.i.i, %cos41.i.i.i.i
  %i.g = fptrunc nsz double %i.f to float
  %i.h = fptrunc nsz double %sin37.i.i.i.i to float
  %i.i = fmul nsz double %sin.i.i.i.i, %sin37.i.i.i.i
  %i.j = fmul nsz double %cos.i.i.i.i, %sin37.i.i.i.i
  %i.k = fneg nsz double %sin40.i.i.i.i
  %i.l = insertelement <2 x double> poison, double %cos.i.i.i.i, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = insertelement <2 x double> poison, double %i.k, i64 0
  %i.o = insertelement <2 x double> %i.n, double %cos41.i.i.i.i, i64 1
  %i.p = fmul nsz <2 x double> %i.m, %i.o
  %i.q = insertelement <2 x double> poison, double %i.i, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %cos41.i.i.i.i, i64 0
  %i.t = insertelement <2 x double> %i.s, double %sin40.i.i.i.i, i64 1
  %i.u = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.p)
  %i.v = fptrunc nsz <2 x double> %i.u to <2 x float> ; 2 uses
  %i.w = fmul nsz double %sin.i.i.i.i, %cos38.i.i.i.i
  %i.x = fptrunc nsz double %i.w to float
  %i.y = fneg nsz double %cos41.i.i.i.i
  %i.z = insertelement <2 x double> poison, double %sin.i.i.i.i, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %sin40.i.i.i.i, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.y, i64 1
  %i.ad = fmul nsz <2 x double> %i.aa, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.j, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x double> poison, double %cos41.i.i.i.i, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %sin40.i.i.i.i, i64 1
  %i.ai = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ad)
  %i.aj = fptrunc nsz <2 x double> %i.ai to <2 x float> ; 2 uses
  %i.ak = fmul nsz double %cos.i.i.i.i, %cos38.i.i.i.i
  %i.al = fptrunc nsz double %i.ak to float
  %i.am = fmul nsz double %i.d, 5.000000e-01
  %sincos34.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.am) ; 2 uses
  %sin35.i.i.i.i.i = extractvalue { double, double } %sincos34.i.i.i.i.i, 0 ; 2 uses
  %cos36.i.i.i.i.i = extractvalue { double, double } %sincos34.i.i.i.i.i, 1
  %i.an = fmul nsz double %i.e, 5.000000e-01
  %sincos37.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.an) ; 2 uses
  %sin38.i.i.i.i.i = extractvalue { double, double } %sincos37.i.i.i.i.i, 0 ; 2 uses
  %cos39.i.i.i.i.i = extractvalue { double, double } %sincos37.i.i.i.i.i, 1 ; 2 uses
  %i.ao = fmul nsz double %sin35.i.i.i.i.i, %cos39.i.i.i.i.i ; 2 uses
  %i.ap = fmul nsz double %sin35.i.i.i.i.i, %sin38.i.i.i.i.i ; 2 uses
  %i.aq = fneg nsz double %i.ap
  %i.ar = insertelement <2 x double> poison, double %cos.i.i.i.i.i, i64 0 ; 2 uses
  %i.as = insertelement <2 x double> %i.ar, double %sin.i.i.i.i.i, i64 1 ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.au = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = fneg nsz double %i.ao
  %i.aw = insertelement <2 x double> poison, double %cos36.i.i.i.i.i, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %sin38.i.i.i.i.i, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %cos39.i.i.i.i.i, i64 1
  %i.ba = fmul nsz <2 x double> %i.ax, %i.az      ; 3 uses
  %i.bb = shufflevector <2 x double> %i.at, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bc = fmul nsz <2 x double> %i.as, %i.bb
  %i.bd = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x double> %i.bd, double %i.ao, i64 1
  %i.bf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.be, <2 x double> %i.bc)
  %i.bg = fptrunc nsz <2 x double> %i.bf to <2 x float> ; 4 uses
  %i.bh = insertelement <2 x double> poison, double %sin.i.i.i.i.i, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.ap, i64 1
  %i.bl = fmul nsz <2 x double> %i.bi, %i.bk
  %i.bm = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.ba, <2 x double> %i.bl) ; 2 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0
  %i.bp = fptrunc nsz double %i.bo to float       ; 3 uses
  %i.bq = extractelement <2 x double> %i.bn, i64 1
  %i.br = fptrunc nsz double %i.bq to float       ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.bg, %i.bg
  %i.bs = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bt = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bs)
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bu)
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bv)
  %i.bx = fpext nsz float %i.bw to double
  %i.by = tail call nsz double @llvm.sqrt.f64(double %i.bx)
  %i.bz = fdiv nsz double 1.000000e+00, %i.by
  %i.ca = fptrunc nsz double %i.bz to float       ; 3 uses
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul nsz <2 x float> %i.cc, %i.bg       ; 4 uses
  %i.ce = fmul nsz float %i.bp, %i.ca             ; 3 uses
  %i.cf = fmul nsz float %i.br, %i.ca             ; 3 uses
  %foldExtExtBinop4 = fmul nsz <2 x float> %i.cd, %i.cd
  %i.cg = extractelement <2 x float> %foldExtExtBinop4, i64 1
  %i.ch = extractelement <2 x float> %i.cd, i64 0 ; 2 uses
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cg)
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ci)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.cj)
  %i.cl = fpext nsz float %i.ck to double
  %i.cm = tail call nsz double @llvm.sqrt.f64(double %i.cl)
  %i.cn = fdiv nsz double 1.000000e+00, %i.cm
  %i.co = fptrunc nsz double %i.cn to float       ; 3 uses
  %i.cp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul nsz <2 x float> %i.cd, %i.cq       ; 3 uses
  %i.cs = fmul nsz float %i.ce, %i.co             ; 5 uses
  %i.ct = fmul nsz float %i.cf, %i.co             ; 3 uses
  %i.cu = fmul nsz float %i.cs, 2.000000e+00      ; 4 uses
  %i.cv = fneg nsz float %i.cu                    ; 2 uses
  %i.cw = extractelement <2 x float> %i.cr, i64 1 ; 3 uses
  %i.cx = fmul nsz float %i.cw, 2.000000e+00      ; 2 uses
  %i.cy = fneg nsz float %i.cx                    ; 2 uses
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.cw, float 1.000000e+00)
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cs, float %i.cz)
  %i.db = fmul <2 x float> %i.cr, <float 2.000000e+00, float 1.000000e+00> ; 3 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0 ; 5 uses
  %i.dd = fmul nsz float %i.ct, %i.cu             ; 2 uses
  %i.de = fmul nsz float %i.ct, %i.cx             ; 2 uses
  %i.df = fneg nsz float %i.de
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.cs, float %i.df)
  %i.dh = fneg nsz float %i.dd
  %5 = extractelement <2 x float> %i.db, i64 1    ; 2 uses
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %5, float %i.dh)
  %i.dj = fneg nsz float %i.dc
  %i.dk = fmul nsz float %i.ct, %i.dc             ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.cu, i64 1
  %i.dn = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dk, i64 1
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cr, <2 x float> %i.dn) ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cs, float %i.dp)
  %i.dr = fneg nsz float %i.dk
  %i.ds = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.cu, i64 1
  %i.du = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dr, i64 1
  %i.dw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.db, <2 x float> %i.dv) ; 2 uses
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %5, float %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str, ptr %4, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 71, ptr %i.dy, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.7, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.8, i64 28, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.dz = fsub nsz float %i.g, %i.da
  %i.ea = call nsz noundef float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp nsz ugt float %i.ea, f0x3C23D70A
  br i1 %i.eb, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ec = call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.cw, float %i.dd)
  %i.ed = fmul nsz double %cos38.i.i.i.i, %sin40.i.i.i.i
  %i.ee = fptrunc nsz double %i.ed to float
  %i.ef = fsub nsz float %i.ee, %i.ec
  %i.eg = call nsz noundef float @llvm.fabs.f32(float %i.ef)
  %i.eh = fcmp nsz ugt float %i.eg, f0x3C23D70A
  br i1 %i.eh, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ei = fadd nsz float %i.dg, %i.h
  %i.ej = call nsz float @llvm.fabs.f32(float %i.ei)
  %i.ek = fcmp nsz ugt float %i.ej, f0x3C23D70A
  %i.el = extractelement <2 x float> %i.v, i64 0
  %i.em = fsub nsz float %i.el, %i.di
  %i.en = call nsz float @llvm.fabs.f32(float %i.em)
  %i.eo = fcmp nsz ugt float %i.en, f0x3C23D70A
  %or.cond = select i1 %i.ek, i1 true, i1 %i.eo
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ep = extractelement <2 x float> %i.v, i64 1
  %i.eq = fsub nsz float %i.ep, %i.dq
  %i.er = call nsz noundef float @llvm.fabs.f32(float %i.eq)
  %i.es = fcmp nsz ugt float %i.er, f0x3C23D70A
  br i1 %i.es, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.et = extractelement <2 x float> %i.do, i64 1
  %i.eu = fsub nsz float %i.x, %i.et
  %i.ev = call nsz noundef float @llvm.fabs.f32(float %i.eu)
  %i.ew = fcmp nsz ugt float %i.ev, f0x3C23D70A
  %foldExtExtBinop6 = fsub nsz <2 x float> %i.aj, %i.dw
  %i.ex = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %i.ey = call nsz float @llvm.fabs.f32(float %i.ex)
  %i.ez = fcmp nsz ugt float %i.ey, f0x3C23D70A
  %or.cond15 = select i1 %i.ew, i1 true, i1 %i.ez
  br i1 %or.cond15, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop8 = fsub nsz <2 x float> %i.aj, %i.dw
  %i.fa = extractelement <2 x float> %foldExtExtBinop8, i64 1
  %i.fb = call nsz noundef float @llvm.fabs.f32(float %i.fa)
  %i.fc = fcmp nsz ugt float %i.fb, f0x3C23D70A
  br i1 %i.fc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fd = fsub nsz float %i.al, %i.dx
  %i.fe = call nsz noundef float @llvm.fabs.f32(float %i.fd)
  %i.ff = fcmp nsz ole float %i.fe, f0x3C23D70A
  %i.fg = zext i1 %i.ff to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa.i.i.i.i = phi i8 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ %i.fg, %bb.g ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.fh, align 8, !tbaa !52, !alias.scope !78
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.lcssa.i.i.i.i, ptr %i.fi, align 1, !tbaa !53, !alias.scope !78
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !50, !alias.scope !78
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.lcssa.i.i.i.i, ptr %i.fj, align 2, !tbaa !55, !alias.scope !78
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  %i.fm = call ptr @__cxa_begin_catch(ptr %i.fl) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k, %bb.i
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !62, !range !39, !noundef !40
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_0JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !63, !nonnull !40, !align !64 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !50
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 160
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_0JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #18
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.q ], [ %i.fx, %bb.p ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #18
  unreachable

"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_0JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit": ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZL22CATCH2_INTERNAL_TEST_0vE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !65
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef) unnamed_addr #0

declare void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.b = load i8, ptr %i.a, align 1, !tbaa !62, !range !39, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63, !nonnull !40, !align !64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(52) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
