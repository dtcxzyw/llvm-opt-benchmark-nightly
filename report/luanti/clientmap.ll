inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN9ClientMap23getBackgroundBrightnessEfjiPb:.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  ret i32 %.182

bb.ai:                                            ; preds = %.loopexit.split-lp, %bb.aa, %bb.ag
  %.sroa.0124.3 = phi ptr [ %.sroa.0124.0194, %.loopexit.split-lp ], [ %.sroa.0124.2, %bb.ag ], [ %.sroa.0124.2, %bb.aa ] ; 2 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.0196, %.loopexit.split-lp ], [ %.sroa.22.2, %bb.ag ], [ %.sroa.22.2, %bb.aa ]
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %.loopexit.split-lp ], [ %i.ly, %bb.ag ], [ %i.jo, %bb.aa ]
  %i.mi = ptrtoint ptr %.sroa.22.3 to i64
  %i.mj = ptrtoint ptr %.sroa.0124.3 to i64
  %i.mk = sub i64 %i.mi, %i.mj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.3, i64 noundef %i.mk) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit120

_ZNSt6vectorIiSaIiEED2Ev.exit120:                 ; preds = %bb.ai, %.thread154, %bb.g, %bb.h
  %.pn101.pn = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %i.ay, %bb.h ], [ %i.ca, %.thread154 ], [ %.pn97.pn.pn, %bb.ai ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %5) #2
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn101.pn.pn = phi { ptr, i32 } [ %.pn101.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit120 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #2
  resume { ptr, i32 } %.pn101.pn.pn
}

