Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 433
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN23btGeneric6DofConstraint13buildJacobianEv:bb.a
_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.l, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 36
  %i.ch = load i8, ptr %i.cg, align 8, !range !36
  %.not = icmp eq i8 %i.ch, 0
  br i1 %.not, label %bb.r, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split: ; preds = %bb.n, %bb.p
  %.sink65 = phi float [ %i.bz, %bb.p ], [ %i.by, %bb.n ]
  %i.ci = fsub float %i.bw, %.sink65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store float %i.ci, ptr %i.cj, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ck, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !32 ; 3 uses
  %i.cl = getelementptr inbounds nuw [84 x i8], ptr %i.bp, i64 %indvars.iv ; 10 uses
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !51, !nonnull !52, !align !53 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.ct = load float, ptr %i.cq, align 8, !tbaa !11, !noalias !103
  %i.cu = load float, ptr %i.cr, align 8, !tbaa !11, !noalias !103
  %i.cv = load float, ptr %i.cs, align 8, !tbaa !11, !noalias !103
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !54, !nonnull !52, !align !53 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dd = load float, ptr %i.da, align 8, !tbaa !11, !noalias !104
  %i.de = load float, ptr %i.db, align 8, !tbaa !11, !noalias !104
  %i.df = load float, ptr %i.dc, align 8, !tbaa !11, !noalias !104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 428
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 428
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.dm = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %i.dn = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %i.do = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0
  %i.dp = load <2 x float>, ptr %i.cn, align 8, !tbaa !11, !noalias !103
  %i.dq = load <2 x float>, ptr %i.co, align 8, !tbaa !11, !noalias !103
  %i.dr = load <2 x float>, ptr %i.cp, align 8, !tbaa !11, !noalias !103
  %i.ds = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dt = fmul <2 x float> %i.dq, %i.ds
  %i.du = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dw = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dw, <2 x float> %i.dv) ; 4 uses
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.dy = load <2 x float>, ptr %i.cx, align 8, !tbaa !11, !noalias !104
  %i.dz = load <2 x float>, ptr %i.cy, align 8, !tbaa !11, !noalias !104
  %i.ea = load <2 x float>, ptr %i.cz, align 8, !tbaa !11, !noalias !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.cl, i8 0, i64 16, i1 false)
  store <2 x float> %i.dx, ptr %i.di, align 4
  %i.eb = fneg float %i.dn                        ; 2 uses
  %i.ec = fneg float %i.dm                        ; 2 uses
  %i.ed = fneg float %i.do                        ; 2 uses
  %i.ee = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.dz, %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.ei, <2 x float> %i.eg)
  %i.ek = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.el, <2 x float> %i.ej) ; 4 uses
  store <2 x float> %i.em, ptr %i.dj, align 4
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %i.cm, i64 436
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 436
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ep = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.de, i64 1
  %i.er = insertelement <2 x float> %i.ds, float %i.eb, i64 1
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.dd, i64 1
  %i.ev = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.ec, i64 1
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ev, <2 x float> %i.es)
  %i.ex = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.df, i64 1
  %i.ez = insertelement <2 x float> %.sroa.2.0.copyload.i, float %i.ed, i64 1
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ez, <2 x float> %i.ew) ; 5 uses
  %i.fb = insertelement <2 x float> %i.fa, float 0.000000e+00, i64 1
  store <2 x float> %i.fb, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !tbaa !32
  %i.fc = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.fa, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.fc, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !tbaa !32
  %i.fd = load <2 x float>, ptr %i.dg, align 4, !tbaa !11
  %i.fe = fmul <2 x float> %i.dx, %i.fd           ; 3 uses
  %i.ff = load float, ptr %i.en, align 4, !tbaa !11
  %i.fg = extractelement <2 x float> %i.fa, i64 0
  %i.fh = fmul float %i.fg, %i.ff                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fh, i64 0
  store <2 x float> %i.fe, ptr %i.dk, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !32
  %i.fi = load <2 x float>, ptr %i.dh, align 4, !tbaa !11
  %i.fj = fmul <2 x float> %i.em, %i.fi           ; 3 uses
  %i.fk = load float, ptr %i.eo, align 4, !tbaa !11
  %i.fl = extractelement <2 x float> %i.fa, i64 1
  %i.fm = fmul float %i.fl, %i.fk                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fm, i64 0
  store <2 x float> %i.fj, ptr %i.dl, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !32
  %i.fn = shufflevector <2 x float> %i.dx, <2 x float> %i.em, <2 x i32> <i32 1, i32 3>
  %i.fo = shufflevector <2 x float> %i.fe, <2 x float> %i.fj, <2 x i32> <i32 1, i32 3>
  %i.fp = fmul <2 x float> %i.fn, %i.fo
  %i.fq = shufflevector <2 x float> %i.fe, <2 x float> %i.fj, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x float> %i.dx, <2 x float> %i.em, <2 x i32> <i32 0, i32 2>
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %i.fp)
  %i.ft = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fm, i64 1
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fa, <2 x float> %i.fs)
  %i.fw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fv)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store float %i.fw, ptr %i.fx, align 4, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.s, label %bb.k

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btGeneric6DofConstraint7getAxisEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !32
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !52
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !60
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51, !nonnull !52, !align !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54, !nonnull !52, !align !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  store i32 0, ptr %1, align 4, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 6, ptr %i.k, align 4, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.p = load i8, ptr %i.o, align 4, !range !36
  %i.q = icmp eq i8 %i.p, 0
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !59
  store i32 5, ptr %i.k, align 4, !tbaa !60
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ 6, %bb.c ], [ 5, %bb.d ]       ; 2 uses
  %i.s = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %2, label %bb.e

