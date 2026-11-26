Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/edge_midpoints?download=true
inline.NumInlined: 298
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl14edge_midpointsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_15PlainObjectBaseIT3_EE:bb.a
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.b ], [ %i.ac, %bb.d ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ad = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ae = icmp slt i64 %i.j, %i.f
  br i1 %i.ae, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.af = sub i64 %i.f, %i.j                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader186, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.ag = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !41
  %wide.load94 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !41
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi93, <4 x i32> %wide.load94) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ak, <4 x i32> %i.al)
  %i.an = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader186

.lr.ph84.i.i.i.i.preheader186:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader186, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader186 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader186 ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !41
  %i.aq = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ap) ; 2 uses
  %i.ar = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !20

bb.f:                                             ; preds = %bb.a
  %i.as = load i32, ptr %i.a, align 4, !tbaa !41  ; 3 uses
  %i.at = icmp sgt i64 %i.f, 1
  br i1 %i.at, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.au = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check96 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check96, label %.lr.ph89.i.i.i.i.preheader183, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec98 = and i64 %i.au, -8                    ; 3 uses
  %i.av = or disjoint i64 %n.vec98, 1
  %broadcast.splatinsert99 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat100 = shufflevector <4 x i32> %broadcast.splatinsert99, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph97
  %index102 = phi i64 [ 0, %vector.ph97 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %vec.phi103 = phi <4 x i32> [ %broadcast.splat100, %vector.ph97 ], [ %i.az, %vector.body101 ]
  %vec.phi104 = phi <4 x i32> [ %broadcast.splat100, %vector.ph97 ], [ %i.ba, %vector.body101 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index102 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %wide.load105 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !41
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !41
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi103, <4 x i32> %wide.load105) ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi104, <4 x i32> %wide.load106) ; 2 uses
  %index.next107 = add nuw i64 %index102, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next107, %n.vec98
  br i1 %i.bb, label %middle.block108, label %vector.body101, !llvm.loop !21

middle.block108:                                  ; preds = %vector.body101
  %rdx.minmax109 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> %i.ba)
  %i.bc = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax109) ; 2 uses
  %cmp.n110 = icmp eq i64 %i.au, %n.vec98
  br i1 %cmp.n110, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader183

.lr.ph89.i.i.i.i.preheader183:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block108
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.av, %middle.block108 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.bc, %middle.block108 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader183, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader183 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader183 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.be) ; 2 uses
  %i.bg = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !22

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block108, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %i.as, %bb.f ], [ %i.ad, %bb.e ], [ %i.bc, %middle.block108 ], [ %i.an, %middle.block ], [ %i.aq, %.lr.ph84.i.i.i.i ]
  %i.bh = add nsw i32 %.3.i.i.i.i, 1              ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13 ; 4 uses
  %i.bl = icmp eq i32 %i.bh, 0
  %i.bm = icmp eq i64 %i.bk, 0
  %or.cond.i.i = or i1 %i.bl, %i.bm
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bn = sdiv i64 9223372036854775807, %i.bk
  %i.bo = icmp slt i64 %i.bn, %i.bi
  br i1 %i.bo, label %bb.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.h:                                             ; preds = %bb.g
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bp, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, %bb.g
  %i.bq = mul nsw i64 %i.bk, %i.bi
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bq, i64 noundef %i.bi, i64 noundef %i.bk)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !37 ; 6 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.bu = load ptr, ptr %3, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !37 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.idx = shl i64 %i.bs, 3
  %.idx82 = shl i64 %i.bs, 3
  %.idx83 = shl i64 %i.bw, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2
  %.067 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.kw, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2 ] ; 8 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bu, i64 %.067 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.i

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

