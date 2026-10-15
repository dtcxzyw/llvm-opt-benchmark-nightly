Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance?download=true
inline.NumInlined: 7373
inline.NumDeleted: 3590
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3igl15signed_distanceIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENS_18SignedDistanceTypeENSC_6ScalarESL_RNS1_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EERNSM_IT5_EE:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gr = load <2 x double>, ptr %.pre.i.i.i.i, align 16, !tbaa !131 ; 3 uses
  %i.gs = icmp sgt i64 %i.gl, 3
  br i1 %i.gs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 16
  %i.gu = load <2 x double>, ptr %i.gt, align 16, !tbaa !131 ; 2 uses
  %i.gv = icmp samesign ugt i64 %i.gl, 7
  br i1 %i.gv, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.r
  %.072.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.gu, %bb.r ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i ]
  %.069.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.gr, %bb.r ], [ %i.ha, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gw = fadd <2 x double> %.072.lcssa.i.i.i.i.i.i.i, %.069.lcssa.i.i.i.i.i.i.i ; 2 uses
  %i.gx = icmp sgt i64 %i.gq, %i.go
  br i1 %i.gx, label %bb.s, label %bb.t

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %.05477.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 4, %bb.r ] ; 3 uses
  %.054.in76.i.i.i.i.i.i.i = phi i64 [ %.05477.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.r ]
  %.06975.i.i.i.i.i.i.i = phi <2 x double> [ %i.ha, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gr, %bb.r ]
  %.07274.i.i.i.i.i.i.i = phi <2 x double> [ %i.he, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gu, %bb.r ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.05477.i.i.i.i.i.i.i
  %i.gz = load <2 x double>, ptr %i.gy, align 16, !tbaa !131
  %i.ha = fadd <2 x double> %.06975.i.i.i.i.i.i.i, %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.054.in76.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hd = load <2 x double>, ptr %i.hc, align 16, !tbaa !131
  %i.he = fadd <2 x double> %.07274.i.i.i.i.i.i.i, %i.hd ; 2 uses
  %.054.i.i.i.i.i.i.i = add nuw nsw i64 %.05477.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.hf = icmp slt i64 %.054.i.i.i.i.i.i.i, %i.go
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !2

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.go
  %i.hh = load <2 x double>, ptr %i.hg, align 16, !tbaa !131
  %i.hi = fadd <2 x double> %i.gw, %i.hh
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i.i, %bb.q
  %.271.i.i.i.i.i.i.i = phi <2 x double> [ %i.gr, %bb.q ], [ %i.hi, %bb.s ], [ %i.gw, %._crit_edge.i.i.i.i.i.i.i ]
  %i.hj = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.271.i.i.i.i.i.i.i) ; 3 uses
  %i.hk = icmp slt i64 %i.gq, %i.gl
  br i1 %i.hk, label %.lr.ph82.i.i.i.i.i.i.i.preheader, label %.loopexit89.i.i

.lr.ph82.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.t
  %i.hl = sub i64 %i.gl, %i.gq
  %xtraiter = and i64 %i.hl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.i.i.i.i.prol

