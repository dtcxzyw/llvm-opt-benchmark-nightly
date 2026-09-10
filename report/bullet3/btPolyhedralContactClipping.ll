Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btPolyhedralContactClipping?download=true
inline.NumInlined: 245
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %i.el = call float @llvm.fmuladd.f32(float %i.ck, float %i.ei, float %i.ek)
  %i.em = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.ej, float %i.el)
  %i.en = fcmp olt float %i.em, 0.000000e+00
  br i1 %i.en, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.eo = fneg <3 x float> %i.eg                  ; 3 uses
  %i.ep = extractelement <3 x float> %i.eo, i64 2 ; 2 uses
  %i.eq = extractelement <3 x float> %i.eo, i64 0 ; 2 uses
  %i.er = fneg float %i.ei                        ; 2 uses
  store float %i.er, ptr %18, align 8, !tbaa !18
  store float %i.ep, ptr %i.cv, align 4, !tbaa !18
  store float %i.eq, ptr %i.cu, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.es = phi float [ %i.eq, %bb.c ], [ %i.ej, %bb.b ]
  %i.et = phi float [ %i.ep, %bb.c ], [ %i.eh, %bb.b ]
  %i.eu = phi float [ %i.er, %bb.c ], [ %i.ei, %bb.b ]
  %i.ev = phi <3 x float> [ %i.eo, %bb.c ], [ %i.eg, %bb.b ] ; 3 uses
  %i.ew = load i32, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.ey = load i8, ptr @gUseInternalObject, align 1, !tbaa !47, !range !24, !noundef !25
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fa = fmul float %i.cn, %i.et
  %i.fb = call float @llvm.fmuladd.f32(float %i.ck, float %i.eu, float %i.fa)
  %i.fc = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.es, float %i.fb) ; 2 uses
  %i.fd = load float, ptr %i.ay, align 4, !tbaa !18
  %i.fe = load float, ptr %i.ba, align 4, !tbaa !18
  %i.ff = load float, ptr %i.bc, align 4, !tbaa !18
  %i.fg = load float, ptr %i.cx, align 8, !tbaa !18
  %i.fh = load float, ptr %i.cz, align 8, !tbaa !18
  %i.fi = load float, ptr %i.da, align 8, !tbaa !31
  %i.fj = load float, ptr %i.db, align 8, !tbaa !31
  %i.fk = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.fl = shufflevector <2 x float> %i.do, <2 x float> %i.fk, <2 x i32> <i32 0, i32 2>
  %i.fm = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.fn = fmul <2 x float> %i.fl, %i.fm
  %i.fo = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 2 uses
  %i.fp = shufflevector <2 x float> %i.dn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fq = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fq, <2 x float> %i.fn)
  %i.fs = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 2 uses
  %i.ft = shufflevector <2 x float> %i.dp, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.fu = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fu, <2 x float> %i.fr) ; 2 uses
  %i.fw = shufflevector <2 x float> %i.do, <2 x float> %i.fk, <2 x i32> <i32 1, i32 3>
  %i.fx = fmul <2 x float> %i.fw, %i.fm
  %i.fy = shufflevector <2 x float> %i.dn, <2 x float> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fq, <2 x float> %i.fx)
  %i.ga = shufflevector <2 x float> %i.dp, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.gb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.fu, <2 x float> %i.fz) ; 2 uses
  %i.gc = shufflevector <3 x float> %i.ed, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gd = insertelement <2 x float> %i.gc, float %i.fe, i64 1
  %i.ge = fmul <2 x float> %i.gd, %i.fm
  %i.gf = shufflevector <3 x float> %i.ec, <3 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gg = insertelement <2 x float> %i.gf, float %i.fd, i64 1
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.fq, <2 x float> %i.ge)
  %i.gi = shufflevector <3 x float> %i.eb, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gj = insertelement <2 x float> %i.gi, float %i.ff, i64 1
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.fu, <2 x float> %i.gh) ; 2 uses
  %i.gl = load <2 x float>, ptr %i.cw, align 8, !tbaa !18 ; 2 uses
  %i.gm = fcmp olt <2 x float> %i.fv, zeroinitializer
  %i.gn = load <2 x float>, ptr %i.cy, align 8, !tbaa !18 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gl, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gp = fneg <2 x float> %i.go
  %i.gq = select <2 x i1> %i.gm, <2 x float> %i.gp, <2 x float> %i.go
  %i.gr = fcmp olt <2 x float> %i.gb, zeroinitializer
  %i.gs = shufflevector <2 x float> %i.gl, <2 x float> %i.gn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gt = fneg <2 x float> %i.gs
  %i.gu = select <2 x i1> %i.gr, <2 x float> %i.gt, <2 x float> %i.gs
  %i.gv = fcmp olt <2 x float> %i.gk, zeroinitializer
  %i.gw = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.fh, i64 1 ; 2 uses
  %i.gy = fneg <2 x float> %i.gx
  %i.gz = select <2 x i1> %i.gv, <2 x float> %i.gy, <2 x float> %i.gx
  %i.ha = fmul <2 x float> %i.gb, %i.gu
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.fv, <2 x float> %i.ha)
  %i.hc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.gk, <2 x float> %i.hb) ; 2 uses
  %i.hd = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.fj, i64 1 ; 2 uses
  %i.hf = fcmp ogt <2 x float> %i.hc, %i.he
  %i.hg = select <2 x i1> %i.hf, <2 x float> %i.hc, <2 x float> %i.he ; 2 uses
  %shift695 = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop696 = fadd <2 x float> %i.hg, %shift695
  %i.hh = extractelement <2 x float> %foldExtExtBinop696, i64 0 ; 2 uses
  %i.hi = fadd float %i.fc, %i.hh                 ; 2 uses
  %i.hj = fsub float %i.hh, %i.fc                 ; 2 uses
  %i.hk = fcmp olt float %i.hi, %i.hj
  %i.hl = select i1 %i.hk, float %i.hi, float %i.hj
  %i.hm = fcmp ule float %i.hl, %.0104556
  br i1 %i.hm, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.hn = load i32, ptr @gActualNbTests, align 4, !tbaa !32
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr @gActualNbTests, align 4, !tbaa !32
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
  %i.hp = load float, ptr %i.j, align 4, !tbaa !18 ; 2 uses
  %i.hq = load float, ptr %i.k, align 4, !tbaa !18 ; 2 uses
  %i.hr = fcmp olt float %i.hp, %i.hq
  br i1 %i.hr, label %.thread387, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hs = load float, ptr %i.l, align 4, !tbaa !18 ; 2 uses
  %i.ht = load float, ptr %i.i, align 4, !tbaa !18 ; 2 uses
  %i.hu = fcmp olt float %i.hs, %i.ht
  br i1 %i.hu, label %.thread387, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hv = fsub float %i.hp, %i.hq                 ; 2 uses
  %i.hw = fsub float %i.hs, %i.ht                 ; 2 uses
  %i.hx = fcmp olt float %i.hv, %i.hw
  %..i174 = select i1 %i.hx, float %i.hv, float %i.hw ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.hy = fcmp olt float %..i174, %.0104556
  br i1 %i.hy, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !21
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
  br label %bb.as

