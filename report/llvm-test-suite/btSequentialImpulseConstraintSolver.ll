inline.NumInlined: 720
inline.NumDeleted: 168
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint:bb.a
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.be = shufflevector <2 x float> %i.az, <2 x float> %i.ax, <2 x i32> <i32 0, i32 2>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = insertelement <2 x float> %i.au, float %i.p, i64 1
  %i.bh = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ap, i64 1
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.bf) ; 2 uses
  %shift58 = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x float> %i.bj, %shift58
  %i.bk = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !52 ; 2 uses
  %i.bn = fneg float %i.am
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bm, float %i.k)
  %i.bp = fneg float %i.bk
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bm, float %i.bo) ; 2 uses
  %i.br = fadd float %i.g, %i.bq                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !53 ; 3 uses
  %i.bu = fcmp olt float %i.br, %i.bt             ; 2 uses
  %i.bv = fsub float %i.bt, %i.g
  %storemerge = select i1 %i.bu, float %i.bt, float %i.br
  %.0 = select i1 %i.bu, float %i.bv, float %i.bq ; 6 uses
  store float %storemerge, ptr %i.f, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !51
  %i.cb = fmul float %i.p, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = fmul float %.0, %i.cb
  %i.ce = load <2 x float>, ptr %i.cc, align 8, !tbaa !51
  %i.cf = fmul <2 x float> %i.n, %i.ce
  %i.cg = insertelement <2 x float> poison, float %.0, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fmul <2 x float> %i.ch, %i.cf
  %i.cj = load <2 x float>, ptr %i.m, align 8, !tbaa !51
  %i.ck = fadd <2 x float> %i.cj, %i.ci
  store <2 x float> %i.ck, ptr %i.m, align 8, !tbaa !51
  %i.cl = load float, ptr %i.q, align 8, !tbaa !51
  %i.cm = fadd float %i.cd, %i.cl
  store float %i.cm, ptr %i.q, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cp = load float, ptr %i.co, align 8, !tbaa !51
  %i.cq = fmul float %.0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !51
  %i.ct = fmul float %i.cq, %i.cs
  %i.cu = load <2 x float>, ptr %i.cn, align 8, !tbaa !51
  %i.cv = fmul <2 x float> %i.ch, %i.cu
  %i.cw = load <2 x float>, ptr %i.by, align 8, !tbaa !51
  %i.cx = fmul <2 x float> %i.cv, %i.cw
  %i.cy = load <2 x float>, ptr %i.t, align 8, !tbaa !51
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  store <2 x float> %i.cz, ptr %i.t, align 8, !tbaa !51
  %i.da = load float, ptr %i.w, align 8, !tbaa !51
  %i.db = fadd float %i.ct, %i.da
  store float %i.db, ptr %i.w, align 8, !tbaa !51
  br label %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit

_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit: ; preds = %bb.b, %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57
  %.not.i50 = icmp eq ptr %i.dd, null
  br i1 %.not.i50, label %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit51, label %bb.d

bb.d:                                             ; preds = %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.df = load float, ptr %i.o, align 8, !tbaa !51
  %i.dg = fneg float %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.di = load float, ptr %i.dh, align 8, !tbaa !51
  %i.dj = fmul float %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dl = fmul float %.0, %i.dj
  %i.dm = load <2 x float>, ptr %i.l, align 8, !tbaa !51
  %i.dn = fneg <2 x float> %i.dm
  %i.do = load <2 x float>, ptr %i.dk, align 8, !tbaa !51
  %i.dp = fmul <2 x float> %i.do, %i.dn
  %i.dq = insertelement <2 x float> poison, float %.0, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %i.dp
  %i.dt = load <2 x float>, ptr %i.an, align 8, !tbaa !51
  %i.du = fadd <2 x float> %i.dt, %i.ds
  store <2 x float> %i.du, ptr %i.an, align 8, !tbaa !51
  %i.dv = load float, ptr %i.ao, align 8, !tbaa !51
  %i.dw = fadd float %i.dl, %i.dv
  store float %i.dw, ptr %i.ao, align 8, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !51
  %i.ea = fmul float %.0, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !51
  %i.ed = fmul float %i.ea, %i.ec
  %i.ee = load <2 x float>, ptr %i.dx, align 8, !tbaa !51
  %i.ef = fmul <2 x float> %i.dr, %i.ee
  %i.eg = load <2 x float>, ptr %i.de, align 8, !tbaa !51
  %i.eh = fmul <2 x float> %i.ef, %i.eg
  %i.ei = load <2 x float>, ptr %i.ar, align 8, !tbaa !51
  %i.ej = fadd <2 x float> %i.eh, %i.ei
  store <2 x float> %i.ej, ptr %i.ar, align 8, !tbaa !51
  %i.ek = load float, ptr %i.av, align 8, !tbaa !51
  %i.el = fadd float %i.ed, %i.ek
  store float %i.el, ptr %i.av, align 8, !tbaa !51
  br label %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit51

_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit51: ; preds = %bb.d, %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(140) %3) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(140) %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @_ZN35btSequentialImpulseConstraintSolver7btRand2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = mul i64 %i.b, 1664525
  %i.d = add i64 %i.c, 1013904223
  %i.e = and i64 %i.d, 4294967295                 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !40
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = mul i64 %i.b, 1664525
  %i.d = add i64 %i.c, 1013904223
  %i.e = and i64 %i.d, 4294967295                 ; 4 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !40
  %i.f = icmp ult i32 %1, 65537
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 16
  %i.h = xor i64 %i.g, %i.e                       ; 3 uses
  %i.i = icmp samesign ult i32 %1, 257
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.h, 8
  %i.k = xor i64 %i.j, %i.h                       ; 3 uses
  %i.l = icmp samesign ult i32 %1, 17
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %i.k, 4
  %i.n = xor i64 %i.m, %i.k                       ; 3 uses
  %i.o = icmp samesign ult i32 %1, 5
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i64 %i.n, 2
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = icmp samesign ult i32 %1, 3
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = lshr i64 %i.q, 1
  %i.t = xor i64 %i.s, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %.0 = phi i64 [ %i.t, %bb.f ], [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ %i.h, %bb.b ], [ %i.e, %bb.a ]
  %i.u = sext i32 %1 to i64
  %i.v = urem i64 %.0, %i.u
  %i.w = trunc nuw i64 %i.v to i32
  ret i32 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64), (72, 112)) %1, ptr noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = icmp eq i32 %i.b, 2
  %spec.select = select i1 %i.c, ptr %2, ptr null
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %spec.select, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not20 = icmp eq ptr %i.d, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.g = load float, ptr %i.f, align 8, !tbaa !66 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  %3 = load float, ptr %i.h, align 4, !tbaa !51
  %4 = fmul float %i.g, %3
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %6 = load float, ptr %5, align 8, !tbaa !51
  %7 = fmul float %i.g, %6
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 388
  %i.j = load float, ptr %i.i, align 4, !tbaa !51
  %i.k = fmul float %i.g, %i.j
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %4, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %7, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.d, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 364
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !74
  br label %bb.e