.lr.ph82.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph82.i.i.i.i.i.i.i.preheader, %.lr.ph82.i.i.i.i.i.i.i.prol
  %.05280.i.i.i.i.i.i.i.prol = phi i64 [ %i.hp, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ %i.gq, %.lr.ph82.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.179.i.i.i.i.i.i.i.prol = phi double [ %i.ho, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ %i.hj, %.lr.ph82.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph82.i.i.i.i.i.i.i.preheader ]
  %i.hm = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i.prol
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !52
  %i.ho = fadd double %.179.i.i.i.i.i.i.i.prol, %i.hn ; 3 uses
  %i.hp = add nsw i64 %.05280.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.i.i.i.i.prol, !llvm.loop !359

.lr.ph82.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol, %.lr.ph82.i.i.i.i.i.i.i.preheader
  %.lcssa368.unr = phi double [ poison, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.ho, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %.05280.i.i.i.i.i.i.i.unr = phi i64 [ %i.gq, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.hp, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %.179.i.i.i.i.i.i.i.unr = phi double [ %i.hj, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.ho, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %i.hq = sub i64 %i.gq, %i.gl
  %i.hr = icmp ugt i64 %i.hq, -8
  br i1 %i.hr, label %.loopexit89.i.i, label %.lr.ph82.i.i.i.i.i.i.i

.lr.ph82.i.i.i.i.i.i.i:                           ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph82.i.i.i.i.i.i.i
  %.05280.i.i.i.i.i.i.i = phi i64 [ %i.ix, %.lr.ph82.i.i.i.i.i.i.i ], [ %.05280.i.i.i.i.i.i.i.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.179.i.i.i.i.i.i.i = phi double [ %i.iw, %.lr.ph82.i.i.i.i.i.i.i ], [ %.179.i.i.i.i.i.i.i.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ]
  %i.hs = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !52
  %i.hu = fadd double %.179.i.i.i.i.i.i.i, %i.ht
  %i.hv = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !52
  %i.hy = fadd double %i.hu, %i.hx
  %i.hz = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !52
  %i.ic = fadd double %i.hy, %i.ib
  %i.id = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.ie = getelementptr i8, ptr %i.id, i64 24
  %i.if = load double, ptr %i.ie, align 8, !tbaa !52
  %i.ig = fadd double %i.ic, %i.if
  %i.ih = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.ii = getelementptr i8, ptr %i.ih, i64 32
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !52
  %i.ik = fadd double %i.ig, %i.ij
  %i.il = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.im = getelementptr i8, ptr %i.il, i64 40
  %i.in = load double, ptr %i.im, align 8, !tbaa !52
  %i.io = fadd double %i.ik, %i.in
  %i.ip = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.iq = getelementptr i8, ptr %i.ip, i64 48
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !52
  %i.is = fadd double %i.io, %i.ir
  %i.it = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.iu = getelementptr i8, ptr %i.it, i64 56
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !52
  %i.iw = fadd double %i.is, %i.iv                ; 2 uses
  %i.ix = add nsw i64 %.05280.i.i.i.i.i.i.i, 8    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ix, %i.gl
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %.loopexit89.i.i, label %.lr.ph82.i.i.i.i.i.i.i, !llvm.loop !3

bb.u:                                             ; preds = %bb.p
  %i.iy = load double, ptr %.pre.i.i.i.i, align 8, !tbaa !52
  br label %.loopexit89.i.i

bb.v:                                             ; preds = %.noexc60.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = load ptr, ptr %28, align 8, !tbaa !50
  call void @free(ptr noundef %i.ja) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %.body.i.i

.loopexit89.i.i:                                  ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph82.i.i.i.i.i.i.i, %bb.u, %bb.t, %bb.o
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %bb.o ], [ %i.hj, %bb.t ], [ %i.iy, %bb.u ], [ %.lcssa368.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ], [ %i.iw, %.lr.ph82.i.i.i.i.i.i.i ]
  %i.jb = fmul double %.0.i.i.i.i.i, 5.000000e-01
  store double %i.jb, ptr %i.co, align 8, !tbaa !103
  call void @free(ptr noundef %.pre.i.i.i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  invoke void @_ZN3igl17WindingNumberAABBIdiE4growEv(ptr noundef nonnull align 8 dereferenceable(228) %35)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i unwind label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, %bb.ai, %bb.ag, %bb.af, %bb.ae, %.loopexit89.i.i, %bb.n
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.x:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false), !alias.scope !395
  %i.jd = load ptr, ptr %1, align 8, !tbaa !63, !noalias !395 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !47, !noalias !395 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !60, !noalias !395 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jf, 0 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jh, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jk = sdiv i64 9223372036854775807, %i.jh
  %i.jl = icmp sgt i64 %i.jf, %i.jk
  br i1 %i.jl, label %.invoke.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %i.jm = mul nsw i64 %i.jh, %i.jf                ; 7 uses
  %i.jn = icmp sgt i64 %i.jm, 0
  br i1 %i.jn, label %bb.aa, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.sink.split.i.i

bb.aa:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i
  %i.jo = icmp samesign ugt i64 %i.jm, 4611686018427387903
  br i1 %i.jo, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i: ; preds = %bb.aa
  %i.jp = shl nuw i64 %i.jm, 2
  %i.jq = call noalias ptr @malloc(i64 noundef %i.jp) #30 ; 4 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %.invoke.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i, %bb.aa, %bb.z
  %i.js = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.js, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.js, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont.i.i unwind label %bb.ab

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i
  store ptr %i.jq, ptr %37, align 8, !tbaa !136
  store i64 %i.jf, ptr %i.ji, align 8, !tbaa !137
  store i64 %i.jh, ptr %i.jj, align 8, !tbaa !138
  %min.iters.check = icmp ult i64 %i.jm, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %n.vec = and i64 %i.jm, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %index ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load = load <2 x double>, ptr %i.ju, align 8, !tbaa !52
  %wide.load316 = load <2 x double>, ptr %i.jv, align 8, !tbaa !52
  %39 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load316, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %40 = fptrunc <4 x double> %39 to <4 x float>
  store <4 x float> %40, ptr %i.jt, align 4, !tbaa !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %middle.block, label %vector.body, !llvm.loop !362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jm, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !52
  %i.ka = fptrunc double %i.jz to float
  store float %i.ka, ptr %i.jx, align 4, !tbaa !140
  %i.kb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kb, %i.jm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !363

bb.ab:                                            ; preds = %.invoke.i.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.sink.split.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %i.jf, ptr %i.ji, align 8, !tbaa !137
  store i64 %i.jh, ptr %i.jj, align 8, !tbaa !138
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.sink.split.i.i, %bb.x
  invoke void @_ZN3igl19fast_winding_numberIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiRNS_20FastWindingNumberBVHE(ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(112) %36)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i
  %i.kd = load ptr, ptr %37, align 8, !tbaa !136
  call void @free(ptr noundef %i.kd) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.ad:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i.i

.body62.i.i:                                      ; preds = %bb.ad, %bb.ab
  %.pn.i.i = phi { ptr, i32 } [ %i.ke, %bb.ad ], [ %i.kc, %bb.ab ]
  %i.kf = load ptr, ptr %37, align 8, !tbaa !136
  call void @free(ptr noundef %i.kf) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.l
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.af unwind label %bb.w

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS_29PerVertexNormalsWeightingTypeERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.ag unwind label %bb.w

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN3igl16per_edge_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES5_NS2_IiLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EENS_27PerEdgeNormalsWeightingTypeERKNS8_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.ah unwind label %bb.w

bb.ah:                                            ; preds = %bb.ag
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !47 ; 3 uses
  %i.ki = icmp sgt i64 %i.kh, 3074457345618258602
  br i1 %i.ki, label %bb.ai, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.kj = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kj, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.kj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc64.i.i unwind label %bb.w

.noexc64.i.i:                                     ; preds = %bb.ai
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i: ; preds = %bb.ah
  %i.kk = mul nsw i64 %i.kh, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.kk, i64 noundef %i.kh, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i unwind label %bb.w

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, %bb.ac, %.loopexit89.i.i, %bb.l
  %i.kl = call noundef double @llvm.fabs.f64(double %4) ; 2 uses
  %i.km = call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.kn = fcmp olt double %i.kl, %i.km
  %.sroa.speculated81.i.i = select i1 %i.kn, double %i.km, double %i.kl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.ko = call double @pow(double noundef %.sroa.speculated81.i.i, double noundef 2.000000e+00) #28
  store double %i.ko, ptr %i.e, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.kp = fsub double %4, %5
  %i.kq = fadd double %i.kp, %.sroa.speculated81.i.i ; 2 uses
  %i.kr = fcmp olt double %i.kq, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.kr, double 0.000000e+00, double %i.kq
  %i.ks = call double @pow(double noundef %.sroa.speculated.i.i, double noundef 2.000000e+00) #28
  store double %i.ks, ptr %i.f, align 8, !tbaa !52
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ku, i64 noundef 1)
          to label %bb.aj unwind label %bb.bz

bb.aj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.kv, i64 noundef 1)
          to label %bb.ak unwind label %bb.bz

bb.ak:                                            ; preds = %bb.aj
  %i.kw = load i64, ptr %i.kt, align 8, !tbaa !47 ; 3 uses
  %i.kx = icmp sgt i64 %i.kw, 3074457345618258602
  br i1 %i.kx, label %bb.al, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i67.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ky = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ky, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.ky, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc68.i.i unwind label %bb.bz

.noexc68.i.i:                                     ; preds = %bb.al
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i67.i.i: ; preds = %bb.ak
  %i.kz = mul nsw i64 %i.kw, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.kz, i64 noundef %i.kw, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit70.i.i unwind label %bb.bz

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit70.i.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i67.i.i
  %i.la = load i64, ptr %i.kt, align 8, !tbaa !47 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  store ptr %0, ptr %38, align 8, !tbaa !142
  %i.lb = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %29, ptr %i.lb, align 8, !tbaa !143
  %i.lc = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %1, ptr %i.lc, align 8, !tbaa !142
  %i.ld = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %2, ptr %i.ld, align 8, !tbaa !145
  %i.le = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %i.f, ptr %i.le, align 8, !tbaa !146
  %i.lf = getelementptr inbounds nuw i8, ptr %38, i64 40
  store ptr %i.e, ptr %i.lf, align 8, !tbaa !146
  %i.lg = getelementptr inbounds nuw i8, ptr %38, i64 48
  store ptr %6, ptr %i.lg, align 8, !tbaa !148
  %i.lh = getelementptr inbounds nuw i8, ptr %38, i64 56
  store ptr %7, ptr %i.lh, align 8, !tbaa !150
  %i.li = getelementptr inbounds nuw i8, ptr %38, i64 64
  store ptr %8, ptr %i.li, align 8, !tbaa !152
  %i.lj = getelementptr inbounds nuw i8, ptr %38, i64 72
  store ptr %i.d, ptr %i.lj, align 8, !tbaa !153
  %i.lk = getelementptr inbounds nuw i8, ptr %38, i64 80
  store ptr %35, ptr %i.lk, align 8, !tbaa !155
  %i.ll = getelementptr inbounds nuw i8, ptr %38, i64 88
  store ptr %36, ptr %i.ll, align 8, !tbaa !157
  %i.lm = getelementptr inbounds nuw i8, ptr %38, i64 96
  store ptr %30, ptr %i.lm, align 8, !tbaa !159
  %i.ln = getelementptr inbounds nuw i8, ptr %38, i64 104
  store ptr %31, ptr %i.ln, align 8, !tbaa !159
  %i.lo = getelementptr inbounds nuw i8, ptr %38, i64 112
  store ptr %32, ptr %i.lo, align 8, !tbaa !159
  %i.lp = getelementptr inbounds nuw i8, ptr %38, i64 120
  store ptr %34, ptr %i.lp, align 8, !tbaa !161
  %i.lq = getelementptr inbounds nuw i8, ptr %38, i64 128
  store ptr %9, ptr %i.lq, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  store ptr %38, ptr %27, align 8, !tbaa !153
  %i.lr = icmp eq i64 %i.la, 0
  br i1 %i.lr, label %.loopexit88.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit70.i.i
  %i.ls = invoke noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0)
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.i.i ; 3 uses

.noexc72.i.i:                                     ; preds = %bb.am
  %i.lt = zext i32 %i.ls to i64                   ; 3 uses
  %i.lu = icmp ugt i64 %i.la, 9999
  %i.lv = icmp ugt i32 %i.ls, 1
  %or.cond.not.i.i.i.i = and i1 %i.lu, %i.lv
  br i1 %or.cond.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i, label %.preheader41.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %.noexc72.i.i
  %i.lw = icmp sgt i64 %i.la, 0
  br i1 %i.lw, label %.lr.ph.i.i.i.i, label %.loopexit88.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader41.i.i.i.i, %.noexc73.i.i
  %.03364.i.i.i.i = phi i64 [ %i.lx, %.noexc73.i.i ], [ 0, %.preheader41.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN3igl12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_EEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EENS_18SignedDistanceTypeENSE_6ScalarESN_RNS3_15PlainObjectBaseIT2_EERNSO_IT3_EERNSO_IT4_EERNSO_IT5_EEEUliE_EEbSA_RKSE_mENKUllmE_clElm(ptr nonnull align 8 dereferenceable(136) %38, i64 noundef %.03364.i.i.i.i)
          to label %.noexc73.i.i unwind label %.loopexit.i.i

.noexc73.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.lx = add nuw nsw i64 %.03364.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.lx, %i.la
  br i1 %exitcond.not.i.i.i.i, label %.loopexit88.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !364

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %.noexc72.i.i
  %i.ly = add nsw i64 %i.la, 1
  %i.lz = sitofp i64 %i.ly to double
end_hunk_0
begin_hunk_1_@_ZN3igl15signed_distanceIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES3_NS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EENS_18SignedDistanceTypeENSC_6ScalarESL_RNS1_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EERNSM_IT5_EE:bb.a
  %i.fc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fd = fsub double %i.ep, %i.eo                ; 2 uses
  %i.fe = fmul double %i.fd, %i.fd
  %i.ff = fadd double %i.fe, %i.fc
  %.scalar.i.i.i = call noundef double @llvm.sqrt.f64(double %i.ff)
  %i.fg = fmul double %.scalar.i.i.i, 5.000000e-01
  store double %i.fg, ptr %i.bm, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !132
  %i.fj = getelementptr inbounds nuw i8, ptr %23, i64 88
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, ptr noundef nonnull align 1 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %.noexc60.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !49 ; 10 uses
  %i.fm = icmp eq i64 %i.fl, 0
  %.pre.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !50 ; 16 uses
  br i1 %i.fm, label %.loopexit80.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fn = sdiv i64 %i.fl, 4
  %i.fo = shl nsw i64 %i.fn, 2                    ; 3 uses
  %i.fp = sdiv i64 %i.fl, 2
  %i.fq = shl nsw i64 %i.fp, 1                    ; 6 uses
  %.off.i.i.i.i.i.i.i = add i64 %i.fl, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fr = load <2 x double>, ptr %.pre.i.i.i.i, align 16, !tbaa !131 ; 3 uses
  %i.fs = icmp sgt i64 %i.fl, 3
  br i1 %i.fs, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 16
  %i.fu = load <2 x double>, ptr %i.ft, align 16, !tbaa !131 ; 2 uses
  %i.fv = icmp samesign ugt i64 %i.fl, 7
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.072.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.fu, %bb.m ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ]
  %.069.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.fr, %bb.m ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fw = fadd <2 x double> %.072.lcssa.i.i.i.i.i.i.i, %.069.lcssa.i.i.i.i.i.i.i ; 2 uses
  %i.fx = icmp sgt i64 %i.fq, %i.fo
  br i1 %i.fx, label %bb.n, label %bb.o

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %.05477.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 4, %bb.m ] ; 3 uses
  %.054.in76.i.i.i.i.i.i.i = phi i64 [ %.05477.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.m ]
  %.06975.i.i.i.i.i.i.i = phi <2 x double> [ %i.ga, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fr, %bb.m ]
  %.07274.i.i.i.i.i.i.i = phi <2 x double> [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fu, %bb.m ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.05477.i.i.i.i.i.i.i
  %i.fz = load <2 x double>, ptr %i.fy, align 16, !tbaa !131
  %i.ga = fadd <2 x double> %.06975.i.i.i.i.i.i.i, %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.054.in76.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load <2 x double>, ptr %i.gc, align 16, !tbaa !131
  %i.ge = fadd <2 x double> %.07274.i.i.i.i.i.i.i, %i.gd ; 2 uses
  %.054.i.i.i.i.i.i.i = add nuw nsw i64 %.05477.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.gf = icmp slt i64 %.054.i.i.i.i.i.i.i, %i.fo
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !2

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.fo
  %i.gh = load <2 x double>, ptr %i.gg, align 16, !tbaa !131
  %i.gi = fadd <2 x double> %i.fw, %i.gh
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i, %bb.l
  %.271.i.i.i.i.i.i.i = phi <2 x double> [ %i.fr, %bb.l ], [ %i.gi, %bb.n ], [ %i.fw, %._crit_edge.i.i.i.i.i.i.i ]
  %i.gj = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.271.i.i.i.i.i.i.i) ; 3 uses
  %i.gk = icmp slt i64 %i.fq, %i.fl
  br i1 %i.gk, label %.lr.ph82.i.i.i.i.i.i.i.preheader, label %.loopexit80.i.i

