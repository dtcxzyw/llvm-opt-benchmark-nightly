Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orientable_patches?download=true
inline.NumInlined: 1691
inline.NumDeleted: 598
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIiLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.ab
  %min.iters.check444 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check444, label %.lr.ph85.i.i.i.i.i165.preheader527, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec446 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.gp = shufflevector <4 x i32> %foldExtExtBinop503, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next453, %vector.body447 ] ; 2 uses
  %vec.phi449.a = phi <4 x i32> [ %i.gp, %vector.ph445 ], [ %i.gs, %vector.body447 ]
  %vec.phi450 = phi <4 x i32> [ zeroinitializer, %vector.ph445 ], [ %i.gt, %vector.body447 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index448 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load451.a = load <4 x i32>, ptr %i.gq, align 4, !tbaa !47
  %wide.load452 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !47
  %i.gs = add <4 x i32> %wide.load451.a, %vec.phi449.a ; 2 uses
  %i.gt = add <4 x i32> %wide.load452, %vec.phi450 ; 2 uses
  %index.next453 = add nuw i64 %index448, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next453, %n.vec446
  br i1 %i.gu, label %middle.block454, label %vector.body447, !llvm.loop !393

middle.block454:                                  ; preds = %vector.body447
  %bin.rdx455 = add <4 x i32> %i.gt, %i.gs
  %i.gv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx455) ; 2 uses
  %cmp.n456 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec446
  br i1 %cmp.n456, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader527

.lr.ph85.i.i.i.i.i165.preheader527:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block454
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec446, %middle.block454 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %i.gn, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gv, %middle.block454 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block454, %bb.ab
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %i.gn, %bb.ab ], [ %i.gv, %middle.block454 ], [ %i.hk, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gw = icmp slt i64 %i.fl, %i.d
  br i1 %i.gw, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gx = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.fj
  %i.gy = sub i64 %i.d, %i.gx                     ; 3 uses
  %min.iters.check460 = icmp ult i64 %i.gy, 8
  br i1 %min.iters.check460, label %.lr.ph89.i.i.i.i.i162.preheader522, label %vector.ph461

vector.ph461:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec462 = and i64 %i.gy, -8                   ; 3 uses
  %i.gz = add i64 %i.fl, %n.vec462
  %i.ha = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.hb = getelementptr [4 x i8], ptr %i.ep, i64 %i.fl
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph461
  %index464 = phi i64 [ 0, %vector.ph461 ], [ %index.next469, %vector.body463 ] ; 2 uses
  %vec.phi465.a = phi <4 x i32> [ %i.ha, %vector.ph461 ], [ %i.he, %vector.body463 ]
  %vec.phi466 = phi <4 x i32> [ zeroinitializer, %vector.ph461 ], [ %i.hf, %vector.body463 ]
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %index464 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load467.a = load <4 x i32>, ptr %i.hc, align 4, !tbaa !47
  %wide.load468 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !47
  %i.he = add <4 x i32> %wide.load467.a, %vec.phi465.a ; 2 uses
  %i.hf = add <4 x i32> %wide.load468, %vec.phi466 ; 2 uses
  %index.next469 = add nuw i64 %index464, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.hg, label %middle.block470, label %vector.body463, !llvm.loop !394

middle.block470:                                  ; preds = %vector.body463
  %bin.rdx471 = add <4 x i32> %i.hf, %i.he
  %i.hh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx471) ; 2 uses
  %cmp.n472 = icmp eq i64 %i.gy, %n.vec462
  br i1 %cmp.n472, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader522

.lr.ph89.i.i.i.i.i162.preheader522:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block470
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fl, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gz, %middle.block470 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.hh, %middle.block470 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader527, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.hl, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader527 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.hk, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader527 ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.05683.i.i.i.i.i166
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !47
  %i.hk = add nsw i32 %i.hj, %.07582.i.i.i.i.i167 ; 2 uses
  %i.hl = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.hl, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !395

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader522, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.hp, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader522 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.ho, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader522 ]
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %.05588.i.i.i.i.i163
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !47
  %i.ho = add nsw i32 %i.hn, %.187.i.i.i.i.i164   ; 2 uses
  %i.hp = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hq = icmp slt i64 %i.hp, %i.d
  br i1 %i.hq, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !396

bb.ac:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hr = load i32, ptr %i.ep, align 4, !tbaa !47 ; 3 uses
  %i.hs = icmp sgt i64 %i.d, 1
  br i1 %i.hs, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.ac
  %i.ht = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check476, label %.lr.ph94.i.i.i.i.i179.preheader518, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec478 = and i64 %i.ht, -8                   ; 3 uses
  %i.hu = or disjoint i64 %n.vec478, 1
  %i.hv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hr, i64 0
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body479 ] ; 2 uses
  %vec.phi481.a = phi <4 x i32> [ %i.hv, %vector.ph477 ], [ %i.hz, %vector.body479 ]
  %vec.phi482 = phi <4 x i32> [ zeroinitializer, %vector.ph477 ], [ %i.ia, %vector.body479 ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index480 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  %wide.load483.a = load <4 x i32>, ptr %i.hx, align 4, !tbaa !47
  %wide.load484 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !47
  %i.hz = add <4 x i32> %wide.load483.a, %vec.phi481.a ; 2 uses
  %i.ia = add <4 x i32> %wide.load484, %vec.phi482 ; 2 uses
  %index.next485 = add nuw i64 %index480, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.ib, label %middle.block486, label %vector.body479, !llvm.loop !397

middle.block486:                                  ; preds = %vector.body479
  %bin.rdx487 = add <4 x i32> %i.ia, %i.hz
  %i.ic = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx487) ; 2 uses
  %cmp.n488 = icmp eq i64 %i.ht, %n.vec478
  br i1 %cmp.n488, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader518

