Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/propagate_winding_numbers?download=true
inline.NumInlined: 954
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0190.0244, i64 16
  %i.bh = load <4 x i32>, ptr %i.bg, align 16, !tbaa !32 ; 2 uses
  %i.bi = icmp samesign ugt i64 %5, 15
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.bh, %bb.i ], [ %i.bs, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.be, %bb.i ], [ %i.bo, %.lr.ph.i.i.i.i ]
  %i.bj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.bk = icmp sgt i64 %i.bd, %i.bb
  br i1 %i.bk, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.i ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.be, %bb.i ]
  %i.bl = phi <4 x i32> [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bh, %bb.i ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %.05779.i.i.i.i
  %i.bn = load <4 x i32>, ptr %i.bm, align 16, !tbaa !32
  %i.bo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.bn) ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %.057.in78.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load <4 x i32>, ptr %i.bq, align 16, !tbaa !32
  %i.bs = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bl, <4 x i32> %i.br) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.bt = icmp slt i64 %.057.i.i.i.i, %i.bb
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %i.bb
  %i.bv = load <4 x i32>, ptr %i.bu, align 16, !tbaa !32
  %i.bw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bv)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.be, %bb.h ], [ %i.bw, %bb.j ], [ %i.bj, %._crit_edge.i.i.i.i ]
  %i.bx = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.by = icmp slt i64 %i.bd, %5
  br i1 %i.by, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.bz = sub i64 %5, %i.bd                       ; 3 uses
  %min.iters.check357 = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check357, label %.lr.ph84.i.i.i.i.preheader452, label %vector.ph358

vector.ph358:                                     ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec359 = and i64 %i.bz, -8                   ; 3 uses
  %i.ca = add i64 %i.bd, %n.vec359
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.sroa.0190.0244, i64 %i.bd
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next364, %vector.body360 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph358 ], [ %i.ce, %vector.body360 ]
  %vec.phi362 = phi <4 x i32> [ %broadcast.splat, %vector.ph358 ], [ %i.cf, %vector.body360 ]
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %index361 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !18
  %wide.load363 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !18
  %i.ce = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.cf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi362, <4 x i32> %wide.load363) ; 2 uses
  %index.next364 = add nuw i64 %index361, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.cg, label %middle.block365, label %vector.body360, !llvm.loop !71

middle.block365:                                  ; preds = %vector.body360
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ce, <4 x i32> %i.cf)
  %i.ch = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n366 = icmp eq i64 %i.bz, %n.vec359
  br i1 %cmp.n366, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader452

.lr.ph84.i.i.i.i.preheader452:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block365
  %.05582.i.i.i.i.ph = phi i64 [ %i.bd, %.lr.ph84.i.i.i.i.preheader ], [ %i.ca, %middle.block365 ]
  %.181.i.i.i.i.ph = phi i32 [ %i.bx, %.lr.ph84.i.i.i.i.preheader ], [ %i.ch, %middle.block365 ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader452, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.cl, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader452 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ck, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader452 ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %.05582.i.i.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.cj) ; 2 uses
  %i.cl = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cl, %5
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !72

bb.l:                                             ; preds = %._crit_edge
  %i.cm = load i32, ptr %.sroa.0190.0244, align 4, !tbaa !18 ; 3 uses
  %i.cn = icmp sgt i64 %5, 1
  br i1 %i.cn, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.co = add nsw i64 %5, -1                      ; 2 uses
  %min.iters.check369 = icmp ult i64 %5, 9
  br i1 %min.iters.check369, label %.lr.ph89.i.i.i.i.preheader448, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec371 = and i64 %i.co, -8                   ; 3 uses
  %i.cp = or disjoint i64 %n.vec371, 1
  %broadcast.splatinsert372 = insertelement <4 x i32> poison, i32 %i.cm, i64 0
  %broadcast.splat373 = shufflevector <4 x i32> %broadcast.splatinsert372, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph370
  %index375 = phi i64 [ 0, %vector.ph370 ], [ %index.next380, %vector.body374 ] ; 2 uses
  %vec.phi376 = phi <4 x i32> [ %broadcast.splat373, %vector.ph370 ], [ %i.ct, %vector.body374 ]
  %vec.phi377 = phi <4 x i32> [ %broadcast.splat373, %vector.ph370 ], [ %i.cu, %vector.body374 ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %index375 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %wide.load378 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !18
  %wide.load379 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !18
  %i.ct = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi376, <4 x i32> %wide.load378) ; 2 uses
  %i.cu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi377, <4 x i32> %wide.load379) ; 2 uses
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next380, %n.vec371
  br i1 %i.cv, label %middle.block381, label %vector.body374, !llvm.loop !73

middle.block381:                                  ; preds = %vector.body374
  %rdx.minmax382 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax382) ; 2 uses
  %cmp.n383 = icmp eq i64 %i.co, %n.vec371
  br i1 %cmp.n383, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader448

.lr.ph89.i.i.i.i.preheader448:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block381
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.cp, %middle.block381 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.cm, %.lr.ph89.i.i.i.i.preheader ], [ %i.cw, %middle.block381 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader448, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.da, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader448 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.cz, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader448 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %.087.i.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  %i.cz = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.cy) ; 2 uses
  %i.da = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.da, %5
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !74

bb.m:                                             ; preds = %bb.a
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.n:                                             ; preds = %bb.b
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.az

bb.o:                                             ; preds = %bb.c
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.lr.ph:                                           ; preds = %bb.r, %.lr.ph.preheader.new
  %.061267 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dx, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.r ]
  %i.de = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.061267
  %i.df = load i32, ptr %i.de, align 4, !tbaa !18
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18
  %i.dj = icmp eq i32 %i.di, 2147483647
  br i1 %i.dj, label %bb.p, label %.lr.ph.1

bb.p:                                             ; preds = %.lr.ph
  %i.dk = load ptr, ptr %9, align 8, !tbaa !21
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %.061267
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !18
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !18
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.p, %.lr.ph
  %i.dn = or disjoint i64 %.061267, 1             ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !18
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !18
  %i.dt = icmp eq i32 %i.ds, 2147483647
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.1
  %i.du = load ptr, ptr %9, align 8, !tbaa !21
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dn
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  store i32 %i.dw, ptr %i.dr, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.1
  %i.dx = add nuw i64 %.061267, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !75

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block365, %middle.block381, %bb.l, %bb.k
  %.3.i.i.i.i = phi i32 [ %i.cz, %.lr.ph89.i.i.i.i ], [ %i.cm, %bb.l ], [ %i.bx, %bb.k ], [ %i.cw, %middle.block381 ], [ %i.ch, %middle.block365 ], [ %i.ck, %.lr.ph84.i.i.i.i ] ; 7 uses
  %i.dy = add nsw i32 %.3.i.i.i.i, 1              ; 6 uses
  %i.dz = sext i32 %i.dy to i64                   ; 14 uses
  %i.ea = icmp eq i64 %7, 0
  %i.eb = icmp eq i32 %i.dy, 0                    ; 3 uses
  %or.cond.i.i.i.i = or i1 %i.ea, %i.eb
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.ec = sdiv i64 9223372036854775807, %i.dz
  %i.ed = icmp sgt i64 %7, %i.ec
  br i1 %i.ed, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.s, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.ee = mul nsw i64 %7, %i.dz                   ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.t, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread

bb.t:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.eg = icmp samesign ugt i64 %i.ee, 4611686018427387903
  br i1 %i.eg, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.t
  %i.eh = shl nuw i64 %i.ee, 2                    ; 3 uses
  %i.ei = call noalias ptr @malloc(i64 noundef %i.eh) #24 ; 7 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.invoke, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.t, %bb.s
  %i.ek = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ek, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %.invoke
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body103

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  %i.en = add i64 %i.eh, -4                       ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.en, 28
  br i1 %min.iters.check387, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader, label %vector.ph388

vector.ph388:                                     ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit
  %n.vec389 = and i64 %i.ep, 9223372036854775800  ; 3 uses
  %i.eq = shl i64 %n.vec389, 2
  %i.er = getelementptr i8, ptr %i.ei, i64 %i.eq
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next393, %vector.body390 ] ; 2 uses
  %i.es = shl i64 %index391, 2
  %next.gep392 = getelementptr i8, ptr %i.ei, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep392, align 4, !tbaa !18
  store <4 x i32> splat (i32 2147483647), ptr %i.et, align 4, !tbaa !18
  %index.next393 = add nuw i64 %index391, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next393, %n.vec389
  br i1 %i.eu, label %middle.block394, label %vector.body390, !llvm.loop !76

middle.block394:                                  ; preds = %vector.body390
  %cmp.n395 = icmp eq i64 %i.ep, %n.vec389
  br i1 %cmp.n395, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader:      ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit, %middle.block394
  %.06.i.i.i.i.i.i.i.i.i.i.i.i107.ph = phi ptr [ %i.ei, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit ], [ %i.er, %middle.block394 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106
  %.06.i.i.i.i.i.i.i.i.i.i.i.i107 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106 ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i107.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i107, align 4, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i107, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i108 = icmp eq ptr %i.ev, %i.em
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i108, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106, !llvm.loop !77

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106, %middle.block394, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %.sroa.0.0254 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %i.ei, %middle.block394 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106 ] ; 7 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0.0254, i64 %i.y ; 6 uses
  %i.ex = icmp sgt i32 %.3.i.i.i.i, -1            ; 2 uses
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader:      ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread
  %min.iters.check398 = icmp ugt i32 %i.dy, 7
  %ident.check.not = icmp eq i64 %7, 1
  %or.cond = and i1 %min.iters.check398, %ident.check.not
  br i1 %or.cond, label %vector.ph399, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447

vector.ph399:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader
  %n.vec400 = and i64 %i.dz, 2147483640           ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next403, %vector.body401 ] ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %index402 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x i32> zeroinitializer, ptr %i.ey, align 4, !tbaa !18
  store <4 x i32> zeroinitializer, ptr %i.ez, align 4, !tbaa !18
  %index.next403 = add nuw i64 %index402, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next403, %n.vec400
  br i1 %i.fa, label %middle.block404, label %vector.body401, !llvm.loop !78

middle.block404:                                  ; preds = %vector.body401
  %cmp.n405 = icmp eq i64 %n.vec400, %i.dz
  br i1 %cmp.n405, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader, %middle.block404
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader ], [ %n.vec400, %middle.block404 ] ; 3 uses
  %i.fb = zext nneg i32 %.3.i.i.i.i to i64        ; 2 uses
  %i.fc = add nuw nsw i64 %i.fb, 1
  %i.fd = sub nsw i64 %i.fb, %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter460 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod461.not = icmp eq i64 %xtraiter460, 0
  br i1 %lcmp.mod461.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447 ]
  %i.fe = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, %7
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fe
  store i32 0, ptr %i.ff, align 4, !tbaa !18
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter460
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol, !llvm.loop !79

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol ]
  %i.fh = icmp ult i64 %i.fd, 3
  br i1 %i.fh, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit ] ; 5 uses
  %i.fi = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, %7
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  store i32 0, ptr %i.fj, align 4, !tbaa !18
  %i.fk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.fl = mul nsw i64 %i.fk, %7
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fl
  store i32 0, ptr %i.fm, align 4, !tbaa !18
  %i.fn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.fo = mul nsw i64 %i.fn, %7
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fo
  store i32 0, ptr %i.fp, align 4, !tbaa !18
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fr = mul nsw i64 %i.fq, %7
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fr
  store i32 0, ptr %i.fs, align 4, !tbaa !18
  %i.ft = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ft, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109, !llvm.loop !80

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109, %middle.block404, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %13, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseImSaImEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %13, i64 noundef 0)
          to label %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit unwind label %bb.ar

_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit:    ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 7 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !39 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %.not.i.i = icmp eq ptr %i.fv, %i.fy
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit
  %i.fz = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.fz, ptr %i.fv, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !39
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

bb.w:                                             ; preds = %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !41
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit:     ; preds = %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge, %bb.v
  %i.gb = phi ptr [ %.pre, %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge ], [ %i.ga, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !41 ; 2 uses
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.gl = sext i32 %.3.i.i.i.i to i64             ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE:bb.a
  %i.mr = sub i64 %i.mq, %i.kc                    ; 3 uses
  %i.ms = icmp sgt i64 %i.mr, 8
  br i1 %i.ms, label %bb.aq, label %bb.ao, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.mt = icmp eq i64 %i.mr, 8
  br i1 %i.mt, label %bb.ap, label %.noexc138.us

bb.ap:                                            ; preds = %bb.ao
  %i.mu = load ptr, ptr %i.ka, align 8, !tbaa !46
  store ptr %i.mu, ptr %i.md, align 8, !tbaa !46
  br label %.noexc138.us

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.md, ptr nonnull align 8 %i.ka, i64 %i.mr, i1 false)
  br label %.noexc138.us

