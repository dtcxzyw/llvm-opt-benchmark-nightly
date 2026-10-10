Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3ConvexUtility?download=true
inline.NumInlined: 499
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN15b3ConvexUtility28initializePolyhedralFeaturesEPK9b3Vector3ib:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i252
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i251, %middle.block
  %indvars.iv.i.i.i253.ph = phi i64 [ 0, %.lr.ph.i.i.i251 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter1023 = and i64 %wide.trip.count.i.i.i252, 3 ; 2 uses
  %lcmp.mod1024.not = icmp eq i64 %xtraiter1023, 0
  br i1 %lcmp.mod1024.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i253.prol = phi i64 [ %indvars.iv.next.i.i.i254.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i253.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter1025 = phi i64 [ %prol.iter1025.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i.i.i253.prol
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i.i.i253.prol
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !47
  %indvars.iv.next.i.i.i254.prol = add nuw nsw i64 %indvars.iv.i.i.i253.prol, 1 ; 2 uses
  %prol.iter1025.next = add i64 %prol.iter1025, 1 ; 2 uses
  %prol.iter1025.cmp.not = icmp eq i64 %prol.iter1025.next, %xtraiter1023
  br i1 %prol.iter1025.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !91

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i253.unr = phi i64 [ %indvars.iv.i.i.i253.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i254.prol, %scalar.ph.prol ]
  %i.gb = sub nsw i64 %indvars.iv.i.i.i253.ph, %wide.trip.count.i.i.i252
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i253 = phi i64 [ %indvars.iv.next.i.i.i254.3, %scalar.ph ], [ %indvars.iv.i.i.i253.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i.i.i253
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i.i.i253
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !47
  %indvars.iv.next.i.i.i254 = add nuw nsw i64 %indvars.iv.i.i.i253, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i254
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next.i.i.i254
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !47
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !47
  %indvars.iv.next.i.i.i254.1 = add nuw nsw i64 %indvars.iv.i.i.i253, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i254.1
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next.i.i.i254.1
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !47
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !47
  %indvars.iv.next.i.i.i254.2 = add nuw nsw i64 %indvars.iv.i.i.i253, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i254.2
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.next.i.i.i254.2
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !47
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !47
  %indvars.iv.next.i.i.i254.3 = add nuw nsw i64 %indvars.iv.i.i.i253, 4 ; 2 uses
  %exitcond.not.i.i.i255.3 = icmp eq i64 %indvars.iv.next.i.i.i254.3, %wide.trip.count.i.i.i252
  br i1 %exitcond.not.i.i.i255.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph, !llvm.loop !92

.split7.i.i256:                                   ; preds = %.noexc257, %bb.x
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
          to label %.noexc258 unwind label %bb.ab

.noexc258:                                        ; preds = %.split7.i.i256
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
          to label %.noexc259 unwind label %bb.ab

.noexc259:                                        ; preds = %.noexc258
  store i32 0, ptr %i.fa, align 4, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc259, %.split.i.i247
  %.0.i12.i.i248 = phi ptr [ null, %.noexc259 ], [ %i.fk, %.split.i.i247 ], [ %i.fk, %middle.block ], [ %i.fk, %scalar.ph ], [ %i.fk, %scalar.ph.prol.loopexit ]
  %.0.i.i249 = phi i32 [ 0, %.noexc259 ], [ %i.fg, %.split.i.i247 ], [ %i.fg, %middle.block ], [ %i.fg, %scalar.ph ], [ %i.fg, %scalar.ph.prol.loopexit ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !29 ; 2 uses
  %.not.i10.i.i250 = icmp eq ptr %i.gq, null
  br i1 %.not.i10.i.i250, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !40, !range !20, !noundef !32
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.z, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.gq)
          to label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i unwind label %bb.ab

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.z, %bb.y, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store i8 1, ptr %i.gu, align 8, !tbaa !40
  store ptr %.0.i12.i.i248, ptr %i.gp, align 8, !tbaa !29
  store i32 %.0.i.i249, ptr %i.fc, align 8, !tbaa !42
  %.pre.i = load i32, ptr %i.fa, align 4, !tbaa !41
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.w, %.backedge
  %i.gv = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.fb, %bb.w ], [ %i.fb, %.backedge ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !29
  %i.gy = sext i32 %i.gv to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gy
  store i32 %i.ex, ptr %i.gz, align 4, !tbaa !47
  %i.ha = load i32, ptr %i.fa, align 4, !tbaa !41
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.fa, align 4, !tbaa !41
  %i.hc = icmp slt i32 %.0140, 2
  br i1 %i.hc, label %bb.ac, label %.thread

bb.ab:                                            ; preds = %bb.z, %.noexc258, %.split7.i.i256, %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.dj

bb.ac:                                            ; preds = %bb.aa
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0142, i64 8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !139
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.he, i64 %i.hh ; 2 uses
  %.sroa.6505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.sroa.6505.0.copyload = load float, ptr %.sroa.6505.0..sroa_idx, align 8
  %i.hj = sext i32 %i.ex to i64
  %i.hk = getelementptr inbounds [16 x i8], ptr %i.he, i64 %i.hj ; 2 uses
  %.sroa.6508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.6508.0.copyload = load float, ptr %.sroa.6508.0..sroa_idx, align 8
  %i.hl = fsub float %.sroa.6505.0.copyload, %.sroa.6508.0.copyload ; 3 uses
  %i.hm = load <2 x float>, ptr %i.hi, align 16
  %i.hn = load <2 x float>, ptr %i.hk, align 16
  %i.ho = fsub <2 x float> %i.hm, %i.hn           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ho, %i.ho
  %i.hp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.hq = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %i.hr = call float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.hp)
  %i.hs = call noundef float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.hr)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.hs)
  %i.ht = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.hu = fmul float %i.hl, %i.ht
  %.sroa.9.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hu, i64 0
  %i.hv = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.ho, %i.hw
  %i.hy = add nuw nsw i32 %.0140, 1               ; 2 uses
  %i.hz = zext nneg i32 %.0140 to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.hz ; 2 uses
  store <2 x float> %i.hx, ptr %i.ia, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store <2 x float> %.sroa.9.8.vec.insert, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !45
  %i.ib = load i32, ptr %i.es, align 4, !tbaa !138
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [12 x i8], ptr %.0142, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !140
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [12 x i8], ptr %i.id, i64 %i.if ; 2 uses
  %.not199 = icmp eq ptr %i.ig, %i.er
  br i1 %.not199, label %bb.ad, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ac, %.thread
  %.0142.be = phi ptr [ %i.ig, %bb.ac ], [ %i.im, %.thread ]
  %.0140.be = phi i32 [ %i.hy, %bb.ac ], [ 2, %.thread ]
  br label %.backedge, !llvm.loop !93

.thread:                                          ; preds = %bb.aa
  %i.ih = load i32, ptr %i.es, align 4, !tbaa !138
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [12 x i8], ptr %.0142, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !140
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [12 x i8], ptr %i.ij, i64 %i.il ; 2 uses
  %.not199515 = icmp eq ptr %i.im, %i.er
  br i1 %.not199515, label %.thread517, label %.backedge.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.in = icmp eq i32 %i.hy, 2
  br i1 %i.in, label %.thread517, label %bb.ae

.thread517:                                       ; preds = %.thread, %bb.ad
  %i.io = load float, ptr %i.dv, align 16, !tbaa !45 ; 2 uses
  %i.ip = load float, ptr %8, align 16, !tbaa !45 ; 2 uses
  %i.iq = load <2 x float>, ptr %i.dw, align 4, !tbaa !45 ; 3 uses
  %i.ir = load <2 x float>, ptr %i.dx, align 4, !tbaa !45 ; 3 uses
  %i.is = fneg <2 x float> %i.ir
  %i.it = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iu = insertelement <2 x float> %i.it, float %i.ip, i64 1
  %i.iv = fmul <2 x float> %i.iu, %i.is
  %i.iw = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ix = insertelement <2 x float> %i.iw, float %i.io, i64 1
  %i.iy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.ix, <2 x float> %i.iv)
  %i.iz = fneg float %i.io
  %i.ja = extractelement <2 x float> %i.iq, i64 0
  %i.jb = fmul float %i.ja, %i.iz
  %i.jc = extractelement <2 x float> %i.ir, i64 0
  %i.jd = call float @llvm.fmuladd.f32(float %i.ip, float %i.jc, float %i.jb)
  %.sroa.3.12.vec.insert.i.i263 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv635 ; 2 uses
  store <2 x float> %i.iy, ptr %i.je, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i263, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !45
  %i.jf = load ptr, ptr %i.o, align 8, !tbaa !19  ; 3 uses
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %indvars.iv635 ; 4 uses
  %16 = load float, ptr %i.jg, align 16, !tbaa !45 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load <2 x float>, ptr %i.jh, align 4, !tbaa !45 ; 4 uses
  %foldExtExtBinop992 = fmul <2 x float> %i.ji, %i.ji
  %i.jj = extractelement <2 x float> %foldExtExtBinop992, i64 0
  %18 = call float @llvm.fmuladd.f32(float %16, float %16, float %i.jj)
  %19 = extractelement <2 x float> %i.ji, i64 1   ; 2 uses
  %i.jk = call noundef float @llvm.fmuladd.f32(float %19, float %19, float %18)
  %sqrt.i.i266 = call noundef float @llvm.sqrt.f32(float %i.jk)
  %i.jl = fdiv float 1.000000e+00, %sqrt.i.i266   ; 2 uses
  %20 = fmul float %16, %i.jl                     ; 2 uses
  store float %20, ptr %i.jg, align 16, !tbaa !45
  %21 = insertelement <2 x float> poison, float %i.jl, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %i.ji, %22
  store <2 x float> %23, ptr %i.jh, align 4, !tbaa !45
  %i.jm = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %i.jn = getelementptr inbounds nuw [48 x i8], ptr %i.jm, i64 %indvars.iv635 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  store float %20, ptr %i.jo, align 8, !tbaa !51
  %i.jp = load float, ptr %i.jh, align 4, !tbaa !51
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 36
  store float %i.jp, ptr %i.jq, align 4, !tbaa !51
  %i.jr = load float, ptr %17, align 8, !tbaa !51
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jt = insertelement <2 x float> <float poison, float 1.000000e+30>, float %i.jr, i64 0
  store <2 x float> %i.jt, ptr %i.js, align 8, !tbaa !51
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %indvars.iv635
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread517
  %i.jv = phi ptr [ %i.ek, %bb.ae ], [ %i.jf, %.thread517 ] ; 3 uses
  %i.jw = phi ptr [ %.pre, %bb.ae ], [ %i.jm, %.thread517 ]
  %i.jx = phi ptr [ %i.el, %bb.ae ], [ %i.jf, %.thread517 ]
  %i.jy = getelementptr inbounds nuw [48 x i8], ptr %i.jw, i64 %indvars.iv635 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !41 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph574, label %._crit_edge

