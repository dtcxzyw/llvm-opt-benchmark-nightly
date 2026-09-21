Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 495
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN23btGeneric6DofConstraint13buildJacobianEv:bb.a
  store float %i.cr, ptr %i.cn, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.w:                                             ; preds = %bb.r
  store i32 0, ptr %i.cl, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.l, %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.ct = load i8, ptr %i.cs, align 8, !range !44
  %.not = icmp eq i8 %i.ct, 0
  br i1 %.not, label %bb.x, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.cu, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !11 ; 3 uses
  %i.cv = getelementptr inbounds nuw [84 x i8], ptr %i.bp, i64 %indvars.iv ; 10 uses
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !38, !nonnull !39, !align !40 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dd = load float, ptr %i.da, align 8, !tbaa !14, !noalias !124
  %i.de = load float, ptr %i.db, align 8, !tbaa !14, !noalias !124
  %i.df = load float, ptr %i.dc, align 8, !tbaa !14, !noalias !124
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !41, !nonnull !39, !align !40 ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dn = load float, ptr %i.dk, align 8, !tbaa !14, !noalias !125
  %i.do = load float, ptr %i.dl, align 8, !tbaa !14, !noalias !125
  %i.dp = load float, ptr %i.dm, align 8, !tbaa !14, !noalias !125
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 504
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 504
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.dw = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %i.dx = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %i.dy = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0
  %i.dz = load <2 x float>, ptr %i.cx, align 8, !tbaa !14, !noalias !124
  %i.ea = load <2 x float>, ptr %i.cy, align 8, !tbaa !14, !noalias !124
  %i.eb = load <2 x float>, ptr %i.cz, align 8, !tbaa !14, !noalias !124
  %i.ec = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ed = fmul <2 x float> %i.ea, %i.ec
  %i.ee = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ee, <2 x float> %i.ed)
  %i.eg = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.eg, <2 x float> %i.ef) ; 4 uses
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.ei = load <2 x float>, ptr %i.dh, align 8, !tbaa !14, !noalias !125
  %i.ej = load <2 x float>, ptr %i.di, align 8, !tbaa !14, !noalias !125
  %i.ek = load <2 x float>, ptr %i.dj, align 8, !tbaa !14, !noalias !125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.cv, i8 0, i64 16, i1 false)
  store <2 x float> %i.eh, ptr %i.ds, align 4
  %i.el = fneg float %i.dx                        ; 2 uses
  %i.em = fneg float %i.dw                        ; 2 uses
  %i.en = fneg float %i.dy                        ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ej, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.em, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.es, <2 x float> %i.eq)
  %i.eu = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.ev, <2 x float> %i.et) ; 4 uses
  store <2 x float> %i.ew, ptr %i.dt, align 4
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cw, i64 512
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dg, i64 512
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.ez = insertelement <2 x float> poison, float %i.de, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.do, i64 1
  %i.fb = insertelement <2 x float> %i.ec, float %i.el, i64 1
  %i.fc = fmul <2 x float> %i.fa, %i.fb
  %i.fd = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.dn, i64 1
  %i.ff = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.em, i64 1
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ff, <2 x float> %i.fc)
  %i.fh = insertelement <2 x float> poison, float %i.df, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.dp, i64 1
  %i.fj = insertelement <2 x float> %.sroa.2.0.copyload.i, float %i.en, i64 1
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fj, <2 x float> %i.fg) ; 5 uses
  %i.fl = insertelement <2 x float> %i.fk, float 0.000000e+00, i64 1
  store <2 x float> %i.fl, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !tbaa !11
  %i.fm = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.fk, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.fm, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !tbaa !11
  %i.fn = load <2 x float>, ptr %i.dq, align 8, !tbaa !14
  %i.fo = fmul <2 x float> %i.eh, %i.fn           ; 3 uses
  %i.fp = load float, ptr %i.ex, align 8, !tbaa !14
  %i.fq = extractelement <2 x float> %i.fk, i64 0
  %i.fr = fmul float %i.fq, %i.fp                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fr, i64 0
  store <2 x float> %i.fo, ptr %i.du, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !11
  %i.fs = load <2 x float>, ptr %i.dr, align 8, !tbaa !14
  %i.ft = fmul <2 x float> %i.ew, %i.fs           ; 3 uses
  %i.fu = load float, ptr %i.ey, align 8, !tbaa !14
  %i.fv = extractelement <2 x float> %i.fk, i64 1
  %i.fw = fmul float %i.fv, %i.fu                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fw, i64 0
  store <2 x float> %i.ft, ptr %i.dv, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !11
  %i.fx = shufflevector <2 x float> %i.eh, <2 x float> %i.ew, <2 x i32> <i32 1, i32 3>
  %i.fy = shufflevector <2 x float> %i.fo, <2 x float> %i.ft, <2 x i32> <i32 1, i32 3>
  %i.fz = fmul <2 x float> %i.fx, %i.fy
  %i.ga = shufflevector <2 x float> %i.fo, <2 x float> %i.ft, <2 x i32> <i32 0, i32 2>
  %i.gb = shufflevector <2 x float> %i.eh, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz)
  %i.gd = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fw, i64 1
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.fk, <2 x float> %i.gc)
  %i.gg = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gf)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  store float %i.gg, ptr %i.gh, align 4, !tbaa !63
  br label %bb.x