.noexc138.us:                                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us
  %.0.i.us = phi ptr [ %i.lo, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us ], [ %i.md, %bb.ap ], [ %i.md, %bb.aq ], [ %i.md, %bb.ao ], [ %i.md, %bb.am ], [ %i.md, %bb.ak ], [ %i.md, %bb.al ] ; 3 uses
  store ptr %.0.i.us, ptr %i.gh, align 8, !tbaa !45
  %i.mv = load ptr, ptr %.0.i.us, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mv, ptr %i.gg, align 8, !tbaa !47
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 512
  store ptr %i.mw, ptr %i.gf, align 8, !tbaa !48
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.ld
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -8 ; 2 uses
  store ptr %i.my, ptr %i.gi, align 8, !tbaa !45
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mz, ptr %i.gj, align 8, !tbaa !47
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 512
  store ptr %i.na, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us: ; preds = %.noexc138.us, %bb.ac
  %i.nb = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc112.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc112.us:                                     ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us
  %i.nc = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  store ptr %i.nb, ptr %i.nd, align 8, !tbaa !46
  %i.ne = load ptr, ptr %i.fu, align 8, !tbaa !39
  store i64 %i.hk, ptr %i.ne, align 8, !tbaa !19
  store ptr %i.nd, ptr %i.gi, align 8, !tbaa !45
  store ptr %i.nb, ptr %i.gj, align 8, !tbaa !47
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 512
  store ptr %i.nf, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split: ; preds = %bb.aa, %.noexc112.us
  %.sink = phi ptr [ %i.nb, %.noexc112.us ], [ %i.jy, %bb.aa ]
  store ptr %.sink, ptr %i.fu, align 8, !tbaa !39
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us: ; preds = %.critedge.i.us, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split
  %i.ng = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0174.0270.us) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.ng, %i.hf
  br i1 %.not.us, label %.loopexit.loopexit, label %.preheader.i.preheader.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block440
  %i.nh = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.hn
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !18 ; 4 uses
  %i.nj = trunc nuw i8 %i.hm to i1
  %i.nk = select i1 %i.nj, i32 -1, i32 1          ; 4 uses
  br i1 %or.cond445, label %vector.memcheck, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us
  %i.nl = sub i64 %i.hk, %i.gs
  %i.nm = shl i64 %i.nl, 2
  %i.nn = add i64 %i.nm, -1
  %diff.check = icmp ult i64 %i.nn, 31
  br i1 %diff.check, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert415 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat416 = shufflevector <4 x i32> %broadcast.splatinsert415, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next421, %vector.body417 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph411 ], [ %vec.ind.next, %vector.body417 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.no = getelementptr [4 x i8], ptr %i.hg, i64 %index418 ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 16
  %wide.load419 = load <4 x i32>, ptr %i.no, align 4, !tbaa !18
  %wide.load420 = load <4 x i32>, ptr %i.np, align 4, !tbaa !18
  %i.nq = getelementptr [4 x i8], ptr %i.ho, i64 %index418 ; 2 uses
  %i.nr = icmp eq <4 x i32> %broadcast.splat414, %vec.ind
  %i.ns = icmp eq <4 x i32> %broadcast.splat414, %step.add
  %i.nt = select <4 x i1> %i.nr, <4 x i32> %broadcast.splat416, <4 x i32> zeroinitializer
  %i.nu = select <4 x i1> %i.ns, <4 x i32> %broadcast.splat416, <4 x i32> zeroinitializer
  %i.nv = add nsw <4 x i32> %i.nt, %wide.load419
  %i.nw = add nsw <4 x i32> %i.nu, %wide.load420
  %i.nx = getelementptr i8, ptr %i.nq, i64 16
  store <4 x i32> %i.nv, ptr %i.nq, align 4, !tbaa !18
  store <4 x i32> %i.nw, ptr %i.nx, align 4, !tbaa !18
  %index.next421 = add nuw i64 %index418, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ny = icmp eq i64 %index.next421, %n.vec412
  br i1 %i.ny, label %middle.block422, label %vector.body417, !llvm.loop !86

middle.block422:                                  ; preds = %vector.body417
  br i1 %cmp.n423, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader: ; preds = %vector.memcheck, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, %middle.block422
  %.060268.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us ], [ %n.vec412, %middle.block422 ] ; 5 uses
  br i1 %lcmp.mod466.not.not, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %i.nz = mul nsw i64 %.060268.us.ph, %7          ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.hg, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !18
  %i.oc = getelementptr [4 x i8], ptr %i.ho, i64 %i.nz
  %i.od = trunc nuw nsw i64 %.060268.us.ph to i32
  %i.oe = icmp eq i32 %i.ni, %i.od
  %i.of = select i1 %i.oe, i32 %i.nk, i32 0
  %i.og = add nsw i32 %i.of, %i.ob
  store i32 %i.og, ptr %i.oc, align 4, !tbaa !18
  %i.oh = or disjoint i64 %.060268.us.ph, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %.060268.us.unr = phi i64 [ %.060268.us.ph, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader ], [ %i.oh, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol ]
  %i.oi = icmp eq i64 %.060268.us.ph, %i.gl
  br i1 %i.oi, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, %bb.w, %bb.at, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.noexc3.i.i, %.noexc.i.i, %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i118, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124, label %bb.ax

bb.ar:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
          to label %.noexc137 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137:                                        ; preds = %.split.us
  unreachable

.split273.us:                                     ; preds = %bb.ae
  %i.ol = icmp ugt i64 %i.li, 2305843009213693951
  br i1 %i.ol, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split273.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc140 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %.split273.us
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc141 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc3.i.i
  unreachable

._crit_edge276:                                   ; preds = %.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.om = shl nsw i64 %i.dz, 1                    ; 3 uses
  %or.cond.i.i = or i1 %.not283, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge276
  %i.on = sdiv i64 9223372036854775807, %i.om
  %i.oo = icmp sgt i64 %i.h, %i.on
  br i1 %i.oo, label %bb.at, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.op = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.op, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.op, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc114 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.at
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.as, %._crit_edge276
  %i.oq = mul nsw i64 %i.om, %i.h
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.oq, i64 noundef %i.h, i64 noundef %i.om)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  br i1 %.not283, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.or = load ptr, ptr %6, align 8, !tbaa !21
  %i.os = load ptr, ptr %8, align 8, !tbaa !26
  %i.ot = load i64, ptr %i.s, align 8, !tbaa !17
  br i1 %i.eb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ov = load ptr, ptr %10, align 8, !tbaa !26
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !17 ; 6 uses
  %14 = icmp eq i32 %.3.i.i.i.i, 0
  %unroll_iter471 = and i64 %i.dz, -2
  %i.ox = and i32 %.3.i.i.i.i, 1
  %lcmp.mod469.not.not = icmp eq i32 %i.ox, 0
  %lcmp.mod470 = trunc i32 %i.dy to i1
  br label %.lr.ph279

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split: ; preds = %._crit_edge280, %.lr.ph282, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.oy = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split
  %i.oz = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !44 ; 2 uses
  %i.pc = load ptr, ptr %i.oz, align 8, !tbaa !61 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = icmp ult ptr %i.pb, %i.pd
  br i1 %i.pe, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.au, %.lr.ph.i.i.i.i116
  %.06.i.i.i.i = phi ptr [ %i.pg, %.lr.ph.i.i.i.i116 ], [ %i.pb, %bb.au ] ; 3 uses
  %i.pf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef 512) #26
  %i.pg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ph = icmp ult ptr %.06.i.i.i.i, %i.pc
  br i1 %i.ph, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i116
  %.pre.i.i.i = load ptr, ptr %13, align 8, !tbaa !59
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.au
  %i.pi = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.oy, %bb.au ]
  %i.pj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !58
  %i.pl = shl i64 %i.pk, 3
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  call void @free(ptr noundef %.sroa.0190.0244) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.pm = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.pm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.pn = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pn, %i.pp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pu, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i ], [ %i.pn, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.pr)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.pu, %i.pp
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  %i.pv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pn, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.pw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !65
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qa) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 %i.f

.lr.ph279:                                        ; preds = %.lr.ph282.split, %._crit_edge280
  %.059281 = phi i64 [ 0, %.lr.ph282.split ], [ %i.qy, %._crit_edge280 ] ; 3 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.or, i64 %.059281
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !18
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [4 x i8], ptr %i.os, i64 %i.qd ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !18
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr [4 x i8], ptr %i.qe, i64 %i.ot
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !18
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qg ; 3 uses
  %i.ql = getelementptr [4 x i8], ptr %i.ov, i64 %.059281 ; 6 uses
  %i.qm = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qj ; 3 uses
  br i1 %14, label %.epil.preheader, label %.lr.ph279.new

._crit_edge280.unr-lcssa:                         ; preds = %.lr.ph279.new
  br i1 %lcmp.mod469.not.not, label %.epil.preheader, label %._crit_edge280

.epil.preheader:                                  ; preds = %._crit_edge280.unr-lcssa, %.lr.ph279
  %.0277.epil.init = phi i64 [ 0, %.lr.ph279 ], [ %16, %._crit_edge280.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod470)
  %i.qn = mul nsw i64 %.0277.epil.init, %7        ; 2 uses
  %i.qo = getelementptr [4 x i8], ptr %i.qk, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !18
  %i.qq = shl i64 %.0277.epil.init, 1             ; 2 uses
  %i.qr = mul nsw i64 %i.ow, %i.qq
  %i.qs = getelementptr [4 x i8], ptr %i.ql, i64 %i.qr
  store i32 %i.qp, ptr %i.qs, align 4, !tbaa !18
  %i.qt = getelementptr [4 x i8], ptr %i.qm, i64 %i.qn
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !18
  %i.qv = or disjoint i64 %i.qq, 1
  %i.qw = mul nsw i64 %i.ow, %i.qv
  %i.qx = getelementptr [4 x i8], ptr %i.ql, i64 %i.qw
  store i32 %i.qu, ptr %i.qx, align 4, !tbaa !18
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %._crit_edge280.unr-lcssa, %.epil.preheader
  %i.qy = add nuw i64 %.059281, 1                 ; 2 uses
  %exitcond294.not = icmp eq i64 %i.qy, %i.h
  br i1 %exitcond294.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph279, !llvm.loop !87

.lr.ph279.new:                                    ; preds = %.lr.ph279, %.lr.ph279.new
  %.0277 = phi i64 [ %16, %.lr.ph279.new ], [ 0, %.lr.ph279 ] ; 4 uses
  %niter472 = phi i64 [ %niter472.next.1, %.lr.ph279.new ], [ 0, %.lr.ph279 ]
  %i.qz = mul nsw i64 %.0277, %7                  ; 2 uses
  %i.ra = getelementptr [4 x i8], ptr %i.qk, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !18
  %i.rc = shl i64 %.0277, 1                       ; 2 uses
  %i.rd = mul nsw i64 %i.ow, %i.rc
  %i.re = getelementptr [4 x i8], ptr %i.ql, i64 %i.rd
  store i32 %i.rb, ptr %i.re, align 4, !tbaa !18
  %i.rf = getelementptr [4 x i8], ptr %i.qm, i64 %i.qz
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !18
  %i.rh = or disjoint i64 %i.rc, 1
  %i.ri = mul nsw i64 %i.ow, %i.rh
  %i.rj = getelementptr [4 x i8], ptr %i.ql, i64 %i.ri
  store i32 %i.rg, ptr %i.rj, align 4, !tbaa !18
  %15 = or disjoint i64 %.0277, 1                 ; 2 uses
  %i.rk = mul nsw i64 %15, %7                     ; 2 uses
  %i.rl = getelementptr [4 x i8], ptr %i.qk, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !18
  %i.rn = shl i64 %15, 1                          ; 2 uses
  %i.ro = mul nsw i64 %i.ow, %i.rn
  %i.rp = getelementptr [4 x i8], ptr %i.ql, i64 %i.ro
  store i32 %i.rm, ptr %i.rp, align 4, !tbaa !18
  %i.rq = getelementptr [4 x i8], ptr %i.qm, i64 %i.rk
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !18
  %i.rs = or disjoint i64 %i.rn, 1
  %i.rt = mul nsw i64 %i.ow, %i.rs
  %i.ru = getelementptr [4 x i8], ptr %i.ql, i64 %i.rt
  store i32 %i.rr, ptr %i.ru, align 4, !tbaa !18
  %16 = add nuw i64 %.0277, 2                     ; 2 uses
  %niter472.next.1 = add i64 %niter472, 2         ; 2 uses
  %niter472.ncmp.1 = icmp eq i64 %niter472.next.1, %unroll_iter471
  br i1 %niter472.ncmp.1, label %._crit_edge280.unr-lcssa, label %.lr.ph279.new, !llvm.loop !88