declare noundef i32 @_Z12myrand_rangeii(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %.sroa.065.0.copyload = load float, ptr %1, align 4, !tbaa !59 ; 3 uses
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.058.0.copyload = load float, ptr %2, align 4, !tbaa !59 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.a = load <2 x float>, ptr %.sroa.768.0..sroa_idx, align 4, !tbaa !59 ; 6 uses
  %i.b = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !59 ; 6 uses
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
  %i.m = fpext <2 x float> %i.i to <2 x double>
  %i.n = fpext <2 x float> %i.a to <2 x double>
  %i.o = insertelement <2 x double> poison, double %i.l, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul nsz <2 x double> %i.p, %i.m
  %i.r = fmul nsz <2 x double> %i.p, %i.n
  %i.s = fptrunc <2 x double> %i.q to <2 x float>
  %i.t = fptrunc <2 x double> %i.r to <2 x float>
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
  %i.ag = fpext <2 x float> %i.ac to <2 x double>
  %i.ah = fpext <2 x float> %i.b to <2 x double>
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fmul nsz <2 x double> %i.aj, %i.ag
  %i.al = fmul nsz <2 x double> %i.aj, %i.ah
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = fptrunc <2 x double> %i.ak to <2 x float>
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
  %i.bj = fpext <2 x float> %i.as to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nsz <2 x double> %i.bl, %i.bj
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
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
  store float %i.ca, ptr %0, align 4, !tbaa !59
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %.sroa.0.4.vec.extract54, float %i.bv)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.cb, ptr %i.cc, align 4, !tbaa !59
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %.sroa.13.0, float %i.bv)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.cd, ptr %i.ce, align 4, !tbaa !59
  %i.cf = fmul nsz float %.sroa.0.4.vec.extract54, %i.bx ; 2 uses
  %i.cg = fmul nsz float %i.bz, %.sroa.0.0.vec.extract47 ; 2 uses
  %i.ch = fmul nsz float %.sroa.13.0, %i.by       ; 2 uses
  %i.ci = fsub nsz float %i.cf, %i.az
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ci, ptr %i.cj, align 4, !tbaa !59
  %i.ck = fadd nsz float %i.ba, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ck, ptr %i.cl, align 4, !tbaa !59
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !59
  %i.cn = fadd nsz float %i.az, %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cn, ptr %i.co, align 4, !tbaa !59
  %i.cp = fsub nsz float %i.ch, %i.bc
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !59
  %i.cs = fsub nsz float %i.cg, %i.ba
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !59
  %i.cu = fadd nsz float %i.bc, %i.ch
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cu, ptr %i.cv, align 4, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !59
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap12renderPostFxE10CameraMode(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %2 = alloca %"class.core::rect", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !59
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.07.0.copyload, i64 0 ; 2 uses
  %i.b = fcmp nsz ogt float %.sroa.09.0.vec.extract.i, 0.000000e+00
  %i.c = select nsz i1 %i.b, float 5.000000e+00, float -5.000000e+00
  %i.d = fadd nsz float %.sroa.09.0.vec.extract.i, %i.c
  %i.e = fdiv nsz float %i.d, 1.000000e+01
  %i.f = fptosi float %i.e to i16
  %i.g = insertelement <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload, i64 0 ; 2 uses
  %i.h = fcmp nsz ogt <2 x float> %i.g, zeroinitializer
  %i.i = select <2 x i1> %i.h, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.j = fadd nsz <2 x float> %i.g, %i.i
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.000000e+01)
  %i.l = fptosi <2 x float> %i.k to <2 x i16>
  %i.m = zext <2 x i16> %i.l to <2 x i48>
  %i.n = shl nuw <2 x i48> %i.m, <i48 32, i48 16>
  %.sroa.2.0.insert.insert.i = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.n)
  %.sroa.0.0.insert.ext.i = zext i16 %i.f to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.o = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef null)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !715  ; 2 uses
  %i.r = and i32 %i.o, 65535
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !716
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !719  ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 2080
  %i.ab = icmp ugt i64 %i.aa, %i.s
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw [2080 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !154
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1392
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !247 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1396
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !851, !range !152, !noundef !153
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.an = lshr i32 %i.aj, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !138 ; 3 uses
  %i.aq = lshr i32 %i.aj, 8
  %i.ar = and i32 %i.aj, 255
  %i.as = and i32 %i.ap, 255
  %3 = mul nuw nsw i32 %i.as, %i.ar
  %4 = uitofp nsz nneg i32 %3 to float
  %5 = fdiv nsz float %4, 2.550000e+02
  %6 = fadd nsz float %5, 5.000000e-01
  %7 = tail call nsz noundef float @llvm.floor.f32(float %6)
  %8 = fptosi float %7 to i32
  %9 = and i32 %i.aj, -16777216
  %10 = and i32 %i.aq, 255
  %11 = and i32 %i.an, 255
  %12 = lshr i32 %i.ap, 8
  %13 = lshr i32 %i.ap, 16
  %14 = and i32 %12, 255
  %15 = and i32 %13, 255
  %16 = mul nuw nsw i32 %14, %10
  %17 = mul nuw nsw i32 %15, %11
  %18 = uitofp nsz nneg i32 %16 to float
  %19 = uitofp nsz nneg i32 %17 to float
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %22 = fdiv nsz <2 x float> %21, splat (float 2.550000e+02)
  %23 = fadd nsz <2 x float> %22, splat (float 5.000000e-01)
  %24 = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %23)
  %25 = insertelement <4 x i32> poison, i32 %8, i64 2
  %26 = insertelement <4 x i32> %25, i32 %9, i64 3
  %27 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = fptosi <4 x float> %27 to <4 x i32>
  %29 = shufflevector <4 x i32> %28, <4 x i32> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %30 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %29, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %31 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %30, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %32 = shl nuw nsw <4 x i32> %31, <i32 16, i32 8, i32 0, i32 0>
  %33 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %32)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.sroa.014.0 = phi i32 [ %33, %bb.d ], [ %i.aj, %_ZNK14NodeDefManager3getERK7MapNode.exit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 1400
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !720
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1248
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !744
  %i.ax = icmp eq i8 %i.aw, 2
  %i.ay = icmp eq i32 %1, 1
  %or.cond = and i1 %i.ay, %i.ax
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !500, !nonnull !153, !align !501
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !714, !range !152, !noundef !153
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not = icmp ult i32 %.sroa.014.0, 16777216
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.sroa.014.126 = phi i32 [ %.sroa.014.0, %bb.g ], [ -16777216, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !85 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 488
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load <2 x i32>, ptr %i.bn, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  store i32 0, ptr %2, align 4, !tbaa !852
  store i32 0, ptr %i.bo, align 4, !tbaa !854
  store <2 x i32> %i.bq, ptr %i.bp, align 4, !tbaa !247
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 424
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i32 %.sroa.014.126, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap9PrintInfoERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 11) ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS0_9SMaterialEbEEiii(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %1, ptr noundef align 8 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
.invoke:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, CachedMeshBuffer>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.sroa.03.i.i22.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i23.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i12.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.03.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %9 = alloca %class.anon.817, align 8            ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %class.TimeTaker, align 8          ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.core::CMatrix4", align 4   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.video::SMaterial", align 8 ; 12 uses
  %16 = alloca %"class.video::SMaterial", align 8 ; 21 uses
  %17 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %18 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not = icmp eq i32 %3, 8                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #2
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !155
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !154
  store i8 0, ptr %i.i, align 8, !tbaa !41
  %i.k = select i1 %.not, ptr @.str.36, ptr @.str.35
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.k, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %.invoke
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1672
  %.sroa.0.0.copyload.i = load i16, ptr %i.p, align 8, !tbaa !140 ; 6 uses
  %i.q = load i8, ptr @__tls_guard, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, label %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, !prof !451

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.s = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE)
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.t = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.u = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  %.pr = load i8, ptr @__tls_guard, align 1
  %i.v = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_118tl_meshbuflistmapsE) ; 2 uses
  %i.w = icmp eq i8 %.pr, 0
  br i1 %i.w, label %bb.b, label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, !prof !452

