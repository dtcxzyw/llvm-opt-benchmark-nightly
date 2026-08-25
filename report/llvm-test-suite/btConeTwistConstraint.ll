Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConeTwistConstraint?download=true
inline.NumInlined: 921
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN21btConeTwistConstraintC2ER11btRigidBodyRK11btTransform:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 572
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.a, i64 16, i1 false), !tbaa.struct !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 428
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 444
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 460
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !23
  store <4 x i8> zeroinitializer, ptr %i.i, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600
  store i8 0, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float -1.000000e+00, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 476
  store <4 x float> <float 1.000000e+00, float 3.000000e-01, float 1.000000e+00, float f0x3C23D70A>, ptr %i.p, align 4, !tbaa !27
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 5.000000e-02>, ptr %i.o, align 4, !tbaa !27
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !34
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 3, ptr %1, align 4, !tbaa !34
  store i32 3, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37, !nonnull !33, !align !38 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39, !nonnull !33, !align !38 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(48) %i.k, ptr noundef nonnull align 4 dereferenceable(48) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.n = load i8, ptr %i.m, align 2, !tbaa !30, !range !32, !noundef !33
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %1, align 4, !tbaa !34     ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %1, align 4, !tbaa !34
  %i.r = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.d, align 4, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.u = load float, ptr %i.t, align 4, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.w = load float, ptr %i.v, align 8, !tbaa !41 ; 2 uses
  %i.x = fcmp olt float %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.z = load float, ptr %i.y, align 8, !tbaa !42
  %i.aa = fcmp olt float %i.z, %i.w
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.p, 2
  store i32 %i.ab, ptr %1, align 4, !tbaa !34
  %i.ac = add nsw i32 %i.r, -2
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29, !range !32, !noundef !33
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %1, align 4, !tbaa !34
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %1, align 4, !tbaa !34
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !36
  %i.aj = add nsw i32 %i.ai, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.h
  %.sink = phi i32 [ %i.aj, %bb.h ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) initializes((548, 556), (573, 575)) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %6 = alloca %class.btQuaternion, align 8        ; 5 uses
  %7 = alloca %class.btQuaternion, align 8        ; 5 uses
  %8 = alloca %class.btQuaternion, align 8        ; 5 uses
  %9 = alloca %class.btQuaternion, align 8        ; 5 uses
  %10 = alloca %class.btTransform, align 16       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 548
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 574 ; 7 uses
  store i8 0, ptr %i.d, align 2, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = load i8, ptr %i.e, align 8, !tbaa !25, !range !32, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  %.not = xor i1 %i.g, true
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.i = load i8, ptr %i.h, align 1, !range !32
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.l = load float, ptr %i.k, align 4, !tbaa !27 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.n = load float, ptr %i.m, align 8, !tbaa !27 ; 5 uses
  %i.o = fmul float %i.n, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.r = load float, ptr %i.q, align 4, !tbaa !27 ; 4 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.u = load float, ptr %i.t, align 8, !tbaa !27 ; 5 uses
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.s)
  %i.w = fdiv float 2.000000e+00, %i.v            ; 3 uses
  %i.x = fmul float %i.l, %i.w                    ; 2 uses
  %i.y = fmul float %i.n, %i.w                    ; 3 uses
  %i.z = fmul float %i.r, %i.w                    ; 4 uses
  %i.aa = fmul float %i.u, %i.x                   ; 2 uses
  %i.ab = fmul float %i.u, %i.y                   ; 2 uses
  %i.ac = fmul float %i.u, %i.z                   ; 2 uses
  %i.ad = fmul float %i.l, %i.x                   ; 2 uses
  %i.ae = fmul float %i.l, %i.y                   ; 2 uses
  %i.af = fmul float %i.l, %i.z                   ; 2 uses
  %i.ag = fmul float %i.n, %i.y                   ; 2 uses
  %i.ah = fmul float %i.n, %i.z                   ; 2 uses
  %i.ai = fmul float %i.r, %i.z                   ; 2 uses
  %i.aj = fadd float %i.ag, %i.ai
  %i.ak = fsub float 1.000000e+00, %i.aj          ; 3 uses
  %i.al = fsub float %i.ae, %i.ac                 ; 3 uses
  %i.am = fadd float %i.af, %i.ab                 ; 2 uses
  %i.an = fadd float %i.ae, %i.ac                 ; 3 uses
  %i.ao = fadd float %i.ad, %i.ai
  %i.ap = fsub float 1.000000e+00, %i.ao          ; 3 uses
  %i.aq = fsub float %i.ah, %i.aa                 ; 2 uses
  %i.ar = fsub float %i.af, %i.ab
  %i.as = fadd float %i.ah, %i.aa
  %i.at = fadd float %i.ad, %i.ag
  %i.au = fsub float 1.000000e+00, %i.at          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !27, !noalias !43
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27, !noalias !43
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !27, !noalias !48
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27, !noalias !48
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %11 = load float, ptr %i.by, align 4, !tbaa !27, !noalias !49
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !27, !noalias !49
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !27, !noalias !49 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !27, !noalias !54 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cp = load float, ptr %i.co, align 8, !tbaa !27, !noalias !54 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27, !noalias !54 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !27, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cv = load <2 x float>, ptr %1, align 4, !tbaa !27, !noalias !43 ; 3 uses
  %i.cw = load <2 x float>, ptr %i.av, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.aw, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.ay, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.cz = load <2 x float>, ptr %i.bg, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.da = load <2 x float>, ptr %i.bj, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.db = shufflevector <2 x float> %i.cx, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dc = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dc, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.df = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.dg = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 4 uses
  %i.di = fmul <4 x float> %i.db, %i.dh
  %i.dj = shufflevector <2 x float> %i.cw, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dk = insertelement <4 x float> %i.dc, float -0.000000e+00, i64 3
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 3 uses
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dm, <4 x float> %i.di)
  %i.do = shufflevector <2 x float> %i.cy, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dp = shufflevector <2 x float> %i.cv, <2 x float> %i.cx, <4 x i32> <i32 1, i32 3, i32 3, i32 poison> ; 2 uses
  %i.dq = insertelement <4 x float> %i.dp, float 0.000000e+00, i64 3
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dh, <4 x i32> <i32 1, i32 5, i32 6, i32 poison>
  %i.ds = insertelement <4 x float> %i.dr, float 1.000000e+00, i64 3
  %i.dt = fmul <4 x float> %i.dq, %i.ds
  %i.du = shufflevector <2 x float> %i.cw, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.dm, <4 x float> %i.dt)
  %i.dw = shufflevector <2 x float> %i.cy, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dx = insertelement <4 x float> %i.dh, float 0.000000e+00, i64 3
  %i.dy = insertelement <4 x float> %i.dx, float %i.bd, i64 1
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ea = insertelement <4 x float> %i.dh, float 1.000000e+00, i64 3
  %i.eb = insertelement <4 x float> %i.ea, float %i.bd, i64 0
  %i.ec = fmul <4 x float> %i.dz, %i.eb
  %i.ed = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bb, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.dm, <4 x float> %i.ec)
  %i.eg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bf, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ei = extractelement <2 x float> %i.da, i64 0
  %i.ej = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ar, i64 0 ; 3 uses
  %i.ek = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.as, i64 0 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.em = load <2 x float>, ptr %2, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.en = load <2 x float>, ptr %i.cf, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.er = fmul <2 x float> %i.ep, %i.eq
  %i.es = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 0, i32 2> ; 4 uses
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %i.et = insertelement <2 x float> %12, float %i.ch, i64 1 ; 4 uses
  %i.eu = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.eq, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.ey, <2 x float> %i.ew)
  %i.fa = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.fb, <2 x float> %i.ez)
  %i.fd = load <2 x float>, ptr %i.cs, align 4, !tbaa !27, !noalias !54
  %i.fe = fadd <2 x float> %i.fd, %i.fc
  %i.ff = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.es, <2 x float> %i.er)
  %i.fk = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.et, <2 x float> %i.fj) ; 4 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0 ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x float> poison, float %i.au, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = extractelement <2 x float> %i.fm, i64 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fu = load <2 x float>, ptr %i.bm, align 4, !tbaa !27, !noalias !48 ; 2 uses
  %13 = load <2 x float>, ptr %i.bp, align 4, !tbaa !27, !noalias !48
  %i.fv = load float, ptr %i.cc, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.fw = load float, ptr %i.bz, align 8, !tbaa !27, !noalias !49 ; 2 uses
  %i.fx = load float, ptr %i.cd, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.fy = load float, ptr %i.ca, align 8, !tbaa !27, !noalias !49 ; 2 uses
  %i.fz = load float, ptr %i.ce, align 4, !tbaa !27, !noalias !49 ; 2 uses
  %i.ga = load float, ptr %i.cb, align 8, !tbaa !27, !noalias !49 ; 2 uses
  %i.gb = load float, ptr %i.cj, align 4, !tbaa !27, !noalias !49 ; 4 uses
  %i.gc = load float, ptr %i.ci, align 4, !tbaa !27, !noalias !49 ; 4 uses
  %i.gd = fmul float %i.bv, %i.gb
  %i.ge = fmul float %i.fy, %i.gb
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.gc, float %i.ge)
  %i.gg = fmul float %i.fx, %i.gb
  %i.gh = fmul float %i.gb, %i.cp
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.cn, float %i.gh)
  %i.gj = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.cr, float %i.gi)
  %i.gk = fadd float %i.gj, %i.cu
  %i.gl = load float, ptr %i.az, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %14 = load float, ptr %i.ax, align 4, !tbaa !27, !noalias !43
  %i.gm = load float, ptr %i.bi, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.gn = load float, ptr %i.bh, align 4, !tbaa !27, !noalias !43
  %i.go = load float, ptr %i.bl, align 4, !tbaa !27, !noalias !43 ; 2 uses
  %i.gp = load float, ptr %i.bk, align 4, !tbaa !27, !noalias !43
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.cl, float %i.gf) ; 4 uses
  %i.gr = fmul float %i.an, %i.gq
  %i.gs = fmul float %i.ap, %i.gq
  %i.gt = fmul float %i.aq, %i.gq
  %i.gu = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.gl, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.gm, i64 1
  %i.gw = insertelement <4 x float> %i.gv, float %i.go, i64 2 ; 3 uses
  %i.gx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.gw, <4 x float> %i.dn) ; 5 uses
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.gw, <4 x float> %i.dv) ; 5 uses
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.gw, <4 x float> %i.ef) ; 5 uses
  %15 = insertelement <4 x float> poison, float %14, i64 0
  %i.ha = insertelement <4 x float> %15, float %i.gn, i64 1
  %i.hb = insertelement <4 x float> %i.ha, float %i.gp, i64 2
  %i.hc = insertelement <4 x float> %i.hb, float %i.gq, i64 3
  %i.hd = shufflevector <2 x float> %i.fu, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.he = fmul <4 x float> %i.hc, %i.hd
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.gc, float %i.gd)
  %i.hg = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.cl, float %i.hf) ; 4 uses
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.gc, float %i.gg)
  %i.hi = tail call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.cl, float %i.hh) ; 3 uses
  %i.hj = shufflevector <2 x float> %i.cv, <2 x float> %i.cz, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float %i.ei, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %i.hg, i64 3
  %i.hm = shufflevector <2 x float> %i.fu, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %i.hm, <4 x float> %i.he)
  %i.ho = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.gm, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.go, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hi, i64 3
  %i.hs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bo, i64 0
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %i.ht, <4 x float> %i.hn)
  %i.hv = insertelement <4 x float> poison, float %i.br, i64 2
  %i.hw = insertelement <4 x float> %i.hv, float %i.gk, i64 3
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hx = shufflevector <4 x float> %16, <4 x float> %i.hw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hy = fadd <4 x float> %i.hu, %i.hx           ; 4 uses
  %i.hz = extractelement <4 x float> %i.hy, i64 0
  %i.ia = fneg float %i.hz                        ; 3 uses
  %i.ib = extractelement <4 x float> %i.hy, i64 1
  %i.ic = fneg float %i.ib                        ; 3 uses
  %i.id = extractelement <4 x float> %i.hy, i64 2
  %i.ie = fneg float %i.id                        ; 3 uses
  %i.if = extractelement <4 x float> %i.gx, i64 1
  %i.ig = fmul float %i.if, %i.ic
  %i.ih = extractelement <4 x float> %i.gx, i64 0
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ia, float %i.ig)
  %i.ij = extractelement <4 x float> %i.gx, i64 2
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ie, float %i.ii) ; 2 uses
  %i.il = extractelement <4 x float> %i.gy, i64 1
  %i.im = fmul float %i.il, %i.ic
  %i.in = extractelement <4 x float> %i.gy, i64 0
  %i.io = tail call float @llvm.fmuladd.f32(float %i.in, float %i.ia, float %i.im)
  %i.ip = extractelement <4 x float> %i.gy, i64 2
  %i.iq = tail call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.ie, float %i.io) ; 2 uses
  %i.ir = extractelement <4 x float> %i.gz, i64 1
  %i.is = fmul float %i.ir, %i.ic
  %i.it = extractelement <4 x float> %i.gz, i64 0
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.it, float %i.ia, float %i.is)
  %i.iv = extractelement <4 x float> %i.gz, i64 2
  %i.iw = tail call noundef float @llvm.fmuladd.f32(float %i.iv, float %i.ie, float %i.iu) ; 2 uses
  %i.ix = insertelement <4 x float> %i.gy, float 0.000000e+00, i64 3 ; 2 uses
  %i.iy = insertelement <4 x float> %i.gx, float 0.000000e+00, i64 3 ; 2 uses
  %i.iz = insertelement <4 x float> %i.gz, float 0.000000e+00, i64 3 ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul <2 x float> %i.jb, %i.eq
  %i.jd = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.je, <2 x float> %i.es, <2 x float> %i.jc)
  %i.jg = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.et, <2 x float> %i.jf) ; 4 uses
  %i.jj = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.jk, %i.eq
  %i.jm = extractelement <2 x float> %i.ji, i64 0 ; 2 uses
  %i.jn = fmul float %i.an, %i.jm
  %i.jo = fmul float %i.ap, %i.jm
  %i.jp = extractelement <2 x float> %i.ji, i64 1 ; 2 uses
  %i.jq = fmul float %i.an, %i.jp
  %i.jr = fmul float %i.ap, %i.jp
  %i.js = fmul <2 x float> %i.fg, %i.ji
  %i.jt = fmul <2 x float> %i.ji, zeroinitializer
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.fn, float %i.jn)
  %i.jv = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.es, <2 x float> %i.jl)
  %i.jy = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.et, <2 x float> %i.jx) ; 4 uses
  %i.kb = insertelement <2 x float> %i.ka, float 0.000000e+00, i64 1 ; 2 uses
  %i.kc = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ju, i64 0
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.kb, <2 x float> %i.kc) ; 2 uses
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.al, float %i.fn, float %i.jo)
  %i.kg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.kf, i64 0
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.kb, <2 x float> %i.kg) ; 2 uses
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kj = fmul <4 x float> %i.gy, %i.ki
  %i.kk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.ke, <4 x float> %i.kj)
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fm, <2 x float> %i.js)
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.ka, <2 x float> %i.kl) ; 2 uses
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.kp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.ko, <4 x float> %i.kk)
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.fs, float %i.jq)
  %i.kr = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ka, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.ks = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.kq, i64 0
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.kr, <2 x float> %i.ks) ; 2 uses
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.al, float %i.fs, float %i.jr)
  %i.kw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.kv, i64 0
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.kr, <2 x float> %i.kw) ; 2 uses
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> zeroinitializer, <2 x float> %i.jt)
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> zeroinitializer, <2 x float> %i.kz)
  %i.lb = fadd <2 x float> %i.la, %i.fe
  %i.lc = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.ld = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = shufflevector <2 x float> %i.kh, <2 x float> %i.kx, <2 x i32> <i32 0, i32 2>
  %i.lf = fmul <2 x float> %i.ld, %i.le
  %i.lg = shufflevector <2 x float> %i.kd, <2 x float> %i.kt, <2 x i32> <i32 0, i32 2>
  %i.lh = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.li, <2 x float> %i.lf)
  %i.lk = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.km, <2 x float> %i.ll, <2 x float> %i.lj)
  %i.ln = fadd <2 x float> %i.lm, %i.lb
  store <4 x float> %i.kp, ptr %10, align 16, !alias.scope !55
  %i.lo = fmul <4 x float> %i.ix, %i.ky
  %i.lp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iy, <4 x float> %i.ku, <4 x float> %i.lo)
  %i.lq = shufflevector <4 x float> %i.kn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.lr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.lq, <4 x float> %i.lp)
  store <4 x float> %i.lr, ptr %i.el, align 16, !alias.scope !55
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.hg, float %i.gr)
  %i.lt = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hi, i64 0 ; 2 uses
  %i.lu = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ls, i64 0
  %i.lv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.lt, <2 x float> %i.lu) ; 2 uses
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.al, float %i.hg, float %i.gs)
  %i.ly = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.lx, i64 0
  %i.lz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.lt, <2 x float> %i.ly) ; 2 uses
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.am, float %i.hg, float %i.gt)
  %i.mc = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.hi, float %i.mb) ; 2 uses
  %i.md = fmul <4 x float> %i.ix, %i.ma
  %i.me = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iy, <4 x float> %i.lw, <4 x float> %i.md)
  %i.mf = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.mc, i64 0
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iz, <4 x float> %i.mg, <4 x float> %i.me)
  %i.mi = extractelement <2 x float> %i.lz, i64 0
  %i.mj = fmul float %i.iq, %i.mi
  %i.mk = extractelement <2 x float> %i.lv, i64 0
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.ik, float %i.mj)
  %i.mm = tail call noundef float @llvm.fmuladd.f32(float %i.mc, float %i.iw, float %i.ml)
  %i.mn = extractelement <4 x float> %i.hy, i64 3
  %i.mo = fadd float %i.mm, %i.mn
  %.sroa.3.12.vec.insert.i.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mo, i64 0
  store <4 x float> %i.mh, ptr %i.ft, align 16, !alias.scope !55
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <2 x float> %i.ln, ptr %i.mp, align 16, !alias.scope !55
  %.sroa.4.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %10, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i89, ptr %.sroa.4.0..sroa_idx.i99, align 8, !tbaa !24, !alias.scope !55
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %.fca.0.load.i = load <2 x float>, ptr %9, align 8 ; 4 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.sroa.0463.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 2 uses
  %.sroa.5464.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 508
  %foldExtExtBinop = fmul <2 x float> %.fca.0.load.i, %.fca.0.load.i
  %i.mr = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ms = call float @llvm.fmuladd.f32(float %.sroa.0463.0.vec.extract, float %.sroa.0463.0.vec.extract, float %i.mr)
  %i.mt = call noundef float @llvm.fmuladd.f32(float %.sroa.5464.8.vec.extract, float %.sroa.5464.8.vec.extract, float %i.ms)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.mt)
  %i.mu = fdiv float 1.000000e+00, %sqrt.i.i
  %i.mv = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.mw = insertelement <4 x float> %i.mv, float 0.000000e+00, i64 3
  %i.mx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.mu, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mz = fmul <4 x float> %i.mw, %i.my
  store <4 x float> %i.mz, ptr %i.mq, align 4, !tbaa !24
  %.sroa.5464.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1
  %i.na = call noundef float @acosf(float noundef %.sroa.5464.12.vec.extract) #18, !tbaa !4
  %i.nb = fmul float %i.na, 2.000000e+00          ; 2 uses
  store float %i.nb, ptr %i.a, align 8, !tbaa !58
  %i.nc = call noundef float @llvm.fabs.f32(float %i.nb)
  %i.nd = fcmp olt float %i.nc, f0x34000000
  br i1 %i.nd, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 2, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %8)
  %.fca.0.load.i100 = load <2 x float>, ptr %8, align 8 ; 5 uses
  %.fca.1.gep.i102 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.fca.1.load.i103 = load <2 x float>, ptr %.fca.1.gep.i102, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.ne, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %.fca.0.load.i105 = load <2 x float>, ptr %7, align 8 ; 5 uses
  %.fca.1.gep.i107 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i108 = load <2 x float>, ptr %.fca.1.gep.i107, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.5448.12.vec.extract = extractelement <2 x float> %.fca.1.load.i103, i64 1 ; 2 uses
  %.sroa.0445.0.vec.extract = extractelement <2 x float> %.fca.0.load.i105, i64 0 ; 2 uses
  %.sroa.0447.0.vec.extract = extractelement <2 x float> %.fca.0.load.i100, i64 0 ; 2 uses
  %.sroa.5446.12.vec.extract = extractelement <2 x float> %.fca.1.load.i108, i64 1 ; 2 uses
  %.sroa.0447.4.vec.extract = extractelement <2 x float> %.fca.0.load.i100, i64 1 ; 2 uses
  %.sroa.5446.8.vec.extract = extractelement <2 x float> %.fca.1.load.i108, i64 0 ; 2 uses
  %.sroa.5448.8.vec.extract = extractelement <2 x float> %.fca.1.load.i103, i64 0
  %.sroa.0445.4.vec.extract = extractelement <2 x float> %.fca.0.load.i105, i64 1 ; 2 uses
  %i.nf = shufflevector <2 x float> %.fca.0.load.i100, <2 x float> %.fca.1.load.i103, <2 x i32> <i32 1, i32 2>
  %i.ng = shufflevector <2 x float> %.fca.1.load.i108, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nh = fmul <2 x float> %i.nf, %i.ng
  %i.ni = shufflevector <2 x float> %.fca.1.load.i103, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nj = shufflevector <2 x float> %.fca.0.load.i105, <2 x float> %.fca.1.load.i108, <2 x i32> <i32 1, i32 2>
  %i.nk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.nj, <2 x float> %i.nh)
  %i.nl = shufflevector <2 x float> %.fca.1.load.i103, <2 x float> %.fca.0.load.i100, <2 x i32> <i32 0, i32 2>
  %i.nm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %.fca.0.load.i105, <2 x float> %i.nk)
  %i.nn = fneg <2 x float> %.fca.0.load.i100
  %i.no = fneg float %.sroa.0447.4.vec.extract
  %i.np = shufflevector <2 x float> %.fca.1.load.i108, <2 x float> %.fca.0.load.i105, <2 x i32> <i32 0, i32 2>
  %i.nq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %i.np, <2 x float> %i.nm) ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a
  %.sroa.020.0.i = phi <2 x float> [ %i.sr, %bb.f ], [ <float -0.000000e+00, float 1.000000e+00>, %bb.e ] ; 2 uses
  %.sroa.526.0.i = phi <2 x float> [ %i.sv, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.0379.0.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 0 ; 3 uses
  %.sroa.0379.4.vec.extract = extractelement <2 x float> %.sroa.020.0.i, i64 1 ; 3 uses
  %i.sw = fmul float %.sroa.0379.4.vec.extract, %.sroa.0379.4.vec.extract
  %i.sx = call float @llvm.fmuladd.f32(float %.sroa.0379.0.vec.extract, float %.sroa.0379.0.vec.extract, float %i.sw)
  %.sroa.11.8.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 0 ; 3 uses
  %i.sy = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract, float %.sroa.11.8.vec.extract, float %i.sx)
  %.sroa.11.12.vec.extract = extractelement <2 x float> %.sroa.526.0.i, i64 1 ; 3 uses
  %i.sz = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract, float %.sroa.11.12.vec.extract, float %i.sy)
  %sqrt.i.i149 = call noundef float @llvm.sqrt.f32(float %i.sz)
  %i.ta = fdiv float 1.000000e+00, %sqrt.i.i149   ; 4 uses
  %i.tb = fmul float %.sroa.11.12.vec.extract, %i.ta ; 5 uses
  %i.tc = fmul float %.sroa.0379.0.vec.extract, %i.ta ; 6 uses
  %i.td = fmul float %.sroa.11.8.vec.extract, %i.ta ; 6 uses
  %i.te = fmul float %.sroa.0379.4.vec.extract, %i.ta ; 6 uses
  %i.tf = fneg float %i.tc                        ; 2 uses
  %i.tg = fneg float %i.td                        ; 2 uses
  %i.th = fneg float %i.te                        ; 2 uses
  %i.ti = fmul float %i.qk, %i.th
  %i.tj = fmul float %i.qk, %i.tf
  %i.tk = call float @llvm.fmuladd.f32(float %i.tb, float %i.ql, float %i.ti)
  %i.tl = call float @llvm.fmuladd.f32(float %i.tb, float %i.qq, float %i.tj)
  %i.tm = call float @llvm.fmuladd.f32(float %i.tg, float %i.qq, float %i.tk)
  %i.tn = call float @llvm.fmuladd.f32(float %i.th, float %i.qo, float %i.tl)
  %i.to = call float @llvm.fmuladd.f32(float %i.tc, float %i.qo, float %i.tm) ; 3 uses
  %i.tp = call float @llvm.fmuladd.f32(float %i.td, float %i.ql, float %i.tn) ; 3 uses
  %i.tq = fmul float %i.qk, %i.tg
  %i.tr = call float @llvm.fmuladd.f32(float %i.tb, float %i.qo, float %i.tq)
  %i.ts = call float @llvm.fmuladd.f32(float %i.tf, float %i.ql, float %i.tr)
  %i.tt = call float @llvm.fmuladd.f32(float %i.te, float %i.qq, float %i.ts) ; 3 uses
  %i.tu = fmul float %i.qq, %i.tc
  %i.tv = call float @llvm.fmuladd.f32(float %i.tb, float %i.qk, float %i.tu)
  %i.tw = call float @llvm.fmuladd.f32(float %i.te, float %i.ql, float %i.tv)
  %i.tx = call float @llvm.fmuladd.f32(float %i.td, float %i.qo, float %i.tw) ; 3 uses
  %i.ty = fmul float %i.to, %i.to
  %i.tz = call float @llvm.fmuladd.f32(float %i.tp, float %i.tp, float %i.ty)
  %i.ua = call float @llvm.fmuladd.f32(float %i.tt, float %i.tt, float %i.tz)
  %i.ub = call noundef float @llvm.fmuladd.f32(float %i.tx, float %i.tx, float %i.ua)
  %sqrt.i.i162 = call noundef float @llvm.sqrt.f32(float %i.ub)
  %i.uc = fdiv float 1.000000e+00, %sqrt.i.i162   ; 3 uses
  %i.ud = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.ue = insertelement <2 x float> %i.ud, float %i.to, i64 1
  %i.uf = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = fmul <2 x float> %i.ue, %i.ug           ; 2 uses
  %i.ui = fmul float %i.tt, %i.uc                 ; 2 uses
  %i.uj = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.uk = fmul float %i.tx, %i.uc                 ; 3 uses
  %.sroa.10371.12.vec.insert = insertelement <2 x float> %i.uj, float %i.uk, i64 1
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.um = load float, ptr %i.ul, align 4, !tbaa !40 ; 11 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.uo = load float, ptr %i.un, align 8, !tbaa !41 ; 5 uses
  %i.up = fcmp ult float %i.um, %i.uo             ; 2 uses
  br i1 %i.up, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ur = load float, ptr %i.uq, align 8, !tbaa !42 ; 3 uses
  %i.us = fcmp ult float %i.ur, %i.uo
  br i1 %i.us, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ut = call noundef float @acosf(float noundef %i.tb) #18, !tbaa !4
  %i.uu = fmul float %i.ut, 2.000000e+00          ; 4 uses
  %i.uv = fcmp ogt float %i.uu, f0x34000000
  br i1 %i.uv, label %bb.i, label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.uw = fmul float %i.te, %i.te
  %i.ux = call float @llvm.fmuladd.f32(float %i.tc, float %i.tc, float %i.uw)
  %i.uy = call noundef float @llvm.fmuladd.f32(float %i.td, float %i.td, float %i.ux)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.uy)
  %i.uz = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.va = fmul float %i.tc, %i.uz                 ; 2 uses
  %i.vb = fmul float %i.td, %i.uz                 ; 4 uses
  %i.vc = fmul float %i.te, %i.uz                 ; 5 uses
  %i.vd = call noundef float @llvm.fabs.f32(float %i.vc)
  %i.ve = fcmp ogt float %i.vd, f0x34000000
  br i1 %i.ve, label %bb.j, label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.vf = fmul float %i.vb, %i.vb
  %i.vg = fmul nnan float %i.vc, %i.vc
  %i.vh = fdiv float %i.vf, %i.vg                 ; 2 uses
  %i.vi = insertelement <2 x float> poison, float %i.um, i64 0
  %i.vj = insertelement <2 x float> %i.vi, float %i.ur, i64 1 ; 2 uses
  %i.vk = fmul <2 x float> %i.vj, %i.vj
  %i.vl = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.vh, i64 0
  %i.vm = fdiv <2 x float> %i.vl, %i.vk           ; 2 uses
  %shift = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop565 = fadd <2 x float> %i.vm, %shift
  %i.vn = extractelement <2 x float> %foldExtExtBinop565, i64 0
  %i.vo = fadd float %i.vh, 1.000000e+00
  %i.vp = fdiv float %i.vo, %i.vn
  %sqrt.i = call float @llvm.sqrt.f32(float %i.vp)
  br label %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit

