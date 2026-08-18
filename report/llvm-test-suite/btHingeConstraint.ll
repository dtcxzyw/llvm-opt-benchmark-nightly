inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__gxx_personality_v0

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, i1 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %7 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 780
  store i8 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 781
  store i8 0, ptr %i.d, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 783
  store i8 0, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load float, ptr %i.h, align 8, !tbaa !27 ; 3 uses
  %i.l = load float, ptr %i.i, align 8, !tbaa !27 ; 3 uses
  %i.m = load float, ptr %i.j, align 8, !tbaa !27 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load <2 x float>, ptr %5, align 4, !tbaa !27 ; 5 uses
  %i.q = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 4 uses
  %i.r = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.s = fmul float %i.l, %i.r
  %i.t = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.k, float %i.s)
  %i.v = extractelement <2 x float> %i.q, i64 1
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.m, float %i.u) ; 2 uses
  %i.x = fcmp ult float %i.w, f0x3F7FFFFE
  br i1 %i.x, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load float, ptr %i.y, align 8, !tbaa !27
  %i.ac = load float, ptr %i.z, align 8, !tbaa !27
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !27
  %i.ae = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ac, i64 1
  %i.ag = fneg <2 x float> %i.af
  %i.ah = fneg float %i.ad
  %.sroa.3.12.vec.insert.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load float, ptr %i.ai, align 4, !tbaa !27
  %.sroa.0.0.vec.insert.i66 = insertelement <2 x float> poison, float %i.al, i64 0
  %i.am = load float, ptr %i.aj, align 4, !tbaa !27
  %.sroa.0.4.vec.insert.i67 = insertelement <2 x float> %.sroa.0.0.vec.insert.i66, float %i.am, i64 1
  %i.an = load float, ptr %i.ak, align 4, !tbaa !27
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  br label %bb.e

bb.b:                                             ; preds = %.preheader.preheader
  %i.ao = fcmp ugt float %i.w, f0xBF7FFFFE
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load float, ptr %i.ap, align 8, !tbaa !27
  %.sroa.0.0.vec.insert.i71 = insertelement <2 x float> poison, float %i.as, i64 0
  %i.at = load float, ptr %i.aq, align 8, !tbaa !27
  %.sroa.0.4.vec.insert.i72 = insertelement <2 x float> %.sroa.0.0.vec.insert.i71, float %i.at, i64 1
  %i.au = load float, ptr %i.ar, align 8, !tbaa !27
  %.sroa.3.12.vec.insert.i73 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ay = load float, ptr %i.av, align 4, !tbaa !27
  %.sroa.0.0.vec.insert.i76 = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.az = load float, ptr %i.aw, align 4, !tbaa !27
  %.sroa.0.4.vec.insert.i77 = insertelement <2 x float> %.sroa.0.0.vec.insert.i76, float %i.az, i64 1
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !27
  %.sroa.3.12.vec.insert.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bb = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.l, i64 1 ; 2 uses
  %i.bd = fneg <2 x float> %i.bc
  %i.be = insertelement <2 x float> poison, float %i.m, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.k, i64 1
  %i.bg = fneg <2 x float> %i.bf
  %i.bh = fneg <2 x float> %i.q
  %i.bi = fmul <2 x float> %i.p, %i.bg
  %i.bj = fmul <2 x float> %i.q, %i.bd
  %i.bk = shufflevector <2 x float> %i.q, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bc, <2 x float> %i.bi) ; 4 uses
  %i.bm = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.m, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.bn, <2 x float> %i.bj) ; 3 uses
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> %i.bo, <2 x i32> <i32 3, i32 0>
  %i.bq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bl, <2 x i32> <i32 3, i32 1>
  %i.br = fmul <2 x float> %i.bo, %i.bh
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bk, <2 x float> %i.br)
  %i.bt = fneg float %i.t
  %i.bu = extractelement <2 x float> %i.bl, i64 0
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = extractelement <2 x float> %i.bo, i64 1
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.r, float %i.bv)
  %.sroa.3.12.vec.insert.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0114.0 = phi <2 x float> [ %i.bp, %bb.d ], [ %.sroa.0.4.vec.insert.i77, %bb.c ], [ %.sroa.0.4.vec.insert.i67, %bb.a ] ; 2 uses
  %.sroa.10.0 = phi <2 x float> [ %i.bq, %bb.d ], [ %.sroa.3.12.vec.insert.i78, %bb.c ], [ %.sroa.3.12.vec.insert.i68, %bb.a ]
  %.sroa.0121.0 = phi <2 x float> [ %i.bs, %bb.d ], [ %.sroa.0.4.vec.insert.i72, %bb.c ], [ %i.ag, %bb.a ] ; 3 uses
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i88, %bb.d ], [ %.sroa.3.12.vec.insert.i73, %bb.c ], [ %.sroa.3.12.vec.insert.i63, %bb.a ] ; 3 uses
  %.sroa.0121.0.vec.extract125 = extractelement <2 x float> %.sroa.0121.0, i64 0 ; 3 uses
  store float %.sroa.0121.0.vec.extract125, ptr %i.b, align 8, !tbaa !27
  %.sroa.0114.0.vec.extract116 = extractelement <2 x float> %.sroa.0114.0, i64 0
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %.sroa.0114.0.vec.extract116, ptr %i.by, align 4, !tbaa !27
  %i.bz = load float, ptr %5, align 4, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bz, i64 0
  store <2 x float> %i.cb, ptr %i.ca, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.sroa.0121.4.vec.extract131 = extractelement <2 x float> %.sroa.0121.0, i64 1 ; 4 uses
  store float %.sroa.0121.4.vec.extract131, ptr %i.cc, align 8, !tbaa !27
  %.sroa.0114.4.vec.extract118 = extractelement <2 x float> %.sroa.0114.0, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %.sroa.0114.4.vec.extract118, ptr %i.cd, align 4, !tbaa !27
  %i.ce = load float, ptr %i.n, align 4, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ce, i64 0
  store <2 x float> %i.cg, ptr %i.cf, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.sroa.15.8.vec.extract137 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 3 uses
  store float %.sroa.15.8.vec.extract137, ptr %i.ch, align 8, !tbaa !27
  %.sroa.10.8.vec.extract120 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sroa.10.8.vec.extract120, ptr %i.ci, align 4, !tbaa !27
  %i.cj = load float, ptr %i.o, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cl = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  store <2 x float> %i.cl, ptr %i.ck, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 7 uses
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !27 ; 6 uses
  %i.cp = load float, ptr %6, align 4, !tbaa !27  ; 5 uses
  %i.cq = load float, ptr %5, align 4, !tbaa !27  ; 6 uses
  %i.cr = extractelement <2 x float> %i.cn, i64 0 ; 5 uses
  %i.cs = extractelement <2 x float> %i.co, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cn, %i.co
  %i.ct = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cp, float %i.ct)
  %i.cv = extractelement <2 x float> %i.cn, i64 1 ; 5 uses
  %i.cw = extractelement <2 x float> %i.co, i64 1 ; 2 uses
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.cw, float %i.cu) ; 2 uses
  %i.cy = fcmp olt float %i.cx, f0xBF7FFFFE
  br i1 %i.cy, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.cv)
  %i.da = fcmp ogt float %i.cz, f0x3F3504F3
  br i1 %i.da, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = fmul nnan float %i.cv, %i.cv
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.db)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.dc)
  %i.dd = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.de = fneg float %i.cv
  %i.df = fmul float %i.dd, %i.de
  %i.dg = fmul float %i.cr, %i.dd
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