bb.ax:                                            ; preds = %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.rv = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.rw = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !44 ; 2 uses
  %i.ry = load ptr, ptr %i.rv, align 8, !tbaa !61 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = icmp ult ptr %i.rx, %i.rz
  br i1 %i.sa, label %.lr.ph.i.i.i.i120, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119

.lr.ph.i.i.i.i120:                                ; preds = %bb.ax, %.lr.ph.i.i.i.i120
  %.06.i.i.i.i121 = phi ptr [ %i.sc, %.lr.ph.i.i.i.i120 ], [ %i.rx, %bb.ax ] ; 3 uses
  %i.sb = load ptr, ptr %.06.i.i.i.i121, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef 512) #26
  %i.sc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i121, i64 8
  %i.sd = icmp ult ptr %.06.i.i.i.i121, %i.ry
  br i1 %i.sd, label %.lr.ph.i.i.i.i120, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122: ; preds = %.lr.ph.i.i.i.i120
  %.pre.i.i.i123 = load ptr, ptr %13, align 8, !tbaa !59
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122, %bb.ax
  %i.se = phi ptr [ %.pre.i.i.i123, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122 ], [ %i.oj, %bb.ax ]
  %i.sf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !58
  %i.sh = shl i64 %i.sg, 3
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124:       ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119, %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn87.pn.pn = phi { ptr, i32 } [ %i.ok, %bb.ar ], [ %lpad.loopexit.split-lp, %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  br label %.body103

.body103:                                         ; preds = %bb.u, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124
  %.pn94 = phi { ptr, i32 } [ %i.el, %bb.u ], [ %.pn87.pn.pn, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124 ]
  call void @free(ptr noundef %.sroa.0190.0244) #23
  br label %.body

.body:                                            ; preds = %.body103, %bb.f
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn94, %.body103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ay

bb.ay:                                            ; preds = %bb.o, %.body
  %.pn94.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.o ], [ %.pn94.pn.pn, %.body ]
  %i.si = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.si) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.n
  %.pn94.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn.pn, %bb.ay ], [ %i.dc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.m
  %.pn94.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn.pn.pn, %bb.az ], [ %i.db, %bb.m ]
  %i.sj = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i125 = icmp eq ptr %i.sj, %i.sl
  br i1 %.not4.i.i.i125, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132, label %.lr.ph.i.i.i126

.lr.ph.i.i.i126:                                  ; preds = %bb.ba, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128
  %.05.i.i.i127 = phi ptr [ %i.sq, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128 ], [ %i.sj, %bb.ba ] ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.05.i.i.i127, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i127, ptr noundef %i.sn)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128 unwind label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i126
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128: ; preds = %.lr.ph.i.i.i126
  %i.sq = getelementptr inbounds nuw i8, ptr %.05.i.i.i127, i64 48 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.sq, %i.sl
  br i1 %.not.i.i.i129, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130, label %.lr.ph.i.i.i126, !llvm.loop !3

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128
  %.pr.i131 = load ptr, ptr %11, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130, %bb.ba
  %i.sr = phi ptr [ %.pr.i131, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130 ], [ %i.sj, %bb.ba ] ; 3 uses
  %.not.i.i1.i133 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i1.i133, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit134, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132
  %i.ss = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !65
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.sr to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef %i.sw) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit134

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit134: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  resume { ptr, i32 } %.pn94.pn.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN3igl33piecewise_constant_winding_numberIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEbRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN3igl8copyleft4cgal14cell_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EEmRSt6vectorISt3setISt5tupleIJNS7_6ScalarEbmEESt4lessISF_ESaISF_EESaISJ_EE(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix") align 8 %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %thread-pre-split.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef 1)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %thread-pre-split.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !66 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.e = icmp sgt i64 %.pr.i.i.i.i.i.i, 0
  br i1 %i.e, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.c
  %min.iters.check162 = icmp ult i64 %.pr.i.i.i.i.i.i, 8
  br i1 %min.iters.check162, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174, label %vector.ph163

vector.ph163:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader
  %n.vec164 = and i64 %.pr.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next169, %vector.body165 ] ; 2 uses
  %vec.ind167 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph163 ], [ %vec.ind.next170, %vector.body165 ] ; 3 uses
  %step.add168 = add <4 x i32> %vec.ind167, splat (i32 4)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index166 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind167, ptr %i.f, align 4, !tbaa !18
  store <4 x i32> %step.add168, ptr %i.g, align 4, !tbaa !18
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %vec.ind.next170 = add <4 x i32> %vec.ind167, splat (i32 8)
  %i.h = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.h, label %middle.block171, label %vector.body165, !llvm.loop !89

middle.block171:                                  ; preds = %vector.body165
  %cmp.n172 = icmp eq i64 %.pr.i.i.i.i.i.i, %n.vec164
  br i1 %cmp.n172, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, %middle.block171
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader ], [ %n.vec164, %middle.block171 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.k, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader174 ] ; 3 uses
  %i.i = trunc i64 %.05.i.i.i.i.i.i.i to i32
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.05.i.i.i.i.i.i.i
  store i32 %i.i, ptr %i.j, align 4, !tbaa !18
  %i.k = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.k, %.pr.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, !llvm.loop !90

bb.d:                                             ; preds = %bb.a
  %i.l = load i32, ptr %3, align 4, !tbaa !18     ; 6 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !18     ; 8 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = sub nsw i32 %i.m, %i.l                   ; 4 uses
  %i.p = icmp sgt i64 %1, 1
  br i1 %i.p, label %bb.f, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = icmp samesign ugt i64 %1, %i.s
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit: ; preds = %bb.e, %bb.f
  %i.u = phi i1 [ false, %bb.e ], [ %i.t, %bb.f ]
  %i.v = icmp eq i64 %1, 1
  %i.w = select i1 %i.v, i32 %i.o, i32 0          ; 6 uses
  %i.x = sub nsw i32 %i.o, %i.w                   ; 3 uses
  %.not.i.i.i13 = icmp slt i32 %i.o, %i.w
  %i.y = sub nsw i64 0, %1
  %i.z = select i1 %.not.i.i.i13, i64 %i.y, i64 %1
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.x, %i.aa
  %i.ac = tail call noundef i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.ad = tail call i64 @llvm.smax.i64(i64 %1, i64 2)
  %i.ae = trunc i64 %i.ad to i32
  %i.af = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ae, i64 1
  %i.ah = add <2 x i32> %i.ag, <i32 1, i32 -1>
  %i.ai = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.x, i64 1
  %i.ak = sdiv <2 x i32> %i.aj, %i.ah             ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i17 = icmp eq i64 %i.am, %1
  br i1 %.not.i.i.i.i.i.i.i17, label %bb.g, label %thread-pre-split.i.i.i.i.i.i18

thread-pre-split.i.i.i.i.i.i18:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %.noexc.i.i19 unwind label %common.resume

.noexc.i.i19:                                     ; preds = %thread-pre-split.i.i.i.i.i.i18
  %.pr.i.i.i.i.i.i20 = load i64, ptr %i.al, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i.i19, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.an = phi i64 [ %.pr.i.i.i.i.i.i20, %.noexc.i.i19 ], [ %1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS6_12linspaced_opIiEES2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i ] ; 9 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.ap = icmp sgt i64 %i.an, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i21, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i21:                           ; preds = %bb.g
  br i1 %i.u, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %min.iters.check125 = icmp ult i64 %i.an, 8
  br i1 %min.iters.check125, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177, label %vector.ph126

vector.ph126:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader
  %n.vec127 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %broadcast.splat129 = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert132 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat133 = shufflevector <4 x i32> %broadcast.splatinsert132, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph126
  %index135 = phi i64 [ 0, %vector.ph126 ], [ %index.next138, %vector.body134 ] ; 2 uses
  %vec.ind136 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph126 ], [ %vec.ind.next139, %vector.body134 ] ; 3 uses
  %step.add137 = add <4 x i32> %vec.ind136, splat (i32 4)
  %i.aq = mul <4 x i32> %broadcast.splat129, %vec.ind136
  %i.ar = mul <4 x i32> %broadcast.splat129, %step.add137
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index135 ; 2 uses
  %i.at = add <4 x i32> %broadcast.splat131, %i.aq
  %i.au = add <4 x i32> %broadcast.splat131, %i.ar
  %i.av = sub <4 x i32> %broadcast.splat133, %i.at
  %i.aw = sub <4 x i32> %broadcast.splat133, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %i.av, ptr %i.as, align 4, !tbaa !18
  store <4 x i32> %i.aw, ptr %i.ax, align 4, !tbaa !18
  %index.next138 = add nuw i64 %index135, 8       ; 2 uses
  %vec.ind.next139 = add <4 x i32> %vec.ind136, splat (i32 8)
  %i.ay = icmp eq i64 %index.next138, %n.vec127
  br i1 %i.ay, label %middle.block140, label %vector.body134, !llvm.loop !91

middle.block140:                                  ; preds = %vector.body134
  %cmp.n141 = icmp eq i64 %i.an, %n.vec127
  br i1 %cmp.n141, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader, %middle.block140
  %.06.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader ], [ %n.vec127, %middle.block140 ]
  %i.az = extractelement <2 x i32> %i.ak, i64 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i21
  %min.iters.check144 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check144, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader175, label %vector.ph145

vector.ph145:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader
  %n.vec146 = and i64 %i.an, 9223372036854775804  ; 3 uses
  %broadcast.splat148 = shufflevector <2 x i32> %i.ak, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat150 = shufflevector <4 x i32> %broadcast.splatinsert149, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph145
  %index154 = phi i64 [ 0, %vector.ph145 ], [ %index.next156, %vector.body153 ] ; 2 uses
  %vec.ind155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph145 ], [ %vec.ind.next157, %vector.body153 ] ; 2 uses
  %i.ba = sdiv <4 x i32> %vec.ind155, %broadcast.splat148
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index154
  %i.bc = add <4 x i32> %broadcast.splat150, %i.ba
  %i.bd = sub <4 x i32> %broadcast.splat152, %i.bc
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !18
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %vec.ind.next157 = add <4 x i32> %vec.ind155, splat (i32 4)
  %i.be = icmp eq i64 %index.next156, %n.vec146
  br i1 %i.be, label %middle.block158, label %vector.body153, !llvm.loop !92

middle.block158:                                  ; preds = %vector.body153
  %cmp.n159 = icmp eq i64 %i.an, %n.vec146
  br i1 %cmp.n159, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader175

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader175: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader, %middle.block158
  %.06.us.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader ], [ %n.vec146, %middle.block158 ]
  %i.bf = extractelement <2 x i32> %i.ak, i64 0
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader175, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i
  %.06.us.i.i.i.i.i.i.i = phi i64 [ %i.bl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i ], [ %.06.us.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.preheader175 ] ; 3 uses
  %i.bg = trunc i64 %.06.us.i.i.i.i.i.i.i to i32
  %i.bh = sdiv i32 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.06.us.i.i.i.i.i.i.i
  %i.bj = add i32 %i.w, %i.bh
  %i.bk = sub i32 %i.m, %i.bj
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !18
  %i.bl = add nuw nsw i64 %.06.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond8.not.i.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.an
  br i1 %exitcond8.not.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i, !llvm.loop !93

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi i64 [ %i.br, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.preheader177 ] ; 3 uses
  %i.bm = trunc i64 %.06.i.i.i.i.i.i.i to i32
  %i.bn = mul i32 %i.az, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.06.i.i.i.i.i.i.i
  %i.bp = add i32 %i.w, %i.bn
  %i.bq = sub i32 %i.m, %i.bp
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !18
  %i.br = add nuw nsw i64 %.06.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i22 = icmp eq i64 %i.br, %i.an
  br i1 %exitcond.not.i.i.i.i.i.i.i22, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, !llvm.loop !94

bb.h:                                             ; preds = %bb.d
  %i.bs = icmp sgt i64 %1, 1
  br i1 %i.bs, label %bb.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29