_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.0 = phi float [ %sqrt.i, %bb.j ], [ %i.um, %bb.i ], [ 0.000000e+00, %bb.h ] ; 4 uses
  %.sroa.10352.0 = phi float [ %i.vb, %bb.j ], [ %i.vb, %bb.i ], [ undef, %bb.h ] ; 3 uses
  %.sroa.6350.0 = phi float [ %i.vc, %bb.j ], [ %i.vc, %bb.i ], [ undef, %bb.h ] ; 7 uses
  %.sroa.0348.0 = phi float [ %i.va, %bb.j ], [ %i.va, %bb.i ], [ undef, %bb.h ] ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !59 ; 4 uses
  %i.vs = fmul float %.0, %i.vr
  %i.vt = fcmp ogt float %i.uu, %i.vs
  br i1 %i.vt, label %._crit_edge, label %bb.ac

._crit_edge:                                      ; preds = %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.vv = fcmp olt float %i.uu, %.0
  %i.vw = fcmp olt float %i.vr, f0x3F7FFFFE
  %or.cond535 = and i1 %i.vv, %i.vw
  %i.vx = fneg float %.0                          ; 2 uses
  %i.vy = call float @llvm.fmuladd.f32(float %i.vx, float %i.vr, float %i.uu) ; 2 uses
  %i.vz = call float @llvm.fmuladd.f32(float %i.vx, float %i.vr, float %.0)
  %i.wa = fdiv float %i.vy, %i.vz
  %storemerge = select i1 %or.cond535, float %i.wa, float 1.000000e+00
  store float %storemerge, ptr %i.vu, align 8, !tbaa !60
  store float %i.vy, ptr %i.a, align 8, !tbaa !58
  %i.wb = call noundef float @llvm.fabs.f32(float %.sroa.6350.0)
  %i.wc = fcmp ogt float %i.wb, f0x34000000
  br i1 %i.wc, label %bb.k, label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

