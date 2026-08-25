Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableContactConstraint?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN41btReducedDeformableRigidContactConstraint26calculateTangentialImpulseERfS0_ffRK9btVector3ffS3_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.x = fcmp olt float %i.v, %6
  br i1 %i.x, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink32 = phi float [ %7, %bb.a ], [ %6, %bb.b ] ; 2 uses
  %i.y = fsub float %.sink32, %i.u
  store float %i.y, ptr %1, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.sink = phi float [ %i.v, %bb.b ], [ %.sink32, %.sink.split ]
  store float %.sink, ptr %2, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN45btReducedDeformableNodeRigidContactConstraintC2EP23btReducedDeformableBodyRKN10btSoftBody26DeformableNodeRigidContactERK19btContactSolverInfof(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(856) %2, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %6 = alloca %class.btMatrix3x3, align 16        ; 9 uses
  tail call void @_ZN34btDeformableRigidContactConstraintC2ERKN10btSoftBody22DeformableRigidContactERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull align 8 dereferenceable(848) %2, ptr noundef nonnull align 4 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %4, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  store <2 x float> zeroinitializer, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.g, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load float, ptr %i.j, align 4, !tbaa !51 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.k, ptr %i.l, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float %i.k, ptr %i.m, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store float %i.o, ptr %i.p, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.u = load i32, ptr %i.t, align 8, !tbaa !72
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = and i8 %i.v, 1
  store i8 %i.x, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.z = load i32, ptr %i.y, align 8, !tbaa !82
  %i.aa = icmp eq i32 %i.z, 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !83
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTV45btReducedDeformableNodeRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 848 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !135 ; 4 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !27
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !29
  %i.aj = fneg <2 x float> %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = load float, ptr %i.ak, align 8, !tbaa !29
  %i.am = fneg float %i.al
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.am, i64 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 212
  store <2 x float> %i.aj, ptr %i.an, align 4
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.52.0..sroa_idx, align 4, !tbaa !28
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !30 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 932
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.av = load i32, ptr %i.au, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !142
  %i.ay = sub nsw i32 %i.av, %i.ax
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %i.ay, %bb.b ], [ %i.aq, %bb.a ]
  store i32 %storemerge, ptr %i.c, align 4, !tbaa !46
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !82
  %i.bc = icmp eq i32 %i.bb, 2
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bg = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN23btReducedDeformableBody17getRigidTransformEv(ptr noundef nonnull align 8 dereferenceable(3176) %1) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bj = load <2 x float>, ptr %i.bh, align 4, !tbaa !29
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !29
  %i.bl = fsub <2 x float> %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = fsub float %i.bn, %i.bp
  %.sroa.3.12.vec.insert.i21 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 276
  store <2 x float> %i.bl, ptr %i.br, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284
  store <2 x float> %.sroa.3.12.vec.insert.i21, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %i.bs = load i8, ptr %i.w, align 8, !tbaa !81, !range !84, !noundef !85
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !46
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr dead_on_unwind nonnull writable sret(%class.btMatrix3x3) align 4 %5, ptr noundef nonnull align 8 dereferenceable(3176) %i.bu, i32 noundef %i.bv)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.bz, ptr noundef nonnull align 4 dereferenceable(48) %5, i64 16, i1 false), !tbaa.struct !27
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !27
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.pre = load float, ptr %i.bz, align 4, !tbaa !29
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.pre38 = load float, ptr %.phi.trans.insert37, align 8, !tbaa !29
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.pre40 = load float, ptr %.phi.trans.insert39, align 4, !tbaa !29
  %.pre42 = load float, ptr %i.cb, align 4, !tbaa !29
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.pre44 = load float, ptr %.phi.trans.insert43, align 8, !tbaa !29
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %0, i64 316
  %.pre46 = load float, ptr %.phi.trans.insert45, align 4, !tbaa !29
  %.pre48 = load float, ptr %i.cd, align 4, !tbaa !29
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.pre50 = load float, ptr %.phi.trans.insert49, align 8, !tbaa !29
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %0, i64 332
  %.pre52 = load float, ptr %.phi.trans.insert51, align 4, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !46
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr dead_on_unwind nonnull writable sret(%class.btMatrix3x3) align 4 %6, ptr noundef nonnull align 8 dereferenceable(3176) %i.ce, i32 noundef %i.cf)
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !29, !noalias !226
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !29, !noalias !226
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !29, !noalias !226
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !29, !noalias !226
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !29, !noalias !226
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !29, !noalias !226
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.db = load <4 x float>, ptr %6, align 16
  %7 = load <4 x float>, ptr %i.cj, align 8
  %i.dc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cl, i64 2
  %i.dd = shufflevector <4 x float> %i.db, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.de = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cn, i64 2
  %i.df = shufflevector <4 x float> %7, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dg = fadd <4 x float> %i.dd, %i.df           ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.di = load <4 x float>, ptr %i.co, align 16
  %8 = load <4 x float>, ptr %i.cp, align 8
  %i.dj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cr, i64 2
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dl = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ct, i64 2
  %i.dm = shufflevector <4 x float> %8, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dn = fadd <4 x float> %i.dk, %i.dm           ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.dp = load <4 x float>, ptr %i.cu, align 16
  %9 = load <4 x float>, ptr %i.cv, align 8
  %i.dq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cx, i64 2
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ds = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cz, i64 2
  %i.dt = shufflevector <4 x float> %9, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.du = fadd <4 x float> %i.dr, %i.dt           ; 4 uses
  store <4 x float> %i.dg, ptr %i.da, align 4
  store <4 x float> %i.dn, ptr %i.dh, align 4
  store <4 x float> %i.du, ptr %i.do, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.dv = extractelement <4 x float> %i.dg, i64 0
  %i.dw = extractelement <4 x float> %i.dg, i64 1
  %i.dx = extractelement <4 x float> %i.dg, i64 2
  %i.dy = extractelement <4 x float> %i.dn, i64 0
  %i.dz = extractelement <4 x float> %i.dn, i64 1
  %i.ea = extractelement <4 x float> %i.dn, i64 2
  %i.eb = extractelement <4 x float> %i.du, i64 0
  %i.ec = extractelement <4 x float> %i.du, i64 1
  %i.ed = extractelement <4 x float> %i.du, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ee = phi float [ %.pre52, %bb.g ], [ %i.ed, %bb.h ]
  %i.ef = phi float [ %.pre50, %bb.g ], [ %i.ec, %bb.h ]
  %i.eg = phi float [ %.pre48, %bb.g ], [ %i.eb, %bb.h ]
  %i.eh = phi float [ %.pre46, %bb.g ], [ %i.ea, %bb.h ]
  %i.ei = phi float [ %.pre44, %bb.g ], [ %i.dz, %bb.h ]
  %i.ej = phi float [ %.pre42, %bb.g ], [ %i.dy, %bb.h ]
  %i.ek = phi float [ %.pre40, %bb.g ], [ %i.dx, %bb.h ]
  %i.el = phi float [ %.pre38, %bb.g ], [ %i.dw, %bb.h ]
  %i.em = phi float [ %.pre, %bb.g ], [ %i.dv, %bb.h ]
  %i.en = load float, ptr %i.ah, align 4, !tbaa !29 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !29 ; 4 uses
  %i.eq = fmul float %i.el, %i.ep
  %i.er = call float @llvm.fmuladd.f32(float %i.em, float %i.en, float %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.et = load float, ptr %i.es, align 4, !tbaa !29 ; 4 uses
  %i.eu = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.et, float %i.er)
  %i.ev = fmul float %i.ep, %i.ei
  %i.ew = call float @llvm.fmuladd.f32(float %i.ej, float %i.en, float %i.ev)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.eh, float %i.et, float %i.ew)
  %i.ey = fmul float %i.ep, %i.ef
  %i.ez = call float @llvm.fmuladd.f32(float %i.eg, float %i.en, float %i.ey)
  %i.fa = call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.et, float %i.ez)
  %i.fb = fmul float %i.ep, %i.ex
  %i.fc = call float @llvm.fmuladd.f32(float %i.eu, float %i.en, float %i.fb)
  %i.fd = call noundef float @llvm.fmuladd.f32(float %i.fa, float %i.et, float %i.fc)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.fd, ptr %i.fe, align 8, !tbaa !93
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 0.000000e+00, ptr %i.ff, align 4, !tbaa !229
  %i.fg = load ptr, ptr %0, align 8, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(448) %0)
  ret void
}