bb.i:                                             ; preds = %bb.h
  %i.bt = sub nsw i32 %i.l, %i.m
  %i.bu = tail call noundef i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = icmp samesign ugt i64 %1, %i.bw
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29: ; preds = %bb.h, %bb.i
  %i.by = phi i1 [ false, %bb.h ], [ %i.bx, %bb.i ]
  %i.bz = icmp eq i64 %1, 1
  %i.ca = select i1 %i.bz, i32 %i.l, i32 %i.m     ; 6 uses
  %i.cb = sub nsw i32 %i.l, %i.ca                 ; 3 uses
  %.not.i.i.i25 = icmp slt i32 %i.l, %i.ca
  %i.cc = sub nsw i64 0, %1
  %i.cd = select i1 %.not.i.i.i25, i64 %i.cc, i64 %1
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = add i32 %i.cb, %i.ce
  %i.cg = tail call noundef i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.ch = tail call i64 @llvm.smax.i64(i64 %1, i64 2)
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %i.ck = insertelement <2 x i32> %i.cj, i32 %i.ci, i64 1
  %i.cl = add <2 x i32> %i.ck, <i32 1, i32 -1>
  %i.cm = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.cn = insertelement <2 x i32> %i.cm, i32 %i.cb, i64 1
  %i.co = sdiv <2 x i32> %i.cn, %i.cl             ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30 unwind label %common.resume

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !66
  %.not.i.i.i.i.i.i.i38 = icmp eq i64 %i.cq, %1
  br i1 %.not.i.i.i.i.i.i.i38, label %bb.j, label %thread-pre-split.i.i.i.i.i.i39

thread-pre-split.i.i.i.i.i.i39:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef 1)
          to label %.noexc.i.i40 unwind label %common.resume

.noexc.i.i40:                                     ; preds = %thread-pre-split.i.i.i.i.i.i39
  %.pr.i.i.i.i.i.i41 = load i64, ptr %i.cp, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %.noexc.i.i40, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30
  %i.cr = phi i64 [ %.pr.i.i.i.i.i.i41, %.noexc.i.i40 ], [ %1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i30 ] ; 9 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.ct = icmp sgt i64 %i.cr, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i.i42, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i42:                           ; preds = %bb.j
  br i1 %i.by, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i42
  %min.iters.check = icmp ult i64 %i.cr, 8
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %broadcast.splat = shufflevector <2 x i32> %i.co, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cu = mul nsw <4 x i32> %broadcast.splat, %vec.ind
  %i.cv = mul nsw <4 x i32> %broadcast.splat, %step.add
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.cx = add nsw <4 x i32> %i.cu, %broadcast.splat107
  %i.cy = add nsw <4 x i32> %i.cv, %broadcast.splat107
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %i.cx, ptr %i.cw, align 4, !tbaa !18
  store <4 x i32> %i.cy, ptr %i.cz, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader, %middle.block
  %.05.i.i.i.i.i.i.i44.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader ], [ %n.vec, %middle.block ]
  %i.db = extractelement <2 x i32> %i.co, i64 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i42
  %min.iters.check109 = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check109, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179, label %vector.ph110

vector.ph110:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader
  %n.vec111 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %broadcast.splat113 = shufflevector <2 x i32> %i.co, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph110
  %index117 = phi i64 [ 0, %vector.ph110 ], [ %index.next119, %vector.body116 ] ; 2 uses
  %vec.ind118 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph110 ], [ %vec.ind.next120, %vector.body116 ] ; 2 uses
  %i.dc = sdiv <4 x i32> %vec.ind118, %broadcast.splat113
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index117
  %i.de = add nsw <4 x i32> %i.dc, %broadcast.splat115
  store <4 x i32> %i.de, ptr %i.dd, align 4, !tbaa !18
  %index.next119 = add nuw i64 %index117, 4       ; 2 uses
  %vec.ind.next120 = add <4 x i32> %vec.ind118, splat (i32 4)
  %i.df = icmp eq i64 %index.next119, %n.vec111
  br i1 %i.df, label %middle.block121, label %vector.body116, !llvm.loop !96

middle.block121:                                  ; preds = %vector.body116
  %cmp.n122 = icmp eq i64 %i.cr, %n.vec111
  br i1 %cmp.n122, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader, %middle.block121
  %.05.us.i.i.i.i.i.i.i47.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader ], [ %n.vec111, %middle.block121 ]
  %i.dg = extractelement <2 x i32> %i.co, i64 0
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46
  %.05.us.i.i.i.i.i.i.i47 = phi i64 [ %i.dl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46 ], [ %.05.us.i.i.i.i.i.i.i47.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46.preheader179 ] ; 3 uses
  %i.dh = trunc i64 %.05.us.i.i.i.i.i.i.i47 to i32
  %i.di = sdiv i32 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.05.us.i.i.i.i.i.i.i47
  %i.dk = add nsw i32 %i.di, %i.ca
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !18
  %i.dl = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i47, 1 ; 2 uses
  %exitcond7.not.i.i.i.i.i.i.i48 = icmp eq i64 %i.dl, %i.cr
  br i1 %exitcond7.not.i.i.i.i.i.i.i48, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46, !llvm.loop !97

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43
  %.05.i.i.i.i.i.i.i44 = phi i64 [ %i.dq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43 ], [ %.05.i.i.i.i.i.i.i44.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43.preheader181 ] ; 3 uses
  %i.dm = trunc i64 %.05.i.i.i.i.i.i.i44 to i32
  %i.dn = mul nsw i32 %i.db, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.05.i.i.i.i.i.i.i44
  %i.dp = add nsw i32 %i.dn, %i.ca
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !18
  %i.dq = add nuw nsw i64 %.05.i.i.i.i.i.i.i44, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i45 = icmp eq i64 %i.dq, %i.cr
  br i1 %exitcond.not.i.i.i.i.i.i.i45, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43, !llvm.loop !98

common.resume:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit, %thread-pre-split.i.i.i.i.i.i18, %bb.b, %thread-pre-split.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i39, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE9LinSpacedElRKiS5_.exit29
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ds) #23
  resume { ptr, i32 } %i.dr

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i43, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i46, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_13CwiseBinaryOpINS0_20scalar_difference_opIiiEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEKNS_12ArrayWrapperIKNS9_INS0_12linspaced_opIiEES4_EEEEEEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES4_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i, %middle.block, %middle.block121, %middle.block140, %middle.block158, %middle.block171, %bb.g, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i, %bb.j, %bb.c
  ret void
}

declare void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6, i64 noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::vector", align 8      ; 14 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.std::queue", align 8       ; 28 uses
  %i.f = tail call noundef zeroext i1 @_ZN3igl33piecewise_constant_winding_numberIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEbRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl8copyleft4cgal14cell_adjacencyIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EEmRSt6vectorISt3setISt5tupleIJNS7_6ScalarEbmEESt4lessISF_ESaISF_EESaISJ_EE(ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.d, align 4, !tbaa !18
  invoke void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 8 %12, i64 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19
  %i.l = load ptr, ptr %6, align 8, !tbaa !21     ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = sext i32 %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.p = load i8, ptr %i.b, align 1, !tbaa !23, !range !24, !noundef !25
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load ptr, ptr %8, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = mul nuw nsw i64 %i.t, %i.q
  %i.v = getelementptr [4 x i8], ptr %i.r, i64 %i.o
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  store i64 %i.y, ptr %i.e, align 8, !tbaa !19
  %i.z = icmp sgt i64 %5, 0
  br i1 %i.z, label %bb.e, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp samesign ugt i64 %5, 4611686018427387903
  br i1 %i.aa, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ab = shl nuw i64 %5, 2                       ; 3 uses
  %i.ac = call noalias ptr @malloc(i64 noundef %i.ab) #24 ; 7 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.invoke.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2ImEERKT_.exit

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.e
  %i.ae = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ae, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont.i unwind label %bb.f

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.f:                                             ; preds = %.invoke.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2ImEERKT_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  %i.ah = add i64 %i.ab, -4                       ; 2 uses
  %i.ai = lshr exact i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2ImEERKT_.exit
  %n.vec = and i64 %i.aj, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2
  %i.al = getelementptr i8, ptr %i.ac, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !18
  store <4 x i32> splat (i32 2147483647), ptr %i.an, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2ImEERKT_.exit, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2ImEERKT_.exit ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ag
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !100

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.d
  %.sroa.0190.0244 = phi ptr [ null, %bb.d ], [ %i.ac, %middle.block ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 16 uses
  %.not283 = icmp eq i64 %i.h, 0                  ; 3 uses
  br i1 %.not283, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %xtraiter = and i64 %i.h, 1
  %i.aq = icmp eq i64 %i.h, 1
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.061267.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod459 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod459)
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.061267.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = icmp eq i32 %i.av, 2147483647
  br i1 %i.aw, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.ax = load ptr, ptr %9, align 8, !tbaa !21
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %.061267.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !18
  store i32 %i.az, ptr %i.au, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.lr.ph.epil.preheader, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %i.ba = sdiv i64 %5, 8
  %i.bb = shl nsw i64 %i.ba, 3                    ; 3 uses
  %i.bc = sdiv i64 %5, 4
  %i.bd = shl nsw i64 %i.bc, 2                    ; 6 uses
  %.off.i.i.i.i = add i64 %5, 3
  %.not.i.i.i.i102 = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i102, label %bb.l, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.be = load <4 x i32>, ptr %.sroa.0190.0244, align 16, !tbaa !32 ; 3 uses
  %i.bf = icmp sgt i64 %5, 7
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0190.0244, i64 16
  %i.bh = load <4 x i32>, ptr %i.bg, align 16, !tbaa !32 ; 2 uses
  %i.bi = icmp samesign ugt i64 %5, 15
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.bh, %bb.i ], [ %i.bs, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.be, %bb.i ], [ %i.bo, %.lr.ph.i.i.i.i ]
  %i.bj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.bk = icmp sgt i64 %i.bd, %i.bb
  br i1 %i.bk, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.i ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.i ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.be, %bb.i ]
  %i.bl = phi <4 x i32> [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.bh, %bb.i ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %.05779.i.i.i.i
  %i.bn = load <4 x i32>, ptr %i.bm, align 16, !tbaa !32
  %i.bo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.bn) ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %.057.in78.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load <4 x i32>, ptr %i.bq, align 16, !tbaa !32
  %i.bs = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bl, <4 x i32> %i.br) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.bt = icmp slt i64 %.057.i.i.i.i, %i.bb
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %i.bb
  %i.bv = load <4 x i32>, ptr %i.bu, align 16, !tbaa !32
  %i.bw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bv)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.be, %bb.h ], [ %i.bw, %bb.j ], [ %i.bj, %._crit_edge.i.i.i.i ]
  %i.bx = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.by = icmp slt i64 %i.bd, %5
  br i1 %i.by, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.bz = sub i64 %5, %i.bd                       ; 3 uses
  %min.iters.check357 = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check357, label %.lr.ph84.i.i.i.i.preheader452, label %vector.ph358

vector.ph358:                                     ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec359 = and i64 %i.bz, -8                   ; 3 uses
  %i.ca = add i64 %i.bd, %n.vec359
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.sroa.0190.0244, i64 %i.bd
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next364, %vector.body360 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph358 ], [ %i.ce, %vector.body360 ]
  %vec.phi362 = phi <4 x i32> [ %broadcast.splat, %vector.ph358 ], [ %i.cf, %vector.body360 ]
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %index361 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !18
  %wide.load363 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !18
  %i.ce = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.cf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi362, <4 x i32> %wide.load363) ; 2 uses
  %index.next364 = add nuw i64 %index361, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.cg, label %middle.block365, label %vector.body360, !llvm.loop !101

middle.block365:                                  ; preds = %vector.body360
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ce, <4 x i32> %i.cf)
  %i.ch = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n366 = icmp eq i64 %i.bz, %n.vec359
  br i1 %cmp.n366, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader452

.lr.ph84.i.i.i.i.preheader452:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block365
  %.05582.i.i.i.i.ph = phi i64 [ %i.bd, %.lr.ph84.i.i.i.i.preheader ], [ %i.ca, %middle.block365 ]
  %.181.i.i.i.i.ph = phi i32 [ %i.bx, %.lr.ph84.i.i.i.i.preheader ], [ %i.ch, %middle.block365 ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader452, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.cl, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader452 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ck, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader452 ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %.05582.i.i.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.cj) ; 2 uses
  %i.cl = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cl, %5
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !102

