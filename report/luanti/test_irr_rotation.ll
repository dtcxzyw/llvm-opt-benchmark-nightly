Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_rotation?download=true
inline.NumInlined: 386
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.fabs.f32
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN5Catch35uniform_floating_point_distributionIfEclINS_11SimplePcg32EEEfRT_(ptr noundef nonnull align 4 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %i.d = icmp eq i32 %i.c, 0
  %i.e = tail call noundef i32 @_ZN5Catch11SimplePcg32clEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  br i1 %i.d, label %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4, !tbaa !35
  %i.g = zext i32 %i.e to i64
  %i.h = zext i32 %i.f to i64
  %i.i = mul nuw i64 %i.h, %i.g                   ; 2 uses
  %.sroa.0.0.insert.insert.i.i = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 32) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.0.in11.i = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.5.012.i = trunc nuw i64 %.sroa.5.0.in11.i to i32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = icmp ugt i32 %i.k, %.sroa.5.012.i
  br i1 %i.l, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.m = tail call noundef i32 @_ZN5Catch11SimplePcg32clEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.n = load i32, ptr %i.b, align 4, !tbaa !35
  %i.o = zext i32 %i.m to i64
  %i.p = zext i32 %i.n to i64
  %i.q = mul nuw i64 %i.p, %i.o                   ; 2 uses
  %.sroa.0.0.insert.insert.i10.i = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 32) ; 2 uses
  %.sroa.5.0.in.i = lshr i64 %.sroa.0.0.insert.insert.i10.i, 32
  %.sroa.5.0.i = trunc nuw i64 %.sroa.5.0.in.i to i32
  %i.r = load i32, ptr %i.j, align 4, !tbaa !36
  %i.s = icmp ugt i32 %i.r, %.sroa.5.0.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.in.in.lcssa.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.b ], [ %.sroa.0.0.insert.insert.i10.i, %.lr.ph.i ]
  %.sroa.01.0.i = trunc i64 %.sroa.5.0.in.in.lcssa.i to i32
  %i.t = load i32, ptr %i.a, align 4, !tbaa !37
  %i.u = add i32 %i.t, %.sroa.01.0.i
  br label %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit

_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit: ; preds = %bb.a, %._crit_edge.i
  %.0.i = phi i32 [ %i.u, %._crit_edge.i ], [ %i.e, %bb.a ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 4, !tbaa !38, !range !39, !noundef !40
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41
  %i.aa = icmp eq i32 %.0.i, %i.z                 ; 2 uses
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Catch28uniform_integer_distributionIjEclINS_11SimplePcg32EEEjRT_.exit
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load float, ptr %0, align 4, !tbaa !42
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !43 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44 ; 4 uses
  %i.ag = icmp ugt i32 %.0.i, %i.af
  br i1 %i.ag, label %.lr.ph27, label %.._crit_edge28_crit_edge

.._crit_edge28_crit_edge:                         ; preds = %bb.e
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre35 = load float, ptr %.phi.trans.insert34, align 4, !tbaa !45
  br label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.e
  %i.ah = uitofp nsz i32 %i.af to float
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !45 ; 2 uses
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
  %i.cw = extractelement <2 x float> %i.cr, i64 1 ; 5 uses
  %i.cx = fmul nsz float %i.cw, 2.000000e+00      ; 2 uses
  %i.cy = fneg nsz float %i.cx                    ; 2 uses
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.cw, float 1.000000e+00)
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cs, float %i.cz)
  %i.db = fmul <2 x float> %i.cr, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0 ; 5 uses
  %i.dd = fmul nsz float %i.ct, %i.cu             ; 2 uses
  %i.de = fmul nsz float %i.ct, %i.cx             ; 2 uses
  %i.df = fneg nsz float %i.de
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.cs, float %i.df)
  %i.dh = fneg nsz float %i.dd
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.cw, float %i.dh)
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
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.cw, float %i.dp)
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
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_0E9_M_invokeERKSt9_Any_dataOS2_":bb.a
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
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