.lr.ph82.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.o
  %i.gl = sub i64 %i.fl, %i.fq
  %xtraiter = and i64 %i.gl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.i.i.i.i.prol

.lr.ph82.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph82.i.i.i.i.i.i.i.preheader, %.lr.ph82.i.i.i.i.i.i.i.prol
  %.05280.i.i.i.i.i.i.i.prol = phi i64 [ %i.gp, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ %i.fq, %.lr.ph82.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.179.i.i.i.i.i.i.i.prol = phi double [ %i.go, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ %i.gj, %.lr.ph82.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph82.i.i.i.i.i.i.i.preheader ]
  %i.gm = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i.prol
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !52
  %i.go = fadd double %.179.i.i.i.i.i.i.i.prol, %i.gn ; 3 uses
  %i.gp = add nsw i64 %.05280.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.i.i.i.i.prol, !llvm.loop !413

.lr.ph82.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol, %.lr.ph82.i.i.i.i.i.i.i.preheader
  %.lcssa247.unr = phi double [ poison, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.go, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %.05280.i.i.i.i.i.i.i.unr = phi i64 [ %i.fq, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.gp, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %.179.i.i.i.i.i.i.i.unr = phi double [ %i.gj, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.go, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %i.gq = sub i64 %i.fq, %i.fl
  %i.gr = icmp ugt i64 %i.gq, -8
  br i1 %i.gr, label %.loopexit80.i.i, label %.lr.ph82.i.i.i.i.i.i.i

.lr.ph82.i.i.i.i.i.i.i:                           ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph82.i.i.i.i.i.i.i
  %.05280.i.i.i.i.i.i.i = phi i64 [ %i.hx, %.lr.ph82.i.i.i.i.i.i.i ], [ %.05280.i.i.i.i.i.i.i.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.179.i.i.i.i.i.i.i = phi double [ %i.hw, %.lr.ph82.i.i.i.i.i.i.i ], [ %.179.i.i.i.i.i.i.i.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ]
  %i.gs = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !52
  %i.gu = fadd double %.179.i.i.i.i.i.i.i, %i.gt
  %i.gv = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !52
  %i.gy = fadd double %i.gu, %i.gx
  %i.gz = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !52
  %i.hc = fadd double %i.gy, %i.hb
  %i.hd = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.he = getelementptr i8, ptr %i.hd, i64 24
  %i.hf = load double, ptr %i.he, align 8, !tbaa !52
  %i.hg = fadd double %i.hc, %i.hf
  %i.hh = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hi = getelementptr i8, ptr %i.hh, i64 32
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !52
  %i.hk = fadd double %i.hg, %i.hj
  %i.hl = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hm = getelementptr i8, ptr %i.hl, i64 40
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !52
  %i.ho = fadd double %i.hk, %i.hn
  %i.hp = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hq = getelementptr i8, ptr %i.hp, i64 48
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !52
  %i.hs = fadd double %i.ho, %i.hr
  %i.ht = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hu = getelementptr i8, ptr %i.ht, i64 56
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !52
  %i.hw = fadd double %i.hs, %i.hv                ; 2 uses
  %i.hx = add nsw i64 %.05280.i.i.i.i.i.i.i, 8    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.hx, %i.fl
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %.loopexit80.i.i, label %.lr.ph82.i.i.i.i.i.i.i, !llvm.loop !3

bb.p:                                             ; preds = %bb.k
  %i.hy = load double, ptr %.pre.i.i.i.i, align 8, !tbaa !52
  br label %.loopexit80.i.i

bb.q:                                             ; preds = %.noexc60.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %16, align 8, !tbaa !50
  call void @free(ptr noundef %i.ia) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.body.i.i

.loopexit80.i.i:                                  ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph82.i.i.i.i.i.i.i, %bb.p, %bb.o, %bb.j
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %bb.j ], [ %i.gj, %bb.o ], [ %i.hy, %bb.p ], [ %.lcssa247.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ], [ %i.hw, %.lr.ph82.i.i.i.i.i.i.i ]
  %i.ib = fmul double %.0.i.i.i.i.i, 5.000000e-01
  store double %i.ib, ptr %i.bo, align 8, !tbaa !103
  call void @free(ptr noundef %.pre.i.i.i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  invoke void @_ZN3igl17WindingNumberAABBIdiE4growEv(ptr noundef nonnull align 8 dereferenceable(228) %23)
          to label %bb.ab unwind label %bb.r

bb.r:                                             ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %.loopexit80.i.i, %bb.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false), !alias.scope !430
  %i.id = load ptr, ptr %1, align 8, !tbaa !190, !noalias !430 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !207, !noalias !430 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i, label %thread-pre-split.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i:               ; preds = %bb.s
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %25, i64 noundef %i.if, i64 noundef 3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ig, align 8, !tbaa !212, !alias.scope !430 ; 2 uses
  %.pre.i.i61.i.i = load ptr, ptr %25, align 8, !tbaa !213, !alias.scope !430 ; 2 uses
  %i.ih = icmp sgt i64 %.pr.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.t
  %i.ii = mul i64 %.pr.i.i.i.i.i.i.i.i.i, 3       ; 2 uses
  %smax.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ii, i64 1) ; 3 uses
  %min.iters.check = icmp slt i64 %i.ii, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %n.vec = and i64 %smax.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i61.i.i, i64 %index
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %wide.load = load <2 x double>, ptr %i.ik, align 8, !tbaa !52
  %wide.load195 = load <2 x double>, ptr %i.il, align 8, !tbaa !52
  %27 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load195, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %28 = fptrunc <4 x double> %27 to <4 x float>
  store <4 x float> %28, ptr %i.ij, align 4, !tbaa !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ir, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i61.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !52
  %i.iq = fptrunc double %i.ip to float
  store float %i.iq, ptr %i.in, align 4, !tbaa !140
  %i.ir = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ir, %smax.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i, label %scalar.ph, !llvm.loop !417

bb.u:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i: ; preds = %scalar.ph, %middle.block, %bb.t, %bb.s
  invoke void @_ZN3igl19fast_winding_numberIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiRNS_20FastWindingNumberBVHE(ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(112) %24)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i
  %i.it = load ptr, ptr %25, align 8, !tbaa !213
  call void @free(ptr noundef %i.it) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.ab

bb.w:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEEE4evalEv.exit.i.i
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i.i

.body62.i.i:                                      ; preds = %bb.w, %bb.u
  %.pn.i.i = phi { ptr, i32 } [ %i.iu, %bb.w ], [ %i.is, %bb.u ]
  %i.iv = load ptr, ptr %25, align 8, !tbaa !213
  call void @free(ptr noundef %i.iv) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.body.i.i

bb.x:                                             ; preds = %bb.g
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.y unwind label %bb.r

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_29PerVertexNormalsWeightingTypeERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.z unwind label %bb.r

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN3igl16per_edge_normalsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEES3_S3_NS2_IiLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EENS_27PerEdgeNormalsWeightingTypeERKNS7_IT1_EERNS1_15PlainObjectBaseIT2_EERNSL_IT3_EERNSL_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.aa unwind label %bb.r

bb.aa:                                            ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !207
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.ix, i64 noundef 3)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa, %bb.v, %.loopexit80.i.i, %bb.g
  %i.iy = call noundef double @llvm.fabs.f64(double %4) ; 2 uses
  %i.iz = call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.ja = fcmp olt double %i.iy, %i.iz
  %.sroa.speculated73.i.i = select i1 %i.ja, double %i.iz, double %i.iy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.jb = call double @pow(double noundef %.sroa.speculated73.i.i, double noundef 2.000000e+00) #28
  store double %i.jb, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.jc = fsub double %4, %5
  %i.jd = fadd double %i.jc, %.sroa.speculated73.i.i ; 2 uses
  %i.je = fcmp olt double %i.jd, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.je, double 0.000000e+00, double %i.jd
  %i.jf = call double @pow(double noundef %.sroa.speculated.i.i, double noundef 2.000000e+00) #28
  store double %i.jf, ptr %i.c, align 8, !tbaa !52
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !207
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.jh, i64 noundef 1)
          to label %bb.ac unwind label %bb.bs

bb.ac:                                            ; preds = %bb.ab
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !207
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.ji, i64 noundef 1)
          to label %bb.ad unwind label %bb.bs