bb.d:                                             ; preds = %select.unfold
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.q, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(240) %0, float noundef %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fneg float %1
  %i.b = fmul float %2, %i.a
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75, !range !44, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %1, align 4, !tbaa !51   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !51 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !51 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !51 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !51 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load float, ptr %i.q, align 8, !tbaa !51 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load float, ptr %i.s, align 8, !tbaa !51 ; 2 uses
  %i.u = fmul float %i.h, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.e, float %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load float, ptr %i.w, align 8, !tbaa !51 ; 2 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.l, float %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load float, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !51
  %i.af = fmul float %i.y, %i.ae                  ; 2 uses
  %i.ag = load <2 x float>, ptr %i.f, align 8, !tbaa !51 ; 3 uses
  %i.ah = load float, ptr %i.n, align 4, !tbaa !51
  %i.ai = extractelement <2 x float> %i.ag, i64 0
  %i.aj = fmul float %i.ai, %i.h
  %i.ak = load <2 x float>, ptr %i.d, align 8, !tbaa !51 ; 3 uses
  %i.al = load float, ptr %i.m, align 4, !tbaa !51
  %i.am = extractelement <2 x float> %i.ak, i64 0
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.aj)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.an)
  %i.ap = fmul float %i.h, %i.ah
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.al, float %i.e, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.l, float %i.aq)
  %i.as = fmul float %i.ao, %i.aa                 ; 2 uses
  %i.at = fmul float %i.ar, %i.ac                 ; 2 uses
  %i.au = shufflevector <2 x float> %i.ak, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3>
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <2 x float> %i.ak, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.az = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ba, <2 x float> %i.ax)
  %i.bc = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.t, i64 1
  %i.be = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.bb)
  %i.bh = fmul float %i.p, %i.at
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.j, float %i.as, float %i.bh)
  %i.bj = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.af, float %i.bi)
  %.sroa.3.12.vec.insert.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  store <2 x float> %i.bg, ptr %1, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10, ptr %i.k, align 4, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, float noundef %10) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %.not = icmp eq i32 %i.b, 2                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60
  %.not201 = icmp eq i32 %i.d, 2                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.j = shl nsw i32 %i.f, 1
  %i.k = select i1 %.not.i.i, i32 1, i32 %i.j     ; 4 uses
  %i.l = icmp slt i32 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = mul nsw i64 %i.m, 144
  %i.o = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.n, i32 noundef 16)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !24
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.p to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.s = icmp eq i32 %i.p, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.t = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.t, ptr noundef nonnull align 8 dereferenceable(144) %i.v, i64 144, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.w, ptr noundef nonnull align 8 dereferenceable(144) %i.y, i64 144, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod202 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.z = getelementptr inbounds nuw [144 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw [144 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(144) %i.ab, i64 144, i1 false), !tbaa.struct !77
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ad, null
end_hunk_0
begin_hunk_1_@_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f:bb.a
  %.sroa.0135.0 = phi float [ 0.000000e+00, %bb.q ], [ %.sroa.0135.0.copyload, %bb.p ]
  br i1 %.not201, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 328
  %.sroa.0128.0.copyload = load float, ptr %i.hr, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 332
  %.sroa.5129.0.copyload = load float, ptr %.sroa.5129.0..sroa_idx, align 4
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 336
  %.sroa.7130.0.copyload = load float, ptr %.sroa.7130.0..sroa_idx, align 8
  %i.hs = fmul float %i.bf, %.sroa.5129.0.copyload
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.0128.0.copyload, float %i.hs)
  %i.hu = extractelement <2 x float> %i.be, i64 1
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %.sroa.7130.0.copyload, float %i.ht)
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 344
  %.sroa.0.0.copyload = load float, ptr %i.hw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 348
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 352
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.hx = fmul float %i.bf, 0.000000e+00
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.hx)
  %i.hz = extractelement <2 x float> %i.be, i64 1
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %i.hz, float 0.000000e+00, float %i.hy)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ib = phi float [ %i.ia, %bb.t ], [ %i.hv, %bb.s ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %bb.t ], [ %.sroa.7.0.copyload, %bb.s ]
  %.sroa.5.0 = phi float [ 0.000000e+00, %bb.t ], [ %.sroa.5.0.copyload, %bb.s ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.t ], [ %.sroa.0.0.copyload, %bb.s ]
  %i.ic = extractelement <2 x float> %i.bo, i64 1
  %i.id = fmul float %.sroa.5136.0, %i.ic
  %i.ie = extractelement <2 x float> %i.bo, i64 0
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ie, float %.sroa.0135.0, float %i.id)
  %i.ig = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %.sroa.7137.0, float %i.if)
  %i.ih = fadd float %i.hq, %i.ig
  %i.ii = extractelement <2 x float> %i.dm, i64 1
  %i.ij = fmul float %.sroa.5.0, %i.ii
  %i.ik = extractelement <2 x float> %i.dm, i64 0
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ik, float %.sroa.0.0, float %i.ij)
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %.sroa.7.0, float %i.il)
  %i.in = fsub float %i.im, %i.ib
  %i.io = fadd float %i.ih, %i.in
  %i.ip = fneg float %i.io
  %i.iq = fmul float %i.he, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  store float %i.iq, ptr %i.ir, align 8, !tbaa !45
  %i.is = getelementptr inbounds nuw i8, ptr %i.ap, i64 124
  store <2 x float> zeroinitializer, ptr %i.is, align 4, !tbaa !51
  %i.it = getelementptr inbounds nuw i8, ptr %i.ap, i64 132
  store float 1.000000e+10, ptr %i.it, align 4, !tbaa !54
  ret ptr %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !66
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17   ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.n = shl nsw i32 %i.j, 1
  %i.o = select i1 %.not.i.i, i32 1, i32 %i.n     ; 4 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.f, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = sext i32 %i.o to i64
  %i.r = mul nsw i64 %i.q, 112
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.t = phi i32 [ %.pre.i, %bb.g ], [ %i.j, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.s, %bb.g ], [ null, %bb.f ] ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.t to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.w = icmp eq i32 %i.t, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(112) %i.z, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.ac, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.h

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod22 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ad = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ad, ptr noundef nonnull align 8 dereferenceable(112) %i.af, i64 112, i1 false), !tbaa.struct !82
  br label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !10, !range !44, !noundef !76
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ah)
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.al, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.ag, align 8, !tbaa !16
  store i32 %i.o, ptr %i.k, align 8, !tbaa !18
  %.pre4.i = load i32, ptr %i.i, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit

_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit: ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i
  %i.am = phi i32 [ %.pre4.i, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i ], [ %i.j, %bb.e ], [ %i.j, %bb.d ]
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.i, align 4, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = sext i32 %i.j to i64                    ; 2 uses
  %i.ar = getelementptr inbounds [112 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ar, i8 0, i64 112, i1 false)
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.at = getelementptr inbounds [112 x i8], ptr %i.as, i64 %i.aq ; 9 uses
  %i.au = load i32, ptr %i.d, align 8, !tbaa !60
  %.not16 = icmp eq i32 %i.au, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  br i1 %.not16, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit
  %i.aw = load float, ptr %i.f, align 8, !tbaa !66 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 380
  %2 = load float, ptr %i.ax, align 4, !tbaa !51
  %3 = fmul float %i.aw, %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %5 = load float, ptr %4, align 8, !tbaa !51
  %6 = fmul float %i.aw, %5
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.az = load float, ptr %i.ay, align 4, !tbaa !51
  %i.ba = fmul float %i.aw, %i.az
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %3, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %6, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr %1, ptr %i.bc, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !74
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store ptr null, ptr %i.bg, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bh, align 8, !tbaa !51
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit

_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit: ; preds = %bb.k, %bb.l
  store i32 %i.j, ptr %i.a, align 8, !tbaa !81
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit
  %.1 = phi i32 [ %i.j, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.1
}

; Function Attrs: uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(68) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 10 uses
  %4 = alloca %class.btVector3, align 8           ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 42 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 42 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.b)
  %i.h = tail call noundef i32 @_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0277 = phi i32 [ %i.h, %bb.b ], [ -1, %bb.a ] ; 8 uses
  %.0 = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]    ; 9 uses
  %i.i = or i32 %.0, %.0277
  %or.cond.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.not, label %bb.bz, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.j = load i32, ptr %i.e, align 8, !tbaa !88
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.not293626 = icmp eq ptr %i.b, null
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 364
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %.not294627 = icmp eq ptr %i.d, null
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 316
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 364
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 372
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 348 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 332
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 348 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 332
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bk = sext i32 %.0 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 380 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 388 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 380 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 388 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 172 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.e

._crit_edge:                                      ; preds = %bb.by, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bz

bb.e:                                             ; preds = %.lr.ph, %bb.by
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.by ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [176 x i8], ptr %i.l, i64 %indvars.iv ; 37 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 80 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !89
  %i.cw = load float, ptr %i.m, align 8, !tbaa !90
  %i.cx = fcmp ugt float %i.cv, %i.cw
  br i1 %i.cx, label %bb.by, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.da = load float, ptr %i.cy, align 8, !tbaa !51
  %i.db = load float, ptr %i.o, align 4, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !51 ; 2 uses
  %i.de = load <2 x float>, ptr %i.p, align 4, !tbaa !51 ; 2 uses
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.da, i64 1
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.di = insertelement <2 x float> %i.dh, float %i.db, i64 1
  %i.dj = fsub <2 x float> %i.dg, %i.di           ; 10 uses
  %i.dk = fsub <2 x float> %i.dd, %i.de           ; 6 uses
  %i.dl = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <2 x i32> <i32 1, i32 2>
  %i.dm = insertelement <2 x float> %i.dj, float 0.000000e+00, i64 1
  store <2 x float> %i.dl, ptr %3, align 8
  store <2 x float> %i.dm, ptr %.sroa.4142.0..sroa_idx, align 8, !tbaa !73
  %i.dn = load float, ptr %i.cz, align 8, !tbaa !51
  %i.do = load float, ptr %i.r, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !51 ; 2 uses
  %i.dr = load <2 x float>, ptr %i.s, align 4, !tbaa !51 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = insertelement <2 x float> %i.ds, float %i.dn, i64 1
  %i.du = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.do, i64 1
  %i.dw = fsub <2 x float> %i.dt, %i.dv           ; 11 uses
  %i.dx = fsub <2 x float> %i.dq, %i.dr           ; 7 uses
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 1, i32 2>
  %i.dz = insertelement <2 x float> %i.dw, float 0.000000e+00, i64 1
  store <2 x float> %i.dy, ptr %4, align 8
  store <2 x float> %i.dz, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !73
end_hunk_1
begin_hunk_2_@_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc:bb.a
_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel: ; preds = %.preheader264
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !30  ; 8 uses
  %.promoted277 = load i64, ptr %i.k, align 8, !tbaa !40
  %i.cd = mul i64 %.promoted277, 1664525
  %i.ce = add i64 %i.cd, 1013904223               ; 2 uses
  %i.cf = and i64 %i.ce, 4294967295
  br i1 %exitcond344.peel.not, label %..loopexit265_crit_edge, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel349

_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel349: ; preds = %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = mul i64 %i.ce, 1664525
  %i.cj = add i64 %i.ci, 1013904223               ; 2 uses
  %i.ck = and i64 %i.cj, 4294967295               ; 3 uses
  %i.cl = lshr i64 %i.ck, 16
  %i.cm = xor i64 %i.cl, %i.ck                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 8
  %i.co = xor i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = lshr i64 %i.co, 4
  %i.cq = xor i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = xor i64 %i.cr, %i.cq                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = and i64 %i.cu, 1
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  store i32 %i.cx, ptr %i.cg, align 4, !tbaa !4
  store i32 %i.ch, ptr %i.cw, align 4, !tbaa !4
  br i1 %exitcond344.peel351.not, label %..loopexit265_crit_edge, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel354

_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel354: ; preds = %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel349
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = mul i64 %i.cj, 1664525
  %i.db = add i64 %i.da, 1013904223               ; 2 uses
  %i.dc = and i64 %i.db, 4294967295               ; 3 uses
  %i.dd = lshr i64 %i.dc, 16
  %i.de = xor i64 %i.dd, %i.dc                    ; 2 uses
  %i.df = lshr i64 %i.de, 8
  %i.dg = xor i64 %i.df, %i.de                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 4
  %i.di = xor i64 %i.dh, %i.dg                    ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = xor i64 %i.dj, %i.di
  %.lhs.trunc = trunc i64 %i.dk to i32
  %i.dl = urem i32 %.lhs.trunc, 3
  %.zext = zext nneg i32 %i.dl to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.zext ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  store i32 %i.dn, ptr %i.cy, align 4, !tbaa !4
  store i32 %i.cz, ptr %i.dm, align 4, !tbaa !4
  br i1 %exitcond344.peel356.not, label %..loopexit265_crit_edge, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359