.thread:                                          ; preds = %bb.h, %bb.i, %bb.e
  %.3107383 = phi float [ %.0104556, %bb.e ], [ %.0104556, %bb.h ], [ %..i174, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !43

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.0104.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %.3107383, %.thread ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !33 ; 2 uses
  %.not161557 = icmp sgt i32 %i.ia, 0
  br i1 %.not161557, label %.lr.ph561, label %.preheader

.lr.ph561:                                        ; preds = %._crit_edge
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ic = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 136
  %wide.trip.count641 = zext nneg i32 %i.ia to i64
  br label %bb.j

.preheader:                                       ; preds = %.thread391, %._crit_edge
  %.5109.lcssa = phi float [ %.0104.lcssa, %._crit_edge ], [ %.8112394, %.thread391 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !15 ; 2 uses
  %.not162.not595 = icmp sgt i32 %i.il, 0
  br i1 %.not162.not595, label %.lr.ph611, label %.thread498.thread

.lr.ph611:                                        ; preds = %.preheader
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ix = load i32, ptr %i.in, align 4, !tbaa !15
  br label %.lr.ph611.split

bb.j:                                             ; preds = %.lr.ph561, %.thread391
  %indvars.iv638 = phi i64 [ 0, %.lr.ph561 ], [ %indvars.iv.next639, %.thread391 ] ; 2 uses
  %.5109559 = phi float [ %.0104.lcssa, %.lr.ph561 ], [ %.8112394, %.thread391 ] ; 4 uses
  %i.iy = load ptr, ptr %i.ib, align 8, !tbaa !34
  %i.iz = getelementptr inbounds nuw [48 x i8], ptr %i.iy, i64 %indvars.iv638 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 36
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jd = load float, ptr %i.ja, align 4, !tbaa !18
  %i.je = load float, ptr %i.jb, align 4, !tbaa !18
  %i.jf = load float, ptr %i.jc, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #7
  %i.jg = load float, ptr %i.ay, align 4, !tbaa !18
  %i.jh = load float, ptr %i.ba, align 4, !tbaa !18
  %i.ji = load float, ptr %i.bc, align 4, !tbaa !18
  %i.jj = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 4 uses
  %i.jk = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 3 uses
  %i.jl = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 4 uses
  %i.jm = insertelement <3 x float> poison, float %i.je, i64 0
  %i.jn = shufflevector <3 x float> %i.jm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jo = shufflevector <2 x float> %i.jl, <2 x float> %i.jj, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.jp = shufflevector <2 x float> %i.jk, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.jq = shufflevector <3 x float> %i.jo, <3 x float> %i.jp, <3 x i32> <i32 0, i32 1, i32 4>
  %i.jr = fmul <3 x float> %i.jn, %i.jq
  %i.js = shufflevector <2 x float> %i.jl, <2 x float> %i.jj, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.jt = shufflevector <3 x float> %i.js, <3 x float> %i.jp, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ju = insertelement <3 x float> poison, float %i.jd, i64 0
  %i.jv = shufflevector <3 x float> %i.ju, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jt, <3 x float> %i.jv, <3 x float> %i.jr)
  %i.jx = insertelement <3 x float> poison, float %i.ji, i64 0 ; 2 uses
  %i.jy = insertelement <3 x float> %i.jx, float %i.jg, i64 1 ; 2 uses
  %i.jz = insertelement <3 x float> %i.jy, float %i.jh, i64 2 ; 2 uses
  %i.ka = insertelement <3 x float> poison, float %i.jf, i64 0
  %i.kb = shufflevector <3 x float> %i.ka, <3 x float> poison, <3 x i32> zeroinitializer
  %i.kc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.jz, <3 x float> %i.kb, <3 x float> %i.jw) ; 6 uses
  %i.kd = extractelement <3 x float> %i.kc, i64 2 ; 2 uses
  %i.ke = extractelement <3 x float> %i.kc, i64 1 ; 3 uses
  %i.kf = extractelement <3 x float> %i.kc, i64 0 ; 3 uses
  %.sroa.0.4.vec.insert.i176 = shufflevector <3 x float> %i.kc, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %.sroa.3.12.vec.insert.i177 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kf, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i176, ptr %19, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i177, ptr %i.ic, align 8
  %i.kg = fmul float %i.cn, %i.kd
  %i.kh = call float @llvm.fmuladd.f32(float %i.ck, float %i.ke, float %i.kg)
  %i.ki = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.kf, float %i.kh)
  %i.kj = fcmp olt float %i.ki, 0.000000e+00
  br i1 %i.kj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kk = fneg <3 x float> %i.kc                  ; 3 uses
  %i.kl = extractelement <3 x float> %i.kk, i64 2 ; 2 uses
  %i.km = extractelement <3 x float> %i.kk, i64 0 ; 2 uses
  %i.kn = fneg float %i.ke                        ; 2 uses
  store float %i.kn, ptr %19, align 8, !tbaa !18
  store float %i.kl, ptr %i.id, align 4, !tbaa !18
  store float %i.km, ptr %i.ic, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ko = phi float [ %i.km, %bb.k ], [ %i.kf, %bb.j ]
  %i.kp = phi float [ %i.kl, %bb.k ], [ %i.kd, %bb.j ]
  %i.kq = phi float [ %i.kn, %bb.k ], [ %i.ke, %bb.j ]
  %i.kr = phi <3 x float> [ %i.kk, %bb.k ], [ %i.kc, %bb.j ] ; 3 uses
  %i.ks = load i32, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.kt = add nsw i32 %i.ks, 1
  store i32 %i.kt, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.ku = load i8, ptr @gUseInternalObject, align 1, !tbaa !47, !range !24, !noundef !25
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.kw = fmul float %i.cn, %i.kp
  %i.kx = call float @llvm.fmuladd.f32(float %i.ck, float %i.kq, float %i.kw)
  %i.ky = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.ko, float %i.kx) ; 2 uses
  %i.kz = load float, ptr %i.t, align 4, !tbaa !18
  %i.la = load float, ptr %i.v, align 4, !tbaa !18
  %i.lb = load float, ptr %i.x, align 4, !tbaa !18
  %i.lc = load float, ptr %i.if, align 8, !tbaa !18
  %i.ld = load float, ptr %i.ih, align 8, !tbaa !18
  %i.le = load float, ptr %i.ii, align 8, !tbaa !31
  %i.lf = load float, ptr %i.ij, align 8, !tbaa !31
  %i.lg = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.lh = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.li = load <2 x float>, ptr %i.q, align 4, !tbaa !18 ; 2 uses
  %i.lj = shufflevector <3 x float> %i.kr, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.lk = shufflevector <2 x float> %i.lh, <2 x float> %i.jk, <2 x i32> <i32 0, i32 2>
  %i.ll = fmul <2 x float> %i.lj, %i.lk
  %i.lm = shufflevector <2 x float> %i.lg, <2 x float> %i.jj, <2 x i32> <i32 0, i32 2>
  %i.ln = shufflevector <3 x float> %i.kr, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.lo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.ln, <2 x float> %i.ll)
  %i.lp = shufflevector <2 x float> %i.li, <2 x float> %i.jl, <2 x i32> <i32 0, i32 2>
  %i.lq = shufflevector <3 x float> %i.kr, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.lr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.lq, <2 x float> %i.lo) ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lh, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  %i.lt = fmul <2 x float> %i.lj, %i.ls
  %i.lu = shufflevector <2 x float> %i.lg, <2 x float> %i.jj, <2 x i32> <i32 1, i32 3>
  %i.lv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.ln, <2 x float> %i.lt)
  %i.lw = shufflevector <2 x float> %i.li, <2 x float> %i.jl, <2 x i32> <i32 1, i32 3>
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.lq, <2 x float> %i.lv) ; 2 uses
  %i.ly = shufflevector <3 x float> %i.jz, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.lz = insertelement <2 x float> %i.ly, float %i.la, i64 0
  %i.ma = fmul <2 x float> %i.lj, %i.lz
  %i.mb = shufflevector <3 x float> %i.jy, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.mc = insertelement <2 x float> %i.mb, float %i.kz, i64 0
  %i.md = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mc, <2 x float> %i.ln, <2 x float> %i.ma)
  %i.me = shufflevector <3 x float> %i.jx, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mf = insertelement <2 x float> %i.me, float %i.lb, i64 0
  %i.mg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.lq, <2 x float> %i.md) ; 2 uses
  %i.mh = load <2 x float>, ptr %i.ie, align 8, !tbaa !18 ; 2 uses
  %i.mi = fcmp olt <2 x float> %i.lr, zeroinitializer
  %i.mj = load <2 x float>, ptr %i.ig, align 8, !tbaa !18 ; 2 uses
  %i.mk = shufflevector <2 x float> %i.mh, <2 x float> %i.mj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ml = fneg <2 x float> %i.mk
  %i.mm = select <2 x i1> %i.mi, <2 x float> %i.ml, <2 x float> %i.mk
  %i.mn = fcmp olt <2 x float> %i.lx, zeroinitializer
  %i.mo = shufflevector <2 x float> %i.mh, <2 x float> %i.mj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mp = fneg <2 x float> %i.mo
  %i.mq = select <2 x i1> %i.mn, <2 x float> %i.mp, <2 x float> %i.mo
  %i.mr = fcmp olt <2 x float> %i.mg, zeroinitializer
  %i.ms = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.mt = insertelement <2 x float> %i.ms, float %i.ld, i64 1 ; 2 uses
  %i.mu = fneg <2 x float> %i.mt
  %i.mv = select <2 x i1> %i.mr, <2 x float> %i.mu, <2 x float> %i.mt
  %i.mw = fmul <2 x float> %i.lx, %i.mq
  %i.mx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mm, <2 x float> %i.lr, <2 x float> %i.mw)
  %i.my = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.mg, <2 x float> %i.mx) ; 2 uses
  %i.mz = insertelement <2 x float> poison, float %i.le, i64 0
  %i.na = insertelement <2 x float> %i.mz, float %i.lf, i64 1 ; 2 uses
  %i.nb = fcmp ogt <2 x float> %i.my, %i.na
  %i.nc = select <2 x i1> %i.nb, <2 x float> %i.my, <2 x float> %i.na ; 2 uses
  %shift698 = shufflevector <2 x float> %i.nc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop699 = fadd <2 x float> %i.nc, %shift698
  %i.nd = extractelement <2 x float> %foldExtExtBinop699, i64 0 ; 2 uses
  %i.ne = fadd float %i.ky, %i.nd                 ; 2 uses
  %i.nf = fsub float %i.nd, %i.ky                 ; 2 uses
  %i.ng = fcmp olt float %i.ne, %i.nf
  %i.nh = select i1 %i.ng, float %i.ne, float %i.nf
  %i.ni = fcmp ule float %i.nh, %.5109559
  br i1 %i.ni, label %bb.n, label %.thread391

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.nj = load i32, ptr @gActualNbTests, align 4, !tbaa !32
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr @gActualNbTests, align 4, !tbaa !32
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
  %i.nl = load float, ptr %i.f, align 4, !tbaa !18 ; 2 uses
  %i.nm = load float, ptr %i.g, align 4, !tbaa !18 ; 2 uses
  %i.nn = fcmp olt float %i.nl, %i.nm
  br i1 %i.nn, label %.thread399, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.no = load float, ptr %i.h, align 4, !tbaa !18 ; 2 uses
  %i.np = load float, ptr %i.e, align 4, !tbaa !18 ; 2 uses
  %i.nq = fcmp olt float %i.no, %i.np
  br i1 %i.nq, label %.thread399, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.nr = fsub float %i.nl, %i.nm                 ; 2 uses
  %i.ns = fsub float %i.no, %i.np                 ; 2 uses
  %i.nt = fcmp olt float %i.nr, %i.ns
  %..i182 = select i1 %i.nt, float %i.nr, float %i.ns ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.nu = fcmp olt float %..i182, %.5109559
  br i1 %i.nu, label %bb.q, label %.thread391

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !21
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
  br label %bb.as