bb.ad:                                            ; preds = %bb.ac
  %i.jj = load i64, ptr %i.jg, align 8, !tbaa !207
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.jj, i64 noundef 3)
          to label %bb.ae unwind label %bb.bs

bb.ae:                                            ; preds = %bb.ad
  %i.jk = load i64, ptr %i.jg, align 8, !tbaa !207 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  store ptr %0, ptr %26, align 8, !tbaa !431
  %i.jl = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %17, ptr %i.jl, align 8, !tbaa !432
  %i.jm = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %1, ptr %i.jm, align 8, !tbaa !431
  %i.jn = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %2, ptr %i.jn, align 8, !tbaa !216
  %i.jo = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %i.c, ptr %i.jo, align 8, !tbaa !146
  %i.jp = getelementptr inbounds nuw i8, ptr %26, i64 40
  store ptr %i.b, ptr %i.jp, align 8, !tbaa !146
  %i.jq = getelementptr inbounds nuw i8, ptr %26, i64 48
  store ptr %6, ptr %i.jq, align 8, !tbaa !148
  %i.jr = getelementptr inbounds nuw i8, ptr %26, i64 56
  store ptr %7, ptr %i.jr, align 8, !tbaa !150
  %i.js = getelementptr inbounds nuw i8, ptr %26, i64 64
  store ptr %8, ptr %i.js, align 8, !tbaa !218
  %i.jt = getelementptr inbounds nuw i8, ptr %26, i64 72
  store ptr %i.a, ptr %i.jt, align 8, !tbaa !153
  %i.ju = getelementptr inbounds nuw i8, ptr %26, i64 80
  store ptr %23, ptr %i.ju, align 8, !tbaa !155
  %i.jv = getelementptr inbounds nuw i8, ptr %26, i64 88
  store ptr %24, ptr %i.jv, align 8, !tbaa !157
  %i.jw = getelementptr inbounds nuw i8, ptr %26, i64 96
  store ptr %18, ptr %i.jw, align 8, !tbaa !159
  %i.jx = getelementptr inbounds nuw i8, ptr %26, i64 104
  store ptr %19, ptr %i.jx, align 8, !tbaa !159
  %i.jy = getelementptr inbounds nuw i8, ptr %26, i64 112
  store ptr %20, ptr %i.jy, align 8, !tbaa !159
  %i.jz = getelementptr inbounds nuw i8, ptr %26, i64 120
  store ptr %22, ptr %i.jz, align 8, !tbaa !161
  %i.ka = getelementptr inbounds nuw i8, ptr %26, i64 128
  store ptr %9, ptr %i.ka, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store ptr %26, ptr %15, align 8, !tbaa !153
  %i.kb = icmp eq i64 %i.jk, 0
  br i1 %i.kb, label %.loopexit79.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kc = invoke noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.i.i ; 3 uses

