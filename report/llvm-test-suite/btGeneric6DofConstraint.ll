Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGeneric6DofConstraint?download=true
inline.NumInlined: 433
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 1, ptr %i.q, align 4, !tbaa !19
  %i.r = fsub float %i.j, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.r, ptr %i.s, align 4, !tbaa !20
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp ogt float %i.j, %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.u, align 4, !tbaa !19
  %i.v = fsub float %i.j, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.v, ptr %i.w, align 4, !tbaa !20
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.u, align 4, !tbaa !19
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

_ZN22btRotationalLimitMotor14testLimitValueEf.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %i.x = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.z = load i8, ptr %i.y, align 8, !range !36
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond.not.i = select i1 %i.x, i1 true, i1 %i.aa
  ret i1 %or.cond.not.i
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
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
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
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
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
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
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
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

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1266) %0) unnamed_addr #12 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 4           ; 6 uses
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
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.x, align 8
  %i.ag = load float, ptr %i.y, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ag, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i18 = load <2 x float>, ptr %i.u, align 8
  %i.ah = load float, ptr %i.v, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i19 = insertelement <2 x float> %.sroa.0.0.vec.insert.i18, float %i.ah, i64 1
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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = fcmp ult float %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  %. = select i1 %i.ao, i64 1044, i64 1108
  %.66 = select i1 %i.ao, i64 1060, i64 1124
  %.67 = select i1 %i.ao, i64 1076, i64 1140
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.67
  %4 = load <1 x float>, ptr %i.ap, align 4
  %.sroa.0.0.vec.insert.i.1 = shufflevector <1 x float> %4, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.as = load float, ptr %i.aq, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.as, i64 1
  %i.at = load float, ptr %i.ar, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 308
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aw = load float, ptr %i.av, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !10
  %i.az = fcmp ult float %i.aw, %i.ay
  br i1 %i.az, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.bb = trunc nuw i8 %i.ba to i1                ; 3 uses
  %.68 = select i1 %i.bb, i64 1048, i64 1112
  %.69 = select i1 %i.bb, i64 1064, i64 1128
  %.70 = select i1 %i.bb, i64 1080, i64 1144
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.68
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.69
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.70
  %5 = load <1 x float>, ptr %i.bc, align 8
  %.sroa.0.0.vec.insert.i.2 = shufflevector <1 x float> %5, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bf = load float, ptr %i.bd, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.bf, i64 1
  %i.bg = load float, ptr %i.be, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 476
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %indvars.iv ; 9 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !35
  %i.bs = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bn, float noundef %i.bp, float noundef %i.br) ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  store float %i.bs, ptr %i.bt, align 8, !tbaa !94
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !34 ; 3 uses
  %i.bv = load float, ptr %i.bq, align 8, !tbaa !35 ; 3 uses
  %i.bw = fcmp ogt float %i.bu, %i.bv
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 0, ptr %i.bx, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.m:                                             ; preds = %bb.k
  %i.by = fcmp olt float %i.bs, %i.bu
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 1, ptr %i.bz, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ca = fcmp ogt float %i.bs, %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.cb, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %i.cb, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.l, %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.cd = load i8, ptr %i.cc, align 8, !range !36
  %.not = icmp eq i8 %i.cd, 0
  br i1 %.not, label %bb.r, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split: ; preds = %bb.n, %bb.p
  %.sink65 = phi float [ %i.bv, %bb.p ], [ %i.bu, %bb.n ]
  %i.ce = fsub float %i.bs, %.sink65
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store float %i.ce, ptr %i.cf, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.cg, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33 ; 2 uses
  %i.ch = getelementptr inbounds nuw [84 x i8], ptr %i.bl, i64 %indvars.iv ; 10 uses
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !61, !nonnull !62, !align !63 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cp = load float, ptr %i.cm, align 8, !tbaa !10, !noalias !95
  %i.cq = load float, ptr %i.cn, align 8, !tbaa !10, !noalias !95
  %i.cr = load float, ptr %i.co, align 8, !tbaa !10, !noalias !95
  %i.cs = load ptr, ptr %i.l, align 8, !tbaa !64, !nonnull !62, !align !63 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cz = load float, ptr %i.cw, align 8, !tbaa !10, !noalias !98
  %i.da = load float, ptr %i.cx, align 8, !tbaa !10, !noalias !98
  %i.db = load float, ptr %i.cy, align 8, !tbaa !10, !noalias !98
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 428
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 428
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.di = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.dj = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.dk = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.cj, align 8, !tbaa !10, !noalias !95
  %i.dm = load <2 x float>, ptr %i.ck, align 8, !tbaa !10, !noalias !95
  %i.dn = load <2 x float>, ptr %i.cl, align 8, !tbaa !10, !noalias !95
  %i.do = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = fmul <2 x float> %i.dm, %i.do
  %i.dq = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dq, <2 x float> %i.dp)
  %i.ds = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.ds, <2 x float> %i.dr) ; 4 uses
  %i.du = fmul float %i.cq, %i.dj
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.di, float %i.du)
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.dk, float %i.dv) ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.dx = fneg float %i.di                        ; 2 uses
  %i.dy = fneg float %i.dj                        ; 2 uses
  %i.dz = fneg float %i.dk                        ; 2 uses
  %i.ea = load <2 x float>, ptr %i.ct, align 8, !tbaa !10, !noalias !98
  %i.eb = load <2 x float>, ptr %i.cu, align 8, !tbaa !10, !noalias !98
  %i.ec = load <2 x float>, ptr %i.cv, align 8, !tbaa !10, !noalias !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.ch, i8 0, i64 16, i1 false)
  store <2 x float> %i.dt, ptr %i.de, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.ed = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.eb, %i.ee
  %i.eg = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.eh, <2 x float> %i.ef)
  %i.ej = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ek, <2 x float> %i.ei) ; 4 uses
  %i.em = fmul float %i.da, %i.dy
  %i.en = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.dx, float %i.em)
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.dz, float %i.en) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eo, i64 0
  store <2 x float> %i.el, ptr %i.df, align 4
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.ep = extractelement <2 x float> %i.dt, i64 0
  %i.eq = load <2 x float>, ptr %i.dc, align 4, !tbaa !10
  %i.er = fmul <2 x float> %i.dt, %i.eq           ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ci, i64 436
  %i.et = load float, ptr %i.es, align 4, !tbaa !10
  %i.eu = fmul float %i.dw, %i.et                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  store <2 x float> %i.er, ptr %i.dg, align 4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.ev = extractelement <2 x float> %i.el, i64 0
  %i.ew = load <2 x float>, ptr %i.dd, align 4, !tbaa !10
  %i.ex = fmul <2 x float> %i.el, %i.ew           ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cs, i64 436
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !10
  %i.fa = fmul float %i.eo, %i.ez                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fa, i64 0
  store <2 x float> %i.ex, ptr %i.dh, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !33
  %foldExtExtBinop = fmul <2 x float> %i.dt, %i.er
  %i.fb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fc = extractelement <2 x float> %i.er, i64 0
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.ep, float %i.fb)
  %i.fe = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.dw, float %i.fd)
  %foldExtExtBinop72 = fmul <2 x float> %i.el, %i.ex
  %i.ff = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.fg = extractelement <2 x float> %i.ex, i64 0
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.ev, float %i.ff)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.fa, float %i.eo, float %i.fh)
  %i.fj = fadd float %i.fe, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  store float %i.fj, ptr %i.fk, align 4, !tbaa !86
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
end_hunk_0
begin_hunk_1_@_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_:.preheader
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 0, ptr %i.l, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.b:                                             ; preds = %.preheader
  %i.m = fcmp olt float %i.g, %i.i
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 1, ptr %i.n, align 4, !tbaa !19
  %i.o = fsub float %i.g, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.o, ptr %i.p, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.d:                                             ; preds = %bb.b
  %i.q = fcmp ogt float %i.g, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.r, align 4, !tbaa !19
  %i.s = fsub float %i.g, %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.s, ptr %i.t, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !35
  %i.aa = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.v, float noundef %i.x, float noundef %i.z) ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %i.aa, ptr %i.ab, align 8, !tbaa !94
  %i.ac = load float, ptr %i.w, align 4, !tbaa !34 ; 3 uses
  %i.ad = load float, ptr %i.y, align 8, !tbaa !35 ; 3 uses
  %i.ae = fcmp ogt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.af = fcmp olt float %i.aa, %i.ac
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fcmp ogt float %i.aa, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ah, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.j:                                             ; preds = %bb.h
  store i32 2, ptr %i.ah, align 4, !tbaa !19
  %i.ai = fsub float %i.aa, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.ai, ptr %i.aj, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.k:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %i.ak, align 4, !tbaa !19
  %i.al = fsub float %i.aa, %i.ac
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.al, ptr %i.am, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.l:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 0, ptr %i.an, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !35
  %i.au = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ap, float noundef %i.ar, float noundef %i.at) ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store float %i.au, ptr %i.av, align 8, !tbaa !94
  %i.aw = load float, ptr %i.aq, align 4, !tbaa !34 ; 3 uses
  %i.ax = load float, ptr %i.as, align 8, !tbaa !35 ; 3 uses
  %i.ay = fcmp ogt float %i.aw, %i.ax
  br i1 %i.ay, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.az = fcmp olt float %i.au, %i.aw
  br i1 %i.az, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = fcmp ogt float %i.au, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bb, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.bb, align 4, !tbaa !19
  %i.bc = fsub float %i.au, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float %i.bc, ptr %i.bd, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.q:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 1, ptr %i.be, align 4, !tbaa !19
  %i.bf = fsub float %i.au, %i.aw
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float %i.bf, ptr %i.bg, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.r:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 0, ptr %i.bh, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bi = tail call noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.bj = tail call noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef %1, i32 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #12 align 2 {
bb.a:
  %8 = alloca %class.btRotationalLimitMotor, align 4 ; 20 uses
  %9 = alloca %class.btVector3, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 52
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.l, align 8, !tbaa !4    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %.pre = load i8, ptr %i.m, align 4, !tbaa !15, !range !36 ; 2 uses
  %i.t = icmp eq i8 %.pre, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !17
  store i32 %i.r, ptr %i.i, align 4, !tbaa !19
  %i.ad = load float, ptr %i.ab, align 8, !tbaa !10
  store float %i.ad, ptr %i.n, align 4, !tbaa !94
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !10
  store float %i.ae, ptr %i.j, align 4, !tbaa !20
  store i8 %.pre, ptr %i.k, align 4, !tbaa !21
  %i.af = load float, ptr %i.o, align 8, !tbaa !104
  store float %i.af, ptr %i.f, align 4, !tbaa !38
  %i.ag = load float, ptr %i.z, align 8, !tbaa !10
  store float %i.ag, ptr %i.e, align 4, !tbaa !35
  %i.ah = load <2 x float>, ptr %i.p, align 8, !tbaa !10
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ai, ptr %i.h, align 4, !tbaa !10
  %i.aj = load float, ptr %i.ac, align 8, !tbaa !10
  store float %i.aj, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !105
  %i.ak = load float, ptr %i.y, align 8, !tbaa !10
  store float %i.ak, ptr %i.c, align 4, !tbaa !106
  %i.al = load float, ptr %i.x, align 8, !tbaa !10
  store float %i.al, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.w, align 8
  %i.am = load float, ptr %i.v, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.am, i64 1
  %i.an = load float, ptr %i.u, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.q, align 8
  %i.ao = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15, !range !36 ; 2 uses
  br i1 %i.ar, label %bb.c, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge

bb.c:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, %bb.c
  %i.av = phi i8 [ 1, %bb.c ], [ %i.at, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit ]
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !17
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  store float %i.ax, ptr %i.n, align 4, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  store float %i.az, ptr %i.j, align 4, !tbaa !20
  store i8 %i.av, ptr %i.k, align 4, !tbaa !21
  %i.ba = load float, ptr %i.o, align 8, !tbaa !104
  store float %i.ba, ptr %i.f, align 4, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  store float %i.bc, ptr %i.e, align 4, !tbaa !35
  %i.bd = load <2 x float>, ptr %i.p, align 8, !tbaa !10
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.be, ptr %i.h, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10
  store float %i.bg, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  store float %i.bi, ptr %i.c, align 4, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !10
  store float %i.bk, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %.sroa.0.0.vec.insert.i.1 = load <2 x float>, ptr %i.bl, align 4
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.bo, i64 1
  %i.bp = load float, ptr %i.bn, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bp, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %i.q, align 8
  %i.bq = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0)
  %i.br = add nuw nsw i32 %i.bq, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge, %bb.c
  %.1.1 = phi i32 [ %i.br, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge ], [ %.1, %bb.c ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !4  ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !15, !range !36 ; 2 uses
  br i1 %i.bu, label %bb.d, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge

bb.d:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, %bb.d
  %i.by = phi i8 [ 1, %bb.d ], [ %i.bw, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1 ]
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !17
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !10
  store float %i.ca, ptr %i.n, align 4, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !10
  store float %i.cc, ptr %i.j, align 4, !tbaa !20
  store i8 %i.by, ptr %i.k, align 4, !tbaa !21
  %i.cd = load float, ptr %i.o, align 8, !tbaa !104
  store float %i.cd, ptr %i.f, align 4, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !10
  store float %i.cf, ptr %i.e, align 4, !tbaa !35
  %i.cg = load <2 x float>, ptr %i.p, align 8, !tbaa !10
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ch, ptr %i.h, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !10
  store float %i.cj, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !105
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !10
  store float %i.cl, ptr %i.c, align 4, !tbaa !106
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !10
  store float %i.cn, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.0.0.vec.insert.i.2 = load <2 x float>, ptr %i.co, align 8
  %i.cr = load float, ptr %i.cp, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.cr, i64 1
  %i.cs = load float, ptr %i.cq, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %i.q, align 8
  %i.ct = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0)
  %i.cu = add nuw nsw i32 %i.ct, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge, %bb.d
  %.1.2 = phi i32 [ %i.cu, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge ], [ %.1.1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret i32 %.1.2
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %8) local_unnamed_addr #12 align 2 {
bb.a:
  %9 = alloca %class.btVector3, align 8           ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.f = load i8, ptr %i.e, align 8, !range !36
  %i.g = icmp ne i8 %i.f, 0
  %or.cond.not.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 868
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %i.a, align 8
  %i.j = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %i.i, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  %i.k = add nsw i32 %i.j, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.k, %bb.b ], [ %2, %bb.a ]    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = icmp ne i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.p = load i8, ptr %i.o, align 8, !range !36
  %i.q = icmp ne i8 %i.p, 0
  %or.cond.not.i.1 = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.not.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 924
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %i.a, align 8
  %i.t = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %i.r, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  %i.u = add nsw i32 %i.t, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i32 [ %i.u, %bb.d ], [ %.1, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = icmp ne i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.z = load i8, ptr %i.y, align 8, !range !36
  %i.aa = icmp ne i8 %i.z, 0
  %or.cond.not.i.2 = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %or.cond.not.i.2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 980
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.ac, align 8
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %i.a, align 8
  %i.ad = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  %i.ae = add nsw i32 %i.ad, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i32 [ %i.ae, %bb.f ], [ %.1.1, %bb.e ]
  ret i32 %.1.2
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107
  %i.c = mul nsw i32 %i.b, %9                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !21, !range !36, !noundef !62 ; 3 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.b, label %.thread190

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %11, 0                      ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in = select i1 %.not, ptr %i.k, ptr %i.j
  %i.l = load ptr, ptr %.in, align 8, !tbaa !111  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.p = load float, ptr %10, align 4, !tbaa !10
  %i.q = sext i32 %i.c to i64                     ; 19 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.q
  store float %i.p, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 5 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !10
  %i.u = add nsw i32 %i.c, 1
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v
  store float %i.t, ptr %i.w, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !10 ; 3 uses
  %i.z = add nsw i32 %i.c, 2
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa
  store float %i.y, ptr %i.ab, align 4, !tbaa !10
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load float, ptr %10, align 4, !tbaa !10
  %i.ad = fneg float %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %i.af = load float, ptr %i.s, align 4, !tbaa !10
  %i.ag = fneg float %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.v
  store float %i.ag, ptr %i.ah, align 4, !tbaa !10
  %i.ai = load float, ptr %i.x, align 4, !tbaa !10
  %i.aj = fneg float %i.ai
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load float, ptr %i.ak, align 8, !tbaa !10
  %i.an = load float, ptr %i.al, align 4, !tbaa !10
  %i.ao = fsub float %i.am, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = fsub float %i.av, %i.ax                 ; 2 uses
  %i.az = load float, ptr %i.s, align 4, !tbaa !10 ; 2 uses
  %i.ba = fneg float %i.az
  %i.bb = fmul float %i.ay, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %i.y, float %i.bb)
  %i.bd = load float, ptr %10, align 4, !tbaa !10 ; 2 uses
  %i.be = fneg float %i.y
  %i.bf = fmul float %i.ao, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bd, float %i.bf)
  %i.bh = fneg float %i.bd
  %i.bi = fmul float %i.at, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.az, float %i.bi)
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !113 ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.q
  store float %i.bc, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.v
  store float %i.bg, ptr %i.bm, align 4, !tbaa !10
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.aa
  store float %i.bj, ptr %i.bn, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = load float, ptr %i.au, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !10
  %i.bs = load float, ptr %i.x, align 4, !tbaa !10 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i:bb.a