declare void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch9UnaryExprIbE29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(11) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.b = load i8, ptr %i.a, align 2, !tbaa !84, !range !39, !noalias !83, !noundef !40
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sink4.i.i.sroa.gep6 = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 1702195828, ptr %i.d, align 8, !alias.scope !85
  br label %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.c:                                             ; preds = %bb.a
  %.sink4.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false)
  br label %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b, %bb.c
  %.sink4.i.i.sroa.phi = phi ptr [ %.sink4.i.i.sroa.gep, %bb.c ], [ %.sink4.i.i.sroa.gep6, %bb.b ]
  %.sink.i.i = phi i64 [ 5, %bb.c ], [ 4, %bb.b ] ; 2 uses
  store i8 0, ptr %.sink4.i.i.sroa.phi, align 1, !tbaa !48, !alias.scope !85
  store ptr %i.d, ptr %2, align 8, !tbaa !46, !alias.scope !85
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i, ptr %i.e, align 8, !tbaa !47, !alias.scope !85
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.sink.i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = load i64, ptr %i.d, align 8, !tbaa !48
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !86     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !tbaa !48
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.k
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_1E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.val = load <2 x float>, ptr %1, align 4, !tbaa !23 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load float, ptr %i.a, align 4, !tbaa !23
  %.sroa.013.0.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 0
  %.sroa.013.4.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 1
  %i.b = fpext nsz float %.sroa.013.0.vec.extract.i.i.i to double ; 2 uses
  %i.c = fmul nsz double %i.b, 5.000000e-01
  %sincos.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.c) ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0 ; 2 uses
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1
  %i.d = fpext nsz float %.sroa.013.4.vec.extract.i.i.i to double ; 2 uses
  %i.e = fmul nsz double %i.d, 5.000000e-01
  %sincos34.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin35.i.i.i.i.i = extractvalue { double, double } %sincos34.i.i.i.i.i, 0 ; 2 uses
  %cos36.i.i.i.i.i = extractvalue { double, double } %sincos34.i.i.i.i.i, 1
  %i.f = fpext nsz float %.val2 to double         ; 2 uses
  %i.g = fmul nsz double %i.f, 5.000000e-01
  %sincos37.i.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.g) ; 2 uses
  %sin38.i.i.i.i.i = extractvalue { double, double } %sincos37.i.i.i.i.i, 0 ; 2 uses
  %cos39.i.i.i.i.i = extractvalue { double, double } %sincos37.i.i.i.i.i, 1 ; 2 uses
  %i.h = fmul nsz double %sin35.i.i.i.i.i, %cos39.i.i.i.i.i ; 2 uses
  %i.i = fmul nsz double %sin35.i.i.i.i.i, %sin38.i.i.i.i.i ; 2 uses
  %i.j = fneg nsz double %i.i
  %i.k = insertelement <2 x double> poison, double %cos.i.i.i.i.i, i64 0 ; 2 uses
  %i.l = insertelement <2 x double> %i.k, double %sin.i.i.i.i.i, i64 1 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fneg nsz double %i.h
  %i.p = insertelement <2 x double> poison, double %cos36.i.i.i.i.i, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x double> poison, double %sin38.i.i.i.i.i, i64 0
  %i.s = insertelement <2 x double> %i.r, double %cos39.i.i.i.i.i, i64 1
  %i.t = fmul nsz <2 x double> %i.q, %i.s         ; 3 uses
  %i.u = shufflevector <2 x double> %i.m, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.v = fmul nsz <2 x double> %i.l, %i.u
  %i.w = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x double> %i.w, double %i.h, i64 1
  %i.y = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.x, <2 x double> %i.v) ; 2 uses
  %i.z = insertelement <2 x double> poison, double %sin.i.i.i.i.i, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.i, i64 1
  %i.ad = fmul nsz <2 x double> %i.aa, %i.ac
  %i.ae = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.t, <2 x double> %i.ad) ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ah = fptrunc nsz <2 x double> %i.ag to <2 x float> ; 3 uses
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %i.aj = fptrunc nsz <2 x double> %i.ai to <2 x float> ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.aj, %i.aj
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.am = tail call nsz float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %i.an = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = fpext nsz float %i.aq to double
  %i.as = tail call nsz double @llvm.sqrt.f64(double %i.ar)
  %i.at = fdiv nsz double 1.000000e+00, %i.as
  %i.au = fptrunc nsz double %i.at to float
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fmul nsz <2 x float> %i.aw, %i.ah       ; 6 uses
  %i.ay = fmul nsz <2 x float> %i.aw, %i.aj       ; 6 uses
  %i.az = extractelement <2 x float> %i.ay, i64 0 ; 3 uses
  %foldExtExtBinop4 = fmul nsz <2 x float> %i.ay, %i.ay
  %i.ba = extractelement <2 x float> %foldExtExtBinop4, i64 0
  %i.bb = fpext nsz float %i.ba to double         ; 2 uses
  %i.bc = extractelement <2 x float> %i.ax, i64 1 ; 5 uses
  %i.bd = fmul nsz float %i.bc, %i.bc
  %i.be = fpext nsz float %i.bd to double         ; 2 uses
  %i.bf = extractelement <2 x float> %i.ay, i64 1 ; 3 uses
  %i.bg = fmul nsz float %i.bf, %i.bf
  %i.bh = fpext nsz float %i.bg to double         ; 2 uses
  %i.bi = extractelement <2 x float> %i.ax, i64 0
  %foldExtExtBinop6 = fmul nsz <2 x float> %i.ax, %i.ax
  %i.bj = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %i.bk = fpext nsz float %i.bj to double         ; 2 uses
  %i.bl = fneg nsz float %i.bi
  %i.bm = fmul nsz float %i.bc, %i.bl
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.az, float %i.bm)
  %i.bo = fpext nsz float %i.bn to double
  %i.bp = fmul nsz double %i.bo, 2.000000e+00     ; 4 uses
  %i.bq = fadd nsz double %i.bp, -1.000000e+00
  %i.br = tail call nsz noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp nsz ugt double %i.br, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bs, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bt = fpext nsz float %i.bc to double
  %i.bu = fpext nsz float %i.az to double
  %i.bv = tail call nsz double @llvm.atan2.f64(double %i.bt, double %i.bu)
  %i.bw = fmul nsz double %i.bv, -2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.bx = fadd nsz double %i.bp, 1.000000e+00
  %i.by = tail call nsz noundef double @llvm.fabs.f64(double %i.bx)
  %i.bz = fcmp nsz ugt double %i.by, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bz, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = fpext nsz float %i.bc to double
  %i.cb = fpext nsz float %i.az to double
  %i.cc = tail call nsz double @llvm.atan2.f64(double %i.ca, double %i.cb)
  %i.cd = fmul nsz double %i.cc, 2.000000e+00
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ce = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = fmul nsz <2 x float> %i.ce, %i.cf
  %i.ch = fsub nsz double %i.be, %i.bh
  %i.ci = fsub nsz double %i.ch, %i.bk
  %i.cj = fadd nsz double %i.ci, %i.bb
  %i.ck = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ax, <2 x float> %i.cg)
  %i.cm = fpext nsz <2 x float> %i.cl to <2 x double>
  %i.cn = fmul nsz <2 x double> %i.cm, splat (double 2.000000e+00) ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 1
  %i.cp = tail call nsz double @llvm.atan2.f64(double %i.co, double %i.cj)
  %i.cq = fadd nsz double %i.be, %i.bh
  %i.cr = fsub nsz double %i.bk, %i.cq
  %i.cs = fadd nsz double %i.cr, %i.bb
  %i.ct = extractelement <2 x double> %i.cn, i64 0
  %i.cu = tail call nsz double @llvm.atan2.f64(double %i.ct, double %i.cs)
  %i.cv = fptrunc nsz double %i.cu to float
  %.sroa.02.0.vec.insert9.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  %i.cw = fcmp nsz olt double %i.bp, -1.000000e+00
  %i.cx = select i1 %i.cw, double -1.000000e+00, double %i.bp ; 2 uses
  %i.cy = fcmp nsz olt double %i.cx, 1.000000e+00
  %i.cz = select i1 %i.cy, double %i.cx, double 1.000000e+00
  %i.da = tail call nsz double @llvm.asin.f64(double %i.cz)
  %i.db = fptrunc nsz double %i.da to float
  %i.dc = fpext nsz float %i.db to double
  %i.dd = tail call nsz { double, double } @llvm.sincos.f64(double %i.dc)
  br label %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i