2:                                                ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 789
  %4 = load i8, ptr %3, align 1, !tbaa !16, !range !36, !noundef !52
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %bb.e

bb.e:                                             ; preds = %2, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.w = add nuw nsw i32 %i.s, 1                  ; 2 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !59
  %i.x = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.x, ptr %i.k, align 4, !tbaa !60
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1: ; preds = %bb.e, %2
  %i.y = phi i32 [ %i.x, %bb.e ], [ %i.r, %2 ]
  %i.z = phi i32 [ %i.w, %bb.e ], [ %i.s, %2 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !7
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !16, !range !36, !noundef !52
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.ag = add nuw nsw i32 %i.z, 1
  store i32 %i.ag, ptr %1, align 4, !tbaa !59
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.k, align 4, !tbaa !60
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2: ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.ak = load float, ptr %i.ai, align 8, !tbaa !11
  %i.al = load float, ptr %i.aj, align 4, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !35
  %i.ao = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ak, float noundef %i.al, float noundef %i.an) ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 912
  store float %i.ao, ptr %i.ap, align 8, !tbaa !57
  %i.aq = load float, ptr %i.aj, align 4, !tbaa !34 ; 3 uses
  %i.ar = load float, ptr %i.am, align 8, !tbaa !35 ; 3 uses
  %i.as = fcmp ogt float %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 0, ptr %i.at, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.i:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.au = fcmp olt float %i.ao, %i.aq
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 1, ptr %i.av, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.k:                                             ; preds = %bb.i
  %i.aw = fcmp ogt float %i.ao, %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr %i.ax, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %i.ax, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.h, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.az = load i8, ptr %i.ay, align 8, !range !36
  %.not = icmp eq i8 %i.az, 0
  br i1 %.not, label %bb.n, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split: ; preds = %bb.j, %bb.l
  %.sink33 = phi float [ %i.ar, %bb.l ], [ %i.aq, %bb.j ]
  %i.ba = fsub float %i.ao, %.sink33
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.ba, ptr %i.bb, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.bc = load <2 x i32>, ptr %1, align 4, !tbaa !7
  %i.bd = add nsw <2 x i32> %i.bc, <i32 1, i32 -1>
  store <2 x i32> %i.bd, ptr %1, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.bf = load float, ptr %i.be, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !35
  %i.bk = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bf, float noundef %i.bh, float noundef %i.bj) ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %i.bk, ptr %i.bl, align 8, !tbaa !57
  %i.bm = load float, ptr %i.bg, align 4, !tbaa !34 ; 3 uses
  %i.bn = load float, ptr %i.bi, align 8, !tbaa !35 ; 3 uses
  %i.bo = fcmp ogt float %i.bm, %i.bn
  br i1 %i.bo, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = fcmp olt float %i.bk, %i.bm
  br i1 %i.bp, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = fcmp ogt float %i.bk, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.br, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.r:                                             ; preds = %bb.p
  store i32 2, ptr %i.br, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split

bb.s:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %i.bs, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split

bb.t:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 0, ptr %i.bt, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.t, %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.bv = load i8, ptr %i.bu, align 8, !range !36
  %.not.1 = icmp eq i8 %i.bv, 0
  br i1 %.not.1, label %bb.u, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split: ; preds = %bb.r, %bb.s
  %.sink35 = phi float [ %i.bm, %bb.s ], [ %i.bn, %bb.r ]
  %i.bw = fsub float %i.bk, %.sink35
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.bw, ptr %i.bx, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.by = load <2 x i32>, ptr %1, align 4, !tbaa !7
  %i.bz = add nsw <2 x i32> %i.by, <i32 1, i32 -1>
  store <2 x i32> %i.bz, ptr %1, align 4, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !35
  %i.cg = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.cb, float noundef %i.cd, float noundef %i.cf) ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store float %i.cg, ptr %i.ch, align 8, !tbaa !57
  %i.ci = load float, ptr %i.cc, align 4, !tbaa !34 ; 3 uses
  %i.cj = load float, ptr %i.ce, align 8, !tbaa !35 ; 3 uses
  %i.ck = fcmp ogt float %i.ci, %i.cj
  br i1 %i.ck, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = fcmp olt float %i.cg, %i.ci
  br i1 %i.cl, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = fcmp ogt float %i.cg, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  br i1 %i.cm, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cn, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.y:                                             ; preds = %bb.w
  store i32 2, ptr %i.cn, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split

bb.z:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 1, ptr %i.co, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split

bb.aa:                                            ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 0, ptr %i.cp, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.aa, %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.cr = load i8, ptr %i.cq, align 8, !range !36
  %.not.2 = icmp eq i8 %i.cr, 0
  br i1 %.not.2, label %.loopexit, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split: ; preds = %bb.y, %bb.z
  %.sink37 = phi float [ %i.ci, %bb.z ], [ %i.cj, %bb.y ]
  %i.cs = fsub float %i.cg, %.sink37
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float %i.cs, ptr %i.ct, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cu = load <2 x i32>, ptr %1, align 4, !tbaa !7
  %i.cv = add nsw <2 x i32> %i.cu, <i32 1, i32 -1>
  store <2 x i32> %i.cv, ptr %1, align 4, !tbaa !7
  br label %.loopexit
end_hunk_0