.thread391:                                       ; preds = %bb.p, %bb.q, %bb.m
  %.8112394 = phi float [ %.5109559, %bb.m ], [ %.5109559, %bb.p ], [ %..i182, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #7
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next639, %wide.trip.count641
  br i1 %exitcond642.not, label %.preheader, label %bb.j, !llvm.loop !44

.lr.ph611.split:                                  ; preds = %.lr.ph611, %._crit_edge580
  %i.nv = phi i32 [ %i.il, %.lr.ph611 ], [ %i.uz, %._crit_edge580 ]
  %i.nw = phi i32 [ %i.ix, %.lr.ph611 ], [ %i.va, %._crit_edge580 ] ; 2 uses
  %indvars.iv646 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next647, %._crit_edge580 ] ; 3 uses
  %.10114610 = phi float [ %.5109.lcssa, %.lr.ph611 ], [ %.11115.lcssa, %._crit_edge580 ] ; 2 uses
  %.0129607 = phi i32 [ -1, %.lr.ph611 ], [ %.1130.lcssa, %._crit_edge580 ] ; 2 uses
  %.0137606 = phi i32 [ -1, %.lr.ph611 ], [ %.1138.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0273.0605 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.0273.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.6275.0604 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.6275.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.9277.0603 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.9277.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0282.0602 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.0282.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.5283.0601 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.5283.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.7284.0600 = phi float [ 0.000000e+00, %.lr.ph611 ], [ %.sroa.7284.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0286.0599 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.0286.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.5287.0598 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.5287.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.0288.0597 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.0288.1.lcssa, %._crit_edge580 ] ; 2 uses
  %.sroa.5289.0596 = phi <2 x float> [ undef, %.lr.ph611 ], [ %.sroa.5289.1.lcssa, %._crit_edge580 ] ; 2 uses
  %i.nx = load ptr, ptr %i.im, align 8, !tbaa !16
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %indvars.iv646 ; 3 uses
  %.sroa.0266.0.copyload = load float, ptr %i.ny, align 4
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %.sroa.4267.0.copyload = load float, ptr %.sroa.4267.0..sroa_idx, align 4
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %.sroa.5268.0.copyload = load float, ptr %.sroa.5268.0..sroa_idx, align 4
  %i.nz = load float, ptr %i.t, align 4, !tbaa !18
  %i.oa = load float, ptr %i.v, align 4, !tbaa !18
  %i.ob = load float, ptr %i.x, align 4, !tbaa !18
  %i.oc = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.od = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.oe = load <2 x float>, ptr %i.q, align 4, !tbaa !18
  %i.of = insertelement <3 x float> poison, float %.sroa.4267.0.copyload, i64 0
  %i.og = shufflevector <3 x float> %i.of, <3 x float> poison, <3 x i32> zeroinitializer
  %i.oh = shufflevector <2 x float> %i.oc, <2 x float> %i.od, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.oi = shufflevector <2 x float> %i.oe, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.oj = shufflevector <3 x float> %i.oh, <3 x float> %i.oi, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ok = fmul <3 x float> %i.og, %i.oj
  %i.ol = shufflevector <2 x float> %i.oc, <2 x float> %i.od, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.om = shufflevector <3 x float> %i.ol, <3 x float> %i.oi, <3 x i32> <i32 0, i32 1, i32 3>
  %i.on = insertelement <3 x float> poison, float %.sroa.0266.0.copyload, i64 0
  %i.oo = shufflevector <3 x float> %i.on, <3 x float> poison, <3 x i32> zeroinitializer
  %i.op = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.om, <3 x float> %i.oo, <3 x float> %i.ok)
  %i.oq = insertelement <3 x float> poison, float %i.nz, i64 0
  %i.or = insertelement <3 x float> %i.oq, float %i.oa, i64 1
  %i.os = insertelement <3 x float> %i.or, float %i.ob, i64 2
  %i.ot = insertelement <3 x float> poison, float %.sroa.5268.0.copyload, i64 0
  %i.ou = shufflevector <3 x float> %i.ot, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ov = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.os, <3 x float> %i.ou, <3 x float> %i.op) ; 4 uses
  %i.ow = shufflevector <3 x float> %i.ov, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ox = shufflevector <3 x float> %i.ov, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.oy = insertelement <2 x float> %i.ox, float 0.000000e+00, i64 1
  %i.oz = icmp sgt i32 %i.nw, 0
  br i1 %i.oz, label %.lr.ph579.preheader, label %._crit_edge580

.lr.ph579.preheader:                              ; preds = %.lr.ph611.split
  %i.pa = trunc nuw nsw i64 %indvars.iv646 to i32
  %i.pb = shufflevector <3 x float> %i.ov, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  br label %.lr.ph579

.lr.ph579:                                        ; preds = %.lr.ph579.preheader, %bb.z
  %indvars.iv643 = phi i64 [ 0, %.lr.ph579.preheader ], [ %indvars.iv.next644, %bb.z ] ; 3 uses
  %.11115577 = phi float [ %.10114610, %.lr.ph579.preheader ], [ %.15119.ph, %bb.z ] ; 5 uses
  %.1130574 = phi i32 [ %.0129607, %.lr.ph579.preheader ], [ %.5134.ph, %bb.z ] ; 3 uses
  %.1138573 = phi i32 [ %.0137606, %.lr.ph579.preheader ], [ %.5142.ph, %bb.z ] ; 3 uses
  %.sroa.0273.1572 = phi float [ %.sroa.0273.0605, %.lr.ph579.preheader ], [ %.sroa.0273.3.ph, %bb.z ] ; 3 uses
  %.sroa.6275.1571 = phi float [ %.sroa.6275.0604, %.lr.ph579.preheader ], [ %.sroa.6275.3.ph, %bb.z ] ; 3 uses
  %.sroa.9277.1570 = phi float [ %.sroa.9277.0603, %.lr.ph579.preheader ], [ %.sroa.9277.3.ph, %bb.z ] ; 3 uses
  %.sroa.0282.1569 = phi float [ %.sroa.0282.0602, %.lr.ph579.preheader ], [ %.sroa.0282.3.ph, %bb.z ] ; 3 uses
  %.sroa.5283.1568 = phi float [ %.sroa.5283.0601, %.lr.ph579.preheader ], [ %.sroa.5283.3.ph, %bb.z ] ; 3 uses
  %.sroa.7284.1567 = phi float [ %.sroa.7284.0600, %.lr.ph579.preheader ], [ %.sroa.7284.3.ph, %bb.z ] ; 3 uses
  %.sroa.0286.1566 = phi <2 x float> [ %.sroa.0286.0599, %.lr.ph579.preheader ], [ %.sroa.0286.3.ph, %bb.z ] ; 3 uses
  %.sroa.5287.1565 = phi <2 x float> [ %.sroa.5287.0598, %.lr.ph579.preheader ], [ %.sroa.5287.3.ph, %bb.z ] ; 3 uses
  %.sroa.0288.1564 = phi <2 x float> [ %.sroa.0288.0597, %.lr.ph579.preheader ], [ %.sroa.0288.3.ph, %bb.z ] ; 3 uses
  %.sroa.5289.1563 = phi <2 x float> [ %.sroa.5289.0596, %.lr.ph579.preheader ], [ %.sroa.5289.3.ph, %bb.z ] ; 3 uses
  %i.pc = load ptr, ptr %i.io, align 8, !tbaa !16
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %indvars.iv643 ; 3 uses
  %.sroa.0260.0.copyload = load float, ptr %i.pd, align 4
  %.sroa.4.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx261, align 4
  %.sroa.5262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %.sroa.5262.0.copyload = load float, ptr %.sroa.5262.0..sroa_idx, align 4
  %i.pe = load float, ptr %i.ay, align 4, !tbaa !18
  %i.pf = load float, ptr %i.ba, align 4, !tbaa !18
  %i.pg = load float, ptr %i.bc, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #7
  %i.ph = load <2 x float>, ptr %3, align 4, !tbaa !18 ; 3 uses
  %i.pi = load <2 x float>, ptr %i.ad, align 4, !tbaa !18 ; 4 uses
  %i.pj = load <2 x float>, ptr %i.ae, align 4, !tbaa !18 ; 4 uses
  %i.pk = insertelement <3 x float> poison, float %.sroa.4.0.copyload, i64 0
  %i.pl = shufflevector <3 x float> %i.pk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.pm = shufflevector <2 x float> %i.pi, <2 x float> %i.pj, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.pn = shufflevector <2 x float> %i.ph, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.po = shufflevector <3 x float> %i.pm, <3 x float> %i.pn, <3 x i32> <i32 0, i32 1, i32 4>
  %i.pp = fmul <3 x float> %i.pl, %i.po
  %i.pq = shufflevector <2 x float> %i.pi, <2 x float> %i.pj, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.pr = shufflevector <3 x float> %i.pq, <3 x float> %i.pn, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ps = insertelement <3 x float> poison, float %.sroa.0260.0.copyload, i64 0
  %i.pt = shufflevector <3 x float> %i.ps, <3 x float> poison, <3 x i32> zeroinitializer
  %i.pu = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pr, <3 x float> %i.pt, <3 x float> %i.pp)
  %i.pv = insertelement <3 x float> poison, float %i.pf, i64 0 ; 2 uses
  %i.pw = insertelement <3 x float> %i.pv, float %i.pg, i64 1 ; 2 uses
  %i.px = insertelement <3 x float> %i.pw, float %i.pe, i64 2 ; 2 uses
  %i.py = insertelement <3 x float> poison, float %.sroa.5262.0.copyload, i64 0
  %i.pz = shufflevector <3 x float> %i.py, <3 x float> poison, <3 x i32> zeroinitializer
  %i.qa = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.px, <3 x float> %i.pz, <3 x float> %i.pu) ; 4 uses
  %i.qb = shufflevector <3 x float> %i.qa, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.qc = shufflevector <3 x float> <float poison, float 0.000000e+00, float poison>, <3 x float> %i.qa, <2 x i32> <i32 4, i32 1>
  %i.qd = fneg <3 x float> %i.qa
  %i.qe = shufflevector <3 x float> %i.qd, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.qf = fmul <3 x float> %i.pb, %i.qe
  %i.qg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ov, <3 x float> %i.qa, <3 x float> %i.qf) ; 8 uses
  %i.qh = shufflevector <3 x float> %i.qg, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.qi = insertelement <2 x float> %i.qh, float 0.000000e+00, i64 1
  store <2 x float> %i.qi, ptr %i.ip, align 4
  %i.qj = extractelement <3 x float> %i.qg, i64 1 ; 3 uses
  %i.qk = call noundef float @llvm.fabs.f32(float %i.qj)
  %i.ql = fpext float %i.qk to double
  %i.qm = fcmp ogt double %i.ql, f0x3EB0C6F7A0B5ED8D
  br i1 %i.qm, label %_Z12IsAlmostZeroRK9btVector3.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph579
  %i.qn = extractelement <3 x float> %i.qg, i64 2
  %i.qo = call noundef float @llvm.fabs.f32(float %i.qn)
  %i.qp = fpext float %i.qo to double
  %i.qq = fcmp ule double %i.qp, f0x3EB0C6F7A0B5ED8D
  %i.qr = extractelement <3 x float> %i.qg, i64 0
  %i.qs = call float @llvm.fabs.f32(float %i.qr)
  %i.qt = fpext float %i.qs to double
  %i.qu = fcmp ule double %i.qt, f0x3EB0C6F7A0B5ED8D
  %or.cond = select i1 %i.qq, i1 %i.qu, i1 false
  br i1 %or.cond, label %bb.z, label %_Z12IsAlmostZeroRK9btVector3.exit.thread