bb.x:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.y, label %bb.k, !llvm.loop !123

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btGeneric6DofConstraint7getAxisEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1333) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !11
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1333) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1332
  %i.b = load i8, ptr %i.a, align 4, !tbaa !37, !range !44, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !67
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38, !nonnull !39, !align !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41, !nonnull !39, !align !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1333) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  store i32 0, ptr %1, align 4, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 6, ptr %i.k, align 4, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.p = load i8, ptr %i.o, align 4, !range !44
  %i.q = icmp eq i8 %i.p, 0
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !66
  store i32 5, ptr %i.k, align 4, !tbaa !67
  br label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit

_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ 6, %bb.c ], [ 5, %bb.d ]       ; 2 uses
  %i.s = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %2 = icmp eq i32 %i.u, 0
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 813
  %4 = load i8, ptr %3, align 1, !range !44
  %i.v = icmp eq i8 %4, 0
  %or.cond46 = select i1 %2, i1 %i.v, i1 false
  br i1 %or.cond46, label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.w = add nuw nsw i32 %i.s, 1                  ; 2 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !66
  %i.x = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.x, ptr %i.k, align 4, !tbaa !67
  br label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.1

_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.1: ; preds = %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit, %bb.e
  %i.y = phi i32 [ %i.x, %bb.e ], [ %i.r, %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit ]
  %i.z = phi i32 [ %i.w, %bb.e ], [ %i.s, %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !19, !range !44, !noundef !39
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.2, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.ag = add nuw nsw i32 %i.z, 1
  store i32 %i.ag, ptr %1, align 4, !tbaa !66
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.k, align 4, !tbaa !67
  br label %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.2

_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.2: ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 892 ; 2 uses
  %i.ak = load float, ptr %i.ai, align 8, !tbaa !14
  %i.al = load float, ptr %i.aj, align 4, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !43
  %i.ao = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ak, float noundef %i.al, float noundef %i.an) ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 944
  store float %i.ao, ptr %i.ap, align 8, !tbaa !64
  %i.aq = load float, ptr %i.aj, align 4, !tbaa !42 ; 3 uses
  %i.ar = load float, ptr %i.am, align 8, !tbaa !43 ; 3 uses
  %i.as = fcmp ogt float %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 948
  store i32 0, ptr %i.at, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.i:                                             ; preds = %_ZNK25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.au = fcmp olt float %i.ao, %i.aq
  br i1 %i.au, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 948
  store i32 1, ptr %i.av, align 4, !tbaa !22
  %i.aw = fsub float %i.ao, %i.aq                 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 940 ; 3 uses
  store float %i.aw, ptr %i.ax, align 4, !tbaa !23
  %i.ay = fcmp ogt float %i.aw, f0x40490FDB
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = fadd float %i.aw, f0xC0C90FDB
  store float %i.az, ptr %i.ax, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ba = fcmp olt float %i.aw, f0xC0490FDB
  br i1 %i.ba, label %bb.m, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bb = fadd float %i.aw, f0x40C90FDB
  store float %i.bb, ptr %i.ax, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.n:                                             ; preds = %bb.i
  %i.bc = fcmp ogt float %i.ao, %i.ar
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 2 uses
  br i1 %i.bc, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.bd, align 4, !tbaa !22
  %i.be = fsub float %i.ao, %i.ar                 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 940 ; 3 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !23
  %i.bg = fcmp ogt float %i.be, f0x40490FDB
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = fadd float %i.be, f0xC0C90FDB
  store float %i.bh, ptr %i.bf, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.bi = fcmp olt float %i.be, f0xC0490FDB
  br i1 %i.bi, label %bb.r, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bj = fadd float %i.be, f0x40C90FDB
  store float %i.bj, ptr %i.bf, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