.noexc66.i.i:                                     ; preds = %bb.af
  %i.kd = zext i32 %i.kc to i64                   ; 3 uses
  %i.ke = icmp ugt i64 %i.jk, 9999
  %i.kf = icmp ugt i32 %i.kc, 1
  %or.cond.not.i.i.i.i = and i1 %i.ke, %i.kf
  br i1 %or.cond.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i, label %.preheader41.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %.noexc66.i.i
  %i.kg = icmp sgt i64 %i.jk, 0
  br i1 %i.kg, label %.lr.ph.i.i.i.i, label %.loopexit79.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader41.i.i.i.i, %.noexc67.i.i
  %.03364.i.i.i.i = phi i64 [ %i.kh, %.noexc67.i.i ], [ 0, %.preheader41.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN3igl12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES5_NS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IdLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEES5_S5_EEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EENS_18SignedDistanceTypeENSE_6ScalarESN_RNS3_15PlainObjectBaseIT2_EERNSO_IT3_EERNSO_IT4_EERNSO_IT5_EEEUliE_EEbSA_RKSE_mENKUllmE_clElm(ptr nonnull align 8 dereferenceable(136) %26, i64 noundef %.03364.i.i.i.i)
          to label %.noexc67.i.i unwind label %.loopexit.i.i

.noexc67.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.kh = add nuw nsw i64 %.03364.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.kh, %i.jk
  br i1 %exitcond.not.i.i.i.i, label %.loopexit79.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !418

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %.noexc66.i.i
  %i.ki = add nsw i64 %i.jk, 1
  %i.kj = sitofp i64 %i.ki to double
  %i.kk = uitofp i32 %i.kc to double
  %i.kl = fdiv double %i.kj, %i.kk
  %i.km = call double @llvm.round.f64(double %i.kl)
  %i.kn = fptosi double %i.km to i64
  %.sroa.speculated23.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.kn, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.kq = shl nuw nsw i64 %i.kd, 3
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #31
          to label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i.i.i unwind label %bb.au ; 5 uses

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i
  store ptr %i.kr, ptr %14, align 8, !tbaa !164
  store ptr %i.kr, ptr %i.kp, align 8, !tbaa !165
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kd
  store ptr %i.ks, ptr %i.ko, align 8, !tbaa !166
  %i.kt = icmp sgt i64 %i.jk, 0
  br i1 %i.kt, label %.lr.ph68.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlRKlRmEEERS0_DpOT_.exitthread-pre-split.i.i.i.i

.lr.ph68.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i.i.i
  %i.ku = call i64 @llvm.umin.i64(i64 %i.jk, i64 %.sroa.speculated23.i.i.i.i)
  %i.kv = ptrtoint ptr %15 to i64                 ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlS1J_RmEEERS0_DpOT_.exit.i.i.i.i, %.lr.ph68.i.i.i.i
  %i.kw = phi ptr [ %i.kr, %.lr.ph68.i.i.i.i ], [ %i.nb, %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlS1J_RmEEERS0_DpOT_.exit.i.i.i.i ] ; 6 uses
  %i.kx = phi i64 [ 1, %.lr.ph68.i.i.i.i ], [ %i.nd, %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlS1J_RmEEERS0_DpOT_.exit.i.i.i.i ] ; 4 uses
  %storemerge67.i.i.i.i = phi i64 [ 0, %.lr.ph68.i.i.i.i ], [ %i.kx, %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlS1J_RmEEERS0_DpOT_.exit.i.i.i.i ] ; 2 uses
  %.03866.i.i.i.i = phi i64 [ 0, %.lr.ph68.i.i.i.i ], [ %.03965.i.i.i.i, %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlS1J_RmEEERS0_DpOT_.exit.i.i.i.i ] ; 2 uses
  %.03965.i.i.i.i = phi i64 [ %i.ku, %.lr.ph68.i.i.i.i ], [ %.sroa.speculated.i.i.i.i, %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEESB_NSA_IiLin1ELi3ELi0ELin1ELi3EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEESB_SB_EEvRKNS9_10MatrixBaseIT_EERKNSF_IT0_EERKNSF_IT1_EENS4_18SignedDistanceTypeENSK_6ScalarEST_RNS9_15PlainObjectBaseIT2_EERNSU_IT3_EERNSU_IT4_EERNSU_IT5_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS6_IlS17_EEbSG_S19_mEUllmE_S1A_EEbSG_S19_RKSO_RKSV_mEUlllmE_RlS1J_RmEEERS0_DpOT_.exit.i.i.i.i ] ; 7 uses
  %i.ky = load ptr, ptr %i.ko, align 8, !tbaa !166
end_hunk_1
begin_hunk_2_@_ZN3igl15signed_distanceIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES7_EEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EENS_18SignedDistanceTypeENSD_6ScalarESM_RNS1_15PlainObjectBaseIT2_EERNSN_IT3_EERNSN_IT4_EERNSN_IT5_EE:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fu = load <2 x double>, ptr %.pre.i.i.i.i, align 16, !tbaa !131 ; 3 uses
  %i.fv = icmp sgt i64 %i.fo, 3
  br i1 %i.fv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 16
  %i.fx = load <2 x double>, ptr %i.fw, align 16, !tbaa !131 ; 2 uses
  %i.fy = icmp samesign ugt i64 %i.fo, 7
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.072.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.fx, %bb.m ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.i ]
  %.069.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.fu, %bb.m ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fz = fadd <2 x double> %.072.lcssa.i.i.i.i.i.i.i, %.069.lcssa.i.i.i.i.i.i.i ; 2 uses
  %i.ga = icmp sgt i64 %i.ft, %i.fr
  br i1 %i.ga, label %bb.n, label %bb.o

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %.05477.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 4, %bb.m ] ; 3 uses
  %.054.in76.i.i.i.i.i.i.i = phi i64 [ %.05477.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.m ]
  %.06975.i.i.i.i.i.i.i = phi <2 x double> [ %i.gd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fu, %bb.m ]
  %.07274.i.i.i.i.i.i.i = phi <2 x double> [ %i.gh, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fx, %bb.m ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.05477.i.i.i.i.i.i.i
  %i.gc = load <2 x double>, ptr %i.gb, align 16, !tbaa !131
  %i.gd = fadd <2 x double> %.06975.i.i.i.i.i.i.i, %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %.054.in76.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load <2 x double>, ptr %i.gf, align 16, !tbaa !131
  %i.gh = fadd <2 x double> %.07274.i.i.i.i.i.i.i, %i.gg ; 2 uses
  %.054.i.i.i.i.i.i.i = add nuw nsw i64 %.05477.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.gi = icmp slt i64 %.054.i.i.i.i.i.i.i, %i.fr
  br i1 %i.gi, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !2

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.fr
  %i.gk = load <2 x double>, ptr %i.gj, align 16, !tbaa !131
  %i.gl = fadd <2 x double> %i.fz, %i.gk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i.i, %bb.l
  %.271.i.i.i.i.i.i.i = phi <2 x double> [ %i.fu, %bb.l ], [ %i.gl, %bb.n ], [ %i.fz, %._crit_edge.i.i.i.i.i.i.i ]
  %i.gm = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.271.i.i.i.i.i.i.i) ; 3 uses
  %i.gn = icmp slt i64 %i.ft, %i.fo
  br i1 %i.gn, label %.lr.ph82.i.i.i.i.i.i.i.preheader, label %.loopexit82.i.i