.lr.ph94.i.i.i.i.i179.preheader518:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block486
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hu, %middle.block486 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hr, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.ic, %middle.block486 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader518, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.ig, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader518 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.if, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader518 ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.092.i.i.i.i.i180
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !47
  %i.if = add nsw i32 %i.ie, %.291.i.i.i.i.i181   ; 2 uses
  %i.ig = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.ig, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !398

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block470, %middle.block486, %bb.ac, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.if, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hr, %bb.ac ], [ %i.ic, %middle.block486 ], [ %i.hh, %middle.block470 ], [ %i.ho, %.lr.ph89.i.i.i.i.i162 ]
  %i.ih = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.v, %bb.u
  %.0.i.i161 = phi i64 [ %i.ex, %bb.u ], [ %i.ih, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.v ]
  %i.ii = add nsw i64 %.0.i.i161, %.0.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 9 uses
  store i64 0, ptr %i.ij, align 8, !tbaa !92
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !56
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !60
  %i.io = shl i64 %i.in, 2
  %i.ip = add i64 %i.io, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.il, i8 0, i64 %i.ip, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.ir, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.is = load i64, ptr %i.im, align 8, !tbaa !60
  %i.it = shl i64 %i.is, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ir, i8 0, i64 %i.it, i1 false)
  br label %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.ad
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIiiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, i64 noundef %i.ii)
          to label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit
  %i.iv = icmp sgt i64 %i.d, 0
  br i1 %i.iv, label %.lr.ph298, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge

.lr.ph298:                                        ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.jd = udiv i64 %i.b, 11
  %i.je = tail call i64 @llvm.umin.i64(i64 %i.jd, i64 200)
  %i.jf = mul nuw nsw i64 %i.b, 100
  %i.jg = udiv i64 %i.jf, 139
  %.not299 = icmp eq i64 %i.b, 0
  br label %bb.ah

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader
  %i.jh = load ptr, ptr %i.iq, align 8, !tbaa !61
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.ae, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit

