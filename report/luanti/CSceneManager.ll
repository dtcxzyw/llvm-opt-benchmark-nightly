Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1657
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  store <8 x float> %i.z, ptr %i.o, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store float %i.aa, ptr %i.ab, align 4, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ad = extractelement <4 x float> %i.x, i64 0
  store float %i.ad, ptr %i.ac, align 4, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = extractelement <4 x float> %i.y, i64 3  ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store float %i.aa, ptr %i.ag, align 4, !tbaa !148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %foldExtExtBinop10 = fsub <4 x float> %i.v, %i.w ; 2 uses
  %i.ai = extractelement <4 x float> %foldExtExtBinop10, i64 0
  %i.aj = shufflevector <4 x float> %foldExtExtBinop10, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %i.z, <8 x i32> <i32 0, i32 9, i32 10, i32 0, i32 12, i32 10, i32 0, i32 9>
  store <8 x float> %i.ak, ptr %i.ah, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.aa, ptr %i.al, align 4, !tbaa !148
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !146
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.af, ptr %i.an, align 4, !tbaa !147
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.aa, ptr %i.ao, align 4, !tbaa !148
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

bb.e:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  ret void

bb.f:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %indvars.iv = phi i64 [ 0, %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit ], [ %indvars.iv.next, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !230
  %i.ay = load ptr, ptr %1, align 8, !tbaa !233   ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv
  br i1 %i.bd, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #36
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv ; 4 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !146 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !147 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !148 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.ap, align 8, !tbaa !13
  %i.bl = load <2 x float>, ptr %i.aq, align 8, !tbaa !13
  %i.bm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bk, <2 x float> %i.bo)
  %i.bs = load <2 x float>, ptr %i.ar, align 8, !tbaa !13
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bs, <2 x float> %i.br)
  %i.bw = load <2 x float>, ptr %i.as, align 8, !tbaa !13
  %i.bx = fadd <2 x float> %i.bv, %i.bw
  %i.by = load float, ptr %i.at, align 8, !tbaa !13
  %i.bz = load float, ptr %i.au, align 8, !tbaa !13
  %i.ca = fmul float %i.bh, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.by, float %i.ca)
  %i.cc = load float, ptr %i.av, align 8, !tbaa !13
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cc, float %i.cb)
  %i.ce = load float, ptr %i.aw, align 8, !tbaa !13
  %i.cf = fadd float %i.ce, %i.cd
  store <2 x float> %i.bx, ptr %i.be, align 4
  store float %i.cf, ptr %i.bi, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !235
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !146
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #33 ; 3 uses
  %i.k = tail call double @sin(double noundef %i.i) #33 ; 3 uses
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !13
  %i.m = fmul <2 x float> %i.l, splat (float f0x3C8EFA35)
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.p = tail call double @cos(double noundef %i.o) #33 ; 4 uses
  %i.q = tail call double @sin(double noundef %i.o) #33 ; 3 uses
  %i.r = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.s = tail call double @cos(double noundef %i.r) #33 ; 5 uses
  %i.t = tail call double @sin(double noundef %i.r) #33 ; 5 uses
  %i.u = fmul double %i.p, %i.s
  %i.v = fptrunc double %i.u to float             ; 3 uses
  store float %i.v, ptr %0, align 4, !tbaa !13
  %i.w = fmul double %i.p, %i.t
  %i.x = fptrunc double %i.w to float             ; 3 uses
  store float %i.x, ptr %i.a, align 4, !tbaa !13
  %i.y = fptrunc double %i.q to float
  %i.z = fneg float %i.y                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %i.ab = fmul double %i.k, %i.q
  %i.ac = fmul double %i.j, %i.q
  %i.ad = fneg double %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.s, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.s, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.t, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.aj)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  store <2 x float> %i.ap, ptr %i.ae, align 4, !tbaa !13
  %i.aq = fmul double %i.k, %i.p
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ar, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = fneg double %i.s
  %i.av = insertelement <2 x double> poison, double %i.k, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 1
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.t, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.az)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  store <2 x float> %i.bf, ptr %i.at, align 4, !tbaa !13
  %i.bg = fmul double %i.j, %i.p
  %i.bh = fptrunc double %i.bg to float           ; 4 uses
  store float %i.bh, ptr %i.d, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bl = load <2 x float>, ptr %i.bi, align 8, !tbaa !13 ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  store float %i.bm, ptr %i.bj, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !13 ; 3 uses
  %i.bq = load float, ptr %i.bo, align 8, !tbaa !148 ; 3 uses
  %i.br = extractelement <2 x float> %i.bp, i64 0
  store float %i.br, ptr %i.bn, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bq, ptr %i.bs, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !146 ; 3 uses
  %i.bv = fcmp oeq float %i.bu, 1.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !147 ; 2 uses
  %i.by = fcmp oeq float %i.bx, 1.000000e+00
  %or.cond = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !148
  %i.cb = fcmp une float %i.ca, 1.000000e+00
  br i1 %i.cb, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.cc = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bx, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %2 = load float, ptr %i.cd, align 8, !tbaa !148
  %i.ce = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = insertelement <4 x float> %i.ce, float 1.000000e+00, i64 3
  %i.cg = insertelement <4 x float> %i.cf, float %i.ar, i64 2 ; 2 uses
  %i.ch = fmul <4 x float> %i.cg, zeroinitializer ; 2 uses
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.x, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.z, i64 2
  %i.cl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bu, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cm, <4 x float> %i.ch)
  %i.co = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cp = insertelement <4 x float> %i.co, float %i.bh, i64 2 ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bu, i64 3
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer, <4 x float> %i.cn)
  %i.cs = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 0.000000e+00, i64 3
  %i.cu = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cr)
  store <4 x float> %i.cw, ptr %0, align 4, !tbaa !13
  %i.cx = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cc, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cz = fmul <4 x float> %i.cy, %i.cg
  %i.da = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.v, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.x, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.z, i64 2 ; 2 uses
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.cz)
  %i.de = insertelement <4 x float> %i.cp, float %i.cc, i64 3
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> zeroinitializer, <4 x float> %i.dd)
  %i.dg = shufflevector <2 x float> %i.bl, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3 ; 2 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.df)
  store <4 x float> %i.di, ptr %i.ae, align 4, !tbaa !13
  %i.dj = insertelement <4 x float> %i.ch, float 0.000000e+00, i64 3
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> zeroinitializer, <4 x float> %i.dj) ; 2 uses
  %3 = insertelement <4 x float> poison, float %2, i64 0
  %i.dl = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3
  %i.dn = insertelement <4 x float> %i.dm, float %i.bh, i64 2
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dk)
  %i.dp = insertelement <4 x float> %i.dh, float %i.bq, i64 2
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.do)
  store <4 x float> %i.dq, ptr %i.at, align 4, !tbaa !13
  %i.dr = insertelement <4 x float> %i.co, float -0.000000e+00, i64 3
  %i.ds = insertelement <4 x float> %i.dr, float %i.bh, i64 2
  %i.dt = insertelement <4 x float> %i.dk, float 1.000000e+00, i64 3
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> zeroinitializer, <4 x float> %i.dt)
  %i.dv = insertelement <4 x float> %i.dg, float -0.000000e+00, i64 3
  %i.dw = insertelement <4 x float> %i.dv, float %i.bq, i64 2
  %i.dx = fadd <4 x float> %i.du, %i.dw
  store <4 x float> %i.dx, ptr %i.bj, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44, !range !102, !noundef !103
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44, !range !102, !noundef !103
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !111
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !236
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !236
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !23, !range !102, !noundef !103
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !23
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !237
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !117
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !23, !range !102, !noundef !103
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 266, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene10ISceneNode11removeChildEPS0_) #36
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load i64, ptr %i.f, align 8, !tbaa !237
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !23
  store ptr null, ptr %i.a, align 8, !tbaa !117
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !81
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #33, !inline_history !114
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !236
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !236
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #32
  br label %bb.h