bb.h:                                             ; preds = %bb.f
  %foldExtExtBinop142 = fmul <2 x float> %i.cn, %i.cn
  %i.dh = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.dh)
  %sqrt46.i.i = tail call float @llvm.sqrt.f32(float %i.di)
  %i.dj = fdiv float 1.000000e+00, %sqrt46.i.i    ; 2 uses
  %i.dk = fneg float %i.cr
  %i.dl = fmul float %i.dj, %i.dk
  %i.dm = fmul float %i.cq, %i.dj
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i:       ; preds = %bb.h, %bb.g
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.g ], [ %i.dl, %bb.h ]
  %.sroa.517.0.i = phi float [ %i.df, %bb.g ], [ %i.dm, %bb.h ]
  %.sroa.8.0.i = phi float [ %i.dg, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.dn = fneg float %i.cp
  %i.do = fmul float %i.cr, %i.dn
  %8 = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cs, float %i.do)
  %i.dp = fneg <2 x float> %i.co
  %i.dq = fadd float %i.cx, 1.000000e+00
  %i.dr = fmul float %i.dq, 2.000000e+00
  %i.ds = tail call noundef float @sqrtf(float noundef %i.dr) #17, !tbaa !4 ; 2 uses
  %i.dt = fdiv float 1.000000e+00, %i.ds          ; 2 uses
  %i.du = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.cq, i64 1
  %i.dw = fmul <2 x float> %i.dv, %i.dp
  %i.dx = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dy = insertelement <2 x float> %i.dx, float %i.cp, i64 1
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.dy, <2 x float> %i.dw)
  %i.ea = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.dz, %i.eb
  %9 = fmul float %8, %i.dt
  %10 = fmul float %i.ds, 5.000000e-01
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %9, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %10, i64 1
  br label %bb.j

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i, %bb.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.ec, %bb.i ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %.sroa.526.12.vec.insert31.i, %bb.i ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.6111.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %.sroa.0110.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 2 uses
  %.sroa.6111.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0
  %i.ef = fneg float %.sroa.6111.8.vec.extract    ; 4 uses
  %.sroa.0110.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %i.eg = fneg float %.sroa.0110.4.vec.extract    ; 3 uses
  %i.eh = fneg float %.sroa.0121.4.vec.extract131
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !25
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.en = fneg float %.sroa.0110.0.vec.extract    ; 4 uses
  %i.eo = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.020.0.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.ep = insertelement <4 x float> %i.eo, float %.sroa.0121.0.vec.extract125, i64 1
  %i.eq = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.er = insertelement <4 x float> %i.eq, float %.sroa.0121.4.vec.extract131, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.eh, i64 3
  %i.et = fmul <4 x float> %i.ep, %i.es
  %i.eu = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ev = insertelement <2 x float> %i.eu, float %i.en, i64 1
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ex = shufflevector <2 x float> %.sroa.0121.0, <2 x float> %.sroa.15.0, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.ex, <4 x float> %i.et) ; 4 uses
  %i.ez = extractelement <4 x float> %i.ey, i64 0
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ef, float %.sroa.0121.4.vec.extract131, float %i.ez) ; 3 uses
  %i.fb = extractelement <4 x float> %i.ey, i64 1
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.en, float %.sroa.15.8.vec.extract137, float %i.fb) ; 3 uses
  %i.fd = extractelement <4 x float> %i.ey, i64 2
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.eg, float %.sroa.0121.0.vec.extract125, float %i.fd) ; 3 uses
  %i.ff = extractelement <4 x float> %i.ey, i64 3
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ef, float %.sroa.15.8.vec.extract137, float %i.ff) ; 3 uses
  %i.fh = fmul float %.sroa.6111.12.vec.extract, %i.fa
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.en, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ef, float %i.fi)
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fe, float %.sroa.0110.4.vec.extract, float %i.fj) ; 3 uses
  %i.fl = fmul float %.sroa.6111.12.vec.extract, %i.fc
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.eg, float %i.fl)
  %i.fn = fmul float %.sroa.6111.12.vec.extract, %i.fe
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.ef, float %i.fn)
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.eg, float %i.fo)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fc, float %.sroa.0110.0.vec.extract, float %i.fp) ; 3 uses
  %i.fr = fneg float %i.fq
  %i.fs = fmul float %i.cp, %i.fr
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.en, float %i.fm)
  %i.fu = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fk, i64 1
  %i.fw = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.co, <2 x i32> <i32 0, i32 3>
  %i.fx = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fs, i64 1
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.fy) ; 2 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.gb = fneg float %i.ga
  %i.gc = fmul float %i.cw, %i.gb
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.fq, float %i.gc)
  %i.ge = fneg float %i.fk
  %i.gf = fmul float %i.cs, %i.ge
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ga, float %i.gf)
  store float %i.fk, ptr %i.ee, align 8, !tbaa !27
  store float %i.gd, ptr %i.ej, align 4, !tbaa !27
  %i.gh = load float, ptr %6, align 4, !tbaa !27
  store float %i.gh, ptr %i.ek, align 8, !tbaa !27
  store float 0.000000e+00, ptr %i.el, align 4, !tbaa !27
  store <2 x float> %i.fz, ptr %i.em, align 8, !tbaa !27
  %i.gi = load float, ptr %i.cm, align 4, !tbaa !27
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.gi, ptr %i.gj, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.gk, align 4, !tbaa !27
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.fq, ptr %i.gl, align 8, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 700
  store float %i.gg, ptr %i.gm, align 4, !tbaa !27
  %i.gn = load float, ptr %i.ed, align 4, !tbaa !27
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.gn, ptr %i.go, align 8, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.gp, align 4, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.gq, align 8, !tbaa !28
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.gr, align 8, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.gs, align 2, !tbaa !29
  %i.gt = select i1 %7, float -1.000000e+00, float 1.000000e+00
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.gt, ptr %i.gu, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 780
  store i8 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 781
  store i8 0, ptr %i.d, align 1, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 783
  store i8 0, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !27 ; 6 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ogt float %i.i, f0x3F3504F3
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !27 ; 3 uses
  %i.m = fmul nnan float %i.h, %i.h
  %i.n = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.m) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.n)
  %i.o = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.p = fneg float %i.h
  %i.q = fmul float %i.o, %i.p                    ; 2 uses
  %i.r = fmul float %i.l, %i.o                    ; 2 uses
  %i.s = fmul float %i.n, %i.o
  %i.t = load float, ptr %3, align 4, !tbaa !27   ; 2 uses
  %i.u = fneg float %i.t
  %i.v = fmul float %i.r, %i.u
  %i.w = fmul float %i.t, %i.q
  br label %bb.c