bb.ae:                                            ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge
  %i.jj = load i64, ptr %i.ij, align 8, !tbaa !92
  %i.jk = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jl = load i64, ptr %i.im, align 8, !tbaa !60 ; 5 uses
  %i.jm = icmp sgt i64 %i.jl, -1
  br i1 %i.jm, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.ae
  %i.jn = load ptr, ptr %i.ik, align 8, !tbaa !56 ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %.08.i = phi i64 [ %i.jl, %.lr.ph.i ], [ %i.jr, %bb.ag ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.08.i
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !47
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.jr = add nsw i64 %.08.i, -1
  %i.js = icmp sgt i64 %.08.i, 0
  br i1 %i.js, label %bb.af, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.ag, %bb.af
  %.0.lcssa.i = phi i64 [ -1, %bb.ag ], [ %.08.i, %bb.af ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.jl
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.jt = sub i64 %i.jl, %.0.lcssa.i              ; 3 uses
  %min.iters.check492 = icmp ult i64 %i.jt, 8
  br i1 %min.iters.check492, label %.lr.ph13.i.preheader505, label %vector.ph493

vector.ph493:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec494 = and i64 %i.jt, -8                   ; 3 uses
  %i.ju = add i64 %.0.lcssa.i, %n.vec494
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jv = getelementptr [4 x i8], ptr %i.jn, i64 %.0.lcssa.i
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next497, %vector.body495 ] ; 2 uses
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %index496 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  %i.jy = getelementptr i8, ptr %i.jw, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.jx, align 4, !tbaa !47
  store <4 x i32> %broadcast.splat, ptr %i.jy, align 4, !tbaa !47
  %index.next497 = add nuw i64 %index496, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next497, %n.vec494
  br i1 %i.jz, label %middle.block498, label %vector.body495, !llvm.loop !399

middle.block498:                                  ; preds = %vector.body495
  %cmp.n499 = icmp eq i64 %i.jt, %n.vec494
  br i1 %cmp.n499, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit, label %.lr.ph13.i.preheader505

.lr.ph13.i.preheader505:                          ; preds = %.lr.ph13.i.preheader, %middle.block498
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.ju, %middle.block498 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader505, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.1.in12.i.ph, %.lr.ph13.i.preheader505 ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %.1.i
  store i32 %i.jk, ptr %i.ka, align 4, !tbaa !47
  %exitcond.not.i = icmp eq i64 %.1.i, %i.jl
  br i1 %exitcond.not.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit, label %.lr.ph13.i, !llvm.loop !400

.split:                                           ; preds = %bb.f
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

.split361:                                        ; preds = %bb.j, %bb.g
  %i.kc = phi i1 [ %i.ah, %bb.j ], [ true, %bb.g ]
  %i.kd = phi ptr [ %i.ag, %bb.j ], [ %i.s, %bb.g ]
  %i.ke = phi ptr [ %i.af, %bb.j ], [ %i.r, %bb.g ]
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.kc, label %.split253, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

bb.ah:                                            ; preds = %.lr.ph298, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit
  %.0107296 = phi i64 [ 0, %.lr.ph298 ], [ %i.rc, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit ] ; 7 uses
  %i.kg = load ptr, ptr %i.ik, align 8, !tbaa !56
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %.0107296 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !47
  %i.kj = getelementptr i8, ptr %i.kh, i64 4
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !47
  %i.kk = load ptr, ptr %i.iw, align 8, !tbaa !63
  %i.kl = load ptr, ptr %i.ix, align 8, !tbaa !62
  %i.km = load ptr, ptr %i.iy, align 8, !tbaa !56
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0107296 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !47
  %i.kp = sext i32 %i.ko to i64                   ; 3 uses
  %i.kq = load ptr, ptr %i.eo, align 8, !tbaa !61 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ks = getelementptr i8, ptr %i.kn, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !47
  %i.ku = sext i32 %i.kt to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.aj:                                            ; preds = %bb.ah
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %.0107296
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !47
  %i.kx = sext i32 %i.kw to i64
  %i.ky = add nsw i64 %i.kx, %i.kp
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ai, %bb.aj
  %.sink.i = phi i64 [ %i.ku, %bb.ai ], [ %i.ky, %bb.aj ] ; 2 uses
  %i.kz = icmp sgt i64 %.sink.i, %i.kp
  br i1 %i.kz, label %.lr.ph287, label %._crit_edge288.thread

.lr.ph287:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.la = load ptr, ptr %i.iz, align 8, !tbaa !63
  %i.lb = load ptr, ptr %i.ja, align 8, !tbaa !62
  %i.lc = load ptr, ptr %i.jb, align 8, !tbaa !56
  %i.ld = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br label %bb.ak

._crit_edge288:                                   ; preds = %._crit_edge
  br i1 %3, label %bb.av, label %.preheader263

._crit_edge288.thread:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  br i1 %3, label %bb.av, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit

.preheader263:                                    ; preds = %._crit_edge288
  %i.lf = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.lf, label %.lr.ph291.preheader, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit

.lr.ph291.preheader:                              ; preds = %.preheader263
  %.pre = load i64, ptr %i.ij, align 8, !tbaa !92
  br label %.lr.ph291

bb.ak:                                            ; preds = %.lr.ph287, %._crit_edge
  %.0106286 = phi i64 [ 0, %.lr.ph287 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.8221.0285 = phi i64 [ %i.kp, %.lr.ph287 ], [ %i.lw, %._crit_edge ] ; 3 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %.sroa.8221.0285
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !47 ; 2 uses
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %.sroa.8221.0285
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !47
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !47
  %i.ln = sext i32 %i.lm to i64                   ; 3 uses
  br i1 %i.le, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lo = getelementptr i8, ptr %i.ll, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !47
  %i.lq = sext i32 %i.lp to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186

bb.am:                                            ; preds = %bb.ak
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.lk
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !47
  %i.lt = sext i32 %i.ls to i64
  %i.lu = add nsw i64 %i.lt, %i.ln
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186: ; preds = %bb.al, %bb.am
  %.sink.i185 = phi i64 [ %i.lq, %bb.al ], [ %i.lu, %bb.am ] ; 2 uses
  %i.lv = icmp sgt i64 %.sink.i185, %i.ln
  br i1 %i.lv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186
  %.1.lcssa = phi i64 [ %.0106286, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186 ], [ %.2, %bb.ap ] ; 4 uses
  %i.lw = add nsw i64 %.sroa.8221.0285, 1         ; 2 uses
  %exitcond323.not = icmp eq i64 %i.lw, %.sink.i
  br i1 %exitcond323.not, label %._crit_edge288, label %bb.ak, !llvm.loop !401

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186, %bb.ap
  %.1284 = phi i64 [ %.2, %bb.ap ], [ %.0106286, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186 ] ; 3 uses
  %.sroa.8.0283 = phi i64 [ %i.mn, %bb.ap ], [ %i.ln, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186 ] ; 3 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %.sroa.8.0283
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !47
  %i.lz = sext i32 %i.ly to i64                   ; 4 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.la, i64 %.sroa.8.0283
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !47 ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.al, i64 %i.lz ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !407, !range !98, !noundef !80
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  store i8 1, ptr %i.mc, align 1, !tbaa !407
  %i.mf = mul nsw i32 %i.mb, %i.lh
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.lz
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIiLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a

bb.aw:                                            ; preds = %bb.av
  %i.ny = trunc i64 %.0106.lcssa358 to i32        ; 2 uses
  %i.nz = lshr i32 %i.ny, 1
  %i.oa = or i32 %i.nz, %i.ny                     ; 2 uses
  %i.ob = lshr i32 %i.oa, 2
  %i.oc = or i32 %i.ob, %i.oa                     ; 2 uses
  %i.od = lshr i32 %i.oc, 4
  %i.oe = or i32 %i.od, %i.oc                     ; 2 uses
  %i.of = lshr i32 %i.oe, 8
  %i.og = or i32 %i.of, %i.oe                     ; 2 uses
  %i.oh = lshr i32 %i.og, 16
  %i.oi = or i32 %i.oh, %i.og
  %i.oj = mul i32 %i.oi, 130329821
  %i.ok = lshr i32 %i.oj, 27
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5Eigen6numext4log2EiE5table, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !47
  %i.oo = sext i32 %i.on to i64
  %i.op = mul nsw i64 %.0106.lcssa358, %i.oo
  %i.oq = icmp slt i64 %i.op, %i.jg
  br i1 %i.oq, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %bb.aw
  br i1 %.not299, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, label %.lr.ph293

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.or = icmp sgt i64 %.0106.lcssa358, 1
  br i1 %i.or, label %bb.ay, label %_ZSt4sortIPlEvT_S1_.exit

bb.ay:                                            ; preds = %bb.ax
  %.idx = shl nuw nsw i64 %.0106.lcssa358, 3
  %i.os = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.ot = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0106.lcssa358, i1 true)
  %i.ou = shl nuw nsw i64 %i.ot, 1
  %i.ov = xor i64 %i.ou, 126
  invoke void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.os, i64 noundef %i.ov)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc188:                                        ; preds = %bb.ay
  invoke void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.os)
          to label %.lr.ph295.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZSt4sortIPlEvT_S1_.exit:                         ; preds = %bb.ax
  %i.ow = icmp eq i64 %.0106.lcssa358, 1
  br i1 %i.ow, label %.lr.ph295.preheader, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit

.lr.ph295.preheader:                              ; preds = %.noexc188, %_ZSt4sortIPlEvT_S1_.exit
  br label %.lr.ph295

.lr.ph295:                                        ; preds = %.lr.ph295.preheader, %bb.bd
  %.0104294 = phi i64 [ %i.qh, %bb.bd ], [ 0, %.lr.ph295.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0104294
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !79 ; 3 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !47
  %i.pb = load ptr, ptr %i.ik, align 8, !tbaa !56
  %i.pc = getelementptr [4 x i8], ptr %i.pb, i64 %.0107296
  %i.pd = getelementptr i8, ptr %i.pc, i64 4      ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !47 ; 2 uses
  %i.pf = sext i32 %i.pe to i64
  %i.pg = add nsw i32 %i.pe, 1
  store i32 %i.pg, ptr %i.pd, align 4, !tbaa !47
  %i.ph = load i64, ptr %i.ij, align 8, !tbaa !92 ; 5 uses
  %i.pi = add nsw i64 %i.ph, 1                    ; 3 uses
  %i.pj = load i64, ptr %i.jc, align 8, !tbaa !93
  %.not256 = icmp sgt i64 %i.pj, %i.ph
  br i1 %.not256, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.lr.ph295
  %i.pk = sitofp i64 %i.pi to double
  %i.pl = fptosi double %i.pk to i64
  %i.pm = add nsw i64 %i.pi, %i.pl
  %.sroa.speculated.i198 = call i64 @llvm.smin.i64(i64 %i.pm, i64 2147483647) ; 5 uses
  %.not257 = icmp sgt i64 %.sroa.speculated.i198, %i.ph
  br i1 %.not257, label %bb.ba, label %.invoke

.invoke:                                          ; preds = %bb.aq, %bb.az
  %i.pn = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.pn, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.pn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.po = icmp ugt i64 %.sroa.speculated.i198, 4611686018427387903
  %i.pp = shl nuw i64 %.sroa.speculated.i198, 2
  %i.pq = select i1 %i.po, i64 -1, i64 %i.pp      ; 2 uses
  %i.pr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pq) #25
          to label %.noexc211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc211:                                        ; preds = %bb.ba
  %i.ps = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pq) #25
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200 unwind label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200: ; preds = %.noexc211
  %i.pt = load i64, ptr %i.ij, align 8, !tbaa !79
  %.sroa.speculated.i.i201 = call i64 @llvm.smin.i64(i64 %i.pt, i64 %.sroa.speculated.i198) ; 2 uses
  %i.pu = icmp sgt i64 %.sroa.speculated.i.i201, 0
  %.pre.i.i202 = load ptr, ptr %i.iu, align 8, !tbaa !78 ; 3 uses
  br i1 %i.pu, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200
  %.pre25.i.i205 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200
  %.idx.i.i209 = shl nuw nsw i64 %.sroa.speculated.i.i201, 2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pr, ptr align 4 %.pre.i.i202, i64 %.idx.i.i209, i1 false)
  %i.pv = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ps, ptr align 4 %i.pv, i64 %.idx.i.i209, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199: ; preds = %.noexc211
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.pr) #27
  br label %.body

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206: ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203
  %i.px = phi ptr [ %.pre25.i.i205, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203 ], [ %i.pv, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208 ] ; 2 uses
  store ptr %i.pr, ptr %i.iu, align 8, !tbaa !78
  store ptr %i.ps, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78
  store i64 %.sroa.speculated.i198, ptr %i.jc, align 8, !tbaa !93
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207, label %bb.bb

bb.bb:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206
  call void @_ZdaPv(ptr noundef nonnull %i.px) #27
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207: ; preds = %bb.bb, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206
  %i.pz = icmp eq ptr %.pre.i.i202, null
  br i1 %i.pz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i202) #27
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph295, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207, %bb.bc
  store i64 %i.pi, ptr %i.ij, align 8, !tbaa !92
  %i.qa = load ptr, ptr %i.iu, align 8, !tbaa !63 ; 2 uses
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.ph
  store i32 0, ptr %i.qb, align 4, !tbaa !47
  %i.qc = trunc i64 %i.oy to i32
  %i.qd = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %i.ph
  store i32 %i.qc, ptr %i.qe, align 4, !tbaa !47
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.pf
  store i32 %i.pa, ptr %i.qf, align 4, !tbaa !47
  %i.qg = getelementptr inbounds i8, ptr %i.al, i64 %i.oy
  store i8 0, ptr %i.qg, align 1, !tbaa !407
  %i.qh = add nuw nsw i64 %.0104294, 1            ; 2 uses
  %exitcond326.not = icmp eq i64 %i.qh, %.0106.lcssa358
  br i1 %exitcond326.not, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, label %.lr.ph295, !llvm.loop !404

