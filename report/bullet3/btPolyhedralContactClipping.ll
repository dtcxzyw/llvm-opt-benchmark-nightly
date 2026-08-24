Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btPolyhedralContactClipping?download=true
inline.NumInlined: 245
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %i.el = fmul float %i.dr, %i.ek
  %i.em = extractelement <2 x float> %i.ej, i64 0
  %i.en = call float @llvm.fmuladd.f32(float %i.em, float %i.dq, float %i.el)
  %i.eo = load float, ptr %i.aa, align 4, !tbaa !16 ; 2 uses
  %i.ep = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.ds, float %i.en) ; 4 uses
  %.sroa.3.12.vec.insert.i171 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  store <2 x float> %i.ei, ptr %18, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i171, ptr %i.de, align 8
  %i.eq = extractelement <2 x float> %i.ei, i64 1
  %i.er = fmul float %i.cx, %i.eq
  %i.es = extractelement <2 x float> %i.ei, i64 0
  %i.et = call float @llvm.fmuladd.f32(float %i.cu, float %i.es, float %i.er)
  %i.eu = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.ep, float %i.et)
  %i.ev = fcmp olt float %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ew = fneg <2 x float> %i.ei                  ; 2 uses
  store <2 x float> %i.ew, ptr %18, align 8, !tbaa !16
  %i.ex = fneg float %i.ep                        ; 2 uses
  store float %i.ex, ptr %i.de, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ey = phi float [ %i.ex, %bb.c ], [ %i.ep, %bb.b ] ; 2 uses
  %i.ez = phi <2 x float> [ %i.ew, %bb.c ], [ %i.ei, %bb.b ] ; 4 uses
  %i.fa = load i32, ptr @gExpectedNbTests, align 4, !tbaa !33
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr @gExpectedNbTests, align 4, !tbaa !33
  %i.fc = load i8, ptr @gUseInternalObject, align 1, !tbaa !36, !range !24, !noundef !25
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fe = extractelement <2 x float> %i.ez, i64 1
  %i.ff = fmul float %i.cx, %i.fe
  %i.fg = extractelement <2 x float> %i.ez, i64 0
  %i.fh = call float @llvm.fmuladd.f32(float %i.cu, float %i.fg, float %i.ff)
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.ey, float %i.fh) ; 2 uses
  %i.fj = load float, ptr %i.bf, align 4, !tbaa !16
  %i.fk = load float, ptr %i.bi, align 4, !tbaa !16
  %i.fl = load float, ptr %i.bl, align 4, !tbaa !16
  %i.fm = load float, ptr %i.dg, align 8, !tbaa !16
  %i.fn = load float, ptr %i.di, align 8, !tbaa !16
  %i.fo = load float, ptr %i.dj, align 8, !tbaa !27
  %i.fp = load float, ptr %i.dk, align 8, !tbaa !27
  %i.fq = load <2 x float>, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.du, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.fs = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ft = fmul <2 x float> %i.fr, %i.fs
  %i.fu = load <2 x float>, ptr %3, align 4, !tbaa !16 ; 2 uses
  %i.fv = shufflevector <2 x float> %i.dt, <2 x float> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.fw = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.ft)
  %i.fy = load <2 x float>, ptr %i.ah, align 4, !tbaa !16 ; 2 uses
  %i.fz = shufflevector <2 x float> %i.ej, <2 x float> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.ga = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.gb, <2 x float> %i.fx) ; 2 uses
  %i.gd = shufflevector <2 x float> %i.du, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.ge = fmul <2 x float> %i.gd, %i.fs
  %i.gf = shufflevector <2 x float> %i.dt, <2 x float> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.gg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.fw, <2 x float> %i.ge)
  %i.gh = shufflevector <2 x float> %i.ej, <2 x float> %i.fy, <2 x i32> <i32 1, i32 3>
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gb, <2 x float> %i.gg) ; 2 uses
  %i.gj = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gk = insertelement <2 x float> %i.gj, float %i.fk, i64 1
  %i.gl = fmul <2 x float> %i.gk, %i.fs
  %i.gm = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gn = insertelement <2 x float> %i.gm, float %i.fj, i64 1
  %i.go = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.fw, <2 x float> %i.gl)
  %i.gp = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.fl, i64 1
  %i.gr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gb, <2 x float> %i.go) ; 2 uses
  %i.gs = load <2 x float>, ptr %i.df, align 8, !tbaa !16 ; 2 uses
  %i.gt = fcmp olt <2 x float> %i.gc, zeroinitializer
  %i.gu = load <2 x float>, ptr %i.dh, align 8, !tbaa !16 ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> %i.gu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gw = fneg <2 x float> %i.gv
  %i.gx = select <2 x i1> %i.gt, <2 x float> %i.gw, <2 x float> %i.gv
  %i.gy = fcmp olt <2 x float> %i.gi, zeroinitializer
  %i.gz = shufflevector <2 x float> %i.gs, <2 x float> %i.gu, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ha = fneg <2 x float> %i.gz
  %i.hb = select <2 x i1> %i.gy, <2 x float> %i.ha, <2 x float> %i.gz
  %i.hc = fcmp olt <2 x float> %i.gr, zeroinitializer
  %i.hd = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.fn, i64 1 ; 2 uses
  %i.hf = fneg <2 x float> %i.he
  %i.hg = select <2 x i1> %i.hc, <2 x float> %i.hf, <2 x float> %i.he
  %i.hh = fmul <2 x float> %i.gi, %i.hb
  %i.hi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.gc, <2 x float> %i.hh)
  %i.hj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.gr, <2 x float> %i.hi) ; 2 uses
  %i.hk = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.fp, i64 1 ; 2 uses
  %i.hm = fcmp ogt <2 x float> %i.hj, %i.hl
  %i.hn = select <2 x i1> %i.hm, <2 x float> %i.hj, <2 x float> %i.hl ; 2 uses
  %shift695 = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop696 = fadd <2 x float> %i.hn, %shift695
  %i.ho = extractelement <2 x float> %foldExtExtBinop696, i64 0 ; 2 uses
  %i.hp = fadd float %i.fi, %i.ho                 ; 2 uses
  %i.hq = fsub float %i.ho, %i.fi                 ; 2 uses
  %i.hr = fcmp olt float %i.hp, %i.hq
  %i.hs = select i1 %i.hr, float %i.hp, float %i.hq
  %i.ht = fcmp ule float %i.hs, %.0104556
  br i1 %i.ht, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.hu = load i32, ptr @gActualNbTests, align 4, !tbaa !33
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr @gActualNbTests, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15)
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %17)
  %i.hw = load float, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.hx = load float, ptr %i.k, align 4, !tbaa !16 ; 2 uses
  %i.hy = fcmp olt float %i.hw, %i.hx
  br i1 %i.hy, label %.thread387, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hz = load float, ptr %i.l, align 4, !tbaa !16 ; 2 uses
  %i.ia = load float, ptr %i.i, align 4, !tbaa !16 ; 2 uses
  %i.ib = fcmp olt float %i.hz, %i.ia
  br i1 %i.ib, label %.thread387, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ic = fsub float %i.hw, %i.hx                 ; 2 uses
  %i.id = fsub float %i.hz, %i.ia                 ; 2 uses
  %i.ie = fcmp olt float %i.ic, %i.id
  %..i174 = select i1 %i.ie, float %i.ic, float %i.id ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.if = fcmp olt float %..i174, %.0104556
  br i1 %i.if, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !19
  br label %.thread