bb.i:                                             ; preds = %.preheader
  %i.cd = load ptr, ptr %2, align 8, !tbaa !36
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %.067
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !41
  %i.cg = load ptr, ptr %1, align 8, !tbaa !36
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %.067 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %i.bs
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !41
  %i.ck = getelementptr i8, ptr %i.ch, i64 %.idx
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !41
  %i.cm = sext i32 %i.cj to i64                   ; 2 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !16, !noalias !44 ; 3 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cm ; 4 uses
  %i.cq = sext i32 %i.cl to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cq ; 4 uses
  %i.cs = sext i32 %i.cf to i64                   ; 2 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !16, !noalias !45 ; 2 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cs ; 4 uses
  %i.cw = load i64, ptr %i.bx, align 8, !tbaa !13, !noalias !45 ; 7 uses
  %i.cx = load i64, ptr %i.by, align 8, !tbaa !17 ; 4 uses
  %i.cy = load i64, ptr %i.bz, align 8, !tbaa !17 ; 4 uses
  %i.cz = icmp sgt i64 %i.cw, 0
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.i
  %min.iters.check163 = icmp ult i64 %i.cw, 10
  br i1 %min.iters.check163, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182, label %vector.scevcheck155

vector.scevcheck155:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %ident.check156 = icmp ne i64 %i.cy, 1
  %ident.check157 = icmp ne i64 %i.cx, 1
  %i.da = or i1 %ident.check156, %ident.check157
  br i1 %i.da, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182, label %vector.memcheck164