_Z12IsAlmostZeroRK9btVector3.exit.thread:         ; preds = %bb.r, %.lr.ph579
  %foldExtExtBinop701 = fmul <3 x float> %i.qg, %i.qg
  %i.qv = extractelement <3 x float> %foldExtExtBinop701, i64 2
  %i.qw = call float @llvm.fmuladd.f32(float %i.qj, float %i.qj, float %i.qv)
  %i.qx = extractelement <3 x float> %i.qg, i64 0 ; 2 uses
  %i.qy = call noundef float @llvm.fmuladd.f32(float %i.qx, float %i.qx, float %i.qw)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.qy)
  %i.qz = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ra = insertelement <3 x float> poison, float %i.qz, i64 0
  %i.rb = shufflevector <3 x float> %i.ra, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rc = fmul <3 x float> %i.qg, %i.rb           ; 5 uses
  %i.rd = extractelement <3 x float> %i.rc, i64 2 ; 3 uses
  %i.re = extractelement <3 x float> %i.rc, i64 1 ; 4 uses
  %i.rf = extractelement <3 x float> %i.rc, i64 0 ; 3 uses
  store float %i.re, ptr %20, align 4, !tbaa !18
  store float %i.rd, ptr %i.iq, align 4, !tbaa !18
  store float %i.rf, ptr %i.ip, align 4, !tbaa !18
  %i.rg = fmul float %i.cn, %i.rd
  %i.rh = call float @llvm.fmuladd.f32(float %i.ck, float %i.re, float %i.rg)
  %i.ri = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.rf, float %i.rh)
  %i.rj = fcmp olt float %i.ri, 0.000000e+00
  br i1 %i.rj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_Z12IsAlmostZeroRK9btVector3.exit.thread
  %i.rk = fneg <3 x float> %i.rc                  ; 3 uses
  %i.rl = extractelement <3 x float> %i.rk, i64 2 ; 2 uses
  %i.rm = extractelement <3 x float> %i.rk, i64 0 ; 2 uses
  %i.rn = fneg float %i.re                        ; 2 uses
  store float %i.rn, ptr %20, align 4, !tbaa !18
  store float %i.rl, ptr %i.iq, align 4, !tbaa !18
  store float %i.rm, ptr %i.ip, align 4, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_Z12IsAlmostZeroRK9btVector3.exit.thread
  %i.ro = phi float [ %i.rm, %bb.s ], [ %i.rf, %_Z12IsAlmostZeroRK9btVector3.exit.thread ]
  %i.rp = phi float [ %i.rl, %bb.s ], [ %i.rd, %_Z12IsAlmostZeroRK9btVector3.exit.thread ]
  %i.rq = phi float [ %i.rn, %bb.s ], [ %i.re, %_Z12IsAlmostZeroRK9btVector3.exit.thread ]
  %i.rr = phi <3 x float> [ %i.rk, %bb.s ], [ %i.rc, %_Z12IsAlmostZeroRK9btVector3.exit.thread ] ; 3 uses
  %i.rs = load i32, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.rt = add nsw i32 %i.rs, 1
  store i32 %i.rt, ptr @gExpectedNbTests, align 4, !tbaa !32
  %i.ru = load i8, ptr @gUseInternalObject, align 1, !tbaa !47, !range !24, !noundef !25
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.rw = fmul float %i.cn, %i.rp
  %i.rx = call float @llvm.fmuladd.f32(float %i.ck, float %i.rq, float %i.rw)
  %i.ry = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.ro, float %i.rx) ; 2 uses
  %i.rz = load float, ptr %i.t, align 4, !tbaa !18
  %i.sa = load float, ptr %i.v, align 4, !tbaa !18
  %i.sb = load float, ptr %i.x, align 4, !tbaa !18
  %i.sc = load float, ptr %i.is, align 8, !tbaa !18
  %i.sd = load float, ptr %i.iu, align 8, !tbaa !18
  %i.se = load float, ptr %i.iv, align 8, !tbaa !31
  %i.sf = load float, ptr %i.iw, align 8, !tbaa !31
  %i.sg = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 2 uses
  %i.sh = load <2 x float>, ptr %i.p, align 4, !tbaa !18 ; 2 uses
  %i.si = load <2 x float>, ptr %i.q, align 4, !tbaa !18 ; 2 uses
  %i.sj = shufflevector <3 x float> %i.rr, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 3 uses
  %i.sk = shufflevector <2 x float> %i.sh, <2 x float> %i.pi, <2 x i32> <i32 0, i32 2>
  %i.sl = fmul <2 x float> %i.sj, %i.sk
  %i.sm = shufflevector <2 x float> %i.sg, <2 x float> %i.ph, <2 x i32> <i32 0, i32 2>
  %i.sn = shufflevector <3 x float> %i.rr, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.so = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sm, <2 x float> %i.sn, <2 x float> %i.sl)
  %i.sp = shufflevector <2 x float> %i.si, <2 x float> %i.pj, <2 x i32> <i32 0, i32 2>
  %i.sq = shufflevector <3 x float> %i.rr, <3 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.sr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.sq, <2 x float> %i.so) ; 2 uses
  %i.ss = shufflevector <2 x float> %i.sh, <2 x float> %i.pi, <2 x i32> <i32 1, i32 3>
  %i.st = fmul <2 x float> %i.sj, %i.ss
  %i.su = shufflevector <2 x float> %i.sg, <2 x float> %i.ph, <2 x i32> <i32 1, i32 3>
  %i.sv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.su, <2 x float> %i.sn, <2 x float> %i.st)
  %i.sw = shufflevector <2 x float> %i.si, <2 x float> %i.pj, <2 x i32> <i32 1, i32 3>
  %i.sx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sw, <2 x float> %i.sq, <2 x float> %i.sv) ; 2 uses
  %i.sy = shufflevector <3 x float> %i.pv, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.sz = insertelement <2 x float> %i.sy, float %i.sa, i64 0
  %i.ta = fmul <2 x float> %i.sj, %i.sz
  %i.tb = shufflevector <3 x float> %i.px, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.tc = insertelement <2 x float> %i.tb, float %i.rz, i64 0
  %i.td = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tc, <2 x float> %i.sn, <2 x float> %i.ta)
  %i.te = shufflevector <3 x float> %i.pw, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.tf = insertelement <2 x float> %i.te, float %i.sb, i64 0
  %i.tg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tf, <2 x float> %i.sq, <2 x float> %i.td) ; 2 uses
  %i.th = load <2 x float>, ptr %i.ir, align 8, !tbaa !18 ; 2 uses
  %i.ti = fcmp olt <2 x float> %i.sr, zeroinitializer
  %i.tj = load <2 x float>, ptr %i.it, align 8, !tbaa !18 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %.sroa.6275.3.ph = phi float [ %.sroa.0253.sroa.4.0.copyload, %bb.y ], [ %.sroa.6275.1571, %bb.x ], [ %.sroa.6275.1571, %bb.u ], [ %.sroa.6275.1571, %bb.r ] ; 2 uses
  %.sroa.0273.3.ph = phi float [ %.sroa.0253.sroa.0.0.copyload, %bb.y ], [ %.sroa.0273.1572, %bb.x ], [ %.sroa.0273.1572, %bb.u ], [ %.sroa.0273.1572, %bb.r ] ; 2 uses
  %.5142.ph = phi i32 [ %i.pa, %bb.y ], [ %.1138573, %bb.x ], [ %.1138573, %bb.u ], [ %.1138573, %bb.r ] ; 2 uses
  %.5134.ph = phi i32 [ %i.uv, %bb.y ], [ %.1130574, %bb.x ], [ %.1130574, %bb.u ], [ %.1130574, %bb.r ] ; 2 uses
  %.15119.ph = phi float [ %..i205, %bb.y ], [ %.11115577, %bb.x ], [ %.11115577, %bb.u ], [ %.11115577, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.uw = load i32, ptr %i.in, align 4, !tbaa !15 ; 2 uses
  %i.ux = sext i32 %i.uw to i64
  %i.uy = icmp slt i64 %indvars.iv.next644, %i.ux
  br i1 %i.uy, label %.lr.ph579, label %._crit_edge580.loopexit, !llvm.loop !45

._crit_edge580.loopexit:                          ; preds = %bb.z
  %.pre = load i32, ptr %i.ik, align 4, !tbaa !15
  br label %._crit_edge580

._crit_edge580:                                   ; preds = %._crit_edge580.loopexit, %.lr.ph611.split
  %i.uz = phi i32 [ %i.nv, %.lr.ph611.split ], [ %.pre, %._crit_edge580.loopexit ] ; 2 uses
  %i.va = phi i32 [ %i.nw, %.lr.ph611.split ], [ %i.uw, %._crit_edge580.loopexit ]
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
  %.1130.lcssa = phi i32 [ %.0129607, %.lr.ph611.split ], [ %.5134.ph, %._crit_edge580.loopexit ] ; 2 uses
  %.11115.lcssa = phi float [ %.10114610, %.lr.ph611.split ], [ %.15119.ph, %._crit_edge580.loopexit ]
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.vb = sext i32 %i.uz to i64
  %.not162.not = icmp slt i64 %indvars.iv.next647, %i.vb
  br i1 %.not162.not, label %.lr.ph611.split, label %.thread498, !llvm.loop !46

bb.aa:                                            ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #7
  br label %bb.as

.thread498:                                       ; preds = %._crit_edge580
  %i.vc = icmp sgt i32 %.1138.lcssa, -1
  %i.vd = icmp sgt i32 %.1130.lcssa, -1
  %i.ve = select i1 %i.vc, i1 %i.vd, i1 false
  br i1 %i.ve, label %bb.ab, label %.thread498.thread

bb.ab:                                            ; preds = %.thread498
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #7
  %i.vf = fsub float %.sroa.0273.1.lcssa, %.sroa.0282.1.lcssa ; 3 uses
  %i.vg = fsub float %.sroa.6275.1.lcssa, %.sroa.5283.1.lcssa ; 3 uses
  %i.vh = fsub float %.sroa.9277.1.lcssa, %.sroa.7284.1.lcssa ; 3 uses
  %.sroa.0288.0.vec.extract = extractelement <2 x float> %.sroa.0288.1.lcssa, i64 0 ; 3 uses
  %.sroa.0288.4.vec.extract = extractelement <2 x float> %.sroa.0288.1.lcssa, i64 1 ; 3 uses
  %.sroa.5289.8.vec.extract = extractelement <2 x float> %.sroa.5289.1.lcssa, i64 0 ; 3 uses
  %.sroa.0286.0.vec.extract = extractelement <2 x float> %.sroa.0286.1.lcssa, i64 0 ; 3 uses
  %.sroa.0286.4.vec.extract = extractelement <2 x float> %.sroa.0286.1.lcssa, i64 1 ; 3 uses
  %.sroa.5287.8.vec.extract = extractelement <2 x float> %.sroa.5287.1.lcssa, i64 0 ; 3 uses
  %i.vi = fmul float %.sroa.0288.4.vec.extract, %.sroa.0286.4.vec.extract
  %i.vj = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract, float %.sroa.0286.0.vec.extract, float %i.vi)
  %i.vk = call noundef float @llvm.fmuladd.f32(float %.sroa.5289.8.vec.extract, float %.sroa.5287.8.vec.extract, float %i.vj) ; 6 uses
  %i.vl = fmul float %.sroa.0288.4.vec.extract, %i.vg
  %i.vm = call float @llvm.fmuladd.f32(float %.sroa.0288.0.vec.extract, float %i.vf, float %i.vl)
  %i.vn = call noundef float @llvm.fmuladd.f32(float %.sroa.5289.8.vec.extract, float %i.vh, float %i.vm) ; 3 uses
  %i.vo = fmul float %.sroa.0286.4.vec.extract, %i.vg
  %i.vp = call float @llvm.fmuladd.f32(float %.sroa.0286.0.vec.extract, float %i.vf, float %i.vo)
  %i.vq = call noundef float @llvm.fmuladd.f32(float %.sroa.5287.8.vec.extract, float %i.vh, float %i.vp)
  %i.vr = fneg float %i.vk
  %i.vs = call float @llvm.fmuladd.f32(float %i.vr, float %i.vk, float 1.000000e+00) ; 2 uses
  %i.vt = fcmp oeq float %i.vs, 0.000000e+00
  %.pre98.i = fneg float %i.vq                    ; 2 uses
  br i1 %i.vt, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.vu = call float @llvm.fmuladd.f32(float %.pre98.i, float %i.vk, float %i.vn)
  %i.vv = fdiv float %i.vu, %i.vs                 ; 3 uses
  %i.vw = fcmp olt float %i.vv, -1.000000e+30
  br i1 %i.vw, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.vx = fcmp ogt float %i.vv, 1.000000e+30
  br i1 %i.vx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.ad
  %.0375 = phi float [ -1.000000e+30, %bb.ac ], [ %i.vv, %bb.ad ], [ 1.000000e+30, %bb.ae ], [ 0.000000e+00, %bb.ab ] ; 2 uses
  %i.vy = call float @llvm.fmuladd.f32(float %.0375, float %i.vk, float %.pre98.i) ; 3 uses
  %i.vz = fcmp olt float %i.vy, -1.000000e+30
  br i1 %i.vz, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.wa = call float @llvm.fmuladd.f32(float %i.vk, float -1.000000e+30, float %i.vn) ; 3 uses
  %i.wb = fcmp olt float %i.wa, -1.000000e+30
  br i1 %i.wb, label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.wc = fcmp ogt float %i.wa, 1.000000e+30
  br i1 %i.wc, label %bb.ai, label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.ai:                                            ; preds = %bb.ah
  br label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.aj:                                            ; preds = %bb.af
  %i.wd = fcmp ogt float %i.vy, 1.000000e+30
  br i1 %i.wd, label %bb.ak, label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.ak:                                            ; preds = %bb.aj
  %i.we = call float @llvm.fmuladd.f32(float %i.vk, float 1.000000e+30, float %i.vn) ; 3 uses
  %i.wf = fcmp olt float %i.we, -1.000000e+30
  br i1 %i.wf, label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.wg = fcmp ogt float %i.we, 1.000000e+30
  br i1 %i.wg, label %bb.am, label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.am:                                            ; preds = %bb.al
  br label %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit: ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.ah, %bb.ai, %bb.al, %bb.am
  %.0 = phi float [ -1.000000e+30, %bb.ag ], [ -1.000000e+30, %bb.ai ], [ -1.000000e+30, %bb.ah ], [ %i.vy, %bb.aj ], [ 1.000000e+30, %bb.am ], [ 1.000000e+30, %bb.al ], [ 1.000000e+30, %bb.ak ] ; 3 uses
  %i.wh = phi float [ -1.000000e+30, %bb.ag ], [ 1.000000e+30, %bb.ai ], [ %i.wa, %bb.ah ], [ %.0375, %bb.aj ], [ 1.000000e+30, %bb.am ], [ %i.we, %bb.al ], [ -1.000000e+30, %bb.ak ] ; 3 uses
  %i.wi = fmul float %.sroa.0288.0.vec.extract, %i.wh
  %i.wj = fmul float %.sroa.0288.4.vec.extract, %i.wh
  %i.wk = fmul float %.sroa.5289.8.vec.extract, %i.wh
  %i.wl = fmul float %.sroa.0286.0.vec.extract, %.0 ; 2 uses
  %i.wm = fmul float %.sroa.0286.4.vec.extract, %.0 ; 2 uses
  %i.wn = fmul float %.sroa.5287.8.vec.extract, %.0 ; 2 uses
  %i.wo = fsub float %i.vf, %i.wi
  %i.wp = fsub float %i.vg, %i.wj
  %i.wq = fsub float %i.vh, %i.wk
  %i.wr = fadd float %i.wl, %i.wo                 ; 3 uses
  %i.ws = fadd float %i.wm, %i.wp                 ; 3 uses
  %i.wt = fadd float %i.wn, %i.wq                 ; 4 uses
  %.sroa.3.12.vec.insert.i95.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wt, i64 0
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i95.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !20
  %i.wu = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.wv = fmul float %i.ws, %i.ws
  %i.ww = call float @llvm.fmuladd.f32(float %i.wr, float %i.wr, float %i.wv)
  %i.wx = call noundef float @llvm.fmuladd.f32(float %i.wt, float %i.wt, float %i.ww) ; 2 uses
  %i.wy = fcmp ogt float %i.wx, f0x34000000
  br i1 %i.wy, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit
  %sqrt = call float @llvm.sqrt.f32(float %i.wx)  ; 2 uses
  %i.wz = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.xa = fmul float %i.wr, %i.wz                 ; 3 uses
  store float %i.xa, ptr %21, align 4, !tbaa !18
  %i.xb = fmul float %i.ws, %i.wz                 ; 3 uses
  store float %i.xb, ptr %i.wu, align 4, !tbaa !18
  %i.xc = fmul float %i.wt, %i.wz                 ; 3 uses
  store float %i.xc, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !18
  %i.xd = fmul float %i.cn, %i.xb
  %i.xe = call float @llvm.fmuladd.f32(float %i.xa, float %i.ck, float %i.xd)
  %i.xf = call noundef float @llvm.fmuladd.f32(float %i.xc, float %i.cq, float %i.xe)
  %i.xg = fcmp olt float %i.xf, 0.000000e+00
  br i1 %i.xg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.xh = fneg float %i.xa
  store float %i.xh, ptr %21, align 4, !tbaa !18
  %i.xi = fneg float %i.xb
  store float %i.xi, ptr %i.wu, align 4, !tbaa !18
  %i.xj = fneg float %i.xc
  store float %i.xj, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #7
  %i.xk = fadd float %.sroa.0273.1.lcssa, %i.wl
  %i.xl = fadd float %.sroa.6275.1.lcssa, %i.wm
  %i.xm = fadd float %.sroa.9277.1.lcssa, %i.wn
  %.sroa.0.0.vec.insert.i215 = insertelement <2 x float> poison, float %i.xk, i64 0
  %.sroa.0.4.vec.insert.i216 = insertelement <2 x float> %.sroa.0.0.vec.insert.i215, float %i.xl, i64 1
  %.sroa.3.12.vec.insert.i217 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xm, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i216, ptr %22, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i217, ptr %i.xn, align 8
  %i.xo = fneg float %sqrt
  %i.xp = load ptr, ptr %5, align 8, !tbaa !36
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 32
  %i.xr = load ptr, ptr %i.xq, align 8
  call void %i.xr(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, float noundef %i.xo)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_Z23btSegmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #7
  br label %.thread498.thread

