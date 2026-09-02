Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btHingeConstraint?download=true
inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK9btVector3S4_RS2_S5_b:.preheader.preheader

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i, %bb.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.ed, %bb.i ] ; 4 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.eh, %bb.i ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.6111.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %.sroa.0110.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 2 uses
  %.sroa.6111.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0
  %i.ek = fneg float %.sroa.6111.8.vec.extract    ; 4 uses
  %.sroa.0110.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %i.el = fneg float %.sroa.0110.4.vec.extract    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !26
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.er = fneg float %.sroa.0121.4.vec.extract131
  %i.es = shufflevector <2 x float> %.sroa.15.0, <2 x float> %.sroa.020.0.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.et = insertelement <4 x float> %i.es, float %.sroa.0121.0.vec.extract125, i64 1
  %i.eu = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %i.eu, float %.sroa.0121.4.vec.extract131, i64 2
  %i.ew = insertelement <4 x float> %i.ev, float %i.er, i64 3
  %i.ex = fmul <4 x float> %i.et, %i.ew
  %i.ey = fneg float %.sroa.0110.0.vec.extract    ; 4 uses
  %i.ez = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.fa = insertelement <4 x float> %i.ez, float %i.ey, i64 3
  %i.fb = shufflevector <2 x float> %.sroa.0121.0, <2 x float> %.sroa.15.0, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fb, <4 x float> %i.ex) ; 4 uses
  %i.fd = extractelement <4 x float> %i.fc, i64 0
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ek, float %.sroa.0121.4.vec.extract131, float %i.fd) ; 3 uses
  %i.ff = extractelement <4 x float> %i.fc, i64 1
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ey, float %.sroa.15.8.vec.extract137, float %i.ff) ; 3 uses
  %i.fh = extractelement <4 x float> %i.fc, i64 2
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.el, float %.sroa.0121.0.vec.extract125, float %i.fh) ; 3 uses
  %i.fj = extractelement <4 x float> %i.fc, i64 3
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ek, float %.sroa.15.8.vec.extract137, float %i.fj) ; 3 uses
  %i.fl = fmul float %.sroa.6111.12.vec.extract, %i.fe
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.ey, float %i.fl)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.ek, float %i.fm)
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fi, float %.sroa.0110.4.vec.extract, float %i.fn) ; 3 uses
  %i.fp = fmul float %.sroa.6111.12.vec.extract, %i.fg
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.el, float %i.fp)
  %i.fr = fmul float %.sroa.6111.12.vec.extract, %i.fi
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.ek, float %i.fr)
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.el, float %i.fs)
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fg, float %.sroa.0110.0.vec.extract, float %i.ft) ; 3 uses
  %i.fv = fneg float %i.fu
  %i.fw = fmul float %i.cp, %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.ey, float %i.fq)
  %i.fy = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fo, i64 1
  %i.ga = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.co, <2 x i32> <i32 0, i32 3>
  %i.gb = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fw, i64 1
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.ga, <2 x float> %i.gc) ; 2 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 0 ; 2 uses
  %i.gf = fneg float %i.ge
  %i.gg = fmul float %i.cw, %i.gf
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.fu, float %i.gg)
  %i.gi = fneg float %i.fo
  %i.gj = fmul float %i.cs, %i.gi
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ge, float %i.gj)
  store float %i.fo, ptr %i.ej, align 8, !tbaa !27
  store float %i.gh, ptr %i.en, align 4, !tbaa !27
  %i.gl = load float, ptr %6, align 4, !tbaa !27
  store float %i.gl, ptr %i.eo, align 8, !tbaa !27
  store float 0.000000e+00, ptr %i.ep, align 4, !tbaa !27
  store <2 x float> %i.gd, ptr %i.eq, align 8, !tbaa !27
  %i.gm = load float, ptr %i.cm, align 4, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.gm, ptr %i.gn, align 8, !tbaa !27
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.go, align 4, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.fu, ptr %i.gp, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 700
  store float %i.gk, ptr %i.gq, align 4, !tbaa !27
  %i.gr = load float, ptr %i.ei, align 4, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.gr, ptr %i.gs, align 8, !tbaa !27
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.gu, align 8, !tbaa !28
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.gv, align 8, !tbaa !27
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.gw, align 2, !tbaa !29
  %i.gx = select i1 %7, float -1.000000e+00, float 1.000000e+00
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.gx, ptr %i.gy, align 8, !tbaa !23
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 780
  store i8 0, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 781
  store i8 0, ptr %i.d, align 1, !tbaa !20
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
  %.sroa.11.0 = phi float [ %i.r, %bb.a ], [ 0.000000e+00, %bb.b ] ; 4 uses
  %.sroa.777.0 = phi float [ %i.q, %bb.a ], [ %i.af, %bb.b ] ; 4 uses
  %.sroa.075.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.b ] ; 4 uses
  %.sink48.i = phi float [ %i.s, %bb.a ], [ %i.ah, %bb.b ]
  %.sink47.i = phi float [ %i.v, %bb.a ], [ %i.ai, %bb.b ]
  %.sink.i = phi float [ %i.w, %bb.a ], [ %i.aj, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
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
  %i.bf = load <2 x float>, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.bd, align 8, !tbaa !27 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bj = load <2 x float>, ptr %i.bh, align 8, !tbaa !27 ; 4 uses
  %i.bk = load <2 x float>, ptr %i.al, align 4, !tbaa !27 ; 9 uses
  %i.bl = load <2 x float>, ptr %i.bc, align 4, !tbaa !27 ; 4 uses
  %i.bm = load <2 x float>, ptr %i.be, align 4, !tbaa !27 ; 4 uses
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
  %.sroa.8.0.i = phi float [ %i.cu, %bb.e ], [ 0.000000e+00, %bb.f ]
  %.sroa.517.0.i = phi float [ %i.ct, %bb.e ], [ %i.da, %bb.f ]
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.e ], [ %i.cz, %bb.f ]
  %.sroa.020.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.020.4.vec.insert.i = insertelement <2 x float> %.sroa.020.0.vec.insert.i, float %.sroa.517.0.i, i64 1
  %.sroa.526.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.i, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.db = fneg float %i.ch
  %i.dc = fmul float %i.ce, %i.db
  %i.dd = fneg <2 x float> %i.cd
  %i.de = fadd float %i.cl, 1.000000e+00
  %i.df = fmul float %i.de, 2.000000e+00
  %i.dg = tail call noundef float @sqrtf(float noundef %i.df) #17, !tbaa !7 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.cf, float %i.dc)
  %i.di = fdiv float 1.000000e+00, %i.dg          ; 2 uses
  %i.dj = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x float> %i.dj, float %i.bb, i64 1
  %i.dl = fmul <2 x float> %i.dk, %i.dd
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.cb, <2 x float> %i.dl)
  %i.dn = insertelement <2 x float> poison, float %i.di, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.dm, %i.do
  %i.dq = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dg, i64 1
  %i.ds = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.di, i64 0
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i
  %.sroa.020.0.i = phi <2 x float> [ %.sroa.020.4.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.dp, %bb.g ] ; 3 uses
  %.sroa.526.0.i = phi <2 x float> [ %.sroa.526.12.vec.insert.i, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i ], [ %i.dt, %bb.g ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 664
  %.sroa.660.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %.sroa.059.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 3 uses
  %.sroa.660.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0
  %i.dv = fneg float %.sroa.660.8.vec.extract     ; 4 uses
  %.sroa.059.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 2 uses
  %i.dw = fneg float %.sroa.059.4.vec.extract     ; 3 uses
  %i.dx = fneg float %.sroa.777.0
  %5 = fmul float %.sroa.059.4.vec.extract, %i.dx
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !27 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.bf, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.ec = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.ed = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = load <2 x float>, ptr %i.dz, align 8, !tbaa !27
  %i.eg = load <2 x float>, ptr %2, align 4, !tbaa !27 ; 2 uses
  %7 = load float, ptr %6, align 4, !tbaa !27     ; 2 uses
  %8 = extractelement <2 x float> %i.bm, i64 0
  %9 = fmul float %8, %7
  %10 = extractelement <2 x float> %i.bl, i64 0
  %11 = fmul float %10, %7
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = insertelement <2 x float> %12, float %9, i64 1
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.eh, <2 x float> %13)
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ee, <2 x float> %i.ei)
  %i.ek = fadd <2 x float> %i.ef, %i.ej
  %i.el = insertelement <4 x float> poison, float %.sroa.777.0, i64 0
  %i.em = insertelement <4 x float> %i.el, float %.sroa.11.0, i64 1
  %i.en = insertelement <4 x float> %i.em, float %.sroa.075.0, i64 2
  %i.eo = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.eq = shufflevector <2 x float> %.sroa.020.0.i, <2 x float> %.sroa.526.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.er = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.es = shufflevector <4 x float> %i.eq, <4 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.et = fmul <4 x float> %i.ep, %i.es
  %i.eu = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.bj, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.ev = shufflevector <4 x float> %i.ep, <4 x float> %i.er, <4 x i32> <i32 1, i32 2, i32 0, i32 4>
  %i.ew = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ev, <4 x float> %i.et)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <2 x float> %i.ek, ptr %i.ez, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 668
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float %i.ch, ptr %i.fb, align 8, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 676
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fe = fneg float %.sroa.059.0.vec.extract     ; 4 uses
  %i.ff = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.fg = insertelement <4 x float> %i.ff, float %i.dw, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.dv, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 2
  %i.fj = insertelement <4 x float> poison, float %.sroa.075.0, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %.sroa.777.0, i64 1
  %i.fl = insertelement <4 x float> %i.fk, float %.sroa.11.0, i64 2
  %i.fm = insertelement <4 x float> %i.fl, float %i.ea, i64 3
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.fm, <4 x float> %i.ew) ; 5 uses
  %i.fo = extractelement <4 x float> %i.fn, i64 3
  %i.fp = fadd float %i.fo, %i.ey
  %.sroa.3.12.vec.insert.i49 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fp, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  %14 = tail call float @llvm.fmuladd.f32(float %i.fe, float %.sroa.075.0, float %5)
  %15 = tail call float @llvm.fmuladd.f32(float %i.dv, float %.sroa.11.0, float %14) ; 3 uses
  %i.fq = extractelement <4 x float> %i.fn, i64 1 ; 2 uses
  %16 = fmul float %.sroa.660.12.vec.extract, %i.fq
  %i.fr = tail call float @llvm.fmuladd.f32(float %15, float %i.fe, float %16)
  %i.fs = extractelement <4 x float> %i.fn, i64 2 ; 3 uses
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.dv, float %i.fr)
  %17 = extractelement <4 x float> %i.fn, i64 0   ; 3 uses
  %i.fu = tail call float @llvm.fmuladd.f32(float %17, float %.sroa.059.4.vec.extract, float %i.ft) ; 3 uses
  %18 = fmul float %.sroa.660.12.vec.extract, %i.fs
  %i.fv = tail call float @llvm.fmuladd.f32(float %15, float %i.dw, float %18)
  %19 = fmul float %.sroa.660.12.vec.extract, %17
  %i.fw = tail call float @llvm.fmuladd.f32(float %15, float %i.dv, float %19)
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.dw, float %i.fw)
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fs, float %.sroa.059.0.vec.extract, float %i.fx) ; 3 uses
  %i.fz = fneg float %i.fy
  %i.ga = fmul float %i.ch, %i.fz
  %i.gb = tail call float @llvm.fmuladd.f32(float %17, float %i.fe, float %i.fv)
  %i.gc = shufflevector <4 x float> %i.fn, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gd = insertelement <2 x float> %i.gc, float %i.fu, i64 1
  %i.ge = shufflevector <2 x float> %.sroa.526.0.i, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.gf = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.ga, i64 1
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ge, <2 x float> %i.gg) ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gj = fneg float %i.gi
  %i.gk = fmul float %i.ck, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.fy, float %i.gk)
  %i.gm = fneg float %i.fu
  %i.gn = fmul float %i.cf, %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.gi, float %i.gn)
  store float %i.fu, ptr %i.du, align 8, !tbaa !27
  store float %i.gl, ptr %i.fa, align 4, !tbaa !27
  store <2 x float> %i.gh, ptr %i.fd, align 8, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.cf, ptr %i.gp, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.fy, ptr %i.gr, align 8, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 700
  store float %i.go, ptr %i.gs, align 4, !tbaa !27
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.ck, ptr %i.gt, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !27
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.gv, align 8, !tbaa !28
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.gw, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.gx, align 2, !tbaa !29
  %i.gy = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.gy, ptr %i.gz, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !26
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !26
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
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !26
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !32, !align !33 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load float, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = load float, ptr %i.v, align 8, !tbaa !27
  %i.x = load <2 x float>, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.y = load <3 x float>, ptr %i.g, align 8, !tbaa !27 ; 5 uses
  %i.z = load float, ptr %i.g, align 8, !tbaa !27
  %i.aa = load <2 x float>, ptr %i.u, align 8, !tbaa !27 ; 2 uses
  %i.ab = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = shufflevector <2 x float> %i.x, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ad = fmul <2 x float> %i.ab, %i.ac
  %i.ae = shufflevector <2 x float> %i.x, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.af = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.af, <2 x float> %i.ad)
  %i.ah = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.w, i64 1
  %i.aj = shufflevector <3 x float> %i.y, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aj, <2 x float> %i.ag)
  %i.al = load <2 x float>, ptr %i.t, align 8, !tbaa !27
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ao = load float, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !27
  %i.ar = extractelement <3 x float> %i.y, i64 1
  %i.as = fmul float %i.ar, %i.aq
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.z, float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.av = load float, ptr %i.au, align 8, !tbaa !27
  %i.aw = extractelement <3 x float> %i.y, i64 2
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.aw, float %i.at)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.az = load float, ptr %i.ay, align 8, !tbaa !27
  %i.ba = fadd float %i.az, %i.ax
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  store <2 x float> %i.am, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.bb, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.bc, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.m, align 4, !tbaa !30
  %i.bd = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.bd, ptr %i.be, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 788
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24, !range !34, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !32, !align !33 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.m = load <4 x float>, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.s = load <4 x float>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
end_hunk_0
