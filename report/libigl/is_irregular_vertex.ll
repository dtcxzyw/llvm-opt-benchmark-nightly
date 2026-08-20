inline.NumInlined: 802
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN3igl19is_irregular_vertexIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aj, <4 x i32> %i.ak)
  %i.am = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader354

.lr.ph84.i.i.i.i.preheader354:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.h, %.lr.ph84.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ab, %.lr.ph84.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader354, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader354 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ap, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader354 ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ao) ; 2 uses
  %i.aq = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aq, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !22

bb.f:                                             ; preds = %bb.a
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !18  ; 3 uses
  %i.as = icmp sgt i64 %i.c, 0
  br i1 %i.as, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.at = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check334 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check334, label %.lr.ph89.i.i.i.i.preheader351, label %vector.ph335

vector.ph335:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec336 = and i64 %i.at, -8                   ; 3 uses
  %i.au = or disjoint i64 %n.vec336, 1
  %broadcast.splatinsert337 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat338 = shufflevector <4 x i32> %broadcast.splatinsert337, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph335
  %index340 = phi i64 [ 0, %vector.ph335 ], [ %index.next345, %vector.body339 ] ; 2 uses
  %vec.phi341.a = phi <4 x i32> [ %broadcast.splat338, %vector.ph335 ], [ %i.ay, %vector.body339 ]
  %vec.phi342 = phi <4 x i32> [ %broadcast.splat338, %vector.ph335 ], [ %i.az, %vector.body339 ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index340 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %wide.load343.a = load <4 x i32>, ptr %i.aw, align 4, !tbaa !18
  %wide.load344 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !18
  %i.ay = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi341.a, <4 x i32> %wide.load343.a) ; 2 uses
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi342, <4 x i32> %wide.load344) ; 2 uses
  %index.next345 = add nuw i64 %index340, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next345, %n.vec336
  br i1 %i.ba, label %middle.block346, label %vector.body339, !llvm.loop !23

middle.block346:                                  ; preds = %vector.body339
  %rdx.minmax347 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ay, <4 x i32> %i.az)
  %i.bb = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax347) ; 2 uses
  %cmp.n348 = icmp eq i64 %i.at, %n.vec336
  br i1 %cmp.n348, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader351

.lr.ph89.i.i.i.i.preheader351:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block346
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.au, %middle.block346 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.ar, %.lr.ph89.i.i.i.i.preheader ], [ %i.bb, %middle.block346 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader351, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader351 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.be, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader351 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !18
  %i.be = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bd) ; 2 uses
  %i.bf = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bf, %i.d
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !24

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block346, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.be, %.lr.ph89.i.i.i.i ], [ %i.ar, %bb.f ], [ %i.ab, %bb.e ], [ %i.bb, %middle.block346 ], [ %i.am, %middle.block ], [ %i.ap, %.lr.ph84.i.i.i.i ]
  %i.bg = add nsw i32 %.3.i.i.i.i, 1
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bh, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i unwind label %bb.h

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.bh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.bh, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  %.pr.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !25
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %i.bk = phi i64 [ %i.bh, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i.i ], [ %.pr.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 1
  br i1 %i.bl, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.bm = load ptr, ptr %2, align 8, !tbaa !27
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit

common.resume:                                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit164, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %.pn65, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit164 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %2, align 8, !tbaa !27
  call void @free(ptr noundef %i.bo) #13
  br label %common.resume

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !14  ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  %i.br = load ptr, ptr %1, align 8, !tbaa !9
  %.idx = shl i64 %i.bp, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv ; 5 uses
  %i.bt = load ptr, ptr %2, align 8               ; 6 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !18 ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bs, i64 %i.bp ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !18 ; 2 uses
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.by = sext i32 %i.bu to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !18
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !18
  %i.cc = load i32, ptr %i.bv, align 4, !tbaa !18
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !18
  %.pre = load i32, ptr %i.bv, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.i
  %i.ch = phi i32 [ %i.bw, %.preheader ], [ %.pre, %bb.i ] ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bs, i64 %.idx  ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18 ; 2 uses
  %i.ck = icmp slt i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !18
  %i.cp = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !18
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !18
  %.pre308 = load i32, ptr %i.ci, align 4, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi i32 [ %.pre308, %bb.k ], [ %i.cj, %bb.j ] ; 2 uses
  %i.cv = load i32, ptr %i.bs, align 4, !tbaa !18
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = sext i32 %i.cu to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !18
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !18
  %i.db = load i32, ptr %i.bs, align 4, !tbaa !18
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !18
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %5 = icmp sgt i64 %i.bp, %4
  br i1 %5, label %.preheader, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.n, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit164

bb.p:                                             ; preds = %._crit_edge
  %.sroa.0241.0.copyload = load ptr, ptr %3, align 8 ; 5 uses
  %.sroa.22258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.22258.0.copyload = load ptr, ptr %.sroa.22258.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.dh = load i64, ptr %i.bi, align 8, !tbaa !25 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.di, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.dj, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.dk, align 8, !tbaa !32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.dl, align 8, !tbaa !33
  %.not.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = add i64 %i.dh, 63                       ; 2 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = and i64 %i.dn, 2305843009213693944
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #14
          to label %.noexc unwind label %bb.v     ; 5 uses

.noexc:                                           ; preds = %bb.q
  %i.dq = lshr i64 %i.dm, 6                       ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %i.dl, align 8, !tbaa !33
  store ptr %i.dp, ptr %0, align 8
  store i32 0, ptr %i.di, align 8
  %i.ds = sdiv i64 %i.dh, 64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ds
  %i.du = and i64 %i.dh, -9223372036854775745
  %i.dv = icmp ugt i64 %i.du, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.dv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.dt, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.dw = trunc i64 %i.dh to i32
  %i.dx = and i32 %i.dw, 63
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.dj, align 8
  store i32 %i.dx, ptr %i.dk, align 8
  %.idx.i.i = shl nuw nsw i64 %i.dq, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dp, i8 0, i64 %.idx.i.i, i1 false)
  %i.dy = ptrtoint ptr %storemerge.i.i.i.i.i.i to i64
  %i.dz = and i64 %i.dh, 63
  br label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %.noexc, %bb.p
  %i.ea = phi ptr [ %i.dp, %.noexc ], [ null, %bb.p ] ; 3 uses
  %i.eb = phi i64 [ %i.dz, %.noexc ], [ 0, %bb.p ]
  %i.ec = phi i64 [ %i.dy, %.noexc ], [ 0, %bb.p ]
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = shl nsw i64 %i.ee, 3
  %i.eg = add nsw i64 %i.ef, %i.eb                ; 2 uses
  %.not297 = icmp eq i64 %i.eg, 0
  br i1 %.not297, label %._crit_edge296, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %i.eh = load ptr, ptr %2, align 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZNSt14_Bit_referenceaSEb.exit
  %indvars.iv304 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next305, %_ZNSt14_Bit_referenceaSEb.exit ] ; 4 uses
  %i.ei = lshr i64 %indvars.iv304, 6
  %.zext287 = and i64 %i.ei, 67108863             ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0241.0.copyload, i64 %.zext287
  %i.ek = and i64 %indvars.iv304, 63
  %i.el = shl nuw i64 1, %i.ek                    ; 3 uses
  %i.em = load i64, ptr %i.ej, align 8, !tbaa !36
  %i.en = and i64 %i.em, %i.el
  %.not = icmp eq i64 %i.en, 0
  br i1 %.not, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.zext287
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv304
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !18
  %.not288 = icmp eq i32 %i.eq, 6
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.zext287 ; 3 uses
  br i1 %.not288, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = load i64, ptr %i.er, align 8, !tbaa !36
  %i.et = or i64 %i.es, %i.el
  store i64 %i.et, ptr %i.er, align 8, !tbaa !36
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.u:                                             ; preds = %.thread, %bb.s
  %storemerge.i.i.i.i.i156271 = phi ptr [ %i.eo, %.thread ], [ %i.er, %bb.s ] ; 2 uses
  %i.eu = xor i64 %i.el, -1
  %i.ev = load i64, ptr %storemerge.i.i.i.i.i156271, align 8, !tbaa !36
  %i.ew = and i64 %i.ev, %i.eu
  store i64 %i.ew, ptr %storemerge.i.i.i.i.i156271, align 8, !tbaa !36
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.t, %bb.u
  %indvars.iv.next305 = add i64 %indvars.iv304, 1 ; 2 uses
  %i.ex = and i64 %indvars.iv.next305, 4294967295
  %i.ey = icmp ugt i64 %i.eg, %i.ex
  br i1 %i.ey, label %bb.r, label %._crit_edge296.thread, !llvm.loop !37