.thread387:                                       ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  br label %bb.at

.thread:                                          ; preds = %bb.h, %bb.i, %bb.e
  %.3107383 = phi float [ %.0104556, %bb.e ], [ %.0104556, %bb.h ], [ %..i174, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.0104.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %.3107383, %.thread ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !34 ; 2 uses
  %.not161557 = icmp sgt i32 %i.ih, 0
  br i1 %.not161557, label %.lr.ph561, label %.preheader

.lr.ph561:                                        ; preds = %._crit_edge
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 136
  %wide.trip.count641 = zext nneg i32 %i.ih to i64
  br label %bb.j

.preheader:                                       ; preds = %.thread391, %._crit_edge
  %.5109.lcssa = phi float [ %.0104.lcssa, %._crit_edge ], [ %.8112394, %.thread391 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !9  ; 2 uses
  %.not162.not595 = icmp sgt i32 %i.ir, 0
  br i1 %.not162.not595, label %.lr.ph611, label %.thread498.thread

.lr.ph611:                                        ; preds = %.preheader
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.iv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.jd = load i32, ptr %i.it, align 4, !tbaa !9  ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph611.split, label %.thread498.thread

bb.j:                                             ; preds = %.lr.ph561, %.thread391
  %indvars.iv638 = phi i64 [ 0, %.lr.ph561 ], [ %indvars.iv.next639, %.thread391 ] ; 2 uses
  %.5109559 = phi float [ %.0104.lcssa, %.lr.ph561 ], [ %.8112394, %.thread391 ] ; 4 uses
  %i.jf = load ptr, ptr %i.ii, align 8, !tbaa !35
  %i.jg = getelementptr inbounds nuw [48 x i8], ptr %i.jf, i64 %indvars.iv638 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 36
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.jk = load float, ptr %i.jh, align 4, !tbaa !16 ; 2 uses
  %i.jl = load float, ptr %i.ji, align 4, !tbaa !16 ; 2 uses
  %i.jm = load float, ptr %i.jj, align 4, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  %i.jn = load <2 x float>, ptr %3, align 4, !tbaa !16 ; 3 uses
  %i.jo = load <2 x float>, ptr %i.ag, align 4, !tbaa !16 ; 3 uses
  %i.jp = load <2 x float>, ptr %i.aj, align 4, !tbaa !16 ; 3 uses
  %i.jq = load <2 x float>, ptr %i.bh, align 4, !tbaa !16 ; 3 uses
  %i.jr = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = shufflevector <2 x float> %i.jp, <2 x float> %i.jq, <2 x i32> <i32 0, i32 2>
  %i.ju = fmul <2 x float> %i.js, %i.jt
  %i.jv = shufflevector <2 x float> %i.jn, <2 x float> %i.jo, <2 x i32> <i32 0, i32 2>
  %i.jw = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.jx, <2 x float> %i.ju)
  %i.jz = shufflevector <2 x float> %i.jp, <2 x float> %i.jq, <2 x i32> <i32 1, i32 3>
  %i.ka = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.kb, <2 x float> %i.jy) ; 5 uses
  %i.kd = load <2 x float>, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %i.ke = load float, ptr %i.bk, align 4, !tbaa !16
  %i.kf = fmul float %i.jl, %i.ke
  %i.kg = extractelement <2 x float> %i.kd, i64 0
  %i.kh = call float @llvm.fmuladd.f32(float %i.kg, float %i.jk, float %i.kf)
  %i.ki = load float, ptr %i.bl, align 4, !tbaa !16 ; 2 uses
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.ki, float %i.jm, float %i.kh) ; 4 uses
  %.sroa.3.12.vec.insert.i177 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kj, i64 0
  store <2 x float> %i.kc, ptr %19, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i177, ptr %i.ij, align 8
  %i.kk = extractelement <2 x float> %i.kc, i64 1
  %i.kl = fmul float %i.cx, %i.kk
  %i.km = extractelement <2 x float> %i.kc, i64 0
  %i.kn = call float @llvm.fmuladd.f32(float %i.cu, float %i.km, float %i.kl)
  %i.ko = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.kj, float %i.kn)
  %i.kp = fcmp olt float %i.ko, 0.000000e+00
  br i1 %i.kp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kq = fneg <2 x float> %i.kc                  ; 2 uses
  store <2 x float> %i.kq, ptr %19, align 8, !tbaa !16
  %i.kr = fneg float %i.kj                        ; 2 uses
  store float %i.kr, ptr %i.ij, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ks = phi float [ %i.kr, %bb.k ], [ %i.kj, %bb.j ] ; 2 uses
  %i.kt = phi <2 x float> [ %i.kq, %bb.k ], [ %i.kc, %bb.j ] ; 4 uses
  %i.ku = load i32, ptr @gExpectedNbTests, align 4, !tbaa !33
  %i.kv = add nsw i32 %i.ku, 1
  store i32 %i.kv, ptr @gExpectedNbTests, align 4, !tbaa !33
  %i.kw = load i8, ptr @gUseInternalObject, align 1, !tbaa !36, !range !24, !noundef !25
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ky = extractelement <2 x float> %i.kt, i64 1
  %i.kz = fmul float %i.cx, %i.ky
  %i.la = extractelement <2 x float> %i.kt, i64 0
  %i.lb = call float @llvm.fmuladd.f32(float %i.cu, float %i.la, float %i.kz)
  %i.lc = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.ks, float %i.lb) ; 2 uses
  %i.ld = load float, ptr %i.u, align 4, !tbaa !16
  %i.le = load float, ptr %i.x, align 4, !tbaa !16
  %i.lf = load float, ptr %i.aa, align 4, !tbaa !16
  %i.lg = load float, ptr %i.il, align 8, !tbaa !16
  %i.lh = load float, ptr %i.in, align 8, !tbaa !16
  %i.li = load float, ptr %i.io, align 8, !tbaa !27
  %i.lj = load float, ptr %i.ip, align 8, !tbaa !27
  %i.lk = load <2 x float>, ptr %2, align 4, !tbaa !16 ; 2 uses
  %i.ll = load <2 x float>, ptr %i.p, align 4, !tbaa !16 ; 2 uses
  %i.lm = load <2 x float>, ptr %i.q, align 4, !tbaa !16 ; 2 uses
  %i.ln = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.lo = shufflevector <2 x float> %i.ll, <2 x float> %i.jo, <2 x i32> <i32 0, i32 2>
  %i.lp = fmul <2 x float> %i.ln, %i.lo
  %i.lq = shufflevector <2 x float> %i.lk, <2 x float> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.lr = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> %i.lr, <2 x float> %i.lp)
  %i.lt = shufflevector <2 x float> %i.lm, <2 x float> %i.kd, <2 x i32> <i32 0, i32 2>
  %i.lu = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> %i.lv, <2 x float> %i.ls) ; 2 uses
  %i.lx = shufflevector <2 x float> %i.ll, <2 x float> %i.jo, <2 x i32> <i32 1, i32 3>
  %i.ly = fmul <2 x float> %i.ln, %i.lx
  %i.lz = shufflevector <2 x float> %i.lk, <2 x float> %i.jn, <2 x i32> <i32 1, i32 3>
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.lr, <2 x float> %i.ly)
  %i.mb = shufflevector <2 x float> %i.lm, <2 x float> %i.kd, <2 x i32> <i32 1, i32 3>
  %i.mc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.lv, <2 x float> %i.ma) ; 2 uses
  %i.md = insertelement <2 x float> %i.jq, float %i.le, i64 0
  %i.me = fmul <2 x float> %i.ln, %i.md
  %i.mf = insertelement <2 x float> %i.jp, float %i.ld, i64 0
  %i.mg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.lr, <2 x float> %i.me)
  %i.mh = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.ki, i64 1
  %i.mj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.lv, <2 x float> %i.mg) ; 2 uses
  %i.mk = load <2 x float>, ptr %i.ik, align 8, !tbaa !16 ; 2 uses
  %i.ml = fcmp olt <2 x float> %i.lw, zeroinitializer
  %i.mm = load <2 x float>, ptr %i.im, align 8, !tbaa !16 ; 2 uses
  %i.mn = shufflevector <2 x float> %i.mk, <2 x float> %i.mm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mo = fneg <2 x float> %i.mn
  %i.mp = select <2 x i1> %i.ml, <2 x float> %i.mo, <2 x float> %i.mn
  %i.mq = fcmp olt <2 x float> %i.mc, zeroinitializer
  %i.mr = shufflevector <2 x float> %i.mk, <2 x float> %i.mm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ms = fneg <2 x float> %i.mr
  %i.mt = select <2 x i1> %i.mq, <2 x float> %i.ms, <2 x float> %i.mr
  %i.mu = fcmp olt <2 x float> %i.mj, zeroinitializer
  %i.mv = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.mw = insertelement <2 x float> %i.mv, float %i.lh, i64 1 ; 2 uses
  %i.mx = fneg <2 x float> %i.mw
  %i.my = select <2 x i1> %i.mu, <2 x float> %i.mx, <2 x float> %i.mw
  %i.mz = fmul <2 x float> %i.mc, %i.mt
  %i.na = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %i.lw, <2 x float> %i.mz)
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.mj, <2 x float> %i.na) ; 2 uses
  %i.nc = insertelement <2 x float> poison, float %i.li, i64 0
  %i.nd = insertelement <2 x float> %i.nc, float %i.lj, i64 1 ; 2 uses
  %i.ne = fcmp ogt <2 x float> %i.nb, %i.nd
  %i.nf = select <2 x i1> %i.ne, <2 x float> %i.nb, <2 x float> %i.nd ; 2 uses
  %shift698 = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop699 = fadd <2 x float> %i.nf, %shift698
  %i.ng = extractelement <2 x float> %foldExtExtBinop699, i64 0 ; 2 uses
  %i.nh = fadd float %i.lc, %i.ng                 ; 2 uses
  %i.ni = fsub float %i.ng, %i.lc                 ; 2 uses
  %i.nj = fcmp olt float %i.nh, %i.ni
  %i.nk = select i1 %i.nj, float %i.nh, float %i.ni
  %i.nl = fcmp ule float %i.nk, %.5109559
  br i1 %i.nl, label %bb.n, label %.thread391

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.nm = load i32, ptr @gActualNbTests, align 4, !tbaa !33
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nn, ptr @gActualNbTests, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13)
  %i.no = load float, ptr %i.f, align 4, !tbaa !16 ; 2 uses
  %i.np = load float, ptr %i.g, align 4, !tbaa !16 ; 2 uses
  %i.nq = fcmp olt float %i.no, %i.np
  br i1 %i.nq, label %.thread399, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.nr = load float, ptr %i.h, align 4, !tbaa !16 ; 2 uses
  %i.ns = load float, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.nt = fcmp olt float %i.nr, %i.ns
  br i1 %i.nt, label %.thread399, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.nu = fsub float %i.no, %i.np                 ; 2 uses
  %i.nv = fsub float %i.nr, %i.ns                 ; 2 uses
  %i.nw = fcmp olt float %i.nu, %i.nv
  %..i182 = select i1 %i.nw, float %i.nu, float %i.nv ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.nx = fcmp olt float %..i182, %.5109559
  br i1 %i.nx, label %bb.q, label %.thread391

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !19
  br label %.thread391