_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359: ; preds = %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel354
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = mul i64 %i.db, 1664525
  %i.dr = add i64 %i.dq, 1013904223
  %i.ds = and i64 %i.dr, 4294967295               ; 4 uses
  %i.dt = lshr i64 %i.ds, 16
  %i.du = xor i64 %i.dt, %i.ds                    ; 2 uses
  %i.dv = lshr i64 %i.du, 8
  %i.dw = xor i64 %i.dv, %i.du                    ; 2 uses
  %i.dx = lshr i64 %i.dw, 4
  %i.dy = xor i64 %i.dx, %i.dw                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 2
  %i.ea = xor i64 %i.dz, %i.dy
  %i.eb = and i64 %i.ea, 3
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4
  store i32 %i.ed, ptr %i.do, align 4, !tbaa !4
  store i32 %i.dp, ptr %i.ec, align 4, !tbaa !4
  br i1 %exitcond344.peel361.not, label %..loopexit265_crit_edge, label %.peel.next357

.peel.next334:                                    ; preds = %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel336, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit ], [ 4, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel336 ] ; 5 uses
  %i.ee = phi i64 [ %i.ej, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit ], [ %i.bq, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel336 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eh = mul nuw nsw i64 %i.ee, 1664525
  %i.ei = add nuw nsw i64 %i.eh, 1013904223
  %i.ej = and i64 %i.ei, 4294967295               ; 5 uses
  %i.ek = icmp samesign ult i64 %indvars.iv, 65536
  br i1 %i.ek, label %bb.c, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit

bb.c:                                             ; preds = %.peel.next334
  %i.el = lshr i64 %i.ej, 16
  %i.em = xor i64 %i.el, %i.ej                    ; 3 uses
  %i.en = icmp samesign ult i64 %indvars.iv, 256
  br i1 %i.en, label %bb.d, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit

bb.d:                                             ; preds = %bb.c
  %i.eo = lshr i64 %i.em, 8
  %i.ep = xor i64 %i.eo, %i.em                    ; 3 uses
  %i.eq = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.eq, label %bb.e, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit

bb.e:                                             ; preds = %bb.d
  %i.er = lshr i64 %i.ep, 4
  %i.es = xor i64 %i.er, %i.ep
  br label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit

_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit: ; preds = %bb.e, %.peel.next334, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.em, %bb.c ], [ %i.ej, %.peel.next334 ], [ %i.es, %bb.e ], [ %i.ep, %bb.d ]
  %i.et = urem i64 %.0.i, %indvars.iv.next
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  store i32 %i.ev, ptr %i.ef, align 4, !tbaa !4
  store i32 %i.eg, ptr %i.eu, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..preheader264_crit_edge, label %.peel.next334, !llvm.loop !147

.peel.next357:                                    ; preds = %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172 ], [ 4, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359 ] ; 5 uses
  %i.ew = phi i64 [ %i.fb, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172 ], [ %i.ds, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359 ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv340 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 3 uses
  %i.ez = mul nuw nsw i64 %i.ew, 1664525
  %i.fa = add nuw nsw i64 %i.ez, 1013904223
  %i.fb = and i64 %i.fa, 4294967295               ; 5 uses
  %i.fc = icmp samesign ult i64 %indvars.iv340, 65536
  br i1 %i.fc, label %bb.f, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172

bb.f:                                             ; preds = %.peel.next357
  %i.fd = lshr i64 %i.fb, 16
  %i.fe = xor i64 %i.fd, %i.fb                    ; 3 uses
  %i.ff = icmp samesign ult i64 %indvars.iv340, 256
  br i1 %i.ff, label %bb.g, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172

bb.g:                                             ; preds = %bb.f
  %i.fg = lshr i64 %i.fe, 8
  %i.fh = xor i64 %i.fg, %i.fe                    ; 3 uses
  %i.fi = icmp samesign ult i64 %indvars.iv340, 16
  br i1 %i.fi, label %bb.h, label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172

bb.h:                                             ; preds = %bb.g
  %i.fj = lshr i64 %i.fh, 4
  %i.fk = xor i64 %i.fj, %i.fh
  br label %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172

_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172: ; preds = %bb.h, %.peel.next357, %bb.f, %bb.g
  %.0.i171 = phi i64 [ %i.fe, %bb.f ], [ %i.fb, %.peel.next357 ], [ %i.fk, %bb.h ], [ %i.fh, %bb.g ]
  %i.fl = urem i64 %.0.i171, %indvars.iv.next341
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  store i32 %i.fn, ptr %i.ex, align 4, !tbaa !4
  store i32 %i.ey, ptr %i.fm, align 4, !tbaa !4
  %exitcond344.not = icmp eq i64 %indvars.iv.next341, %wide.trip.count343
  br i1 %exitcond344.not, label %..loopexit265_crit_edge, label %.peel.next357, !llvm.loop !149

..loopexit265_crit_edge:                          ; preds = %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel354, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel349, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel
  %.lcssa322 = phi i64 [ %i.ds, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel359 ], [ %i.cf, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel ], [ %i.ck, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel349 ], [ %i.dc, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel354 ], [ %i.fb, %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172 ]
  store i64 %.lcssa322, ptr %i.k, align 8, !tbaa !40
  br label %.loopexit265

.loopexit265:                                     ; preds = %.preheader264, %..loopexit265_crit_edge, %bb.b
  %i.fo = load i32, ptr %i.h, align 4, !tbaa !96
  %i.fp = and i32 %i.fo, 256
  %.not157 = icmp eq i32 %i.fp, 0
  %i.fq = load i32, ptr %i.n, align 4, !tbaa !24
  %i.fr = icmp sgt i32 %i.fq, 0                   ; 2 uses
  br i1 %.not157, label %.preheader260, label %.preheader263

.preheader263:                                    ; preds = %.loopexit265
  br i1 %i.fr, label %.lr.ph280, label %.preheader262

.preheader260:                                    ; preds = %.loopexit265
  br i1 %i.fr, label %.lr.ph291, label %.preheader259

.preheader262:                                    ; preds = %.lr.ph280, %.preheader263
  br i1 %i.q, label %.lr.ph282, label %._crit_edge

.lr.ph280:                                        ; preds = %.preheader263, %.lr.ph280
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %.lr.ph280 ], [ 0, %.preheader263 ] ; 2 uses
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.ft = getelementptr inbounds nuw [144 x i8], ptr %i.fs, i64 %indvars.iv363 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 104
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !73
  %i.fw = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.fx = sext i32 %i.fv to i64
  %i.fy = getelementptr inbounds [112 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 108
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !73
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [112 x i8], ptr %i.fw, i64 %i.gb
  tail call void @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr nonnull readnone align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %i.fy, ptr noundef nonnull align 8 dereferenceable(112) %i.gc, ptr noundef nonnull align 8 dereferenceable(140) %i.ft)
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.gd = load i32, ptr %i.n, align 4, !tbaa !24
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next364, %i.ge
  br i1 %i.gf, label %.lr.ph280, label %.preheader262

.lr.ph282:                                        ; preds = %.preheader262, %bb.ae
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %bb.ae ], [ 0, %.preheader262 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv366 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !106 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !114, !nonnull !76, !align !116 ; 8 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 224 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !81 ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, -1
  br i1 %i.gm, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph282
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 256 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !60
  %.not.i = icmp eq i32 %i.go, 2
  br i1 %.not.i, label %bb.j, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit

bb.j:                                             ; preds = %bb.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 360 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !66
  %i.gr = fcmp une float %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.k, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit

bb.k:                                             ; preds = %bb.j
  %i.gs = load i32, ptr %i.r, align 4, !tbaa !17  ; 10 uses
  %i.gt = load i32, ptr %i.s, align 8, !tbaa !18
  %i.gu = icmp eq i32 %i.gs, %i.gt
  br i1 %i.gu, label %bb.l, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %i.gs, 0
  %i.gv = shl nsw i32 %i.gs, 1
  %i.gw = select i1 %.not.i.i.i, i32 1, i32 %i.gv ; 4 uses
  %i.gx = icmp slt i32 %i.gs, %i.gw
  br i1 %i.gx, label %bb.m, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gy = sext i32 %i.gw to i64
  %i.gz = mul nsw i64 %i.gy, 112
  %i.ha = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.gz, i32 noundef 16)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.n
  %.pre.i.i = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i: ; preds = %.noexc, %bb.m
  %i.hb = phi i32 [ %.pre.i.i, %.noexc ], [ %i.gs, %bb.m ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.ha, %.noexc ], [ null, %bb.m ] ; 4 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.hd = icmp eq i32 %i.hb, 1
  br i1 %i.hd, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.o ]
  %i.he = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw [112 x i8], ptr %i.hf, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.he, ptr noundef nonnull align 8 dereferenceable(112) %i.hg, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.hi = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.hj = getelementptr inbounds nuw [112 x i8], ptr %i.hi, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hh, ptr noundef nonnull align 8 dereferenceable(112) %i.hj, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.o

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod509 = trunc i32 %i.hb to i1
  tail call void @llvm.assume(i1 %lcmp.mod509)
  %i.hk = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.hl = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.hm = getelementptr inbounds nuw [112 x i8], ptr %i.hl, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hk, ptr noundef nonnull align 8 dereferenceable(112) %i.hm, i64 112, i1 false), !tbaa.struct !82
  br label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i
  %i.hn = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i
  %i.ho = load i8, ptr %i.t, align 8, !tbaa !10, !range !44, !noundef !76
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.q, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hn)
          to label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i unwind label %bb.af

_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i: ; preds = %bb.q, %bb.p, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.t, align 8, !tbaa !10
  store ptr %.0.i.i.i.i, ptr %i.p, align 8, !tbaa !16
  store i32 %i.gw, ptr %i.s, align 8, !tbaa !18
  %.pre4.i.i = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i

_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i, %bb.l, %bb.k
  %i.hq = phi i32 [ %.pre4.i.i, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i ], [ %i.gs, %bb.l ], [ %i.gs, %bb.k ]
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.r, align 4, !tbaa !17
  %i.hs = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.ht = sext i32 %i.gs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds [112 x i8], ptr %i.hs, i64 %i.ht
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.hu, i8 0, i64 112, i1 false)
  %i.hv = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.hw = getelementptr inbounds [112 x i8], ptr %i.hv, i64 %i.ht ; 9 uses
  %i.hx = load i32, ptr %i.gn, align 8, !tbaa !60
  %.not16.i = icmp eq i32 %i.hx, 2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.hw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.hy, i8 0, i64 32, i1 false)
  br i1 %.not16.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i
  %i.hz = load float, ptr %i.gp, align 8, !tbaa !66 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gj, i64 380
  %10 = load float, ptr %i.ia, align 4, !tbaa !51
  %11 = fmul float %i.hz, %10
  %12 = getelementptr inbounds nuw i8, ptr %i.gj, i64 384
  %13 = load float, ptr %12, align 8, !tbaa !51
  %14 = fmul float %i.hz, %13
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gj, i64 388
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !51
  %i.id = fmul float %i.hz, %i.ic
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %11, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %14, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.id, i64 0
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.ie, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !73
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  store ptr %i.gj, ptr %i.if, align 8, !tbaa !57
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gj, i64 364
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 4 dereferenceable(16) %i.ig, i64 16, i1 false), !tbaa.struct !74
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i