vector.memcheck164:                               ; preds = %vector.scevcheck155
  %i.db = shl nsw i64 %i.cs, 3
  %i.dc = shl nsw i64 %i.cq, 3
  %i.dd = add i64 %i.db, %i.cu
  %i.de = sub i64 %i.dd, %i.co                    ; 2 uses
  %i.df = sub i64 %i.dc, %i.de
  %diff.check165 = icmp ugt i64 %i.df, -32
  %i.dg = shl nsw i64 %i.cm, 3
  %i.dh = sub i64 %i.dg, %i.de
  %diff.check166 = icmp ugt i64 %i.dh, -32
  %conflict.rdx167 = or i1 %diff.check165, %diff.check166
  br i1 %conflict.rdx167, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck164
  %n.vec169 = and i64 %i.cw, 9223372036854775804  ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 4 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %index171 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %index171 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load172 = load <2 x double>, ptr %i.dj, align 8, !tbaa !47
  %wide.load173 = load <2 x double>, ptr %i.dk, align 8, !tbaa !47
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %index171 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load174 = load <2 x double>, ptr %i.dl, align 8, !tbaa !47
  %wide.load175 = load <2 x double>, ptr %i.dm, align 8, !tbaa !47
  %i.dn = fadd <2 x double> %wide.load172, %wide.load174
  %i.do = fadd <2 x double> %wide.load173, %wide.load175
  %i.dp = fmul <2 x double> %i.dn, splat (double 5.000000e-01)
  %i.dq = fmul <2 x double> %i.do, splat (double 5.000000e-01)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x double> %i.dp, ptr %i.di, align 8, !tbaa !47
  store <2 x double> %i.dq, ptr %i.dr, align 8, !tbaa !47
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.ds, label %middle.block177, label %vector.body170, !llvm.loop !27

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.cw, %n.vec169
  br i1 %cmp.n178, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182:          ; preds = %vector.memcheck164, %vector.scevcheck155, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block177
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck164 ], [ 0, %vector.scevcheck155 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec169, %middle.block177 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.cw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182
  %i.dt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.cy
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dt
  %i.dv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.cx ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !47
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !47
  %i.ea = fadd double %i.dx, %i.dz
  %i.eb = fmul double %i.ea, 5.000000e-01
  store double %i.eb, ptr %i.du, align 8, !tbaa !47
  %i.ec = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader182 ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ed = icmp eq i64 %i.cw, %.neg
  br i1 %i.ed, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ee = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.cy
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ee
  %i.eg = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.cx ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !47
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eg
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !47
  %i.el = fadd double %i.ei, %i.ek
  %i.em = fmul double %i.el, 5.000000e-01
  store double %i.em, ptr %i.ef, align 8, !tbaa !47
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eo = mul nsw i64 %i.en, %i.cy
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.eo
  %i.eq = mul nsw i64 %i.en, %i.cx                ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !47
  %i.et = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eq
  %i.eu = load double, ptr %i.et, align 8, !tbaa !47
  %i.ev = fadd double %i.es, %i.eu
  %i.ew = fmul double %i.ev, 5.000000e-01
  store double %i.ew, ptr %i.ep, align 8, !tbaa !47
  %i.ex = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1194 = icmp eq i64 %i.ex, %i.cw
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1194, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !28

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block177, %bb.i, %.preheader
  %i.ey = getelementptr [4 x i8], ptr %i.ca, i64 %i.bw
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !41
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.fb = load ptr, ptr %2, align 8, !tbaa !36
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !37
  %i.fd = getelementptr [4 x i8], ptr %i.fb, i64 %.067
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %i.fc
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !41
  %i.fg = load ptr, ptr %1, align 8, !tbaa !36
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %.067 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 %.idx82
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !41
  %i.fk = load i32, ptr %i.fh, align 4, !tbaa !41
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = load ptr, ptr %0, align 8, !tbaa !16, !noalias !44 ; 3 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fl ; 4 uses
  %i.fp = sext i32 %i.fk to i64                   ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fp ; 4 uses
  %i.fr = sext i32 %i.ff to i64                   ; 2 uses
  %i.fs = load ptr, ptr %4, align 8, !tbaa !16, !noalias !45 ; 2 uses
  %i.ft = ptrtoaddr ptr %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fr ; 4 uses
  %i.fv = load i64, ptr %i.bx, align 8, !tbaa !13, !noalias !45 ; 7 uses
  %i.fw = load i64, ptr %i.by, align 8, !tbaa !17 ; 4 uses
  %i.fx = load i64, ptr %i.bz, align 8, !tbaa !17 ; 4 uses
  %i.fy = icmp sgt i64 %i.fv, 0
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader:           ; preds = %bb.j
  %min.iters.check138 = icmp ult i64 %i.fv, 10
  br i1 %min.iters.check138, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181, label %vector.scevcheck130

vector.scevcheck130:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader
  %ident.check131 = icmp ne i64 %i.fx, 1
  %ident.check132 = icmp ne i64 %i.fw, 1
  %i.fz = or i1 %ident.check131, %ident.check132
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181, label %vector.memcheck139

vector.memcheck139:                               ; preds = %vector.scevcheck130
  %i.ga = shl nsw i64 %i.fr, 3
  %i.gb = shl nsw i64 %i.fp, 3
  %i.gc = add i64 %i.ga, %i.ft
  %i.gd = sub i64 %i.gc, %i.fn                    ; 2 uses
  %i.ge = sub i64 %i.gb, %i.gd
  %diff.check140 = icmp ugt i64 %i.ge, -32
  %i.gf = shl nsw i64 %i.fl, 3
  %i.gg = sub i64 %i.gf, %i.gd
  %diff.check141 = icmp ugt i64 %i.gg, -32
  %conflict.rdx142 = or i1 %diff.check140, %diff.check141
  br i1 %conflict.rdx142, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %n.vec144 = and i64 %i.fv, 9223372036854775804  ; 3 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 4 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %index146 ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %index146 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load147 = load <2 x double>, ptr %i.gi, align 8, !tbaa !47
  %wide.load148 = load <2 x double>, ptr %i.gj, align 8, !tbaa !47
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %index146 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load149 = load <2 x double>, ptr %i.gk, align 8, !tbaa !47
  %wide.load150 = load <2 x double>, ptr %i.gl, align 8, !tbaa !47
  %i.gm = fadd <2 x double> %wide.load147, %wide.load149
  %i.gn = fadd <2 x double> %wide.load148, %wide.load150
  %i.go = fmul <2 x double> %i.gm, splat (double 5.000000e-01)
  %i.gp = fmul <2 x double> %i.gn, splat (double 5.000000e-01)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <2 x double> %i.go, ptr %i.gh, align 8, !tbaa !47
  store <2 x double> %i.gp, ptr %i.gq, align 8, !tbaa !47
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.gr, label %middle.block152, label %vector.body145, !llvm.loop !29

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.fv, %n.vec144
  br i1 %cmp.n153, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181:        ; preds = %vector.memcheck139, %vector.scevcheck130, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader, %middle.block152
  %.05.i.i.i.i.i.i.i.i.i.i.1.ph = phi i64 [ 0, %vector.memcheck139 ], [ 0, %vector.scevcheck130 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %n.vec144, %middle.block152 ] ; 5 uses
  %.neg200 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, 1
  %xtraiter196 = and i64 %i.fv, 1
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181
  %i.gs = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.fx
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gs
  %i.gu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %i.fw ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !47
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gu
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !47
  %i.gz = fadd double %i.gw, %i.gy
  %i.ha = fmul double %i.gz, 5.000000e-01
  store double %i.ha, ptr %i.gt, align 8, !tbaa !47
  %i.hb = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.1.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181
  %.05.i.i.i.i.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.preheader181 ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol ]
  %i.hc = icmp eq i64 %i.fv, %.neg200
  br i1 %i.hc, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.hw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit ] ; 4 uses
  %i.hd = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.fx
  %i.he = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.hd
  %i.hf = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, %i.fw ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !47
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.hf
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !47
  %i.hk = fadd double %i.hh, %i.hj
  %i.hl = fmul double %i.hk, 5.000000e-01
  store double %i.hl, ptr %i.he, align 8, !tbaa !47
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %i.fx
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.hn
  %i.hp = mul nsw i64 %i.hm, %i.fw                ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !47
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.hp
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !47
  %i.hu = fadd double %i.hr, %i.ht
  %i.hv = fmul double %i.hu, 5.000000e-01
  store double %i.hv, ptr %i.ho, align 8, !tbaa !47
  %i.hw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.1.1 = icmp eq i64 %i.hw, %i.fv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.1.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, !llvm.loop !30

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %middle.block152, %bb.j, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.hx = getelementptr i8, ptr %i.ca, i64 %.idx83
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !41
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1
  %i.ia = load ptr, ptr %2, align 8, !tbaa !36
  %i.ib = load i64, ptr %i.b, align 8, !tbaa !37
  %i.ic = getelementptr [4 x i8], ptr %i.ia, i64 %.067
  %.idx84 = shl i64 %i.ib, 3
  %i.id = getelementptr i8, ptr %i.ic, i64 %.idx84
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !41
  %i.if = load ptr, ptr %1, align 8, !tbaa !36
  %i.ig = getelementptr [4 x i8], ptr %i.if, i64 %.067 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !41
  %i.ii = getelementptr [4 x i8], ptr %i.ig, i64 %i.bs
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !41
  %i.ik = sext i32 %i.ih to i64                   ; 2 uses
  %i.il = load ptr, ptr %0, align 8, !tbaa !16, !noalias !44 ; 3 uses
  %i.im = ptrtoaddr ptr %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.ik ; 4 uses
  %i.io = sext i32 %i.ij to i64                   ; 2 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.io ; 4 uses
  %i.iq = sext i32 %i.ie to i64                   ; 2 uses
  %i.ir = load ptr, ptr %4, align 8, !tbaa !16, !noalias !45 ; 2 uses
  %i.is = ptrtoaddr ptr %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.iq ; 4 uses
  %i.iu = load i64, ptr %i.bx, align 8, !tbaa !13, !noalias !45 ; 7 uses
  %i.iv = load i64, ptr %i.by, align 8, !tbaa !17 ; 4 uses
  %i.iw = load i64, ptr %i.bz, align 8, !tbaa !17 ; 4 uses
  %i.ix = icmp sgt i64 %i.iu, 0
  br i1 %i.ix, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader:           ; preds = %bb.k
  %min.iters.check116 = icmp ult i64 %i.iu, 10
  br i1 %min.iters.check116, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader
  %ident.check = icmp ne i64 %i.iw, 1
  %ident.check113 = icmp ne i64 %i.iv, 1
  %i.iy = or i1 %ident.check, %ident.check113
  br i1 %i.iy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.iz = shl nsw i64 %i.iq, 3
  %i.ja = shl nsw i64 %i.io, 3
  %i.jb = add i64 %i.iz, %i.is
  %i.jc = sub i64 %i.jb, %i.im                    ; 2 uses
  %i.jd = sub i64 %i.ja, %i.jc
  %diff.check = icmp ugt i64 %i.jd, -32
  %i.je = shl nsw i64 %i.ik, 3
  %i.jf = sub i64 %i.je, %i.jc
  %diff.check117 = icmp ugt i64 %i.jf, -32
  %conflict.rdx = or i1 %diff.check, %diff.check117
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck
  %n.vec119 = and i64 %i.iu, 9223372036854775804  ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next126, %vector.body120 ] ; 4 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.it, i64 %index121 ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.in, i64 %index121 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load122 = load <2 x double>, ptr %i.jh, align 8, !tbaa !47
  %wide.load123 = load <2 x double>, ptr %i.ji, align 8, !tbaa !47
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %index121 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load124 = load <2 x double>, ptr %i.jj, align 8, !tbaa !47
  %wide.load125 = load <2 x double>, ptr %i.jk, align 8, !tbaa !47
  %i.jl = fadd <2 x double> %wide.load122, %wide.load124
  %i.jm = fadd <2 x double> %wide.load123, %wide.load125
  %i.jn = fmul <2 x double> %i.jl, splat (double 5.000000e-01)
  %i.jo = fmul <2 x double> %i.jm, splat (double 5.000000e-01)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store <2 x double> %i.jn, ptr %i.jg, align 8, !tbaa !47
  store <2 x double> %i.jo, ptr %i.jp, align 8, !tbaa !47
  %index.next126 = add nuw i64 %index121, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.jq, label %middle.block127, label %vector.body120, !llvm.loop !31

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.iu, %n.vec119
  br i1 %cmp.n128, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180:        ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader, %middle.block127
  %.05.i.i.i.i.i.i.i.i.i.i.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %n.vec119, %middle.block127 ] ; 5 uses
  %.neg201 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, 1
  %xtraiter198 = and i64 %i.iu, 1
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180
  %i.jr = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %i.iw
  %i.js = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jr
  %i.jt = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %i.iv ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !47
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.jt
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !47
  %i.jy = fadd double %i.jv, %i.jx
  %i.jz = fmul double %i.jy, 5.000000e-01
  store double %i.jz, ptr %i.js, align 8, !tbaa !47
  %i.ka = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.2.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180
  %.05.i.i.i.i.i.i.i.i.i.i.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.preheader180 ], [ %i.ka, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol ]
  %i.kb = icmp eq i64 %i.iu, %.neg201
  br i1 %i.kb, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.2:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2
  %.05.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ], [ %.05.i.i.i.i.i.i.i.i.i.i.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit ] ; 4 uses
  %i.kc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, %i.iw
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.kc
  %i.ke = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, %i.iv ; 2 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !47
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.ke
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !47
  %i.kj = fadd double %i.kg, %i.ki
  %i.kk = fmul double %i.kj, 5.000000e-01
  store double %i.kk, ptr %i.kd, align 8, !tbaa !47
  %i.kl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, 1 ; 2 uses
  %i.km = mul nsw i64 %i.kl, %i.iw
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.km
  %i.ko = mul nsw i64 %i.kl, %i.iv                ; 2 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !47
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.ko
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !47
  %i.kt = fadd double %i.kq, %i.ks
  %i.ku = fmul double %i.kt, 5.000000e-01
  store double %i.ku, ptr %i.kn, align 8, !tbaa !47
  %i.kv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.2.1 = icmp eq i64 %i.kv, %i.iu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.2.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, !llvm.loop !32

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %middle.block127, %bb.k, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS5_INS6_13scalar_sum_opIddEEKNS0_IKS2_Li1ELin1ELb0EEESK_EEEEEERS3_RKNS_9DenseBaseIT_EE.exit.1
  %i.kw = add nuw nsw i64 %.067, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.kw, %i.bs
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !33
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !17
  store i64 %3, ptr %i.c, align 8, !tbaa !13
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"p1 double", !9, i64 0}
!12 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !11, i64 0, !10, i64 8, !10, i64 16}
!13 = !{!12, !10, i64 16}
!14 = !{!"vtable pointer", !4, i64 0}
!15 = !{!14, !14, i64 0}
end_hunk_0