bb.b:                                             ; preds = %.preheader.preheader
  %i.x = load float, ptr %3, align 4, !tbaa !27   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !27 ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.aa) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.ab)
  %i.ac = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ad = fneg float %i.z
  %i.ae = fmul float %i.ac, %i.ad                 ; 2 uses
  %i.af = fmul float %i.x, %i.ac                  ; 2 uses
  %i.ag = fneg float %i.h
  %i.ah = fmul float %i.af, %i.ag
  %i.ai = fmul float %i.h, %i.ae
  %i.aj = fmul float %i.ab, %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.075.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.b ] ; 4 uses
  %.sroa.777.0 = phi float [ %i.q, %bb.a ], [ %i.af, %bb.b ] ; 4 uses
  %.sroa.11.0 = phi float [ %i.r, %bb.a ], [ 0.000000e+00, %bb.b ] ; 4 uses
  %.sink48.i = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ]
  %.sink47.i = phi float [ %i.v, %bb.a ], [ %i.ai, %bb.b ]
  %.sink.i = phi float [ %i.w, %bb.a ], [ %i.aj, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store float %.sroa.075.0, ptr %i.b, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 604
  store float %.sink48.i, ptr %i.am, align 4, !tbaa !27
  %i.an = load float, ptr %3, align 4, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %i.ap, ptr %i.ao, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %.sroa.777.0, ptr %i.aq, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %.sink47.i, ptr %i.ar, align 4, !tbaa !27
  %i.as = load float, ptr %i.al, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.au = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  store <2 x float> %i.au, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 632
  store float %.sroa.11.0, ptr %i.av, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 636
  store float %.sink.i, ptr %i.aw, align 4, !tbaa !27
  %i.ax = load float, ptr %i.g, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.az = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  store <2 x float> %i.az, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load float, ptr %3, align 4, !tbaa !27  ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bf = load <2 x float>, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %i.bg = load <2 x float>, ptr %i.bd, align 8, !tbaa !27 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = load <2 x float>, ptr %i.bh, align 8, !tbaa !27 ; 4 uses
  %i.bk = load <2 x float>, ptr %i.al, align 4, !tbaa !27 ; 9 uses
  %i.bl = load <2 x float>, ptr %i.bc, align 4, !tbaa !27 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.be, align 4, !tbaa !27 ; 3 uses
  %i.bn = load <2 x float>, ptr %i.bi, align 4, !tbaa !27 ; 5 uses
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = fmul <2 x float> %i.bo, %i.bp
  %i.br = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bs = fmul <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bj, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.bu = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.bq)
  %i.bx = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bv, <2 x float> %i.bs)
  %i.bz = shufflevector <2 x float> %i.bn, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.ca = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.bw) ; 4 uses
  %i.cc = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ca, <2 x float> %i.by) ; 3 uses
  %i.ce = extractelement <2 x float> %i.bk, i64 0 ; 5 uses
  %i.cf = extractelement <2 x float> %i.cd, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bk, %i.cd
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ch = extractelement <2 x float> %i.cb, i64 1 ; 5 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ch, float %i.cg)
  %i.cj = extractelement <2 x float> %i.bk, i64 1 ; 5 uses
  %i.ck = extractelement <2 x float> %i.cb, i64 0 ; 3 uses
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.ci) ; 2 uses
  %i.cm = fcmp olt float %i.cl, f0xBF7FFFFE
  br i1 %i.cm, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cn = tail call noundef float @llvm.fabs.f32(float %i.cj)
  %i.co = fcmp ogt float %i.cn, f0x3F3504F3
  br i1 %i.co, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cp = fmul nnan float %i.cj, %i.cj
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cp)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cq)
  %i.cr = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cs = fneg float %i.cj
  %i.ct = fmul float %i.cr, %i.cs
  %i.cu = fmul float %i.ce, %i.cr
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