bb.b:                                             ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit
  store i8 1, ptr @__tls_guard, align 1
  %i.x = call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  call fastcc void @__cxx_global_var_init()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, i8 0, i64 24, i1 false)
  %i.y = call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EED2Ev, ptr nonnull @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE, ptr nonnull @__dso_handle) #2 ; 0 uses
  br label %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit

_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit: ; preds = %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit, %bb.b
  %i.z = phi ptr [ %i.s, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit.thread ], [ %i.v, %_ZTWN12_GLOBAL__N_118tl_meshbuflistmapsE.exit ], [ %i.v, %bb.b ] ; 3 uses
  %i.aa = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN12_GLOBAL__N_121tl_drawdescriptorlistE) ; 15 uses
  call fastcc void @_ZN12_GLOBAL__N_115MeshBufListMaps5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.z)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 17 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !453 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !453
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit: ; preds = %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ae = phi ptr [ %i.ad, %_ZTWN12_GLOBAL__N_121tl_drawdescriptorlistE.exit ], [ %i.ab, %_ZSt8_DestroyIPN12_GLOBAL__N_114DrawDescriptorES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %i.ah = sext i32 %5 to i64
  %i.ai = udiv i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  %i.ak = sext i32 %4 to i64
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = select i1 %.not, i64 %i.al, i64 0       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.an = add nsw i32 %5, -1
  %.not113 = icmp eq i32 %4, %i.an
  br i1 %.not113, label %.thread832, label %bb.fs

bb.d:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE5clearEv.exit
  %i.ao = add nsw i32 %4, 1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.aj, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !143 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not374574 = icmp eq ptr %i.as, %i.at
  br i1 %.not374574, label %.._crit_edge_crit_edge, label %.lr.ph577.split.us.preheader

.thread832:                                       ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %.not374574833 = icmp eq ptr %i.av, %i.aw
  br i1 %.not374574833, label %.._crit_edge_crit_edge, label %.lr.ph577.split.preheader

.._crit_edge_crit_edge:                           ; preds = %.thread832, %bb.d
  %.pre697 = zext i16 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.pre698 = add nsw i32 %.pre697, -1
  %.pre700 = shl i16 %.sroa.0.0.copyload.i, 4
  br label %._crit_edge

.lr.ph577.split.preheader:                        ; preds = %.thread832
  %i.ax = zext i16 %.sroa.0.0.copyload.i to i32   ; 6 uses
  %i.ay = add nsw i32 %i.ax, -1                   ; 5 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_clientmap.cpp:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 16), ptr @_ZL18ClientMap_settingsB5cxx11, align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #2
  store i64 16, ptr %i.f, align 8, !tbaa !156
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL18ClientMap_settingsB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr @_ZL18ClientMap_settingsB5cxx11, align 16, !tbaa !37
  %i.h = load i64, ptr %i.f, align 8, !tbaa !156  ; 3 uses
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 16), align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 8), align 8, !tbaa !154
  %i.i = load ptr, ptr @_ZL18ClientMap_settingsB5cxx11, align 16, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 32), align 16, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 48), ptr noundef nonnull align 1 dereferenceable(15) @.str.3, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 40), align 8, !tbaa !154
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 63), align 1, !tbaa !41
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i64 18, ptr %i.e, align 8, !tbaa !156
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc28.i unwind label %bb.b ; 2 uses

