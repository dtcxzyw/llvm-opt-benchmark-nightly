inline.NumInlined: 433
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN23btGeneric6DofConstraint13buildJacobianEv:bb.a
  %3 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 976
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.n)
  %i.o = load ptr, ptr %0, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(1266) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = load float, ptr %i.s, align 8, !tbaa !10
  %i.ac = load float, ptr %i.h, align 8, !tbaa !10
  %i.ad = fcmp ult float %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load float, ptr %i.x, align 8, !tbaa !10
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ah = load float, ptr %i.y, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ah, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ai = load float, ptr %i.u, align 8, !tbaa !10
  %.sroa.0.0.vec.insert.i18 = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.aj = load float, ptr %i.v, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i19 = insertelement <2 x float> %.sroa.0.0.vec.insert.i18, float %i.aj, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.w, %bb.e ], [ %i.z, %bb.d ]
  %storemerge36 = phi <2 x float> [ %.sroa.0.4.vec.insert.i19, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink = load float, ptr %.sink.in, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i20 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge36, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i20, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.an = load float, ptr %i.am, align 4, !tbaa !10
  %i.ao = fcmp ult float %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.aq = trunc nuw i8 %i.ap to i1                ; 3 uses
  %. = select i1 %i.aq, i64 1044, i64 1108
  %.66 = select i1 %i.aq, i64 1060, i64 1124
  %.67 = select i1 %i.aq, i64 1076, i64 1140
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.66
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.67
  %i.au = load float, ptr %i.ar, align 4, !tbaa !10
  %.sroa.0.0.vec.insert.i.1 = insertelement <2 x float> poison, float %i.au, i64 0
  %i.av = load float, ptr %i.as, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.av, i64 1
  %i.aw = load float, ptr %i.at, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 308
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.ax, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.az = load float, ptr %i.ay, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !10
  %i.bc = fcmp ult float %i.az, %i.bb
  br i1 %i.bc, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.be = trunc nuw i8 %i.bd to i1                ; 3 uses
  %.68 = select i1 %i.be, i64 1048, i64 1112
  %.69 = select i1 %i.be, i64 1064, i64 1128
  %.70 = select i1 %i.be, i64 1080, i64 1144
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.68
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.69
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.70
  %i.bi = load float, ptr %i.bf, align 8, !tbaa !10
  %.sroa.0.0.vec.insert.i.2 = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bj = load float, ptr %i.bg, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.bj, i64 1
  %i.bk = load float, ptr %i.bh, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bk, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.bl, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 476
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.br = load float, ptr %i.bq, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %indvars.iv ; 9 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !35
  %i.bw = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.br, float noundef %i.bt, float noundef %i.bv) ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  store float %i.bw, ptr %i.bx, align 8, !tbaa !94
  %i.by = load float, ptr %i.bs, align 4, !tbaa !34 ; 3 uses
  %i.bz = load float, ptr %i.bu, align 8, !tbaa !35 ; 3 uses
  %i.ca = fcmp ogt float %i.by, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store i32 0, ptr %i.cb, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = fcmp olt float %i.bw, %i.by
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  store i32 1, ptr %i.cd, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ce = fcmp ogt float %i.bw, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.cf, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %i.cf, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

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
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ck, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33 ; 2 uses
  %i.cl = getelementptr inbounds nuw [84 x i8], ptr %i.bp, i64 %indvars.iv ; 10 uses
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !61, !nonnull !62, !align !63 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.ct = load float, ptr %i.cq, align 8, !tbaa !10, !noalias !95
  %i.cu = load float, ptr %i.cr, align 8, !tbaa !10, !noalias !95
  %i.cv = load float, ptr %i.cs, align 8, !tbaa !10, !noalias !95
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !64, !nonnull !62, !align !63 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dd = load float, ptr %i.da, align 8, !tbaa !10, !noalias !98
  %i.de = load float, ptr %i.db, align 8, !tbaa !10, !noalias !98
  %i.df = load float, ptr %i.dc, align 8, !tbaa !10, !noalias !98
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 428
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 428
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.dm = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.dn = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.do = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.cn, align 8, !tbaa !10, !noalias !95
  %i.dq = load <2 x float>, ptr %i.co, align 8, !tbaa !10, !noalias !95
  %i.dr = load <2 x float>, ptr %i.cp, align 8, !tbaa !10, !noalias !95
  %i.ds = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = fmul <2 x float> %i.dq, %i.ds
  %i.du = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dw = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dw, <2 x float> %i.dv) ; 4 uses
  %4 = fmul float %i.cu, %i.dn
  %5 = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.dm, float %4)
  %6 = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.do, float %5) ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %6, i64 0
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.dy = fneg float %i.dm                        ; 2 uses
  %i.dz = fneg float %i.dn                        ; 2 uses
  %i.ea = fneg float %i.do                        ; 2 uses
  %i.eb = load <2 x float>, ptr %i.cx, align 8, !tbaa !10, !noalias !98
  %i.ec = load <2 x float>, ptr %i.cy, align 8, !tbaa !10, !noalias !98
  %i.ed = load <2 x float>, ptr %i.cz, align 8, !tbaa !10, !noalias !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.cl, i8 0, i64 16, i1 false)
  store <2 x float> %i.dx, ptr %i.di, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.ee = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ec, %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ei, <2 x float> %i.eg)
  %i.ek = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.el, <2 x float> %i.ej) ; 4 uses
  %7 = fmul float %i.de, %i.dz
  %8 = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dy, float %7)
  %9 = tail call noundef float @llvm.fmuladd.f32(float %i.df, float %i.ea, float %8) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %9, i64 0
  store <2 x float> %i.em, ptr %i.dj, align 4
  %.sroa.4.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.i, ptr %.sroa.4.0..sroa_idx.i.i.a, align 4, !tbaa !33
  %10 = extractelement <2 x float> %i.dx, i64 0
  %11 = load <2 x float>, ptr %i.dg, align 4, !tbaa !10
  %12 = fmul <2 x float> %i.dx, %11               ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.cm, i64 436
  %14 = load float, ptr %13, align 4, !tbaa !10
  %15 = fmul float %6, %14                        ; 2 uses
  %i.en = insertelement <2 x float> <float poison, float 0.000000e+00>, float %15, i64 0
  store <2 x float> %12, ptr %i.dk, align 4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store <2 x float> %i.en, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !33
  %16 = extractelement <2 x float> %i.em, i64 0
  %i.eo = load <2 x float>, ptr %i.dh, align 4, !tbaa !10
  %i.ep = fmul <2 x float> %i.em, %i.eo           ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.cw, i64 436
  %18 = load float, ptr %17, align 4, !tbaa !10
  %i.eq = fmul float %9, %18                      ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eq, i64 0
  store <2 x float> %i.ep, ptr %i.dl, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.er = fmul <2 x float> %i.dx, %12
  %i.es = extractelement <2 x float> %i.er, i64 1
  %19 = extractelement <2 x float> %12, i64 0
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %10, float %i.es)
  %21 = tail call noundef float @llvm.fmuladd.f32(float %15, float %6, float %20)
  %i.et = fmul <2 x float> %i.em, %i.ep
  %22 = extractelement <2 x float> %i.et, i64 1
  %23 = extractelement <2 x float> %i.ep, i64 0
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %16, float %22)
  %25 = tail call noundef float @llvm.fmuladd.f32(float %i.eq, float %9, float %24)
  %26 = fadd float %21, %25
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store float %26, ptr %i.eu, align 4, !tbaa !86
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
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !103
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  store i32 0, ptr %1, align 4, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 6, ptr %i.k, align 4, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.p = load i8, ptr %i.o, align 4, !range !36
  %i.q = icmp eq i8 %i.p, 0
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !101
  store i32 5, ptr %i.k, align 4, !tbaa !103
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ 6, %bb.c ], [ 5, %bb.d ]       ; 2 uses
  %i.s = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15, !range !36, !noundef !62
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.z = add nuw nsw i32 %i.s, 1                  ; 2 uses
  store i32 %i.z, ptr %1, align 4, !tbaa !101
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !103
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1: ; preds = %bb.f, %bb.e
  %i.ab = phi i32 [ %i.aa, %bb.f ], [ %i.r, %bb.e ]
  %i.ac = phi i32 [ %i.z, %bb.f ], [ %i.s, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !15, !range !36, !noundef !62
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.aj = add nuw nsw i32 %i.ac, 1
  store i32 %i.aj, ptr %1, align 4, !tbaa !101
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.k, align 4, !tbaa !103
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2: ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.an = load float, ptr %i.al, align 8, !tbaa !10
  %i.ao = load float, ptr %i.am, align 4, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !35
  %i.ar = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.an, float noundef %i.ao, float noundef %i.aq) ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 912
  store float %i.ar, ptr %i.as, align 8, !tbaa !94
  %i.at = load float, ptr %i.am, align 4, !tbaa !34 ; 3 uses
  %i.au = load float, ptr %i.ap, align 8, !tbaa !35 ; 3 uses
  %i.av = fcmp ogt float %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 0, ptr %i.aw, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.j:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.ax = fcmp olt float %i.ar, %i.at
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 1, ptr %i.ay, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.l:                                             ; preds = %bb.j
  %i.az = fcmp ogt float %i.ar, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.ba, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %i.ba, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.i, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bc = load i8, ptr %i.bb, align 8, !range !36
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %bb.o, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split: ; preds = %bb.k, %bb.m
  %.sink32 = phi float [ %i.au, %bb.m ], [ %i.at, %bb.k ]
  %i.bd = fsub float %i.ar, %.sink32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.bd, ptr %i.be, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.bf = load <2 x i32>, ptr %1, align 4, !tbaa !4
  %i.bg = add nsw <2 x i32> %i.bf, <i32 1, i32 -1>
  store <2 x i32> %i.bg, ptr %1, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !35
  %i.bn = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bi, float noundef %i.bk, float noundef %i.bm) ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %i.bn, ptr %i.bo, align 8, !tbaa !94
  %i.bp = load float, ptr %i.bj, align 4, !tbaa !34 ; 3 uses
  %i.bq = load float, ptr %i.bl, align 8, !tbaa !35 ; 3 uses
  %i.br = fcmp ogt float %i.bp, %i.bq
  br i1 %i.br, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = fcmp olt float %i.bn, %i.bp
  br i1 %i.bs, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = fcmp ogt float %i.bn, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bu, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
end_hunk_0