bb.f:                                             ; preds = %bb.d
  %foldExtExtBinop81 = fmul <2 x float> %i.bk, %i.bk
  %i.cv = extractelement <2 x float> %foldExtExtBinop81, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.cv)
  %sqrt46.i.i = tail call float @llvm.sqrt.f32(float %i.cw)
  %i.cx = fdiv float 1.000000e+00, %sqrt46.i.i    ; 2 uses
  %i.cy = fneg float %i.ce
  %i.cz = fmul float %i.cx, %i.cy
  %i.da = fmul float %i.bb, %i.cx
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i:       ; preds = %bb.f, %bb.e
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.e ], [ %i.cz, %bb.f ]
  %.sroa.517.0.i = phi float [ %i.ct, %bb.e ], [ %i.da, %bb.f ]
  %.sroa.8.0.i = phi float [ %i.cu, %bb.e ], [ 0.000000e+00, %bb.f ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.db = fneg float %i.ch
  %i.dc = fmul float %i.ce, %i.db
  %5 = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.cf, float %i.dc)
  %i.dd = fneg <2 x float> %i.cd
  %i.de = fadd float %i.cl, 1.000000e+00
  %i.df = fmul float %i.de, 2.000000e+00
  %i.dg = tail call noundef float @sqrtf(float noundef %i.df) #17, !tbaa !4 ; 2 uses
  %i.dh = fdiv float 1.000000e+00, %i.dg          ; 2 uses
  %i.di = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = insertelement <2 x float> %i.di, float %i.bb, i64 1
  %i.dk = fmul <2 x float> %i.dj, %i.dd
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.cb, <2 x float> %i.dk)
  %i.dm = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dl, %i.dn
  %6 = fmul float %5, %i.dh
  %7 = fmul float %i.dg, 5.000000e-01
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %6, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %7, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.do, %bb.g ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %.sroa.526.12.vec.insert31.i, %bb.g ] ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.059.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 2 uses
  %.sroa.660.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0
  %i.dq = fneg float %.sroa.660.8.vec.extract     ; 4 uses
  %.sroa.059.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %i.dr = fneg float %.sroa.059.4.vec.extract     ; 3 uses
  %i.ds = fneg float %.sroa.777.0
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !27 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.dx = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.dy = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.dz = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = load <2 x float>, ptr %i.dv, align 8, !tbaa !27
  %i.ec = load <2 x float>, ptr %2, align 4, !tbaa !27 ; 3 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fmul <2 x float> %i.dw, %i.ed
  %i.ef = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ef, <2 x float> %i.ee)
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.ea, <2 x float> %i.eg)
  %i.ei = fadd <2 x float> %i.eb, %i.eh
  %i.ej = insertelement <4 x float> poison, float %.sroa.777.0, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %.sroa.11.0, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %.sroa.075.0, i64 2
  %i.em = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.eo = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ep = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.eo, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.er = fmul <4 x float> %i.en, %i.eq
  %i.es = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.bj, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.et = shufflevector <4 x float> %i.en, <4 x float> %i.ep, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.et, <4 x float> %i.er)
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !27
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> %i.ei, ptr %i.ex, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.ch, ptr %i.ez, align 8, !tbaa !27
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 676
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fc = fneg float %.sroa.059.0.vec.extract     ; 4 uses
  %i.fd = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.fe = insertelement <4 x float> %i.fd, float %i.dr, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.dq, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 2
  %i.fh = insertelement <4 x float> poison, float %.sroa.075.0, i64 0
  %i.fi = insertelement <4 x float> %i.fh, float %.sroa.777.0, i64 1
  %i.fj = insertelement <4 x float> %i.fi, float %.sroa.11.0, i64 2
  %i.fk = insertelement <4 x float> %i.fj, float %i.du, i64 3
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.fk, <4 x float> %i.eu) ; 6 uses
  %i.fm = extractelement <4 x float> %i.fl, i64 3
  %i.fn = fadd float %i.fm, %i.ew
  %.sroa.3.12.vec.insert.i49 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  %i.fo = extractelement <4 x float> %i.fl, i64 1
  %i.fp = extractelement <4 x float> %i.fl, i64 2 ; 2 uses
  %i.fq = extractelement <4 x float> %i.fl, i64 0 ; 2 uses
  %i.fr = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %.sroa.020.0.i, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.fs = insertelement <4 x float> %i.fl, float %i.ds, i64 3
  %i.ft = fmul <4 x float> %i.fr, %i.fs           ; 4 uses
  %i.fu = extractelement <4 x float> %i.ft, i64 3
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fc, float %.sroa.075.0, float %i.fu)
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.dq, float %.sroa.11.0, float %i.fv) ; 3 uses
  %i.fx = extractelement <4 x float> %i.ft, i64 1
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fc, float %i.fx)
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.dq, float %i.fy)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fq, float %.sroa.059.4.vec.extract, float %i.fz) ; 3 uses
  %i.gb = extractelement <4 x float> %i.ft, i64 2
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.dr, float %i.gb)
  %i.gd = extractelement <4 x float> %i.ft, i64 0
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.dq, float %i.gd)
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.dr, float %i.ge)
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.fp, float %.sroa.059.0.vec.extract, float %i.gf) ; 3 uses
  %i.gh = fneg float %i.gg
  %i.gi = fmul float %i.ch, %i.gh
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.fc, float %i.gc)
  %i.gk = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gl = insertelement <2 x float> %i.gk, float %i.ga, i64 1
  %i.gm = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.gn = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gi, i64 1
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.gm, <2 x float> %i.go) ; 2 uses
  %i.gq = extractelement <2 x float> %i.gp, i64 0 ; 2 uses
  %i.gr = fneg float %i.gq
  %i.gs = fmul float %i.ck, %i.gr
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.gg, float %i.gs)
  %i.gu = fneg float %i.ga
  %i.gv = fmul float %i.cf, %i.gu
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.gq, float %i.gv)
  store float %i.ga, ptr %i.dp, align 8, !tbaa !27
  store float %i.gt, ptr %i.ey, align 4, !tbaa !27
  store <2 x float> %i.gp, ptr %i.fb, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.cf, ptr %i.gx, align 8, !tbaa !27
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !27
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.gg, ptr %i.gz, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 700
  store float %i.gw, ptr %i.ha, align 4, !tbaa !27
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.ck, ptr %i.hb, align 8, !tbaa !27
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.hc, align 4, !tbaa !27
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.hd, align 8, !tbaa !28
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.he, align 8, !tbaa !27
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.hf, align 2, !tbaa !29
  %i.hg = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.hg, ptr %i.hh, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !25
  %i.o = zext i1 %5 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.s, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.p, align 4, !tbaa !30
  %i.t = select i1 %5, float -1.000000e+00, float 1.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.t, ptr %i.u, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !32, !align !33 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.t = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z21btAdjustAngleToLimitsfff:bb.a
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.e = fcmp olt float %i.d, f0xC0490FDB
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fadd float %i.d, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %i.d, f0x40490FDB
  br i1 %i.g, label %bb.f, label %_Z16btNormalizeAnglef.exit