.lr.ph82.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.o
  %i.go = sub i64 %i.fo, %i.ft
  %xtraiter = and i64 %i.go, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.i.i.i.i.prol

.lr.ph82.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph82.i.i.i.i.i.i.i.preheader, %.lr.ph82.i.i.i.i.i.i.i.prol
  %.05280.i.i.i.i.i.i.i.prol = phi i64 [ %i.gs, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ %i.ft, %.lr.ph82.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.179.i.i.i.i.i.i.i.prol = phi double [ %i.gr, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ %i.gm, %.lr.ph82.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph82.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph82.i.i.i.i.i.i.i.preheader ]
  %i.gp = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i.prol
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !52
  %i.gr = fadd double %.179.i.i.i.i.i.i.i.prol, %i.gq ; 3 uses
  %i.gs = add nsw i64 %.05280.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph82.i.i.i.i.i.i.i.prol, !llvm.loop !554

.lr.ph82.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol, %.lr.ph82.i.i.i.i.i.i.i.preheader
  %.lcssa250.unr = phi double [ poison, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.gr, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %.05280.i.i.i.i.i.i.i.unr = phi i64 [ %i.ft, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.gs, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %.179.i.i.i.i.i.i.i.unr = phi double [ %i.gm, %.lr.ph82.i.i.i.i.i.i.i.preheader ], [ %i.gr, %.lr.ph82.i.i.i.i.i.i.i.prol ]
  %i.gt = sub i64 %i.ft, %i.fo
  %i.gu = icmp ugt i64 %i.gt, -8
  br i1 %i.gu, label %.loopexit82.i.i, label %.lr.ph82.i.i.i.i.i.i.i

.lr.ph82.i.i.i.i.i.i.i:                           ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph82.i.i.i.i.i.i.i
  %.05280.i.i.i.i.i.i.i = phi i64 [ %i.ia, %.lr.ph82.i.i.i.i.i.i.i ], [ %.05280.i.i.i.i.i.i.i.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.179.i.i.i.i.i.i.i = phi double [ %i.hz, %.lr.ph82.i.i.i.i.i.i.i ], [ %.179.i.i.i.i.i.i.i.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ]
  %i.gv = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !52
  %i.gx = fadd double %.179.i.i.i.i.i.i.i, %i.gw
  %i.gy = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !52
  %i.hb = fadd double %i.gx, %i.ha
  %i.hc = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  %i.he = load double, ptr %i.hd, align 8, !tbaa !52
  %i.hf = fadd double %i.hb, %i.he
  %i.hg = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hh = getelementptr i8, ptr %i.hg, i64 24
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !52
  %i.hj = fadd double %i.hf, %i.hi
  %i.hk = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 32
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !52
  %i.hn = fadd double %i.hj, %i.hm
  %i.ho = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hp = getelementptr i8, ptr %i.ho, i64 40
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !52
  %i.hr = fadd double %i.hn, %i.hq
  %i.hs = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.ht = getelementptr i8, ptr %i.hs, i64 48
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !52
  %i.hv = fadd double %i.hr, %i.hu
  %i.hw = getelementptr [8 x i8], ptr %.pre.i.i.i.i, i64 %.05280.i.i.i.i.i.i.i
  %i.hx = getelementptr i8, ptr %i.hw, i64 56
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !52
  %i.hz = fadd double %i.hv, %i.hy                ; 2 uses
  %i.ia = add nsw i64 %.05280.i.i.i.i.i.i.i, 8    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ia, %i.fo
  br i1 %exitcond.not.i.i.i.i.i.i.i.7, label %.loopexit82.i.i, label %.lr.ph82.i.i.i.i.i.i.i, !llvm.loop !3

bb.p:                                             ; preds = %bb.k
  %i.ib = load double, ptr %.pre.i.i.i.i, align 8, !tbaa !52
  br label %.loopexit82.i.i

bb.q:                                             ; preds = %.noexc60.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load ptr, ptr %16, align 8, !tbaa !50
  call void @free(ptr noundef %i.id) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.body.i.i

.loopexit82.i.i:                                  ; preds = %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph82.i.i.i.i.i.i.i, %bb.p, %bb.o, %bb.j
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %bb.j ], [ %i.gm, %bb.o ], [ %i.ib, %bb.p ], [ %.lcssa250.unr, %.lr.ph82.i.i.i.i.i.i.i.prol.loopexit ], [ %i.hz, %.lr.ph82.i.i.i.i.i.i.i ]
  %i.ie = fmul double %.0.i.i.i.i.i, 5.000000e-01
  store double %i.ie, ptr %i.br, align 8, !tbaa !103
  call void @free(ptr noundef %.pre.i.i.i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  invoke void @_ZN3igl17WindingNumberAABBIdiE4growEv(ptr noundef nonnull align 8 dereferenceable(228) %23)
          to label %bb.ad unwind label %bb.r

bb.r:                                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %.loopexit82.i.i, %bb.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.s:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !alias.scope !571
  %i.ig = load ptr, ptr %1, align 8, !tbaa !63, !noalias !571 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !47, !noalias !571 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !60, !noalias !571 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ii, 0 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ik, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.in = sdiv i64 9223372036854775807, %i.ik
  %i.io = icmp sgt i64 %i.ii, %i.in
  br i1 %i.io, label %.invoke.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %i.ip = mul nsw i64 %i.ik, %i.ii                ; 7 uses
  %i.iq = icmp sgt i64 %i.ip, 0
  br i1 %i.iq, label %bb.v, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.sink.split.i.i

bb.v:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ir = icmp samesign ugt i64 %i.ip, 4611686018427387903
  br i1 %i.ir, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i: ; preds = %bb.v
  %i.is = shl nuw i64 %i.ip, 2
  %i.it = call noalias ptr @malloc(i64 noundef %i.is) #30 ; 4 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %.invoke.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i, %bb.v, %bb.u
  %i.iv = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.iv, align 8, !tbaa !62
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.cont.i.i unwind label %bb.w

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i.i.i
  store ptr %i.it, ptr %25, align 8, !tbaa !136
  store i64 %i.ii, ptr %i.il, align 8, !tbaa !137
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !138
  %min.iters.check = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %n.vec = and i64 %i.ip, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %index
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load = load <2 x double>, ptr %i.ix, align 8, !tbaa !52
  %wide.load198 = load <2 x double>, ptr %i.iy, align 8, !tbaa !52
  %27 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load198, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %28 = fptrunc <4 x double> %27 to <4 x float>
  store <4 x float> %28, ptr %i.iw, align 4, !tbaa !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !52
  %i.jd = fptrunc double %i.jc to float
  store float %i.jd, ptr %i.ja, align 4, !tbaa !140
  %i.je = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.je, %i.ip
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !558

bb.w:                                             ; preds = %.invoke.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.sink.split.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i.i.i
  store i64 %i.ii, ptr %i.il, align 8, !tbaa !137
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !138
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.sink.split.i.i, %bb.s
  invoke void @_ZN3igl19fast_winding_numberIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EEiRNS_20FastWindingNumberBVHE(ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(112) %24)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i
  %i.jg = load ptr, ptr %25, align 8, !tbaa !136
  call void @free(ptr noundef %i.jg) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.ad

bb.y:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE4evalEv.exit.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body62.i.i

.body62.i.i:                                      ; preds = %bb.y, %bb.w
  %.pn.i.i = phi { ptr, i32 } [ %i.jh, %bb.y ], [ %i.jf, %bb.w ]
  %i.ji = load ptr, ptr %25, align 8, !tbaa !136
  call void @free(ptr noundef %i.ji) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %.body.i.i

bb.z:                                             ; preds = %bb.g
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.aa unwind label %bb.r

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS_29PerVertexNormalsWeightingTypeERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN3igl16per_edge_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES5_NS2_IiLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS8_IT0_EENS_27PerEdgeNormalsWeightingTypeERKNS8_IT1_EERNS1_15PlainObjectBaseIT2_EERNSM_IT3_EERNSM_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %bb.ac unwind label %bb.r

bb.ac:                                            ; preds = %bb.ab
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.jk, i64 noundef 3)
          to label %bb.ad unwind label %bb.r

bb.ad:                                            ; preds = %bb.ac, %bb.x, %.loopexit82.i.i, %bb.g
  %i.jl = call noundef double @llvm.fabs.f64(double %4) ; 2 uses
  %i.jm = call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.jn = fcmp olt double %i.jl, %i.jm
  %.sroa.speculated75.i.i = select i1 %i.jn, double %i.jm, double %i.jl ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.jo = call double @pow(double noundef %.sroa.speculated75.i.i, double noundef 2.000000e+00) #28
  store double %i.jo, ptr %i.b, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.jp = fsub double %4, %5
  %i.jq = fadd double %i.jp, %.sroa.speculated75.i.i ; 2 uses
  %i.jr = fcmp olt double %i.jq, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.jr, double 0.000000e+00, double %i.jq
  %i.js = call double @pow(double noundef %.sroa.speculated.i.i, double noundef 2.000000e+00) #28
  store double %i.js, ptr %i.c, align 8, !tbaa !52
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ju, i64 noundef 1)
          to label %bb.ae unwind label %bb.bu

bb.ae:                                            ; preds = %bb.ad
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.jv, i64 noundef 1)
          to label %bb.af unwind label %bb.bu

bb.af:                                            ; preds = %bb.ae
  %i.jw = load i64, ptr %i.jt, align 8, !tbaa !47
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.jw, i64 noundef 3)
          to label %bb.ag unwind label %bb.bu