.thread498.thread:                                ; preds = %.preheader, %bb.aq, %.thread498
  %i.xs = load <2 x float>, ptr %4, align 4, !tbaa !18 ; 3 uses
  %i.xt = extractelement <2 x float> %i.xs, i64 1
  %i.xu = fmul float %i.cn, %i.xt
  %i.xv = extractelement <2 x float> %i.xs, i64 0
  %i.xw = call float @llvm.fmuladd.f32(float %i.ck, float %i.xv, float %i.xu)
  %i.xx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !18 ; 2 uses
  %i.xz = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.xy, float %i.xw)
  %i.ya = fcmp olt float %i.xz, 0.000000e+00
  br i1 %i.ya, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.thread498.thread
  %i.yb = fneg <2 x float> %i.xs
  %i.yc = fneg float %i.xy
  %.sroa.3.12.vec.insert.i222 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yc, i64 0
  store <2 x float> %i.yb, ptr %4, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i222, ptr %i.xx, align 4, !tbaa !20
  br label %bb.as

bb.as:                                            ; preds = %bb.aa, %bb.ar, %.thread498.thread, %.thread399, %.thread387
  %.17 = phi i1 [ false, %.thread387 ], [ false, %.thread399 ], [ true, %.thread498.thread ], [ true, %bb.ar ], [ false, %bb.aa ]
  ret i1 %.17
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btPolyhedralContactClipping19clipFaceAgainstHullERK9btVector3RK18btConvexPolyhedronRK11btTransformR20btAlignedObjectArrayIS0_ESB_ffRN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4, float noundef %5, float noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.btVector3, align 8           ; 9 uses
  %9 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %or.cond197 = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond197, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !24
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not.i5.i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.b:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.b, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !23
  store ptr null, ptr %i.g, align 8, !tbaa !16
  store i32 0, ptr %i.d, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.a, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
  %i.l = phi i32 [ %i.e, %bb.a ], [ 0, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ]
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = icmp slt i32 %i.l, %i.n
  br i1 %i.p, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i: ; preds = %bb.c
  %i.q = sext i32 %i.n to i64
  %i.r = shl nsw i64 %i.q, 4
  %i.s = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16) ; 6 uses
  %.pre183 = load i32, ptr %i.a, align 4, !tbaa !15 ; 4 uses
  %i.t = icmp sgt i32 %.pre183, 0
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %.pre183 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.v = icmp eq i32 %.pre183, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !21
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next.i.i
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !21
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !0

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i32 %.pre183 to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i.epil.init
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !21
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %bb.c, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %.0.i.i195 = phi ptr [ null, %bb.c ], [ %i.s, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i ], [ %i.s, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !23, !range !24, !noundef !25
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !23
  store ptr %.0.i.i195, ptr %i.af, align 8, !tbaa !16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = load float, ptr %2, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load float, ptr %i.az, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !18
  %i.bh = load float, ptr %0, align 4, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %i.bm = icmp slt i32 %.1, 0
  br i1 %i.bm, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.063163 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.g ]
  %.064162 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.165, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.ap, i64 %indvars.iv ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.br = load float, ptr %i.bo, align 4, !tbaa !18 ; 3 uses
  %i.bs = load float, ptr %i.bp, align 4, !tbaa !18 ; 3 uses
  %i.bt = load float, ptr %i.bq, align 4, !tbaa !18 ; 3 uses
  %i.bu = fmul float %i.bs, %i.as
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.br, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.bt, float %i.bv)
  %i.bx = fmul float %i.bs, %i.ay
  %i.by = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.br, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.bt, float %i.by)
  %i.ca = fmul float %i.bs, %i.be
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.br, float %i.ca)
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bt, float %i.cb)
  %i.cd = fmul float %i.bz, %i.bj
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bh, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.bl, float %i.ce) ; 2 uses
  %i.cg = fcmp olt float %i.cf, %.064162          ; 2 uses
  %.165 = select i1 %i.cg, float %i.cf, float %.064162
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.cg, i32 %i.ch, i32 %.063163  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !48