.lr.ph293:                                        ; preds = %.preheader, %bb.bg
  %.0292 = phi i64 [ %i.rb, %bb.bg ], [ 0, %.preheader ] ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0292 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !407, !range !98, !noundef !80
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.lr.ph293
  store i8 0, ptr %i.qi, align 1, !tbaa !407
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0292
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !47
  %i.qn = load ptr, ptr %i.ik, align 8, !tbaa !56
  %i.qo = getelementptr [4 x i8], ptr %i.qn, i64 %.0107296
  %i.qp = getelementptr i8, ptr %i.qo, i64 4      ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !47 ; 2 uses
  %i.qr = add nsw i32 %i.qq, 1
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !47
  %i.qs = load i64, ptr %i.ij, align 8, !tbaa !92 ; 3 uses
  %i.qt = add nsw i64 %i.qs, 1
  invoke void @_ZN5Eigen8internal17CompressedStorageIiiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, i64 noundef %i.qt, double noundef 1.000000e+00)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.qu = sext i32 %i.qq to i64
  %i.qv = load ptr, ptr %i.iu, align 8, !tbaa !63 ; 2 uses
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.qs
  store i32 0, ptr %i.qw, align 4, !tbaa !47
  %i.qx = trunc i64 %.0292 to i32
  %i.qy = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qy, i64 %i.qs
  store i32 %i.qx, ptr %i.qz, align 4, !tbaa !47
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.qu
  store i32 %i.qm, ptr %i.ra, align 4, !tbaa !47
  br label %bb.bg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.ba, %bb.be, %.noexc188, %bb.ay, %.invoke, %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit
  %lpad.loopexit.split-lp515 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %.lr.ph293, %bb.bf
  %i.rb = add nuw nsw i64 %.0292, 1               ; 2 uses
  %exitcond325.not = icmp eq i64 %i.rb, %i.b
  br i1 %exitcond325.not, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, label %.lr.ph293, !llvm.loop !405

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit:   ; preds = %bb.au, %bb.bg, %bb.bd, %._crit_edge288.thread, %.preheader263, %.preheader, %_ZSt4sortIPlEvT_S1_.exit
  %i.rc = add nuw nsw i64 %.0107296, 1            ; 2 uses
  %exitcond327.not = icmp eq i64 %i.rc, %i.d
  br i1 %exitcond327.not, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge, label %bb.ah, !llvm.loop !406

_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block498, %.critedge.i, %bb.ae, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge
  br i1 %i.ap, label %bb.bh, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit

bb.bh:                                            ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit
  call void @free(ptr noundef nonnull %i.ao) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit, %bb.bh
  br i1 %i.an, label %bb.bi, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

bb.bi:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit
  call void @free(ptr noundef nonnull %i.am) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit, %bb.bi
  br i1 %i.e, label %bb.bj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

bb.bj:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit
  call void @free(ptr noundef %i.al) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit, %bb.bj
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pw, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199 ], [ %i.nm, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i ], [ %lpad.loopexit.split-lp515, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  br i1 %i.ap, label %.split365, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193

.split365:                                        ; preds = %.body
  call void @free(ptr noundef nonnull %i.ao) #23
  br i1 %i.an, label %.split253, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193: ; preds = %.body
  br i1 %i.an, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

.split253:                                        ; preds = %.split365, %.split361
  %.pn128.pn.pn.pn.pn.pn.pn364 = phi { ptr, i32 } [ %i.kf, %.split361 ], [ %.pn128.pn.pn.pn.pn, %.split365 ] ; 2 uses
  %i.rd = phi ptr [ %i.ke, %.split361 ], [ %i.al, %.split365 ]
  %i.re = phi ptr [ %i.kd, %.split361 ], [ %i.am, %.split365 ]
  call void @free(ptr noundef nonnull %i.re) #23
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split: ; preds = %.split, %.split253, %.split.thread, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193
  %.sink = phi ptr [ %i.am, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193 ], [ %i.r, %.split ], [ %i.rd, %.split253 ], [ %i.f, %.split.thread ]
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251.ph = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193 ], [ %i.kb, %.split ], [ %.pn128.pn.pn.pn.pn.pn.pn364, %.split253 ], [ %i.l, %.split.thread ]
  call void @free(ptr noundef %.sink) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, %.split365, %.split361, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193, %.split253, %.split
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251 = phi { ptr, i32 } [ %i.kb, %.split ], [ %.pn128.pn.pn.pn.pn.pn.pn364, %.split253 ], [ %.pn128.pn.pn.pn.pn, %.split365 ], [ %.pn128.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193 ], [ %i.kf, %.split361 ], [ %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251.ph, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split ]
  resume { ptr, i32 } %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIiLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !51, !range !98, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !78
  store ptr %i.f, ptr %i.c, align 8, !tbaa !78
  store ptr %i.e, ptr %i.d, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = load i64, ptr %i.h, align 8, !tbaa !79
  store i64 %i.j, ptr %i.g, align 8, !tbaa !79
  store i64 %i.i, ptr %i.h, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !79
  %i.n = load i64, ptr %i.l, align 8, !tbaa !79
  store i64 %i.n, ptr %i.k, align 8, !tbaa !79
  store i64 %i.m, ptr %i.l, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !78
  store ptr %i.r, ptr %i.o, align 8, !tbaa !78
  store ptr %i.q, ptr %i.p, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !78
  store ptr %i.v, ptr %i.s, align 8, !tbaa !78
  store ptr %i.u, ptr %i.t, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !78
  store ptr %i.z, ptr %i.w, align 8, !tbaa !78
  store ptr %i.y, ptr %i.x, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !79
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !79
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !79
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !79
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !79
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !79
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !79
  br label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60
  tail call void @_ZN5Eigen12SparseMatrixIiLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.aj, i64 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE14initAssignmentIS1_EEvRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.an) #23
  store ptr null, ptr %i.am, align 8, !tbaa !61
  br label %_ZN5Eigen12SparseMatrixIiLi0EiE14initAssignmentIS1_EEvRKT_.exit