.noexc28.i:                                       ; preds = %bb.a
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !37
  %i.l = load i64, ptr %i.e, align 8, !tbaa !156  ; 3 uses
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 80), align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.k, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i64 18, i1 false)
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 72), align 8, !tbaa !154
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), align 16, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  store i64 37, ptr %i.d, align 8, !tbaa !156
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc32.i unwind label %bb.c ; 2 uses

.noexc32.i:                                       ; preds = %.noexc28.i
  store ptr %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !37
  %i.p = load i64, ptr %i.d, align 8, !tbaa !156  ; 3 uses
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 112), align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.o, ptr noundef nonnull align 1 dereferenceable(37) @.str.5, i64 37, i1 false)
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 104), align 8, !tbaa !154
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), align 16, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 29, ptr %i.c, align 8, !tbaa !156
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc36.i unwind label %bb.d ; 2 uses

.noexc36.i:                                       ; preds = %.noexc32.i
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !37
  %i.t = load i64, ptr %i.c, align 8, !tbaa !156  ; 3 uses
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 144), align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.s, ptr noundef nonnull align 1 dereferenceable(29) @.str.6, i64 29, i1 false)
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 136), align 8, !tbaa !154
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), align 16, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 16, ptr %i.b, align 8, !tbaa !156
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc40.i unwind label %bb.e ; 2 uses

.noexc40.i:                                       ; preds = %.noexc36.i
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !37
  %i.x = load i64, ptr %i.b, align 8, !tbaa !156  ; 3 uses
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 176), align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(16) @.str.7, i64 16, i1 false)
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 168), align 8, !tbaa !154
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), align 16, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 24, ptr %i.a, align 8, !tbaa !156
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %__cxx_global_var_init.2.exit unwind label %bb.f ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %.noexc28.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %.noexc32.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %.noexc36.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.noexc40.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.515.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 160), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 64), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 96), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 128), %bb.d ]
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.af, %bb.f ], [ %i.ab, %bb.b ], [ %i.ac, %bb.c ], [ %i.ad, %bb.d ]
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g
  %i.ag = phi ptr [ %.515.i, %bb.g ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !41
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.an = icmp eq ptr %i.ah, @_ZL18ClientMap_settingsB5cxx11
  br i1 %i.an, label %bb.i, label %bb.h

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.i

__cxx_global_var_init.2.exit:                     ; preds = %.noexc40.i
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !37
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !156 ; 3 uses
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 208), align 16, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aa, ptr noundef nonnull align 1 dereferenceable(24) @.str.8, i64 24, i1 false)
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 200), align 8, !tbaa !154
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL18ClientMap_settingsB5cxx11, i64 192), align 16, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  %i.ar = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #2 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