bb.i:                                             ; preds = %.thread186
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !115
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.q
  store float 0.000000e+00, ptr %i.dl, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !37 ; 2 uses
  %i.do = fneg float %i.dn
  %i.dp = select i1 %.not, float %i.do, float %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !94
  %i.ds = load float, ptr %1, align 4, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.du = load float, ptr %i.dt, align 4, !tbaa !35
  %i.dv = load float, ptr %8, align 8, !tbaa !116
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !117
  %i.dy = fmul float %i.dv, %i.dx
  %i.dz = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %i.dr, float noundef %i.ds, float noundef %i.du, float noundef %i.dp, float noundef %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !37
  %i.ec = load ptr, ptr %i.dd, align 8, !tbaa !114
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.q ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !10
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.eb, float %i.ee)
  store float %i.ef, ptr %i.ed, align 4, !tbaa !10
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !106
  %i.ei = fneg float %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !118
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.q
  store float %i.ei, ptr %i.el, align 4, !tbaa !10
  %i.em = load float, ptr %i.eg, align 4, !tbaa !106
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !119
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.q
  store float %i.em, ptr %i.ep, align 4, !tbaa !10
  br label %.thread190

.critedge148:                                     ; preds = %bb.g, %bb.h
  %i.eq = load float, ptr %8, align 8, !tbaa !116
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.es = load float, ptr %i.er, align 4, !tbaa !38
  %i.et = fmul float %i.eq, %i.es                 ; 2 uses
  %i.eu = fneg float %i.et
  %.sink201 = select i1 %.not, float %i.et, float %i.eu
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !20
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.q ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !10
  %i.ez = tail call float @llvm.fmuladd.f32(float %.sink201, float %i.ew, float %i.ey)
  store float %i.ez, ptr %i.ex, align 4, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !115
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.q
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !10
  %i.fd = load float, ptr %1, align 4, !tbaa !34
  %i.fe = load float, ptr %i.cx, align 4, !tbaa !35
  %i.ff = fcmp oeq float %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  br i1 %i.ff, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge148
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !118
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.q
  store float f0xFF7FFFFF, ptr %i.fj, align 4, !tbaa !10
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !119
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.q
  store float f0x7F7FFFFF, ptr %i.fl, align 4, !tbaa !10
  br label %.thread190