_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.10.0.in.i.i.i = phi double [ %i.cp, %bb.e ], [ %i.cd, %bb.d ], [ %i.bw, %bb.b ]
  %.sroa.02.0.i.i.i = phi nsz <2 x float> [ %.sroa.02.0.vec.insert9.i.i.i, %bb.e ], [ zeroinitializer, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sink.i.i.i.i = phi { double, double } [ %i.dd, %bb.e ], [ { double f0xBFEFFFFFFFFFFFF7, double f0xBE6777A5CF72CECC }, %bb.d ], [ { double f0x3FEFFFFFFFFFFFF7, double f0xBE6777A5CF72CECC }, %bb.b ] ; 2 uses
  %.sroa.10.0.i.i.i = fptrunc double %.sroa.10.0.in.i.i.i to float
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str, ptr %4, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 82, ptr %i.de, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.7, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.12, i64 29, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %sincos.i.i16.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin.i.i17.i.i.i = extractvalue { double, double } %sincos.i.i16.i.i.i, 0 ; 3 uses
  %cos.i.i18.i.i.i = extractvalue { double, double } %sincos.i.i16.i.i.i, 1 ; 3 uses
  %sincos36.i.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin37.i.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i.i, 0 ; 3 uses
  %cos38.i.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i.i, 1 ; 4 uses
  %sincos39.i.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.f) ; 2 uses
  %sin40.i.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i.i, 0 ; 5 uses
  %cos41.i.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i.i, 1 ; 5 uses
  %i.df = fmul nsz double %cos38.i.i.i.i.i, %cos41.i.i.i.i.i
  %i.dg = fptrunc nsz double %i.df to float
  %i.dh = fptrunc nsz double %sin37.i.i.i.i.i to float
  %i.di = fmul nsz double %sin.i.i17.i.i.i, %sin37.i.i.i.i.i
  %i.dj = fmul nsz double %cos.i.i18.i.i.i, %sin37.i.i.i.i.i
  %i.dk = fneg nsz double %sin40.i.i.i.i.i
  %i.dl = insertelement <2 x double> poison, double %cos.i.i18.i.i.i, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %cos41.i.i.i.i.i, i64 1
  %i.dp = fmul nsz <2 x double> %i.dm, %i.do
  %i.dq = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x double> poison, double %cos41.i.i.i.i.i, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %sin40.i.i.i.i.i, i64 1
  %i.du = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dt, <2 x double> %i.dp)
  %i.dv = fptrunc nsz <2 x double> %i.du to <2 x float> ; 2 uses
  %i.dw = fmul nsz double %sin.i.i17.i.i.i, %cos38.i.i.i.i.i
  %i.dx = fptrunc nsz double %i.dw to float
  %i.dy = fneg nsz double %cos41.i.i.i.i.i
  %i.dz = insertelement <2 x double> poison, double %sin.i.i17.i.i.i, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x double> poison, double %sin40.i.i.i.i.i, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dy, i64 1
  %i.ed = fmul nsz <2 x double> %i.ea, %i.ec
  %i.ee = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> poison, double %cos41.i.i.i.i.i, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %sin40.i.i.i.i.i, i64 1
  %i.ei = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eh, <2 x double> %i.ed)
  %i.ej = fptrunc nsz <2 x double> %i.ei to <2 x float> ; 2 uses
  %i.ek = fmul nsz double %cos.i.i18.i.i.i, %cos38.i.i.i.i.i
  %i.el = fptrunc nsz double %i.ek to float
  %.sroa.028.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.02.0.i.i.i, i64 0
  %i.em = fpext nsz float %.sroa.028.0.vec.extract.i.i.i.i to double
  %sincos.i3.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.em) ; 2 uses
  %sin.i4.i.i.i.i = extractvalue { double, double } %sincos.i3.i.i.i.i, 0 ; 3 uses
  %cos.i5.i.i.i.i = extractvalue { double, double } %sincos.i3.i.i.i.i, 1 ; 3 uses
  %sin37.i7.i.i.i.i = extractvalue { double, double } %.sink.i.i.i.i, 0 ; 3 uses
  %cos38.i8.i.i.i.i = extractvalue { double, double } %.sink.i.i.i.i, 1 ; 4 uses
  %i.en = fpext nsz float %.sroa.10.0.i.i.i to double
  %sincos39.i9.i.i.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.en) ; 2 uses
  %sin40.i10.i.i.i.i = extractvalue { double, double } %sincos39.i9.i.i.i.i, 0 ; 5 uses
  %cos41.i11.i.i.i.i = extractvalue { double, double } %sincos39.i9.i.i.i.i, 1 ; 5 uses
  %i.eo = fmul nsz double %cos38.i8.i.i.i.i, %cos41.i11.i.i.i.i
  %i.ep = fptrunc nsz double %i.eo to float
  %i.eq = fptrunc nsz double %sin37.i7.i.i.i.i to float
  %i.er = fmul nsz double %sin37.i7.i.i.i.i, %sin.i4.i.i.i.i
  %i.es = fmul nsz double %sin37.i7.i.i.i.i, %cos.i5.i.i.i.i
  %i.et = fneg nsz double %sin40.i10.i.i.i.i
  %i.eu = insertelement <2 x double> poison, double %cos.i5.i.i.i.i, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %cos41.i11.i.i.i.i, i64 1
  %i.ey = fmul nsz <2 x double> %i.ev, %i.ex
  %i.ez = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = insertelement <2 x double> poison, double %cos41.i11.i.i.i.i, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %sin40.i10.i.i.i.i, i64 1
  %i.fd = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.ey)
  %i.fe = fptrunc nsz <2 x double> %i.fd to <2 x float> ; 2 uses
  %i.ff = fmul nsz double %cos38.i8.i.i.i.i, %sin.i4.i.i.i.i
  %i.fg = fptrunc nsz double %i.ff to float
  %i.fh = fneg nsz double %cos41.i11.i.i.i.i
  %i.fi = insertelement <2 x double> poison, double %sin.i4.i.i.i.i, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x double> poison, double %sin40.i10.i.i.i.i, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fh, i64 1
  %i.fm = fmul nsz <2 x double> %i.fj, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> poison, double %cos41.i11.i.i.i.i, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %sin40.i10.i.i.i.i, i64 1
  %i.fr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fq, <2 x double> %i.fm)
  %i.fs = fptrunc nsz <2 x double> %i.fr to <2 x float> ; 2 uses
  %i.ft = fmul nsz double %cos38.i8.i.i.i.i, %cos.i5.i.i.i.i
  %i.fu = fptrunc nsz double %i.ft to float
  %i.fv = fsub nsz float %i.dg, %i.ep
  %i.fw = call nsz noundef float @llvm.fabs.f32(float %i.fv)
  %i.fx = fcmp nsz ugt float %i.fw, f0x3C23D70A
  br i1 %i.fx, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i
  %i.fy = fmul nsz double %cos38.i8.i.i.i.i, %sin40.i10.i.i.i.i
  %i.fz = fptrunc nsz double %i.fy to float
  %i.ga = fmul nsz double %cos38.i.i.i.i.i, %sin40.i.i.i.i.i
  %i.gb = fptrunc nsz double %i.ga to float
  %i.gc = fsub nsz float %i.gb, %i.fz
  %i.gd = call nsz noundef float @llvm.fabs.f32(float %i.gc)
  %i.ge = fcmp nsz ugt float %i.gd, f0x3C23D70A
  br i1 %i.ge, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gf = fsub nsz float %i.eq, %i.dh
  %i.gg = call nsz noundef float @llvm.fabs.f32(float %i.gf)
  %i.gh = fcmp nsz ugt float %i.gg, f0x3C23D70A
  %foldExtExtBinop8 = fsub nsz <2 x float> %i.dv, %i.fe
  %i.gi = extractelement <2 x float> %foldExtExtBinop8, i64 0
  %i.gj = call nsz float @llvm.fabs.f32(float %i.gi)
  %i.gk = fcmp nsz ugt float %i.gj, f0x3C23D70A
  %or.cond = select i1 %i.gh, i1 true, i1 %i.gk
  br i1 %or.cond, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop10 = fsub nsz <2 x float> %i.dv, %i.fe
  %i.gl = extractelement <2 x float> %foldExtExtBinop10, i64 1
  %i.gm = call nsz noundef float @llvm.fabs.f32(float %i.gl)
  %i.gn = fcmp nsz ugt float %i.gm, f0x3C23D70A
  br i1 %i.gn, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.go = fsub nsz float %i.dx, %i.fg
  %i.gp = call nsz noundef float @llvm.fabs.f32(float %i.go)
  %i.gq = fcmp nsz ugt float %i.gp, f0x3C23D70A
  %foldExtExtBinop12 = fsub nsz <2 x float> %i.ej, %i.fs
  %i.gr = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.gs = call nsz float @llvm.fabs.f32(float %i.gr)
  %i.gt = fcmp nsz ugt float %i.gs, f0x3C23D70A
  %or.cond20 = select i1 %i.gq, i1 true, i1 %i.gt
  br i1 %or.cond20, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop14 = fsub nsz <2 x float> %i.ej, %i.fs
  %i.gu = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.gv = call nsz noundef float @llvm.fabs.f32(float %i.gu)
  %i.gw = fcmp nsz ugt float %i.gv, f0x3C23D70A
  br i1 %i.gw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gx = fsub nsz float %i.el, %i.fu
  %i.gy = call nsz noundef float @llvm.fabs.f32(float %i.gx)
  %i.gz = fcmp nsz ole float %i.gy, f0x3C23D70A
  %i.ha = zext i1 %i.gz to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i
  %.lcssa.i.i.i.i.i = phi i8 [ 0, %_ZNK4core10quaternion7toEulerERNS_8vector3dIfEE.exit.i.i.i ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.j ], [ 0, %bb.g ], [ %i.ha, %bb.k ], [ 0, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.hb, align 8, !tbaa !52, !alias.scope !89
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.lcssa.i.i.i.i.i, ptr %i.hc, align 1, !tbaa !53, !alias.scope !89
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !50, !alias.scope !89
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.lcssa.i.i.i.i.i, ptr %i.hd, align 2, !tbaa !55, !alias.scope !89
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  %i.hg = call ptr @__cxa_begin_catch(ptr %i.hf) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.m
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !62, !range !39, !noundef !40
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_1JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !63, !nonnull !40, !align !64 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 160
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_1JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit" unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #18
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hs, %bb.u ], [ %i.hr, %bb.t ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #18
  unreachable

"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_1JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit": ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZL22CATCH2_INTERNAL_TEST_0vE3$_1", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !65
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_2E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.val = load <2 x float>, ptr %1, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load float, ptr %i.a, align 4, !tbaa !23
  %i.b = fpext nsz float %.val2 to double
  %sincos39.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin40.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 0 ; 4 uses
  %cos41.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 1 ; 4 uses
  %i.c = insertelement <2 x double> poison, double %cos41.i.i.i.i, i64 0
  %i.d = insertelement <2 x double> %i.c, double %sin40.i.i.i.i, i64 1 ; 2 uses
  %i.e = fneg nsz <2 x double> %i.d
  %i.f = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fpext nsz <2 x float> %.val to <2 x double>
  %i.h = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.g) ; 2 uses
  %i.i = extractvalue { <2 x double>, <2 x double> } %i.h, 0 ; 6 uses
  %i.j = extractvalue { <2 x double>, <2 x double> } %i.h, 1 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.l = extractelement <2 x double> %i.j, i64 1  ; 2 uses
  %i.m = fmul nsz double %i.l, %cos41.i.i.i.i
  %i.n = fptrunc nsz double %i.m to float         ; 7 uses
  %i.o = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.p = insertelement <2 x double> %i.i, double %sin40.i.i.i.i, i64 1
  %i.q = fmul nsz <2 x double> %i.o, %i.p
  %i.r = extractelement <2 x double> %i.i, i64 1
  %i.s = fptrunc nsz double %i.r to float         ; 5 uses
  %i.t = shufflevector <2 x double> %i.i, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.u = fmul nsz <2 x double> %i.t, %i.i         ; 2 uses
  %i.v = shufflevector <2 x double> %i.i, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.w = fmul nsz <2 x double> %i.v, %i.e
  %i.x = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.f, <2 x double> %i.w)
  %i.z = fmul nsz double %i.k, %cos41.i.i.i.i
  %i.aa = fptrunc nsz <2 x double> %i.q to <2 x float> ; 8 uses
  %i.ab = extractelement <2 x double> %i.i, i64 0
  %i.ac = fmul nsz double %i.ab, %sin40.i.i.i.i
  %i.ad = insertelement <2 x double> poison, double %sin40.i.i.i.i, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %cos41.i.i.i.i, i64 1
  %i.af = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ac, i64 1
  %i.ah = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.ae, <2 x double> %i.ag)
  %i.ai = fptrunc nsz <2 x double> %i.ah to <2 x float> ; 6 uses
  %i.aj = fptrunc nsz <2 x double> %i.y to <2 x float> ; 8 uses
  %i.ak = fmul nsz double %i.k, %i.l
  %i.al = fptrunc nsz double %i.ak to float       ; 7 uses
  %i.am = extractelement <2 x float> %i.ai, i64 0 ; 6 uses
  %i.an = fadd nsz float %i.am, %i.n
  %i.ao = fadd nsz float %i.an, %i.al
  %i.ap = fadd nsz float %i.ao, 1.000000e+00      ; 2 uses
  %i.aq = fcmp nsz ogt float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = tail call nnan nsz float @llvm.sqrt.f32(float %i.ap)
  %i.as = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ar, i64 0
  %i.at = fmul nnan nsz <4 x float> %i.as, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.av = fsub nsz <2 x float> %i.aa, %i.aj
  %i.aw = extractelement <2 x float> %i.ai, i64 1
  %i.ax = fadd nsz float %i.aw, %i.s
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 2
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> %i.at, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ba = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.bc = fdiv nsz <4 x float> %i.bb, %i.au
  %i.bd = fmul nnan nsz <4 x float> %i.bb, %i.au
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.bf = fcmp nsz olt float %i.am, %i.n
  %i.bg = fcmp nsz ogt float %i.n, %i.al
  %or.cond.i.i.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bh = fadd nsz float %i.n, 1.000000e+00
  %i.bi = fsub nsz float %i.bh, %i.am
  %i.bj = fsub nsz float %i.bi, %i.al
  %i.bk = tail call nsz float @llvm.sqrt.f32(float %i.bj)
  %i.bl = fmul nsz float %i.bk, 2.000000e+00
  %i.bm = extractelement <2 x float> %i.ai, i64 1
  %i.bn = fsub nsz float %i.bm, %i.s
  %i.bo = fadd nsz <2 x float> %i.aa, %i.aj
  %i.bp = fsub nsz <2 x float> %i.aa, %i.aj
  %i.bq = insertelement <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, float %i.bn, i64 1
  %i.br = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.bt = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bv = fmul nsz <4 x float> %i.bs, %i.bu
  %i.bw = fdiv nsz <4 x float> %i.bs, %i.bu
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> %i.bw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.by = fcmp nsz ogt float %i.am, %i.al
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.s, i64 1
  %i.ca = fadd nsz <2 x float> %i.bz, %i.ai       ; 2 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  %i.cc = fsub nsz float %i.cb, %i.n
  %i.cd = fsub nsz float %i.cc, %i.al
  %i.ce = tail call nsz float @llvm.sqrt.f32(float %i.cd)
  %i.cf = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ce, i64 0
  %i.cg = fmul nsz <4 x float> %i.cf, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.ci = fadd nsz <2 x float> %i.aa, %i.aj
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cl = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.cn = fdiv nsz <4 x float> %i.cm, %i.ch
  %i.co = fmul nsz <4 x float> %i.cm, %i.ch
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.cq = fadd nsz float %i.al, 1.000000e+00
  %i.cr = fsub nsz float %i.cq, %i.n
  %i.cs = fsub nsz float %i.cr, %i.am
  %i.ct = tail call nsz float @llvm.sqrt.f32(float %i.cs)
  %i.cu = fmul nsz float %i.ct, 2.000000e+00
  %i.cv = extractelement <2 x float> %i.ai, i64 1
  %i.cw = fsub nsz float %i.cv, %i.s
  %i.cx = fadd nsz <2 x float> %i.aa, %i.aj
  %i.cy = fsub nsz <2 x float> %i.aa, %i.aj
  %i.cz = insertelement <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, float %i.cw, i64 0
  %i.da = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dc = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = fdiv nsz <4 x float> %i.db, %i.dd
  %i.df = fmul nsz <4 x float> %i.db, %i.dd
  %i.dg = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i