end_hunk_0
begin_hunk_1_@_ZN5scene12SViewFrustum25recalculateBoundingSphereEv:.preheader.preheader
  %.sroa.2.0.copyload.i184 = load float, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bv = load float, ptr %i.ba, align 4, !tbaa !146
  %i.bw = load float, ptr %i.bd, align 4, !tbaa !147
  %i.bx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bj, align 8, !tbaa !148
  %i.by = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  %.sroa.0.0.copyload.i191 = load <2 x float>, ptr %5, align 8
  %.sroa.2.0.copyload.i192 = load float, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bz = load float, ptr %i.ba, align 4, !tbaa !146
  %i.ca = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cb = shufflevector <2 x float> %.sroa.0.0.copyload.i183, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cd = shufflevector <2 x float> %.sroa.0.0.copyload.i191, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cf = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bq, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.bv, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.bz, i64 3
  %i.cj = fsub <4 x float> %i.ce, %i.ci           ; 2 uses
  %i.ck = load float, ptr %i.bd, align 4, !tbaa !147
  %i.cl = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.co = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %i.br, i64 1
  %i.cq = insertelement <4 x float> %i.cp, float %i.bw, i64 2
  %i.cr = insertelement <4 x float> %i.cq, float %i.ck, i64 3
  %i.cs = fsub <4 x float> %i.cn, %i.cr           ; 2 uses
  %i.ct = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bk, align 8, !tbaa !148
  %i.cu = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %.sroa.0.0.copyload.i199 = load <2 x float>, ptr %4, align 8
  %.sroa.2.0.copyload.i200 = load float, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = load float, ptr %i.ba, align 4, !tbaa !146
  %i.cw = load float, ptr %i.bd, align 4, !tbaa !147
  %i.cx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bl, align 8, !tbaa !148
  %i.cy = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %.sroa.0.0.copyload.i207 = load <2 x float>, ptr %3, align 8
  %.sroa.2.0.copyload.i208 = load float, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cz = load float, ptr %i.ba, align 4, !tbaa !146
  %i.da = load float, ptr %i.bd, align 4, !tbaa !147
  %i.db = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bm, align 8, !tbaa !148
  %i.dc = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %.sroa.0.0.copyload.i215 = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.2.0.copyload.i216 = load float, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dd = load float, ptr %i.ba, align 4, !tbaa !146
  %i.de = load float, ptr %i.bd, align 4, !tbaa !147
  %i.df = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !148
  %i.dg = fsub float %.sroa.2.0.copyload.i216, %i.df ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !148
  %i.dh = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i223 = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.copyload.i224 = load float, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.di = load float, ptr %i.ba, align 4, !tbaa !146
  %i.dj = load float, ptr %i.bd, align 4, !tbaa !147
  %i.dk = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !148
  %i.dl = fsub float %.sroa.2.0.copyload.i224, %i.dk ; 2 uses
  %i.dm = fmul <4 x float> %i.cs, %i.cs
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cj, <4 x float> %i.dm) ; 3 uses
  %i.do = extractelement <4 x float> %i.dn, i64 0
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.do) ; 2 uses
  %i.dq = extractelement <4 x float> %i.dn, i64 1
  %i.dr = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.dq) ; 2 uses
  %i.ds = shufflevector <2 x float> %.sroa.0.0.copyload.i199, <2 x float> %.sroa.0.0.copyload.i207, <4 x i32> <i32 1, i32 3, i32 0, i32 2> ; 2 uses
  %i.dt = insertelement <4 x float> %i.ds, float %.sroa.2.0.copyload.i184, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %.sroa.2.0.copyload.i192, i64 1
  %i.dv = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.ct, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.cv, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.cz, i64 3
  %i.dz = fsub <4 x float> %i.du, %i.dy           ; 2 uses
  %i.ea = shufflevector <2 x float> %.sroa.0.0.copyload.i215, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.ds, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ec = shufflevector <2 x float> %.sroa.0.0.copyload.i223, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ee = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.da, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.de, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.dj, i64 3
  %i.ei = fsub <4 x float> %i.ed, %i.eh           ; 2 uses
  %i.ej = fmul <4 x float> %i.ei, %i.ei           ; 2 uses
  %i.ek = shufflevector <4 x float> %i.dn, <4 x float> %i.ej, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.dz, <4 x float> %i.ek) ; 3 uses
  %i.em = shufflevector <2 x float> %.sroa.0.0.copyload.i215, <2 x float> %.sroa.0.0.copyload.i223, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.en = insertelement <4 x float> %i.em, float %.sroa.2.0.copyload.i200, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %.sroa.2.0.copyload.i208, i64 1
  %i.ep = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.db, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.dd, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.di, i64 3
  %i.et = fsub <4 x float> %i.eo, %i.es           ; 2 uses
  %i.eu = shufflevector <4 x float> %i.el, <4 x float> %i.ej, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.et, <4 x float> %i.eu) ; 4 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 2
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.ew) ; 2 uses
  %i.ey = extractelement <4 x float> %i.ev, i64 3
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.ey) ; 2 uses
  %i.fa = fcmp ogt float %i.dp, 0.000000e+00
  %.1 = select i1 %i.fa, float %i.dp, float 0.000000e+00 ; 2 uses
  %i.fb = fcmp ogt float %i.dr, %.1
  %.1.1 = select i1 %i.fb, float %i.dr, float %.1 ; 2 uses
  %i.fc = extractelement <4 x float> %i.el, i64 0 ; 2 uses
  %i.fd = fcmp ogt float %i.fc, %.1.1
  %.1.2 = select i1 %i.fd, float %i.fc, float %.1.1 ; 2 uses
  %i.fe = extractelement <4 x float> %i.el, i64 1 ; 2 uses
  %i.ff = fcmp ogt float %i.fe, %.1.2
  %.1.3 = select i1 %i.ff, float %i.fe, float %.1.2 ; 2 uses
  %i.fg = extractelement <4 x float> %i.ev, i64 0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %.1.3
  %.1.4 = select i1 %i.fh, float %i.fg, float %.1.3 ; 2 uses
  %i.fi = extractelement <4 x float> %i.ev, i64 1 ; 2 uses
  %i.fj = fcmp ogt float %i.fi, %.1.4
  %.1.5 = select i1 %i.fj, float %i.fi, float %.1.4 ; 2 uses
  %i.fk = fcmp ogt float %i.ex, %.1.5
  %.1.6 = select i1 %i.fk, float %i.ex, float %.1.5 ; 2 uses
  %i.fl = fcmp ogt float %i.ez, %.1.6
  %.1.7 = select i1 %i.fl, float %i.ez, float %.1.6
  %i.fm = call float @sqrtf(float noundef %.1.7) #33
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.fm, ptr %i.fn, align 4, !tbaa !149
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !13 ; 6 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !13 ; 5 uses
  %i.e = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.f = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.g = extractelement <2 x float> %i.d, i64 1
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !13 ; 6 uses
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !13 ; 5 uses
  %i.j = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.k = fmul float %i.e, %i.j
  %i.l = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.f, float %i.l, float %i.k)
  %i.n = extractelement <2 x float> %i.i, i64 1
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.n, float %i.m) ; 3 uses
  %i.p = shufflevector <2 x float> %i.h, <2 x float> %i.c, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = shufflevector <2 x float> %i.h, <2 x float> %i.c, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.q)
  %i.t = shufflevector <2 x float> %i.i, <2 x float> %i.d, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.s)
  %i.v = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u) ; 3 uses
  %i.w = fneg float %i.o
  %i.x = fmul float %i.o, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = extractelement <2 x float> %i.v, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.y, float %i.x)
  %i.ab = fpext float %i.aa to double             ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, 1.000000e-08
  br i1 %i.ad, label %bb.b, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = fneg <2 x float> %i.i
  %i.af = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.i, <2 x float> %i.h, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ah, <2 x float> %i.ag) ; 3 uses
  %i.aj = fneg float %i.l
  %i.ak = fmul float %i.e, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.f, float %i.j, float %i.ak) ; 2 uses
  %i.am = load float, ptr %2, align 4, !tbaa !146 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !147 ; 2 uses
  %i.ap = extractelement <2 x float> %i.ai, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ai, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.aq)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !148 ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.al, float %i.as) ; 2 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.c, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ax = fdiv double 1.000000e+00, %i.ab
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = load float, ptr %4, align 4, !tbaa !151
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !151
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.ba = insertelement <2 x float> %6, float %i.az, i64 1 ; 2 uses
  %i.bb = fneg <2 x float> %i.ba
  %i.bc = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = fmul <2 x float> %i.bd, %i.be
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.bb, <2 x float> %i.bf)
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.bj, %i.bh
  %i.bl = fptrunc <2 x double> %i.bk to <2 x float> ; 3 uses
  %i.bm = shufflevector <2 x float> %i.d, <2 x float> %i.i, <2 x i32> <i32 1, i32 3>
  %i.bn = fmul <2 x float> %i.bm, %i.bl           ; 2 uses
  %shift = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.bn
  %i.bo = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !151
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.c, %i.br
  %i.bt = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.h, %i.bt
  %i.bv = fadd <2 x float> %i.bu, %i.bs           ; 3 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %i.bx = fmul float %i.ao, %i.bw
  %i.by = extractelement <2 x float> %i.bv, i64 0
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.am, float %i.by, float %i.bx)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.bo, float %i.bz)
  %i.cb = fadd float %i.bq, %i.ca
  %i.cc = fneg float %i.cb
  %i.cd = fdiv float %i.cc, %i.av                 ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.ai, %i.cf
  %i.ch = fmul float %i.al, %i.cd
  %i.ci = fadd <2 x float> %i.bv, %i.cg
  %i.cj = fadd float %i.bo, %i.ch
  store <2 x float> %i.ci, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cj, ptr %.sroa.4.0..sroa_idx.i5, align 4, !tbaa !13
  br label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !10, !range !102, !noundef !103
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !102
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !130
  %i.i = load ptr, ptr %1, align 8, !tbaa !104    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.k, ptr %i.a, align 8, !tbaa !197
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !104
  %i.n = load i64, ptr %i.a, align 8, !tbaa !197
  store i64 %i.n, ptr %i.h, align 8, !tbaa !108
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !108
  store i8 %i.p, ptr %i.o, align 1, !tbaa !108
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !131
  %i.s = load ptr, ptr %0, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i8 1, ptr %i.b, align 8, !tbaa !10
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !10
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !108
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !233    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !245
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !13
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !230
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #35
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !13
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
end_hunk_1