_ZN5Eigen12SparseMatrixIiLi0EiE14initAssignmentIS1_EEvRKT_.exit: ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE14initAssignmentIS1_EEvRKT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60
  %.idx = shl nsw i64 %i.as, 2
  %i.at = add nsw i64 %.idx, 4                    ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr align 4 %i.aw, i64 %i.at, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit: ; preds = %bb.f, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !92
  tail call void @_ZN5Eigen8internal17CompressedStorageIiiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, double noundef 0.000000e+00)
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !92
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.h, label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !92 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %bb.h
  %.idx.i = shl nsw i64 %i.bg, 2
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bj, ptr align 4 %i.bi, i64 %.idx.i, i1 false)
  %.pre.i = load i64, ptr %i.bf, align 8, !tbaa !92 ; 2 uses
  %i.bk = icmp eq i64 %.pre.i, 0
  br i1 %i.bk, label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %.idx8.i = shl nsw i64 %.pre.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bo, ptr align 4 %i.bm, i64 %.idx8.i, i1 false)
  br label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE14initAssignmentIS1_EEvRKT_.exit
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIiLi0EiEES3_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1), !inline_history !408
  br label %_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit

_ZN5Eigen8internal17CompressedStorageIiiEaSERKS2_.exit: ; preds = %bb.i, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i, %bb.h, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit, %bb.c, %bb.j, %bb.b
  ret ptr %0
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSF_:bb.a
  br i1 %diff.check81, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %vector.memcheck80
  %n.vec85 = and i64 %.03550, 9223372036854775800 ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body86 ] ; 3 uses
  %i.da = getelementptr [4 x i8], ptr %i.cm, i64 %index87 ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.cs, i64 %index87 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %wide.load88 = load <4 x i32>, ptr %i.db, align 4, !tbaa !47
  %wide.load89 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !47
  %i.dd = getelementptr i8, ptr %i.da, i64 16
  store <4 x i32> %wide.load88, ptr %i.da, align 4, !tbaa !47
  store <4 x i32> %wide.load89, ptr %i.dd, align 4, !tbaa !47
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.de, label %middle.block91, label %vector.body86, !llvm.loop !440