bb.s:                                             ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  store ptr null, ptr %i.ij, align 8, !tbaa !57
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ik, align 8, !tbaa !51
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i

_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i: ; preds = %bb.s, %bb.r
  store i32 %i.gs, ptr %i.gk, align 8, !tbaa !81
  %.pre = load ptr, ptr %i.gg, align 8, !tbaa !106
  br label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit

_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit: ; preds = %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i, %bb.j, %bb.i, %.lr.ph282
  %i.il = phi ptr [ %.pre, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i ], [ %i.gh, %bb.j ], [ %i.gh, %bb.i ], [ %i.gh, %.lr.ph282 ] ; 4 uses
  %.1.i = phi i32 [ %i.gs, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i ], [ 0, %bb.j ], [ 0, %bb.i ], [ %i.gl, %.lr.ph282 ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !117, !nonnull !76, !align !116 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 224 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !81 ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, -1
  br i1 %i.iq, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199, label %bb.t

bb.t:                                             ; preds = %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 256 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !60
  %.not.i174 = icmp eq i32 %i.is, 2
  br i1 %.not.i174, label %bb.u, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199

bb.u:                                             ; preds = %bb.t
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 360 ; 2 uses
  %i.iu = load float, ptr %i.it, align 8, !tbaa !66
  %i.iv = fcmp une float %i.iu, 0.000000e+00
  br i1 %i.iv, label %bb.v, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199

bb.v:                                             ; preds = %bb.u
  %i.iw = load i32, ptr %i.r, align 4, !tbaa !17  ; 10 uses
  %i.ix = load i32, ptr %i.s, align 8, !tbaa !18
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.w, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i183 = icmp eq i32 %i.iw, 0
  %i.iz = shl nsw i32 %i.iw, 1
  %i.ja = select i1 %.not.i.i.i183, i32 1, i32 %i.iz ; 4 uses
  %i.jb = icmp slt i32 %i.iw, %i.ja
  br i1 %i.jb, label %bb.x, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i184 = icmp eq i32 %i.ja, 0
  br i1 %.not.i.i.i.i184, label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i186, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jc = sext i32 %i.ja to i64
  %i.jd = mul nsw i64 %i.jc, 112
  %i.je = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.jd, i32 noundef 16)
          to label %.noexc197 unwind label %bb.ag

.noexc197:                                        ; preds = %bb.y
  %.pre.i.i185 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i186

_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i186: ; preds = %.noexc197, %bb.x
  %i.jf = phi i32 [ %.pre.i.i185, %.noexc197 ], [ %i.iw, %bb.x ] ; 4 uses
  %.0.i.i.i.i187 = phi ptr [ %i.je, %.noexc197 ], [ null, %bb.x ] ; 4 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph.i.i.i.i192, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188

.lr.ph.i.i.i.i192:                                ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i186
  %wide.trip.count.i.i.i.i193 = zext nneg i32 %i.jf to i64 ; 2 uses
  %xtraiter511 = and i64 %wide.trip.count.i.i.i.i193, 1
  %i.jh = icmp eq i32 %i.jf, 1
  br i1 %i.jh, label %.epil.preheader510, label %.lr.ph.i.i.i.i192.new

.lr.ph.i.i.i.i192.new:                            ; preds = %.lr.ph.i.i.i.i192
  %unroll_iter514 = and i64 %wide.trip.count.i.i.i.i193, 2147483646
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i192.new
  %indvars.iv.i.i.i.i194 = phi i64 [ 0, %.lr.ph.i.i.i.i192.new ], [ %indvars.iv.next.i.i.i.i195.1, %bb.z ] ; 4 uses
  %niter515 = phi i64 [ 0, %.lr.ph.i.i.i.i192.new ], [ %niter515.next.1, %bb.z ]
  %i.ji = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i187, i64 %indvars.iv.i.i.i.i194
  %i.jj = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.jk = getelementptr inbounds nuw [112 x i8], ptr %i.jj, i64 %indvars.iv.i.i.i.i194
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ji, ptr noundef nonnull align 8 dereferenceable(112) %i.jk, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i195 = or disjoint i64 %indvars.iv.i.i.i.i194, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i187, i64 %indvars.iv.next.i.i.i.i195
  %i.jm = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.jn = getelementptr inbounds nuw [112 x i8], ptr %i.jm, i64 %indvars.iv.next.i.i.i.i195
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jl, ptr noundef nonnull align 8 dereferenceable(112) %i.jn, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i195.1 = add nuw nsw i64 %indvars.iv.i.i.i.i194, 2 ; 2 uses
  %niter515.next.1 = add i64 %niter515, 2         ; 2 uses
  %niter515.ncmp.1 = icmp eq i64 %niter515.next.1, %unroll_iter514
  br i1 %niter515.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188.loopexit.unr-lcssa, label %bb.z

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188, label %.epil.preheader510

.epil.preheader510:                               ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188.loopexit.unr-lcssa, %.lr.ph.i.i.i.i192
  %indvars.iv.i.i.i.i194.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i192 ], [ %indvars.iv.next.i.i.i.i195.1, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod513 = trunc i32 %i.jf to i1
  tail call void @llvm.assume(i1 %lcmp.mod513)
  %i.jo = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i187, i64 %indvars.iv.i.i.i.i194.epil.init
  %i.jp = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.jq = getelementptr inbounds nuw [112 x i8], ptr %i.jp, i64 %indvars.iv.i.i.i.i194.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jo, ptr noundef nonnull align 8 dereferenceable(112) %i.jq, i64 112, i1 false), !tbaa.struct !82
  br label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188: ; preds = %.epil.preheader510, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i186
  %i.jr = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %.not.i5.i.i.i189 = icmp eq ptr %i.jr, null
  br i1 %.not.i5.i.i.i189, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i190, label %bb.aa

bb.aa:                                            ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188
  %i.js = load i8, ptr %i.t, align 8, !tbaa !10, !range !44, !noundef !76
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.ab, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i190

bb.ab:                                            ; preds = %bb.aa
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jr)
          to label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i190 unwind label %bb.ag

_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i190: ; preds = %bb.ab, %bb.aa, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i188
  store i8 1, ptr %i.t, align 8, !tbaa !10
  store ptr %.0.i.i.i.i187, ptr %i.p, align 8, !tbaa !16
  store i32 %i.ja, ptr %i.s, align 8, !tbaa !18
  %.pre4.i.i191 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176

_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176: ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i190, %bb.w, %bb.v
  %i.ju = phi i32 [ %.pre4.i.i191, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i190 ], [ %i.iw, %bb.w ], [ %i.iw, %bb.v ]
  %i.jv = add nsw i32 %i.ju, 1
  store i32 %i.jv, ptr %i.r, align 4, !tbaa !17
  %i.jw = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.jx = sext i32 %i.iw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds [112 x i8], ptr %i.jw, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jy, i8 0, i64 112, i1 false)
  %i.jz = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.ka = getelementptr inbounds [112 x i8], ptr %i.jz, i64 %i.jx ; 9 uses
  %i.kb = load i32, ptr %i.ir, align 8, !tbaa !60
  %.not16.i177 = icmp eq i32 %i.kb, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ka, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.kc, i8 0, i64 32, i1 false)
  br i1 %.not16.i177, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176
  %i.kd = load float, ptr %i.it, align 8, !tbaa !66 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.in, i64 380
  %15 = load float, ptr %i.ke, align 4, !tbaa !51
  %16 = fmul float %i.kd, %15
  %17 = getelementptr inbounds nuw i8, ptr %i.in, i64 384
  %18 = load float, ptr %17, align 8, !tbaa !51
  %19 = fmul float %i.kd, %18
  %i.kf = getelementptr inbounds nuw i8, ptr %i.in, i64 388
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !51
  %i.kh = fmul float %i.kd, %i.kg
  %.sroa.0.0.vec.insert.i.i.i179 = insertelement <2 x float> poison, float %16, i64 0
  %.sroa.0.4.vec.insert.i.i.i180 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i179, float %19, i64 1
  %.sroa.3.12.vec.insert.i.i.i181 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kh, i64 0
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i180, ptr %i.ki, align 8
  %.sroa.4.0..sroa_idx.i.i182 = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i181, ptr %.sroa.4.0..sroa_idx.i.i182, align 8, !tbaa !73
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  store ptr %i.in, ptr %i.kj, align 8, !tbaa !57
  %i.kk = getelementptr inbounds nuw i8, ptr %i.in, i64 364
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 4 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa.struct !74
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178

bb.ad:                                            ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 48
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ka, i64 72
  store ptr null, ptr %i.kn, align 8, !tbaa !57
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.km, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ko, align 8, !tbaa !51
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178

_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178: ; preds = %bb.ad, %bb.ac
  store i32 %i.iw, ptr %i.io, align 8, !tbaa !81
  %.pre433 = load ptr, ptr %i.gg, align 8, !tbaa !106
  br label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199

_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199: ; preds = %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178, %bb.u, %bb.t, %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit
  %i.kp = phi ptr [ %.pre433, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178 ], [ %i.il, %bb.u ], [ %i.il, %bb.t ], [ %i.il, %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit ] ; 2 uses
  %.1.i175 = phi i32 [ %i.iw, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178 ], [ 0, %bb.u ], [ 0, %bb.t ], [ %i.ip, %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit ]
  %i.kq = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.kr = sext i32 %.1.i to i64
  %i.ks = getelementptr inbounds [112 x i8], ptr %i.kq, i64 %i.kr
  %i.kt = sext i32 %.1.i175 to i64
  %i.ku = getelementptr inbounds [112 x i8], ptr %i.kq, i64 %i.kt
  %i.kv = load float, ptr %i.u, align 4, !tbaa !100
  %i.kw = load ptr, ptr %i.kp, align 8, !tbaa !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8
  invoke void %i.ky(ptr noundef nonnull align 8 dereferenceable(96) %i.kp, ptr noundef nonnull align 8 dereferenceable(112) %i.ks, ptr noundef nonnull align 8 dereferenceable(112) %i.ku, float noundef %i.kv)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge, label %.lr.ph282