bb.l:                                             ; preds = %._crit_edge
  %i.cm = load i32, ptr %.sroa.0190.0244, align 4, !tbaa !18 ; 3 uses
  %i.cn = icmp sgt i64 %5, 1
  br i1 %i.cn, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.co = add nsw i64 %5, -1                      ; 2 uses
  %min.iters.check369 = icmp ult i64 %5, 9
  br i1 %min.iters.check369, label %.lr.ph89.i.i.i.i.preheader448, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec371 = and i64 %i.co, -8                   ; 3 uses
  %i.cp = or disjoint i64 %n.vec371, 1
  %broadcast.splatinsert372 = insertelement <4 x i32> poison, i32 %i.cm, i64 0
  %broadcast.splat373 = shufflevector <4 x i32> %broadcast.splatinsert372, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph370
  %index375 = phi i64 [ 0, %vector.ph370 ], [ %index.next380, %vector.body374 ] ; 2 uses
  %vec.phi376 = phi <4 x i32> [ %broadcast.splat373, %vector.ph370 ], [ %i.ct, %vector.body374 ]
  %vec.phi377 = phi <4 x i32> [ %broadcast.splat373, %vector.ph370 ], [ %i.cu, %vector.body374 ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %index375 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %wide.load378 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !18
  %wide.load379 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !18
  %i.ct = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi376, <4 x i32> %wide.load378) ; 2 uses
  %i.cu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi377, <4 x i32> %wide.load379) ; 2 uses
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next380, %n.vec371
  br i1 %i.cv, label %middle.block381, label %vector.body374, !llvm.loop !103

middle.block381:                                  ; preds = %vector.body374
  %rdx.minmax382 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax382) ; 2 uses
  %cmp.n383 = icmp eq i64 %i.co, %n.vec371
  br i1 %cmp.n383, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader448

.lr.ph89.i.i.i.i.preheader448:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block381
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.cp, %middle.block381 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.cm, %.lr.ph89.i.i.i.i.preheader ], [ %i.cw, %middle.block381 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader448, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.da, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader448 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.cz, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader448 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0190.0244, i64 %.087.i.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  %i.cz = call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.cy) ; 2 uses
  %i.da = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.da, %5
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !104

bb.m:                                             ; preds = %bb.a
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.n:                                             ; preds = %bb.b
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.az

bb.o:                                             ; preds = %bb.c
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.lr.ph:                                           ; preds = %bb.r, %.lr.ph.preheader.new
  %.061267 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dx, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.r ]
  %i.de = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.061267
  %i.df = load i32, ptr %i.de, align 4, !tbaa !18
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18
  %i.dj = icmp eq i32 %i.di, 2147483647
  br i1 %i.dj, label %bb.p, label %.lr.ph.1

bb.p:                                             ; preds = %.lr.ph
  %i.dk = load ptr, ptr %9, align 8, !tbaa !21
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %.061267
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !18
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !18
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.p, %.lr.ph
  %i.dn = or disjoint i64 %.061267, 1             ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !18
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !18
  %i.dt = icmp eq i32 %i.ds, 2147483647
  br i1 %i.dt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.1
  %i.du = load ptr, ptr %9, align 8, !tbaa !21
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dn
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !18
  store i32 %i.dw, ptr %i.dr, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.1
  %i.dx = add nuw i64 %.061267, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !105

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block365, %middle.block381, %bb.l, %bb.k
  %.3.i.i.i.i = phi i32 [ %i.cz, %.lr.ph89.i.i.i.i ], [ %i.cm, %bb.l ], [ %i.bx, %bb.k ], [ %i.cw, %middle.block381 ], [ %i.ch, %middle.block365 ], [ %i.ck, %.lr.ph84.i.i.i.i ] ; 7 uses
  %i.dy = add nsw i32 %.3.i.i.i.i, 1              ; 6 uses
  %i.dz = sext i32 %i.dy to i64                   ; 14 uses
  %i.ea = icmp eq i64 %7, 0
  %i.eb = icmp eq i32 %i.dy, 0                    ; 3 uses
  %or.cond.i.i.i.i = or i1 %i.ea, %i.eb
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.ec = sdiv i64 9223372036854775807, %i.dz
  %i.ed = icmp sgt i64 %7, %i.ec
  br i1 %i.ed, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.s, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit
  %i.ee = mul nsw i64 %7, %i.dz                   ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.t, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread

bb.t:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.eg = icmp samesign ugt i64 %i.ee, 4611686018427387903
  br i1 %i.eg, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.t
  %i.eh = shl nuw i64 %i.ee, 2                    ; 3 uses
  %i.ei = call noalias ptr @malloc(i64 noundef %i.eh) #24 ; 7 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.invoke, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.t, %bb.s
  %i.ek = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ek, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %.invoke
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body103

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  %i.en = add i64 %i.eh, -4                       ; 2 uses
  %i.eo = lshr exact i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.en, 28
  br i1 %min.iters.check387, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader, label %vector.ph388

vector.ph388:                                     ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit
  %n.vec389 = and i64 %i.ep, 9223372036854775800  ; 3 uses
  %i.eq = shl i64 %n.vec389, 2
  %i.er = getelementptr i8, ptr %i.ei, i64 %i.eq
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next393, %vector.body390 ] ; 2 uses
  %i.es = shl i64 %index391, 2
  %next.gep392 = getelementptr i8, ptr %i.ei, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep392, align 4, !tbaa !18
  store <4 x i32> splat (i32 2147483647), ptr %i.et, align 4, !tbaa !18
  %index.next393 = add nuw i64 %index391, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next393, %n.vec389
  br i1 %i.eu, label %middle.block394, label %vector.body390, !llvm.loop !106

middle.block394:                                  ; preds = %vector.body390
  %cmp.n395 = icmp eq i64 %i.ep, %n.vec389
  br i1 %cmp.n395, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader:      ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit, %middle.block394
  %.06.i.i.i.i.i.i.i.i.i.i.i.i107.ph = phi ptr [ %i.ei, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit ], [ %i.er, %middle.block394 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106
  %.06.i.i.i.i.i.i.i.i.i.i.i.i107 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106 ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i107.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i107, align 4, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i107, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i108 = icmp eq ptr %i.ev, %i.em
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i108, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106, !llvm.loop !107

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106, %middle.block394, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %.sroa.0.0254 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ], [ %i.ei, %middle.block394 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i106 ] ; 7 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0.0254, i64 %i.y ; 6 uses
  %i.ex = icmp sgt i32 %.3.i.i.i.i, -1            ; 2 uses
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader:      ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread
  %min.iters.check398 = icmp ugt i32 %i.dy, 7
  %ident.check.not = icmp eq i64 %7, 1
  %or.cond = and i1 %min.iters.check398, %ident.check.not
  br i1 %or.cond, label %vector.ph399, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447

vector.ph399:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader
  %n.vec400 = and i64 %i.dz, 2147483640           ; 3 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph399
  %index402 = phi i64 [ 0, %vector.ph399 ], [ %index.next403, %vector.body401 ] ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %index402 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <4 x i32> zeroinitializer, ptr %i.ey, align 4, !tbaa !18
  store <4 x i32> zeroinitializer, ptr %i.ez, align 4, !tbaa !18
  %index.next403 = add nuw i64 %index402, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next403, %n.vec400
  br i1 %i.fa, label %middle.block404, label %vector.body401, !llvm.loop !108

middle.block404:                                  ; preds = %vector.body401
  %cmp.n405 = icmp eq i64 %n.vec400, %i.dz
  br i1 %cmp.n405, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader, %middle.block404
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader ], [ %n.vec400, %middle.block404 ] ; 3 uses
  %i.fb = zext nneg i32 %.3.i.i.i.i to i64        ; 2 uses
  %i.fc = add nuw nsw i64 %i.fb, 1
  %i.fd = sub nsw i64 %i.fb, %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter460 = and i64 %i.fc, 3                 ; 2 uses
  %lcmp.mod461.not = icmp eq i64 %xtraiter460, 0
  br i1 %lcmp.mod461.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447 ]
  %i.fe = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, %7
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fe
  store i32 0, ptr %i.ff, align 4, !tbaa !18
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter460
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol, !llvm.loop !109

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.preheader447 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol ]
  %i.fh = icmp ult i64 %i.fd, 3
  br i1 %i.fh, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109 ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit ] ; 5 uses
  %i.fi = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, %7
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  store i32 0, ptr %i.fj, align 4, !tbaa !18
  %i.fk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.fl = mul nsw i64 %i.fk, %7
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fl
  store i32 0, ptr %i.fm, align 4, !tbaa !18
  %i.fn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.fo = mul nsw i64 %i.fn, %7
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fo
  store i32 0, ptr %i.fp, align 4, !tbaa !18
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fr = mul nsw i64 %i.fq, %7
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fr
  store i32 0, ptr %i.fs, align 4, !tbaa !18
  %i.ft = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ft, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109, !llvm.loop !110

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i109, %middle.block404, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImmEERKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %13, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseImSaImEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %13, i64 noundef 0)
          to label %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit unwind label %bb.ar

_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit:    ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 7 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !39 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %.not.i.i = icmp eq ptr %i.fv, %i.fy
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit
  %i.fz = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.fz, ptr %i.fv, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !39
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

bb.w:                                             ; preds = %_ZNSt5queueImSt5dequeImSaImEEEC2IS2_vEEv.exit
  invoke void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge: ; preds = %bb.w
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !41
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit:     ; preds = %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge, %bb.v
  %i.gb = phi ptr [ %.pre, %._ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit_crit_edge ], [ %i.ga, %bb.v ]
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !41 ; 2 uses
  %i.ge = icmp eq ptr %i.gb, %i.gd
  br i1 %i.ge, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.gl = sext i32 %.3.i.i.i.i to i64             ; 3 uses
  %i.gm = add nsw i64 %i.gl, 1
  %min.iters.check430 = icmp ugt i32 %i.dy, 7
  %ident.check426.not = icmp eq i64 %7, 1
  %or.cond444 = and i1 %min.iters.check430, %ident.check426.not
  %n.vec434 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n441 = icmp eq i64 %n.vec434, %i.dz
  %xtraiter462 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  %min.iters.check410 = icmp ugt i32 %i.dy, 7
  %ident.check408.not = icmp eq i64 %7, 1
  %or.cond445 = and i1 %min.iters.check410, %ident.check408.not
  %n.vec412 = and i64 %i.dz, 2147483640           ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec412, %i.dz
  %i.gn = and i32 %.3.i.i.i.i, 1
  %lcmp.mod466.not.not = icmp eq i32 %i.gn, 0
  br label %bb.x

.loopexit.loopexit:                               ; preds = %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.pre295 = load ptr, ptr %i.gc, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph271, %.loopexit.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.go = phi ptr [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ], [ %.pre295, %.loopexit.loopexit ], [ %storemerge.i.i, %.lr.ph271 ] ; 2 uses
  %i.gp = load ptr, ptr %i.fu, align 8, !tbaa !41
  %i.gq = icmp eq ptr %i.gp, %i.go
  br i1 %i.gq, label %._crit_edge276, label %bb.x, !llvm.loop !111