.thread399:                                       ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  br label %bb.at

.thread391:                                       ; preds = %bb.p, %bb.q, %bb.m
  %.8112394 = phi float [ %.5109559, %bb.m ], [ %.5109559, %bb.p ], [ %..i182, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next639, %wide.trip.count641
  br i1 %exitcond642.not, label %.preheader, label %bb.j, !llvm.loop !38

.lr.ph611.split:                                  ; preds = %.lr.ph611, %._crit_edge580
  %i.ny = phi i32 [ %i.vc, %._crit_edge580 ], [ %i.ir, %.lr.ph611 ]
  %i.nz = phi i32 [ %i.vd, %._crit_edge580 ], [ %i.jd, %.lr.ph611 ] ; 2 uses
  %indvars.iv646 = phi i64 [ %indvars.iv.next647, %._crit_edge580 ], [ 0, %.lr.ph611 ] ; 3 uses
  %.10114610 = phi float [ %.11115.lcssa, %._crit_edge580 ], [ %.5109.lcssa, %.lr.ph611 ] ; 2 uses
  %.0129607 = phi i32 [ %.1130.lcssa, %._crit_edge580 ], [ -1, %.lr.ph611 ] ; 2 uses
  %.0137606 = phi i32 [ %.1138.lcssa, %._crit_edge580 ], [ -1, %.lr.ph611 ] ; 2 uses
  %.sroa.0273.0605 = phi float [ %.sroa.0273.1.lcssa, %._crit_edge580 ], [ 0.000000e+00, %.lr.ph611 ] ; 2 uses
  %.sroa.6275.0604 = phi float [ %.sroa.6275.1.lcssa, %._crit_edge580 ], [ 0.000000e+00, %.lr.ph611 ] ; 2 uses
  %.sroa.9277.0603 = phi float [ %.sroa.9277.1.lcssa, %._crit_edge580 ], [ 0.000000e+00, %.lr.ph611 ] ; 2 uses
  %.sroa.0282.0602 = phi float [ %.sroa.0282.1.lcssa, %._crit_edge580 ], [ 0.000000e+00, %.lr.ph611 ] ; 2 uses
  %.sroa.5283.0601 = phi float [ %.sroa.5283.1.lcssa, %._crit_edge580 ], [ 0.000000e+00, %.lr.ph611 ] ; 2 uses
  %.sroa.7284.0600 = phi float [ %.sroa.7284.1.lcssa, %._crit_edge580 ], [ 0.000000e+00, %.lr.ph611 ] ; 2 uses
  %.sroa.0286.0599 = phi <2 x float> [ %.sroa.0286.1.lcssa, %._crit_edge580 ], [ undef, %.lr.ph611 ] ; 2 uses
  %.sroa.5287.0598 = phi <2 x float> [ %.sroa.5287.1.lcssa, %._crit_edge580 ], [ undef, %.lr.ph611 ] ; 2 uses
  %.sroa.0288.0597 = phi <2 x float> [ %.sroa.0288.1.lcssa, %._crit_edge580 ], [ undef, %.lr.ph611 ] ; 2 uses
  %.sroa.5289.0596 = phi <2 x float> [ %.sroa.5289.1.lcssa, %._crit_edge580 ], [ undef, %.lr.ph611 ] ; 2 uses
  %i.oa = load ptr, ptr %i.is, align 8, !tbaa !15
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %indvars.iv646 ; 3 uses
  %.sroa.0266.0.copyload = load float, ptr %i.ob, align 4 ; 2 uses
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %.sroa.4267.0.copyload = load float, ptr %.sroa.4267.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %.sroa.5268.0.copyload = load float, ptr %.sroa.5268.0..sroa_idx, align 4 ; 2 uses
  %i.oc = load float, ptr %i.u, align 4, !tbaa !16
  %i.od = load float, ptr %i.x, align 4, !tbaa !16
  %i.oe = load float, ptr %i.aa, align 4, !tbaa !16
  %i.of = load <2 x float>, ptr %2, align 4, !tbaa !16 ; 2 uses
  %i.og = load float, ptr %i.w, align 4, !tbaa !16
  %i.oh = load float, ptr %i.p, align 4, !tbaa !16
  %i.oi = fmul float %.sroa.4267.0.copyload, %i.og
  %i.oj = load <2 x float>, ptr %i.q, align 4, !tbaa !16 ; 2 uses
  %i.ok = insertelement <2 x float> poison, float %.sroa.4267.0.copyload, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> zeroinitializer
  %i.om = shufflevector <2 x float> %i.oj, <2 x float> %i.of, <2 x i32> <i32 1, i32 3>
  %i.on = fmul <2 x float> %i.ol, %i.om
  %i.oo = call float @llvm.fmuladd.f32(float %i.oh, float %.sroa.0266.0.copyload, float %i.oi)
  %i.op = shufflevector <2 x float> %i.oj, <2 x float> %i.of, <2 x i32> <i32 0, i32 2>
  %i.oq = insertelement <2 x float> poison, float %.sroa.0266.0.copyload, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.op, <2 x float> %i.or, <2 x float> %i.on)
  %i.ot = call noundef float @llvm.fmuladd.f32(float %i.od, float %.sroa.5268.0.copyload, float %i.oo) ; 2 uses
  %i.ou = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.oc, i64 1
  %i.ow = insertelement <2 x float> poison, float %.sroa.5268.0.copyload, i64 0
  %i.ox = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> %i.ox, <2 x float> %i.os) ; 4 uses
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i188 = insertelement <2 x float> %i.oz, float %i.ot, i64 1 ; 2 uses
  %i.pa = insertelement <2 x float> %i.oy, float 0.000000e+00, i64 1
  %i.pb = icmp sgt i32 %i.nz, 0
  br i1 %i.pb, label %.lr.ph579.preheader, label %._crit_edge580