bb.h:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34
  %i.ck = zext nneg i32 %.1 to i64
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %i.ck ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 36 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.de = zext nneg i32 %i.cn to i64              ; 2 uses
  %.not = icmp eq i32 %i.cn, 1
  br i1 %.not, label %._crit_edge169.loopexit.peel.begin, label %.lr.ph168.split

.lr.ph168.split:                                  ; preds = %.lr.ph168
  %i.df = add nsw i64 %i.de, -2
  br label %bb.l

._crit_edge169.loopexit.peel.begin:               ; preds = %.lr.ph168, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114
  %i.dg = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next176, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 2 uses
  %i.dh = phi ptr [ %3, %.lr.ph168 ], [ %.0158164, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 6 uses
  %i.di = phi ptr [ %4, %.lr.ph168 ], [ %.0157165, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 2 uses
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32
  %i.dm = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds [16 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %indvars.iv.next176.peel = add nuw nsw i64 %i.dg, 1 ; 2 uses
  %i.dp = icmp eq i64 %indvars.iv.next176.peel, %i.de
  %i.dq = select i1 %i.dp, i64 0, i64 %indvars.iv.next176.peel
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !32
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %i.dm, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dw = load float, ptr %i.cs, align 4, !tbaa !18 ; 2 uses
  %i.dx = load float, ptr %i.cv, align 4, !tbaa !18
  %i.dy = load float, ptr %i.cy, align 4, !tbaa !18 ; 2 uses
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !18
  %i.ea = load <3 x float>, ptr %i.do, align 4, !tbaa !18 ; 4 uses
  %i.eb = load <3 x float>, ptr %i.du, align 4, !tbaa !18
  %i.ec = fsub <3 x float> %i.ea, %i.eb           ; 3 uses
  %i.ed = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 3 uses
  %i.ee = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ef = load <2 x float>, ptr %i.ct, align 4, !tbaa !18 ; 3 uses
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eh = load float, ptr %i.cu, align 4, !tbaa !18
  %i.ei = load <2 x float>, ptr %i.cw, align 4, !tbaa !18 ; 5 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ek = load float, ptr %i.cx, align 4, !tbaa !18
  %i.el = shufflevector <3 x float> %i.ec, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.em = shufflevector <2 x float> %i.ef, <2 x float> %i.ei, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.en = fmul <2 x float> %i.el, %i.em
  %i.eo = shufflevector <2 x float> %i.ei, <2 x float> %i.ed, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ep = fmul <2 x float> %i.el, %i.eo
  %i.eq = shufflevector <2 x float> %i.ef, <2 x float> %i.ei, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.er = shufflevector <3 x float> %i.ec, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.er, <2 x float> %i.en)
  %i.et = shufflevector <2 x float> %i.ei, <2 x float> %i.ed, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.er, <2 x float> %i.ep)
  %i.ev = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.dy, i64 1 ; 3 uses
  %i.ex = shufflevector <3 x float> %i.ec, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ex, <2 x float> %i.es) ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.dw, i64 1 ; 2 uses
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.ex, <2 x float> %i.eu) ; 2 uses
  %i.fc = load float, ptr %i.da, align 4, !tbaa !18
  %i.fd = load float, ptr %i.cz, align 8, !tbaa !18
  %i.fe = load float, ptr %i.db, align 8, !tbaa !18
  %i.ff = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fmul <2 x float> %i.eo, %i.fg
  %i.fi = fmul <2 x float> %i.em, %i.fg
  %i.fj = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.fk, <2 x float> %i.fh)
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fn = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.fo, <2 x float> %i.fl) ; 2 uses
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.fo, <2 x float> %i.fm) ; 2 uses
  %i.fr = fneg <2 x float> %i.fq
  %i.fs = fmul <2 x float> %i.fb, %i.fr
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fp, <2 x float> %i.fs)
  %i.fu = extractelement <2 x float> %i.fp, i64 1
  %i.fv = fneg float %i.fu
  %i.fw = fneg <2 x float> %i.ft                  ; 3 uses
  %i.fx = extractelement <3 x float> %i.ea, i64 2
  %i.fy = insertelement <2 x float> %i.ey, float %i.dz, i64 1
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ga = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.gb = insertelement <4 x float> %i.ga, float %i.ee, i64 1
  %i.gc = insertelement <4 x float> %i.gb, float %i.eh, i64 2
  %i.gd = insertelement <4 x float> %i.gc, float %i.ek, i64 3
  %i.ge = fmul <4 x float> %i.fz, %i.gd
  %i.gf = shufflevector <2 x float> %i.fb, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.gg = shufflevector <3 x float> %i.gf, <3 x float> %i.ea, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.gh = shufflevector <2 x float> %i.fq, <2 x float> %i.ed, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gj, <4 x float> %i.ge) ; 3 uses
  %i.gl = extractelement <4 x float> %i.gk, i64 0
  %i.gm = fneg float %i.gl                        ; 2 uses
  %.sroa.3.12.vec.insert.i99.peel = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gm, i64 0
  %i.gn = extractelement <4 x float> %i.gk, i64 1
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.dw, float %i.gn)
  %i.gp = load float, ptr %i.dc, align 4, !tbaa !18
  %i.gq = fadd float %i.go, %i.gp
  %i.gr = shufflevector <3 x float> %i.ea, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gs = shufflevector <4 x float> %i.gk, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.ew, <2 x float> %i.gs)
  %i.gu = load <2 x float>, ptr %i.dd, align 4, !tbaa !18
  %i.gv = fadd <2 x float> %i.gt, %i.gu           ; 2 uses
  %shift.peel = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.peel = fmul <2 x float> %i.gv, %shift.peel
  %i.gw = extractelement <2 x float> %foldExtExtBinop.peel, i64 0
  %i.gx = extractelement <2 x float> %i.fw, i64 0
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gx, float %i.gw)
  %i.gz = extractelement <2 x float> %i.gv, i64 1
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gz, float %i.gm, float %i.gy)
  %i.hb = fneg float %i.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store <2 x float> %i.fw, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i99.peel, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !20
  call void @_ZN27btPolyhedralContactClipping8clipFaceERK20btAlignedObjectArrayI9btVector3ERS2_RKS1_f(ptr noundef nonnull align 8 dereferenceable(25) %i.dh, ptr noundef nonnull align 8 dereferenceable(25) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.hb)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !15
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel

bb.i:                                             ; preds = %._crit_edge169.loopexit.peel.begin
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !19
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel: ; preds = %bb.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i107.peel = icmp eq ptr %i.hj, null
  br i1 %.not.i5.i.i107.peel, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel, label %bb.j

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !23, !range !24, !noundef !25
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.k, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel

bb.k:                                             ; preds = %bb.j
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hj)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel: ; preds = %bb.k, %bb.j, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106.peel
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i8 1, ptr %i.hn, align 8, !tbaa !23
  store ptr null, ptr %i.hi, align 8, !tbaa !16
  store i32 0, ptr %i.hf, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108.peel, %bb.i, %._crit_edge169.loopexit.peel.begin
  store i32 0, ptr %i.hc, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %._crit_edge169