middle.block91:                                   ; preds = %vector.body86
  %cmp.n92 = icmp eq i64 %.03550, %n.vec85
  br i1 %cmp.n92, label %.preheader43, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %vector.memcheck80, %.lr.ph, %middle.block91
  %.03345.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph ], [ %n.vec85, %middle.block91 ] ; 3 uses
  %xtraiter96 = and i64 %.03550, 3                ; 2 uses
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader, %scalar.ph82.prol
  %.03345.prol = phi i64 [ %i.di, %scalar.ph82.prol ], [ %.03345.ph, %scalar.ph82.preheader ] ; 3 uses
  %prol.iter98 = phi i64 [ %prol.iter98.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.df = getelementptr [4 x i8], ptr %i.cm, i64 %.03345.prol
  %i.dg = getelementptr [4 x i8], ptr %i.cs, i64 %.03345.prol
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !47
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !47
  %i.di = add nuw nsw i64 %.03345.prol, 1         ; 2 uses
  %prol.iter98.next = add i64 %prol.iter98, 1     ; 2 uses
  %prol.iter98.cmp.not = icmp eq i64 %prol.iter98.next, %xtraiter96
  br i1 %prol.iter98.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !441

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.03345.unr = phi i64 [ %.03345.ph, %scalar.ph82.preheader ], [ %i.di, %scalar.ph82.prol ]
  %i.dj = sub nsw i64 %.03345.ph, %.03550
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %.preheader43, label %scalar.ph82

.preheader43:                                     ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block91, %bb.c
  %i.dl = icmp sgt i64 %i.cd, 3
  br i1 %i.dl, label %.lr.ph47, label %.preheader

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.03345 = phi i64 [ %i.eb, %scalar.ph82 ], [ %.03345.unr, %scalar.ph82.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr [4 x i8], ptr %i.cm, i64 %.03345
  %i.dn = getelementptr [4 x i8], ptr %i.cs, i64 %.03345
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !47
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !47
  %i.dp = add nuw nsw i64 %.03345, 1              ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.cm, i64 %i.dp
  %i.dr = getelementptr [4 x i8], ptr %i.cs, i64 %i.dp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !47
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !47
  %i.dt = add nuw nsw i64 %.03345, 2              ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %i.cm, i64 %i.dt
  %i.dv = getelementptr [4 x i8], ptr %i.cs, i64 %i.dt
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !47
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !47
  %i.dx = add nuw nsw i64 %.03345, 3              ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.cm, i64 %i.dx
  %i.dz = getelementptr [4 x i8], ptr %i.cs, i64 %i.dx
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !47
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !47
  %i.eb = add nuw nsw i64 %.03345, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eb, %.03550
  br i1 %exitcond.not.3, label %.preheader43, label %scalar.ph82, !llvm.loop !442

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.ec = icmp slt i64 %i.cf, %i.bm
  br i1 %i.ec, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.ed = load ptr, ptr %0, align 8, !tbaa !451, !nonnull !80, !align !81 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !36 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !26 ; 2 uses
  %i.eh = mul nsw i64 %i.eg, %.03451
  %i.ei = getelementptr [4 x i8], ptr %i.ee, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ca, align 8, !tbaa !452, !nonnull !80, !align !81 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !86 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !26 ; 2 uses
  %i.en = mul nsw i64 %i.em, %.03451
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = add i64 %.03550, %i.ce
  %i.eq = sub i64 %i.bm, %i.ep                    ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.eq, 12
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck67

vector.memcheck67:                                ; preds = %.lr.ph49
  %i.er = ptrtoaddr ptr %i.ek to i64
  %i.es = ptrtoaddr ptr %i.ee to i64
  %i.et = mul i64 %i.eg, %i.cc
  %i.eu = add i64 %i.et, %i.es
  %i.ev = mul i64 %i.em, %i.cc
  %i.ew = add i64 %i.ev, %i.er
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check = icmp ugt i64 %i.ex, -32
  br i1 %diff.check, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck67
  %n.vec71 = and i64 %i.eq, -8                    ; 3 uses
  %i.ey = add i64 %i.cf, %n.vec71
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body72 ] ; 2 uses
  %i.ez = add i64 %i.cf, %index73                 ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %i.ei, i64 %i.ez ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %wide.load74 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !47
  %wide.load75 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !47
  %i.fd = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load74, ptr %i.fa, align 4, !tbaa !47
  store <4 x i32> %wide.load75, ptr %i.fd, align 4, !tbaa !47
  %index.next76 = add nuw i64 %index73, 8         ; 2 uses
  %i.fe = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.fe, label %middle.block77, label %vector.body72, !llvm.loop !443

middle.block77:                                   ; preds = %vector.body72
  %cmp.n78 = icmp eq i64 %i.eq, %n.vec71
  br i1 %cmp.n78, label %._crit_edge, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck67, %.lr.ph49, %middle.block77
  %.048.ph = phi i64 [ %i.cf, %vector.memcheck67 ], [ %i.cf, %.lr.ph49 ], [ %i.ey, %middle.block77 ]
  br label %scalar.ph68

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fu, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !451, !nonnull !80, !align !81 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !36
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !26
  %i.fj = mul nsw i64 %i.fi, %.03451
  %i.fk = getelementptr [4 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.03246
  %i.fm = load ptr, ptr %i.ca, align 8, !tbaa !452, !nonnull !80, !align !81 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !86
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %.03246
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !26
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !76
  store <2 x i64> %i.ft, ptr %i.fl, align 16, !tbaa !76
  %i.fu = add nsw i64 %.03246, 4                  ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %i.cf
  br i1 %i.fv, label %.lr.ph47, label %.preheader, !llvm.loop !444

._crit_edge:                                      ; preds = %scalar.ph68, %middle.block77, %.preheader
  %i.fw = add nsw i64 %.03550, %i.bu
  %i.fx = srem i64 %i.fw, 4
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.fx)
  %i.fy = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond55.not = icmp eq i64 %i.fy, %i.bo
  br i1 %exitcond55.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSF_.exit, label %bb.c, !llvm.loop !445

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %.048 = phi i64 [ %i.gc, %scalar.ph68 ], [ %.048.ph, %scalar.ph68.preheader ] ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %i.ei, i64 %.048
  %i.ga = getelementptr [4 x i8], ptr %i.eo, i64 %.048
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !47
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !47
  %i.gc = add nsw i64 %.048, 1                    ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.bm
  br i1 %i.gd, label %scalar.ph68, label %._crit_edge, !llvm.loop !446

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEEENS3_INS4_IKNS5_IiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEELi0ELi0EE3runERSF_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{!2, !59}
!3 = distinct !{!3, !59}
!4 = distinct !{!4, !59}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 int", !14, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !15, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !15, i64 0}
!20 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi2ELi0EEE", !15, i64 0, !16, i64 8}
!21 = !{!20, !15, i64 0}
!22 = !{!20, !16, i64 8}
!23 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !16, i64 0}
!24 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEELi0EEE", !15, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !15, i64 0}
!26 = !{!23, !16, i64 0}
!27 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEE", !14, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEELi1EEE", !24, i64 0}
!30 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0ELb1EEE", !29, i64 0, !27, i64 24, !23, i64 32, !23, i64 40, !16, i64 48}
!31 = !{!30, !16, i64 48}
!32 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!33 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEE", !15, i64 0, !32, i64 8, !23, i64 16}
!34 = !{!33, !15, i64 0}
!35 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEENS3_IiLin1ELin1ELi0ELin1ELi2EEEEE", !15, i64 0, !32, i64 8, !23, i64 16}
!36 = !{!35, !15, i64 0}
!37 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEEEE", !14, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEE", !14, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSN5Eigen8internal9assign_opIiiEE", !14, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEELin1ELin1ELb0EEE", !14, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !15, i64 0, !16, i64 8}
!46 = !{!45, !16, i64 8}
!47 = !{!11, !11, i64 0}
!48 = !{!45, !15, i64 0}
!49 = !{!"bool", !10, i64 0}
!50 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIiLi0EiEEEE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEE", !50, i64 0}
!53 = !{!"_ZTSN5Eigen8internal17CompressedStorageIiiEE", !15, i64 0, !15, i64 8, !16, i64 16, !16, i64 24}
!54 = !{!"_ZTSN5Eigen12SparseMatrixIiLi0EiEE", !52, i64 0, !16, i64 8, !16, i64 16, !15, i64 24, !15, i64 32, !53, i64 40}
!55 = !{!54, !16, i64 16}
!56 = !{!54, !15, i64 24}
!57 = !{!"vtable pointer", !9, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!54, !16, i64 8}
!61 = !{!54, !15, i64 32}
!62 = !{!53, !15, i64 8}
!63 = !{!53, !15, i64 0}
!64 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIiLi1EiEEEE", !49, i64 0}
!65 = !{!64, !49, i64 0}
!66 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi1EiEEEE", !64, i64 0}
!67 = !{!"_ZTSN5Eigen12SparseMatrixIiLi1EiEE", !66, i64 0, !16, i64 8, !16, i64 16, !15, i64 24, !15, i64 32, !53, i64 40}
!68 = !{!67, !15, i64 24}
!69 = !{!67, !15, i64 32}
!70 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_7ProductINS_12SparseMatrixIiLi0EiEES3_Li2EEEEE", !49, i64 0}
!71 = !{!70, !49, i64 0}
!72 = !{!"p1 _ZTSN5Eigen12SparseMatrixIiLi0EiEE", !14, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!67, !16, i64 8}
!75 = !{!67, !16, i64 16}
!76 = !{!10, !10, i64 0}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!15, !15, i64 0}
!79 = !{!16, !16, i64 0}
!80 = !{}
!81 = !{i64 8}
!82 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi0EEE", !15, i64 0, !16, i64 8}
!83 = !{!82, !16, i64 8}
!84 = !{!82, !15, i64 0}
!85 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEE", !15, i64 0, !32, i64 8, !23, i64 16}
!86 = !{!85, !15, i64 0}
!87 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockIKNS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEE", !14, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!30, !27, i64 24}
!92 = !{!53, !16, i64 16}
!93 = !{!53, !16, i64 24}
!94 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIiEE", !11, i64 0}
!95 = !{!94, !11, i64 0}
!96 = !{!"_ZTSN5Eigen12SparseMatrixIiLi0EiE15SingletonVectorE", !11, i64 0, !11, i64 4}
!97 = !{!96, !11, i64 0}
!98 = !{i8 0, i8 2}
!99 = distinct !{!99, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!100 = distinct !{!100, !99, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!102 = distinct !{!102, !101, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!104 = distinct !{!104, !103, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!106 = distinct !{!106, !105, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!108 = distinct !{!108, !107, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!110 = distinct !{!110, !109, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!112 = distinct !{!112, !111, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!114 = distinct !{!114, !113, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!116 = distinct !{!116, !115, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!118 = distinct !{!118, !117, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!120 = distinct !{!120, !119, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!122 = distinct !{!122, !121, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!123 = distinct !{!123, !59}
!124 = distinct !{!124, !59}
!125 = distinct !{!125, !59}
!126 = distinct !{!126, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_9TransposeINS_12SparseMatrixIiLi0EiEEEEE4evalEv"}
!127 = distinct !{!127, !126, !"_ZNK5Eigen16SparseMatrixBaseINS_9TransposeINS_12SparseMatrixIiLi0EiEEEEE4evalEv: argument 0"}
!128 = distinct !{!128, i1 true, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIiLi0EiEEEmlIS2_EEKNS_7ProductIS2_T_Li2EEERKNS0_IS6_EE"}
!129 = distinct !{!129, !128, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIiLi0EiEEEmlIS2_EEKNS_7ProductIS2_T_Li2EEERKNS0_IS6_EE: argument 0"}
!130 = distinct !{!130, !59}
!131 = distinct !{!131, !59}
!132 = !{!100}
!133 = !{!102}
!134 = !{!104}
!135 = !{!106}
!136 = !{!108}
!137 = !{!110}
!138 = !{!112}
!139 = !{!114}
!140 = !{!116}
!141 = !{!118}
!142 = !{!120}
!143 = !{!122}
!144 = !{!127}
!145 = !{!129}
!146 = distinct !{!146, !77}
!147 = distinct !{!147, !59}
!148 = distinct !{!148, !59}
!149 = distinct !{!149, !59}
!150 = distinct !{!150, !59}
!151 = distinct !{!151, !59}
!152 = !{!"_ZTSN5Eigen11ProductImplINS_12SparseMatrixIiLi0EiEES2_Li2ENS_6SparseEEE", !70, i64 0}
!153 = !{!"_ZTSN5Eigen7ProductINS_12SparseMatrixIiLi0EiEES2_Li2EEE", !152, i64 0, !72, i64 8, !72, i64 16}
!154 = !{!153, !72, i64 8}
!155 = !{!153, !72, i64 16}
!156 = distinct !{!156, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!157 = distinct !{!157, !156, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!158 = distinct !{!158, i1 true, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!159 = distinct !{!159, !158, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
end_hunk_2