bb.k:                                             ; preds = %._crit_edge
  %i.wd = fneg float %.sroa.10352.0
  %i.we = fdiv float %i.wd, %.sroa.6350.0
  %i.wf = fdiv float %i.ur, %i.um
  %i.wg = fmul float %i.wf, %i.we
  %i.wh = fcmp olt float %.sroa.10352.0, 0.000000e+00
  %i.wi = fmul float %.sroa.6350.0, %i.wg
  %i.wj = call noundef float @llvm.fabs.f32(float %i.wi) ; 2 uses
  %i.wk = fneg float %i.wj
  %.0.i = select i1 %i.wh, float %i.wj, float %i.wk ; 3 uses
  %i.wl = fneg float %.0.i
  %i.wm = fmul nnan float %.sroa.6350.0, %.sroa.6350.0
  %i.wn = call float @llvm.fmuladd.f32(float %.sroa.0348.0, float %.sroa.0348.0, float %i.wm)
  %i.wo = call float @llvm.fmuladd.f32(float %.0.i, float %.0.i, float %i.wn)
  %sqrt.i.i.i166 = call noundef float @llvm.sqrt.f32(float %i.wo)
  %i.wp = fdiv float 1.000000e+00, %sqrt.i.i.i166 ; 3 uses
  %i.wq = fmul float %.sroa.0348.0, %i.wp
  %i.wr = fmul float %.sroa.6350.0, %i.wp
  %i.ws = fmul float %i.wp, %i.wl
  br label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit: ; preds = %._crit_edge, %bb.k
  %.sroa.10352.1 = phi float [ %i.ws, %bb.k ], [ %.sroa.10352.0, %._crit_edge ] ; 4 uses
  %.sroa.6350.1 = phi float [ %i.wr, %bb.k ], [ %.sroa.6350.0, %._crit_edge ] ; 3 uses
  %.sroa.0348.1 = phi float [ %i.wq, %bb.k ], [ %.sroa.0348.0, %._crit_edge ] ; 3 uses
  %i.wt = insertelement <2 x float> poison, float %.sroa.10352.1, i64 0
  %i.wu = insertelement <2 x float> %i.wt, float %.sroa.0348.1, i64 1
  %i.wv = fneg <2 x float> %i.wu
  %i.ww = insertelement <2 x float> poison, float %.sroa.6350.1, i64 0
  %i.wx = insertelement <2 x float> %i.ww, float %.sroa.10352.1, i64 1
  %i.wy = fneg <2 x float> %i.wx
  %i.wz = shufflevector <2 x float> %i.ow, <2 x float> %i.of, <4 x i32> <i32 1, i32 2, i32 3, i32 2>
  %i.xa = shufflevector <2 x float> %i.wv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.xb = insertelement <4 x float> %i.xa, float %.sroa.6350.1, i64 3
  %i.xc = shufflevector <2 x float> %i.wy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.xd = shufflevector <4 x float> %i.xc, <4 x float> %i.xb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.xe = fmul <4 x float> %i.wz, %i.xd
  %i.xf = insertelement <4 x float> %i.xc, float %.sroa.0348.1, i64 3
  %i.xg = shufflevector <4 x float> %i.xa, <4 x float> %i.xf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.xh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.xg, <4 x float> %i.xe) ; 4 uses
  %i.xi = extractelement <4 x float> %i.xh, i64 1
  %i.xj = call float @llvm.fmuladd.f32(float %i.oi, float %.sroa.6350.1, float %i.xi) ; 3 uses
  %i.xk = extractelement <4 x float> %i.xh, i64 2
  %i.xl = call float @llvm.fmuladd.f32(float %i.oy, float %.sroa.10352.1, float %i.xk) ; 3 uses
  %i.xm = extractelement <4 x float> %i.xh, i64 0
  %i.xn = call float @llvm.fmuladd.f32(float %i.og, float %.sroa.0348.1, float %i.xm) ; 3 uses
  %i.xo = extractelement <4 x float> %i.xh, i64 3
  %i.xp = call float @llvm.fmuladd.f32(float %i.oi, float %.sroa.10352.1, float %i.xo) ; 3 uses
  %i.xq = extractelement <2 x float> %i.ow, i64 0 ; 3 uses
  %i.xr = fmul float %i.xq, %i.xj
  %i.xs = call float @llvm.fmuladd.f32(float %i.xp, float %i.pj, float %i.xr)
  %i.xt = call float @llvm.fmuladd.f32(float %i.xl, float %i.ph, float %i.xs)
  %i.xu = call float @llvm.fmuladd.f32(float %i.xn, float %i.og, float %i.xt)
  %i.xv = fmul float %i.xq, %i.xl
  %i.xw = call float @llvm.fmuladd.f32(float %i.xp, float %i.pi, float %i.xv)
  %i.xx = call float @llvm.fmuladd.f32(float %i.xn, float %i.pj, float %i.xw)
  %i.xy = call float @llvm.fmuladd.f32(float %i.xj, float %i.oi, float %i.xx) ; 2 uses
  %i.xz = fmul float %i.xq, %i.xn
  %i.ya = call float @llvm.fmuladd.f32(float %i.xp, float %i.ph, float %i.xz)
  %i.yb = call float @llvm.fmuladd.f32(float %i.xj, float %i.pi, float %i.ya)
  %i.yc = call float @llvm.fmuladd.f32(float %i.xl, float %i.oy, float %i.yb) ; 2 uses
  %.sroa.020.0.vec.insert.i172 = insertelement <2 x float> poison, float %i.xu, i64 0 ; 2 uses
  %.sroa.020.4.vec.insert.i173 = insertelement <2 x float> %.sroa.020.0.vec.insert.i172, float %i.xy, i64 1
  %.sroa.3.12.vec.insert.i174 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yc, i64 0
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %.sroa.020.4.vec.insert.i173, ptr %i.yd, align 4
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x float> %.sroa.3.12.vec.insert.i174, ptr %.sroa.428.0..sroa_idx, align 4, !tbaa !24
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ye, i8 0, i64 16, i1 false)
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.yh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %17 = load float, ptr %i.yh, align 4, !tbaa !27
  %i.yi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %18 = load float, ptr %i.yi, align 4, !tbaa !27
  %i.yj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !27
  %i.yl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !27
  %i.yp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !27
  %i.yr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !27
  %i.yt = load <2 x float>, ptr %3, align 4, !tbaa !27 ; 2 uses
  %i.yu = load <2 x float>, ptr %i.yf, align 4, !tbaa !27 ; 2 uses
  %i.yv = load <2 x float>, ptr %i.yg, align 4, !tbaa !27 ; 2 uses
  %i.yw = load <2 x float>, ptr %i.yl, align 4, !tbaa !27 ; 2 uses
  %i.yx = shufflevector <2 x float> %i.yu, <2 x float> %i.yw, <2 x i32> <i32 0, i32 2>
  %i.yy = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.yz = shufflevector <2 x float> %i.yy, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.za = fmul <2 x float> %i.yx, %i.yz
  %i.zb = load <2 x float>, ptr %4, align 4, !tbaa !27 ; 2 uses
  %i.zc = shufflevector <2 x float> %i.yt, <2 x float> %i.zb, <2 x i32> <i32 0, i32 2>
  %i.zd = shufflevector <2 x float> %.sroa.020.0.vec.insert.i172, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ze = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zc, <2 x float> %i.zd, <2 x float> %i.za)
  %i.zf = load <2 x float>, ptr %i.ym, align 4, !tbaa !27 ; 2 uses
  %i.zg = shufflevector <2 x float> %i.yv, <2 x float> %i.zf, <2 x i32> <i32 0, i32 2>
  %i.zh = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.zj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zg, <2 x float> %i.zi, <2 x float> %i.ze)
  %i.zk = shufflevector <2 x float> %i.yu, <2 x float> %i.yw, <2 x i32> <i32 1, i32 3>
  %i.zl = fmul <2 x float> %i.yz, %i.zk
  %i.zm = shufflevector <2 x float> %i.yt, <2 x float> %i.zb, <2 x i32> <i32 1, i32 3>
  %i.zn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zm, <2 x float> %i.zd, <2 x float> %i.zl)
  %i.zo = shufflevector <2 x float> %i.yv, <2 x float> %i.zf, <2 x i32> <i32 1, i32 3>
  %i.zp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.zi, <2 x float> %i.zn)
  %19 = insertelement <2 x float> poison, float %18, i64 0
  %i.zq = insertelement <2 x float> %19, float %i.yq, i64 1
  %i.zr = fmul <2 x float> %i.yz, %i.zq
  %20 = insertelement <2 x float> poison, float %17, i64 0
  %i.zs = insertelement <2 x float> %20, float %i.yo, i64 1
  %i.zt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zs, <2 x float> %i.zd, <2 x float> %i.zr)
  %i.zu = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.zv = insertelement <2 x float> %i.zu, float %i.ys, i64 1
  %i.zw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zv, <2 x float> %i.zi, <2 x float> %i.zt)
  %i.zx = fmul <2 x float> %i.yz, %i.zp
  %i.zy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zd, <2 x float> %i.zj, <2 x float> %i.zx)
  %i.zz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zi, <2 x float> %i.zw, <2 x float> %i.zy) ; 2 uses
  %shift567 = shufflevector <2 x float> %i.zz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop568 = fadd <2 x float> %i.zz, %shift567
  %i.aaa = extractelement <2 x float> %foldExtExtBinop568, i64 0
  %i.aab = fdiv float 1.000000e+00, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 540
  store float %i.aab, ptr %i.aac, align 4, !tbaa !61
  br label %bb.ac

bb.l:                                             ; preds = %bb.g, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.aaf = load float, ptr %i.ne, align 4, !tbaa !27 ; 2 uses
  %i.aag = load float, ptr %i.aad, align 4, !tbaa !27 ; 2 uses
  %21 = load float, ptr %i.aae, align 4, !tbaa !27
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !27 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aat = load float, ptr %i.aaq, align 8, !tbaa !27 ; 2 uses
  %i.aau = load float, ptr %i.aar, align 8, !tbaa !27 ; 2 uses
  %i.aav = load float, ptr %i.aas, align 8, !tbaa !27 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.aaz = load float, ptr %i.aaw, align 4, !tbaa !27 ; 2 uses
  %i.aba = load float, ptr %i.aax, align 4, !tbaa !27 ; 2 uses
  %i.abb = load float, ptr %i.aay, align 4, !tbaa !27 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 444
  %22 = load float, ptr %i.nt, align 4, !tbaa !27
  %23 = load float, ptr %i.abc, align 4, !tbaa !27
  %24 = load float, ptr %i.abd, align 4, !tbaa !27
  %i.abe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !27
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %25 = load float, ptr %i.abh, align 4, !tbaa !27
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.abj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !27 ; 2 uses
  %i.abl = load float, ptr %1, align 4, !tbaa !27
  %i.abm = load <2 x float>, ptr %i.aah, align 4, !tbaa !27 ; 2 uses
  %i.abn = load float, ptr %i.aai, align 4, !tbaa !27
  %26 = load float, ptr %i.aan, align 4, !tbaa !27
  %i.abo = load <2 x float>, ptr %i.aao, align 4, !tbaa !27 ; 3 uses
  %27 = load float, ptr %i.aap, align 4, !tbaa !27
  %i.abp = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abr = shufflevector <2 x float> %i.abo, <2 x float> %i.abm, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.abs = fmul <2 x float> %i.abq, %i.abr
  %28 = insertelement <2 x float> poison, float %26, i64 0
  %i.abt = insertelement <2 x float> %28, float %i.abl, i64 1 ; 3 uses
  %i.abu = insertelement <2 x float> poison, float %i.aaf, i64 0
  %i.abv = shufflevector <2 x float> %i.abu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abt, <2 x float> %i.abv, <2 x float> %i.abs) ; 2 uses
  %i.abx = shufflevector <2 x float> %i.abo, <2 x float> %i.abm, <2 x i32> <i32 1, i32 3>
  %29 = insertelement <2 x float> poison, float %21, i64 0
  %i.aby = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abx, <2 x float> %i.aby, <2 x float> %i.abw) ; 4 uses
  %i.aca = insertelement <2 x float> %i.abo, float %i.aam, i64 0
  %i.acb = shufflevector <2 x float> %i.abw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acc = load float, ptr %i.aak, align 4, !tbaa !27 ; 3 uses
  %i.acd = load float, ptr %i.aaj, align 4, !tbaa !27 ; 3 uses
  %i.ace = fmul float %i.aag, %i.acc
  %i.acf = fmul float %i.acc, %i.aau
  %i.acg = call float @llvm.fmuladd.f32(float %i.acd, float %i.aaf, float %i.ace)
  %i.ach = insertelement <2 x float> %i.acb, float %i.acg, i64 0
  %i.aci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aca, <2 x float> %i.aby, <2 x float> %i.ach) ; 3 uses
  %i.acj = insertelement <2 x float> poison, float %i.aau, i64 0
  %i.ack = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acl = fmul <2 x float> %i.abr, %i.ack
  %i.acm = insertelement <2 x float> poison, float %i.aat, i64 0
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aco = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abt, <2 x float> %i.acn, <2 x float> %i.acl)
  %i.acp = call float @llvm.fmuladd.f32(float %i.acd, float %i.aat, float %i.acf)
  %30 = insertelement <2 x float> poison, float %27, i64 0
  %i.acq = insertelement <2 x float> %30, float %i.abn, i64 1 ; 2 uses
  %i.acr = insertelement <2 x float> poison, float %i.aav, i64 0
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.act = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acq, <2 x float> %i.acs, <2 x float> %i.aco) ; 3 uses
  %i.acu = call noundef float @llvm.fmuladd.f32(float %i.aam, float %i.aav, float %i.acp) ; 2 uses
  %i.acv = insertelement <2 x float> poison, float %i.aba, i64 0
  %i.acw = shufflevector <2 x float> %i.acv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acx = fmul <2 x float> %i.abr, %i.acw
  %i.acy = fmul float %i.acc, %i.aba
  %i.acz = insertelement <2 x float> poison, float %i.aaz, i64 0
  %i.ada = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abt, <2 x float> %i.ada, <2 x float> %i.acx)
  %i.adc = call float @llvm.fmuladd.f32(float %i.acd, float %i.aaz, float %i.acy)
  %i.add = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.ade = shufflevector <2 x float> %i.add, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acq, <2 x float> %i.ade, <2 x float> %i.adb) ; 3 uses
  %i.adg = call noundef float @llvm.fmuladd.f32(float %i.aam, float %i.abb, float %i.adc) ; 2 uses
  %i.adh = load <2 x float>, ptr %2, align 4, !tbaa !27 ; 2 uses
  %i.adi = load <2 x float>, ptr %i.abg, align 4, !tbaa !27 ; 2 uses
  %i.adj = load <2 x float>, ptr %i.abi, align 4, !tbaa !27 ; 4 uses
  %31 = insertelement <2 x float> poison, float %23, i64 0
  %i.adk = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adl = shufflevector <2 x float> %i.adi, <2 x float> %i.adj, <2 x i32> <i32 1, i32 3>
  %i.adm = fmul <2 x float> %i.adk, %i.adl
  %i.adn = shufflevector <2 x float> %i.adj, <2 x float> %i.adh, <2 x i32> <i32 1, i32 3>
  %i.ado = fmul <2 x float> %i.adk, %i.adn
  %i.adp = shufflevector <2 x float> %i.adi, <2 x float> %i.adj, <2 x i32> <i32 0, i32 2>
  %32 = insertelement <2 x float> poison, float %22, i64 0
  %i.adq = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adp, <2 x float> %i.adq, <2 x float> %i.adm)
  %i.ads = shufflevector <2 x float> %i.adj, <2 x float> %i.adh, <2 x i32> <i32 0, i32 2>
  %i.adt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ads, <2 x float> %i.adq, <2 x float> %i.ado)
  %33 = insertelement <2 x float> poison, float %25, i64 0
  %34 = insertelement <2 x float> %33, float %i.abk, i64 1
  %i.adu = insertelement <2 x float> poison, float %24, i64 0
  %i.adv = shufflevector <2 x float> %i.adu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.adv, <2 x float> %i.adr) ; 6 uses
  %i.adx = insertelement <2 x float> poison, float %i.abk, i64 0
  %i.ady = insertelement <2 x float> %i.adx, float %i.abf, i64 1
  %i.adz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ady, <2 x float> %i.adv, <2 x float> %i.adt) ; 3 uses
  %i.aea = extractelement <2 x float> %i.adw, i64 0 ; 4 uses
  %i.aeb = extractelement <2 x float> %i.aci, i64 0 ; 2 uses
  %foldExtExtBinop570 = fmul <2 x float> %i.aci, %i.adw
  %i.aec = extractelement <2 x float> %foldExtExtBinop570, i64 0
  %i.aed = extractelement <2 x float> %i.abz, i64 1 ; 2 uses
  %i.aee = extractelement <2 x float> %i.adz, i64 1 ; 5 uses
  %i.aef = call float @llvm.fmuladd.f32(float %i.aee, float %i.aed, float %i.aec)
  %i.aeg = extractelement <2 x float> %i.adw, i64 1 ; 3 uses
  %i.aeh = extractelement <2 x float> %i.abz, i64 0
  %i.aei = call noundef float @llvm.fmuladd.f32(float %i.aeg, float %i.aeh, float %i.aef) ; 8 uses
  %i.aej = fmul float %i.acu, %i.aea
  %i.aek = extractelement <2 x float> %i.act, i64 1
  %i.ael = call float @llvm.fmuladd.f32(float %i.aee, float %i.aek, float %i.aej)
  %i.aem = extractelement <2 x float> %i.act, i64 0
  %i.aen = call noundef float @llvm.fmuladd.f32(float %i.aeg, float %i.aem, float %i.ael) ; 7 uses
  %i.aeo = fmul float %i.adg, %i.aea
  %i.aep = extractelement <2 x float> %i.adf, i64 1
  %i.aeq = call float @llvm.fmuladd.f32(float %i.aee, float %i.aep, float %i.aeo)
  %i.aer = extractelement <2 x float> %i.adf, i64 0
  %i.aes = call noundef float @llvm.fmuladd.f32(float %i.aeg, float %i.aer, float %i.aeq) ; 8 uses
  %i.aet = fcmp olt float %i.um, %i.uo
  br i1 %i.aet, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aev = load float, ptr %i.aeu, align 8, !tbaa !42 ; 8 uses
  %i.aew = fcmp olt float %i.aev, %i.uo
  %i.aex = call noundef float @llvm.fabs.f32(float %i.aen)
  %i.aey = fcmp olt float %i.aex, f0x34000000     ; 2 uses
  br i1 %i.aew, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aez = call float @llvm.fabs.f32(float %i.aes)
  %i.afa = fcmp olt float %i.aez, f0x34000000
  %or.cond537 = and i1 %i.aey, %i.afa
  br i1 %or.cond537, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.afb = fneg <2 x float> %i.aci
  %i.afc = fneg float %i.aed
  %i.afd = fmul float %i.aea, %i.afc
  %i.afe = call float @llvm.fmuladd.f32(float %i.aee, float %i.aeb, float %i.afd)
  %i.aff = fmul <2 x float> %i.adz, %i.afb
  %i.afg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adw, <2 x float> %i.abz, <2 x float> %i.aff)
  %i.afh = fneg <2 x float> %i.afg
  %i.afi = fneg float %i.afe
  %.sroa.3.12.vec.insert.i224 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afi, i64 0
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %i.afh, ptr %i.afj, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  store <2 x float> %.sroa.3.12.vec.insert.i224, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !24
  br label %bb.ac