._crit_edge169:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel, %bb.h
  %.0157.lcssa = phi ptr [ %3, %bb.h ], [ %i.di, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114.peel ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cl, i64 36
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.hr = load float, ptr %i.ho, align 4, !tbaa !18 ; 3 uses
  %i.hs = load float, ptr %i.hp, align 4, !tbaa !18 ; 3 uses
  %i.ht = load float, ptr %i.hq, align 4, !tbaa !18 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !18
  %i.hw = load float, ptr %2, align 4, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !18
  %i.hz = fmul float %i.hs, %i.hy
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hr, float %i.hz)
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !18
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.ic, float %i.ht, float %i.ia) ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.if = load float, ptr %i.ie, align 4, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !18
  %i.ii = fmul float %i.hs, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.if, float %i.hr, float %i.ii)
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.il = load float, ptr %i.ik, align 4, !tbaa !18
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.il, float %i.ht, float %i.ij) ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.io = load float, ptr %i.in, align 4, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !18
  %i.ir = fmul float %i.hs, %i.iq
  %i.is = tail call float @llvm.fmuladd.f32(float %i.io, float %i.hr, float %i.ir)
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.iu = load float, ptr %i.it, align 4, !tbaa !18
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.ht, float %i.is) ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !18
  %i.ja = fmul float %i.im, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.id, float %i.ix, float %i.ja)
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !18
  %i.je = tail call noundef float @llvm.fmuladd.f32(float %i.iv, float %i.jd, float %i.jb)
  %i.jf = fsub float %i.hv, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %.0157.lcssa, i64 4 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !15 ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph173, label %.loopexit

.lr.ph173:                                        ; preds = %._crit_edge169
  %i.jj = getelementptr inbounds nuw i8, ptr %.0157.lcssa, i64 16
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph168.split, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114
  %indvars.iv175 = phi i64 [ 0, %.lr.ph168.split ], [ %indvars.iv.next176, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 3 uses
  %.0157165 = phi ptr [ %3, %.lr.ph168.split ], [ %.0158164, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 8 uses
  %.0158164 = phi ptr [ %4, %.lr.ph168.split ], [ %.0157165, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114 ] ; 3 uses
  %i.jk = load ptr, ptr %i.cp, align 8, !tbaa !41 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv175
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !32
  %i.jn = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.jo = sext i32 %i.jm to i64
  %i.jp = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.jo ; 2 uses
  %indvars.iv.next176 = add i64 %indvars.iv175, 1 ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next176
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !32
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [16 x i8], ptr %i.jn, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jv = load float, ptr %i.cs, align 4, !tbaa !18 ; 2 uses
  %i.jw = load float, ptr %i.cv, align 4, !tbaa !18
  %i.jx = load float, ptr %i.cy, align 4, !tbaa !18 ; 2 uses
  %i.jy = load float, ptr %i.ju, align 4, !tbaa !18
  %i.jz = load <3 x float>, ptr %i.jp, align 4, !tbaa !18 ; 4 uses
  %i.ka = load <3 x float>, ptr %i.jt, align 4, !tbaa !18
  %i.kb = fsub <3 x float> %i.jz, %i.ka           ; 3 uses
  %i.kc = load <2 x float>, ptr %2, align 4, !tbaa !18 ; 3 uses
  %i.kd = load float, ptr %i.cr, align 4, !tbaa !18
  %i.ke = load <2 x float>, ptr %i.ct, align 4, !tbaa !18 ; 3 uses
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kg = load float, ptr %i.cu, align 4, !tbaa !18
  %i.kh = load <2 x float>, ptr %i.cw, align 4, !tbaa !18 ; 5 uses
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kj = load float, ptr %i.cx, align 4, !tbaa !18
  %i.kk = shufflevector <3 x float> %i.kb, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kl = shufflevector <2 x float> %i.ke, <2 x float> %i.kh, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.km = fmul <2 x float> %i.kk, %i.kl
  %i.kn = shufflevector <2 x float> %i.kh, <2 x float> %i.kc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ko = fmul <2 x float> %i.kk, %i.kn
  %i.kp = shufflevector <2 x float> %i.ke, <2 x float> %i.kh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kq = shufflevector <3 x float> %i.kb, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kq, <2 x float> %i.km)
  %i.ks = shufflevector <2 x float> %i.kh, <2 x float> %i.kc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.kq, <2 x float> %i.ko)
  %i.ku = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.kv = insertelement <2 x float> %i.ku, float %i.jx, i64 1 ; 3 uses
  %i.kw = shufflevector <3 x float> %i.kb, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kw, <2 x float> %i.kr) ; 2 uses
  %i.ky = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kz = insertelement <2 x float> %i.ky, float %i.jv, i64 1 ; 2 uses
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.kw, <2 x float> %i.kt) ; 2 uses
  %i.lb = load float, ptr %i.da, align 4, !tbaa !18
  %i.lc = load float, ptr %i.cz, align 8, !tbaa !18
  %i.ld = load float, ptr %i.db, align 8, !tbaa !18
  %i.le = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lg = fmul <2 x float> %i.kn, %i.lf
  %i.lh = fmul <2 x float> %i.kl, %i.lf
  %i.li = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.lj, <2 x float> %i.lg)
  %i.ll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.lj, <2 x float> %i.lh)
  %i.lm = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.ln, <2 x float> %i.lk) ; 2 uses
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.ln, <2 x float> %i.ll) ; 2 uses
  %i.lq = fneg <2 x float> %i.lp
  %i.lr = fmul <2 x float> %i.la, %i.lq
  %i.ls = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.lo, <2 x float> %i.lr)
  %i.lt = extractelement <2 x float> %i.lo, i64 1
  %i.lu = fneg float %i.lt
  %i.lv = fneg <2 x float> %i.ls                  ; 3 uses
  %i.lw = extractelement <3 x float> %i.jz, i64 2
  %i.lx = insertelement <2 x float> %i.kx, float %i.jy, i64 1
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.lz = insertelement <4 x float> poison, float %i.lu, i64 0
  %i.ma = insertelement <4 x float> %i.lz, float %i.kd, i64 1
  %i.mb = insertelement <4 x float> %i.ma, float %i.kg, i64 2
  %i.mc = insertelement <4 x float> %i.mb, float %i.kj, i64 3
  %i.md = fmul <4 x float> %i.ly, %i.mc
  %i.me = shufflevector <2 x float> %i.la, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.mf = shufflevector <3 x float> %i.me, <3 x float> %i.jz, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.mg = shufflevector <2 x float> %i.lp, <2 x float> %i.kc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.kf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %i.mi, <4 x float> %i.md) ; 3 uses
  %i.mk = extractelement <4 x float> %i.mj, i64 0
  %i.ml = fneg float %i.mk                        ; 2 uses
  %.sroa.3.12.vec.insert.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ml, i64 0
  %i.mm = extractelement <4 x float> %i.mj, i64 1
  %i.mn = tail call noundef float @llvm.fmuladd.f32(float %i.lw, float %i.jv, float %i.mm)
  %i.mo = load float, ptr %i.dc, align 4, !tbaa !18
  %i.mp = fadd float %i.mn, %i.mo
  %i.mq = shufflevector <3 x float> %i.jz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.mr = shufflevector <4 x float> %i.mj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ms = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.kv, <2 x float> %i.mr)
  %i.mt = load <2 x float>, ptr %i.dd, align 4, !tbaa !18
  %i.mu = fadd <2 x float> %i.ms, %i.mt           ; 2 uses
  %shift = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.mu, %shift
  %i.mv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.mw = extractelement <2 x float> %i.lv, i64 0
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mp, float %i.mw, float %i.mv)
  %i.my = extractelement <2 x float> %i.mu, i64 1
  %i.mz = tail call noundef float @llvm.fmuladd.f32(float %i.my, float %i.ml, float %i.mx)
  %i.na = fneg float %i.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store <2 x float> %i.lv, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i99, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !20
  call void @_ZN27btPolyhedralContactClipping8clipFaceERK20btAlignedObjectArrayI9btVector3ERS2_RKS1_f(ptr noundef nonnull align 8 dereferenceable(25) %.0157165, ptr noundef nonnull align 8 dereferenceable(25) %.0158164, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.na)
  %i.nb = getelementptr inbounds nuw i8, ptr %.0157165, i64 4 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !15
  %i.nd = icmp slt i32 %i.nc, 0
  br i1 %i.nd, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114

bb.m:                                             ; preds = %bb.l
  %i.ne = getelementptr inbounds nuw i8, ptr %.0157165, i64 8 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !19
  %i.ng = icmp slt i32 %i.nf, 0
  br i1 %i.ng, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106: ; preds = %bb.m
  %i.nh = getelementptr inbounds nuw i8, ptr %.0157165, i64 16 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i107 = icmp eq ptr %i.ni, null
  br i1 %.not.i5.i.i107, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106
  %i.nj = getelementptr inbounds nuw i8, ptr %.0157165, i64 24
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !23, !range !24, !noundef !25
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.o, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ni)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i106
  %i.nm = getelementptr inbounds nuw i8, ptr %.0157165, i64 24
  store i8 1, ptr %i.nm, align 8, !tbaa !23
  store ptr null, ptr %i.nh, align 8, !tbaa !16
  store i32 0, ptr %i.ne, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit114: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i108, %bb.l
  store i32 0, ptr %i.nb, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %exitcond179.not = icmp eq i64 %indvars.iv175, %i.df
  br i1 %exitcond179.not, label %._crit_edge169.loopexit.peel.begin, label %bb.l, !llvm.loop !49

