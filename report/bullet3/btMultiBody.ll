Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11btMultiBody14setupSphericalEifRK9btVector3iRK12btQuaternionS2_S2_b:bb.a
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !9 ; 2 uses
  %i.ae = fmul float %i.ad, -0.000000e+00
  %i.af = load float, ptr %7, align 4, !tbaa !9   ; 2 uses
  %i.ag = fneg float %i.ab
  %i.ah = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.af, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ag, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> zeroinitializer, <2 x float> %i.ak)
  %i.am = fmul float %i.af, 0.000000e+00
  %i.an = fsub float %i.ad, %i.am
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  %i.ao = getelementptr i8, ptr %i.t, i64 152
  store <2 x float> %i.al, ptr %i.ao, align 8
  %.sroa.450.0..sroa_idx = getelementptr i8, ptr %i.t, i64 160
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !11
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.aq = getelementptr inbounds [688 x i8], ptr %i.ap, i64 %i.f ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 172
  %i.at = load float, ptr %7, align 4, !tbaa !9   ; 2 uses
  %i.au = load float, ptr %i.ar, align 4, !tbaa !9 ; 2 uses
  %i.av = load <2 x float>, ptr %i.as, align 4, !tbaa !9 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.ac, align 4, !tbaa !9 ; 3 uses
  %i.ax = fneg <2 x float> %i.aw
  %i.ay = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.az = insertelement <2 x float> %i.ay, float %i.au, i64 1
  %i.ba = fmul <2 x float> %i.az, %i.ax
  %i.bb = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x float> %i.bb, float %i.at, i64 1
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = fneg float %i.at
  %i.bf = extractelement <2 x float> %i.av, i64 0
  %i.bg = fmul float %i.bf, %i.be
  %i.bh = extractelement <2 x float> %i.aw, i64 0
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.au, float %i.bh, float %i.bg)
  %.sroa.3.12.vec.insert.i39 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.bj = getelementptr i8, ptr %i.aq, i64 184
  store <2 x float> %i.bd, ptr %i.bj, align 8
  %.sroa.448.0..sroa_idx = getelementptr i8, ptr %i.aq, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i39, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !11
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.bl = getelementptr inbounds [688 x i8], ptr %i.bk, i64 %i.f ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 204
  %i.bo = load float, ptr %7, align 4, !tbaa !9   ; 2 uses
  %i.bp = load float, ptr %i.bm, align 4, !tbaa !9 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bn, align 4, !tbaa !9 ; 3 uses
  %i.br = load <2 x float>, ptr %i.ac, align 4, !tbaa !9 ; 3 uses
  %i.bs = fneg <2 x float> %i.br
  %i.bt = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x float> %i.bt, float %i.bp, i64 1
  %i.bv = fmul <2 x float> %i.bu, %i.bs
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bx = insertelement <2 x float> %i.bw, float %i.bo, i64 1
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bx, <2 x float> %i.bv)
  %i.bz = fneg float %i.bo
  %i.ca = extractelement <2 x float> %i.bq, i64 0
  %i.cb = fmul float %i.ca, %i.bz
  %i.cc = extractelement <2 x float> %i.br, i64 0
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.cc, float %i.cb)
  %.sroa.3.12.vec.insert.i44 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  %i.ce = getelementptr i8, ptr %i.bl, i64 216
  store <2 x float> %i.by, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.bl, i64 224
  store <2 x float> %.sroa.3.12.vec.insert.i44, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.cg = getelementptr inbounds [688 x i8], ptr %i.cf, i64 %i.f ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 464
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ch, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 528
  store float 0.000000e+00, ptr %i.ci, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 520
  store <2 x float> zeroinitializer, ptr %i.cj, align 8, !tbaa !9
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 552 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !88
  %i.cm = or i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.cg, ptr noundef null)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !39 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !38  ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.co to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cr = icmp ult i32 %i.co, 4
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %i.cs = phi <2 x i32> [ zeroinitializer, %.lr.ph.i.new ], [ %i.dm, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.ct = getelementptr inbounds nuw [688 x i8], ptr %i.cq, i64 %indvars.iv.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 328
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 556
  store <2 x i32> %i.cs, ptr %i.cu, align 8, !tbaa !89
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !89
  %i.cx = add nsw <2 x i32> %i.cw, %i.cs          ; 2 uses
  %i.cy = getelementptr inbounds nuw [688 x i8], ptr %i.cq, i64 %indvars.iv.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1016
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1244
  store <2 x i32> %i.cx, ptr %i.cz, align 8, !tbaa !89
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !89
  %i.dc = add nsw <2 x i32> %i.db, %i.cx          ; 2 uses
  %i.dd = getelementptr inbounds nuw [688 x i8], ptr %i.cq, i64 %indvars.iv.i ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1704
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 1932
  store <2 x i32> %i.dc, ptr %i.de, align 8, !tbaa !89
  %i.dg = load <2 x i32>, ptr %i.df, align 4, !tbaa !89
  %i.dh = add nsw <2 x i32> %i.dg, %i.dc          ; 2 uses
  %i.di = getelementptr inbounds nuw [688 x i8], ptr %i.cq, i64 %indvars.iv.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2392
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 2620
  store <2 x i32> %i.dh, ptr %i.dj, align 8, !tbaa !89
  %i.dl = load <2 x i32>, ptr %i.dk, align 4, !tbaa !89
  %i.dm = add nsw <2 x i32> %i.dl, %i.dh          ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !90

_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.dm, %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %i.dn = phi <2 x i32> [ %.epil.init, %.epil.preheader ], [ %i.ds, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.do = getelementptr inbounds nuw [688 x i8], ptr %i.cq, i64 %indvars.iv.i.epil ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 328
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 556
  store <2 x i32> %i.dn, ptr %i.dp, align 8, !tbaa !89
  %i.dr = load <2 x i32>, ptr %i.dq, align 4, !tbaa !89
  %i.ds = add nsw <2 x i32> %i.dr, %i.dn
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit, label %bb.e, !llvm.loop !94

_ZN11btMultiBody21updateLinksDofOffsetsEv.exit:   ; preds = %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody11setupPlanarEifRK9btVector3iRK12btQuaternionS2_S2_b(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) %0, i32 noundef %1, float noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, i1 noundef zeroext %8) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !89
  %i.c = add nsw <2 x i32> %i.b, splat (i32 3)
  store <2 x i32> %i.c, ptr %i.a, align 4, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = sext i32 %1 to i64                       ; 7 uses
  %i.g = getelementptr inbounds [688 x i8], ptr %i.e, i64 %i.f ; 2 uses
  store float %2, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !36
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.j = getelementptr inbounds [688 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %4, ptr %i.k, align 4, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.n = getelementptr inbounds [688 x i8], ptr %i.m, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.q = getelementptr inbounds [688 x i8], ptr %i.p, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !36
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %6, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11 ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.t = getelementptr inbounds [688 x i8], ptr %i.s, i64 %i.f ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 564
  store i32 3, ptr %i.u, align 4, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 556
  store i32 3, ptr %i.v, align 4, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  store i32 3, ptr %i.w, align 8, !tbaa !87
  %.sroa.0.0.copyload3.i38 = load <2 x float>, ptr %6, align 4 ; 4 uses
  %.sroa.8.0.copyload.i40 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11 ; 2 uses
  %i.x = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> %.sroa.0.0.copyload3.i38, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fmul <2 x float> %i.x, %i.x
  %i.z = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> %.sroa.0.0.copyload3.i38, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.y)
  %9 = shufflevector <2 x float> %.sroa.8.0.copyload.i, <2 x float> %.sroa.8.0.copyload.i40, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %9, <2 x float> %i.aa)
  %i.ac = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ab)
  %i.ad = fdiv <2 x float> splat (float 1.000000e+00), %i.ac ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fmul <2 x float> %shift, %i.ad
  %i.af = extractelement <2 x float> %foldExtExtBinop114, i64 0
  %foldExtExtBinop116 = fmul <2 x float> %.sroa.8.0.copyload.i, %i.ad
  %10 = extractelement <2 x float> %foldExtExtBinop116, i64 0
  %i.ag = fmul float %i.af, 0.000000e+00
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %10, float 0.000000e+00, float %i.ah)
  %i.aj = fpext float %i.ai to double
  %i.ak = fcmp ogt double %i.aj, f0x3FEFF7CED916872B
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 140
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 148
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.aq = getelementptr i8, ptr %i.t, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ao, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.ar = getelementptr i8, ptr %i.t, i64 188
  %i.as = getelementptr i8, ptr %i.t, i64 192
  %i.at = getelementptr i8, ptr %i.t, i64 196
  store float 0.000000e+00, ptr %i.at, align 4, !tbaa !9
  %i.au = getelementptr i8, ptr %i.t, i64 216
  %i.av = insertelement <2 x i1> poison, i1 %i.ak, i64 0
  %i.aw = shufflevector <2 x i1> %i.av, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %11 = shufflevector <2 x float> %.sroa.8.0.copyload.i40, <2 x float> %.sroa.0.0.copyload3.i38, <2 x i32> <i32 0, i32 2>
  %i.ay = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.az = fmul <2 x float> %11, %i.ay             ; 5 uses
  %i.ba = fmul <2 x float> %.sroa.0.0.copyload3.i38, %i.ay ; 3 uses
  %i.bb = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  store float %i.bb, ptr %i.al, align 8, !tbaa !9
  %i.bc = extractelement <2 x float> %i.ba, i64 1 ; 3 uses
  store float %i.bc, ptr %i.am, align 4, !tbaa !9
  %i.bd = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  store float %i.bd, ptr %i.an, align 8, !tbaa !9
  %i.be = extractelement <2 x float> %i.ax, i64 1
  %i.bf = fneg float %i.be
  %i.bg = fneg <2 x float> %i.ax
  %i.bh = shufflevector <2 x float> <float -0.000000e+00, float poison>, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bi = fmul <2 x float> %i.ba, %i.bh
  %i.bj = fmul float %i.bd, %i.bf
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ax, <2 x float> %i.bi) ; 4 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.bj) ; 3 uses
  store float %i.bl, ptr %i.aq, align 8, !tbaa !9
  %i.bm = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  store float %i.bm, ptr %i.ar, align 4, !tbaa !9
  %i.bn = extractelement <2 x float> %i.bk, i64 1
  store float %i.bn, ptr %i.as, align 8, !tbaa !9
  %i.bo = shufflevector <2 x float> %i.ba, <2 x float> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bp = fneg <2 x float> %i.bo
  %i.bq = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bs = fmul <2 x float> %i.br, %i.bp
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.az, <2 x float> %i.bs)
  %i.bu = fneg float %i.bb
  %i.bv = fmul float %i.bm, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bc, float %i.bv)
  store <2 x float> %i.bt, ptr %i.au, align 8, !tbaa !9
  %i.bx = getelementptr i8, ptr %i.t, i64 224
  store float %i.bw, ptr %i.bx, align 8, !tbaa !9
  %i.by = getelementptr i8, ptr %i.t, i64 228
  store float 0.000000e+00, ptr %i.by, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  store float 0.000000e+00, ptr %i.bz, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  store <2 x float> zeroinitializer, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 528
  store float 0.000000e+00, ptr %i.cb, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  store <2 x float> zeroinitializer, ptr %i.cc, align 8, !tbaa !9
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 552 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !88
  %i.cf = or i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.t, ptr noundef null)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !39 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !38  ; 6 uses
  br i1 %i.ci, label %.lr.ph.i, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.ch to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cj = icmp ult i32 %i.ch, 4
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %i.ck = phi <2 x i32> [ zeroinitializer, %.lr.ph.i.new ], [ %i.de, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.cl = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 328
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 556
  store <2 x i32> %i.ck, ptr %i.cm, align 8, !tbaa !89
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !89
  %i.cp = add nsw <2 x i32> %i.co, %i.ck          ; 2 uses
  %i.cq = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1016
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1244
  store <2 x i32> %i.cp, ptr %i.cr, align 8, !tbaa !89
  %i.ct = load <2 x i32>, ptr %i.cs, align 4, !tbaa !89
  %i.cu = add nsw <2 x i32> %i.ct, %i.cp          ; 2 uses
  %i.cv = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1932
  store <2 x i32> %i.cu, ptr %i.cw, align 8, !tbaa !89
  %i.cy = load <2 x i32>, ptr %i.cx, align 4, !tbaa !89
  %i.cz = add nsw <2 x i32> %i.cy, %i.cu          ; 2 uses
  %i.da = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2392
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 2620
  store <2 x i32> %i.cz, ptr %i.db, align 8, !tbaa !89
  %i.dd = load <2 x i32>, ptr %i.dc, align 4, !tbaa !89
  %i.de = add nsw <2 x i32> %i.dd, %i.cz          ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !90

_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i32> [ zeroinitializer, %.lr.ph.i ], [ %i.de, %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %i.df = phi <2 x i32> [ %.epil.init, %.epil.preheader ], [ %i.dk, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.dg = getelementptr inbounds nuw [688 x i8], ptr %.pre, i64 %indvars.iv.i.epil ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 328
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 556
  store <2 x i32> %i.df, ptr %i.dh, align 8, !tbaa !89
  %i.dj = load <2 x i32>, ptr %i.di, align 4, !tbaa !89
  %i.dk = add nsw <2 x i32> %i.dj, %i.df
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit, label %bb.e, !llvm.loop !95

_ZN11btMultiBody21updateLinksDofOffsetsEv.exit:   ; preds = %_ZN11btMultiBody21updateLinksDofOffsetsEv.exit.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.dl = getelementptr inbounds [688 x i8], ptr %.pre, i64 %i.f ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 184    ; 2 uses
  %.sroa.0.0.copyload3.i59 = load <2 x float>, ptr %i.dm, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx.i60 = getelementptr i8, ptr %i.dl, i64 192 ; 2 uses
  %.sroa.8.0.copyload.i61 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i60, align 4, !tbaa !11 ; 2 uses
  %.sroa.0.0.vec.extract.i62 = extractelement <2 x float> %.sroa.0.0.copyload3.i59, i64 0 ; 2 uses
  %foldExtExtBinop118.a = fmul <2 x float> %.sroa.0.0.copyload3.i59, %.sroa.0.0.copyload3.i59
  %i.dn = extractelement <2 x float> %foldExtExtBinop118.a, i64 1
  %i.do = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i62, float %.sroa.0.0.vec.extract.i62, float %i.dn)
  %.sroa.8.8.vec.extract.i64 = extractelement <2 x float> %.sroa.8.0.copyload.i61, i64 0 ; 3 uses
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i64, float %.sroa.8.8.vec.extract.i64, float %i.do)
  %sqrt.i.i.i65 = tail call noundef float @llvm.sqrt.f32(float %i.dp)
  %i.dq = fdiv float 1.000000e+00, %sqrt.i.i.i65  ; 2 uses
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %.sroa.0.0.copyload3.i59, %i.ds
  %i.du = fmul float %.sroa.8.8.vec.extract.i64, %i.dq
  %.sroa.8.8.vec.insert.i68 = insertelement <2 x float> %.sroa.8.0.copyload.i61, float %i.du, i64 0
  store <2 x float> %i.dt, ptr %i.dm, align 8
  store <2 x float> %.sroa.8.8.vec.insert.i68, ptr %.sroa.8.0..sroa_idx.i60, align 8, !tbaa !11
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.dw = getelementptr inbounds [688 x i8], ptr %i.dv, i64 %i.f ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 216    ; 2 uses
  %.sroa.0.0.copyload3.i71 = load <2 x float>, ptr %i.dx, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx.i72 = getelementptr i8, ptr %i.dw, i64 224 ; 2 uses
  %.sroa.8.0.copyload.i73 = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i72, align 4, !tbaa !11 ; 2 uses
  %.sroa.0.0.vec.extract.i74 = extractelement <2 x float> %.sroa.0.0.copyload3.i71, i64 0 ; 2 uses
  %foldExtExtBinop120 = fmul <2 x float> %.sroa.0.0.copyload3.i71, %.sroa.0.0.copyload3.i71
  %i.dy = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.dz = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i74, float %.sroa.0.0.vec.extract.i74, float %i.dy)
  %.sroa.8.8.vec.extract.i76 = extractelement <2 x float> %.sroa.8.0.copyload.i73, i64 0 ; 3 uses
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i76, float %.sroa.8.8.vec.extract.i76, float %i.dz)
  %sqrt.i.i.i77 = tail call noundef float @llvm.sqrt.f32(float %i.ea)
  %i.eb = fdiv float 1.000000e+00, %sqrt.i.i.i77  ; 2 uses
  %i.ec = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %.sroa.0.0.copyload3.i71, %i.ed
  %i.ef = fmul float %.sroa.8.8.vec.extract.i76, %i.eb
  %.sroa.8.8.vec.insert.i80 = insertelement <2 x float> %.sroa.8.0.copyload.i73, float %i.ef, i64 0
  store <2 x float> %i.ee, ptr %i.dx, align 8
  store <2 x float> %.sroa.8.8.vec.insert.i80, ptr %.sroa.8.0..sroa_idx.i72, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody16finalizeMultiDofEv(ptr nofree noundef nonnull align 8 dereferenceable(640) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  br i1 %i.f, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %bb.b
  %.not.i5.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !67
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %.not.i5.i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
end_hunk_0