bb.p:                                             ; preds = %bb.m
  br i1 %i.aey, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.d, align 2, !tbaa !30
  %i.afk = fcmp ult float %i.aev, %i.uo
  br i1 %i.afk, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.afl = call noundef float @atan2f(float noundef %i.aes, float noundef %i.aei) #18, !tbaa !4 ; 2 uses
  %i.afm = fcmp ogt float %i.afl, %i.aev
  br i1 %i.afm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.afn = call noundef float @cosf(float noundef %i.aev) #18, !tbaa !4
  %i.afo = call noundef float @sinf(float noundef %i.aev) #18, !tbaa !4
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.afp = fneg float %i.aev
  %i.afq = fcmp olt float %i.afl, %i.afp
  br i1 %i.afq, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.afr = call noundef float @cosf(float noundef %i.aev) #18, !tbaa !4
  %i.afs = call noundef float @sinf(float noundef %i.aev) #18, !tbaa !4
  %i.aft = fneg float %i.afs
  br label %bb.ab

bb.v:                                             ; preds = %bb.l
  %i.afu = call noundef float @llvm.fabs.f32(float %i.aes)
  %i.afv = fcmp olt float %i.afu, f0x34000000
  br i1 %i.afv, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.d, align 2, !tbaa !30
  br i1 %i.up, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.afw = call noundef float @atan2f(float noundef %i.aen, float noundef %i.aei) #18, !tbaa !4 ; 2 uses
  %i.afx = fcmp ogt float %i.afw, %i.um
  br i1 %i.afx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.afy = call noundef float @cosf(float noundef %i.um) #18, !tbaa !4
  %i.afz = call noundef float @sinf(float noundef %i.um) #18, !tbaa !4
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.aga = fneg float %i.um
  %i.agb = fcmp olt float %i.afw, %i.aga
  br i1 %i.agb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.agc = call noundef float @cosf(float noundef %i.um) #18, !tbaa !4
  %i.agd = call noundef float @sinf(float noundef %i.um) #18, !tbaa !4
  %i.age = fneg float %i.agd
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z, %bb.s, %bb.u, %bb.t, %bb.v, %bb.w, %bb.p, %bb.q
  %.145 = phi float [ %i.aes, %bb.p ], [ %i.aes, %bb.w ], [ %i.aes, %bb.q ], [ %i.aes, %bb.v ], [ %i.aes, %bb.t ], [ %i.afo, %bb.s ], [ %i.aft, %bb.u ], [ 0.000000e+00, %bb.z ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %.143 = phi float [ %i.aen, %bb.p ], [ %i.aen, %bb.w ], [ %i.aen, %bb.q ], [ %i.aen, %bb.v ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.u ], [ %i.aen, %bb.z ], [ %i.age, %bb.aa ], [ %i.afz, %bb.y ] ; 2 uses
  %.2 = phi float [ %i.aei, %bb.p ], [ %i.aei, %bb.w ], [ %i.aei, %bb.q ], [ %i.aei, %bb.v ], [ %i.aei, %bb.t ], [ %i.afn, %bb.s ], [ %i.afr, %bb.u ], [ %i.aei, %bb.z ], [ %i.agc, %bb.aa ], [ %i.afy, %bb.y ] ; 2 uses
  %i.agf = insertelement <2 x float> poison, float %.143, i64 0
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agh = fmul <2 x float> %i.act, %i.agg
  %i.agi = fmul float %i.acu, %.143
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 508
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.agk = insertelement <2 x float> poison, float %.2, i64 0
  %i.agl = shufflevector <2 x float> %i.agk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agl, <2 x float> %i.abz, <2 x float> %i.agh)
  %i.agn = call float @llvm.fmuladd.f32(float %.2, float %i.aeb, float %i.agi)
  %i.ago = insertelement <2 x float> poison, float %.145, i64 0
  %i.agp = shufflevector <2 x float> %i.ago, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agp, <2 x float> %i.adf, <2 x float> %i.agm) ; 4 uses
  %i.agr = call float @llvm.fmuladd.f32(float %.145, float %i.adg, float %i.agn) ; 3 uses
  %i.ags = fmul float %i.agr, %i.agr
  %i.agt = extractelement <2 x float> %i.agq, i64 1 ; 2 uses
  %i.agu = call float @llvm.fmuladd.f32(float %i.agt, float %i.agt, float %i.ags)
  %i.agv = extractelement <2 x float> %i.agq, i64 0 ; 2 uses
  %i.agw = call noundef float @llvm.fmuladd.f32(float %i.agv, float %i.agv, float %i.agu)
  %sqrt.i.i227 = call noundef float @llvm.sqrt.f32(float %i.agw)
  %i.agx = fdiv float 1.000000e+00, %sqrt.i.i227
  %i.agy = insertelement <2 x float> poison, float %i.agx, i64 0
  %i.agz = shufflevector <2 x float> %i.agy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aha = fmul <2 x float> %i.agq, %i.agz        ; 2 uses
  %i.ahb = shufflevector <2 x float> %i.agq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ahc = insertelement <2 x float> %i.ahb, float %i.agr, i64 0
  %i.ahd = fmul <2 x float> %i.ahc, %i.agz        ; 2 uses
  %i.ahe = fneg <2 x float> %i.ahd
  %i.ahf = shufflevector <2 x float> %i.adw, <2 x float> %i.adz, <2 x i32> <i32 1, i32 3>
  %i.ahg = fmul <2 x float> %i.ahf, %i.ahe
  %i.ahh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adw, <2 x float> %i.aha, <2 x float> %i.ahg) ; 4 uses
  %i.ahi = extractelement <2 x float> %i.aha, i64 1
  %i.ahj = fneg float %i.ahi
  %i.ahk = fmul float %i.aea, %i.ahj
  %i.ahl = extractelement <2 x float> %i.ahd, i64 0
  %i.ahm = call float @llvm.fmuladd.f32(float %i.aee, float %i.ahl, float %i.ahk) ; 3 uses
  %i.ahn = fneg <2 x float> %i.ahh
  %i.aho = fneg float %i.ahm                      ; 2 uses
  %.sroa.3.12.vec.insert.i235 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aho, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i235, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !24
  %foldExtExtBinop572 = fmul <2 x float> %i.ahh, %i.ahh
  %i.ahp = extractelement <2 x float> %foldExtExtBinop572, i64 1
  %i.ahq = extractelement <2 x float> %i.ahh, i64 0 ; 2 uses
  %i.ahr = call float @llvm.fmuladd.f32(float %i.ahq, float %i.ahq, float %i.ahp)
  %i.ahs = call float @llvm.fmuladd.f32(float %i.ahm, float %i.ahm, float %i.ahr)
  %sqrt.i238 = call noundef float @llvm.sqrt.f32(float %i.ahs) ; 2 uses
  store float %sqrt.i238, ptr %i.a, align 8, !tbaa !58
  %i.aht = fdiv float 1.000000e+00, %sqrt.i238    ; 2 uses
  %i.ahu = insertelement <2 x float> poison, float %i.aht, i64 0
  %i.ahv = shufflevector <2 x float> %i.ahu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahw = fmul <2 x float> %i.ahv, %i.ahn
  store <2 x float> %i.ahw, ptr %i.agj, align 4, !tbaa !27
  %i.ahx = fmul float %i.aht, %i.aho
  store float %i.ahx, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %bb.ab, %bb.o, %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit, %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !62 ; 5 uses
  %i.aia = fcmp ult float %i.ahz, 0.000000e+00
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  br i1 %i.aia, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aic = call noundef float @acosf(float noundef %i.uk) #18, !tbaa !4
  %i.aid = fmul float %i.aic, 2.000000e+00        ; 3 uses
  store float %i.aid, ptr %i.aib, align 8, !tbaa !27
  %i.aie = fcmp ogt float %i.aid, f0x40490FDB
  br i1 %i.aie, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.aif = fneg <2 x float> %i.uh
  %i.aig = fneg float %i.ui
  %i.aih = fneg float %i.uk                       ; 2 uses
  %.sroa.3.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.aig, i64 0
  %.sroa.3.12.vec.insert.i.i245 = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.aih, i64 1
  %i.aii = call noundef float @acosf(float noundef %i.aih) #18, !tbaa !4
  %i.aij = fmul float %i.aii, 2.000000e+00        ; 2 uses
  store float %i.aij, ptr %i.aib, align 8, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.aik = phi float [ %i.aij, %bb.ae ], [ %i.aid, %bb.ad ] ; 4 uses
  %.sroa.011.0.i = phi <2 x float> [ %i.aif, %bb.ae ], [ %i.uh, %bb.ad ] ; 5 uses
  %.sroa.612.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i245, %bb.ae ], [ %.sroa.10371.12.vec.insert, %bb.ad ]
  %.sroa.612.8.vec.extract.i = extractelement <2 x float> %.sroa.612.0.i, i64 0 ; 4 uses
  %i.ail = fcmp ogt float %i.aik, f0x34000000
  br i1 %i.ail, label %bb.ag, label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

bb.ag:                                            ; preds = %bb.af
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.011.0.i, i64 0 ; 2 uses
  %foldExtExtBinop574 = fmul <2 x float> %.sroa.011.0.i, %.sroa.011.0.i
  %i.aim = extractelement <2 x float> %foldExtExtBinop574, i64 1
  %i.ain = call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i, float %.sroa.011.0.vec.extract.i, float %i.aim)
  %i.aio = call noundef float @llvm.fmuladd.f32(float %.sroa.612.8.vec.extract.i, float %.sroa.612.8.vec.extract.i, float %i.ain)
  %sqrt.i.i.i242 = call noundef float @llvm.sqrt.f32(float %i.aio)
  %i.aip = fdiv float 1.000000e+00, %sqrt.i.i.i242 ; 2 uses
  %i.aiq = insertelement <2 x float> poison, float %i.aip, i64 0
  %i.air = shufflevector <2 x float> %i.aiq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ais = fmul <2 x float> %.sroa.011.0.i, %i.air
  %i.ait = fmul float %.sroa.612.8.vec.extract.i, %i.aip
  br label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit: ; preds = %bb.af, %bb.ag
  %.sroa.10.0 = phi float [ %i.ait, %bb.ag ], [ %.sroa.612.8.vec.extract.i, %bb.af ] ; 6 uses
  %i.aiu = phi <2 x float> [ %i.ais, %bb.ag ], [ %.sroa.011.0.i, %bb.af ] ; 9 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !59 ; 4 uses
  %i.aix = fmul float %i.ahz, %i.aiw
  %i.aiy = fcmp ogt float %i.aik, %i.aix
  br i1 %i.aiy, label %._crit_edge540, label %bb.ah