bb.p:                                             ; preds = %.lr.ph173, %bb.r
  %i.nn = phi i32 [ %i.jh, %.lr.ph173 ], [ %i.ny, %bb.r ]
  %indvars.iv180 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next181, %bb.r ] ; 2 uses
  %i.no = load ptr, ptr %i.jj, align 8, !tbaa !16
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %indvars.iv180 ; 4 uses
  %.sroa.0.0.copyload = load float, ptr %i.np, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %i.nq = fmul float %i.im, %.sroa.4.0.copyload
  %i.nr = call float @llvm.fmuladd.f32(float %i.id, float %.sroa.0.0.copyload, float %i.nq)
  %i.ns = call noundef float @llvm.fmuladd.f32(float %i.iv, float %.sroa.5.0.copyload, float %i.nr)
  %i.nt = fadd float %i.jf, %i.ns                 ; 2 uses
  %.inv = fcmp ole float %i.nt, %5
  %.0 = select i1 %.inv, float %5, float %i.nt    ; 2 uses
  %i.nu = fcmp ugt float %.0, %6
  br i1 %i.nu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.np, i64 16, i1 false), !tbaa.struct !21
  %i.nv = load ptr, ptr %7, align 8, !tbaa !36
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %.pre184 = load i32, ptr %i.jg, align 4, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ny = phi i32 [ %.pre184, %bb.q ], [ %i.nn, %bb.p ] ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.nz = sext i32 %i.ny to i64
  %i.oa = icmp slt i64 %indvars.iv.next181, %i.nz
  br i1 %i.oa, label %bb.p, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.r, %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit, %._crit_edge169, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btPolyhedralContactClipping19clipHullAgainstHullERK9btVector3RK18btConvexPolyhedronS5_RK11btTransformS8_ffR20btAlignedObjectArrayIS0_ESB_RN36btDiscreteCollisionDetectorInterface6ResultE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(172) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, float noundef %5, float noundef %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %0, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !20 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.a = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.a)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.c = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.b)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.c)
  %i.d = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 3 uses
  %i.e = fmul float %.sroa.0.0.vec.extract.i, %i.d ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.f = fmul float %.sroa.0.4.vec.extract.i, %i.d ; 2 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.f, i64 1
  %i.g = fmul float %.sroa.8.8.vec.extract.i, %i.d ; 2 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> %.sroa.8.0.copyload.i, float %i.g, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = load float, ptr %4, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !19
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !23, !range !24, !noundef !25
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.al)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.d, %bb.c, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.ap, align 8, !tbaa !23
  store ptr null, ptr %i.ak, align 8, !tbaa !16
  store i32 0, ptr %i.ah, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.b, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge
  store i32 0, ptr %i.ae, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = sext i32 %.0.lcssa to i64
  %i.at = getelementptr inbounds [48 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %wide.trip.count66 = zext nneg i32 %i.av to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.058 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %.03756 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.138, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bo = load float, ptr %i.bl, align 4, !tbaa !18 ; 3 uses
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !18 ; 3 uses
  %i.bq = load float, ptr %i.bn, align 4, !tbaa !18 ; 3 uses
  %i.br = fmul float %i.bp, %i.p
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.n, float %i.bo, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.bq, float %i.bs)
  %i.bu = fmul float %i.bp, %i.v
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.t, float %i.bo, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.bq, float %i.bv)
  %i.bx = fmul float %i.bp, %i.ab
  %i.by = tail call float @llvm.fmuladd.f32(float %i.z, float %i.bo, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.bq, float %i.by)
  %i.ca = fmul float %i.bw, %i.f
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.e, float %i.ca)
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.g, float %i.cb) ; 2 uses
  %i.cd = fcmp ogt float %i.cc, %.03756           ; 2 uses
  %.138 = select i1 %i.cd, float %i.cc, float %.03756
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.cd, i32 %i.ce, i32 %.058     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !52

._crit_edge61:                                    ; preds = %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.cf = icmp sgt i32 %.0.lcssa, -1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.f:                                             ; preds = %.lr.ph60, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit
  %i.cg = phi i32 [ 0, %.lr.ph60 ], [ %i.ev, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit ] ; 7 uses
  %indvars.iv63 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next64, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit ] ; 2 uses
  %i.ch = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv63
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32
  %i.ck = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.ck, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load float, ptr %i.bb, align 4, !tbaa !18
  %i.cq = load float, ptr %i.bc, align 4, !tbaa !18
  %i.cr = load float, ptr %i.ba, align 4, !tbaa !18
  %i.cs = load float, ptr %i.bd, align 4, !tbaa !18
  %i.ct = load float, ptr %i.be, align 4, !tbaa !18
  %i.cu = load <2 x float>, ptr %4, align 4, !tbaa !18 ; 2 uses
  %i.cv = load float, ptr %i.cn, align 4, !tbaa !18 ; 2 uses
  %i.cw = load float, ptr %i.cm, align 4, !tbaa !18 ; 2 uses
  %i.cx = load float, ptr %i.co, align 4, !tbaa !18 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.az, align 4, !tbaa !18 ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = shufflevector <2 x float> %i.cu, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.dc = fmul <2 x float> %i.da, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %i.cu, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dc)
  %i.dh = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.cq, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dk, <2 x float> %i.dg)
  %i.dm = fmul float %i.cv, %i.cs
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cr, float %i.dm)
  %i.do = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.ct, float %i.dn)
  %i.dp = load <2 x float>, ptr %i.bf, align 4, !tbaa !18
  %i.dq = fadd <2 x float> %i.dl, %i.dp
  %i.dr = load float, ptr %i.bg, align 4, !tbaa !18
  %i.ds = fadd float %i.do, %i.dr
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  %i.dt = load i32, ptr %i.bh, align 8, !tbaa !19
  %i.du = icmp eq i32 %i.cg, %i.dt
  br i1 %i.du, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.cg, 0
  %i.dv = shl nsw i32 %i.cg, 1
  %i.dw = select i1 %.not.i.i, i32 1, i32 %i.dv   ; 4 uses
  %i.dx = icmp slt i32 %i.cg, %i.dw
  br i1 %i.dx, label %bb.h, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dy = sext i32 %i.dw to i64
  %i.dz = shl nsw i64 %i.dy, 4
  %i.ea = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dz, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !15
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.i, %bb.h
  %i.eb = phi i32 [ %.pre.i, %bb.i ], [ %i.cg, %bb.h ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ea, %bb.i ], [ null, %bb.h ] ; 4 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i.i.i47, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44

.lr.ph.i.i.i47:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i48 = zext nneg i32 %i.eb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i48, 1
  %i.ed = icmp eq i32 %i.eb, 1
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph.i.i.i47.new

.lr.ph.i.i.i47.new:                               ; preds = %.lr.ph.i.i.i47
  %unroll_iter = and i64 %wide.trip.count.i.i.i48, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i47.new
  %indvars.iv.i.i.i49 = phi i64 [ 0, %.lr.ph.i.i.i47.new ], [ %indvars.iv.next.i.i.i50.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i47.new ], [ %niter.next.1, %bb.j ]
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i49
  %i.ef = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.i.i49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %i.eg, i64 16, i1 false), !tbaa.struct !21
  %indvars.iv.next.i.i.i50 = or disjoint i64 %indvars.iv.i.i.i49, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i50
  %i.ei = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !21
  %indvars.iv.next.i.i.i50.1 = add nuw nsw i64 %indvars.iv.i.i.i49, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44.loopexit.unr-lcssa, label %bb.j, !llvm.loop !0

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44.loopexit.unr-lcssa, %.lr.ph.i.i.i47
  %indvars.iv.i.i.i49.epil.init = phi i64 [ 0, %.lr.ph.i.i.i47 ], [ %indvars.iv.next.i.i.i50.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod76 = trunc i32 %i.eb to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i49.epil.init
  %i.el = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv.i.i.i49.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !21
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.en = load ptr, ptr %i.bi, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i45 = icmp eq ptr %i.en, null
  br i1 %.not.i5.i.i45, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i46, label %bb.k

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44
  %i.eo = load i8, ptr %i.bj, align 8, !tbaa !23, !range !24, !noundef !25
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i46

bb.l:                                             ; preds = %bb.k
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.en)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i46

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i46: ; preds = %bb.l, %bb.k, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i44
  store i8 1, ptr %i.bj, align 8, !tbaa !23
  store ptr %.0.i.i.i, ptr %i.bi, align 8, !tbaa !16
  store i32 %i.dw, ptr %i.bh, align 8, !tbaa !19
  %.pre2.i = load i32, ptr %i.ae, align 4, !tbaa !15
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit: ; preds = %bb.f, %bb.g, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i46
  %i.eq = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i46 ], [ %i.cg, %bb.g ], [ %i.cg, %bb.f ]
  %i.er = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [16 x i8], ptr %i.er, i64 %i.es ; 2 uses
  store <2 x float> %i.dq, ptr %i.et, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ev = add nsw i32 %i.eu, 1                    ; 2 uses
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !15
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge61, label %bb.f, !llvm.loop !53

bb.m:                                             ; preds = %._crit_edge61
  call void @_ZN27btPolyhedralContactClipping19clipFaceAgainstHullERK9btVector3RK18btConvexPolyhedronRK11btTransformR20btAlignedObjectArrayIS0_ESB_ffRN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(172) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %8, float noundef %5, float noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  ret void
}

declare void @_ZNK18btConvexPolyhedron7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(172), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !22}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS9btVector3", !11, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !10, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !13, i64 24}
!15 = !{!14, !7, i64 4}
!16 = !{!14, !12, i64 16}
!17 = !{!"float", !6, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!14, !7, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{i64 0, i64 16, !20}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!14, !13, i64 24}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"_ZTS18btAlignedAllocatorI6btFaceLj16EE"}
!27 = !{!"p1 _ZTS6btFace", !11, i64 0}
!28 = !{!"_ZTS20btAlignedObjectArrayI6btFaceE", !26, i64 0, !7, i64 4, !7, i64 8, !27, i64 16, !13, i64 24}
!29 = !{!"_ZTS9btVector3", !6, i64 0}
!30 = !{!"_ZTS18btConvexPolyhedron", !14, i64 8, !28, i64 40, !14, i64 72, !29, i64 104, !29, i64 120, !17, i64 136, !29, i64 140, !29, i64 156}
!31 = !{!30, !17, i64 136}
!32 = !{!7, !7, i64 0}
!33 = !{!28, !7, i64 4}
!34 = !{!28, !27, i64 16}
!35 = !{!"vtable pointer", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!38 = !{!"p1 int", !11, i64 0}
!39 = !{!"_ZTS20btAlignedObjectArrayIiE", !37, i64 0, !7, i64 4, !7, i64 8, !38, i64 16, !13, i64 24}
!40 = !{!39, !7, i64 4}
!41 = !{!39, !38, i64 16}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = !{!13, !13, i64 0}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22, !51}
!50 = distinct !{!50, !22}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
end_hunk_1