declare extern_weak void @_ZTH13verbosestream() #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.abs.v2i16(<2 x i16>, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.vector.reduce.or.v2i48(<2 x i48>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt10_HashtableIN5video9SMaterialESt4pairIKS1_St6vectorIS2_IN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!11 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!17 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !18, i64 0, !14, i64 8}
!18 = !{!"float", !7, i64 0}
!19 = !{!10, !14, i64 8}
!20 = !{!17, !18, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN12_GLOBAL__N_114DrawDescriptorE", !13, i64 0}
!24 = !{!22, !23, i64 16}
!25 = !{!26, !26, i64 0}
!26 = !{!"p2 _ZTSN5scene11IMeshBufferE", !12, i64 0}
!27 = !{!28, !26, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPN5scene11IMeshBufferESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!29 = !{!28, !26, i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSN5scene11IMeshBufferE", !13, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!35, !6, i64 8}
!35 = !{!"_ZTS17IReferenceCounted", !6, i64 8}
!36 = distinct !{null}
!37 = !{!38, !40, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !14, i64 8, !7, i64 16}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!40 = !{!"p1 omnipotent char", !13, i64 0}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !52, i64 16}
!43 = !{!"_ZTS15RenderingEngine", !44, i64 0, !44, i64 4, !45, i64 8, !52, i64 16, !53, i64 24, !54, i64 32}
!44 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!45 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !46, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !48, i64 0}
!48 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !49, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !50, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !51, i64 0}
!51 = !{!"p1 _ZTS13RenderingCore", !13, i64 0}
!52 = !{!"p1 _ZTS14IrrlichtDevice", !13, i64 0}
!53 = !{!"p1 _ZTSN5video12IVideoDriverE", !13, i64 0}
!54 = !{!"p1 _ZTS15MyEventReceiver", !13, i64 0}
!55 = distinct !{null}
!56 = !{!57, !58, i64 32}
!57 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !58, i64 32}
!58 = !{!"bool", !7, i64 0}
!59 = !{!18, !18, i64 0}
!60 = !{!61, !62, i64 8}
!61 = !{!"_ZTSNSt8__detail15_List_node_baseE", !62, i64 0, !62, i64 8}
!62 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !13, i64 0}
!63 = !{!61, !62, i64 0}
!64 = !{!65, !14, i64 16}
!65 = !{!"_ZTSNSt8__detail17_List_node_headerE", !61, i64 0, !14, i64 16}
!66 = !{!67, !58, i64 8}
!67 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !7, i64 0, !58, i64 8}
!68 = !{!69, !82, i64 192}
!69 = !{!"_ZTSN5scene10ISceneNodeE", !70, i64 8, !74, i64 48, !75, i64 112, !75, i64 124, !75, i64 136, !76, i64 152, !79, i64 176, !82, i64 192, !83, i64 200, !6, i64 208, !84, i64 212, !84, i64 214, !58, i64 216, !58, i64 217}
!70 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !71, i64 0}
!71 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !72, i64 0}
!72 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !73, i64 0}
!73 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !57, i64 0}
!74 = !{!"_ZTSN4core8CMatrix4IfEE", !7, i64 0}
!75 = !{!"_ZTSN4core8vector3dIfEE", !18, i64 0, !18, i64 4, !18, i64 8}
!76 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !77, i64 0}
!77 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !78, i64 0}
!78 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !65, i64 0}
!79 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !80, i64 0}
!80 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !81, i64 0}
!81 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !67, i64 0}
!82 = !{!"p1 _ZTSN5scene10ISceneNodeE", !13, i64 0}
!83 = !{!"p1 _ZTSN5scene13ISceneManagerE", !13, i64 0}
!84 = !{!"short", !7, i64 0}
!85 = !{!69, !83, i64 200}
!86 = !{!69, !6, i64 208}
!87 = !{!69, !84, i64 212}
!88 = !{!69, !84, i64 214}
!89 = !{!69, !58, i64 216}
!90 = !{!69, !58, i64 217}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!94, !111, i64 368}
!94 = !{!"_ZTS9ClientMap", !95, i64 0, !69, i64 144, !111, i64 368, !112, i64 376, !113, i64 384, !114, i64 408, !75, i64 416, !75, i64 428, !18, i64 440, !115, i64 444, !44, i64 452, !58, i64 456, !116, i64 464, !121, i64 512, !126, i64 536, !58, i64 584, !131, i64 592, !58, i64 648, !58, i64 649, !58, i64 650, !58, i64 651, !84, i64 652, !58, i64 654, !58, i64 655}
!95 = !{!"_ZTS3Map", !96, i64 8, !97, i64 16, !106, i64 64, !108, i64 120, !109, i64 128, !110, i64 136}
!96 = !{!"p1 _ZTS8IGameDef", !13, i64 0}
!97 = !{!"_ZTSSt3setIP16MapEventReceiverSt4lessIS1_ESaIS1_EE", !98, i64 0}
!98 = !{!"_ZTSSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !99, i64 0}
!99 = !{!"_ZTSNSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !100, i64 0, !102, i64 8}
!100 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP16MapEventReceiverEE", !101, i64 0}
!101 = !{!"_ZTSSt4lessIP16MapEventReceiverE"}
!102 = !{!"_ZTSSt15_Rb_tree_header", !103, i64 0, !14, i64 32}
!103 = !{!"_ZTSSt18_Rb_tree_node_base", !104, i64 0, !105, i64 8, !105, i64 16, !105, i64 24}
!104 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!105 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!106 = !{!"_ZTSSt13unordered_mapIN4core8vector2dIsEEP9MapSectorSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !107, i64 0}
!107 = !{!"_ZTSSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!108 = !{!"p1 _ZTS9MapSector", !13, i64 0}
!109 = !{!"_ZTSN4core8vector2dIsEE", !84, i64 0, !84, i64 2}
!110 = !{!"p1 _ZTS14NodeDefManager", !13, i64 0}
!111 = !{!"p1 _ZTS6Client", !13, i64 0}
!112 = !{!"p1 _ZTS15RenderingEngine", !13, i64 0}
!113 = !{!"_ZTSN4core8aabbox3dIfEE", !75, i64 0, !75, i64 12}
!114 = !{!"p1 _ZTS14MapDrawControl", !13, i64 0}
!115 = !{!"_ZTSN4core8vector3dIsEE", !84, i64 0, !84, i64 2, !84, i64 4}
!116 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP8MapBlockN9ClientMap16MapBlockComparerESaISt4pairIKS2_S4_EEE", !117, i64 0}
!117 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE", !118, i64 0}
!118 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_EN9ClientMap16MapBlockComparerESaIS7_EE13_Rb_tree_implISB_Lb0EEE", !119, i64 0, !102, i64 8}
!119 = !{!"_ZTSSt20_Rb_tree_key_compareIN9ClientMap16MapBlockComparerEE", !120, i64 0}
!120 = !{!"_ZTSN9ClientMap16MapBlockComparerE", !115, i64 0}
!121 = !{!"_ZTSSt6vectorIP8MapBlockSaIS1_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIP8MapBlockSaIS1_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIP8MapBlockSaIS1_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIP8MapBlockSaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p2 _ZTS8MapBlock", !12, i64 0}
!126 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !127, i64 0}
!127 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !128, i64 0}
!128 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !129, i64 0, !102, i64 8}
!129 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !130, i64 0}
!130 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!131 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE", !132, i64 0}
!132 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !11, i64 0, !14, i64 8, !15, i64 16, !14, i64 24, !17, i64 32, !16, i64 48}
!133 = !{!94, !112, i64 376}
!134 = !{!114, !114, i64 0}
!135 = !{!115, !84, i64 0}
!136 = !{!115, !84, i64 2}
!137 = !{!115, !84, i64 4}
!138 = !{!44, !6, i64 0}
!139 = !{!94, !58, i64 456}
!140 = !{!84, !84, i64 0}
!141 = !{!102, !104, i64 0}
!142 = !{!102, !105, i64 8}
!143 = !{!102, !105, i64 16}
!144 = !{!102, !105, i64 24}
!145 = !{!102, !14, i64 32}
end_hunk_1