bb.x:                                             ; preds = %.lr.ph275, %.loopexit
  %i.gr = phi ptr [ %i.gd, %.lr.ph275 ], [ %i.go, %.loopexit ] ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !19 ; 4 uses
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !42
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  %.not.i.i110 = icmp eq ptr %i.gr, %i.gu
  br i1 %.not.i.i110, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.z:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !43
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef 512) #26
  %i.gx = load ptr, ptr %i.gh, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.gy, ptr %i.gh, align 8, !tbaa !45
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !46 ; 3 uses
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !47
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 512
  store ptr %i.ha, ptr %i.gf, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi ptr [ %i.gv, %bb.y ], [ %i.gz, %bb.z ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.gc, align 8, !tbaa !49
  %i.hb = load ptr, ptr %11, align 8, !tbaa !52
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.hb, i64 %i.gs ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !57 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.he, %i.hf
  br i1 %.not269, label %.loopexit, label %.lr.ph271

.lr.ph271:                                        ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.hg = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.gs ; 10 uses
  br i1 %i.ex, label %.preheader.i.preheader.us, label %.loopexit

.preheader.i.preheader.us:                        ; preds = %.lr.ph271, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us
  %.sroa.0174.0270.us = phi ptr [ %i.ng, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us ], [ %i.he, %.lr.ph271 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 44
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18
  %i.hk = sext i32 %i.hj to i64                   ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0174.0270.us, i64 40
  %i.hm = load i8, ptr %i.hl, align 4, !tbaa !23, !range !24, !noundef !25
  %i.hn = load i64, ptr %i.hh, align 8, !tbaa !19
  %i.ho = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.hk ; 11 uses
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.preheader.us, %.critedge.i.us
  %.01224.i.us = phi i64 [ %i.ii, %.critedge.i.us ], [ 0, %.preheader.i.preheader.us ] ; 2 uses
  %i.hp = mul nsw i64 %.01224.i.us, %7
  %i.hq = getelementptr [4 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18
  %i.hs = icmp eq i32 %i.hr, 2147483647
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, label %.critedge.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader:        ; preds = %.preheader.i.us
  br i1 %or.cond444, label %vector.memcheck431, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446

vector.memcheck431:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader
  %i.ht = sub i64 %i.hk, %i.gs
  %i.hu = shl i64 %i.ht, 2
  %i.hv = add i64 %i.hu, -1
  %diff.check432 = icmp ult i64 %i.hv, 31
  br i1 %diff.check432, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck431, %vector.body435
  %index436 = phi i64 [ %index.next439, %vector.body435 ], [ 0, %vector.memcheck431 ] ; 3 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %index436 ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %index436 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load437 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !18
  %wide.load438 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <4 x i32> %wide.load437, ptr %i.hw, align 4, !tbaa !18
  store <4 x i32> %wide.load438, ptr %i.hz, align 4, !tbaa !18
  %index.next439 = add nuw i64 %index436, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.ia, label %middle.block440, label %vector.body435, !llvm.loop !112

middle.block440:                                  ; preds = %vector.body435
  br i1 %cmp.n441, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446:     ; preds = %vector.memcheck431, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader, %middle.block440
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck431 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader ], [ %n.vec434, %middle.block440 ] ; 3 uses
  %i.ib = sub nsw i64 %i.gl, %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph
  br i1 %lcmp.mod463.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ] ; 2 uses
  %prol.iter464 = phi i64 [ %prol.iter464.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ]
  %i.ic = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, %7 ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ic
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ic
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18
  store i32 %i.if, ptr %i.id, align 4, !tbaa !18
  %i.ig = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter464.next = add i64 %prol.iter464, 1   ; 2 uses
  %prol.iter464.cmp.not = icmp eq i64 %prol.iter464.next, %xtraiter462
  br i1 %prol.iter464.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, !llvm.loop !113

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446
  %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.preheader446 ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol ]
  %i.ih = icmp ult i64 %i.ib, 3
  br i1 %i.ih, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us

.critedge.i.us:                                   ; preds = %.preheader.i.us
  %i.ii = add nuw nsw i64 %.01224.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ii, %i.dz
  br i1 %exitcond.not.i.us, label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us, label %.preheader.i.us, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit ] ; 5 uses
  %i.ij = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, %7 ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ij
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.ij
  %i.im = load i32, ptr %i.il, align 4, !tbaa !18
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !18
  %i.in = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 1
  %i.io = mul nsw i64 %i.in, %7                   ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.io
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.io
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !18
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !18
  %i.is = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 2
  %i.it = mul nsw i64 %i.is, %7                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !18
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !18
  %i.ix = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 3
  %i.iy = mul nsw i64 %i.ix, %7                   ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.iy
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.iy
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !18
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !18
  %i.jc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.jc, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.us.3, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !114

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us
  %.060268.us = phi i64 [ %i.ju, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us ], [ %.060268.us.unr, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit ] ; 4 uses
  %i.jd = mul nsw i64 %.060268.us, %7             ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %i.hg, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !18
  %i.jg = getelementptr [4 x i8], ptr %i.ho, i64 %i.jd
  %i.jh = trunc i64 %.060268.us to i32
  %i.ji = icmp eq i32 %i.ni, %i.jh
  %i.jj = select i1 %i.ji, i32 %i.nk, i32 0
  %i.jk = add nsw i32 %i.jj, %i.jf
  store i32 %i.jk, ptr %i.jg, align 4, !tbaa !18
  %i.jl = add nuw i64 %.060268.us, 1              ; 2 uses
  %i.jm = mul nsw i64 %i.jl, %7                   ; 2 uses
  %i.jn = getelementptr [4 x i8], ptr %i.hg, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !18
  %i.jp = getelementptr [4 x i8], ptr %i.ho, i64 %i.jm
  %i.jq = trunc i64 %i.jl to i32
  %i.jr = icmp eq i32 %i.ni, %i.jq
  %i.js = select i1 %i.jr, i32 %i.nk, i32 0
  %i.jt = add nsw i32 %i.js, %i.jo
  store i32 %i.jt, ptr %i.jp, align 4, !tbaa !18
  %i.ju = add nuw i64 %.060268.us, 2              ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %i.ju, %i.dz
  br i1 %exitcond292.not.1, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, !llvm.loop !115

.loopexit443:                                     ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us, %middle.block422
  %i.jv = load ptr, ptr %i.fu, align 8, !tbaa !39 ; 4 uses
  %i.jw = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -8
  %.not.i.i111.us = icmp eq ptr %i.jv, %i.jx
  br i1 %.not.i.i111.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit443
  store i64 %i.hk, ptr %i.jv, align 8, !tbaa !19
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

bb.ab:                                            ; preds = %.loopexit443
  %i.jz = load ptr, ptr %i.gi, align 8, !tbaa !45 ; 3 uses
  %i.ka = load ptr, ptr %i.gh, align 8, !tbaa !45 ; 6 uses
  %i.kb = ptrtoint ptr %i.jz to i64               ; 2 uses
  %i.kc = ptrtoint ptr %i.ka to i64               ; 3 uses
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = ashr exact i64 %i.kd, 3                 ; 3 uses
  %i.kf = icmp ne ptr %i.jz, null
  %.neg.i.i.i.us = sext i1 %i.kf to i64
  %i.kg = add nsw i64 %i.ke, %.neg.i.i.i.us
  %i.kh = shl nsw i64 %i.kg, 6
  %i.ki = load ptr, ptr %i.gj, align 8, !tbaa !47
  %i.kj = ptrtoint ptr %i.jv to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = ashr exact i64 %i.kl, 3
  %i.kn = add nsw i64 %i.kh, %i.km
  %i.ko = load ptr, ptr %i.gf, align 8, !tbaa !48
  %i.kp = load ptr, ptr %i.gc, align 8, !tbaa !41
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 3
  %i.ku = add nsw i64 %i.kn, %i.kt
  %i.kv = icmp eq i64 %i.ku, 1152921504606846975
  br i1 %i.kv, label %.split.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kw = load i64, ptr %i.gk, align 8, !tbaa !58 ; 5 uses
  %i.kx = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = sub i64 %i.kb, %i.ky
  %i.la = ashr exact i64 %i.kz, 3
  %i.lb = sub i64 %i.kw, %i.la
  %i.lc = icmp ult i64 %i.lb, 2
  br i1 %i.lc, label %bb.ad, label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

bb.ad:                                            ; preds = %bb.ac
  %i.ld = add nsw i64 %i.ke, 1                    ; 2 uses
  %i.le = add nsw i64 %i.ke, 2                    ; 3 uses
  %i.lf = shl nsw i64 %i.le, 1
  %i.lg = icmp ugt i64 %i.kw, %i.lf
  br i1 %i.lg, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated.i.us = call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.lh = add i64 %i.kw, 2
  %i.li = add i64 %i.lh, %.sroa.speculated.i.us   ; 5 uses
  %i.lj = icmp ugt i64 %i.li, 1152921504606846975
  br i1 %i.lj, label %.split273.us, label %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, !prof !60

_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us: ; preds = %bb.ae
  %i.lk = shl nuw nsw i64 %i.li, 3
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #27
          to label %.noexc142.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142.us:                                     ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us
  %i.lm = sub nsw i64 %i.li, %i.le
  %i.ln = lshr i64 %i.lm, 1
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.ln ; 3 uses
  %i.lp = load ptr, ptr %i.gh, align 8, !tbaa !44 ; 3 uses
  %i.lq = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, 8
  br i1 %i.lv, label %bb.ah, label %bb.af, !prof !62

bb.af:                                            ; preds = %.noexc142.us
  %i.lw = icmp eq i64 %i.lu, 8
  br i1 %i.lw, label %bb.ag, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ag:                                            ; preds = %bb.af
  %i.lx = load ptr, ptr %i.lp, align 8, !tbaa !46
  store ptr %i.lx, ptr %i.lo, align 8, !tbaa !46
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

bb.ah:                                            ; preds = %.noexc142.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lo, ptr align 8 %i.lp, i64 %i.lu, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us:         ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ly = load ptr, ptr %13, align 8, !tbaa !59
  %i.lz = load i64, ptr %i.gk, align 8, !tbaa !58
  %i.ma = shl i64 %i.lz, 3
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.ma) #26
  store ptr %i.ll, ptr %13, align 8, !tbaa !59
  store i64 %i.li, ptr %i.gk, align 8, !tbaa !58
  br label %.noexc138.us

bb.ai:                                            ; preds = %bb.ad
  %i.mb = sub i64 %i.kw, %i.le
  %i.mc = lshr i64 %i.mb, 1
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.mc ; 10 uses
  %i.me = icmp ult ptr %i.md, %i.ka
  %i.mf = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  br i1 %i.me, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ld ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mh, %i.kc                    ; 3 uses
  %i.mj = ashr exact i64 %i.mi, 3                 ; 2 uses
  %i.mk = icmp sgt i64 %i.mj, 1
  br i1 %i.mk, label %bb.am, label %bb.ak, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.ml = icmp eq i64 %i.mi, 8
  br i1 %i.ml, label %bb.al, label %.noexc138.us

bb.al:                                            ; preds = %bb.ak
  %i.mm = getelementptr inbounds i8, ptr %i.mg, i64 -8
  %i.mn = load ptr, ptr %i.ka, align 8, !tbaa !46
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !46
  br label %.noexc138.us

bb.am:                                            ; preds = %bb.aj
  %i.mo = sub nsw i64 0, %i.mj
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.mo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mp, ptr align 8 %i.ka, i64 %i.mi, i1 false)
  br label %.noexc138.us

bb.an:                                            ; preds = %bb.ai
  %i.mq = ptrtoint ptr %i.mf to i64
  %i.mr = sub i64 %i.mq, %i.kc                    ; 3 uses
  %i.ms = icmp sgt i64 %i.mr, 8
  br i1 %i.ms, label %bb.aq, label %bb.ao, !prof !62

bb.ao:                                            ; preds = %bb.an
  %i.mt = icmp eq i64 %i.mr, 8
  br i1 %i.mt, label %bb.ap, label %.noexc138.us

bb.ap:                                            ; preds = %bb.ao
  %i.mu = load ptr, ptr %i.ka, align 8, !tbaa !46
  store ptr %i.mu, ptr %i.md, align 8, !tbaa !46
  br label %.noexc138.us

bb.aq:                                            ; preds = %bb.an
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.md, ptr nonnull align 8 %i.ka, i64 %i.mr, i1 false)
  br label %.noexc138.us

.noexc138.us:                                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ak, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us
  %.0.i.us = phi ptr [ %i.lo, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24.i.us ], [ %i.md, %bb.ap ], [ %i.md, %bb.aq ], [ %i.md, %bb.ao ], [ %i.md, %bb.am ], [ %i.md, %bb.ak ], [ %i.md, %bb.al ] ; 3 uses
  store ptr %.0.i.us, ptr %i.gh, align 8, !tbaa !45
  %i.mv = load ptr, ptr %.0.i.us, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mv, ptr %i.gg, align 8, !tbaa !47
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 512
  store ptr %i.mw, ptr %i.gf, align 8, !tbaa !48
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.us, i64 %i.ld
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -8 ; 2 uses
  store ptr %i.my, ptr %i.gi, align 8, !tbaa !45
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !46 ; 2 uses
  store ptr %i.mz, ptr %i.gj, align 8, !tbaa !47
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 512
  store ptr %i.na, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us: ; preds = %.noexc138.us, %bb.ac
  %i.nb = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %.noexc112.us unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc112.us:                                     ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us
  %i.nc = load ptr, ptr %i.gi, align 8, !tbaa !61
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 2 uses
  store ptr %i.nb, ptr %i.nd, align 8, !tbaa !46
  %i.ne = load ptr, ptr %i.fu, align 8, !tbaa !39
  store i64 %i.hk, ptr %i.ne, align 8, !tbaa !19
  store ptr %i.nd, ptr %i.gi, align 8, !tbaa !45
  store ptr %i.nb, ptr %i.gj, align 8, !tbaa !47
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 512
  store ptr %i.nf, ptr %i.fw, align 8, !tbaa !48
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split: ; preds = %bb.aa, %.noexc112.us
  %.sink = phi ptr [ %i.nb, %.noexc112.us ], [ %i.jy, %bb.aa ]
  store ptr %.sink, ptr %i.fu, align 8, !tbaa !39
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us: ; preds = %.critedge.i.us, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit113.us.sink.split
  %i.ng = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0174.0270.us) #28 ; 2 uses
  %.not.us = icmp eq ptr %i.ng, %i.hf
  br i1 %.not.us, label %.loopexit.loopexit, label %.preheader.i.preheader.us

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.us, %middle.block440
  %i.nh = getelementptr inbounds [4 x i8], ptr %.sroa.0190.0244, i64 %i.hn
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !18 ; 4 uses
  %i.nj = trunc nuw i8 %i.hm to i1
  %i.nk = select i1 %i.nj, i32 -1, i32 1          ; 4 uses
  br i1 %or.cond445, label %vector.memcheck, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