bb.s:                                             ; preds = %bb.n
  store i32 0, ptr %i.bd, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.h, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bl = load i8, ptr %i.bk, align 8, !range !44
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.t, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %bb.r, %bb.q, %bb.p, %bb.m, %bb.l, %bb.k, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.bm = load <2 x i32>, ptr %1, align 4, !tbaa !47
  %i.bn = add nsw <2 x i32> %i.bm, <i32 1, i32 -1>
  store <2 x i32> %i.bn, ptr %1, align 4, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !43
  %i.bu = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bp, float noundef %i.br, float noundef %i.bt) ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store float %i.bu, ptr %i.bv, align 8, !tbaa !64
  %i.bw = load float, ptr %i.bq, align 4, !tbaa !42 ; 3 uses
  %i.bx = load float, ptr %i.bs, align 8, !tbaa !43 ; 3 uses
  %i.by = fcmp ogt float %i.bw, %i.bx
  br i1 %i.by, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = fcmp olt float %i.bu, %i.bw
  br i1 %i.bz, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = fcmp ogt float %i.bu, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  br i1 %i.ca, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cb, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.x:                                             ; preds = %bb.v
  store i32 2, ptr %i.cb, align 4, !tbaa !22
  %i.cc = fsub float %i.bu, %i.bx                 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  store float %i.cc, ptr %i.cd, align 4, !tbaa !23
  %i.ce = fcmp ogt float %i.cc, f0x40490FDB
  br i1 %i.ce, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = fcmp olt float %i.cc, f0xC0490FDB
  br i1 %i.cf, label %bb.z, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

bb.z:                                             ; preds = %bb.y
  %i.cg = fadd float %i.cc, f0x40C90FDB
  store float %i.cg, ptr %i.cd, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

bb.aa:                                            ; preds = %bb.x
  %i.ch = fadd float %i.cc, f0xC0C90FDB
  store float %i.ch, ptr %i.cd, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

bb.ab:                                            ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store i32 1, ptr %i.ci, align 4, !tbaa !22
  %i.cj = fsub float %i.bu, %i.bw                 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  store float %i.cj, ptr %i.ck, align 4, !tbaa !23
  %i.cl = fcmp ogt float %i.cj, f0x40490FDB
  br i1 %i.cl, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = fcmp olt float %i.cj, f0xC0490FDB
  br i1 %i.cm, label %bb.ad, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

bb.ad:                                            ; preds = %bb.ac
  %i.cn = fadd float %i.cj, f0x40C90FDB
  store float %i.cn, ptr %i.ck, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

bb.ae:                                            ; preds = %bb.ab
  %i.co = fadd float %i.cj, f0xC0C90FDB
  store float %i.co, ptr %i.ck, align 4, !tbaa !23
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

bb.af:                                            ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1012
  store i32 0, ptr %i.cp, align 4, !tbaa !22
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.af, %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.cr = load i8, ptr %i.cq, align 8, !range !44
  %.not.1 = icmp eq i8 %i.cr, 0
  br i1 %.not.1, label %bb.ag, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %i.cs = load <2 x i32>, ptr %1, align 4, !tbaa !47
  %i.ct = add nsw <2 x i32> %i.cs, <i32 1, i32 -1>
  store <2 x i32> %i.ct, ptr %1, align 4, !tbaa !47
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1224
end_hunk_0