.lr.ph579.preheader:                              ; preds = %.lr.ph611.split
  %i.pc = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.pd = extractelement <2 x float> %i.oy, i64 0
  br label %.lr.ph579

.lr.ph579:                                        ; preds = %.lr.ph579.preheader, %bb.aa
  %indvars.iv643 = phi i64 [ 0, %.lr.ph579.preheader ], [ %indvars.iv.next644, %bb.aa ] ; 3 uses
  %.11115577 = phi float [ %.10114610, %.lr.ph579.preheader ], [ %.15119.ph, %bb.aa ] ; 5 uses
  %.1130574 = phi i32 [ %.0129607, %.lr.ph579.preheader ], [ %.5134.ph, %bb.aa ] ; 3 uses
  %.1138573 = phi i32 [ %.0137606, %.lr.ph579.preheader ], [ %.5142.ph, %bb.aa ] ; 3 uses
  %.sroa.0273.1572 = phi float [ %.sroa.0273.0605, %.lr.ph579.preheader ], [ %.sroa.0273.3.ph, %bb.aa ] ; 3 uses
  %.sroa.6275.1571 = phi float [ %.sroa.6275.0604, %.lr.ph579.preheader ], [ %.sroa.6275.3.ph, %bb.aa ] ; 3 uses
  %.sroa.9277.1570 = phi float [ %.sroa.9277.0603, %.lr.ph579.preheader ], [ %.sroa.9277.3.ph, %bb.aa ] ; 3 uses
  %.sroa.0282.1569 = phi float [ %.sroa.0282.0602, %.lr.ph579.preheader ], [ %.sroa.0282.3.ph, %bb.aa ] ; 3 uses
  %.sroa.5283.1568 = phi float [ %.sroa.5283.0601, %.lr.ph579.preheader ], [ %.sroa.5283.3.ph, %bb.aa ] ; 3 uses
  %.sroa.7284.1567 = phi float [ %.sroa.7284.0600, %.lr.ph579.preheader ], [ %.sroa.7284.3.ph, %bb.aa ] ; 3 uses
  %.sroa.0286.1566 = phi <2 x float> [ %.sroa.0286.0599, %.lr.ph579.preheader ], [ %.sroa.0286.3.ph, %bb.aa ] ; 3 uses
  %.sroa.5287.1565 = phi <2 x float> [ %.sroa.5287.0598, %.lr.ph579.preheader ], [ %.sroa.5287.3.ph, %bb.aa ] ; 3 uses
  %.sroa.0288.1564 = phi <2 x float> [ %.sroa.0288.0597, %.lr.ph579.preheader ], [ %.sroa.0288.3.ph, %bb.aa ] ; 3 uses
  %.sroa.5289.1563 = phi <2 x float> [ %.sroa.5289.0596, %.lr.ph579.preheader ], [ %.sroa.5289.3.ph, %bb.aa ] ; 3 uses
  %i.pe = load ptr, ptr %i.iu, align 8, !tbaa !15
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv643 ; 3 uses
  %.sroa.0260.0.copyload = load float, ptr %i.pf, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx261, align 4 ; 2 uses
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %.sroa.5262.0.copyload = load float, ptr %.sroa.5262.0..sroa_idx, align 4 ; 2 uses
  %i.pg = load <2 x float>, ptr %3, align 4, !tbaa !16 ; 3 uses
  %i.ph = load <2 x float>, ptr %i.ag, align 4, !tbaa !16 ; 3 uses
  %i.pi = load <2 x float>, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %i.pj = extractelement <2 x float> %i.pi, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #7
  %i.pk = load <2 x float>, ptr %i.aj, align 4, !tbaa !16 ; 3 uses
  %i.pl = load <2 x float>, ptr %i.bh, align 4, !tbaa !16 ; 3 uses
  %i.pm = insertelement <2 x float> poison, float %.sroa.4.0.copyload, i64 0
  %i.pn = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.po = shufflevector <2 x float> %i.pk, <2 x float> %i.pl, <2 x i32> <i32 0, i32 2>
  %i.pp = fmul <2 x float> %i.pn, %i.po
  %i.pq = load float, ptr %i.bl, align 4, !tbaa !16 ; 2 uses
  %i.pr = load float, ptr %i.bk, align 4, !tbaa !16
  %i.ps = fmul float %.sroa.4.0.copyload, %i.pr
  %i.pt = shufflevector <2 x float> %i.pg, <2 x float> %i.ph, <2 x i32> <i32 0, i32 2>
  %i.pu = insertelement <2 x float> poison, float %.sroa.0260.0.copyload, i64 0
  %i.pv = shufflevector <2 x float> %i.pu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pt, <2 x float> %i.pv, <2 x float> %i.pp)
  %i.px = call float @llvm.fmuladd.f32(float %i.pj, float %.sroa.0260.0.copyload, float %i.ps)
  %i.py = shufflevector <2 x float> %i.pk, <2 x float> %i.pl, <2 x i32> <i32 1, i32 3>
  %i.pz = insertelement <2 x float> poison, float %.sroa.5262.0.copyload, i64 0
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.py, <2 x float> %i.qa, <2 x float> %i.pw) ; 4 uses
  %i.qc = call noundef float @llvm.fmuladd.f32(float %i.pq, float %.sroa.5262.0.copyload, float %i.px) ; 3 uses
  %.sroa.3.12.vec.insert.i194 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qc, i64 0
  %i.qd = extractelement <2 x float> %i.qb, i64 1
  %i.qe = fneg float %i.qd
  %i.qf = fmul float %i.pd, %i.qe
  %i.qg = call float @llvm.fmuladd.f32(float %i.ot, float %i.qc, float %i.qf) ; 4 uses
  %i.qh = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qi = insertelement <2 x float> %i.qh, float %i.qc, i64 0
  %i.qj = fneg <2 x float> %i.qi
  %i.qk = fmul <2 x float> %.sroa.0.4.vec.insert.i188, %i.qj
  %i.ql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.qb, <2 x float> %i.qk) ; 7 uses
  %i.qm = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ql, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.qm, ptr %i.iv, align 4
  %i.qn = call noundef float @llvm.fabs.f32(float %i.qg)
  %i.qo = fpext float %i.qn to double
  %i.qp = fcmp ogt double %i.qo, f0x3EB0C6F7A0B5ED8D
  %i.qq = extractelement <2 x float> %i.ql, i64 0
  %i.qr = call float @llvm.fabs.f32(float %i.qq)
  %i.qs = fpext float %i.qr to double
  %i.qt = fcmp ogt double %i.qs, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.qp, i1 true, i1 %i.qt
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph579
  %i.qu = extractelement <2 x float> %i.ql, i64 1
  %i.qv = call noundef float @llvm.fabs.f32(float %i.qu)
  %i.qw = fpext float %i.qv to double
  %i.qx = fcmp ogt double %i.qw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.qx, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r, %.lr.ph579
  %foldExtExtBinop701 = fmul <2 x float> %i.ql, %i.ql
  %i.qy = extractelement <2 x float> %foldExtExtBinop701, i64 0
  %i.qz = call float @llvm.fmuladd.f32(float %i.qg, float %i.qg, float %i.qy)
  %i.ra = extractelement <2 x float> %i.ql, i64 1 ; 2 uses
  %i.rb = call noundef float @llvm.fmuladd.f32(float %i.ra, float %i.ra, float %i.qz)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.rb)
  %i.rc = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.rd = fmul float %i.qg, %i.rc                 ; 4 uses
  store float %i.rd, ptr %20, align 4, !tbaa !16
  %i.re = insertelement <2 x float> poison, float %i.rc, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = fmul <2 x float> %i.ql, %i.rf           ; 3 uses
  %i.rh = extractelement <2 x float> %i.rg, i64 1 ; 4 uses
  %i.ri = extractelement <2 x float> %i.rg, i64 0 ; 3 uses
  store float %i.ri, ptr %i.iw, align 4, !tbaa !16
  store float %i.rh, ptr %i.iv, align 4, !tbaa !16
  %i.rj = fmul float %i.cx, %i.ri
  %i.rk = call float @llvm.fmuladd.f32(float %i.cu, float %i.rd, float %i.rj)
  %i.rl = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.rh, float %i.rk)
  %i.rm = fcmp olt float %i.rl, 0.000000e+00
  br i1 %i.rm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.rn = fneg float %i.rd                        ; 2 uses
  store float %i.rn, ptr %20, align 4, !tbaa !16
  %i.ro = fneg <2 x float> %i.rg                  ; 2 uses
  %i.rp = fneg float %i.rh
  store <2 x float> %i.ro, ptr %i.iw, align 4, !tbaa !16
  %i.rq = extractelement <2 x float> %i.ro, i64 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.rr = phi float [ %i.rp, %bb.t ], [ %i.rh, %bb.s ] ; 2 uses
  %i.rs = phi float [ %i.rq, %bb.t ], [ %i.ri, %bb.s ] ; 2 uses
  %i.rt = phi float [ %i.rn, %bb.t ], [ %i.rd, %bb.s ] ; 2 uses
  %i.ru = load i32, ptr @gExpectedNbTests, align 4, !tbaa !33
  %i.rv = add nsw i32 %i.ru, 1
  store i32 %i.rv, ptr @gExpectedNbTests, align 4, !tbaa !33
  %i.rw = load i8, ptr @gUseInternalObject, align 1, !tbaa !36, !range !24, !noundef !25
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ry = fmul float %i.cx, %i.rs
  %i.rz = call float @llvm.fmuladd.f32(float %i.cu, float %i.rt, float %i.ry)
  %i.sa = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.rr, float %i.rz) ; 2 uses
  %i.sb = load float, ptr %i.u, align 4, !tbaa !16
  %i.sc = load float, ptr %i.x, align 4, !tbaa !16
  %i.sd = load float, ptr %i.aa, align 4, !tbaa !16
  %i.se = load float, ptr %i.iy, align 8, !tbaa !16
  %i.sf = load float, ptr %i.ja, align 8, !tbaa !16
  %i.sg = load float, ptr %i.jb, align 8, !tbaa !27
  %i.sh = load float, ptr %i.jc, align 8, !tbaa !27
  %i.si = load <2 x float>, ptr %2, align 4, !tbaa !16 ; 2 uses
  %i.sj = load <2 x float>, ptr %i.p, align 4, !tbaa !16 ; 2 uses
  %i.sk = load <2 x float>, ptr %i.q, align 4, !tbaa !16 ; 2 uses
  %i.sl = insertelement <2 x float> poison, float %i.rs, i64 0
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.sn = shufflevector <2 x float> %i.sj, <2 x float> %i.ph, <2 x i32> <i32 0, i32 2>
  %i.so = fmul <2 x float> %i.sm, %i.sn
  %i.sp = shufflevector <2 x float> %i.si, <2 x float> %i.pg, <2 x i32> <i32 0, i32 2>
  %i.sq = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ss = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.sr, <2 x float> %i.so)
  %i.st = shufflevector <2 x float> %i.sk, <2 x float> %i.pi, <2 x i32> <i32 0, i32 2>
  %i.su = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.sw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.st, <2 x float> %i.sv, <2 x float> %i.ss) ; 2 uses
  %i.sx = shufflevector <2 x float> %i.sj, <2 x float> %i.ph, <2 x i32> <i32 1, i32 3>
  %i.sy = fmul <2 x float> %i.sm, %i.sx
  %i.sz = shufflevector <2 x float> %i.si, <2 x float> %i.pg, <2 x i32> <i32 1, i32 3>
  %i.ta = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.sr, <2 x float> %i.sy)
  %i.tb = shufflevector <2 x float> %i.sk, <2 x float> %i.pi, <2 x i32> <i32 1, i32 3>
  %i.tc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.sv, <2 x float> %i.ta) ; 2 uses
  %i.td = insertelement <2 x float> %i.pl, float %i.sc, i64 0
  %i.te = fmul <2 x float> %i.sm, %i.td
  %i.tf = insertelement <2 x float> %i.pk, float %i.sb, i64 0
  %i.tg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tf, <2 x float> %i.sr, <2 x float> %i.te)
  %i.th = insertelement <2 x float> poison, float %i.sd, i64 0
  %i.ti = insertelement <2 x float> %i.th, float %i.pq, i64 1
  %i.tj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ti, <2 x float> %i.sv, <2 x float> %i.tg) ; 2 uses
  %i.tk = load <2 x float>, ptr %i.ix, align 8, !tbaa !16 ; 2 uses
  %i.tl = fcmp olt <2 x float> %i.sw, zeroinitializer
  %i.tm = load <2 x float>, ptr %i.iz, align 8, !tbaa !16 ; 2 uses
  %i.tn = shufflevector <2 x float> %i.tk, <2 x float> %i.tm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.to = fneg <2 x float> %i.tn
  %i.tp = select <2 x i1> %i.tl, <2 x float> %i.to, <2 x float> %i.tn
  %i.tq = fcmp olt <2 x float> %i.tc, zeroinitializer
  %i.tr = shufflevector <2 x float> %i.tk, <2 x float> %i.tm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ts = fneg <2 x float> %i.tr
  %i.tt = select <2 x i1> %i.tq, <2 x float> %i.ts, <2 x float> %i.tr
  %i.tu = fcmp olt <2 x float> %i.tj, zeroinitializer
  %i.tv = insertelement <2 x float> poison, float %i.se, i64 0
  %i.tw = insertelement <2 x float> %i.tv, float %i.sf, i64 1 ; 2 uses
  %i.tx = fneg <2 x float> %i.tw
  %i.ty = select <2 x i1> %i.tu, <2 x float> %i.tx, <2 x float> %i.tw
  %i.tz = fmul <2 x float> %i.tc, %i.tt
  %i.ua = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tp, <2 x float> %i.sw, <2 x float> %i.tz)
  %i.ub = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ty, <2 x float> %i.tj, <2 x float> %i.ua) ; 2 uses
  %i.uc = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.ud = insertelement <2 x float> %i.uc, float %i.sh, i64 1 ; 2 uses
  %i.ue = fcmp ogt <2 x float> %i.ub, %i.ud
  %i.uf = select <2 x i1> %i.ue, <2 x float> %i.ub, <2 x float> %i.ud ; 2 uses
  %shift703 = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop704 = fadd <2 x float> %i.uf, %shift703
  %i.ug = extractelement <2 x float> %foldExtExtBinop704, i64 0 ; 2 uses
  %i.uh = fadd float %i.sa, %i.ug                 ; 2 uses
  %i.ui = fsub float %i.ug, %i.sa                 ; 2 uses
  %i.uj = fcmp olt float %i.uh, %i.ui
  %i.uk = select i1 %i.uj, float %i.uh, float %i.ui
  %i.ul = fcmp ule float %i.uk, %.11115577
  br i1 %i.ul, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.um = load i32, ptr @gActualNbTests, align 4, !tbaa !33
  %i.un = add nsw i32 %i.um, 1
  store i32 %i.un, ptr @gActualNbTests, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9)
  %i.uo = load float, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.up = load float, ptr %i.c, align 4, !tbaa !16 ; 2 uses
  %i.uq = fcmp olt float %i.uo, %i.up
  br i1 %i.uq, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ur = load float, ptr %i.d, align 4, !tbaa !16 ; 2 uses
  %i.us = load float, ptr %i.a, align 4, !tbaa !16 ; 2 uses
  %i.ut = fcmp olt float %i.ur, %i.us
  br i1 %i.ut, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.uu = fsub float %i.uo, %i.up                 ; 2 uses
  %i.uv = fsub float %i.ur, %i.us                 ; 2 uses
  %i.uw = fcmp olt float %i.uu, %i.uv             ; 7 uses
  %..i205 = select i1 %i.uw, float %i.uu, float %i.uv ; 2 uses
  %.val = load float, ptr %7, align 4
  %.val523 = load float, ptr %6, align 4
  %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.uw, ptr %7, ptr %6
  %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.sroa.0254.sroa.4.0.copyload = load float, ptr %.31.i206.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel.v = select i1 %i.uw, ptr %7, ptr %6
  %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.0254.sroa.5.0.copyload = load float, ptr %.31.i206.sroa.sel371.v.sroa.sel.v.sroa.sel, align 4
  %.val524 = load float, ptr %8, align 4
  %.val525 = load float, ptr %9, align 4
  %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.uw, ptr %8, ptr %9
  %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 4
  %.sroa.0253.sroa.4.0.copyload = load float, ptr %.32.i207.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel.v = select i1 %i.uw, ptr %8, ptr %9
  %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel.v, i64 8
  %.sroa.0253.sroa.5.0.copyload = load float, ptr %.32.i207.sroa.sel363.v.sroa.sel.v.sroa.sel, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ux = fcmp olt float %..i205, %.11115577
  br i1 %i.ux, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0253.sroa.0.0.copyload = select i1 %i.uw, float %.val524, float %.val525
  %.sroa.0254.sroa.0.0.copyload = select i1 %i.uw, float %.val, float %.val523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !19
  %i.uy = trunc nuw nsw i64 %indvars.iv643 to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.r, %bb.z, %bb.y
  %.sroa.5289.3.ph = phi <2 x float> [ %i.pa, %bb.z ], [ %.sroa.5289.1563, %bb.y ], [ %.sroa.5289.1563, %bb.r ], [ %.sroa.5289.1563, %bb.v ] ; 2 uses
  %.sroa.0288.3.ph = phi <2 x float> [ %.sroa.0.4.vec.insert.i188, %bb.z ], [ %.sroa.0288.1564, %bb.y ], [ %.sroa.0288.1564, %bb.r ], [ %.sroa.0288.1564, %bb.v ] ; 2 uses
  %.sroa.5287.3.ph = phi <2 x float> [ %.sroa.3.12.vec.insert.i194, %bb.z ], [ %.sroa.5287.1565, %bb.y ], [ %.sroa.5287.1565, %bb.r ], [ %.sroa.5287.1565, %bb.v ] ; 2 uses
  %.sroa.0286.3.ph = phi <2 x float> [ %i.qb, %bb.z ], [ %.sroa.0286.1566, %bb.y ], [ %.sroa.0286.1566, %bb.r ], [ %.sroa.0286.1566, %bb.v ] ; 2 uses
  %.sroa.7284.3.ph = phi float [ %.sroa.0254.sroa.5.0.copyload, %bb.z ], [ %.sroa.7284.1567, %bb.y ], [ %.sroa.7284.1567, %bb.r ], [ %.sroa.7284.1567, %bb.v ] ; 2 uses
  %.sroa.5283.3.ph = phi float [ %.sroa.0254.sroa.4.0.copyload, %bb.z ], [ %.sroa.5283.1568, %bb.y ], [ %.sroa.5283.1568, %bb.r ], [ %.sroa.5283.1568, %bb.v ] ; 2 uses
  %.sroa.0282.3.ph = phi float [ %.sroa.0254.sroa.0.0.copyload, %bb.z ], [ %.sroa.0282.1569, %bb.y ], [ %.sroa.0282.1569, %bb.r ], [ %.sroa.0282.1569, %bb.v ] ; 2 uses
  %.sroa.9277.3.ph = phi float [ %.sroa.0253.sroa.5.0.copyload, %bb.z ], [ %.sroa.9277.1570, %bb.y ], [ %.sroa.9277.1570, %bb.r ], [ %.sroa.9277.1570, %bb.v ] ; 2 uses
  %.sroa.6275.3.ph = phi float [ %.sroa.0253.sroa.4.0.copyload, %bb.z ], [ %.sroa.6275.1571, %bb.y ], [ %.sroa.6275.1571, %bb.r ], [ %.sroa.6275.1571, %bb.v ] ; 2 uses
  %.sroa.0273.3.ph = phi float [ %.sroa.0253.sroa.0.0.copyload, %bb.z ], [ %.sroa.0273.1572, %bb.y ], [ %.sroa.0273.1572, %bb.r ], [ %.sroa.0273.1572, %bb.v ] ; 2 uses
  %.5142.ph = phi i32 [ %i.pc, %bb.z ], [ %.1138573, %bb.y ], [ %.1138573, %bb.r ], [ %.1138573, %bb.v ] ; 2 uses
  %.5134.ph = phi i32 [ %i.uy, %bb.z ], [ %.1130574, %bb.y ], [ %.1130574, %bb.r ], [ %.1130574, %bb.v ] ; 2 uses
  %.15119.ph = phi float [ %..i205, %bb.z ], [ %.11115577, %bb.y ], [ %.11115577, %bb.r ], [ %.11115577, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.uz = load i32, ptr %i.it, align 4, !tbaa !9  ; 2 uses
  %i.va = sext i32 %i.uz to i64
  %i.vb = icmp slt i64 %indvars.iv.next644, %i.va
  br i1 %i.vb, label %.lr.ph579, label %._crit_edge580.loopexit, !llvm.loop !39

._crit_edge580.loopexit:                          ; preds = %bb.aa
  %.pre = load i32, ptr %i.iq, align 4, !tbaa !9
  br label %._crit_edge580

._crit_edge580:                                   ; preds = %._crit_edge580.loopexit, %.lr.ph611.split
  %i.vc = phi i32 [ %i.ny, %.lr.ph611.split ], [ %.pre, %._crit_edge580.loopexit ] ; 2 uses
  %i.vd = phi i32 [ %i.nz, %.lr.ph611.split ], [ %i.uz, %._crit_edge580.loopexit ]
  %.sroa.5289.1.lcssa = phi <2 x float> [ %.sroa.5289.0596, %.lr.ph611.split ], [ %.sroa.5289.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.0288.1.lcssa = phi <2 x float> [ %.sroa.0288.0597, %.lr.ph611.split ], [ %.sroa.0288.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.5287.1.lcssa = phi <2 x float> [ %.sroa.5287.0598, %.lr.ph611.split ], [ %.sroa.5287.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.0286.1.lcssa = phi <2 x float> [ %.sroa.0286.0599, %.lr.ph611.split ], [ %.sroa.0286.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.7284.1.lcssa = phi float [ %.sroa.7284.0600, %.lr.ph611.split ], [ %.sroa.7284.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.5283.1.lcssa = phi float [ %.sroa.5283.0601, %.lr.ph611.split ], [ %.sroa.5283.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.0282.1.lcssa = phi float [ %.sroa.0282.0602, %.lr.ph611.split ], [ %.sroa.0282.3.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.sroa.9277.1.lcssa = phi float [ %.sroa.9277.0603, %.lr.ph611.split ], [ %.sroa.9277.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.6275.1.lcssa = phi float [ %.sroa.6275.0604, %.lr.ph611.split ], [ %.sroa.6275.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.sroa.0273.1.lcssa = phi float [ %.sroa.0273.0605, %.lr.ph611.split ], [ %.sroa.0273.3.ph, %._crit_edge580.loopexit ] ; 3 uses
  %.1138.lcssa = phi i32 [ %.0137606, %.lr.ph611.split ], [ %.5142.ph, %._crit_edge580.loopexit ] ; 2 uses
end_hunk_0