bb.k:                                             ; preds = %.critedge148
  %i.fm = icmp eq i32 %i.h, 1                     ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !118
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.q
  %. = select i1 %i.fm, float 0.000000e+00, float f0xFF7FFFFF
  %.232 = select i1 %i.fm, float f0x7F7FFFFF, float 0.000000e+00
  store float %., ptr %i.fp, align 4, !tbaa !10
  %i.fq = load ptr, ptr %i.fg, align 8, !tbaa !119
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.q
  store float %.232, ptr %i.fr, align 4, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !17 ; 3 uses
  %i.fu = fcmp ogt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %bb.l, label %.thread190

bb.l:                                             ; preds = %bb.k
  %i.fv = load float, ptr %10, align 4, !tbaa !10 ; 2 uses
  %i.fw = load float, ptr %i.s, align 4, !tbaa !10 ; 2 uses
  %i.fx = load float, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %.233 = select i1 %.not, ptr %4, ptr %6         ; 3 uses
  %.234 = select i1 %.not, ptr %5, ptr %7         ; 3 uses
  %i.fy = load float, ptr %.233, align 4, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %.233, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !10
  %i.gb = fmul float %i.ga, %i.fw
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fv, float %i.gb)
  %i.gd = getelementptr inbounds nuw i8, ptr %.233, i64 8
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !10
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.fx, float %i.gc)
  %i.gg = load float, ptr %.234, align 4, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %.234, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !10
  %i.gj = fmul float %i.fw, %i.gi
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.fv, float %i.gj)
  %i.gl = getelementptr inbounds nuw i8, ptr %.234, i64 8
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !10
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.fx, float %i.gk)
  %i.go = fsub float %i.gf, %i.gn                 ; 4 uses
  br i1 %i.fm, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.gp = fcmp olt float %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.n, label %.thread190