bb.f:                                             ; preds = %bb.e
  %i.h = fadd float %i.d, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit

_Z16btNormalizeAnglef.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %i.i = fsub float %2, %0
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.k = fcmp olt float %i.j, f0xC0490FDB
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.l = fadd float %i.j, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit29

bb.h:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.m = fcmp ogt float %i.j, f0x40490FDB
  br i1 %i.m, label %bb.i, label %_Z16btNormalizeAnglef.exit29

bb.i:                                             ; preds = %bb.h
  %i.n = fadd float %i.j, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit29

_Z16btNormalizeAnglef.exit29:                     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i28 = phi float [ %i.l, %bb.g ], [ %i.n, %bb.i ], [ %i.j, %bb.h ]
  %i.o = tail call noundef float @llvm.fabs.f32(float %.0.i28)
  %i.p = fcmp olt float %.0.i, %i.o
  %i.q = fadd float %0, f0x40C90FDB
  %i.r = select i1 %i.p, float %0, float %i.q
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.s = fcmp ogt float %0, %2
  br i1 %i.s, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.t = fsub float %0, %2
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.v = fcmp olt float %i.u, f0xC0490FDB
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = fadd float %i.u, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.x = fcmp ogt float %i.u, f0x40490FDB
  br i1 %i.x, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.y = fadd float %i.u, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %i.u, %bb.m ]
  %i.z = fsub float %0, %1
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #17, !tbaa !4 ; 5 uses
  %i.ab = fcmp olt float %i.aa, f0xC0490FDB
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ac = fadd float %i.aa, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ad = fcmp ogt float %i.aa, f0x40490FDB
  br i1 %i.ad, label %bb.q, label %_Z16btNormalizeAnglef.exit33