bb.af:                                            ; preds = %bb.q, %bb.n
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ag:                                            ; preds = %bb.ab, %bb.y
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ah:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit199
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

._crit_edge:                                      ; preds = %bb.ae, %.preheader262
  %i.lc = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph285, label %._crit_edge286

.lr.ph285:                                        ; preds = %._crit_edge
  %i.le = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.lf = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.lg = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %wide.trip.count374 = zext nneg i32 %i.lc to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph285, %bb.ai
  %indvars.iv371 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next372, %bb.ai ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv371
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !4
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [144 x i8], ptr %i.lf, i64 %i.lj ; 17 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 104
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !73
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [112 x i8], ptr %i.lg, i64 %i.ln ; 10 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 108
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !73
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [112 x i8], ptr %i.lg, i64 %i.lr ; 10 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 120
  %i.lu = load float, ptr %i.lt, align 8, !tbaa !45
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 84 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !49 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lk, i64 124
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !50
  %i.lz = fneg float %i.lw
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.ly, float %i.lu)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 2 uses
  %i.md = load float, ptr %i.mc, align 8, !tbaa !51 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 3 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.mi = load float, ptr %i.mh, align 8, !tbaa !51
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 24 ; 3 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !51
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 3 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !51
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.mq = load float, ptr %i.mp, align 8, !tbaa !51
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ls, i64 24 ; 3 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !51
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lk, i64 92
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !52 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lk, i64 128
  %i.mw = load float, ptr %i.mv, align 8, !tbaa !53 ; 3 uses
  %i.mx = fsub float %i.mw, %i.lw
  %i.my = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  %i.na = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.nb = load <2 x float>, ptr %i.mb, align 8, !tbaa !51 ; 4 uses
  %i.nc = load <2 x float>, ptr %i.lo, align 4, !tbaa !51 ; 2 uses
  %i.nd = load <2 x float>, ptr %i.lk, align 8, !tbaa !51 ; 2 uses
  %i.ne = load <2 x float>, ptr %i.mg, align 4, !tbaa !51 ; 2 uses
  %i.nf = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> %i.nd, <2 x i32> <i32 0, i32 3>
  %i.nh = shufflevector <2 x float> %i.nc, <2 x float> %i.ne, <2 x i32> <i32 1, i32 3>
  %i.ni = fmul <2 x float> %i.ng, %i.nh
  %i.nj = shufflevector <2 x float> %i.nb, <2 x float> %i.nd, <2 x i32> <i32 0, i32 2>
  %i.nk = shufflevector <2 x float> %i.nc, <2 x float> %i.ne, <2 x i32> <i32 0, i32 2>
  %i.nl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.nk, <2 x float> %i.ni)
  %i.nm = insertelement <2 x float> poison, float %i.md, i64 0
  %i.nn = insertelement <2 x float> %i.nm, float %i.mi, i64 1
  %i.no = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.np = insertelement <2 x float> %i.no, float %i.mk, i64 1
  %i.nq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %i.np, <2 x float> %i.nl) ; 2 uses
  %shift = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.nq, %shift
  %i.nr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ns = load <2 x float>, ptr %i.ls, align 4, !tbaa !51 ; 2 uses
  %i.nt = load <2 x float>, ptr %i.mn, align 8, !tbaa !51 ; 2 uses
  %i.nu = load <2 x float>, ptr %i.mo, align 4, !tbaa !51 ; 2 uses
  %i.nv = shufflevector <2 x float> %i.nb, <2 x float> %i.nt, <2 x i32> <i32 3, i32 1>
  %i.nw = shufflevector <2 x float> %i.nu, <2 x float> %i.ns, <2 x i32> <i32 1, i32 3>
  %i.nx = fmul <2 x float> %i.nv, %i.nw
  %i.ny = shufflevector <2 x float> %i.nt, <2 x float> %i.nf, <2 x i32> <i32 0, i32 3>
  %i.nz = shufflevector <2 x float> %i.nu, <2 x float> %i.ns, <2 x i32> <i32 0, i32 2>
  %i.oa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.nz, <2 x float> %i.nx)
  %i.ob = insertelement <2 x float> poison, float %i.mq, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.md, i64 1
  %i.od = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.oe = insertelement <2 x float> %i.od, float %i.mm, i64 1
  %i.of = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.oe, <2 x float> %i.oa) ; 2 uses
  %shift495 = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop496 = fsub <2 x float> %i.of, %shift495
  %i.og = extractelement <2 x float> %foldExtExtBinop496, i64 0
  %i.oh = fneg float %i.nr
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.mu, float %i.ma)
  %i.oj = fneg float %i.og
  %i.ok = tail call float @llvm.fmuladd.f32(float %i.oj, float %i.mu, float %i.oi) ; 2 uses
  %i.ol = fadd float %i.lw, %i.ok                 ; 2 uses
  %i.om = fcmp olt float %i.ol, %i.mw             ; 2 uses
  %storemerge.i254 = select i1 %i.om, float %i.mw, float %i.ol
  %.0.i255 = select i1 %i.om, float %i.mx, float %i.ok ; 5 uses
  store float %storemerge.i254, ptr %i.lv, align 4, !tbaa !49
  %i.on = load <2 x float>, ptr %i.my, align 4, !tbaa !51
  %i.oo = fmul <2 x float> %i.nb, %i.on
  %i.op = load float, ptr %i.mz, align 4, !tbaa !51
  %i.oq = fmul float %i.md, %i.op
  %i.or = insertelement <2 x float> poison, float %.0.i255, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ot = fmul <2 x float> %i.oo, %i.os
  %i.ou = fmul float %.0.i255, %i.oq
  %i.ov = load <2 x float>, ptr %i.lo, align 4, !tbaa !51
  %i.ow = fadd <2 x float> %i.ot, %i.ov
  store <2 x float> %i.ow, ptr %i.lo, align 4, !tbaa !51
  %i.ox = load float, ptr %i.me, align 4, !tbaa !51
  %i.oy = fadd float %i.ou, %i.ox
  store float %i.oy, ptr %i.me, align 4, !tbaa !51
  %i.oz = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !51
  %i.pc = fmul float %.0.i255, %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lk, i64 56
  %i.pe = load float, ptr %i.pd, align 8, !tbaa !51
  %i.pf = fmul float %i.pc, %i.pe
  %i.pg = load <2 x float>, ptr %i.oz, align 4, !tbaa !51
  %i.ph = fmul <2 x float> %i.os, %i.pg
  %i.pi = load <2 x float>, ptr %i.na, align 8, !tbaa !51
  %i.pj = fmul <2 x float> %i.ph, %i.pi
  %i.pk = load <2 x float>, ptr %i.mg, align 4, !tbaa !51
  %i.pl = fadd <2 x float> %i.pj, %i.pk
  store <2 x float> %i.pl, ptr %i.mg, align 4, !tbaa !51
  %i.pm = load float, ptr %i.mj, align 4, !tbaa !51
  %i.pn = fadd float %i.pf, %i.pm
  store float %i.pn, ptr %i.mj, align 4, !tbaa !51
  %i.po = load float, ptr %i.mc, align 8, !tbaa !51
  %i.pp = fneg float %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ls, i64 56
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !51
  %i.pt = fmul float %i.ps, %i.pp
  %i.pu = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.pv = fmul float %.0.i255, %i.pt
  %i.pw = load <2 x float>, ptr %i.mb, align 8, !tbaa !51
  %i.px = fneg <2 x float> %i.pw
  %i.py = load <2 x float>, ptr %i.pq, align 4, !tbaa !51
  %i.pz = fmul <2 x float> %i.py, %i.px
  %i.qa = fmul <2 x float> %i.os, %i.pz
  %i.qb = load <2 x float>, ptr %i.ls, align 4, !tbaa !51
  %i.qc = fadd <2 x float> %i.qa, %i.qb
  store <2 x float> %i.qc, ptr %i.ls, align 4, !tbaa !51
  %i.qd = load float, ptr %i.ml, align 4, !tbaa !51
  %i.qe = fadd float %i.pv, %i.qd
  store float %i.qe, ptr %i.ml, align 4, !tbaa !51
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !51
  %i.qi = fmul float %.0.i255, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.lk, i64 72
  %i.qk = load float, ptr %i.qj, align 8, !tbaa !51
  %i.ql = fmul float %i.qi, %i.qk
  %i.qm = load <2 x float>, ptr %i.qf, align 4, !tbaa !51
  %i.qn = fmul <2 x float> %i.os, %i.qm
  %i.qo = load <2 x float>, ptr %i.pu, align 8, !tbaa !51
  %i.qp = fmul <2 x float> %i.qn, %i.qo
  %i.qq = load <2 x float>, ptr %i.mo, align 4, !tbaa !51
  %i.qr = fadd <2 x float> %i.qp, %i.qq
  store <2 x float> %i.qr, ptr %i.mo, align 4, !tbaa !51
  %i.qs = load float, ptr %i.mr, align 4, !tbaa !51
  %i.qt = fadd float %i.ql, %i.qs
  store float %i.qt, ptr %i.mr, align 4, !tbaa !51
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %._crit_edge286, label %bb.ai

._crit_edge286:                                   ; preds = %bb.ai, %._crit_edge
  %i.qu = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %.lr.ph289.preheader, label %.loopexit258