._crit_edge540:                                   ; preds = %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  store i8 1, ptr %i.c, align 1, !tbaa !29
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.aja = fcmp olt float %i.aik, %i.ahz
  %i.ajb = fcmp olt float %i.aiw, f0x3F7FFFFE
  %or.cond538 = and i1 %i.aja, %i.ajb
  %i.ajc = fneg float %i.ahz                      ; 2 uses
  %i.ajd = call float @llvm.fmuladd.f32(float %i.ajc, float %i.aiw, float %i.aik) ; 2 uses
  %i.aje = call float @llvm.fmuladd.f32(float %i.ajc, float %i.aiw, float %i.ahz)
  %i.ajf = fdiv float %i.ajd, %i.aje
  %storemerge539 = select i1 %or.cond538, float %i.ajf, float 1.000000e+00
  store float %storemerge539, ptr %i.aiz, align 4, !tbaa !63
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %i.ajd, ptr %i.ajg, align 4, !tbaa !64
  %i.ajh = extractelement <2 x float> %i.aiu, i64 0
  %i.aji = extractelement <2 x float> %i.aiu, i64 1
  %i.ajj = shufflevector <2 x float> %i.aiu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajk = insertelement <2 x float> %i.ajj, float %.sroa.10.0, i64 0
  %i.ajl = fneg <2 x float> %i.ajk                ; 2 uses
  %i.ajm = fneg float %i.aji                      ; 2 uses
  %i.ajn = shufflevector <2 x float> %i.of, <2 x float> %i.ow, <4 x i32> <i32 0, i32 0, i32 3, i32 1>
  %i.ajo = shufflevector <2 x float> %i.aiu, <2 x float> %i.ajl, <4 x i32> <i32 1, i32 2, i32 poison, i32 3>
  %i.ajp = insertelement <4 x float> %i.ajo, float %i.ajm, i64 2
  %i.ajq = fmul <4 x float> %i.ajn, %i.ajp        ; 3 uses
  %i.ajr = extractelement <4 x float> %i.ajq, i64 0
  %i.ajs = call float @llvm.fmuladd.f32(float %i.oy, float %i.ajh, float %i.ajr)
  %i.ajt = call float @llvm.fmuladd.f32(float %i.oi, float %.sroa.10.0, float %i.ajs) ; 3 uses
  %i.aju = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajv = shufflevector <4 x float> %i.ajq, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.ajw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aju, <2 x float> %i.ajl, <2 x float> %i.ajv)
  %i.ajx = extractelement <2 x float> %i.ow, i64 0 ; 4 uses
  %i.ajy = extractelement <4 x float> %i.ajq, i64 3
  %i.ajz = call float @llvm.fmuladd.f32(float %i.ajx, float %i.ajm, float %i.ajy)
  %i.aka = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.of, <2 x float> %i.aiu, <2 x float> %i.ajw) ; 3 uses
  %i.akb = call float @llvm.fmuladd.f32(float %i.oy, float %.sroa.10.0, float %i.ajz) ; 3 uses
  %i.akc = fmul float %i.ajx, %i.akb
  %i.akd = extractelement <2 x float> %i.aka, i64 1 ; 2 uses
  %i.ake = fmul float %i.ajx, %i.akd
  %i.akf = call float @llvm.fmuladd.f32(float %i.ajt, float %i.pi, float %i.akc)
  %i.akg = call float @llvm.fmuladd.f32(float %i.ajt, float %i.pj, float %i.ake)
  %i.akh = extractelement <2 x float> %i.aka, i64 0 ; 2 uses
  %i.aki = call float @llvm.fmuladd.f32(float %i.akh, float %i.pj, float %i.akf)
  %i.akj = call float @llvm.fmuladd.f32(float %i.akb, float %i.ph, float %i.akg)
  %i.akk = insertelement <2 x float> poison, float %i.akj, i64 0
  %i.akl = insertelement <2 x float> %i.akk, float %i.aki, i64 1
  %i.akm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aka, <2 x float> %i.of, <2 x float> %i.akl) ; 5 uses
  %i.akn = fmul float %i.ajx, %i.akh
  %i.ako = call float @llvm.fmuladd.f32(float %i.ajt, float %i.ph, float %i.akn)
  %i.akp = call float @llvm.fmuladd.f32(float %i.akd, float %i.pi, float %i.ako)
  %i.akq = call float @llvm.fmuladd.f32(float %i.akb, float %i.oy, float %i.akp) ; 9 uses
  %.sroa.3.12.vec.insert.i253 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akq, i64 0
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 524
  store <2 x float> %i.akm, ptr %i.akr, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532
  store <2 x float> %.sroa.3.12.vec.insert.i253, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !24
  %i.aks = load float, ptr %3, align 4, !tbaa !27
  %i.akt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !27
  %i.akv = extractelement <2 x float> %i.akm, i64 1 ; 5 uses
  %i.akw = fmul float %i.aku, %i.akv
  %i.akx = extractelement <2 x float> %i.akm, i64 0 ; 5 uses
  %i.aky = call float @llvm.fmuladd.f32(float %i.aks, float %i.akx, float %i.akw)
  %i.akz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !27
  %i.alb = call noundef float @llvm.fmuladd.f32(float %i.ala, float %i.akq, float %i.aky)
  %i.alc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !27
  %i.ale = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !27
  %i.alg = fmul float %i.akv, %i.alf
  %i.alh = call float @llvm.fmuladd.f32(float %i.ald, float %i.akx, float %i.alg)
  %i.ali = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !27
  %i.alk = call noundef float @llvm.fmuladd.f32(float %i.alj, float %i.akq, float %i.alh)
  %i.all = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alm = load float, ptr %i.all, align 4, !tbaa !27
  %i.aln = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !27
  %i.alp = fmul float %i.akv, %i.alo
  %i.alq = call float @llvm.fmuladd.f32(float %i.alm, float %i.akx, float %i.alp)
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.als = load float, ptr %i.alr, align 4, !tbaa !27
  %i.alt = call noundef float @llvm.fmuladd.f32(float %i.als, float %i.akq, float %i.alq)
  %i.alu = fmul float %i.akv, %i.alk
  %i.alv = load float, ptr %4, align 4, !tbaa !27
  %i.alw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.alx = load float, ptr %i.alw, align 4, !tbaa !27
  %i.aly = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !27
  %i.ama = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.amb = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.amc = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !27
  %i.ame = call float @llvm.fmuladd.f32(float %i.akx, float %i.alb, float %i.alu)
  %35 = load <2 x float>, ptr %i.ama, align 4, !tbaa !27
  %36 = load <2 x float>, ptr %i.amb, align 4, !tbaa !27
  %i.amf = insertelement <4 x float> poison, float %i.ame, i64 0
  %i.amg = insertelement <4 x float> %i.amf, float %i.alx, i64 1
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amh = shufflevector <4 x float> %i.amg, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ami = shufflevector <2 x float> %i.akm, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.amj = fmul <4 x float> %i.amh, %i.ami
  %i.amk = insertelement <4 x float> poison, float %i.akq, i64 0
  %i.aml = insertelement <4 x float> %i.amk, float %i.alv, i64 1
  %38 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.amm = shufflevector <4 x float> %i.aml, <4 x float> %38, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amn = shufflevector <2 x float> %i.akm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.amo = insertelement <2 x float> %i.amn, float %i.alt, i64 0
  %i.amp = shufflevector <2 x float> %i.amo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.amq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amm, <4 x float> %i.amp, <4 x float> %i.amj) ; 4 uses
  %i.amr = extractelement <4 x float> %i.amq, i64 1
  %i.ams = call noundef float @llvm.fmuladd.f32(float %i.alz, float %i.akq, float %i.amr)
  %i.amt = extractelement <4 x float> %i.amq, i64 2
  %i.amu = call noundef float @llvm.fmuladd.f32(float %i.amd, float %i.akq, float %i.amt)
  %i.amv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !27
  %i.amx = extractelement <4 x float> %i.amq, i64 3
  %i.amy = call noundef float @llvm.fmuladd.f32(float %i.amw, float %i.akq, float %i.amx)
  %i.amz = fmul float %i.akv, %i.amu
  %i.ana = call float @llvm.fmuladd.f32(float %i.akx, float %i.ams, float %i.amz)
  %i.anb = call noundef float @llvm.fmuladd.f32(float %i.akq, float %i.amy, float %i.ana)
  %i.anc = extractelement <4 x float> %i.amq, i64 0
  %i.and = fadd float %i.anc, %i.anb
  %i.ane = fdiv float 1.000000e+00, %i.and
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.ane, ptr %i.anf, align 8, !tbaa !65
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge540, %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  %i.ang = load i8, ptr %i.d, align 2, !tbaa !30, !range !32, !noundef !33
  %i.anh = trunc nuw i8 %i.ang to i1
  br i1 %i.anh, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ani = shufflevector <2 x float> %i.aiu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.anj = insertelement <2 x float> %i.ani, float %.sroa.10.0, i64 0
  %i.ank = fneg <2 x float> %i.anj                ; 3 uses
  %i.anl = extractelement <2 x float> %i.aiu, i64 1 ; 2 uses
  %i.anm = fneg float %i.anl                      ; 2 uses
  %i.ann = fneg float %i.pa                       ; 2 uses
  %i.ano = fneg float %i.oz                       ; 2 uses
  %i.anp = fmul float %i.oz, %i.anl
  %i.anq = extractelement <2 x float> %i.aiu, i64 0
  %i.anr = call float @llvm.fmuladd.f32(float %i.pg, float %i.anq, float %i.anp)
  %i.ans = call float @llvm.fmuladd.f32(float %i.pa, float %.sroa.10.0, float %i.anr) ; 2 uses
  %foldExtExtBinop576 = fmul <2 x float> %i.nq, %i.ank
  %i.ant = fmul float %i.pg, %i.anm
  %foldExtExtBinop578 = fmul <2 x float> %i.nq, %i.ank
  %i.anu = extractelement <2 x float> %foldExtExtBinop578, i64 1
  %i.anv = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.anw = shufflevector <2 x float> %i.anv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.anx = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.any = shufflevector <2 x float> %i.anx, <2 x float> %foldExtExtBinop576, <2 x i32> <i32 0, i32 2>
  %i.anz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anw, <2 x float> %i.ank, <2 x float> %i.any)
  %i.aoa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.aiu, <2 x float> %i.anz) ; 4 uses
  %i.aob = extractelement <2 x float> %i.aoa, i64 0
  %i.aoc = extractelement <2 x float> %i.aoa, i64 1
  %i.aod = call float @llvm.fmuladd.f32(float %i.pf, float %i.anm, float %i.anu)
  %i.aoe = call float @llvm.fmuladd.f32(float %i.pg, float %.sroa.10.0, float %i.aod) ; 3 uses
  %i.aof = shufflevector <2 x float> %i.aoa, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aog = insertelement <2 x float> %i.aof, float %i.aoe, i64 1
  %i.aoh = fmul <2 x float> %i.anw, %i.aog
  %i.aoi = insertelement <2 x float> poison, float %i.ans, i64 0
  %i.aoj = shufflevector <2 x float> %i.aoi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aok = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.aol = insertelement <2 x float> %i.aok, float %i.ano, i64 1
  %i.aom = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aoj, <2 x float> %i.aol, <2 x float> %i.aoh)
  %i.aon = insertelement <2 x float> %i.aof, float %i.aoe, i64 0
  %i.aoo = insertelement <2 x float> poison, float %i.ann, i64 0
  %i.aop = insertelement <2 x float> %i.aoo, float %i.pv, i64 1
  %i.aoq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aon, <2 x float> %i.aop, <2 x float> %i.aom)
  %i.aor = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aoa, <2 x float> %i.nq, <2 x float> %i.aoq)
  %i.aos = fmul float %i.pf, %i.aob
  %i.aot = call float @llvm.fmuladd.f32(float %i.ans, float %i.ann, float %i.aos)
  %i.aou = call float @llvm.fmuladd.f32(float %i.aoc, float %i.ano, float %i.aot)
  %i.aov = call float @llvm.fmuladd.f32(float %i.aoe, float %i.pg, float %i.aou)
  %.sroa.3.12.vec.insert.i263 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aov, i64 0
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 584
  store <2 x float> %i.aor, ptr %i.aow, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store <2 x float> %.sroa.3.12.vec.insert.i263, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ac
  store float 0.000000e+00, ptr %i.aib, align 8, !tbaa !66
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !36
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(640) initializes((548, 556), (573, 575)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37, !nonnull !33, !align !38 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !33, !align !38 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  tail call void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(48) %i.g, ptr noundef nonnull align 4 dereferenceable(48) %i.h)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(640) initializes((548, 556), (573, 575)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 7 uses
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !27
  %i.h = shl nsw i32 %i.d, 1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.m = load float, ptr %2, align 4, !tbaa !27
  %i.n = load float, ptr %i.l, align 4, !tbaa !27 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.r = load float, ptr %i.q, align 8, !tbaa !27 ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.x = load float, ptr %i.w, align 4, !tbaa !27 ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !27
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !27
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !27
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 17 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.e ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.i ; 3 uses
  %i.av = fneg float %i.y
  %i.aw = fneg float %i.ah
  %i.ax = fneg float %i.aq
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aq, ptr %i.ay, align 4, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.az, align 4, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !27
  store float %i.ax, ptr %i.at, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.y, ptr %i.bc, align 4, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !27
  store float %i.ah, ptr %i.au, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !27 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load float, ptr %i.bk, align 4, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !27 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27
  %i.bu = fmul float %i.bj, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bh, float %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !27
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bm, float %i.bv) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !73 ; 17 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.e ; 4 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.i ; 3 uses
  %i.cd = fneg float %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ck = load <2 x float>, ptr %3, align 4, !tbaa !27 ; 2 uses
  %i.cl = load <2 x float>, ptr %i.bn, align 4, !tbaa !27 ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x float> %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cr = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cs, <2 x float> %i.cp)
  %7 = insertelement <2 x float> poison, float %6, i64 0
  %i.cu = insertelement <2 x float> %7, float %i.bp, i64 1
  %i.cv = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.ct) ; 3 uses
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !27
  store float %i.cd, ptr %i.ce, align 4, !tbaa !27
  %i.cy = extractelement <2 x float> %i.cx, i64 1 ; 2 uses
  store float %i.cy, ptr %i.cf, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !27
  store float %i.by, ptr %i.cb, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !27
  %i.cz = fneg <2 x float> %i.cx                  ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 0
  store float %i.da, ptr %i.ci, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.cj, align 4, !tbaa !27
  %i.db = extractelement <2 x float> %i.cz, i64 1
  store float %i.db, ptr %i.cc, align 4, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.dd = extractelement <2 x float> %i.cx, i64 0 ; 2 uses
  store float %i.dd, ptr %i.dc, align 4, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <2 x float> zeroinitializer, ptr %i.de, align 4, !tbaa !27
  %i.df = load float, ptr %1, align 8, !tbaa !74
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !75
  %i.di = fmul float %i.df, %i.dh                 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !76 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !78 ; 6 uses
  %i.dr = load float, ptr %i.dj, align 4, !tbaa !27
  %i.ds = fadd float %i.dd, %i.dr
  %i.dt = fsub float %i.ds, %i.y
  %i.du = load float, ptr %i.dk, align 4, !tbaa !27
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fmul float %i.di, %i.dv
  store float %i.dw, ptr %i.dm, align 4, !tbaa !27
  store float f0xFF7FFFFF, ptr %i.do, align 4, !tbaa !27
  store float f0x7F7FFFFF, ptr %i.dq, align 4, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !27
  %i.dz = fadd float %i.cy, %i.dy
  %i.ea = fsub float %i.dz, %i.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !27
  %i.ed = fsub float %i.ea, %i.ec
  %i.ee = fmul float %i.di, %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.e
  store float %i.ee, ptr %i.ef, align 4, !tbaa !27
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.e
  store float f0xFF7FFFFF, ptr %i.eg, align 4, !tbaa !27
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.e
  store float f0x7F7FFFFF, ptr %i.eh, align 4, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !27
  %i.ek = fadd float %i.by, %i.ej
  %i.el = fsub float %i.ek, %i.aq
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.en = load float, ptr %i.em, align 4, !tbaa !27
  %i.eo = fsub float %i.el, %i.en
  %i.ep = fmul float %i.di, %i.eo
  %i.eq = shl nsw i64 %i.e, 1                     ; 3 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.eq
  store float %i.ep, ptr %i.er, align 4, !tbaa !27
  %i.es = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.eq
  store float f0xFF7FFFFF, ptr %i.es, align 4, !tbaa !27
  %i.et = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.eq
  store float f0x7F7FFFFF, ptr %i.et, align 4, !tbaa !27
  %i.eu = mul nsw i32 %i.d, 3                     ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !30, !range !32, !noundef !33
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !41 ; 2 uses
  %i.fc = fcmp olt float %i.ez, %i.fb
  br i1 %i.fc, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !42
  %i.ff = fcmp olt float %i.fe, %i.fb
  br i1 %i.ff, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fg = load float, ptr %i.u, align 4, !tbaa !27, !noalias !79 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fk = load float, ptr %i.af, align 4, !tbaa !27, !noalias !79 ; 2 uses
  %i.fl = load float, ptr %i.ao, align 4, !tbaa !27, !noalias !79
  %i.fm = shl nsw i32 %i.d, 2                     ; 2 uses
  %i.fn = sext i32 %i.eu to i64                   ; 5 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fn
  %i.fp = add nsw i32 %i.eu, 1
  %i.fq = sext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fq
  %i.fs = add nsw i32 %i.eu, 2
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ft
  %i.fv = sext i32 %i.fm to i64                   ; 5 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.fv
  %i.fx = load <2 x float>, ptr %2, align 4, !tbaa !27, !noalias !79 ; 3 uses
  %i.fy = load float, ptr %i.o, align 4, !tbaa !27, !noalias !79
  %i.fz = load <2 x float>, ptr %i.z, align 4, !tbaa !27, !noalias !79 ; 3 uses
  %i.ga = load float, ptr %i.ab, align 4, !tbaa !27, !noalias !79
  %i.gb = load <2 x float>, ptr %i.fh, align 8, !tbaa !27, !noalias !79 ; 2 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gd = load <2 x float>, ptr %i.fi, align 8, !tbaa !27, !noalias !79 ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gf = load <2 x float>, ptr %i.ai, align 4, !tbaa !27, !noalias !79 ; 2 uses
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gh = insertelement <4 x float> %i.gg, float %i.fy, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.ga, i64 2
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.gk = fmul <4 x float> %i.ge, %i.gj
  %i.gl = shufflevector <2 x float> %i.fx, <2 x float> %i.fz, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.gm = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.gn, <4 x float> %i.gk)
  %i.gp = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gq = shufflevector <2 x float> %i.fx, <2 x float> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gr = fmul <2 x float> %i.gp, %i.gq
  %i.gs = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gt = shufflevector <2 x float> %i.fx, <2 x float> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gt, <2 x float> %i.gr)
  %i.gv = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.fk, i64 1
  %i.gx = or disjoint i32 %i.fm, 2
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.gy
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fn
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fq
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ft
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.fv
  %i.he = load <2 x float>, ptr %i.fj, align 8, !tbaa !27, !noalias !79 ; 2 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hg = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.hh = insertelement <4 x float> %i.hg, float %i.fk, i64 1
  %i.hi = insertelement <4 x float> %i.hh, float %i.fl, i64 2
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hf, <4 x float> %i.hj, <4 x float> %i.go) ; 5 uses
  %i.hl = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.gw, <2 x float> %i.gu) ; 4 uses
  %i.hn = extractelement <4 x float> %i.hk, i64 2 ; 2 uses
  store float %i.hn, ptr %i.fo, align 4, !tbaa !27
  %i.ho = extractelement <4 x float> %i.hk, i64 3 ; 2 uses
  store float %i.ho, ptr %i.fr, align 4, !tbaa !27
  %i.hp = extractelement <4 x float> %i.hk, i64 0 ; 2 uses
  store float %i.hp, ptr %i.fu, align 4, !tbaa !27
  store <2 x float> %i.hm, ptr %i.fw, align 4, !tbaa !27
  %i.hq = extractelement <4 x float> %i.hk, i64 1 ; 2 uses
  store float %i.hq, ptr %i.gz, align 4, !tbaa !27
  %i.hr = fneg <4 x float> %i.hk                  ; 4 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 2
  store float %i.hs, ptr %i.ha, align 4, !tbaa !27
  %i.ht = extractelement <4 x float> %i.hr, i64 3
  store float %i.ht, ptr %i.hb, align 4, !tbaa !27
  %i.hu = extractelement <4 x float> %i.hr, i64 0
  store float %i.hu, ptr %i.hc, align 4, !tbaa !27
  %i.hv = extractelement <2 x float> %i.hm, i64 0
  %i.hw = extractelement <2 x float> %i.hm, i64 1
  %i.hx = fneg <2 x float> %i.hm
  store <2 x float> %i.hx, ptr %i.hd, align 4, !tbaa !27
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gy
  %i.hz = extractelement <4 x float> %i.hr, i64 1
  store float %i.hz, ptr %i.hy, align 4, !tbaa !27
  %i.ia = load float, ptr %1, align 8, !tbaa !74
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !84
  %i.id = fmul float %i.ia, %i.ic                 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 8, !tbaa !27
  %i.ii = fmul float %i.ho, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.if, float %i.hn, float %i.ii)
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !27
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.il, float %i.hp, float %i.ij)
  %i.in = fmul float %i.id, %i.im
  %i.io = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fn
  store float %i.in, ptr %i.io, align 4, !tbaa !27
  %i.ip = load float, ptr %i.ie, align 4, !tbaa !27
  %i.iq = load float, ptr %i.ig, align 8, !tbaa !27
  %i.ir = fmul float %i.hw, %i.iq
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.hv, float %i.ir)
  %i.it = load float, ptr %i.ik, align 4, !tbaa !27
  %i.iu = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.hq, float %i.is)
  %i.iv = fmul float %i.id, %i.iu
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.fv
  store float %i.iv, ptr %i.iw, align 4, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_:bb.a
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.jv
  store float %i.jq, ptr %i.jw, align 4, !tbaa !27
  %i.jx = add nsw i32 %i.eu, 2
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.jy
  store float %i.jr, ptr %i.jz, align 4, !tbaa !27
  %i.ka = fneg float %i.jp
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.js
  store float %i.ka, ptr %i.kb, align 4, !tbaa !27
  %i.kc = fneg float %i.jq
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.jv
  store float %i.kc, ptr %i.kd, align 4, !tbaa !27
  %i.ke = fneg float %i.jr
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.jy
  store float %i.ke, ptr %i.kf, align 4, !tbaa !27
  %i.kg = load float, ptr %1, align 8, !tbaa !74
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ki = load float, ptr %i.kh, align 8, !tbaa !85
  %i.kj = fmul float %i.kg, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.kl = load float, ptr %i.kk, align 8, !tbaa !58
  %i.km = fmul float %i.kj, %i.kl
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.js
  store float %i.km, ptr %i.kn, align 4, !tbaa !27
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !86
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.js
  store float 0.000000e+00, ptr %i.kq, align 4, !tbaa !27
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.js
  store float 0.000000e+00, ptr %i.kr, align 4, !tbaa !27
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.js
  store float f0x7F7FFFFF, ptr %i.ks, align 4, !tbaa !27
  %i.kt = shl nsw i32 %i.d, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.ku = phi ptr [ %i.dq, %bb.a ], [ %i.iz, %bb.d ], [ %i.dq, %bb.e ] ; 2 uses
  %i.kv = phi ptr [ %i.do, %bb.a ], [ %i.ix, %bb.d ], [ %i.do, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.eu, %bb.a ], [ %i.jd, %bb.d ], [ %i.kt, %bb.e ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !29, !range !32, !noundef !33
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.lb = load float, ptr %i.kz, align 4, !tbaa !27
  %i.lc = load float, ptr %i.la, align 4, !tbaa !27 ; 6 uses
  %i.ld = fmul float %i.lb, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.lf = load float, ptr %i.le, align 8, !tbaa !27
  %i.lg = fmul float %i.lc, %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.li = load float, ptr %i.lh, align 4, !tbaa !27
  %i.lj = fmul float %i.lc, %i.li
  %i.lk = fmul float %i.lc, %i.ld                 ; 2 uses
  %i.ll = fmul float %i.lc, %i.lg                 ; 2 uses
  %i.lm = fmul float %i.lc, %i.lj                 ; 2 uses
  %i.ln = sext i32 %.1 to i64                     ; 8 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ln
  store float %i.lk, ptr %i.lo, align 4, !tbaa !27
  %i.lp = add nsw i32 %.1, 1
  %i.lq = sext i32 %i.lp to i64                   ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.lq
  store float %i.ll, ptr %i.lr, align 4, !tbaa !27
  %i.ls = add nsw i32 %.1, 2
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.lt
  store float %i.lm, ptr %i.lu, align 4, !tbaa !27
  %i.lv = fneg float %i.lk
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ln
  store float %i.lv, ptr %i.lw, align 4, !tbaa !27
  %i.lx = fneg float %i.ll
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.lq
  store float %i.lx, ptr %i.ly, align 4, !tbaa !27
  %i.lz = fneg float %i.lm
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.lt
  store float %i.lz, ptr %i.ma, align 4, !tbaa !27
  %i.mb = load float, ptr %1, align 8, !tbaa !74
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.md = load float, ptr %i.mc, align 8, !tbaa !85
  %i.me = fmul float %i.mb, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !64
  %i.mh = fmul float %i.me, %i.mg
  %i.mi = load ptr, ptr %i.dl, align 8, !tbaa !76
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.ln
  store float %i.mh, ptr %i.mj, align 4, !tbaa !27
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !86
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.ln
  store float 0.000000e+00, ptr %i.mm, align 4, !tbaa !27
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !62
  %i.mp = fcmp ogt float %i.mo, 0.000000e+00
  br i1 %i.mp, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.mq = load float, ptr %i.mf, align 4, !tbaa !64
  %i.mr = fcmp ogt float %i.mq, 0.000000e+00
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.ln ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ln ; 2 uses
  br i1 %i.mr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !27
  store float f0x7F7FFFFF, ptr %i.mt, align 4, !tbaa !27
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  store float f0xFF7FFFFF, ptr %i.ms, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.mt, align 4, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.ln
  store float f0xFF7FFFFF, ptr %i.mu, align 4, !tbaa !27
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ln
  store float f0x7F7FFFFF, ptr %i.mv, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 564
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = load i8, ptr %i.g, align 4, !tbaa !28, !range !32, !noundef !33
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37, !nonnull !33, !align !38 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.q = load <4 x float>, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39, !nonnull !33, !align !38 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 60 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.at = load <2 x float>, ptr %i.l, align 8, !tbaa !27 ; 2 uses
  %i.au = load <2 x float>, ptr %i.m, align 4, !tbaa !27 ; 2 uses
  %i.av = load <2 x float>, ptr %i.s, align 8, !tbaa !27 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.r, align 8, !tbaa !27
  %i.ax = load <2 x float>, ptr %i.v, align 8, !tbaa !27
  %i.ay = load <2 x float>, ptr %i.ad, align 4, !tbaa !27 ; 3 uses
  %2 = load float, ptr %i.ae, align 8, !tbaa !27
  %i.az = load <2 x float>, ptr %i.al, align 8, !tbaa !27
  %i.ba = load <2 x float>, ptr %i.ao, align 4, !tbaa !27
  %i.bb = load float, ptr %i.as, align 8, !tbaa !27
  %i.bc = shufflevector <2 x float> %i.au, <2 x float> %i.ay, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bd = shufflevector <2 x float> %i.at, <2 x float> %i.av, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bg = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bi = fmul <4 x float> %i.bc, %i.bh
  %i.bj = shufflevector <2 x float> %i.at, <2 x float> %i.av, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bm = shufflevector <2 x float> %i.au, <2 x float> %i.ay, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bm, <4 x float> %i.bi)
  %i.bo = insertelement <4 x float> poison, float %i.o, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.u, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.x, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.an, i64 3
  %i.bs = insertelement <4 x float> %i.q, float %i.ai, i64 1
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bt, <4 x float> %i.bn)
  %i.bv = insertelement <4 x float> poison, float %i.z, i64 2
  %i.bw = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> %i.bw, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.by = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ca = fadd <4 x float> %i.bu, %i.bz           ; 4 uses
  %shift = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.ca
  %i.cb = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 3 uses
  %i.cc = load <2 x float>, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %3 = insertelement <2 x float> poison, float %2, i64 0
  %i.cf = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.ce, %i.cf
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.ci = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.ar, i64 1
  %i.cm = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cn, <2 x float> %i.cj)
  %i.cp = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bb, i64 1
  %i.cr = fadd <2 x float> %i.cq, %i.co           ; 3 uses
  %i.cs = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ct = fsub <2 x float> %i.cr, %i.cs           ; 3 uses
  %i.cu = fmul float %i.cb, %i.cb
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = extractelement <2 x float> %i.ct, i64 1 ; 2 uses
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cw) ; 2 uses
  %i.cz = fcmp ogt float %i.cy, f0x34000000
  br i1 %i.cz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cy)
  %i.da = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.db = fmul float %i.cb, %i.da                 ; 2 uses
  %i.dc = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x float> %i.ct, %i.dd           ; 5 uses
  %i.df = extractelement <2 x float> %i.de, i64 1
  %i.dg = extractelement <2 x float> %i.de, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.de, float %i.db, i64 1
  %.sroa.3.12.vec.insert.i.i.i = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.de, <2 x i32> <i32 3, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dh = phi float [ 1.000000e+00, %bb.e ], [ %i.dg, %bb.d ] ; 4 uses
  %i.di = phi float [ 0.000000e+00, %bb.e ], [ %i.db, %bb.d ] ; 6 uses
  %i.dj = phi float [ 0.000000e+00, %bb.e ], [ %i.df, %bb.d ] ; 5 uses
  %i.dk = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.e ], [ %i.de, %bb.d ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = tail call noundef float @llvm.fabs.f32(float %i.dj)
  %i.do = fcmp ogt float %i.dn, f0x3F3504F3
  br i1 %i.do, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dp = fmul nnan float %i.dj, %i.dj
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dp) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.dq)
  %i.dr = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.ds = fneg <2 x float> %i.dk                  ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 1
  %i.du = fmul float %i.dr, %i.dt                 ; 2 uses
  %i.dv = fmul float %i.di, %i.dr                 ; 2 uses
  %i.dw = fmul float %i.dq, %i.dr
  %i.dx = extractelement <2 x float> %i.ds, i64 0
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = fmul float %i.du, %i.dh
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ea = fmul float %i.di, %i.di
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.ea) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.eb)
  %i.ec = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.ed = fneg float %i.di
  %i.ee = fmul float %i.ec, %i.ed                 ; 2 uses
  %i.ef = fmul float %i.dh, %i.ec                 ; 2 uses
  %i.eg = fneg float %i.dj
  %i.eh = fmul float %i.ef, %i.eg
  %i.ei = fmul float %i.dj, %i.ee
  %i.ej = fmul float %i.eb, %i.ec
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sink70 = phi float [ 0.000000e+00, %bb.g ], [ %i.ee, %bb.h ]
  %.sink69 = phi float [ %i.du, %bb.g ], [ %i.ef, %bb.h ]
  %.sink = phi float [ %i.dv, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink48.i = phi float [ %i.dw, %bb.g ], [ %i.eh, %bb.h ]
  %.sink47.i = phi float [ %i.dy, %bb.g ], [ %i.ei, %bb.h ]
  %.sink.i = phi float [ %i.dz, %bb.g ], [ %i.ej, %bb.h ]
  store float %.sink70, ptr %i.dl, align 16, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink69, ptr %i.ek, align 4, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink, ptr %i.el, align 8, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !27
  store float %.sink48.i, ptr %i.dm, align 16, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink47.i, ptr %i.en, align 4, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.eo, align 8, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.ep, align 4, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 428
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.et = getelementptr inbounds nuw i8, ptr %i.ab, i64 428
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 436
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ab, i64 436
  %i.ex = extractelement <2 x float> %i.cr, i64 0
  %i.ey = extractelement <2 x float> %i.cr, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [84 x i8], ptr %i.eq, i64 %indvars.iv ; 13 uses
  %i.fa = load float, ptr %i.n, align 8, !tbaa !27, !noalias !88
  %i.fb = load float, ptr %i.t, align 8, !tbaa !27, !noalias !88
  %i.fc = load float, ptr %i.w, align 8, !tbaa !27, !noalias !88
  %i.fd = load float, ptr %i.af, align 8, !tbaa !27, !noalias !91
  %i.fe = load float, ptr %i.am, align 8, !tbaa !27, !noalias !91
  %i.ff = load float, ptr %i.aq, align 8, !tbaa !27, !noalias !91
  %i.fg = load float, ptr %i.y, align 8, !tbaa !27
  %i.fh = load float, ptr %i.aj, align 8, !tbaa !27
  %i.fi = fsub float %i.ex, %i.fh                 ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.fk = load float, ptr %i.es, align 8, !tbaa !94
  %i.fl = load float, ptr %i.eu, align 8, !tbaa !94
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fs = load <2 x float>, ptr %i.l, align 8, !tbaa !27, !noalias !88
  %i.ft = load <2 x float>, ptr %i.s, align 8, !tbaa !27, !noalias !88
  %i.fu = load <2 x float>, ptr %i.v, align 8, !tbaa !27, !noalias !88
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fv = load <2 x float>, ptr %i.ac, align 8, !tbaa !27, !noalias !91
  %i.fw = load <2 x float>, ptr %i.al, align 8, !tbaa !27, !noalias !91
  %i.fx = load <2 x float>, ptr %i.ap, align 8, !tbaa !27, !noalias !91
  %i.fy = load <2 x float>, ptr %i.r, align 8, !tbaa !27
  %i.fz = load <2 x float>, ptr %i.ao, align 4, !tbaa !27
  %i.ga = load float, ptr %i.as, align 8, !tbaa !27
  %i.gb = insertelement <4 x float> poison, float %i.fg, i64 2
  %i.gc = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x float> %i.gb, <4 x float> %i.gc, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ge = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gg = fsub <4 x float> %i.ca, %i.gf           ; 3 uses
  %i.gh = fsub float %i.ey, %i.ga                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ez, ptr noundef nonnull align 16 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !23
  %i.gi = load float, ptr %i.fq, align 4, !tbaa !27 ; 3 uses
  %i.gj = load <2 x float>, ptr %i.ez, align 4, !tbaa !27 ; 2 uses
  %i.gk = load float, ptr %i.fr, align 4, !tbaa !27
  %i.gl = fneg float %i.gk                        ; 2 uses
  %i.gm = fneg float %i.gi
  %i.gn = extractelement <2 x float> %i.gj, i64 0 ; 2 uses
  %i.go = fneg float %i.gn                        ; 2 uses
  %i.gp = insertelement <4 x float> %i.gg, float %i.gh, i64 3
  %i.gq = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.gr = insertelement <4 x float> %i.gq, float %i.go, i64 1
  %i.gs = insertelement <4 x float> %i.gr, float %i.gl, i64 2
  %i.gt = shufflevector <2 x float> %i.gj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <4 x float> %i.gs, <4 x float> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.gv = fmul <4 x float> %i.gp, %i.gu
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.gx = shufflevector <4 x float> %i.gt, <4 x float> %i.gu, <4 x i32> <i32 1, i32 poison, i32 0, i32 4>
  %i.gy = insertelement <4 x float> %i.gx, float %i.gi, i64 1
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gy, <4 x float> %i.gw) ; 8 uses
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hb = fmul <2 x float> %i.ft, %i.ha
  %i.hc = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.hc, <2 x float> %i.hb)
  %i.he = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.he, <2 x float> %i.hd) ; 4 uses
  %i.hg = extractelement <4 x float> %i.gz, i64 2
  %i.hh = fmul float %i.fb, %i.hg
  %i.hi = extractelement <4 x float> %i.gz, i64 1
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.hi, float %i.hh)
  %i.hk = extractelement <4 x float> %i.gz, i64 0
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.hk, float %i.hj) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hf, ptr %i.fm, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !24
  %i.hm = fmul float %i.fi, %i.gi
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.go, float %i.hm) ; 2 uses
  %i.ho = extractelement <4 x float> %i.gg, i64 3
  %i.hp = fmul float %i.ho, %i.gn
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.gl, float %i.hp) ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x float> %i.fw, %i.hs
  %i.hu = shufflevector <4 x float> %i.gz, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.hu, <2 x float> %i.ht)
  %i.hw = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.hx, <2 x float> %i.hv) ; 4 uses
  %i.hz = fmul float %i.fe, %i.hn
  %i.ia = extractelement <4 x float> %i.gz, i64 3
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ia, float %i.hz)
  %i.ic = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.hq, float %i.ib) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ic, i64 0
  store <2 x float> %i.hy, ptr %i.fn, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !24
  %i.id = extractelement <2 x float> %i.hf, i64 0
  %i.ie = load <2 x float>, ptr %i.er, align 4, !tbaa !27
  %i.if = fmul <2 x float> %i.hf, %i.ie           ; 3 uses
  %i.ig = load float, ptr %i.ev, align 4, !tbaa !27
  %i.ih = fmul float %i.hl, %i.ig                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ih, i64 0
  store <2 x float> %i.if, ptr %i.fo, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !24
  %i.ii = extractelement <2 x float> %i.hy, i64 0
  %i.ij = load <2 x float>, ptr %i.et, align 4, !tbaa !27
  %i.ik = fmul <2 x float> %i.hy, %i.ij           ; 3 uses
  %i.il = load float, ptr %i.ew, align 4, !tbaa !27
  %i.im = fmul float %i.ic, %i.il                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.im, i64 0
  store <2 x float> %i.ik, ptr %i.fp, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !24
  %i.in = extractelement <2 x float> %i.if, i64 0
  %i.io = shufflevector <2 x float> %i.hf, <2 x float> %i.hy, <2 x i32> <i32 1, i32 3>
  %i.ip = shufflevector <2 x float> %i.if, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.iq = fmul <2 x float> %i.io, %i.ip           ; 2 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 0
  %i.is = tail call float @llvm.fmuladd.f32(float %i.in, float %i.id, float %i.ir)
  %i.it = tail call noundef float @llvm.fmuladd.f32(float %i.ih, float %i.hl, float %i.is)
  %i.iu = fadd float %i.fk, %i.it
  %i.iv = fadd float %i.fl, %i.iu
  %i.iw = extractelement <2 x float> %i.ik, i64 0
  %i.ix = extractelement <2 x float> %i.iq, i64 1
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.ii, float %i.ix)
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %i.im, float %i.ic, float %i.iy)
  %i.ja = fadd float %i.iv, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  store float %i.ja, ptr %i.jb, align 4, !tbaa !104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !37, !nonnull !33, !align !38 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !39, !nonnull !33, !align !38 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 280
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 280
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.je, ptr noundef nonnull align 4 dereferenceable(64) %i.jh, ptr noundef nonnull align 4 dereferenceable(48) %i.ji, ptr noundef nonnull align 4 dereferenceable(48) %i.jj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21btConeTwistConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 dereferenceable(640) %0, ptr nofree noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull align 8 dereferenceable(112) %2, float noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.btVector3, align 16          ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %6 = alloca %class.btTransform, align 4         ; 9 uses
  %7 = alloca %class.btTransform, align 4         ; 9 uses
  %8 = alloca %class.btVector3, align 16          ; 8 uses
  %9 = alloca %class.btVector3, align 8           ; 8 uses
  %10 = alloca %class.btTransform, align 8        ; 15 uses
  %11 = alloca %class.btVector3, align 8          ; 8 uses
  %12 = alloca %class.btTransform, align 8        ; 15 uses
  %13 = alloca %class.btTransform, align 16       ; 8 uses
  %14 = alloca %class.btTransform, align 16       ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37, !nonnull !33, !align !38 ; 22 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.k = load <4 x float>, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.m = load <4 x float>, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load float, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.v = load float, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.z = load float, ptr %i.y, align 8, !tbaa !27 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.t, align 8, !tbaa !27 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.x, align 8, !tbaa !27 ; 4 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = fmul <2 x float> %i.ad, %i.ae
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.ah = fmul <2 x float> %i.ae, %i.ag
  %i.ai = shufflevector <2 x float> %i.ac, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aj, <2 x float> %i.af)
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.aj, <2 x float> %i.ah)
  %i.an = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.o, i64 1
  %i.ap = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.ap, <2 x float> %i.ak)
  %i.ar = insertelement <2 x float> poison, float %i.v, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.z, i64 1
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.ap, <2 x float> %i.am)
  %i.au = load <2 x float>, ptr %i.w, align 4, !tbaa !27 ; 3 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = insertelement <2 x float> %i.av, float %i.s, i64 1 ; 2 uses
  %i.ax = fadd <2 x float> %i.aw, %i.aq           ; 3 uses
  %i.ay = fadd <2 x float> %i.au, %i.at           ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !39, !nonnull !33, !align !38 ; 23 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %15 = load float, ptr %i.bd, align 4, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %16 = load float, ptr %i.be, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %17 = load float, ptr %i.bh, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.br = load <2 x float>, ptr %i.bb, align 8, !tbaa !27 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.bk, align 8, !tbaa !27 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bo, align 8, !tbaa !27 ; 4 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> %i.br, <2 x i32> <i32 1, i32 3>
  %18 = insertelement <2 x float> poison, float %16, i64 0
  %i.bv = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bw = fmul <2 x float> %i.bu, %i.bv
  %i.bx = shufflevector <2 x float> %i.bs, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bv, %i.bx
  %i.bz = shufflevector <2 x float> %i.bt, <2 x float> %i.br, <2 x i32> <i32 0, i32 2>
  %19 = insertelement <2 x float> poison, float %15, i64 0
  %i.ca = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.bw)
  %i.cc = shufflevector <2 x float> %i.bs, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ca, <2 x float> %i.by)
  %20 = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ce = insertelement <2 x float> %20, float %i.bg, i64 1
  %i.cf = insertelement <2 x float> poison, float %17, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cb)
  %i.ci = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.bq, i64 1
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cg, <2 x float> %i.cd)
  %i.cl = load <2 x float>, ptr %i.bn, align 4, !tbaa !27 ; 3 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = insertelement <2 x float> %i.cm, float %i.bj, i64 1 ; 2 uses
  %i.co = fadd <2 x float> %i.cn, %i.ch           ; 3 uses
  %i.cp = fadd <2 x float> %i.cl, %i.ck           ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !28, !range !32, !noundef !33
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ct = fsub <2 x float> %i.ax, %i.aw           ; 3 uses
  %i.cu = fsub <2 x float> %i.ay, %i.au           ; 3 uses
  %i.cv = fsub <2 x float> %i.co, %i.cn           ; 3 uses
  %i.cw = fsub <2 x float> %i.cp, %i.cl           ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !106 ; 5 uses
  %.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 328
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 336
  %i.db = load float, ptr %i.da, align 4, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !27
  %i.de = fadd float %i.db, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 344
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load float, ptr %i.df, align 4, !tbaa !27
  %i.di = load float, ptr %i.dg, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 348
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dl = fneg <2 x float> %i.cu
  %i.dm = extractelement <2 x float> %i.ct, i64 1
  %i.dn = fneg float %i.dm
  %i.do = load <2 x float>, ptr %i.cz, align 4, !tbaa !27
  %i.dp = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.dq = fadd <2 x float> %i.do, %i.dp
  %i.dr = load <2 x float>, ptr %i.dj, align 4, !tbaa !27 ; 2 uses
  %i.ds = load <2 x float>, ptr %i.dk, align 4, !tbaa !27 ; 2 uses
  %i.dt = fadd <2 x float> %i.dr, %i.ds           ; 2 uses
  %i.du = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.dh, i64 1
  %i.dw = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = insertelement <2 x float> %i.dw, float %i.di, i64 1
  %i.dy = fadd <2 x float> %i.dv, %i.dx           ; 2 uses
  %i.dz = fmul <2 x float> %i.dy, %i.dl
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.ct, <2 x float> %i.dz)
  %i.eb = extractelement <2 x float> %i.dt, i64 0
  %i.ec = fmul float %i.eb, %i.dn
  %i.ed = extractelement <2 x float> %i.dy, i64 1
  %i.ee = extractelement <2 x float> %i.cu, i64 0
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ee, float %i.ec)
  %i.eg = fadd <2 x float> %i.dq, %i.ea
  %i.eh = fadd float %i.de, %i.ef
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eh, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0821.0 = phi <2 x float> [ %i.eg, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.sroa.6822.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !106 ; 5 uses
  %.not.i78 = icmp eq ptr %i.ej, null
  br i1 %.not.i78, label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83, label %bb.e

bb.e:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 328
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 336
  %i.em = load float, ptr %i.el, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !27
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 344
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.es = load float, ptr %i.eq, align 4, !tbaa !27
  %i.et = load float, ptr %i.er, align 8, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 348
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ew = fneg <2 x float> %i.cw
  %i.ex = extractelement <2 x float> %i.cv, i64 1
  %i.ey = fneg float %i.ex
  %i.ez = load <2 x float>, ptr %i.ek, align 4, !tbaa !27
  %i.fa = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.fb = fadd <2 x float> %i.ez, %i.fa
  %i.fc = load <2 x float>, ptr %i.eu, align 4, !tbaa !27 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.ev, align 4, !tbaa !27 ; 2 uses
  %i.fe = fadd <2 x float> %i.fc, %i.fd           ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fg = insertelement <2 x float> %i.ff, float %i.es, i64 1
  %i.fh = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fi = insertelement <2 x float> %i.fh, float %i.et, i64 1
  %i.fj = fadd <2 x float> %i.fg, %i.fi           ; 2 uses
  %i.fk = fmul <2 x float> %i.fj, %i.ew
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.cv, <2 x float> %i.fk)
  %i.fm = extractelement <2 x float> %i.fe, i64 0
  %i.fn = fmul float %i.fm, %i.ey
  %i.fo = extractelement <2 x float> %i.fj, i64 1
  %i.fp = extractelement <2 x float> %i.cw, i64 0
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fp, float %i.fn)
  %i.fr = fadd <2 x float> %i.fb, %i.fl
  %i.fs = fadd float %i.ep, %i.fq
  %.sroa.3.12.vec.insert.i16.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fs, i64 0
  br label %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83