bb.q:                                             ; preds = %bb.p
  %i.ae = fadd float %i.aa, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit33

_Z16btNormalizeAnglef.exit33:                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i32 = phi float [ %i.ac, %bb.o ], [ %i.ae, %bb.q ], [ %i.aa, %bb.p ]
  %i.af = tail call noundef float @llvm.fabs.f32(float %.0.i32)
  %i.ag = fcmp olt float %i.af, %.0.i30
  %i.ah = fadd float %0, f0xC0C90FDB
  %i.ai = select i1 %i.ag, float %i.ah, float %0
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.a, %_Z16btNormalizeAnglef.exit33, %_Z16btNormalizeAnglef.exit29
  %.0 = phi float [ %0, %bb.a ], [ %i.r, %_Z16btNormalizeAnglef.exit29 ], [ %i.ai, %_Z16btNormalizeAnglef.exit33 ], [ %0, %bb.j ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetERK12btQuaternionf(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.087.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %.sroa.087.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1
  %.sroa.588.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.588.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.fca.1.gep.i17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = fneg float %.sroa.087.0.vec.extract
  %i.g = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.h = fneg <2 x float> %i.g
  %i.i = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.j = fneg <2 x float> %i.i                    ; 2 uses
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 5 uses
  %i.l = load <2 x float>, ptr %i.d, align 4, !tbaa !27 ; 3 uses
  %i.m = fmul float %i.c, %i.f
  %i.n = insertelement <2 x float> poison, float %i.c, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %i.j
  %i.q = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.l, <2 x float> %i.p)
  %i.s = extractelement <2 x float> %i.k, i64 0
  %i.t = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.s, float %i.m)
  %i.u = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.k, <2 x float> %i.r)
  %i.v = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.j, i64 0
  %i.x = call float @llvm.fmuladd.f32(float %i.w, float %i.v, float %i.t)
  %i.y = shufflevector <2 x float> %i.l, <2 x float> %i.k, <2 x i32> <i32 1, i32 2>
  %i.z = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i, <2 x float> %i.y, <2 x float> %i.u) ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %.fca.0.load.i, %i.k
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = call float @llvm.fmuladd.f32(float %.sroa.588.12.vec.extract, float %i.c, float %i.aa)
  %i.ac = extractelement <2 x float> %i.k, i64 1  ; 2 uses
  %i.ad = call float @llvm.fmuladd.f32(float %.sroa.087.4.vec.extract, float %i.ac, float %i.ab)
  %i.ae = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.v, float %i.ad) ; 3 uses
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i15 = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.fca.1.load.i18 = load <2 x float>, ptr %.fca.1.gep.i17, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.085.0.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 0 ; 2 uses
  %.sroa.586.12.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 1 ; 2 uses
  %.sroa.586.8.vec.extract = extractelement <2 x float> %.fca.1.load.i18, i64 0 ; 2 uses
  %.sroa.085.4.vec.extract = extractelement <2 x float> %.fca.0.load.i15, i64 1 ; 2 uses
  %i.af = extractelement <2 x float> %i.z, i64 0
  %i.ag = fmul float %i.af, %.sroa.586.12.vec.extract
  %i.ah = call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.085.4.vec.extract, float %i.ag)
  %i.ai = extractelement <2 x float> %i.z, i64 1
  %i.aj = call float @llvm.fmuladd.f32(float %i.ai, float %.sroa.085.0.vec.extract, float %i.ah)
  %i.ak = fneg <2 x float> %i.z                   ; 3 uses
  %i.al = call float @llvm.fmuladd.f32(float %.sroa.588.8.vec.extract, float %i.ac, float %i.x) ; 4 uses
  %i.am = fneg float %i.al
  %i.an = fneg float %.sroa.085.0.vec.extract
  %i.ao = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ap = insertelement <2 x float> %i.ao, float %i.al, i64 1
  %i.aq = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = fmul float %i.al, %i.an
  %i.at = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = shufflevector <2 x float> %.fca.1.load.i18, <2 x float> %.fca.0.load.i15, <2 x i32> <i32 0, i32 2>
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.ar)
  %i.ax = call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.586.12.vec.extract, float %i.as)
  %i.ay = insertelement <2 x float> poison, float %i.al, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ba = shufflevector <2 x float> %.fca.0.load.i15, <2 x float> %.fca.1.load.i18, <2 x i32> <i32 1, i32 2>
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ba, <2 x float> %i.aw)
  %i.bc = extractelement <2 x float> %i.ak, i64 0
  %i.bd = call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.085.4.vec.extract, float %i.ax)
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %.fca.0.load.i15, <2 x float> %i.bb) ; 3 uses
  %i.bf = extractelement <2 x float> %i.ak, i64 1
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float %.sroa.586.8.vec.extract, float %i.bd) ; 3 uses
  %i.bh = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.bi = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.am, float %.sroa.586.8.vec.extract, float %i.aj) ; 3 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bk)
  %i.bm = call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bl)
  %i.bn = call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bm)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bn)
  %i.bo = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.be, %i.bq           ; 5 uses
  %i.bs = fmul float %i.bg, %i.bo                 ; 9 uses
  %i.bt = extractelement <2 x float> %i.br, i64 0 ; 5 uses
  %i.bu = fmul float %i.bt, 0.000000e+00
  %i.bv = call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bu)
  %i.bw = extractelement <2 x float> %i.br, i64 1 ; 6 uses
  %i.bx = fsub float %i.bv, %i.bw                 ; 3 uses
  %i.by = fmul float %i.bj, %i.bo                 ; 7 uses
  %i.bz = fmul float %i.bw, 0.000000e+00
  %i.ca = fadd float %i.bs, %i.bz
  %i.cb = call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.by)
  %i.cc = fneg float %i.bt
  %i.cd = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 0
  %i.cf = fneg <2 x float> %i.ce                  ; 3 uses
  %i.cg = fneg float %i.bw                        ; 3 uses
  %i.ch = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cb, i64 1
  %i.cj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> zeroinitializer, <2 x float> %i.ci) ; 4 uses
  %i.ck = fmul float %i.by, -0.000000e+00
  %i.cl = call float @llvm.fmuladd.f32(float %i.cg, float 0.000000e+00, float %i.ck)
  %i.cm = fsub float %i.cl, %i.bt                 ; 2 uses
  %i.cn = extractelement <2 x float> %i.cj, i64 1
  %i.co = fmul float %i.bs, %i.cn
  %i.cp = call float @llvm.fmuladd.f32(float %i.cm, float %i.cg, float %i.co)
  %i.cq = call float @llvm.fmuladd.f32(float %i.bx, float %i.cc, float %i.cp)
  %i.cr = extractelement <2 x float> %i.cj, i64 0
  %i.cs = call float @llvm.fmuladd.f32(float %i.cr, float %i.by, float %i.cq) ; 3 uses
  %i.ct = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cw = insertelement <2 x float> %i.cv, float %i.bx, i64 0
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.cf, <2 x float> %i.cx)
  %i.db = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dc = insertelement <2 x float> %i.db, float %i.cg, i64 0
  %i.dd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.dc, <2 x float> %i.da)
  %i.de = insertelement <2 x float> %i.cv, float %i.bx, i64 1
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.br, <2 x float> %i.dd) ; 4 uses
  %foldExtExtBinop119 = fmul <2 x float> %i.df, %i.df
  %i.dg = extractelement <2 x float> %foldExtExtBinop119, i64 0
  %i.dh = call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.dg)
  %i.di = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  %i.dj = call noundef float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dh)
  %sqrt.i.i29 = call noundef float @llvm.sqrt.f32(float %i.dj)
  %i.dk = fdiv float 1.000000e+00, %sqrt.i.i29    ; 2 uses
  %i.dl = fmul float %i.cs, %i.dk                 ; 3 uses
  %i.dm = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.df, %i.dn           ; 4 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = fmul float %i.dp, 0.000000e+00
  %i.dr = call float @llvm.fmuladd.f32(float %i.dl, float 0.000000e+00, float %i.dq)
  %i.ds = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.dt = fadd float %i.ds, %i.dr                 ; 2 uses
  %i.du = fcmp olt float %i.dt, f0xBF7FFFFE
  br i1 %i.du, label %_Z15shortestArcQuatRK9btVector3S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dv = fmul float %i.dl, -0.000000e+00
  %i.dw = fmul float %i.ds, -0.000000e+00
  %i.dx = fadd float %i.dl, %i.dw
  %5 = insertelement <2 x float> poison, float %i.dv, i64 0
  %6 = fneg <2 x float> %i.do
  %7 = shufflevector <2 x float> %5, <2 x float> %6, <2 x i32> <i32 0, i32 2>
  %8 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> zeroinitializer, <2 x float> %7) ; 2 uses
  %9 = fadd float %i.dt, 1.000000e+00
  %10 = fmul float %9, 2.000000e+00
  %11 = call noundef float @sqrtf(float noundef %10) #17, !tbaa !4 ; 2 uses
  %i.dy = fdiv float 1.000000e+00, %11            ; 3 uses
  %i.dz = extractelement <2 x float> %8, i64 1
  %12 = fmul float %i.dz, %i.dy
  %i.ea = fmul float %i.dx, %i.dy
  %13 = extractelement <2 x float> %8, i64 0
  %i.eb = fmul float %13, %i.dy
  %14 = fmul float %11, 5.000000e-01
  %.sroa.020.0.vec.insert23.i.a = insertelement <2 x float> poison, float %12, i64 0
  %.sroa.020.4.vec.insert25.i = insertelement <2 x float> %.sroa.020.0.vec.insert23.i.a, float %i.ea, i64 1
  %.sroa.526.8.vec.insert29.i = insertelement <2 x float> poison, float %i.eb, i64 0
  %.sroa.526.12.vec.insert31.i = insertelement <2 x float> %.sroa.526.8.vec.insert29.i, float %14, i64 1
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %bb.a, %bb.b
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert25.i, %bb.b ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.a ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert31.i, %bb.b ], [ zeroinitializer, %bb.a ] ; 4 uses
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 3 uses
  %i.ec = fneg float %.sroa.073.0.vec.extract     ; 2 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1
  %i.ed = fneg float %.sroa.073.4.vec.extract     ; 2 uses
  %.sroa.574.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 2 uses
  %i.ee = fneg float %.sroa.574.8.vec.extract     ; 2 uses
  %.sroa.574.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 2 uses
  %i.ef = fmul float %i.bs, %i.ec
  %i.eg = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.bw, float %i.ef)
  %i.eh = call float @llvm.fmuladd.f32(float %i.ed, float %i.bt, float %i.eg)
  %i.ei = call float @llvm.fmuladd.f32(float %.sroa.574.8.vec.extract, float %i.by, float %i.eh) ; 2 uses
  %i.ej = fmul float %i.bs, %i.ed
  %i.ek = call float @llvm.fmuladd.f32(float %.sroa.574.12.vec.extract, float %i.by, float %i.ej)
  %i.el = call float @llvm.fmuladd.f32(float %i.ee, float %i.bw, float %i.ek)
  %i.em = call float @llvm.fmuladd.f32(float %.sroa.073.0.vec.extract, float %i.bt, float %i.el) ; 2 uses
  %i.en = fmul float %i.em, %i.em
  %i.eo = call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.en)
  %i.ep = fmul float %i.bs, %i.ee
  %i.eq = fmul float %i.bw, %.sroa.073.0.vec.extract
  %i.er = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = insertelement <2 x float> %i.cd, float %i.bs, i64 0
  %i.et = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.ep, i64 1
  %i.ev = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.es, <2 x float> %i.eu)
  %i.ew = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ex = insertelement <2 x float> %i.ew, float %i.ec, i64 1
  %i.ey = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ez, <2 x float> %i.ev)
  %i.fb = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %.sroa.020.0.i, <2 x i32> <i32 0, i32 3>
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.br, <2 x float> %i.fa) ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fe = call float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.eo)
  %i.ff = extractelement <2 x float> %i.fc, i64 0 ; 2 uses
  %i.fg = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fe)
  %sqrt.i.i47 = call noundef float @llvm.sqrt.f32(float %i.fg)
  %i.fh = fdiv float 1.000000e+00, %sqrt.i.i47
  %i.fi = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fc, %i.fj           ; 3 uses
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = extractelement <2 x float> %i.fk, i64 0
  %i.fn = call noundef float @acosf(float noundef %i.fm) #17, !tbaa !4
  %i.fo = fmul float %i.fn, 2.000000e+00          ; 2 uses
  %i.fp = fcmp ogt float %i.fo, f0x40490FDB
  br i1 %i.fp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.fq = fneg <2 x float> %i.fk                  ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = extractelement <2 x float> %i.fq, i64 0
  %i.ft = call noundef float @acosf(float noundef %i.fs) #17, !tbaa !4
  %i.fu = fmul float %i.ft, 2.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.10.0 = phi <2 x float> [ %i.fr, %bb.c ], [ %i.fl, %_Z15shortestArcQuatRK9btVector3S1_.exit ]
  %.0 = phi float [ %i.fu, %bb.c ], [ %i.fo, %_Z15shortestArcQuatRK9btVector3S1_.exit ] ; 2 uses
  %.sroa.10.8.vec.extract65 = extractelement <2 x float> %.sroa.10.0, i64 0
  %i.fv = fcmp olt float %.sroa.10.8.vec.extract65, 0.000000e+00
  %i.fw = fneg float %.0
  %.1 = select i1 %i.fv, float %i.fw, float %.0   ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !73 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !28 ; 3 uses
  %i.gb = fcmp olt float %i.fy, %i.ga
  br i1 %i.gb, label %bb.e, label %_ZN17btHingeConstraint14setMotorTargetEff.exit