.lr.ph574:                                        ; preds = %bb.af
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !29
  %i.ke = load ptr, ptr %i.dy, align 8, !tbaa !19
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %indvars.iv635 ; 3 uses
  %i.kg = load float, ptr %i.kf, align 16, !tbaa !45
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !45
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = load float, ptr %i.kj, align 8, !tbaa !45
  %wide.trip.count633 = zext nneg i32 %i.ka to i64
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  %i.kl = phi ptr [ %i.jx, %bb.af ], [ %i.jv, %bb.ag ]
  %.0138.lcssa = phi float [ 1.000000e+30, %bb.af ], [ %.1139, %bb.ag ]
  %i.km = fneg float %.0138.lcssa
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 44
  store float %i.km, ptr %i.kn, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %wide.trip.count638
  br i1 %exitcond639.not, label %._crit_edge578, label %bb.v, !llvm.loop !94

bb.ag:                                            ; preds = %.lr.ph574, %bb.ag
  %indvars.iv630 = phi i64 [ 0, %.lr.ph574 ], [ %indvars.iv.next631, %bb.ag ] ; 2 uses
  %.0138572 = phi float [ 1.000000e+30, %.lr.ph574 ], [ %.1139, %bb.ag ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv630
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !47
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [16 x i8], ptr %i.ke, i64 %i.kq ; 3 uses
  %i.ks = load float, ptr %i.kr, align 16, !tbaa !45
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !45
  %i.kv = fmul float %i.ku, %i.ki
  %i.kw = call float @llvm.fmuladd.f32(float %i.ks, float %i.kg, float %i.kv)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.ky = load float, ptr %i.kx, align 8, !tbaa !45
  %i.kz = call noundef float @llvm.fmuladd.f32(float %i.ky, float %i.kk, float %i.kw) ; 2 uses
  %i.la = fcmp ogt float %.0138572, %i.kz
  %.1139 = select i1 %i.la, float %i.kz, float %.0138572 ; 2 uses
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %exitcond634.not = icmp eq i64 %indvars.iv.next631, %wide.trip.count633
  br i1 %exitcond634.not, label %._crit_edge, label %bb.ag, !llvm.loop !95

._crit_edge578:                                   ; preds = %._crit_edge, %.preheader555
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i8 1, ptr %i.lb, align 8, !tbaa !40
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr null, ptr %i.lc, align 8, !tbaa !29
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 8 uses
  store i32 0, ptr %i.ld, align 4, !tbaa !41
  %i.le = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.le, align 8, !tbaa !42
  %i.lf = load i32, ptr %i.ar, align 4, !tbaa !24
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph581, label %._crit_edge618

.preheader554:                                    ; preds = %bb.ak
  %.not617 = icmp eq i32 %i.of, 0
  br i1 %.not617, label %._crit_edge618, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i290.lr.ph

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i290.lr.ph: ; preds = %.preheader554
  %i.lh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 8 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lr = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 7 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 11 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.ml = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.mm = getelementptr inbounds nuw i8, ptr %13, i64 44
  br label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i290

bb.ah:                                            ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i271.thread, %.noexc284, %.split7.i.i282, %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i269
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

.lr.ph581:                                        ; preds = %._crit_edge578, %bb.ak
  %i.mo = phi ptr [ %i.nz, %bb.ak ], [ null, %._crit_edge578 ] ; 11 uses
  %i.mp = phi i32 [ %i.oa, %bb.ak ], [ 0, %._crit_edge578 ] ; 14 uses
  %i.mq = phi i32 [ %i.of, %bb.ak ], [ 0, %._crit_edge578 ] ; 2 uses
  %storemerge579 = phi i32 [ %i.og, %bb.ak ], [ 0, %._crit_edge578 ] ; 2 uses
  %i.mr = ptrtoaddr ptr %i.mo to i64
  %i.ms = icmp eq i32 %i.mq, %i.mp
  br i1 %i.ms, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph581
  %.not.i.i267 = icmp eq i32 %i.mp, 0
  %i.mt = shl nsw i32 %i.mp, 1
  %i.mu = select i1 %.not.i.i267, i32 1, i32 %i.mt ; 7 uses
  %i.mv = icmp slt i32 %i.mp, %i.mu
  br i1 %i.mv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i268 = icmp eq i32 %i.mu, 0
  br i1 %.not.i.i.i268, label %.split7.i.i282, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i269

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i269: ; preds = %bb.aj
  %i.mw = sext i32 %i.mu to i64
  %i.mx = shl nsw i64 %i.mw, 2
  %i.my = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.mx, i32 noundef 16)
          to label %.noexc283 unwind label %bb.ah ; 12 uses