.lr.ph289.preheader:                              ; preds = %._crit_edge286
  %wide.trip.count379 = zext nneg i32 %i.qu to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.ak
  %indvars.iv376 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next377, %bb.ak ] ; 2 uses
  %i.qw = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv376
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !4
  %i.qz = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.ra = sext i32 %i.qy to i64
  %i.rb = getelementptr inbounds [144 x i8], ptr %i.qz, i64 %i.ra ; 7 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 100
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !73
  %i.re = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.rf = sext i32 %i.rd to i64
  %i.rg = getelementptr inbounds [144 x i8], ptr %i.re, i64 %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 84
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !49 ; 3 uses
  %i.rj = fcmp ogt float %i.ri, 0.000000e+00
  br i1 %i.rj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph289
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rb, i64 88
  %i.rl = load float, ptr %i.rk, align 8, !tbaa !80 ; 2 uses
  %i.rm = fneg float %i.ri
  %i.rn = fmul float %i.rl, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rb, i64 128
  store float %i.rn, ptr %i.ro, align 8, !tbaa !53
  %i.rp = fmul float %i.ri, %i.rl
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rb, i64 132
  store float %i.rp, ptr %i.rq, align 4, !tbaa !54
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rb, i64 104
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !73
  %i.rt = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.ru = sext i32 %i.rs to i64
  %i.rv = getelementptr inbounds [112 x i8], ptr %i.rt, i64 %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rb, i64 108
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !73
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [112 x i8], ptr %i.rt, i64 %i.ry
  tail call void @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr nonnull readnone align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %i.rv, ptr noundef nonnull align 8 dereferenceable(112) %i.rz, ptr noundef nonnull align 8 dereferenceable(140) %i.rb)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph289
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.loopexit258, label %.lr.ph289

.preheader259:                                    ; preds = %.lr.ph291, %.preheader260
  br i1 %i.q, label %.lr.ph293, label %._crit_edge294

.lr.ph291:                                        ; preds = %.preheader260, %.lr.ph291
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %.lr.ph291 ], [ 0, %.preheader260 ] ; 2 uses
  %i.sa = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.sb = getelementptr inbounds nuw [144 x i8], ptr %i.sa, i64 %indvars.iv381 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 104
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !73
  %i.se = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.sf = sext i32 %i.sd to i64
  %i.sg = getelementptr inbounds [112 x i8], ptr %i.se, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sb, i64 108
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !73
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [112 x i8], ptr %i.se, i64 %i.sj
  tail call void @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(112) %i.sg, ptr noundef nonnull align 8 dereferenceable(112) %i.sk, ptr noundef nonnull align 8 dereferenceable(140) %i.sb)
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %i.sl = load i32, ptr %i.n, align 4, !tbaa !24
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next382, %i.sm
  br i1 %i.sn, label %.lr.ph291, label %.preheader259

.lr.ph293:                                        ; preds = %.preheader259, %bb.bh
  %indvars.iv384 = phi i64 [ %indvars.iv.next385, %bb.bh ], [ 0, %.preheader259 ] ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv384 ; 3 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !106 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !114, !nonnull !76, !align !116 ; 8 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 224 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !81 ; 2 uses
  %i.su = icmp sgt i32 %i.st, -1
  br i1 %i.su, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225, label %bb.al

bb.al:                                            ; preds = %.lr.ph293
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 256 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !60
  %.not.i200 = icmp eq i32 %i.sw, 2
  br i1 %.not.i200, label %bb.am, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225

bb.am:                                            ; preds = %bb.al
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 360 ; 2 uses
  %i.sy = load float, ptr %i.sx, align 8, !tbaa !66
  %i.sz = fcmp une float %i.sy, 0.000000e+00
  br i1 %i.sz, label %bb.an, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225

bb.an:                                            ; preds = %bb.am
  %i.ta = load i32, ptr %i.r, align 4, !tbaa !17  ; 10 uses
  %i.tb = load i32, ptr %i.s, align 8, !tbaa !18
  %i.tc = icmp eq i32 %i.ta, %i.tb
  br i1 %i.tc, label %bb.ao, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i202

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i209 = icmp eq i32 %i.ta, 0
  %i.td = shl nsw i32 %i.ta, 1
  %i.te = select i1 %.not.i.i.i209, i32 1, i32 %i.td ; 4 uses
  %i.tf = icmp slt i32 %i.ta, %i.te
  br i1 %i.tf, label %bb.ap, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i202

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i210 = icmp eq i32 %i.te, 0
  br i1 %.not.i.i.i.i210, label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i212, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.tg = sext i32 %i.te to i64
  %i.th = mul nsw i64 %i.tg, 112
  %i.ti = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.th, i32 noundef 16)
          to label %.noexc223 unwind label %bb.bi

.noexc223:                                        ; preds = %bb.aq
  %.pre.i.i211 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i212

_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i212: ; preds = %.noexc223, %bb.ap
  %i.tj = phi i32 [ %.pre.i.i211, %.noexc223 ], [ %i.ta, %bb.ap ] ; 4 uses
  %.0.i.i.i.i213 = phi ptr [ %i.ti, %.noexc223 ], [ null, %bb.ap ] ; 4 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph.i.i.i.i218, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214

.lr.ph.i.i.i.i218:                                ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i212
  %wide.trip.count.i.i.i.i219 = zext nneg i32 %i.tj to i64 ; 2 uses
  %xtraiter517 = and i64 %wide.trip.count.i.i.i.i219, 1
  %i.tl = icmp eq i32 %i.tj, 1
  br i1 %i.tl, label %.epil.preheader516, label %.lr.ph.i.i.i.i218.new

.lr.ph.i.i.i.i218.new:                            ; preds = %.lr.ph.i.i.i.i218
  %unroll_iter520 = and i64 %wide.trip.count.i.i.i.i219, 2147483646
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i218.new
  %indvars.iv.i.i.i.i220 = phi i64 [ 0, %.lr.ph.i.i.i.i218.new ], [ %indvars.iv.next.i.i.i.i221.1, %bb.ar ] ; 4 uses
  %niter521 = phi i64 [ 0, %.lr.ph.i.i.i.i218.new ], [ %niter521.next.1, %bb.ar ]
  %i.tm = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i213, i64 %indvars.iv.i.i.i.i220
  %i.tn = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.to = getelementptr inbounds nuw [112 x i8], ptr %i.tn, i64 %indvars.iv.i.i.i.i220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.tm, ptr noundef nonnull align 8 dereferenceable(112) %i.to, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i221 = or disjoint i64 %indvars.iv.i.i.i.i220, 1 ; 2 uses
  %i.tp = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i213, i64 %indvars.iv.next.i.i.i.i221
  %i.tq = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.tr = getelementptr inbounds nuw [112 x i8], ptr %i.tq, i64 %indvars.iv.next.i.i.i.i221
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.tp, ptr noundef nonnull align 8 dereferenceable(112) %i.tr, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i221.1 = add nuw nsw i64 %indvars.iv.i.i.i.i220, 2 ; 2 uses
  %niter521.next.1 = add i64 %niter521, 2         ; 2 uses
  %niter521.ncmp.1 = icmp eq i64 %niter521.next.1, %unroll_iter520
  br i1 %niter521.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214.loopexit.unr-lcssa, label %bb.ar

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214.loopexit.unr-lcssa: ; preds = %bb.ar
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214, label %.epil.preheader516

.epil.preheader516:                               ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214.loopexit.unr-lcssa, %.lr.ph.i.i.i.i218
  %indvars.iv.i.i.i.i220.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i218 ], [ %indvars.iv.next.i.i.i.i221.1, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod519 = trunc i32 %i.tj to i1
  tail call void @llvm.assume(i1 %lcmp.mod519)
  %i.ts = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i213, i64 %indvars.iv.i.i.i.i220.epil.init
  %i.tt = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.tu = getelementptr inbounds nuw [112 x i8], ptr %i.tt, i64 %indvars.iv.i.i.i.i220.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ts, ptr noundef nonnull align 8 dereferenceable(112) %i.tu, i64 112, i1 false), !tbaa.struct !82
  br label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214: ; preds = %.epil.preheader516, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i212
  %i.tv = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %.not.i5.i.i.i215 = icmp eq ptr %i.tv, null
  br i1 %.not.i5.i.i.i215, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i216, label %bb.as

bb.as:                                            ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214
  %i.tw = load i8, ptr %i.t, align 8, !tbaa !10, !range !44, !noundef !76
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %bb.at, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i216

bb.at:                                            ; preds = %bb.as
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.tv)
          to label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i216 unwind label %bb.bi

_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i216: ; preds = %bb.at, %bb.as, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i214
  store i8 1, ptr %i.t, align 8, !tbaa !10
  store ptr %.0.i.i.i.i213, ptr %i.p, align 8, !tbaa !16
  store i32 %i.te, ptr %i.s, align 8, !tbaa !18
  %.pre4.i.i217 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i202

_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i202: ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i216, %bb.ao, %bb.an
  %i.ty = phi i32 [ %.pre4.i.i217, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i216 ], [ %i.ta, %bb.ao ], [ %i.ta, %bb.an ]
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr %i.r, align 4, !tbaa !17
  %i.ua = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.ub = sext i32 %i.ta to i64                   ; 2 uses
  %i.uc = getelementptr inbounds [112 x i8], ptr %i.ua, i64 %i.ub
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.uc, i8 0, i64 112, i1 false)
  %i.ud = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.ue = getelementptr inbounds [112 x i8], ptr %i.ud, i64 %i.ub ; 9 uses
  %i.uf = load i32, ptr %i.sv, align 8, !tbaa !60
  %.not16.i203 = icmp eq i32 %i.uf, 2
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ue, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ug, i8 0, i64 32, i1 false)
  br i1 %.not16.i203, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i202
  %i.uh = load float, ptr %i.sx, align 8, !tbaa !66 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sr, i64 380
  %20 = load float, ptr %i.ui, align 4, !tbaa !51
  %21 = fmul float %i.uh, %20
  %22 = getelementptr inbounds nuw i8, ptr %i.sr, i64 384
  %23 = load float, ptr %22, align 8, !tbaa !51
  %24 = fmul float %i.uh, %23
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sr, i64 388
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !51
  %i.ul = fmul float %i.uh, %i.uk
  %.sroa.0.0.vec.insert.i.i.i205 = insertelement <2 x float> poison, float %21, i64 0
  %.sroa.0.4.vec.insert.i.i.i206 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i205, float %24, i64 1
  %.sroa.3.12.vec.insert.i.i.i207 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ul, i64 0
  %i.um = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i206, ptr %i.um, align 8
  %.sroa.4.0..sroa_idx.i.i208 = getelementptr inbounds nuw i8, ptr %i.ue, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i207, ptr %.sroa.4.0..sroa_idx.i.i208, align 8, !tbaa !73
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 72
  store ptr %i.sr, ptr %i.un, align 8, !tbaa !57
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sr, i64 364
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull align 4 dereferenceable(16) %i.uo, i64 16, i1 false), !tbaa.struct !74
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i204