._crit_edge296:                                   ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %.not.i.i161 = icmp eq ptr %.sroa.0241.0.copyload, null
  br i1 %.not.i.i161, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit162, label %._crit_edge296.thread

._crit_edge296.thread:                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %._crit_edge296
  %i.ez = ptrtoint ptr %.sroa.22258.0.copyload to i64
  %i.fa = ptrtoint ptr %.sroa.0241.0.copyload to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 2 uses
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [8 x i8], ptr %.sroa.22258.0.copyload, i64 %i.fd
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fb) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit162

_ZNSt13_Bvector_baseISaIbEED2Ev.exit162:          ; preds = %._crit_edge296, %._crit_edge296.thread
  %i.ff = load ptr, ptr %2, align 8, !tbaa !27
  call void @free(ptr noundef %i.ff) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.v:                                             ; preds = %bb.q
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i163 = icmp eq ptr %.sroa.0241.0.copyload, null
  br i1 %.not.i.i163, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit164, label %.thread278

.thread278:                                       ; preds = %bb.v
  %i.fh = ptrtoint ptr %.sroa.22258.0.copyload to i64
  %i.fi = ptrtoint ptr %.sroa.0241.0.copyload to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = ashr exact i64 %i.fj, 3
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %.sroa.22258.0.copyload, i64 %i.fl
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fj) #15
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit164

_ZNSt13_Bvector_baseISaIbEED2Ev.exit164:          ; preds = %bb.o, %.thread278, %bb.v
  %.pn65 = phi { ptr, i32 } [ %i.dg, %bb.o ], [ %i.fg, %.thread278 ], [ %i.fg, %bb.v ]
  %i.fn = load ptr, ptr %2, align 8, !tbaa !27
  call void @free(ptr noundef %i.fn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN3igl16is_border_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19is_irregular_vertexIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEESt6vectorIbSaIbEERKNS1_10MatrixBaseIT_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::evaluator.93", align 8 ; 5 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.64", align 8 ; 5 uses
  %4 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.98", align 8 ; 7 uses
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Block.50", align 8   ; 9 uses
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 13 uses
  %8 = alloca %"class.std::vector", align 8       ; 6 uses
  %9 = alloca %"class.Eigen::Matrix.13", align 8  ; 20 uses
  %10 = alloca %"class.std::vector", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = mul nsw i64 %i.e, %i.c                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4                         ; 2 uses
  %i.j = shl nsw i64 %i.i, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

end_hunk_0