.noexc283:                                        ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i269
  %i.mz = ptrtoaddr ptr %i.my to i64
  %i.na = icmp eq ptr %i.my, null
  br i1 %i.na, label %.split7.i.i282, label %.split.i.i270

.split.i.i270:                                    ; preds = %.noexc283
  %i.nb = icmp sgt i32 %i.mp, 0
  br i1 %i.nb, label %.lr.ph.i.i.i277, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i271

.lr.ph.i.i.i277:                                  ; preds = %.split.i.i270
  %wide.trip.count.i.i.i278 = zext nneg i32 %i.mp to i64 ; 5 uses
  %min.iters.check867 = icmp ult i32 %i.mp, 8
  %i.nc = sub i64 %i.mr, %i.mz
  %diff.check865 = icmp ugt i64 %i.nc, -32
  %or.cond980 = or i1 %min.iters.check867, %diff.check865
  br i1 %or.cond980, label %scalar.ph866.preheader, label %vector.ph868

vector.ph868:                                     ; preds = %.lr.ph.i.i.i277
  %n.vec869 = and i64 %wide.trip.count.i.i.i278, 2147483640 ; 3 uses
  br label %vector.body870

vector.body870:                                   ; preds = %vector.body870, %vector.ph868
  %index871 = phi i64 [ 0, %vector.ph868 ], [ %index.next874, %vector.body870 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index871 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %index871 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %wide.load872 = load <4 x i32>, ptr %i.ne, align 4, !tbaa !47
  %wide.load873 = load <4 x i32>, ptr %i.nf, align 4, !tbaa !47
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <4 x i32> %wide.load872, ptr %i.nd, align 4, !tbaa !47
  store <4 x i32> %wide.load873, ptr %i.ng, align 4, !tbaa !47
  %index.next874 = add nuw i64 %index871, 8       ; 2 uses
  %i.nh = icmp eq i64 %index.next874, %n.vec869
  br i1 %i.nh, label %middle.block875, label %vector.body870, !llvm.loop !96

middle.block875:                                  ; preds = %vector.body870
  %cmp.n876 = icmp eq i64 %n.vec869, %wide.trip.count.i.i.i278
  br i1 %cmp.n876, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i271.thread, label %scalar.ph866.preheader

scalar.ph866.preheader:                           ; preds = %.lr.ph.i.i.i277, %middle.block875
  %indvars.iv.i.i.i279.ph = phi i64 [ 0, %.lr.ph.i.i.i277 ], [ %n.vec869, %middle.block875 ] ; 3 uses
  %xtraiter1026 = and i64 %wide.trip.count.i.i.i278, 3 ; 2 uses
  %lcmp.mod1027.not = icmp eq i64 %xtraiter1026, 0
  br i1 %lcmp.mod1027.not, label %scalar.ph866.prol.loopexit, label %scalar.ph866.prol

scalar.ph866.prol:                                ; preds = %scalar.ph866.preheader, %scalar.ph866.prol
  %indvars.iv.i.i.i279.prol = phi i64 [ %indvars.iv.next.i.i.i280.prol, %scalar.ph866.prol ], [ %indvars.iv.i.i.i279.ph, %scalar.ph866.preheader ] ; 3 uses
  %prol.iter1028 = phi i64 [ %prol.iter1028.next, %scalar.ph866.prol ], [ 0, %scalar.ph866.preheader ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %indvars.iv.i.i.i279.prol
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvars.iv.i.i.i279.prol
end_hunk_0