vector.memcheck:                                  ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us
  %i.nl = sub i64 %i.hk, %i.gs
  %i.nm = shl i64 %i.nl, 2
  %i.nn = add i64 %i.nm, -1
  %diff.check = icmp ult i64 %i.nn, 31
  br i1 %diff.check, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %i.ni, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert415 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat416 = shufflevector <4 x i32> %broadcast.splatinsert415, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph411
  %index418 = phi i64 [ 0, %vector.ph411 ], [ %index.next421, %vector.body417 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph411 ], [ %vec.ind.next, %vector.body417 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.no = getelementptr [4 x i8], ptr %i.hg, i64 %index418 ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 16
  %wide.load419 = load <4 x i32>, ptr %i.no, align 4, !tbaa !18
  %wide.load420 = load <4 x i32>, ptr %i.np, align 4, !tbaa !18
  %i.nq = getelementptr [4 x i8], ptr %i.ho, i64 %index418 ; 2 uses
  %i.nr = icmp eq <4 x i32> %broadcast.splat414, %vec.ind
  %i.ns = icmp eq <4 x i32> %broadcast.splat414, %step.add
  %i.nt = select <4 x i1> %i.nr, <4 x i32> %broadcast.splat416, <4 x i32> zeroinitializer
  %i.nu = select <4 x i1> %i.ns, <4 x i32> %broadcast.splat416, <4 x i32> zeroinitializer
  %i.nv = add nsw <4 x i32> %i.nt, %wide.load419
  %i.nw = add nsw <4 x i32> %i.nu, %wide.load420
  %i.nx = getelementptr i8, ptr %i.nq, i64 16
  store <4 x i32> %i.nv, ptr %i.nq, align 4, !tbaa !18
  store <4 x i32> %i.nw, ptr %i.nx, align 4, !tbaa !18
  %index.next421 = add nuw i64 %index418, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ny = icmp eq i64 %index.next421, %n.vec412
  br i1 %i.ny, label %middle.block422, label %vector.body417, !llvm.loop !116

middle.block422:                                  ; preds = %vector.body417
  br i1 %cmp.n423, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader: ; preds = %vector.memcheck, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us, %middle.block422
  %.060268.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.preheader.us ], [ %n.vec412, %middle.block422 ] ; 5 uses
  br i1 %lcmp.mod466.not.not, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %i.nz = mul nsw i64 %.060268.us.ph, %7          ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.hg, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !18
  %i.oc = getelementptr [4 x i8], ptr %i.ho, i64 %i.nz
  %i.od = trunc nuw nsw i64 %.060268.us.ph to i32
  %i.oe = icmp eq i32 %i.ni, %i.od
  %i.of = select i1 %i.oe, i32 %i.nk, i32 0
  %i.og = add nsw i32 %i.of, %i.ob
  store i32 %i.og, ptr %i.oc, align 4, !tbaa !18
  %i.oh = or disjoint i64 %.060268.us.ph, 1
  br label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit

_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol.loopexit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader
  %.060268.us.unr = phi i64 [ %.060268.us.ph, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.preheader ], [ %i.oh, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us.prol ]
  %i.oi = icmp eq i64 %.060268.us.ph, %i.gl
  br i1 %i.oi, label %.loopexit443, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSERKS3_.exit.us

.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit.i.us, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit.i.us, %bb.w, %bb.at, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %.noexc3.i.i, %.noexc.i.i, %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oj = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i118, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124, label %bb.ax

bb.ar:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE7setZeroEv.exit
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

.split.us:                                        ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
          to label %.noexc137 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137:                                        ; preds = %.split.us
  unreachable

.split273.us:                                     ; preds = %bb.ae
  %i.ol = icmp ugt i64 %i.li, 2305843009213693951
  br i1 %i.ol, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split273.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc140 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %.noexc.i.i
  unreachable

.noexc3.i.i:                                      ; preds = %.split273.us
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc141 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %.noexc3.i.i
  unreachable

._crit_edge276:                                   ; preds = %.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit
  %i.om = shl nsw i64 %i.dz, 1                    ; 3 uses
  %or.cond.i.i = or i1 %.not283, %i.eb
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge276
  %i.on = sdiv i64 9223372036854775807, %i.om
  %i.oo = icmp sgt i64 %i.h, %i.on
  br i1 %i.oo, label %bb.at, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.op = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.op, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.op, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc114 unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc114:                                        ; preds = %bb.at
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.as, %._crit_edge276
  %i.oq = mul nsw i64 %i.om, %i.h
  invoke void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.oq, i64 noundef %i.h, i64 noundef %i.om)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  br i1 %.not283, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.or = load ptr, ptr %6, align 8, !tbaa !21
  %i.os = load ptr, ptr %8, align 8, !tbaa !26
  %i.ot = load i64, ptr %i.s, align 8, !tbaa !17
  br i1 %i.eb, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ov = load ptr, ptr %10, align 8, !tbaa !26
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !17 ; 6 uses
  %14 = icmp eq i32 %.3.i.i.i.i, 0
  %unroll_iter471 = and i64 %i.dz, -2
  %i.ox = and i32 %.3.i.i.i.i, 1
  %lcmp.mod469.not.not = icmp eq i32 %i.ox, 0
  %lcmp.mod470 = trunc i32 %i.dy to i1
  br label %.lr.ph279

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split: ; preds = %._crit_edge280, %.lr.ph282, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.oy = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split
  %i.oz = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !44 ; 2 uses
  %i.pc = load ptr, ptr %i.oz, align 8, !tbaa !61 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = icmp ult ptr %i.pb, %i.pd
  br i1 %i.pe, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i116:                                ; preds = %bb.au, %.lr.ph.i.i.i.i116
  %.06.i.i.i.i = phi ptr [ %i.pg, %.lr.ph.i.i.i.i116 ], [ %i.pb, %bb.au ] ; 3 uses
  %i.pf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef 512) #26
  %i.pg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ph = icmp ult ptr %.06.i.i.i.i, %i.pc
  br i1 %i.ph, label %.lr.ph.i.i.i.i116, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i116
  %.pre.i.i.i = load ptr, ptr %13, align 8, !tbaa !59
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.au
  %i.pi = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.oy, %bb.au ]
  %i.pj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !58
  %i.pl = shl i64 %i.pk, 3
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  call void @free(ptr noundef %.sroa.0190.0244) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.pm = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.pm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.pn = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pn, %i.pp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pu, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i ], [ %i.pn, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i, ptr noundef %i.pr)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i unwind label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.pu, %i.pp
  br i1 %.not.i.i.i117, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  %i.pv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pn, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.pw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !65
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qa) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  ret i1 %i.f

.lr.ph279:                                        ; preds = %.lr.ph282.split, %._crit_edge280
  %.059281 = phi i64 [ 0, %.lr.ph282.split ], [ %i.qy, %._crit_edge280 ] ; 3 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.or, i64 %.059281
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !18
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [4 x i8], ptr %i.os, i64 %i.qd ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !18
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr [4 x i8], ptr %i.qe, i64 %i.ot
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !18
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qg ; 3 uses
  %i.ql = getelementptr [4 x i8], ptr %i.ov, i64 %.059281 ; 6 uses
  %i.qm = getelementptr [4 x i8], ptr %.sroa.0.0254, i64 %i.qj ; 3 uses
  br i1 %14, label %.epil.preheader, label %.lr.ph279.new

._crit_edge280.unr-lcssa:                         ; preds = %.lr.ph279.new
  br i1 %lcmp.mod469.not.not, label %.epil.preheader, label %._crit_edge280

.epil.preheader:                                  ; preds = %._crit_edge280.unr-lcssa, %.lr.ph279
  %.0277.epil.init = phi i64 [ 0, %.lr.ph279 ], [ %16, %._crit_edge280.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod470)
  %i.qn = mul nsw i64 %.0277.epil.init, %7        ; 2 uses
  %i.qo = getelementptr [4 x i8], ptr %i.qk, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !18
  %i.qq = shl i64 %.0277.epil.init, 1             ; 2 uses
  %i.qr = mul nsw i64 %i.ow, %i.qq
  %i.qs = getelementptr [4 x i8], ptr %i.ql, i64 %i.qr
  store i32 %i.qp, ptr %i.qs, align 4, !tbaa !18
  %i.qt = getelementptr [4 x i8], ptr %i.qm, i64 %i.qn
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !18
  %i.qv = or disjoint i64 %i.qq, 1
  %i.qw = mul nsw i64 %i.ow, %i.qv
  %i.qx = getelementptr [4 x i8], ptr %i.ql, i64 %i.qw
  store i32 %i.qu, ptr %i.qx, align 4, !tbaa !18
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %._crit_edge280.unr-lcssa, %.epil.preheader
  %i.qy = add nuw i64 %.059281, 1                 ; 2 uses
  %exitcond294.not = icmp eq i64 %i.qy, %i.h
  br i1 %exitcond294.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge.split, label %.lr.ph279, !llvm.loop !117

.lr.ph279.new:                                    ; preds = %.lr.ph279, %.lr.ph279.new
  %.0277 = phi i64 [ %16, %.lr.ph279.new ], [ 0, %.lr.ph279 ] ; 4 uses
  %niter472 = phi i64 [ %niter472.next.1, %.lr.ph279.new ], [ 0, %.lr.ph279 ]
  %i.qz = mul nsw i64 %.0277, %7                  ; 2 uses
  %i.ra = getelementptr [4 x i8], ptr %i.qk, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !18
  %i.rc = shl i64 %.0277, 1                       ; 2 uses
  %i.rd = mul nsw i64 %i.ow, %i.rc
  %i.re = getelementptr [4 x i8], ptr %i.ql, i64 %i.rd
  store i32 %i.rb, ptr %i.re, align 4, !tbaa !18
  %i.rf = getelementptr [4 x i8], ptr %i.qm, i64 %i.qz
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !18
  %i.rh = or disjoint i64 %i.rc, 1
  %i.ri = mul nsw i64 %i.ow, %i.rh
  %i.rj = getelementptr [4 x i8], ptr %i.ql, i64 %i.ri
  store i32 %i.rg, ptr %i.rj, align 4, !tbaa !18
  %15 = or disjoint i64 %.0277, 1                 ; 2 uses
  %i.rk = mul nsw i64 %15, %7                     ; 2 uses
  %i.rl = getelementptr [4 x i8], ptr %i.qk, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !18
  %i.rn = shl i64 %15, 1                          ; 2 uses
  %i.ro = mul nsw i64 %i.ow, %i.rn
  %i.rp = getelementptr [4 x i8], ptr %i.ql, i64 %i.ro
  store i32 %i.rm, ptr %i.rp, align 4, !tbaa !18
  %i.rq = getelementptr [4 x i8], ptr %i.qm, i64 %i.rk
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !18
  %i.rs = or disjoint i64 %i.rn, 1
  %i.rt = mul nsw i64 %i.ow, %i.rs
  %i.ru = getelementptr [4 x i8], ptr %i.ql, i64 %i.rt
  store i32 %i.rr, ptr %i.ru, align 4, !tbaa !18
  %16 = add nuw i64 %.0277, 2                     ; 2 uses
  %niter472.next.1 = add i64 %niter472, 2         ; 2 uses
  %niter472.ncmp.1 = icmp eq i64 %niter472.next.1, %unroll_iter471
  br i1 %niter472.ncmp.1, label %._crit_edge280.unr-lcssa, label %.lr.ph279.new, !llvm.loop !118

bb.ax:                                            ; preds = %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.rv = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.rw = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !44 ; 2 uses
  %i.ry = load ptr, ptr %i.rv, align 8, !tbaa !61 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = icmp ult ptr %i.rx, %i.rz
  br i1 %i.sa, label %.lr.ph.i.i.i.i120, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119