bb.e:                                             ; preds = %bb.d
  %i.gc = fcmp olt float %.1, %i.fy
  br i1 %i.gc, label %_ZN17btHingeConstraint14setMotorTargetEff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gd = fcmp ogt float %.1, %i.ga
  br i1 %i.gd, label %bb.g, label %_ZN17btHingeConstraint14setMotorTargetEff.exit

bb.g:                                             ; preds = %bb.f
  br label %_ZN17btHingeConstraint14setMotorTargetEff.exit

_ZN17btHingeConstraint14setMotorTargetEff.exit:   ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %.1, %bb.d ], [ %i.ga, %bb.g ], [ %.1, %bb.f ], [ %i.fy, %bb.e ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.gg, ptr noundef nonnull align 4 dereferenceable(64) %i.gj)
  %i.gl = fsub float %.0.i, %i.gk
  %i.gm = fdiv float %i.gl, %2
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float %i.gm, ptr %i.gn, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17btHingeConstraint14setMotorTargetEff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0, float noundef %1, float noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.b = load float, ptr %i.a, align 4, !tbaa !73 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.d = load float, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  %i.e = fcmp olt float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp olt float %1, %i.b
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp ogt float %1, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi float [ %1, %bb.a ], [ %i.d, %bb.d ], [ %1, %bb.c ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %i.m)
  %i.o = fsub float %.0, %i.n
  %i.p = fdiv float %i.o, %2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float %i.p, ptr %i.q, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN17btHingeConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !27 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #17, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !27
  %i.t = load float, ptr %i.m, align 4, !tbaa !27
  %i.u = load float, ptr %i.j, align 4, !tbaa !27
  %i.v = load float, ptr %i.k, align 4, !tbaa !27
  %i.w = load float, ptr %i.o, align 4, !tbaa !27
  %i.x = load float, ptr %i.p, align 4, !tbaa !27
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !27
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
end_hunk_1