bb.av:                                            ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i202
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ue, i64 72
  store ptr null, ptr %i.ur, align 8, !tbaa !57
  %i.us = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.uq, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.us, align 8, !tbaa !51
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i204

_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i204: ; preds = %bb.av, %bb.au
  store i32 %i.ta, ptr %i.ss, align 8, !tbaa !81
  %.pre434 = load ptr, ptr %i.so, align 8, !tbaa !106
  br label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225

_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225: ; preds = %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i204, %bb.am, %bb.al, %.lr.ph293
  %i.ut = phi ptr [ %.pre434, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i204 ], [ %i.sp, %bb.am ], [ %i.sp, %bb.al ], [ %i.sp, %.lr.ph293 ] ; 4 uses
  %.1.i201 = phi i32 [ %i.ta, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i204 ], [ 0, %bb.am ], [ 0, %bb.al ], [ %i.st, %.lr.ph293 ]
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !117, !nonnull !76, !align !116 ; 8 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 224 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !81 ; 2 uses
  %i.uy = icmp sgt i32 %i.ux, -1
  br i1 %i.uy, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251, label %bb.aw

bb.aw:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 256 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !60
  %.not.i226 = icmp eq i32 %i.va, 2
  br i1 %.not.i226, label %bb.ax, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251

bb.ax:                                            ; preds = %bb.aw
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 360 ; 2 uses
  %i.vc = load float, ptr %i.vb, align 8, !tbaa !66
  %i.vd = fcmp une float %i.vc, 0.000000e+00
  br i1 %i.vd, label %bb.ay, label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251

bb.ay:                                            ; preds = %bb.ax
  %i.ve = load i32, ptr %i.r, align 4, !tbaa !17  ; 10 uses
  %i.vf = load i32, ptr %i.s, align 8, !tbaa !18
  %i.vg = icmp eq i32 %i.ve, %i.vf
  br i1 %i.vg, label %bb.az, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i228

bb.az:                                            ; preds = %bb.ay
  %.not.i.i.i235 = icmp eq i32 %i.ve, 0
  %i.vh = shl nsw i32 %i.ve, 1
  %i.vi = select i1 %.not.i.i.i235, i32 1, i32 %i.vh ; 4 uses
  %i.vj = icmp slt i32 %i.ve, %i.vi
  br i1 %i.vj, label %bb.ba, label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i228

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i236 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i.i.i236, label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i238, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.vk = sext i32 %i.vi to i64
  %i.vl = mul nsw i64 %i.vk, 112
  %i.vm = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.vl, i32 noundef 16)
          to label %.noexc249 unwind label %bb.bj

.noexc249:                                        ; preds = %bb.bb
  %.pre.i.i237 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i238

_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i238: ; preds = %.noexc249, %bb.ba
  %i.vn = phi i32 [ %.pre.i.i237, %.noexc249 ], [ %i.ve, %bb.ba ] ; 4 uses
  %.0.i.i.i.i239 = phi ptr [ %i.vm, %.noexc249 ], [ null, %bb.ba ] ; 4 uses
  %i.vo = icmp sgt i32 %i.vn, 0
  br i1 %i.vo, label %.lr.ph.i.i.i.i244, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240

.lr.ph.i.i.i.i244:                                ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i238
  %wide.trip.count.i.i.i.i245 = zext nneg i32 %i.vn to i64 ; 2 uses
  %xtraiter523 = and i64 %wide.trip.count.i.i.i.i245, 1
  %i.vp = icmp eq i32 %i.vn, 1
  br i1 %i.vp, label %.epil.preheader522, label %.lr.ph.i.i.i.i244.new

.lr.ph.i.i.i.i244.new:                            ; preds = %.lr.ph.i.i.i.i244
  %unroll_iter526 = and i64 %wide.trip.count.i.i.i.i245, 2147483646
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i.i.i.i244.new
  %indvars.iv.i.i.i.i246 = phi i64 [ 0, %.lr.ph.i.i.i.i244.new ], [ %indvars.iv.next.i.i.i.i247.1, %bb.bc ] ; 4 uses
  %niter527 = phi i64 [ 0, %.lr.ph.i.i.i.i244.new ], [ %niter527.next.1, %bb.bc ]
  %i.vq = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i239, i64 %indvars.iv.i.i.i.i246
  %i.vr = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.vs = getelementptr inbounds nuw [112 x i8], ptr %i.vr, i64 %indvars.iv.i.i.i.i246
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.vq, ptr noundef nonnull align 8 dereferenceable(112) %i.vs, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i247 = or disjoint i64 %indvars.iv.i.i.i.i246, 1 ; 2 uses
  %i.vt = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i239, i64 %indvars.iv.next.i.i.i.i247
  %i.vu = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.vv = getelementptr inbounds nuw [112 x i8], ptr %i.vu, i64 %indvars.iv.next.i.i.i.i247
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.vt, ptr noundef nonnull align 8 dereferenceable(112) %i.vv, i64 112, i1 false), !tbaa.struct !82
  %indvars.iv.next.i.i.i.i247.1 = add nuw nsw i64 %indvars.iv.i.i.i.i246, 2 ; 2 uses
  %niter527.next.1 = add i64 %niter527, 2         ; 2 uses
  %niter527.ncmp.1 = icmp eq i64 %niter527.next.1, %unroll_iter526
  br i1 %niter527.ncmp.1, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240.loopexit.unr-lcssa, label %bb.bc

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240.loopexit.unr-lcssa: ; preds = %bb.bc
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240, label %.epil.preheader522

.epil.preheader522:                               ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240.loopexit.unr-lcssa, %.lr.ph.i.i.i.i244
  %indvars.iv.i.i.i.i246.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i244 ], [ %indvars.iv.next.i.i.i.i247.1, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod525 = trunc i32 %i.vn to i1
  tail call void @llvm.assume(i1 %lcmp.mod525)
  %i.vw = getelementptr inbounds nuw [112 x i8], ptr %.0.i.i.i.i239, i64 %indvars.iv.i.i.i.i246.epil.init
  %i.vx = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.vy = getelementptr inbounds nuw [112 x i8], ptr %i.vx, i64 %indvars.iv.i.i.i.i246.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.vw, ptr noundef nonnull align 8 dereferenceable(112) %i.vy, i64 112, i1 false), !tbaa.struct !82
  br label %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240

_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240: ; preds = %.epil.preheader522, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i.i238
  %i.vz = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %.not.i5.i.i.i241 = icmp eq ptr %i.vz, null
  br i1 %.not.i5.i.i.i241, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i242, label %bb.bd

bb.bd:                                            ; preds = %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240
  %i.wa = load i8, ptr %i.t, align 8, !tbaa !10, !range !44, !noundef !76
  %i.wb = trunc nuw i8 %i.wa to i1
  br i1 %i.wb, label %bb.be, label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i242

bb.be:                                            ; preds = %bb.bd
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.vz)
          to label %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i242 unwind label %bb.bj

_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i242: ; preds = %bb.be, %bb.bd, %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i240
  store i8 1, ptr %i.t, align 8, !tbaa !10
  store ptr %.0.i.i.i.i239, ptr %i.p, align 8, !tbaa !16
  store i32 %i.vi, ptr %i.s, align 8, !tbaa !18
  %.pre4.i.i243 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i228

_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i228: ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i242, %bb.az, %bb.ay
  %i.wc = phi i32 [ %.pre4.i.i243, %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i242 ], [ %i.ve, %bb.az ], [ %i.ve, %bb.ay ]
  %i.wd = add nsw i32 %i.wc, 1
  store i32 %i.wd, ptr %i.r, align 4, !tbaa !17
  %i.we = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.wf = sext i32 %i.ve to i64                   ; 2 uses
  %i.wg = getelementptr inbounds [112 x i8], ptr %i.we, i64 %i.wf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.wg, i8 0, i64 112, i1 false)
  %i.wh = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.wi = getelementptr inbounds [112 x i8], ptr %i.wh, i64 %i.wf ; 9 uses
  %i.wj = load i32, ptr %i.uz, align 8, !tbaa !60
  %.not16.i229 = icmp eq i32 %i.wj, 2
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.wi, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.wk, i8 0, i64 32, i1 false)
  br i1 %.not16.i229, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i228
  %i.wl = load float, ptr %i.vb, align 8, !tbaa !66 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.uv, i64 380
  %25 = load float, ptr %i.wm, align 4, !tbaa !51
  %26 = fmul float %i.wl, %25
  %27 = getelementptr inbounds nuw i8, ptr %i.uv, i64 384
  %28 = load float, ptr %27, align 8, !tbaa !51
  %29 = fmul float %i.wl, %28
  %i.wn = getelementptr inbounds nuw i8, ptr %i.uv, i64 388
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !51
  %i.wp = fmul float %i.wl, %i.wo
  %.sroa.0.0.vec.insert.i.i.i231 = insertelement <2 x float> poison, float %26, i64 0
  %.sroa.0.4.vec.insert.i.i.i232 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i231, float %29, i64 1
  %.sroa.3.12.vec.insert.i.i.i233 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wp, i64 0
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i232, ptr %i.wq, align 8
  %.sroa.4.0..sroa_idx.i.i234 = getelementptr inbounds nuw i8, ptr %i.wi, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i233, ptr %.sroa.4.0..sroa_idx.i.i234, align 8, !tbaa !73
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wi, i64 72
  store ptr %i.uv, ptr %i.wr, align 8, !tbaa !57
  %i.ws = getelementptr inbounds nuw i8, ptr %i.uv, i64 364
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wt, ptr noundef nonnull align 4 dereferenceable(16) %i.ws, i64 16, i1 false), !tbaa.struct !74
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i230