_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %i.dh = phi <4 x float> [ %i.bx, %bb.d ], [ %i.dg, %bb.g ], [ %i.cp, %bb.f ], [ %i.be, %bb.b ] ; 4 uses
  %i.di = extractelement <4 x float> %i.dh, i64 2 ; 3 uses
  %i.dj = fmul nsz float %i.di, %i.di
  %i.dk = extractelement <4 x float> %i.dh, i64 0 ; 3 uses
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dj)
  %i.dm = extractelement <4 x float> %i.dh, i64 1 ; 3 uses
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dl)
  %i.do = extractelement <4 x float> %i.dh, i64 3 ; 3 uses
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.do, float %i.do, float %i.dn)
  %i.dq = fpext nsz float %i.dp to double
  %i.dr = tail call nsz double @llvm.sqrt.f64(double %i.dq)
  %i.ds = fdiv nsz double 1.000000e+00, %i.dr
  %i.dt = fptrunc nsz double %i.ds to float       ; 4 uses
  %i.du = fmul nsz float %i.dk, %i.dt             ; 3 uses
  %i.dv = fmul nsz float %i.di, %i.dt             ; 3 uses
  %i.dw = fmul nsz float %i.dm, %i.dt             ; 3 uses
  %i.dx = fmul nsz float %i.do, %i.dt             ; 3 uses
  %i.dy = fmul nsz float %i.dv, %i.dv
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %i.du, float %i.du, float %i.dy)
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.dz)
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.ea)
  %i.ec = fpext nsz float %i.eb to double
  %i.ed = tail call nsz double @llvm.sqrt.f64(double %i.ec)
  %i.ee = fdiv nsz double 1.000000e+00, %i.ed
  %i.ef = fptrunc nsz double %i.ee to float       ; 4 uses
  %i.eg = fmul nsz float %i.du, %i.ef             ; 2 uses
  %i.eh = fmul nsz float %i.dv, %i.ef             ; 7 uses
  %i.ei = fmul nsz float %i.dw, %i.ef             ; 5 uses
  %i.ej = fmul nsz float %i.dx, %i.ef             ; 3 uses
  %i.ek = fmul nsz float %i.eh, 2.000000e+00      ; 2 uses
  %i.el = fneg nsz float %i.ek                    ; 2 uses
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.el, float %i.eh, float 1.000000e+00)
  %i.en = fmul nsz float %i.ei, 2.000000e+00      ; 4 uses
  %i.eo = fneg nsz float %i.en                    ; 2 uses
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.ei, float %i.em)
  %i.eq = fmul nsz float %i.eg, 2.000000e+00      ; 6 uses
  %i.er = fmul nsz float %i.ej, %i.en             ; 2 uses
  %i.es = fmul nsz float %i.ej, %i.ek             ; 2 uses
  %i.et = fneg nsz float %i.es
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.ei, float %i.et)
  %i.ev = fneg nsz float %i.er
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.eh, float %i.ev)
  %i.ex = fneg nsz float %i.eq
  %i.ey = tail call nsz float @llvm.fmuladd.f32(float %i.ex, float %i.eg, float 1.000000e+00) ; 2 uses
  %i.ez = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.ei, float %i.ey)
  %i.fa = fmul nsz float %i.ej, %i.eq             ; 2 uses
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.eh, float %i.fa)
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.ei, float %i.es)
  %i.fd = fneg nsz float %i.fa
  %i.fe = tail call nsz float @llvm.fmuladd.f32(float %i.en, float %i.eh, float %i.fd)
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %i.el, float %i.eh, float %i.ey)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str, ptr %4, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 93, ptr %i.fg, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.7, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.13, i64 24, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.fh = fsub nsz float %i.n, %i.ep
  %i.fi = call nsz noundef float @llvm.fabs.f32(float %i.fh)
  %i.fj = fcmp nsz ugt float %i.fi, f0x3C23D70A
  br i1 %i.fj, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i
  %i.fk = call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.eh, float %i.er)
  %i.fl = extractelement <2 x float> %i.aa, i64 1
  %i.fm = fsub nsz float %i.fl, %i.fk
  %i.fn = call nsz noundef float @llvm.fabs.f32(float %i.fm)
  %i.fo = fcmp nsz ugt float %i.fn, f0x3C23D70A
  br i1 %i.fo, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fp = fadd nsz float %i.eu, %i.s
  %i.fq = call nsz float @llvm.fabs.f32(float %i.fp)
  %i.fr = fcmp nsz ugt float %i.fq, f0x3C23D70A
  br i1 %i.fr, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fs = extractelement <2 x float> %i.aj, i64 1
  %i.ft = fsub nsz float %i.fs, %i.ew
  %i.fu = call nsz noundef float @llvm.fabs.f32(float %i.ft)
  %i.fv = fcmp nsz ugt float %i.fu, f0x3C23D70A
  br i1 %i.fv, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = fsub nsz float %i.am, %i.ez
  %i.fx = call nsz noundef float @llvm.fabs.f32(float %i.fw)
  %i.fy = fcmp nsz ugt float %i.fx, f0x3C23D70A
  %i.fz = extractelement <2 x float> %i.aa, i64 0
  %i.ga = fsub nsz float %i.fz, %i.fb
  %i.gb = call nsz float @llvm.fabs.f32(float %i.ga)
  %i.gc = fcmp nsz ugt float %i.gb, f0x3C23D70A
  %or.cond = select i1 %i.fy, i1 true, i1 %i.gc
  br i1 %or.cond, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gd = extractelement <2 x float> %i.ai, i64 1
  %i.ge = fsub nsz float %i.gd, %i.fc
  %i.gf = call nsz noundef float @llvm.fabs.f32(float %i.ge)
  %i.gg = fcmp nsz ugt float %i.gf, f0x3C23D70A
  %i.gh = extractelement <2 x float> %i.aj, i64 0
  %i.gi = fsub nsz float %i.gh, %i.fe
  %i.gj = call nsz float @llvm.fabs.f32(float %i.gi)
  %i.gk = fcmp nsz ugt float %i.gj, f0x3C23D70A
  %or.cond14 = select i1 %i.gg, i1 true, i1 %i.gk
  br i1 %or.cond14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gl = fsub nsz float %i.al, %i.ff
  %i.gm = call nsz noundef float @llvm.fabs.f32(float %i.gl)
  %i.gn = fcmp nsz ole float %i.gm, f0x3C23D70A
  %i.go = zext i1 %i.gn to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i
  %.lcssa.i.i.i.i = phi i8 [ 0, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.i.i.i ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.i ], [ %i.go, %bb.m ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.gp, align 8, !tbaa !52, !alias.scope !92
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.lcssa.i.i.i.i, ptr %i.gq, align 1, !tbaa !53, !alias.scope !92
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !50, !alias.scope !92
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.lcssa.i.i.i.i, ptr %i.gr, align 2, !tbaa !55, !alias.scope !92
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  %i.gu = call ptr @__cxa_begin_catch(ptr %i.gt) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.o
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !62, !range !39, !noundef !40
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_2JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !63, !nonnull !40, !align !64 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !50
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 160
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_2JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit" unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #18
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.w:                                             ; preds = %bb.r, %bb.q
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn.i.i.i = phi { ptr, i32 } [ %i.hg, %bb.w ], [ %i.hf, %bb.v ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #18
  unreachable

"_ZSt10__invoke_rIvRZL22CATCH2_INTERNAL_TEST_0vE3$_2JN4core8vector3dIfEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit": ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZL22CATCH2_INTERNAL_TEST_0vE3$_2", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !65
  br label %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZL22CATCH2_INTERNAL_TEST_0vE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4core8vector3dIfEEEZL22CATCH2_INTERNAL_TEST_0vE3$_3E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.val = load <2 x float>, ptr %1, align 4, !tbaa !23 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load float, ptr %i.a, align 4, !tbaa !23
  %.sroa.019.0.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 0
  %.sroa.019.4.vec.extract.i.i.i = extractelement <2 x float> %.val, i64 1
  %i.b = fpext nsz float %.val2 to double
  %sincos39.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.b) ; 2 uses
  %sin40.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 0 ; 4 uses
  %cos41.i.i.i.i = extractvalue { double, double } %sincos39.i.i.i.i, 1 ; 5 uses
  %i.c = fneg nsz double %sin40.i.i.i.i
  %i.d = fneg nsz double %cos41.i.i.i.i
  %i.e = fpext nsz float %.sroa.019.0.vec.extract.i.i.i to double
  %sincos.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i, 0 ; 4 uses
  %cos.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i, 1 ; 4 uses
  %i.f = fpext nsz float %.sroa.019.4.vec.extract.i.i.i to double
  %sincos36.i.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.f) ; 2 uses
  %sin37.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i, 0 ; 3 uses
  %cos38.i.i.i.i = extractvalue { double, double } %sincos36.i.i.i.i, 1 ; 4 uses
  %i.g = fmul nsz double %cos38.i.i.i.i, %cos41.i.i.i.i
  %i.h = fptrunc nsz double %i.g to float         ; 4 uses
  %i.i = fmul nsz double %cos38.i.i.i.i, %sin40.i.i.i.i
  %i.j = fptrunc nsz double %i.i to float         ; 4 uses
  %i.k = fptrunc nsz double %sin37.i.i.i.i to float ; 4 uses
  %i.l = fneg nsz float %i.k
  %i.m = fmul nsz double %sin.i.i.i.i, %sin37.i.i.i.i ; 2 uses
  %i.n = fmul nsz double %cos.i.i.i.i, %sin37.i.i.i.i ; 2 uses
  %i.o = fmul nsz double %cos.i.i.i.i, %i.c
  %i.p = tail call nsz double @llvm.fmuladd.f64(double %i.m, double %cos41.i.i.i.i, double %i.o)
  %i.q = fptrunc nsz double %i.p to float         ; 4 uses
  %i.r = fmul nsz double %cos.i.i.i.i, %cos41.i.i.i.i
  %i.s = fmul nsz double %sin.i.i.i.i, %i.d
  %i.t = insertelement <2 x double> poison, double %i.n, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.m, i64 1
  %i.v = insertelement <2 x double> poison, double %sin40.i.i.i.i, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.r, i64 1
  %i.z = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.w, <2 x double> %i.y)
  %i.aa = fmul nsz double %sin.i.i.i.i, %cos38.i.i.i.i
  %i.ab = fptrunc nsz double %i.aa to float       ; 4 uses
  %i.ac = fmul nsz double %sin.i.i.i.i, %sin40.i.i.i.i
  %i.ad = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %cos41.i.i.i.i, double %i.ac)
  %i.ae = fptrunc nsz double %i.ad to float       ; 3 uses
  %i.af = fptrunc nsz <2 x double> %i.z to <2 x float> ; 5 uses
  %i.ag = fmul nsz double %cos.i.i.i.i, %cos38.i.i.i.i
  %i.ah = fptrunc nsz double %i.ag to float       ; 4 uses
  %i.ai = fmul nsz float %i.j, %i.j
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.ai)
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.aj)
  %i.al = tail call nsz noundef float @llvm.sqrt.f32(float %i.ak) ; 2 uses
  %i.am = tail call nsz float @llvm.fabs.f32(float %i.al)
  %i.an = fcmp nsz ole float %i.am, f0x358637BD
  %i.ao = fpext nsz float %i.al to double
  %i.ap = fdiv nsz double 1.000000e+00, %i.ao
  %i.aq = select i1 %i.an, double f0x37F0000010000010, double %i.ap ; 3 uses
  %i.ar = fpext nsz float %i.l to double
  %i.as = fmul nsz double %i.aq, %i.ar            ; 2 uses
  %i.at = fcmp nsz olt double %i.as, -1.000000e+00
  %i.au = select i1 %i.at, double -1.000000e+00, double %i.as ; 2 uses
  %i.av = fcmp nsz olt double %i.au, 1.000000e+00
  %i.aw = select i1 %i.av, double %i.au, double 1.000000e+00 ; 2 uses
  %i.ax = tail call nsz noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fadd nsz double %i.ax, -1.000000e+00
  %i.az = tail call nsz noundef double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp nsz ugt double %i.az, 1.000000e-08
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = fmul nsz <2 x float> %i.af, %i.af       ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.bc)
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.bd)
  %i.bf = tail call nsz noundef float @llvm.sqrt.f32(float %i.be) ; 2 uses
  %i.bg = extractelement <2 x float> %i.bb, i64 1
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.bg)
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.bh)
  %i.bj = tail call nsz noundef float @llvm.sqrt.f32(float %i.bi) ; 2 uses
  %i.bk = fpext nsz float %i.bf to double
  %i.bl = tail call nsz float @llvm.fabs.f32(float %i.bf)
  %i.bm = fcmp nsz ole float %i.bl, f0x358637BD
  %i.bn = fdiv nsz double 1.000000e+00, %i.bk
  %i.bo = select i1 %i.bm, double f0x37F0000010000010, double %i.bn
  %i.bp = fpext nsz float %i.bj to double
  %i.bq = tail call nsz float @llvm.fabs.f32(float %i.bj)
  %i.br = fcmp nsz ole float %i.bq, f0x358637BD
  %i.bs = fdiv nsz double 1.000000e+00, %i.bp
  %i.bt = select i1 %i.br, double f0x37F0000010000010, double %i.bs
  %i.bu = fpext nsz float %i.ah to double
  %i.bv = fmul nsz double %i.bo, %i.bu
  %i.bw = fpext nsz float %i.ab to double
  %i.bx = fmul nsz double %i.bt, %i.bw
  %i.by = tail call nsz double @llvm.atan2.f64(double %i.bx, double %i.bv)
  %i.bz = fpext nsz float %i.h to double
  %i.ca = fmul nsz double %i.aq, %i.bz
  %i.cb = fpext nsz float %i.j to double
  %i.cc = fmul nsz double %i.aq, %i.cb
  %i.cd = tail call nsz double @llvm.atan2.f64(double %i.cc, double %i.ca)
  %i.ce = fptrunc nsz double %i.by to float
  %i.cf = fpext nsz float %i.ce to double
  %i.cg = tail call nsz { double, double } @llvm.sincos.f64(double %i.cf)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.ch = extractelement <2 x float> %i.af, i64 1
  %i.ci = fpext nsz float %i.ch to double
  %i.cj = fneg nsz float %i.q
  %i.ck = fpext nsz float %i.cj to double
  %i.cl = tail call nsz double @llvm.atan2.f64(double %i.ck, double %i.ci)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit.i.i.i