_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83: ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit, %bb.e
  %.sroa.0819.0 = phi <2 x float> [ %i.fr, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ] ; 2 uses
  %.sroa.6820.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i16.i81, %bb.e ], [ zeroinitializer, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.0821.0, %.sroa.0819.0
  %i.ft = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop888 = fsub <2 x float> %.sroa.0821.0, %.sroa.0819.0
  %foldExtExtBinop890 = fsub <2 x float> %.sroa.6822.0, %.sroa.6820.0
  %i.fu = extractelement <2 x float> %foldExtExtBinop890, i64 0
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %foldExtExtBinop892 = fsub <2 x float> %i.ax, %i.co
  %i.fw = extractelement <2 x float> %foldExtExtBinop892, i64 1
  %foldExtExtBinop894 = fsub <2 x float> %i.ay, %i.cp
  %foldExtExtBinop896 = fsub <2 x float> %i.ax, %i.co
  %i.fx = extractelement <2 x float> %foldExtExtBinop896, i64 0
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ba, i64 360
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ba, i64 280
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.go = getelementptr inbounds nuw i8, ptr %i.ba, i64 296
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ba, i64 304
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ba, i64 312
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ba, i64 316
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ba, i64 320
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gy = shufflevector <2 x float> %i.cv, <2 x float> %i.cw, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.gz = shufflevector <2 x float> %i.ct, <2 x float> %i.cu, <4 x i32> <i32 poison, i32 1, i32 2, i32 0> ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83, %bb.f
  %indvars.iv = phi i64 [ 0, %_ZNK12btSolverBody31getVelocityInLocalPointObsoleteERK9btVector3RS0_.exit83 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [84 x i8], ptr %i.fv, i64 %indvars.iv ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 80
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !104
  %i.hd = fdiv float 1.000000e+00, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !27 ; 6 uses
  %i.hg = load float, ptr %i.fy, align 8, !tbaa !87
  %i.hh = load float, ptr %i.fz, align 8, !tbaa !94 ; 2 uses
  %i.hi = fmul float %i.hf, %i.hh
  %i.hj = load <2 x float>, ptr %i.ha, align 4, !tbaa !27 ; 6 uses
  %foldExtExtBinop898 = fmul <2 x float> %foldExtExtBinop888, %i.hj
  %i.hk = extractelement <2 x float> %foldExtExtBinop898, i64 1
  %i.hl = extractelement <2 x float> %i.hj, i64 0 ; 2 uses
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.ft, float %i.hk)
  %i.hn = tail call noundef float @llvm.fmuladd.f32(float %i.hf, float %i.fu, float %i.hm)
  %shift = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop900 = fmul <2 x float> %foldExtExtBinop894, %shift
  %i.ho = extractelement <2 x float> %foldExtExtBinop900, i64 0
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.hl, float %i.ho)
  %i.hq = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.hf, float %i.hp)
  %i.hr = fmul float %i.hq, -3.000000e-01
  %i.hs = fdiv float %i.hr, %3
  %i.ht = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.hu = insertelement <4 x float> %i.ht, float %i.hd, i64 0
  %i.hv = insertelement <4 x float> %i.hu, float %i.hf, i64 1 ; 2 uses
  %i.hw = fneg <4 x float> %i.hv                  ; 2 uses
  %i.hx = fneg float %i.hf
  %i.hy = insertelement <4 x float> %i.gz, float %i.hn, i64 0
  %i.hz = fmul <4 x float> %i.hy, %i.hw
  %i.ia = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> %i.gz, <4 x i32> <i32 0, i32 7, i32 5, i32 6>
  %i.ic = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> %i.hv, <4 x i32> <i32 4, i32 1, i32 2, i32 5>
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.id, <4 x float> %i.hz) ; 8 uses
  %i.if = extractelement <4 x float> %i.ie, i64 0 ; 5 uses
  %i.ig = fadd float %i.hg, %i.if
  store float %i.ig, ptr %i.fy, align 8, !tbaa !87
  %i.ih = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.hj, %i.ii
  %i.ik = load float, ptr %i.gb, align 8, !tbaa !27
  %i.il = load float, ptr %i.gd, align 8, !tbaa !27
  %i.im = load <2 x float>, ptr %i.ge, align 8, !tbaa !27
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.io = shufflevector <4 x float> %i.gy, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN21btConeTwistConstraint14setMotorTargetERK12btQuaternion:bb.a
  %i.ad = load <2 x float>, ptr %i.f, align 8     ; 4 uses
  %.sroa.26179.48.copyload = load float, ptr %.sroa.26179.48..sroa_idx, align 4 ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x float> %i.ae, %i.q
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.ag, <2 x float> %i.af)
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.ac, <2 x float> %i.ah)
  %i.aj = fadd <2 x float> %i.ai, %i.aa
  %i.ak = fmul float %.sroa.14.16.copyload, %i.n
  %i.al = fmul float %.sroa.26179.48.copyload, %.sroa.14.16.copyload
  %i.am = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> %i.ad, float %i.m, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ak, i64 1
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ao, <2 x float> %i.aq)
  %i.as = insertelement <2 x float> poison, float %.sroa.21.32.copyload, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> %i.ab, float %i.o, i64 1
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.ar) ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.av, %shift
  %.sroa.3.12.vec.insert.i.i198 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.aw = load <2 x float>, ptr %i.c, align 8     ; 4 uses
  %i.ax = load <2 x float>, ptr %i.d, align 8     ; 4 uses
  %i.ay = load <2 x float>, ptr %i.e, align 8     ; 4 uses
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float 0.000000e+00, i64 3
  %i.bb = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bd = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %i.bf = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bh = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bi = insertelement <4 x float> %i.bh, float 0.000000e+00, i64 3
  %i.bj = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bl = extractelement <2 x float> %i.ax, i64 0
  %i.bm = extractelement <2 x float> %i.aw, i64 0
  %i.bn = extractelement <2 x float> %i.ay, i64 0
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bp = load <2 x float>, ptr %.sroa.12165.16..sroa_idx, align 4 ; 4 uses
  %.sroa.14167.16.copyload = load float, ptr %.sroa.14167.16..sroa_idx, align 8 ; 3 uses
  %i.bq = load <2 x float>, ptr %.sroa.5158.0..sroa_idx, align 4 ; 4 uses
  %.sroa.7160.0.copyload = load float, ptr %.sroa.7160.0..sroa_idx, align 8 ; 3 uses
  %i.br = load <2 x float>, ptr %.sroa.19172.32..sroa_idx, align 4 ; 4 uses
  %.sroa.21174.32.copyload = load float, ptr %.sroa.21174.32..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.ba, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bu = fmul <4 x float> %i.bt, %i.bc
  %i.bv = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.be, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bg, <4 x float> %i.bu)
  %i.by = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.bi, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.bk, <4 x float> %i.bx)
  %i.cb = shufflevector <4 x float> %i.bb, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cc = shufflevector <2 x float> %i.ax, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cd = insertelement <4 x float> %i.cc, float 1.000000e+00, i64 3 ; 2 uses
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = shufflevector <2 x float> %i.aw, <2 x float> %i.bq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3 ; 2 uses
  %i.ch = shufflevector <4 x float> %i.bf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ch, <4 x float> %i.ce)
  %i.cj = shufflevector <2 x float> %i.ay, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 3 ; 2 uses
  %i.cl = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cl, <4 x float> %i.ci)
  %i.cn = extractelement <2 x float> %i.bp, i64 0
  %i.co = extractelement <2 x float> %i.bq, i64 0
  %i.cp = extractelement <2 x float> %i.br, i64 0
  store <4 x float> %i.ca, ptr %6, align 16, !alias.scope !136
  store <4 x float> %i.cm, ptr %i.bo, align 16, !alias.scope !136
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.14.16.copyload, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %.sroa.14167.16.copyload, i64 2
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cu = insertelement <4 x float> %i.cd, float %.sroa.14.16.copyload, i64 2
  %i.cv = fmul <4 x float> %i.ct, %i.cu
  %i.cw = insertelement <4 x float> %i.cg, float %.sroa.7160.0.copyload, i64 2
  %i.cx = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.7.0.copyload, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cy, <4 x float> %i.cv)
  %i.da = insertelement <4 x float> %i.ck, float %.sroa.21174.32.copyload, i64 2
  %i.db = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.21.32.copyload, i64 0
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.dc, <4 x float> %i.cz)
  store <4 x float> %i.dd, ptr %i.cq, align 16, !alias.scope !136
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 48
  store <2 x float> %i.aj, ptr %i.de, align 16, !alias.scope !136
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i198, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !24, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !27, !noalias !139
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.di = load float, ptr %i.dh, align 4, !tbaa !27, !noalias !139 ; 3 uses
  %i.dj = extractelement <2 x float> %i.p, i64 1  ; 4 uses
  %i.dk = fmul float %i.dj, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !27, !noalias !139
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.do = load float, ptr %i.dn, align 8, !tbaa !27, !noalias !139 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !27, !noalias !139 ; 3 uses
  %i.dr = fmul float %i.dj, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !27, !noalias !139 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.dv = load float, ptr %i.du, align 4, !tbaa !27, !noalias !139
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !27, !noalias !139 ; 3 uses
  %i.dy = fmul float %i.dj, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !27, !noalias !139
  %i.eb = extractelement <2 x float> %i.q, i64 1  ; 4 uses
  %i.ec = fmul float %i.eb, %i.di
  %i.ed = fmul float %i.eb, %i.dq
  %i.ee = fmul float %i.eb, %i.dx
  %i.ef = extractelement <2 x float> %i.r, i64 1  ; 4 uses
  %i.eg = fmul float %i.ef, %i.di
  %i.eh = fmul float %i.ef, %i.dq
  %i.ei = fmul float %i.ef, %i.dx
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !27, !noalias !144 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.em = load float, ptr %i.el, align 8, !tbaa !27, !noalias !144 ; 3 uses
  %i.en = fmul float %i.dj, %i.em
  %i.eo = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eo, float %i.ek, float %i.en)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.er = load float, ptr %i.eq, align 4, !tbaa !27, !noalias !144 ; 3 uses
  %i.es = call noundef float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.er, float %i.ep)
  %i.et = fadd float %.sroa.23151.48.copyload, %i.es
  %i.eu = fmul float %i.eb, %i.em
  %i.ev = extractelement <2 x float> %i.q, i64 0  ; 2 uses
  %i.ew = call float @llvm.fmuladd.f32(float %i.ev, float %i.ek, float %i.eu)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %.sroa.14.16.copyload, float %i.er, float %i.ew)
  %i.ey = fadd float %.sroa.26153.48.copyload, %i.ex
  %i.ez = fmul float %i.ef, %i.em
  %i.fa = extractelement <2 x float> %i.r, i64 0  ; 2 uses
  %i.fb = call float @llvm.fmuladd.f32(float %i.fa, float %i.ek, float %i.ez)
  %i.fc = call noundef float @llvm.fmuladd.f32(float %.sroa.21.32.copyload, float %i.er, float %i.fb)
  %i.fd = fadd float %.sroa.28.48.copyload, %i.fc
  %i.fe = fneg float %i.et
  %i.ff = fneg float %i.ey
  %i.fg = fneg float %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !27, !noalias !145
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !27, !noalias !145 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !27, !noalias !145
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !27, !noalias !150 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !27, !noalias !150 ; 3 uses
  %i.fu = fmul float %i.co, %i.ft
  %i.fv = call float @llvm.fmuladd.f32(float %i.bm, float %i.fr, float %i.fu)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !27, !noalias !150 ; 3 uses
  %i.fy = call noundef float @llvm.fmuladd.f32(float %.sroa.7160.0.copyload, float %i.fx, float %i.fv)
  %i.fz = extractelement <2 x float> %i.ad, i64 0
  %i.ga = fadd float %i.fz, %i.fy
  %i.gb = fmul float %i.cn, %i.ft
  %i.gc = call float @llvm.fmuladd.f32(float %i.bl, float %i.fr, float %i.gb)
  %i.gd = call noundef float @llvm.fmuladd.f32(float %.sroa.14167.16.copyload, float %i.fx, float %i.gc)
  %i.ge = fadd float %.sroa.26179.48.copyload, %i.gd
  %i.gf = fmul float %i.cp, %i.ft
  %i.gg = call float @llvm.fmuladd.f32(float %i.bn, float %i.fr, float %i.gf)
  %i.gh = call noundef float @llvm.fmuladd.f32(float %.sroa.21174.32.copyload, float %i.fx, float %i.gg)
  %i.gi = fadd float %.sroa.28181.48.copyload, %i.gh
  %i.gj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dg, i64 0 ; 3 uses
  %i.gk = insertelement <2 x float> %i.p, float -0.000000e+00, i64 1 ; 2 uses
  %i.gl = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.dk, i64 0
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gk, <2 x float> %i.gl)
  %i.gn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dm, i64 0 ; 3 uses
  %i.go = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.7.0.copyload, i64 0 ; 2 uses
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.go, <2 x float> %i.gm) ; 2 uses
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gr = insertelement <2 x float> %i.q, float -0.000000e+00, i64 1 ; 2 uses
  %i.gs = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gr, <2 x float> %i.gs)
  %i.gu = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.14.16.copyload, i64 0 ; 3 uses
  %i.gv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gu, <2 x float> %i.gt) ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gx = insertelement <2 x float> %i.r, float -0.000000e+00, i64 1 ; 2 uses
  %i.gy = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.eg, i64 0
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gx, <2 x float> %i.gy)
  %i.ha = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.21.32.copyload, i64 0 ; 3 uses
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.ha, <2 x float> %i.gz) ; 2 uses
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %9 = load <2 x float>, ptr %i.fh, align 4, !tbaa !27, !noalias !145
  %10 = load <2 x float>, ptr %i.fi, align 4, !tbaa !27, !noalias !145
  %11 = load <2 x float>, ptr %i.fj, align 4, !tbaa !27, !noalias !145
  %i.hd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fn, i64 2
  %12 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.he = shufflevector <4 x float> %12, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.hf = shufflevector <2 x float> %i.bq, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hg = fmul <4 x float> %i.he, %i.hf
  %i.hh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fl, i64 2
  %13 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hi = shufflevector <4 x float> %13, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.hj = shufflevector <2 x float> %i.aw, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.hj, <4 x float> %i.hg)
  %i.hl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fp, i64 2
  %14 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hm = shufflevector <4 x float> %14, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.hn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.7160.0.copyload, i64 0
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.ho, <4 x float> %i.hk) ; 2 uses
  %i.hq = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fn, i64 2
  %i.hr = shufflevector <4 x float> %12, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hs = shufflevector <2 x float> %i.bp, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ht = fmul <4 x float> %i.hr, %i.hs
  %i.hu = shufflevector <2 x float> %i.ax, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.hu, <4 x float> %i.ht)
  %i.hw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.14167.16.copyload, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.hx, <4 x float> %i.hv) ; 2 uses
  %i.hz = shufflevector <2 x float> %i.br, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ia = fmul <4 x float> %i.he, %i.hz
  %i.ib = shufflevector <2 x float> %i.ay, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.ib, <4 x float> %i.ia)
  %i.id = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.21174.32.copyload, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.ie, <4 x float> %i.ic) ; 2 uses
  %i.ig = fmul <4 x float> %i.gw, %i.hy
  %i.ih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %i.gq, <4 x float> %i.ig)
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.if, <4 x float> %i.hc, <4 x float> %i.ih)
  %i.ij = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ge, i64 1 ; 3 uses
  %i.im = fmul <2 x float> %i.ij, %i.il
  %i.in = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.ip = insertelement <2 x float> %i.io, float %i.ga, i64 1 ; 3 uses
  %i.iq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.ip, <2 x float> %i.im)
  %i.ir = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.gi, i64 1 ; 3 uses
  %i.iu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.it, <2 x float> %i.iq) ; 2 uses
  store <4 x float> %i.ii, ptr %7, align 16, !alias.scope !151
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iw = call float @llvm.fmuladd.f32(float %i.do, float %i.eo, float %i.dr)
  %i.ix = call noundef float @llvm.fmuladd.f32(float %i.dt, float %.sroa.7.0.copyload, float %i.iw) ; 2 uses
  %i.iy = call float @llvm.fmuladd.f32(float %i.do, float %i.ev, float %i.ed)
  %i.iz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0 ; 2 uses
  %i.ja = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iy, i64 0
  %i.jb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.gu, <2 x float> %i.ja) ; 2 uses
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jd = call float @llvm.fmuladd.f32(float %i.do, float %i.fa, float %i.eh)
  %i.je = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.jd, i64 0
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.ha, <2 x float> %i.je) ; 2 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jh = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul <2 x float> %i.jh, %i.il
  %i.jj = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.ip, <2 x float> %i.ji)
  %i.jm = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.it, <2 x float> %i.jl) ; 2 uses
  %i.jo = insertelement <4 x float> %i.hy, float 1.000000e+00, i64 3 ; 2 uses
  %i.jp = fmul <4 x float> %i.jc, %i.jo
  %i.jq = insertelement <4 x float> %i.hp, float 0.000000e+00, i64 3 ; 2 uses
  %i.jr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ix, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> %i.js, <4 x float> %i.jp)
  %i.ju = insertelement <4 x float> %i.if, float 0.000000e+00, i64 3 ; 2 uses
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> %i.jg, <4 x float> %i.jt)
  %i.jw = shufflevector <2 x float> %i.iu, <2 x float> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.jx = shufflevector <2 x float> %i.iu, <2 x float> %i.jn, <2 x i32> <i32 1, i32 3>
  %.sroa.0.4.vec.insert.i.i45 = fadd <2 x float> %i.jw, %i.jx
  store <4 x float> %i.jv, ptr %i.iv, align 16, !alias.scope !151
  %i.jy = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.jz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0 ; 3 uses
  %i.ka = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.dy, i64 0
  %i.kb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.gk, <2 x float> %i.ka)
  %i.kc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0 ; 3 uses
  %i.kd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.go, <2 x float> %i.kb) ; 2 uses
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0
  %i.kg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.gr, <2 x float> %i.kf)
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.gu, <2 x float> %i.kg) ; 2 uses
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kj = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ei, i64 0
  %i.kk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.gx, <2 x float> %i.kj)
  %i.kl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> %i.ha, <2 x float> %i.kk) ; 2 uses
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kn = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.kn, %i.il
  %i.kp = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.ip, <2 x float> %i.ko)
  %i.kr = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.it, <2 x float> %i.kq) ; 2 uses
  %shift191 = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop192 = fadd <2 x float> %i.ks, %shift191
  %.sroa.3.12.vec.insert.i.i46199 = insertelement <2 x float> %foldExtExtBinop192, float 0.000000e+00, i64 1
  %i.kt = fmul <4 x float> %i.ki, %i.jo
  %i.ku = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> %i.ke, <4 x float> %i.kt)
  %i.kv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> %i.km, <4 x float> %i.ku)
  store <4 x float> %i.kv, ptr %i.jy, align 16, !alias.scope !151
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i45, ptr %i.kw, align 16, !alias.scope !151
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i46199, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !24, !alias.scope !151
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i62 = load <2 x float>, ptr %3, align 8 ; 6 uses
  %.fca.1.gep.i64 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i65 = load <2 x float>, ptr %.fca.1.gep.i64, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.086.0.vec.extract = extractelement <2 x float> %.fca.0.load.i62, i64 0
  %.sroa.086.4.vec.extract = extractelement <2 x float> %.fca.0.load.i62, i64 1
  %.sroa.587.8.vec.extract = extractelement <2 x float> %.fca.1.load.i65, i64 0 ; 2 uses
  %.sroa.587.12.vec.extract = extractelement <2 x float> %.fca.1.load.i65, i64 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !27 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.fca.1.gep.i77 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.la = fneg float %.sroa.086.0.vec.extract
  %i.lb = shufflevector <2 x float> %.fca.1.load.i65, <2 x float> %.fca.0.load.i62, <2 x i32> <i32 0, i32 2>
  %i.lc = fneg <2 x float> %i.lb
  %i.ld = shufflevector <2 x float> %.fca.0.load.i62, <2 x float> %.fca.1.load.i65, <2 x i32> <i32 1, i32 2>
  %i.le = fneg <2 x float> %i.ld                  ; 2 uses
  %i.lf = fmul float %i.ky, %i.la
  %i.lg = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 5 uses
  %i.lh = load <2 x float>, ptr %i.kz, align 4, !tbaa !27 ; 3 uses
  %i.li = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x float> %i.lj, %i.le
  %i.ll = shufflevector <2 x float> %.fca.1.load.i65, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %i.lh, <2 x float> %i.lk)
  %i.ln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.lg, <2 x float> %i.lm)
  %i.lo = shufflevector <2 x float> %i.lh, <2 x float> %i.lg, <2 x i32> <i32 1, i32 2>
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.load.i62, <2 x float> %i.lo, <2 x float> %i.ln) ; 4 uses
  %i.lq = extractelement <2 x float> %i.lg, i64 0
  %foldExtExtBinop194 = fmul <2 x float> %.fca.0.load.i62, %i.lg
  %i.lr = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.ls = call float @llvm.fmuladd.f32(float %.sroa.587.12.vec.extract, float %i.ky, float %i.lr)
  %i.lt = extractelement <2 x float> %i.lg, i64 1 ; 2 uses
  %i.lu = call float @llvm.fmuladd.f32(float %.sroa.086.4.vec.extract, float %i.lt, float %i.ls)
  %i.lv = extractelement <2 x float> %i.lh, i64 1 ; 2 uses
  %i.lw = call float @llvm.fmuladd.f32(float %.sroa.587.8.vec.extract, float %i.lv, float %i.lu)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i75 = load <2 x float>, ptr %2, align 8 ; 6 uses
  %.fca.1.load.i78 = load <2 x float>, ptr %.fca.1.gep.i77, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.fca.0.load.i75, i64 0
  %i.lx = fneg <2 x float> %i.lp                  ; 2 uses
  %i.ly = extractelement <2 x float> %i.le, i64 0
  %i.lz = call float @llvm.fmuladd.f32(float %.sroa.587.12.vec.extract, float %i.lq, float %i.lf)
  %i.ma = call float @llvm.fmuladd.f32(float %i.ly, float %i.lv, float %i.lz)
  %i.mb = call float @llvm.fmuladd.f32(float %.sroa.587.8.vec.extract, float %i.lt, float %i.ma) ; 4 uses
  %i.mc = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.md = insertelement <2 x float> %i.mc, float %i.mb, i64 0
  %i.me = shufflevector <2 x float> %.fca.1.load.i78, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mf = fmul <2 x float> %i.md, %i.me
  %i.mg = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mh, <2 x float> %.fca.0.load.i75, <2 x float> %i.mf)
  %i.mj = shufflevector <2 x float> %.fca.1.load.i78, <2 x float> %.fca.0.load.i75, <2 x i32> <i32 0, i32 2>
  %i.mk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.mj, <2 x float> %i.mi)
  %i.ml = insertelement <2 x float> %i.mc, float %i.mb, i64 1
  %i.mm = fneg <2 x float> %i.ml
  %i.mn = shufflevector <2 x float> %.fca.0.load.i75, <2 x float> %.fca.1.load.i78, <2 x i32> <i32 1, i32 2>
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mm, <2 x float> %i.mn, <2 x float> %i.mk)
  %i.mp = fneg float %.sroa.0.0.vec.extract
  %i.mq = fmul float %i.mb, %i.mp
  %foldExtExtBinop196 = fmul <2 x float> %i.lp, %.fca.1.load.i78
  %i.mr = shufflevector <2 x float> %foldExtExtBinop196, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ms = insertelement <2 x float> %i.mr, float %i.mq, i64 1
  %i.mt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mh, <2 x float> %.fca.1.load.i78, <2 x float> %i.ms)
  %i.mu = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mv = insertelement <2 x float> %i.mu, float %i.mb, i64 0
  %i.mw = shufflevector <2 x float> %.fca.0.load.i75, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.mw, <2 x float> %i.mt)
  %i.my = shufflevector <2 x float> %.fca.0.load.i75, <2 x float> %.fca.1.load.i78, <2 x i32> <i32 0, i32 2>
  %i.mz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.my, <2 x float> %i.mx)
  store <2 x float> %i.mo, ptr %8, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %i.mz, ptr %i.na, align 8
  call void @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) initializes((604, 620)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 612 ; 2 uses
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !27 ; 9 uses
  %i.d = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !27 ; 9 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 4 uses
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = fmul float %i.f, -0.000000e+00
  %i.j = fsub float %i.i, %i.g
  %i.k = extractelement <2 x float> %i.c, i64 1   ; 3 uses
  %i.l = fmul float %i.f, 0.000000e+00
  %i.m = fadd float %i.k, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float 0.000000e+00, float %i.d)
  %i.o = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
end_hunk_3