bb.bg:                                            ; preds = %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i228
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wi, i64 72
  store ptr null, ptr %i.wv, align 8, !tbaa !57
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.wu, i8 0, i64 16, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ww, align 8, !tbaa !51
  br label %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i230

_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i230: ; preds = %bb.bg, %bb.bf
  store i32 %i.ve, ptr %i.uw, align 8, !tbaa !81
  %.pre435 = load ptr, ptr %i.so, align 8, !tbaa !106
  br label %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251

_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251: ; preds = %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i230, %bb.ax, %bb.aw, %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225
  %i.wx = phi ptr [ %.pre435, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i230 ], [ %i.ut, %bb.ax ], [ %i.ut, %bb.aw ], [ %i.ut, %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225 ] ; 2 uses
  %.1.i227 = phi i32 [ %i.ve, %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i230 ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ %i.ux, %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit225 ]
  %i.wy = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.wz = sext i32 %.1.i201 to i64
  %i.xa = getelementptr inbounds [112 x i8], ptr %i.wy, i64 %i.wz
  %i.xb = sext i32 %.1.i227 to i64
  %i.xc = getelementptr inbounds [112 x i8], ptr %i.wy, i64 %i.xb
  %i.xd = load float, ptr %i.u, align 4, !tbaa !100
  %i.xe = load ptr, ptr %i.wx, align 8, !tbaa !8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  %i.xg = load ptr, ptr %i.xf, align 8
  invoke void %i.xg(ptr noundef nonnull align 8 dereferenceable(96) %i.wx, ptr noundef nonnull align 8 dereferenceable(112) %i.xa, ptr noundef nonnull align 8 dereferenceable(112) %i.xc, float noundef %i.xd)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %._crit_edge294, label %.lr.ph293

bb.bi:                                            ; preds = %bb.at, %bb.aq
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bj:                                            ; preds = %bb.be, %bb.bb
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bk:                                            ; preds = %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit251
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

._crit_edge294:                                   ; preds = %bb.bh, %.preheader259
  %i.xk = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %i.xl = icmp sgt i32 %i.xk, 0
  br i1 %i.xl, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %._crit_edge294
  %i.xm = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.xn = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.xo = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %wide.trip.count392 = zext nneg i32 %i.xk to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph297, %bb.bl
  %indvars.iv389 = phi i64 [ 0, %.lr.ph297 ], [ %indvars.iv.next390, %bb.bl ] ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %indvars.iv389
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !4
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [144 x i8], ptr %i.xn, i64 %i.xr ; 17 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 104
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !73
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [112 x i8], ptr %i.xo, i64 %i.xv ; 10 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 108
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !73
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [112 x i8], ptr %i.xo, i64 %i.xz ; 10 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xs, i64 120
  %i.yc = load float, ptr %i.yb, align 8, !tbaa !45
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xs, i64 84 ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !49 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xs, i64 124
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !50
  %i.yh = fneg float %i.ye
  %i.yi = tail call float @llvm.fmuladd.f32(float %i.yh, float %i.yg, float %i.yc)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xs, i64 24 ; 2 uses
  %i.yl = load float, ptr %i.yk, align 8, !tbaa !51 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xw, i64 8 ; 3 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !51
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.yq = load float, ptr %i.yp, align 8, !tbaa !51
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xw, i64 24 ; 3 uses
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !51
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ya, i64 8 ; 3 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !51
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ya, i64 16 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xs, i64 40
  %i.yy = load float, ptr %i.yx, align 8, !tbaa !51
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ya, i64 24 ; 3 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !51
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xs, i64 92
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !52 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xs, i64 128
  %i.ze = load float, ptr %i.zd, align 8, !tbaa !53 ; 3 uses
  %i.zf = fsub float %i.ze, %i.ye
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xw, i64 48
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xw, i64 56
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xs, i64 48
  %i.zj = load <2 x float>, ptr %i.yj, align 8, !tbaa !51 ; 4 uses
  %i.zk = load <2 x float>, ptr %i.xw, align 4, !tbaa !51 ; 2 uses
  %i.zl = load <2 x float>, ptr %i.xs, align 8, !tbaa !51 ; 2 uses
  %i.zm = load <2 x float>, ptr %i.yo, align 4, !tbaa !51 ; 2 uses
  %i.zn = shufflevector <2 x float> %i.zj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> %i.zl, <2 x i32> <i32 0, i32 3>
  %i.zp = shufflevector <2 x float> %i.zk, <2 x float> %i.zm, <2 x i32> <i32 1, i32 3>
  %i.zq = fmul <2 x float> %i.zo, %i.zp
  %i.zr = shufflevector <2 x float> %i.zj, <2 x float> %i.zl, <2 x i32> <i32 0, i32 2>
  %i.zs = shufflevector <2 x float> %i.zk, <2 x float> %i.zm, <2 x i32> <i32 0, i32 2>
  %i.zt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zr, <2 x float> %i.zs, <2 x float> %i.zq)
  %i.zu = insertelement <2 x float> poison, float %i.yl, i64 0
  %i.zv = insertelement <2 x float> %i.zu, float %i.yq, i64 1
  %i.zw = insertelement <2 x float> poison, float %i.yn, i64 0
  %i.zx = insertelement <2 x float> %i.zw, float %i.ys, i64 1
  %i.zy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zv, <2 x float> %i.zx, <2 x float> %i.zt) ; 2 uses
  %shift498 = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop499 = fadd <2 x float> %i.zy, %shift498
  %i.zz = extractelement <2 x float> %foldExtExtBinop499, i64 0
  %i.aaa = load <2 x float>, ptr %i.ya, align 4, !tbaa !51 ; 2 uses
  %i.aab = load <2 x float>, ptr %i.yv, align 8, !tbaa !51 ; 2 uses
  %i.aac = load <2 x float>, ptr %i.yw, align 4, !tbaa !51 ; 2 uses
  %i.aad = shufflevector <2 x float> %i.zj, <2 x float> %i.aab, <2 x i32> <i32 3, i32 1>
  %i.aae = shufflevector <2 x float> %i.aac, <2 x float> %i.aaa, <2 x i32> <i32 1, i32 3>
  %i.aaf = fmul <2 x float> %i.aad, %i.aae
  %i.aag = shufflevector <2 x float> %i.aab, <2 x float> %i.zn, <2 x i32> <i32 0, i32 3>
  %i.aah = shufflevector <2 x float> %i.aac, <2 x float> %i.aaa, <2 x i32> <i32 0, i32 2>
  %i.aai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aag, <2 x float> %i.aah, <2 x float> %i.aaf)
  %i.aaj = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.aak = insertelement <2 x float> %i.aaj, float %i.yl, i64 1
  %i.aal = insertelement <2 x float> poison, float %i.za, i64 0
  %i.aam = insertelement <2 x float> %i.aal, float %i.yu, i64 1
  %i.aan = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aak, <2 x float> %i.aam, <2 x float> %i.aai) ; 2 uses
  %shift501 = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop502 = fsub <2 x float> %i.aan, %shift501
  %i.aao = extractelement <2 x float> %foldExtExtBinop502, i64 0
  %i.aap = fneg float %i.zz
  %i.aaq = tail call float @llvm.fmuladd.f32(float %i.aap, float %i.zc, float %i.yi)
  %i.aar = fneg float %i.aao
  %i.aas = tail call float @llvm.fmuladd.f32(float %i.aar, float %i.zc, float %i.aaq) ; 2 uses
  %i.aat = fadd float %i.ye, %i.aas               ; 2 uses
  %i.aau = fcmp olt float %i.aat, %i.ze           ; 2 uses
  %storemerge.i = select i1 %i.aau, float %i.ze, float %i.aat
  %.0.i252 = select i1 %i.aau, float %i.zf, float %i.aas ; 5 uses
  store float %storemerge.i, ptr %i.yd, align 4, !tbaa !49
  %i.aav = load <2 x float>, ptr %i.zg, align 4, !tbaa !51
  %i.aaw = fmul <2 x float> %i.zj, %i.aav
  %i.aax = load float, ptr %i.zh, align 4, !tbaa !51
  %i.aay = fmul float %i.yl, %i.aax
  %i.aaz = insertelement <2 x float> poison, float %.0.i252, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.abb = fmul <2 x float> %i.aaw, %i.aba
  %i.abc = fmul float %.0.i252, %i.aay
  %i.abd = load <2 x float>, ptr %i.xw, align 4, !tbaa !51
  %i.abe = fadd <2 x float> %i.abb, %i.abd
  store <2 x float> %i.abe, ptr %i.xw, align 4, !tbaa !51
  %i.abf = load float, ptr %i.ym, align 4, !tbaa !51
  %i.abg = fadd float %i.abc, %i.abf
  store float %i.abg, ptr %i.ym, align 4, !tbaa !51
  %i.abh = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %i.abi = getelementptr inbounds nuw i8, ptr %i.xw, i64 40
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !51
  %i.abk = fmul float %.0.i252, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %i.xs, i64 56
  %i.abm = load float, ptr %i.abl, align 8, !tbaa !51
  %i.abn = fmul float %i.abk, %i.abm
  %i.abo = load <2 x float>, ptr %i.abh, align 4, !tbaa !51
  %i.abp = fmul <2 x float> %i.aba, %i.abo
  %i.abq = load <2 x float>, ptr %i.zi, align 8, !tbaa !51
  %i.abr = fmul <2 x float> %i.abp, %i.abq
  %i.abs = load <2 x float>, ptr %i.yo, align 4, !tbaa !51
  %i.abt = fadd <2 x float> %i.abr, %i.abs
  store <2 x float> %i.abt, ptr %i.yo, align 4, !tbaa !51
  %i.abu = load float, ptr %i.yr, align 4, !tbaa !51
  %i.abv = fadd float %i.abn, %i.abu
  store float %i.abv, ptr %i.yr, align 4, !tbaa !51
  %i.abw = load float, ptr %i.yk, align 8, !tbaa !51
  %i.abx = fneg float %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ya, i64 48
  %i.abz = getelementptr inbounds nuw i8, ptr %i.ya, i64 56
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !51
  %i.acb = fmul float %i.aca, %i.abx
end_hunk_2