bb.n:                                             ; preds = %bb.m
  %i.gq = fneg float %i.ft
  %i.gr = fmul nnan float %i.go, %i.gq            ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.q ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !10
  %i.gu = fcmp ogt float %i.gr, %i.gt
  br i1 %i.gu, label %bb.o, label %.thread190

bb.o:                                             ; preds = %bb.n
  store float %i.gr, ptr %i.gs, align 4, !tbaa !10
  br label %.thread190

bb.p:                                             ; preds = %bb.l
  %i.gv = fcmp ogt float %i.go, 0.000000e+00
  br i1 %i.gv, label %bb.q, label %.thread190

bb.q:                                             ; preds = %bb.p
  %i.gw = fneg float %i.ft
  %i.gx = fmul nnan float %i.go, %i.gw            ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.q ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !10
  %i.ha = fcmp olt float %i.gx, %i.gz
  br i1 %i.ha, label %bb.r, label %.thread190

bb.r:                                             ; preds = %bb.q
  store float %i.gx, ptr %i.gy, align 4, !tbaa !10
  br label %.thread190

.thread190:                                       ; preds = %bb.i, %.thread186, %bb.a, %bb.m, %bb.p, %bb.o, %bb.n, %bb.r, %bb.q, %bb.k, %bb.j
  %.0141 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %.thread186 ], [ 1, %bb.i ]
  ret i32 %.0141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %2, float noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 9 uses
  %7 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1036 ; 6 uses
  store float %3, ptr %i.d, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.s = load float, ptr %i.j, align 8, !tbaa !10
  %i.t = load float, ptr %i.i, align 8, !tbaa !10
  %i.u = fcmp ult float %i.s, %i.t
  br i1 %i.u, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.w = load float, ptr %i.v, align 8, !tbaa !86
  %i.x = fdiv float 1.000000e+00, %i.w
  %i.y = load i8, ptr %i.k, align 8, !tbaa !23, !range !36, !noundef !62
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.e, align 8
  %i.aa = load float, ptr %i.n, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.aa, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i24 = load <2 x float>, ptr %i.g, align 8
  %i.ab = load float, ptr %i.l, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i25 = insertelement <2 x float> %.sroa.0.0.vec.insert.i24, float %i.ab, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.d ]
  %storemerge35 = phi <2 x float> [ %.sroa.0.4.vec.insert.i25, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink = load float, ptr %.sink.in, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i26 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge35, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i26, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.ae = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %3, float noundef %i.x, ptr noundef nonnull align 8 dereferenceable(564) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.ad, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = fcmp ult float %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.al = load float, ptr %i.ak, align 4, !tbaa !86
  %i.am = fdiv float 1.000000e+00, %i.al
  %i.an = load i8, ptr %i.k, align 8, !tbaa !23, !range !36, !noundef !62
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  %. = select i1 %i.ao, i64 1044, i64 1108
  %.58 = select i1 %i.ao, i64 1060, i64 1124
  %.59 = select i1 %i.ao, i64 1076, i64 1140
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.58
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.59
  %8 = load <1 x float>, ptr %i.ap, align 4
  %.sroa.0.0.vec.insert.i.1 = shufflevector <1 x float> %8, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.as = load float, ptr %i.aq, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.as, i64 1
  %i.at = load float, ptr %i.ar, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.au = load float, ptr %i.d, align 4, !tbaa !120
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.ax = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %i.au, float noundef %i.am, ptr noundef nonnull align 8 dereferenceable(564) %i.av, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.aw, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.az = load float, ptr %i.ay, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !10
  %i.bc = fcmp ult float %i.az, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.be = load float, ptr %i.bd, align 8, !tbaa !86
  %i.bf = fdiv float 1.000000e+00, %i.be
  %i.bg = load i8, ptr %i.k, align 8, !tbaa !23, !range !36, !noundef !62
  %i.bh = trunc nuw i8 %i.bg to i1                ; 3 uses
  %.60 = select i1 %i.bh, i64 1048, i64 1112
  %.61 = select i1 %i.bh, i64 1064, i64 1128
  %.62 = select i1 %i.bh, i64 1080, i64 1144
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.60
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.62
  %9 = load <1 x float>, ptr %i.bi, align 8
  %.sroa.0.0.vec.insert.i.2 = shufflevector <1 x float> %9, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bl = load float, ptr %i.bj, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.bl, i64 1
  %i.bm = load float, ptr %i.bk, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bm, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.bn = load float, ptr %i.d, align 4, !tbaa !120
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.bq = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %i.bn, float noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(564) %i.bo, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.bp, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bv = load i8, ptr %i.bu, align 8, !range !36
  %i.bw = icmp ne i8 %i.bv, 0
  %or.cond.not.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bx, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !86
  %i.cb = fdiv float 1.000000e+00, %i.ca
  %i.cc = load float, ptr %i.d, align 4, !tbaa !120
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.cf = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.by, float noundef %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.cb, ptr noundef nonnull %i.cd, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !19
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ck = load i8, ptr %i.cj, align 8, !range !36
  %i.cl = icmp ne i8 %i.ck, 0
  %or.cond.not.i.1 = select i1 %i.ci, i1 true, i1 %i.cl
  br i1 %or.cond.not.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.cn, align 8
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cp = load float, ptr %i.co, align 8, !tbaa !86
  %i.cq = fdiv float 1.000000e+00, %i.cp
  %i.cr = load float, ptr %i.d, align 4, !tbaa !120
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.ct = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.cu = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.cm, float noundef %i.cr, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.cq, ptr noundef nonnull %i.cs, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.ct, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.cz = load i8, ptr %i.cy, align 8, !range !36
  %i.da = icmp ne i8 %i.cz, 0
  %or.cond.not.i.2 = select i1 %i.cx, i1 true, i1 %i.da
  br i1 %or.cond.not.i.2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.dc, align 8
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.de = load float, ptr %i.dd, align 4, !tbaa !86
  %i.df = fdiv float 1.000000e+00, %i.de
  %i.dg = load float, ptr %i.d, align 4, !tbaa !120
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.di = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.dj = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.db, float noundef %i.dg, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.df, ptr noundef nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.di, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1266) %0, float noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) initializes((1248, 1264)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load float, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load float, ptr %i.g, align 8, !tbaa !45 ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fadd float %i.d, %i.h
  %i.k = fdiv float %i.d, %i.j
  %storemerge = select i1 %i.i, float 1.000000e+00, float %i.k ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.o = load float, ptr %i.n, align 8, !tbaa !10
  %i.p = fmul float %storemerge, %i.o
  %i.q = fsub float 1.000000e+00, %storemerge     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.s = load float, ptr %i.r, align 8, !tbaa !10
  %i.t = fmul float %i.q, %i.s
  %i.u = load <2 x float>, ptr %i.l, align 8, !tbaa !10
  %i.v = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = load <2 x float>, ptr %i.m, align 8, !tbaa !10
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = fadd <2 x float> %i.x, %i.ab
  %i.ad = fadd float %i.p, %i.t
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store <2 x float> %i.ac, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  ret void
}

declare noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN23btGeneric6DofConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1266) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #16
end_hunk_2
