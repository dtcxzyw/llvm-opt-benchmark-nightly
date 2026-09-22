Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btHingeConstraint?download=true
inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17btHingeConstraint13buildJacobianEv:bb.a
  %foldExtExtBinop303 = fmul <2 x float> %i.qq, %i.ro
  %i.rw = extractelement <2 x float> %foldExtExtBinop303, i64 1
  %i.rx = extractelement <2 x float> %i.ro, i64 0
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.rm, float %i.rw)
  %i.rz = tail call noundef float @llvm.fmuladd.f32(float %i.rq, float %i.qv, float %i.ry)
  %foldExtExtBinop305 = fmul <2 x float> %i.rg, %i.rt
  %i.sa = extractelement <2 x float> %foldExtExtBinop305, i64 1
  %i.sb = extractelement <2 x float> %i.rt, i64 0
  %i.sc = tail call float @llvm.fmuladd.f32(float %i.sb, float %i.rr, float %i.sa)
  %i.sd = tail call noundef float @llvm.fmuladd.f32(float %i.rv, float %i.rl, float %i.sc)
  %i.se = fadd float %i.rz, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %i.se, ptr %i.sf, align 4, !tbaa !49
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 768
  store float 0.000000e+00, ptr %i.sg, align 8, !tbaa !50
  %i.sh = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ix, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.jj) ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  store float %i.sh, ptr %i.si, align 4, !tbaa !51
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.sk, align 8, !tbaa !27
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 782 ; 2 uses
  store i8 0, ptr %i.sl, align 2, !tbaa !29
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !52 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.sp = load float, ptr %i.so, align 8, !tbaa !28 ; 2 uses
  %i.sq = fcmp ugt float %i.sn, %i.sp
  br i1 %i.sq, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, label %bb.n