_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.025.i.i.i.i.i.i = phi { double, double } [ { double 0.000000e+00, double 1.000000e+00 }, %bb.c ], [ %i.cg, %bb.b ] ; 2 uses
  %.0.i.i.i.i.i.i = phi nsz double [ %i.cl, %bb.c ], [ %i.cd, %bb.b ]
  %i.cm = tail call nsz double @llvm.asin.f64(double %i.aw)
  %i.cn = fptrunc nsz double %i.cm to float
  %i.co = fneg nsz float %i.cn
  %i.cp = fptrunc nsz double %.0.i.i.i.i.i.i to float
  %sin.i11.i.i.i = extractvalue { double, double } %.025.i.i.i.i.i.i, 0 ; 4 uses
  %cos.i12.i.i.i = extractvalue { double, double } %.025.i.i.i.i.i.i, 1 ; 4 uses
  %i.cq = fpext nsz float %i.co to double
  %sincos36.i13.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.cq) ; 2 uses
  %sin37.i14.i.i.i = extractvalue { double, double } %sincos36.i13.i.i.i, 0 ; 3 uses
  %cos38.i15.i.i.i = extractvalue { double, double } %sincos36.i13.i.i.i, 1 ; 4 uses
  %i.cr = fpext nsz float %i.cp to double
  %sincos39.i16.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.cr) ; 2 uses
  %sin40.i17.i.i.i = extractvalue { double, double } %sincos39.i16.i.i.i, 0 ; 5 uses
  %cos41.i18.i.i.i = extractvalue { double, double } %sincos39.i16.i.i.i, 1 ; 5 uses
  %i.cs = fmul nsz double %cos38.i15.i.i.i, %cos41.i18.i.i.i
  %i.ct = fptrunc nsz double %i.cs to float
  %i.cu = fptrunc nsz double %sin37.i14.i.i.i to float
  %i.cv = fmul nsz double %sin37.i14.i.i.i, %sin.i11.i.i.i ; 2 uses
  %i.cw = fmul nsz double %sin37.i14.i.i.i, %cos.i12.i.i.i ; 2 uses
  %i.cx = fneg nsz double %sin40.i17.i.i.i
  %i.cy = fmul nsz double %cos.i12.i.i.i, %i.cx
  %i.cz = tail call nsz double @llvm.fmuladd.f64(double %i.cv, double %cos41.i18.i.i.i, double %i.cy)
  %i.da = fptrunc nsz double %i.cz to float
  %i.db = fmul nsz double %cos.i12.i.i.i, %cos41.i18.i.i.i
  %i.dc = tail call nsz double @llvm.fmuladd.f64(double %i.cv, double %sin40.i17.i.i.i, double %i.db)
  %i.dd = fptrunc nsz double %i.dc to float
  %i.de = fmul nsz double %cos38.i15.i.i.i, %sin.i11.i.i.i
  %i.df = fptrunc nsz double %i.de to float
  %i.dg = fmul nsz double %sin.i11.i.i.i, %sin40.i17.i.i.i
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.cw, double %cos41.i18.i.i.i, double %i.dg)
  %i.di = fptrunc nsz double %i.dh to float
  %i.dj = fneg nsz double %cos41.i18.i.i.i
  %i.dk = fmul nsz double %sin.i11.i.i.i, %i.dj
  %i.dl = tail call nsz double @llvm.fmuladd.f64(double %i.cw, double %sin40.i17.i.i.i, double %i.dk)
  %i.dm = fptrunc nsz double %i.dl to float
  %i.dn = fmul nsz double %cos38.i15.i.i.i, %cos.i12.i.i.i
  %i.do = fptrunc nsz double %i.dn to float
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str, ptr %4, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 103, ptr %i.dp, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.7, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.13, i64 24, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.dq = fsub nsz float %i.h, %i.ct
  %i.dr = call nsz noundef float @llvm.fabs.f32(float %i.dq)
  %i.ds = fcmp nsz ugt float %i.dr, f0x3C23D70A
  br i1 %i.ds, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit.i.i.i
  %i.dt = fmul nsz double %cos38.i15.i.i.i, %sin40.i17.i.i.i
  %i.du = fptrunc nsz double %i.dt to float
  %i.dv = fsub nsz float %i.j, %i.du
  %i.dw = call nsz noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp nsz ugt float %i.dw, f0x3C23D70A
  br i1 %i.dx, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dy = fsub nsz float %i.cu, %i.k
  %i.dz = call nsz noundef float @llvm.fabs.f32(float %i.dy)
  %i.ea = fcmp nsz ugt float %i.dz, f0x3C23D70A
  br i1 %i.ea, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eb = fsub nsz float %i.q, %i.da
  %i.ec = call nsz noundef float @llvm.fabs.f32(float %i.eb)
  %i.ed = fcmp nsz ugt float %i.ec, f0x3C23D70A
  br i1 %i.ed, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ee = extractelement <2 x float> %i.af, i64 1
  %i.ef = fsub nsz float %i.ee, %i.dd
  %i.eg = call nsz noundef float @llvm.fabs.f32(float %i.ef)
  %i.eh = fcmp nsz ugt float %i.eg, f0x3C23D70A
  br i1 %i.eh, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ei = fsub nsz float %i.ab, %i.df
  %i.ej = call nsz noundef float @llvm.fabs.f32(float %i.ei)
  %i.ek = fcmp nsz ugt float %i.ej, f0x3C23D70A
  br i1 %i.ek, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.el = fsub nsz float %i.ae, %i.di
  %i.em = call nsz noundef float @llvm.fabs.f32(float %i.el)
  %i.en = fcmp nsz ugt float %i.em, f0x3C23D70A
  %i.eo = extractelement <2 x float> %i.af, i64 0
  %i.ep = fsub nsz float %i.eo, %i.dm
  %i.eq = call nsz float @llvm.fabs.f32(float %i.ep)
  %i.er = fcmp nsz ugt float %i.eq, f0x3C23D70A
  %or.cond = select i1 %i.en, i1 true, i1 %i.er
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.es = fsub nsz float %i.ah, %i.do
  %i.et = call nsz noundef float @llvm.fabs.f32(float %i.es)
  %i.eu = fcmp nsz ole float %i.et, f0x3C23D70A
  %i.ev = zext i1 %i.eu to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit.i.i.i
  %.lcssa.i.i.i.i = phi i8 [ 0, %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit.i.i.i ], [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.ev, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ew, align 8, !tbaa !52, !alias.scope !95
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %.lcssa.i.i.i.i, ptr %i.ex, align 1, !tbaa !53, !alias.scope !95
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !50, !alias.scope !95
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.lcssa.i.i.i.i, ptr %i.ey, align 2, !tbaa !55, !alias.scope !95
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  %i.fb = call ptr @__cxa_begin_catch(ptr %i.fa) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.l
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
end_hunk_1