bb.ag:                                            ; preds = %bb.af
  %i.jx = load i64, ptr %i.jt, align 8, !tbaa !47 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  store ptr %0, ptr %26, align 8, !tbaa !142
  %i.jy = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %17, ptr %i.jy, align 8, !tbaa !143
  %i.jz = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %1, ptr %i.jz, align 8, !tbaa !142
  %i.ka = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %2, ptr %i.ka, align 8, !tbaa !145
  %i.kb = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %i.c, ptr %i.kb, align 8, !tbaa !146
  %i.kc = getelementptr inbounds nuw i8, ptr %26, i64 40
  store ptr %i.b, ptr %i.kc, align 8, !tbaa !146
  %i.kd = getelementptr inbounds nuw i8, ptr %26, i64 48
  store ptr %6, ptr %i.kd, align 8, !tbaa !148
  %i.ke = getelementptr inbounds nuw i8, ptr %26, i64 56
  store ptr %7, ptr %i.ke, align 8, !tbaa !150
  %i.kf = getelementptr inbounds nuw i8, ptr %26, i64 64
  store ptr %8, ptr %i.kf, align 8, !tbaa !218
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 72
  store ptr %i.a, ptr %i.kg, align 8, !tbaa !153
  %i.kh = getelementptr inbounds nuw i8, ptr %26, i64 80
  store ptr %23, ptr %i.kh, align 8, !tbaa !155
  %i.ki = getelementptr inbounds nuw i8, ptr %26, i64 88
  store ptr %24, ptr %i.ki, align 8, !tbaa !157
  %i.kj = getelementptr inbounds nuw i8, ptr %26, i64 96
  store ptr %18, ptr %i.kj, align 8, !tbaa !159
  %i.kk = getelementptr inbounds nuw i8, ptr %26, i64 104
  store ptr %19, ptr %i.kk, align 8, !tbaa !159
  %i.kl = getelementptr inbounds nuw i8, ptr %26, i64 112
  store ptr %20, ptr %i.kl, align 8, !tbaa !159
  %i.km = getelementptr inbounds nuw i8, ptr %26, i64 120
  store ptr %22, ptr %i.km, align 8, !tbaa !161
  %i.kn = getelementptr inbounds nuw i8, ptr %26, i64 128
  store ptr %9, ptr %i.kn, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store ptr %26, ptr %15, align 8, !tbaa !153
  %i.ko = icmp eq i64 %i.jx, 0
  br i1 %i.ko, label %.loopexit81.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kp = invoke noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0)
          to label %.noexc66.i.i unwind label %.loopexit.split-lp.i.i ; 3 uses