bb.n:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31
  %i.sr = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.sh, float noundef %i.sn, float noundef %i.sp) ; 4 uses
  store float %i.sr, ptr %i.si, align 4, !tbaa !51
  %i.ss = load float, ptr %i.sm, align 4, !tbaa !52 ; 2 uses
  %i.st = fcmp ugt float %i.sr, %i.ss
  br i1 %i.st, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  %i.su = load float, ptr %i.so, align 8, !tbaa !28 ; 2 uses
  %i.sv = fcmp ult float %i.sr, %i.su
  br i1 %i.sv, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink12.i = phi float [ %i.ss, %bb.n ], [ %i.su, %bb.o ]
  %.sink.i101 = phi float [ 1.000000e+00, %bb.n ], [ -1.000000e+00, %bb.o ]
  %i.sw = fsub float %.sink12.i, %i.sr
  store float %i.sw, ptr %i.sj, align 4, !tbaa !53
  store float %.sink.i101, ptr %i.sk, align 8, !tbaa !54
  store i8 1, ptr %i.sl, align 2, !tbaa !29
  br label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit: ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31, %bb.o, %.sink.split.i
  %i.sx = load ptr, ptr %i.iv, align 8, !tbaa !31, !nonnull !32, !align !33 ; 12 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load float, ptr %i.ht, align 8, !tbaa !27
  %i.ta = load float, ptr %i.hu, align 8, !tbaa !27
  %i.tb = load float, ptr %i.hv, align 8, !tbaa !27
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.td = load float, ptr %i.tc, align 8, !tbaa !27
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.tg = load float, ptr %i.tf, align 8, !tbaa !27
  %i.th = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.tj = load float, ptr %i.ti, align 8, !tbaa !27
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sx, i64 280
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sx, i64 296
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sx, i64 312
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 288
  %i.to = load float, ptr %i.tn, align 8, !tbaa !27
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sx, i64 304
  %i.tq = load float, ptr %i.tp, align 8, !tbaa !27
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sx, i64 320
  %i.ts = load float, ptr %i.tr, align 8, !tbaa !27
  %i.tt = load ptr, ptr %i.jh, align 8, !tbaa !37, !nonnull !32, !align !33 ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 280
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 296
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 312
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 288
  %i.ty = load float, ptr %i.tx, align 8, !tbaa !27
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 304
  %i.ua = load float, ptr %i.tz, align 8, !tbaa !27
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 320
  %i.uc = load float, ptr %i.ub, align 8, !tbaa !27
  %i.ud = load <2 x float>, ptr %i.sy, align 8, !tbaa !27 ; 2 uses
  %i.ue = load <2 x float>, ptr %i.te, align 8, !tbaa !27
  %i.uf = load <2 x float>, ptr %i.th, align 8, !tbaa !27 ; 2 uses
  %i.ug = insertelement <3 x float> poison, float %i.ta, i64 0
  %i.uh = shufflevector <3 x float> %i.ug, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ui = shufflevector <2 x float> %i.uf, <2 x float> %i.ud, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.uj = shufflevector <2 x float> %i.ue, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.uk = shufflevector <3 x float> %i.ui, <3 x float> %i.uj, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ul = fmul <3 x float> %i.uh, %i.uk
  %i.um = shufflevector <2 x float> %i.uf, <2 x float> %i.ud, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.un = shufflevector <3 x float> %i.um, <3 x float> %i.uj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.uo = insertelement <3 x float> poison, float %i.sz, i64 0
  %i.up = shufflevector <3 x float> %i.uo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.uq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.un, <3 x float> %i.up, <3 x float> %i.ul)
  %i.ur = insertelement <3 x float> poison, float %i.tj, i64 0
  %i.us = insertelement <3 x float> %i.ur, float %i.td, i64 1
  %i.ut = insertelement <3 x float> %i.us, float %i.tg, i64 2
  %i.uu = insertelement <3 x float> poison, float %i.tb, i64 0
  %i.uv = shufflevector <3 x float> %i.uu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.uw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ut, <3 x float> %i.uv, <3 x float> %i.uq) ; 3 uses
  %i.ux = load <2 x float>, ptr %i.tk, align 8, !tbaa !27 ; 2 uses
  %i.uy = load <2 x float>, ptr %i.tl, align 8, !tbaa !27 ; 2 uses
  %i.uz = load <2 x float>, ptr %i.tm, align 8, !tbaa !27 ; 2 uses
  %i.va = load <2 x float>, ptr %i.tv, align 8, !tbaa !27 ; 2 uses
  %i.vb = shufflevector <3 x float> %i.uw, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.vc = shufflevector <2 x float> %i.uy, <2 x float> %i.va, <2 x i32> <i32 0, i32 2>
  %i.vd = fmul <2 x float> %i.vb, %i.vc
  %i.ve = load <2 x float>, ptr %i.tu, align 8, !tbaa !27 ; 2 uses
  %i.vf = shufflevector <2 x float> %i.ux, <2 x float> %i.ve, <2 x i32> <i32 0, i32 2>
  %i.vg = shufflevector <3 x float> %i.uw, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.vh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vf, <2 x float> %i.vg, <2 x float> %i.vd)
  %i.vi = load <2 x float>, ptr %i.tw, align 8, !tbaa !27 ; 2 uses
  %i.vj = shufflevector <2 x float> %i.uz, <2 x float> %i.vi, <2 x i32> <i32 0, i32 2>
  %i.vk = shufflevector <3 x float> %i.uw, <3 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.vl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vj, <2 x float> %i.vk, <2 x float> %i.vh)
  %i.vm = shufflevector <2 x float> %i.uy, <2 x float> %i.va, <2 x i32> <i32 1, i32 3>
  %i.vn = fmul <2 x float> %i.vb, %i.vm
  %i.vo = shufflevector <2 x float> %i.ux, <2 x float> %i.ve, <2 x i32> <i32 1, i32 3>
  %i.vp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vo, <2 x float> %i.vg, <2 x float> %i.vn)
  %i.vq = shufflevector <2 x float> %i.uz, <2 x float> %i.vi, <2 x i32> <i32 1, i32 3>
  %i.vr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vq, <2 x float> %i.vk, <2 x float> %i.vp)
  %i.vs = insertelement <2 x float> poison, float %i.tq, i64 0
  %i.vt = insertelement <2 x float> %i.vs, float %i.ua, i64 1
  %i.vu = fmul <2 x float> %i.vb, %i.vt
  %i.vv = insertelement <2 x float> poison, float %i.to, i64 0
  %i.vw = insertelement <2 x float> %i.vv, float %i.ty, i64 1
  %i.vx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vw, <2 x float> %i.vg, <2 x float> %i.vu)
  %i.vy = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.vz = insertelement <2 x float> %i.vy, float %i.uc, i64 1
  %i.wa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vz, <2 x float> %i.vk, <2 x float> %i.vx)
  %i.wb = fmul <2 x float> %i.vb, %i.vr
  %i.wc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vg, <2 x float> %i.vl, <2 x float> %i.wb)
  %i.wd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vk, <2 x float> %i.wa, <2 x float> %i.wc)
  %i.we = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.wd)
  %i.wf = fdiv float 1.000000e+00, %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 756
  store float %i.wf, ptr %i.wg, align 4, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint9testLimitERK11btTransformS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  store float %i.a, ptr %i.b, align 4, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 782 ; 2 uses
  store i8 0, ptr %i.e, align 2, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !28 ; 2 uses
  %i.j = fcmp ugt float %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.a, float noundef %i.g, float noundef %i.i) ; 4 uses
  store float %i.k, ptr %i.b, align 4, !tbaa !51
  %i.l = load float, ptr %i.f, align 4, !tbaa !52 ; 2 uses
  %i.m = fcmp ugt float %i.k, %i.l
  br i1 %i.m, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.n = load float, ptr %i.h, align 8, !tbaa !28 ; 2 uses
  %i.o = fcmp ult float %i.k, %i.n
  br i1 %i.o, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink12 = phi float [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %.sink = phi float [ 1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.c ]
  %i.p = fsub float %.sink12, %i.k
  store float %i.p, ptr %i.c, align 4, !tbaa !53
  store float %.sink, ptr %i.d, align 8, !tbaa !54
  store i8 1, ptr %i.e, align 2, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(792) %0, ptr nofree noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %2, float noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31, !nonnull !32, !align !33 ; 47 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %4 = load float, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.t = load <2 x float>, ptr %i.f, align 8, !tbaa !27 ; 3 uses
  %5 = load float, ptr %i.h, align 4, !tbaa !27
  %6 = extractelement <2 x float> %i.t, i64 0
  %7 = load <2 x float>, ptr %i.n, align 8, !tbaa !27 ; 2 uses
  %i.u = load <2 x float>, ptr %i.r, align 8, !tbaa !27 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.w = load float, ptr %i.i, align 4, !tbaa !27 ; 2 uses
  %i.x = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.y = load float, ptr %i.k, align 8, !tbaa !27 ; 2 uses
  %8 = fmul float %5, %i.w
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %i.x, float %8)
  %10 = tail call noundef float @llvm.fmuladd.f32(float %4, float %i.y, float %9)
  %11 = fadd float %10, %i.m                      ; 2 uses
  %i.z = load <2 x float>, ptr %i.o, align 4, !tbaa !27 ; 3 uses
  %12 = load <2 x float>, ptr %i.s, align 4, !tbaa !27 ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x float> %i.z, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  %i.ac = fmul <2 x float> %i.ab, %13
  %i.ad = shufflevector <2 x float> %7, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ae = insertelement <2 x float> poison, float %i.x, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.af, <2 x float> %i.ac)
  %i.ah = shufflevector <2 x float> %i.z, <2 x float> %12, <2 x i32> <i32 1, i32 3>
  %i.ai = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.aj, <2 x float> %i.ag)
  %14 = load <2 x float>, ptr %i.q, align 4, !tbaa !27 ; 2 uses
  %i.al = fadd <2 x float> %14, %i.ak             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37, !nonnull !32, !align !33 ; 46 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aq = load <4 x float>, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.at = load <4 x float>, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aw = load <4 x float>, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.bd = load <2 x float>, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ay, align 8, !tbaa !27 ; 3 uses
  %i.bf = load <2 x float>, ptr %i.bb, align 8, !tbaa !27 ; 3 uses
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bi = load <2 x float>, ptr %i.ar, align 4, !tbaa !27 ; 3 uses
  %i.bj = load <2 x float>, ptr %i.az, align 4, !tbaa !27 ; 3 uses
  %i.bk = load <2 x float>, ptr %i.bc, align 4, !tbaa !27
  %i.bl = shufflevector <4 x float> %i.at, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bm = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.bo = shufflevector <3 x float> %i.bm, <3 x float> %i.bn, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bp = fmul <3 x float> %i.bl, %i.bo
  %i.bq = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.br = shufflevector <3 x float> %i.bq, <3 x float> %i.bg, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bs = shufflevector <4 x float> %i.aq, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.br, <3 x float> %i.bs, <3 x float> %i.bp)
  %i.bu = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bv = shufflevector <3 x float> %i.bu, <3 x float> %i.bn, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bw = shufflevector <4 x float> %i.aw, <4 x float> poison, <3 x i32> zeroinitializer
  %i.bx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bv, <3 x float> %i.bw, <3 x float> %i.bt)
  %i.by = load <3 x float>, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.bz = fadd <3 x float> %i.bx, %i.by           ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !24, !range !34, !noundef !32
  %i.cc = trunc nuw i8 %i.cb to i1
  %15 = shufflevector <2 x float> %i.z, <2 x float> %12, <3 x i32> <i32 3, i32 poison, i32 1>
  %i.cd = insertelement <3 x float> %15, float %4, i64 1
  %i.ce = shufflevector <2 x float> %i.u, <2 x float> %i.t, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.cf = shufflevector <2 x float> %7, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.cg = shufflevector <3 x float> %i.ce, <3 x float> %i.cf, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ch = shufflevector <2 x float> %i.u, <2 x float> %i.t, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.ci = shufflevector <3 x float> %i.ch, <3 x float> %i.cf, <3 x i32> <i32 0, i32 1, i32 4>
  %i.cj = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <3 x i32> <i32 3, i32 poison, i32 1>
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> %i.bn, <3 x i32> <i32 0, i32 4, i32 2>
  %i.cl = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.cm = shufflevector <2 x float> %i.bd, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.cn = shufflevector <3 x float> %i.cl, <3 x float> %i.cm, <3 x i32> <i32 0, i32 1, i32 3>
  %i.co = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.cp = shufflevector <3 x float> %i.co, <3 x float> %i.cm, <3 x i32> <i32 0, i32 1, i32 4>
  br i1 %i.cc, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cq = fsub float %11, %i.m                    ; 4 uses
  %i.cr = fsub <2 x float> %i.al, %14             ; 4 uses
  %i.cs = fsub <3 x float> %i.bz, %i.by           ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 5 uses
  %.not.i = icmp eq ptr %i.cu, null
  br i1 %.not.i, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 328
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 336
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !27
  %i.da = fadd float %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 344
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = load float, ptr %i.db, align 4, !tbaa !27
  %i.de = load float, ptr %i.dc, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 348
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dh = extractelement <2 x float> %i.cr, i64 0
  %i.di = fneg float %i.cq
  %i.dj = load <2 x float>, ptr %i.cv, align 4, !tbaa !27
  %i.dk = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.dl = fadd <2 x float> %i.dj, %i.dk
  %i.dm = load <2 x float>, ptr %i.df, align 4, !tbaa !27 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dg, align 4, !tbaa !27 ; 2 uses
  %i.do = fadd <2 x float> %i.dm, %i.dn           ; 2 uses
  %i.dp = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dq = insertelement <2 x float> %i.dp, float %i.dd, i64 1
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.de, i64 1
  %i.dt = fadd <2 x float> %i.dq, %i.ds           ; 2 uses
  %16 = fneg <2 x float> %i.cr
  %17 = fmul <2 x float> %i.dt, %16
  %18 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = insertelement <2 x float> %18, float %i.cq, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %19, <2 x float> %17)
  %i.dv = extractelement <2 x float> %i.do, i64 0
  %i.dw = fmul float %i.dv, %i.di
  %i.dx = extractelement <2 x float> %i.dt, i64 1
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dh, float %i.dw)
  %i.dz = fadd <2 x float> %i.dl, %i.du
  %i.ea = fadd float %i.da, %i.dy
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0521.0 = phi <2 x float> [ %i.dz, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.6522.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !85 ; 5 uses
  %.not.i74 = icmp eq ptr %i.ec, null
  br i1 %.not.i74, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit79, label %bb.e

bb.e:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 328
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 336
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !27
  %i.ei = fadd float %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 344
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.el = load float, ptr %i.ej, align 4, !tbaa !27
  %i.em = load float, ptr %i.ek, align 8, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 348
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ep = extractelement <3 x float> %i.cs, i64 1
  %i.eq = extractelement <3 x float> %i.cs, i64 0
  %i.er = fneg float %i.eq
  %i.es = load <2 x float>, ptr %i.ed, align 4, !tbaa !27
  %i.et = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.eu = fadd <2 x float> %i.es, %i.et
  %i.ev = load <2 x float>, ptr %i.en, align 4, !tbaa !27 ; 2 uses
  %i.ew = load <2 x float>, ptr %i.eo, align 4, !tbaa !27 ; 2 uses
  %i.ex = fadd <2 x float> %i.ev, %i.ew           ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ez = insertelement <2 x float> %i.ey, float %i.el, i64 1
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.em, i64 1
  %i.fc = fadd <2 x float> %i.ez, %i.fb           ; 2 uses
  %i.fd = fneg <3 x float> %i.cs
  %i.fe = shufflevector <3 x float> %i.fd, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ff = fmul <2 x float> %i.fc, %i.fe
  %i.fg = shufflevector <3 x float> %i.cs, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.fh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.fg, <2 x float> %i.ff)
  %i.fi = extractelement <2 x float> %i.ex, i64 0
  %i.fj = fmul float %i.fi, %i.er
  %i.fk = extractelement <2 x float> %i.fc, i64 1
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.ep, float %i.fj)
  %i.fm = fadd <2 x float> %i.eu, %i.fh
  %i.fn = fadd float %i.ei, %i.fl
  %.sroa.3.12.vec.insert.i16.i77 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit79

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit79: ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, %bb.e
  %.sroa.0519.0 = phi <2 x float> [ %i.fm, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ] ; 2 uses
  %.sroa.6520.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i77, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0521.0, %.sroa.0519.0
  %i.fo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop582 = fsub <2 x float> %.sroa.0521.0, %.sroa.0519.0
  %foldExtExtBinop584 = fsub <2 x float> %.sroa.6522.0, %.sroa.6520.0
  %i.fp = extractelement <2 x float> %foldExtExtBinop584, i64 0
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fr = extractelement <3 x float> %i.bz, i64 0
  %i.fs = fsub float %11, %i.fr
  %20 = shufflevector <3 x float> %i.bz, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %21 = fsub <2 x float> %i.al, %20               ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.an, i64 360
  %i.gi = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  %i.gj = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %i.gk = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  %i.gl = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  %i.gm = getelementptr inbounds nuw i8, ptr %i.an, i64 312
  %i.gn = getelementptr inbounds nuw i8, ptr %i.an, i64 316
  %i.go = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.gv = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gw = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %24 = insertelement <4 x float> %i.gv, float %i.cq, i64 2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit79, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit79 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [84 x i8], ptr %i.fq, i64 %indvars.iv ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 80
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !49
  %i.ha = fdiv float 1.000000e+00, %i.gz          ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !27 ; 6 uses
  %i.hd = load float, ptr %i.ft, align 8, !tbaa !35
  %i.he = load float, ptr %i.fu, align 8, !tbaa !47 ; 2 uses
  %i.hf = fmul float %i.hc, %i.he
  %i.hg = load <2 x float>, ptr %i.gx, align 4, !tbaa !27 ; 7 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %foldExtExtBinop586 = fmul <2 x float> %foldExtExtBinop582, %i.hg
  %i.hi = extractelement <2 x float> %foldExtExtBinop586, i64 1
  %i.hj = extractelement <2 x float> %i.hg, i64 0 ; 2 uses
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.fo, float %i.hi)
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.fp, float %i.hk)
  %i.hm = fmul float %22, %i.hh
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.hj, float %i.hm)
  %i.ho = tail call noundef float @llvm.fmuladd.f32(float %23, float %i.hc, float %i.hn)
  %i.hp = fmul float %i.ho, -3.000000e-01
  %i.hq = fdiv float %i.hp, %3
  %i.hr = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x float> %i.hg, %i.hs
  %i.hu = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = insertelement <4 x float> %i.hu, float %i.hc, i64 2
  %i.hw = insertelement <4 x float> %i.hv, float %i.ha, i64 3
  %i.hx = fneg <4 x float> %i.hw                  ; 2 uses
  %i.hy = fneg float %i.hh
  %i.hz = insertelement <4 x float> %24, float %i.hl, i64 3
  %i.ia = fmul <4 x float> %i.hz, %i.hx
  %i.ib = insertelement <4 x float> %i.gw, float %i.hq, i64 3
  %i.ic = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %25 = insertelement <4 x float> %i.ic, float %i.hc, i64 1
  %26 = insertelement <4 x float> %25, float %i.ha, i64 3
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %26, <4 x float> %i.ia) ; 9 uses
  %i.ie = extractelement <4 x float> %i.id, i64 3 ; 5 uses
  %i.if = fadd float %i.hd, %i.ie
  store float %i.if, ptr %i.ft, align 8, !tbaa !35
  %i.ig = load <2 x float>, ptr %i.fv, align 8, !tbaa !27 ; 2 uses
  %i.ih = load float, ptr %i.fw, align 8, !tbaa !27
  %i.ii = load <2 x float>, ptr %i.fx, align 8, !tbaa !27 ; 2 uses
  %i.ij = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ik = shufflevector <2 x float> %i.ig, <2 x float> %i.ii, <2 x i32> <i32 1, i32 3>
  %i.il = fmul <2 x float> %i.ij, %i.ik
  %i.im = shufflevector <2 x float> %i.ig, <2 x float> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.in = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.io = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.in, <2 x float> %i.il)
  %i.ip = load float, ptr %i.fy, align 8, !tbaa !27
  %i.iq = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.ip, i64 1
  %i.is = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> zeroinitializer
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.is, <2 x float> %i.io)
  %i.iu = load float, ptr %i.fz, align 8, !tbaa !27
  %i.iv = load float, ptr %i.ga, align 4, !tbaa !27
  %i.iw = extractelement <4 x float> %i.id, i64 2
  %i.ix = fmul float %i.iw, %i.iv
  %i.iy = extractelement <4 x float> %i.id, i64 1
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.iy, float %i.ix)
  %i.ja = load float, ptr %i.gb, align 8, !tbaa !27
  %i.jb = extractelement <4 x float> %i.id, i64 0
  %i.jc = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float %i.jb, float %i.iz)
  %i.jd = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.je = shufflevector <4 x float> %i.id, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.jf = fmul <2 x float> %i.ht, %i.je
  %i.jg = fmul float %i.hf, %i.ie
  %i.jh = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.ji = fadd <2 x float> %i.jf, %i.jh
  store <2 x float> %i.ji, ptr %1, align 8, !tbaa !27
  %i.jj = load float, ptr %i.gc, align 8, !tbaa !27
  %i.jk = fadd float %i.jg, %i.jj
  store float %i.jk, ptr %i.gc, align 8, !tbaa !27
  %i.jl = load <2 x float>, ptr %i.gd, align 8, !tbaa !27
  %i.jm = fmul <2 x float> %i.jd, %i.jl
  %i.jn = load float, ptr %i.ge, align 8, !tbaa !27
  %i.jo = fmul float %i.ie, %i.jn
  %i.jp = fmul <2 x float> %i.it, %i.jm
  %i.jq = fmul float %i.jc, %i.jo
  %i.jr = load <2 x float>, ptr %i.gf, align 8, !tbaa !27
  %i.js = fadd <2 x float> %i.jp, %i.jr
  store <2 x float> %i.js, ptr %i.gf, align 8, !tbaa !27
  %i.jt = load float, ptr %i.gg, align 8, !tbaa !27
  %i.ju = fadd float %i.jq, %i.jt
  store float %i.ju, ptr %i.gg, align 8, !tbaa !27
  %i.jv = load float, ptr %i.gh, align 8, !tbaa !47 ; 2 uses
  %i.jw = load float, ptr %i.hb, align 4, !tbaa !27
  %i.jx = fmul float %i.jv, %i.jw
  %i.jy = load float, ptr %i.gj, align 8, !tbaa !27
  %i.jz = load float, ptr %i.gl, align 8, !tbaa !27
  %i.ka = load float, ptr %i.gm, align 8, !tbaa !27
  %i.kb = load float, ptr %i.gn, align 4, !tbaa !27
  %i.kc = load float, ptr %i.go, align 8, !tbaa !27
  %i.kd = fneg float %i.ie                        ; 2 uses
  %i.ke = load <2 x float>, ptr %i.gx, align 4, !tbaa !27
  %i.kf = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x float> %i.kg, %i.ke
  %i.ki = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.kj = fmul <2 x float> %i.jd, %i.kh
  %i.kk = fsub <2 x float> %i.ki, %i.kj
  %i.kl = load float, ptr %i.gp, align 8, !tbaa !27
  %i.km = fmul float %i.ie, %i.jx
  %i.kn = fsub float %i.kl, %i.km
  %i.ko = load float, ptr %i.gr, align 8, !tbaa !27
  %i.kp = fmul float %i.ko, %i.kd
  %i.kq = shufflevector <4 x float> %i.hx, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.kr = insertelement <3 x float> %i.kq, float %i.hy, i64 2
  %i.ks = fmul <3 x float> %i.cs, %i.kr
  %i.kt = shufflevector <3 x float> %i.ks, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ku = shufflevector <2 x float> %i.hg, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.kv = insertelement <3 x float> %i.ku, float %i.hc, i64 1
  %i.kw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cs, <3 x float> %i.kv, <3 x float> %i.kt) ; 6 uses
  %i.kx = load <2 x float>, ptr %i.gi, align 8, !tbaa !27 ; 2 uses
  %i.ky = load <2 x float>, ptr %i.gk, align 8, !tbaa !27 ; 2 uses
  %i.kz = shufflevector <3 x float> %i.kw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.la = shufflevector <2 x float> %i.kx, <2 x float> %i.ky, <2 x i32> <i32 1, i32 3>
  %i.lb = fmul <2 x float> %i.kz, %i.la
  %i.lc = shufflevector <2 x float> %i.kx, <2 x float> %i.ky, <2 x i32> <i32 0, i32 2>
  %i.ld = shufflevector <3 x float> %i.kw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.le = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.ld, <2 x float> %i.lb)
  %i.lf = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.lg = insertelement <2 x float> %i.lf, float %i.jz, i64 1
  %i.lh = shufflevector <3 x float> %i.kw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.li = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.lh, <2 x float> %i.le)
  %i.lj = extractelement <3 x float> %i.kw, i64 2
  %i.lk = fmul float %i.lj, %i.kb
  %i.ll = extractelement <3 x float> %i.kw, i64 1
  %i.lm = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.ll, float %i.lk)
  %i.ln = extractelement <3 x float> %i.kw, i64 0
  %i.lo = tail call noundef float @llvm.fmuladd.f32(float %i.kc, float %i.ln, float %i.lm)
  store <2 x float> %i.kk, ptr %2, align 8, !tbaa !27
  store float %i.kn, ptr %i.gp, align 8, !tbaa !27
  %i.lp = load <2 x float>, ptr %i.gq, align 8, !tbaa !27
  %i.lq = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = fmul <2 x float> %i.lp, %i.lr
  %i.lt = fmul <2 x float> %i.li, %i.ls
  %i.lu = fmul float %i.lo, %i.kp
  %i.lv = load <2 x float>, ptr %i.gs, align 8, !tbaa !27
  %i.lw = fadd <2 x float> %i.lt, %i.lv
  store <2 x float> %i.lw, ptr %i.gs, align 8, !tbaa !27
  %i.lx = load float, ptr %i.gt, align 8, !tbaa !27
  %i.ly = fadd float %i.lu, %i.lx
  store float %i.ly, ptr %i.gt, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.f