.lr.ph.i.i.i.i120:                                ; preds = %bb.ax, %.lr.ph.i.i.i.i120
  %.06.i.i.i.i121 = phi ptr [ %i.sc, %.lr.ph.i.i.i.i120 ], [ %i.rx, %bb.ax ] ; 3 uses
  %i.sb = load ptr, ptr %.06.i.i.i.i121, align 8, !tbaa !46
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef 512) #26
  %i.sc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i121, i64 8
  %i.sd = icmp ult ptr %.06.i.i.i.i121, %i.ry
  br i1 %i.sd, label %.lr.ph.i.i.i.i120, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122: ; preds = %.lr.ph.i.i.i.i120
  %.pre.i.i.i123 = load ptr, ptr %13, align 8, !tbaa !59
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122, %bb.ax
  %i.se = phi ptr [ %.pre.i.i.i123, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i122 ], [ %i.oj, %bb.ax ]
  %i.sf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !58
  %i.sh = shl i64 %i.sg, 3
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #26
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124:       ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119, %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar
  %.pn87.pn.pn = phi { ptr, i32 } [ %i.ok, %bb.ar ], [ %lpad.loopexit.split-lp, %.loopexit261.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @free(ptr noundef %.sroa.0.0254) #23
  br label %.body103

.body103:                                         ; preds = %bb.u, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124
  %.pn94 = phi { ptr, i32 } [ %i.el, %bb.u ], [ %.pn87.pn.pn, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit124 ]
  call void @free(ptr noundef %.sroa.0190.0244) #23
  br label %.body

.body:                                            ; preds = %.body103, %bb.f
  %.pn94.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %.pn94, %.body103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ay

bb.ay:                                            ; preds = %bb.o, %.body
  %.pn94.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.o ], [ %.pn94.pn.pn, %.body ]
  %i.si = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.si) #23
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.n
  %.pn94.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn.pn, %bb.ay ], [ %i.dc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.m
  %.pn94.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn.pn.pn, %bb.az ], [ %i.db, %bb.m ]
  %i.sj = load ptr, ptr %11, align 8, !tbaa !52   ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i125 = icmp eq ptr %i.sj, %i.sl
  br i1 %.not4.i.i.i125, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132, label %.lr.ph.i.i.i126

.lr.ph.i.i.i126:                                  ; preds = %bb.ba, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128
  %.05.i.i.i127 = phi ptr [ %i.sq, %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128 ], [ %i.sj, %bb.ba ] ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.05.i.i.i127, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !64
  invoke void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i127, ptr noundef %i.sn)
          to label %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128 unwind label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i126
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #29
  unreachable

_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128: ; preds = %.lr.ph.i.i.i126
  %i.sq = getelementptr inbounds nuw i8, ptr %.05.i.i.i127, i64 48 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.sq, %i.sl
  br i1 %.not.i.i.i129, label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130, label %.lr.ph.i.i.i126, !llvm.loop !3

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130: ; preds = %_ZSt8_DestroyISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EEEvPT_.exit.i.i.i128
  %.pr.i131 = load ptr, ptr %11, align 8, !tbaa !52
  br label %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132

_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130, %bb.ba
  %i.sr = phi ptr [ %.pr.i131, %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i130 ], [ %i.sj, %bb.ba ] ; 3 uses
  %.not.i.i1.i133 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i1.i133, label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit134, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132
  %i.ss = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !65
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.sr to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef %i.sw) #26
  br label %_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit134

_ZNSt6vectorISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EED2Ev.exit134: ; preds = %_ZSt8_DestroyIPSt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i132, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  resume { ptr, i32 } %.pn94.pn.pn.pn.pn.pn.pn
}

declare void @_ZN3igl8copyleft4cgal11outer_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEElEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERT2_Rb(ptr noundef nonnull align 1, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix.18", align 8  ; 7 uses
  %5 = alloca %"class.Eigen::Matrix.18", align 8  ; 9 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %8 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.18", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl15unique_edge_mapIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_S4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.a = invoke noundef i32 @_ZN3igl24extract_manifold_patchesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_S4_S4_EEiRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.b = invoke noundef i64 @_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = sext i32 %i.a to i64
  %i.d = invoke noundef zeroext i1 @_ZN3igl8copyleft4cgal25propagate_winding_numbersIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESM_NS4_IiLin1ELi1ELi0ELin1ELi1EEESN_SN_SM_SN_SM_EEbRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EEmRKNSO_IT4_EEmRKNSO_IT5_EERKNSO_IT6_EERNS3_15PlainObjectBaseIT7_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %i.c, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %10, align 8, !tbaa !26
  call void @free(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.f = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.g = load ptr, ptr %8, align 8, !tbaa !21
  call void @free(ptr noundef %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.h = load ptr, ptr %7, align 8, !tbaa !21
  call void @free(ptr noundef %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.i = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.j = load ptr, ptr %5, align 8, !tbaa !26
  call void @free(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.k = load ptr, ptr %4, align 8, !tbaa !26
  call void @free(ptr noundef %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.d

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %10, align 8, !tbaa !26
  call void @free(ptr noundef %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.m, %bb.g ]
  %i.p = load ptr, ptr %9, align 8, !tbaa !21
  call void @free(ptr noundef %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.i ], [ %i.l, %bb.f ]
  %i.q = load ptr, ptr %8, align 8, !tbaa !21
  call void @free(ptr noundef %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.r = load ptr, ptr %7, align 8, !tbaa !21
  call void @free(ptr noundef %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.s = load ptr, ptr %6, align 8, !tbaa !21
  call void @free(ptr noundef %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.t = load ptr, ptr %5, align 8, !tbaa !26
  call void @free(ptr noundef %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.u = load ptr, ptr %4, align 8, !tbaa !26
  call void @free(ptr noundef %i.u) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN3igl15unique_edge_mapIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES4_S4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef i32 @_ZN3igl24extract_manifold_patchesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_S4_S4_EEiRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef i64 @_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.23() #6 section ".text.startup" comdat($_ZN5boost4math6detail21min_shift_initializerIdE11initializerE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, !prof !119

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) #23
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef double @ldexp(double noundef f0x0010000000000000, i32 noundef 54) #23
  store double %i.f, ptr @_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val, align 8, !tbaa !68
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) #23
  br label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit

_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost4math6detail21min_shift_initializerIdE11initializerE) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  tail call void @_ZNSt8_Rb_treeISt5tupleIJibmEES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.i) #23
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #24 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !21
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseImSaImEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !58
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  %i.g = load i64, ptr %i.d, align 8, !tbaa !58
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseImSaImEE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseImSaImEE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %_ZNSt11_Deque_baseImSaImEE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseImSaImEE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseImSaImEE15_M_create_nodesEPPmS3_.exit, !llvm.loop !123

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #23 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !46
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #26
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i, !llvm.loop !2

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #25
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #23 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !59
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !58
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseImSaImEE15_M_create_nodesEPPmS3_.exit: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !45
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !46  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !45
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !46 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !48
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !49
  %i.ar = and i64 %1, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !39
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58
  %i.ag = load ptr, ptr %0, align 8, !tbaa !59
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeImSaImEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeImSaImEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !46
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.aq = load i64, ptr %1, align 8, !tbaa !19
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !19
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !45
  store ptr %i.am, ptr %i.o, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !48
  store ptr %i.am, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeImSaImEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !59
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !62

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !46
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !46
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !62

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !46
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !46
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit, !prof !60

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #27 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !44  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !62

bb.m:                                             ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseImSaImEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !46
  store ptr %i.be, ptr %i.av, align 8, !tbaa !46
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !59
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !58
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #26
  store ptr %i.aq, ptr %0, align 8, !tbaa !59
  store i64 %i.am, ptr %i.k, align 8, !tbaa !58
  br label %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPmS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !45
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !46   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !45
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.f) #23
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #24 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !28
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !17
  store i64 %3, ptr %i.c, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_propagate_winding_numbers.cpp() #20 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  %i.d = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #23
  %i.e = fadd double %i.d, 1.000000e+00
  store double %i.e, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !68
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !127
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !127
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !127
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !127
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !127
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !127
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !127
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !127
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !127
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !127
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !127
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !68
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL5log_5E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !14, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!10, !10, i64 0}
!19 = !{!15, !15, i64 0}
!20 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !14, i64 0, !15, i64 8}
!21 = !{!20, !14, i64 0}
!22 = !{!"bool", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!16, !14, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!9, !9, i64 0}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"any p2 pointer", !13, i64 0}
!35 = !{!"p2 long", !34, i64 0}
!36 = !{!"p1 long", !13, i64 0}
!37 = !{!"_ZTSSt15_Deque_iteratorImRmPmE", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24}
!38 = !{!"_ZTSNSt11_Deque_baseImSaImEE16_Deque_impl_dataE", !35, i64 0, !15, i64 8, !37, i64 16, !37, i64 48}
!39 = !{!38, !36, i64 48}
!40 = !{!38, !36, i64 64}
!41 = !{!37, !36, i64 0}
!42 = !{!38, !36, i64 32}
!43 = !{!38, !36, i64 24}
!44 = !{!38, !35, i64 40}
!45 = !{!37, !35, i64 24}
!46 = !{!36, !36, i64 0}
!47 = !{!37, !36, i64 8}
!48 = !{!37, !36, i64 16}
!49 = !{!38, !36, i64 16}
!50 = !{!"p1 _ZTSSt3setISt5tupleIJibmEESt4lessIS1_ESaIS1_EE", !13, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseISt3setISt5tupleIJibmEESt4lessIS2_ESaIS2_EESaIS6_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!51, !50, i64 0}
!53 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!54 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!55 = !{!"_ZTSSt18_Rb_tree_node_base", !53, i64 0, !54, i64 8, !54, i64 16, !54, i64 24}
!56 = !{!"_ZTSSt15_Rb_tree_header", !55, i64 0, !15, i64 32}
!57 = !{!56, !54, i64 16}
!58 = !{!38, !15, i64 8}
!59 = !{!38, !35, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!38, !35, i64 72}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!51, !50, i64 8}
!64 = !{!56, !54, i64 8}
!65 = !{!51, !50, i64 16}
!66 = !{!20, !15, i64 8}
!67 = !{!"double", !9, i64 0}
!68 = !{!67, !67, i64 0}
!69 = distinct !{!69, !29, !30, !31}
!70 = distinct !{!70, !29, !31, !30}
!71 = distinct !{!71, !29, !30, !31}
!72 = distinct !{!72, !29, !31, !30}
!73 = distinct !{!73, !29, !30, !31}
!74 = distinct !{!74, !29, !31, !30}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29, !30, !31}
!77 = distinct !{!77, !29, !31, !30}
!78 = distinct !{!78, !29, !30, !31}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !29, !30}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29, !30, !31}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !29, !30}
!85 = distinct !{!85, !29, !30}
!86 = distinct !{!86, !29, !30, !31}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29, !30, !31}
!90 = distinct !{!90, !29, !31, !30}
!91 = distinct !{!91, !29, !30, !31}
!92 = distinct !{!92, !29, !30, !31}
!93 = distinct !{!93, !29, !31, !30}
!94 = distinct !{!94, !29, !31, !30}
!95 = distinct !{!95, !29, !30, !31}
!96 = distinct !{!96, !29, !30, !31}
!97 = distinct !{!97, !29, !31, !30}
!98 = distinct !{!98, !29, !31, !30}
!99 = distinct !{!99, !29, !30, !31}
!100 = distinct !{!100, !29, !31, !30}
!101 = distinct !{!101, !29, !30, !31}
!102 = distinct !{!102, !29, !31, !30}
!103 = distinct !{!103, !29, !30, !31}
!104 = distinct !{!104, !29, !31, !30}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29, !30, !31}
!107 = distinct !{!107, !29, !31, !30}
!108 = distinct !{!108, !29, !30, !31}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !29, !30}
!111 = distinct !{!111, !29}
!112 = distinct !{!112, !29, !30, !31}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !29, !30}
!115 = distinct !{!115, !29, !30}
!116 = distinct !{!116, !29, !30, !31}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = !{!"branch_weights", i32 1, i32 1048575}
!120 = distinct !{!120, !29}
!121 = !{!55, !54, i64 24}
!122 = !{!55, !54, i64 16}
!123 = distinct !{!123, !29}
!124 = !{!16, !15, i64 16}
!125 = !{!"_ZTSN4CORE7extLongE", !15, i64 0, !10, i64 8}
!126 = !{!125, !15, i64 0}
!127 = !{!125, !10, i64 8}
end_hunk_1