declare noundef nonnull align 4 dereferenceable(64) ptr @_ZN23btReducedDeformableBody17getRigidTransformEv(ptr noundef nonnull align 8 dereferenceable(3176)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN45btReducedDeformableNodeRigidContactConstraint12warmStartingEv(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(436) %0) ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0 ; 3 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { <2 x float>, <2 x float> } %i.i(ptr noundef nonnull align 8 dereferenceable(448) %0) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0 ; 3 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 340
  store <2 x float> %i.e, ptr %i.m, align 4
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x float> %i.f, ptr %.sroa.676.0..sroa_idx, align 4, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> %i.k, ptr %i.n, align 4
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 364
  store <2 x float> %i.l, ptr %.sroa.674.0..sroa_idx, align 4, !tbaa !28
  %foldExtExtBinop = fsub <2 x float> %i.k, %i.e
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop80 = fsub <2 x float> %i.k, %i.e
  %i.p = extractelement <2 x float> %foldExtExtBinop80, i64 1 ; 4 uses
  %foldExtExtBinop82 = fsub <2 x float> %i.l, %i.f
  %i.q = extractelement <2 x float> %foldExtExtBinop82, i64 0 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.s = load float, ptr %i.r, align 4, !tbaa !29 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load float, ptr %i.t, align 8, !tbaa !29 ; 2 uses
  %i.v = fmul float %i.p, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.o, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.y = load float, ptr %i.x, align 4, !tbaa !29 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.w) ; 5 uses
  %i.aa = fmul float %i.s, %i.z
  %i.ab = fmul float %i.u, %i.z
  %i.ac = fmul float %i.y, %i.z
  %i.ad = fsub float %i.o, %i.aa                  ; 3 uses
  %i.ae = fsub float %i.p, %i.ab                  ; 3 uses
  %i.af = fsub float %i.q, %i.ac                  ; 3 uses
  %i.ag = fmul float %i.ae, %i.ae
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ag)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ah)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ai) ; 2 uses
  %i.aj = fcmp olt float %sqrt.i.i, f0x34000000
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !229
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float 0.000000e+00, ptr %i.am, align 4, !tbaa !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !83, !range !84, !noundef !85
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ar = fmul float %i.ad, %i.aq                 ; 6 uses
  %.sroa.0.0.vec.insert.i13 = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.as = fmul float %i.ae, %i.aq                 ; 6 uses
  %.sroa.0.4.vec.insert.i14 = insertelement <2 x float> %.sroa.0.0.vec.insert.i13, float %i.as, i64 1
  %i.at = fmul float %i.af, %i.aq                 ; 6 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <2 x float> %.sroa.0.4.vec.insert.i14, ptr %i.au, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.az = load float, ptr %i.ay, align 8, !tbaa !29
  %i.ba = fmul float %i.az, %i.as
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ar, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !29
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.at, float %i.bb)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !29
  %i.bj = fmul float %i.as, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.ar, float %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !29
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.at, float %i.bk)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.br = load float, ptr %i.bq, align 8, !tbaa !29
  %i.bs = fmul float %i.as, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.ar, float %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !29
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.at, float %i.bt)
  %i.bx = fmul float %i.as, %i.bn
  %i.by = tail call float @llvm.fmuladd.f32(float %i.be, float %i.ar, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.at, float %i.by) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.bz, ptr %i.ca, align 4, !tbaa !229
  %i.cb = fdiv float 1.000000e+00, %i.bz          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %i.cb, ptr %i.cc, align 4, !tbaa !95
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float 0.000000e+00, ptr %i.cd, align 8, !tbaa !230
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %i.ce, align 8, !tbaa !97
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 816
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 832
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !27
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 292
  %1 = load <4 x float>, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %2 = load <4 x float>, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 300
  %3 = load <4 x float>, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !29 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 308
  %4 = load <4 x float>, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %5 = load <4 x float>, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 316
  %6 = load <4 x float>, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 324
  %7 = load <4 x float>, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %8 = load <4 x float>, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 332
  %9 = load <4 x float>, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.da = load float, ptr %i.cz, align 4, !tbaa !29
  %i.db = load <2 x float>, ptr %i.ci, align 4, !tbaa !29 ; 3 uses
  %i.dc = load float, ptr %i.cn, align 8, !tbaa !29
  %i.dd = load <2 x float>, ptr %i.ck, align 4, !tbaa !29 ; 2 uses
  %i.de = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %i.db, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.dg = fmul <2 x float> %i.de, %i.df
  %i.dh = shufflevector <4 x float> %1, <4 x float> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <2 x float> %i.db, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.di, <2 x float> %i.dg)
  %i.dk = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.da, i64 1 ; 4 uses
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dm, <2 x float> %i.dj)
  %i.do = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.do, %i.df
  %i.dq = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.di, <2 x float> %i.dp)
  %i.ds = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.dm, <2 x float> %i.dr)
  %i.du = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.du, %i.df
  %i.dw = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.di, <2 x float> %i.dv)
  %i.dy = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dm, <2 x float> %i.dx)
  %i.ea = fmul <2 x float> %i.df, %i.dt
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.di, <2 x float> %i.ea)
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.dm, <2 x float> %i.eb) ; 2 uses
  store <2 x float> %i.ec, ptr %i.cx, align 4, !tbaa !29
  %i.ed = fdiv <2 x float> splat (float 1.000000e+00), %i.ec ; 2 uses
  store <2 x float> %i.ed, ptr %i.cy, align 4, !tbaa !29
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = extractelement <2 x float> %i.db, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.eg = phi float [ %i.cb, %bb.d ], [ %i.ee, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.eh = phi float [ %i.at, %bb.d ], [ %i.cq, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.ei = phi float [ %i.as, %bb.d ], [ %i.dc, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.ej = phi float [ %i.ar, %bb.d ], [ %i.ef, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.el = load float, ptr %i.ek, align 8, !tbaa !231 ; 3 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eo = load float, ptr %i.en, align 8, !tbaa !45
  %i.ep = fdiv float %i.el, %i.eo
  %i.eq = fadd float %i.z, %i.ep
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.es = load float, ptr %i.er, align 8, !tbaa !52
  %i.et = fmul float %i.el, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ev = load float, ptr %i.eu, align 8, !tbaa !45
  %i.ew = fdiv float %i.et, %i.ev
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.06 = phi float [ 0.000000e+00, %bb.g ], [ %i.ew, %bb.h ]
  %.0 = phi float [ %i.eq, %bb.g ], [ %i.z, %bb.h ]
  %i.ex = fadd float %.06, %.0
  %i.ey = fneg float %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !93
  %i.fb = fdiv float %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.fb, ptr %i.fc, align 4, !tbaa !91
  %i.fd = fmul float %i.p, %i.ei
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.o, float %i.ej, float %i.fd)
  %i.ff = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.eh, float %i.fe)
  %i.fg = fmul float %i.eg, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %i.fg, ptr %i.fh, align 8, !tbaa !94
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !83, !range !84, !noundef !85
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !29
  %i.fp = fmul float %i.p, %i.fo
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.o, float %i.fm, float %i.fp)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !29
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.fs, float %i.fq)
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !97
  %i.fw = fmul float %i.fv, %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.fw, ptr %i.fx, align 4, !tbaa !96
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint5getVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !28
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint10getDeltaVaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !81, !range !84, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.e = load i8, ptr %i.d, align 1, !tbaa !83, !range !84, !noundef !85
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load float, ptr %i.k, align 4, !tbaa !29 ; 2 uses
  %i.o = load float, ptr %i.j, align 4, !tbaa !29 ; 2 uses
  %i.p = fneg float %i.n
  %i.q = load <2 x float>, ptr %i.l, align 4, !tbaa !29 ; 3 uses
  %i.r = load <2 x float>, ptr %i.m, align 8, !tbaa !29 ; 3 uses
  %i.s = fneg <2 x float> %i.r
  %i.t = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.u = insertelement <2 x float> %i.t, float %i.o, i64 1
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.n, i64 1
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = extractelement <2 x float> %i.q, i64 0
  %i.aa = fmul float %i.z, %i.p
  %i.ab = extractelement <2 x float> %i.r, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.o, float %i.ab, float %i.aa)
  %i.ad = load <2 x float>, ptr %i.i, align 4, !tbaa !29
  %i.ae = fadd <2 x float> %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ag = load float, ptr %i.af, align 4, !tbaa !29
  %i.ah = fadd float %i.ac, %i.ag
  %.sroa.3.12.vec.insert.i32 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56 ; 12 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  %i.am = load i32, ptr %i.al, align 8, !tbaa !82
  %i.an = and i32 %i.am, 64
  %.not.i = icmp eq i32 %i.an, 0
  %.not87 = icmp eq ptr %i.ak, null
  %.not = or i1 %.not87, %.not.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 376
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 628
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !102 ; 2 uses
  %i.as = add i32 %i.ar, 6                        ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !98 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 416
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !98 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 624
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !98 ; 15 uses
  %i.bb = icmp sgt i32 %i.ar, -6                  ; 2 uses
  br i1 %i.bb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %smax = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bc = icmp slt i32 %i.as, 4
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !29
  %i.bf = fmul <2 x float> %i.be, zeroinitializer
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !29
  %i.bi = fmul float %i.bh, 0.000000e+00
  br label %._crit_edge94

.lr.ph93.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph93.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph93.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph93.preheader.unr-lcssa ]
  %.08688.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cq, %.lr.ph93.preheader.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
end_hunk_0