.loopexit.loopexit:                               ; preds = %bb.f
  %.pre558 = load float, ptr %i.j, align 8, !tbaa !27
  %.pre561 = load float, ptr %i.p, align 8, !tbaa !27
  %i.lz = load <2 x float>, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.ma = load <2 x float>, ptr %i.n, align 8, !tbaa !27
  %i.mb = load <2 x float>, ptr %i.r, align 8, !tbaa !27 ; 2 uses
  %.pre564 = load float, ptr %i.v, align 8, !tbaa !27
  %.pre567 = load float, ptr %i.au, align 8, !tbaa !27
  %.pre570 = load float, ptr %i.ba, align 8, !tbaa !27
  %i.mc = load <2 x float>, ptr %i.ao, align 8, !tbaa !27
  %i.md = load <2 x float>, ptr %i.ay, align 8, !tbaa !27 ; 2 uses
  %i.me = load <2 x float>, ptr %i.bb, align 8, !tbaa !27 ; 2 uses
  %.pre573 = load float, ptr %i.bh, align 8, !tbaa !27
  %i.mf = insertelement <3 x float> poison, float %.pre564, i64 0
  %i.mg = insertelement <3 x float> %i.mf, float %.pre558, i64 1
  %i.mh = insertelement <3 x float> %i.mg, float %.pre561, i64 2
  %i.mi = shufflevector <2 x float> %i.mb, <2 x float> %i.lz, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.mj = shufflevector <2 x float> %i.ma, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.mk = shufflevector <3 x float> %i.mi, <3 x float> %i.mj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ml = shufflevector <2 x float> %i.mb, <2 x float> %i.lz, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.mm = shufflevector <3 x float> %i.ml, <3 x float> %i.mj, <3 x i32> <i32 0, i32 1, i32 4>
  %i.mn = insertelement <3 x float> poison, float %.pre570, i64 0
  %i.mo = insertelement <3 x float> %i.mn, float %.pre573, i64 1
  %i.mp = insertelement <3 x float> %i.mo, float %.pre567, i64 2
  %i.mq = shufflevector <2 x float> %i.md, <2 x float> %i.me, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.mr = shufflevector <2 x float> %i.mc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ms = shufflevector <3 x float> %i.mq, <3 x float> %i.mr, <3 x i32> <i32 0, i32 1, i32 3>
  %i.mt = shufflevector <2 x float> %i.md, <2 x float> %i.me, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.mu = shufflevector <3 x float> %i.mt, <3 x float> %i.mr, <3 x i32> <i32 0, i32 1, i32 4>
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.mv = phi <3 x float> [ %i.mh, %.loopexit.loopexit ], [ %i.cd, %bb.b ]
  %i.mw = phi <3 x float> [ %i.mk, %.loopexit.loopexit ], [ %i.cg, %bb.b ]
  %i.mx = phi <3 x float> [ %i.mm, %.loopexit.loopexit ], [ %i.ci, %bb.b ]
  %i.my = phi <3 x float> [ %i.mp, %.loopexit.loopexit ], [ %i.ck, %bb.b ]
  %i.mz = phi <3 x float> [ %i.ms, %.loopexit.loopexit ], [ %i.cn, %bb.b ]
  %i.na = phi <3 x float> [ %i.mu, %.loopexit.loopexit ], [ %i.cp, %bb.b ]
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ne = load <4 x float>, ptr %i.nb, align 8
  %i.nf = load <4 x float>, ptr %i.nc, align 8
  %i.ng = load <4 x float>, ptr %i.nd, align 8
  %i.nh = shufflevector <4 x float> %i.nf, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ni = fmul <3 x float> %i.nh, %i.mx
  %i.nj = shufflevector <4 x float> %i.ne, <4 x float> poison, <3 x i32> zeroinitializer
  %i.nk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mw, <3 x float> %i.nj, <3 x float> %i.ni)
  %i.nl = shufflevector <4 x float> %i.ng, <4 x float> poison, <3 x i32> zeroinitializer
  %i.nm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mv, <3 x float> %i.nl, <3 x float> %i.nk) ; 12 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.nq = load <4 x float>, ptr %i.nn, align 8
  %i.nr = load <4 x float>, ptr %i.no, align 8
  %i.ns = load <4 x float>, ptr %i.np, align 8
  %i.nt = shufflevector <4 x float> %i.nr, <4 x float> poison, <3 x i32> zeroinitializer
  %i.nu = fmul <3 x float> %i.nt, %i.na
  %i.nv = shufflevector <4 x float> %i.nq, <4 x float> poison, <3 x i32> zeroinitializer
  %i.nw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mz, <3 x float> %i.nv, <3 x float> %i.nu)
  %i.nx = shufflevector <4 x float> %i.ns, <4 x float> poison, <3 x i32> zeroinitializer
  %i.ny = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.my, <3 x float> %i.nx, <3 x float> %i.nw) ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !85 ; 3 uses
  %.not.i145 = icmp eq ptr %i.oa, null
  br i1 %.not.i145, label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 344
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.od = load <2 x float>, ptr %i.ob, align 4, !tbaa !27
  %i.oe = load <2 x float>, ptr %i.oc, align 8, !tbaa !27
  %i.of = fadd <2 x float> %i.od, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 352
  %i.oh = load float, ptr %i.og, align 4, !tbaa !27
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oj = load float, ptr %i.oi, align 8, !tbaa !27
  %i.ok = fadd float %i.oh, %i.oj
  %.sroa.3.12.vec.insert.i.i148 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ok, i64 0
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit: ; preds = %.loopexit, %bb.g
  %.sroa.0418.0 = phi <2 x float> [ %i.of, %bb.g ], [ zeroinitializer, %.loopexit ] ; 4 uses
  %.sroa.10427.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i148, %bb.g ], [ zeroinitializer, %.loopexit ] ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !85 ; 3 uses
  %.not.i150 = icmp eq ptr %i.om, null
  br i1 %.not.i150, label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit155, label %bb.h
end_hunk_0