.noexc66.i.i:                                     ; preds = %bb.ah
  %i.kq = zext i32 %i.kp to i64                   ; 3 uses
  %i.kr = icmp ugt i64 %i.jx, 9999
  %i.ks = icmp ugt i32 %i.kp, 1
  %or.cond.not.i.i.i.i = and i1 %i.kr, %i.ks
  br i1 %or.cond.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i, label %.preheader41.i.i.i.i

.preheader41.i.i.i.i:                             ; preds = %.noexc66.i.i
  %i.kt = icmp sgt i64 %i.jx, 0
  br i1 %i.kt, label %.lr.ph.i.i.i.i, label %.loopexit81.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader41.i.i.i.i, %.noexc67.i.i
  %.03364.i.i.i.i = phi i64 [ %i.ku, %.noexc67.i.i ], [ 0, %.preheader41.i.i.i.i ] ; 2 uses
  invoke fastcc void @_ZZN3igl12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_IdLin1ELi3ELi0ELin1ELi3EEES9_EEvRKNS3_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EENS_18SignedDistanceTypeENSF_6ScalarESO_RNS3_15PlainObjectBaseIT2_EERNSP_IT3_EERNSP_IT4_EERNSP_IT5_EEEUliE_EEbSB_RKSF_mENKUllmE_clElm(ptr nonnull align 8 dereferenceable(136) %26, i64 noundef %.03364.i.i.i.i)
          to label %.noexc67.i.i unwind label %.loopexit.i.i

.noexc67.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.ku = add nuw nsw i64 %.03364.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ku, %i.jx
  br i1 %exitcond.not.i.i.i.i, label %.loopexit81.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !559

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %.noexc66.i.i
  %i.kv = add nsw i64 %i.jx, 1
  %i.kw = sitofp i64 %i.kv to double
  %i.kx = uitofp i32 %i.kp to double
  %i.ky = fdiv double %i.kw, %i.kx
  %i.kz = call double @llvm.round.f64(double %i.ky)
  %i.la = fptosi double %i.kz to i64
  %.sroa.speculated23.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.la, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.ld = shl nuw nsw i64 %i.kq, 3
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #31
          to label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i.i.i unwind label %bb.aw ; 5 uses

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i.i.i.i.i
  store ptr %i.le, ptr %14, align 8, !tbaa !164
  store ptr %i.le, ptr %i.lc, align 8, !tbaa !165
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.kq
  store ptr %i.lf, ptr %i.lb, align 8, !tbaa !166
  %i.lg = icmp sgt i64 %i.jx, 0
  br i1 %i.lg, label %.lr.ph68.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESB_NSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEENSA_IdLin1ELi3ELi0ELin1ELi3EEESF_EEvRKNS9_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EENS4_18SignedDistanceTypeENSL_6ScalarESU_RNS9_15PlainObjectBaseIT2_EERNSV_IT3_EERNSV_IT4_EERNSV_IT5_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IlS18_EEbSH_S1A_mEUllmE_S1B_EEbSH_S1A_RKSP_RKSW_mEUlllmE_RlRKlRmEEERS0_DpOT_.exitthread-pre-split.i.i.i.i

.lr.ph68.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i.i.i
  %i.lh = call i64 @llvm.umin.i64(i64 %i.jx, i64 %.sroa.speculated23.i.i.i.i)
  %i.li = ptrtoint ptr %15 to i64                 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESB_NSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEENSA_IdLin1ELi3ELi0ELin1ELi3EEESF_EEvRKNS9_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EENS4_18SignedDistanceTypeENSL_6ScalarESU_RNS9_15PlainObjectBaseIT2_EERNSV_IT3_EERNSV_IT4_EERNSV_IT5_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IlS18_EEbSH_S1A_mEUllmE_S1B_EEbSH_S1A_RKSP_RKSW_mEUlllmE_RlS1K_RmEEERS0_DpOT_.exit.i.i.i.i, %.lr.ph68.i.i.i.i
  %i.lj = phi ptr [ %i.le, %.lr.ph68.i.i.i.i ], [ %i.no, %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZN12_GLOBAL__N_117signed_distance_3IN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESB_NSA_IiLin1ELin1ELi0ELin1ELin1EEENSA_IdLin1ELi1ELi0ELin1ELi1EEENSA_IiLin1ELi1ELi0ELin1ELi1EEENSA_IdLin1ELi3ELi0ELin1ELi3EEESF_EEvRKNS9_10MatrixBaseIT_EERKNSG_IT0_EERKNSG_IT1_EENS4_18SignedDistanceTypeENSL_6ScalarESU_RNS9_15PlainObjectBaseIT2_EERNSV_IT3_EERNSV_IT4_EERNSV_IT5_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS6_IlS18_EEbSH_S1A_mEUllmE_S1B_EEbSH_S1A_RKSP_RKSW_mEUlllmE_RlS1K_RmEEERS0_DpOT_.exit.i.i.i.i ] ; 6 uses
end_hunk_2
