Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orientable_patches?download=true
inline.NumInlined: 1691
inline.NumDeleted: 598
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIiLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.ab
  %min.iters.check430 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check430, label %.lr.ph85.i.i.i.i.i165.preheader504, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec432 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.go = shufflevector <4 x i32> %foldExtExtBinop489, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next439, %vector.body433 ] ; 2 uses
  %vec.phi435.a = phi <4 x i32> [ %i.go, %vector.ph431 ], [ %i.gr, %vector.body433 ]
  %vec.phi436 = phi <4 x i32> [ zeroinitializer, %vector.ph431 ], [ %i.gs, %vector.body433 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index434 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load437.a = load <4 x i32>, ptr %i.gp, align 4, !tbaa !47
  %wide.load438 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !47
  %i.gr = add <4 x i32> %wide.load437.a, %vec.phi435.a ; 2 uses
  %i.gs = add <4 x i32> %wide.load438, %vec.phi436 ; 2 uses
  %index.next439 = add nuw i64 %index434, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next439, %n.vec432
  br i1 %i.gt, label %middle.block440, label %vector.body433, !llvm.loop !393

middle.block440:                                  ; preds = %vector.body433
  %bin.rdx441 = add <4 x i32> %i.gs, %i.gr
  %i.gu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx441) ; 2 uses
  %cmp.n442 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec432
  br i1 %cmp.n442, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader504

.lr.ph85.i.i.i.i.i165.preheader504:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block440
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec432, %middle.block440 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %i.gm, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gu, %middle.block440 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block440, %bb.ab
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %i.gm, %bb.ab ], [ %i.gu, %middle.block440 ], [ %i.hj, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gv = icmp slt i64 %i.fk, %i.d
  br i1 %i.gv, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gw = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.fi
  %i.gx = sub i64 %i.d, %i.gw                     ; 3 uses
  %min.iters.check446 = icmp ult i64 %i.gx, 8
  br i1 %min.iters.check446, label %.lr.ph89.i.i.i.i.i162.preheader499, label %vector.ph447

vector.ph447:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec448 = and i64 %i.gx, -8                   ; 3 uses
  %i.gy = add i64 %i.fk, %n.vec448
  %i.gz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.ha = getelementptr [4 x i8], ptr %i.eo, i64 %i.fk
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next455, %vector.body449 ] ; 2 uses
  %vec.phi451.a = phi <4 x i32> [ %i.gz, %vector.ph447 ], [ %i.hd, %vector.body449 ]
  %vec.phi452 = phi <4 x i32> [ zeroinitializer, %vector.ph447 ], [ %i.he, %vector.body449 ]
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %index450 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load453.a = load <4 x i32>, ptr %i.hb, align 4, !tbaa !47
  %wide.load454 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !47
  %i.hd = add <4 x i32> %wide.load453.a, %vec.phi451.a ; 2 uses
  %i.he = add <4 x i32> %wide.load454, %vec.phi452 ; 2 uses
  %index.next455 = add nuw i64 %index450, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.hf, label %middle.block456, label %vector.body449, !llvm.loop !394

middle.block456:                                  ; preds = %vector.body449
  %bin.rdx457 = add <4 x i32> %i.he, %i.hd
  %i.hg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx457) ; 2 uses
  %cmp.n458 = icmp eq i64 %i.gx, %n.vec448
  br i1 %cmp.n458, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader499

.lr.ph89.i.i.i.i.i162.preheader499:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block456
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fk, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gy, %middle.block456 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.hg, %middle.block456 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader504, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.hk, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader504 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.hj, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader504 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.05683.i.i.i.i.i166
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !47
  %i.hj = add nsw i32 %i.hi, %.07582.i.i.i.i.i167 ; 2 uses
  %i.hk = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.hk, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !395

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader499, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.ho, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader499 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hn, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader499 ]
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %.05588.i.i.i.i.i163
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !47
  %i.hn = add nsw i32 %i.hm, %.187.i.i.i.i.i164   ; 2 uses
  %i.ho = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %i.d
  br i1 %i.hp, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !396

bb.ac:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hq = load i32, ptr %i.eo, align 4, !tbaa !47 ; 3 uses
  %i.hr = icmp sgt i64 %i.d, 1
  br i1 %i.hr, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.ac
  %i.hs = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check462 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check462, label %.lr.ph94.i.i.i.i.i179.preheader495, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec464 = and i64 %i.hs, -8                   ; 3 uses
  %i.ht = or disjoint i64 %n.vec464, 1
  %i.hu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hq, i64 0
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next471, %vector.body465 ] ; 2 uses
  %vec.phi467.a = phi <4 x i32> [ %i.hu, %vector.ph463 ], [ %i.hy, %vector.body465 ]
  %vec.phi468 = phi <4 x i32> [ zeroinitializer, %vector.ph463 ], [ %i.hz, %vector.body465 ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index466 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %wide.load469.a = load <4 x i32>, ptr %i.hw, align 4, !tbaa !47
  %wide.load470 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !47
  %i.hy = add <4 x i32> %wide.load469.a, %vec.phi467.a ; 2 uses
  %i.hz = add <4 x i32> %wide.load470, %vec.phi468 ; 2 uses
  %index.next471 = add nuw i64 %index466, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.ia, label %middle.block472, label %vector.body465, !llvm.loop !397

middle.block472:                                  ; preds = %vector.body465
  %bin.rdx473 = add <4 x i32> %i.hz, %i.hy
  %i.ib = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx473) ; 2 uses
  %cmp.n474 = icmp eq i64 %i.hs, %n.vec464
  br i1 %cmp.n474, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader495

.lr.ph94.i.i.i.i.i179.preheader495:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block472
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.ht, %middle.block472 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hq, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.ib, %middle.block472 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader495, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.if, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader495 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.ie, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader495 ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.092.i.i.i.i.i180
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !47
  %i.ie = add nsw i32 %i.id, %.291.i.i.i.i.i181   ; 2 uses
  %i.if = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.if, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !398

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block456, %middle.block472, %bb.ac, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.ie, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hq, %bb.ac ], [ %i.ib, %middle.block472 ], [ %i.hg, %middle.block456 ], [ %i.hn, %.lr.ph89.i.i.i.i.i162 ]
  %i.ig = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.v, %bb.u
  %.0.i.i161 = phi i64 [ %i.ew, %bb.u ], [ %i.ig, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.v ]
  %i.ih = add nsw i64 %.0.i.i161, %.0.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 9 uses
  store i64 0, ptr %i.ii, align 8, !tbaa !92
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !56
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !60
  %i.in = shl i64 %i.im, 2
  %i.io = add i64 %i.in, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ik, i8 0, i64 %i.io, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.iq, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ir = load i64, ptr %i.il, align 8, !tbaa !60
  %i.is = shl i64 %i.ir, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iq, i8 0, i64 %i.is, i1 false)
  br label %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.ad
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIiiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.it, i64 noundef %i.ih)
          to label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader unwind label %bb.ah

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit
  %i.iu = icmp sgt i64 %i.d, 0
  br i1 %i.iu, label %.lr.ph297, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge

.lr.ph297:                                        ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.jc = udiv i64 %i.b, 11
  %i.jd = tail call i64 @llvm.umin.i64(i64 %i.jc, i64 200)
  %i.je = mul nuw nsw i64 %i.b, 100
  %i.jf = udiv i64 %i.je, 139
  %.not298 = icmp eq i64 %i.b, 0
  br label %bb.ai

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader
  %i.jg = load ptr, ptr %i.ip, align 8, !tbaa !61
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.ae, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit

bb.ae:                                            ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge
  %i.ji = load i64, ptr %i.ii, align 8, !tbaa !92
  %i.jj = trunc i64 %i.ji to i32                  ; 2 uses
  %i.jk = load i64, ptr %i.il, align 8, !tbaa !60 ; 5 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  br i1 %i.jl, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.ae
  %i.jm = load ptr, ptr %i.ij, align 8, !tbaa !56 ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %.08.i = phi i64 [ %i.jk, %.lr.ph.i ], [ %i.jq, %bb.ag ] ; 4 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.08.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !47
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.jq = add nsw i64 %.08.i, -1
  %i.jr = icmp sgt i64 %.08.i, 0
  br i1 %i.jr, label %bb.af, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.ag, %bb.af
  %.0.lcssa.i = phi i64 [ -1, %bb.ag ], [ %.08.i, %bb.af ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.jk
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.js = sub i64 %i.jk, %.0.lcssa.i              ; 3 uses
  %min.iters.check478 = icmp ult i64 %i.js, 8
  br i1 %min.iters.check478, label %.lr.ph13.i.preheader491, label %vector.ph479

vector.ph479:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec480 = and i64 %i.js, -8                   ; 3 uses
  %i.jt = add i64 %.0.lcssa.i, %n.vec480
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ju = getelementptr [4 x i8], ptr %i.jm, i64 %.0.lcssa.i
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph479
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next483, %vector.body481 ] ; 2 uses
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %index482 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 4
  %i.jx = getelementptr i8, ptr %i.jv, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.jw, align 4, !tbaa !47
  store <4 x i32> %broadcast.splat, ptr %i.jx, align 4, !tbaa !47
  %index.next483 = add nuw i64 %index482, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next483, %n.vec480
  br i1 %i.jy, label %middle.block484, label %vector.body481, !llvm.loop !399

middle.block484:                                  ; preds = %vector.body481
  %cmp.n485 = icmp eq i64 %i.js, %n.vec480
  br i1 %cmp.n485, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit, label %.lr.ph13.i.preheader491

.lr.ph13.i.preheader491:                          ; preds = %.lr.ph13.i.preheader, %middle.block484
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.jt, %middle.block484 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader491, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.1.in12.i.ph, %.lr.ph13.i.preheader491 ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %.1.i
  store i32 %i.jj, ptr %i.jz, align 4, !tbaa !47
  %exitcond.not.i = icmp eq i64 %.1.i, %i.jk
  br i1 %exitcond.not.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit, label %.lr.ph13.i, !llvm.loop !400

.split:                                           ; preds = %bb.d
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split

.split255:                                        ; preds = %bb.f
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

.split253.thread:                                 ; preds = %bb.g
  %i.kc = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.r) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split

.split359:                                        ; preds = %bb.j
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ag, label %.split253, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

bb.ah:                                            ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %.lr.ph297, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit
  %.0107295 = phi i64 [ 0, %.lr.ph297 ], [ %i.re, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit ] ; 7 uses
  %i.kf = load ptr, ptr %i.ij, align 8, !tbaa !56
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0107295 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !47
  %i.ki = getelementptr i8, ptr %i.kg, i64 4
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !47
  %i.kj = load ptr, ptr %i.iv, align 8, !tbaa !63
  %i.kk = load ptr, ptr %i.iw, align 8, !tbaa !62
  %i.kl = load ptr, ptr %i.ix, align 8, !tbaa !56
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.0107295 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !47
  %i.ko = sext i32 %i.kn to i64                   ; 3 uses
  %i.kp = load ptr, ptr %i.en, align 8, !tbaa !61 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kr = getelementptr i8, ptr %i.km, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !47
  %i.kt = sext i32 %i.ks to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.0107295
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !47
  %i.kw = sext i32 %i.kv to i64
  %i.kx = add nsw i64 %i.kw, %i.ko
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.aj, %bb.ak
  %.sink.i = phi i64 [ %i.kt, %bb.aj ], [ %i.kx, %bb.ak ] ; 2 uses
  %i.ky = icmp sgt i64 %.sink.i, %i.ko
  br i1 %i.ky, label %.lr.ph286, label %._crit_edge287.thread

.lr.ph286:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.kz = load ptr, ptr %i.iy, align 8, !tbaa !63
  %i.la = load ptr, ptr %i.iz, align 8, !tbaa !62
  %i.lb = load ptr, ptr %i.ja, align 8, !tbaa !56
  %i.lc = load ptr, ptr %i.ap, align 8, !tbaa !61 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, null
  br label %bb.al

._crit_edge287:                                   ; preds = %._crit_edge
  br i1 %3, label %bb.ax, label %.preheader262

._crit_edge287.thread:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  br i1 %3, label %bb.ax, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit

.preheader262:                                    ; preds = %._crit_edge287
  %i.le = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.le, label %.lr.ph290.preheader, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit

.lr.ph290.preheader:                              ; preds = %.preheader262
  %.pre = load i64, ptr %i.ii, align 8, !tbaa !92
  br label %.lr.ph290

bb.al:                                            ; preds = %.lr.ph286, %._crit_edge
  %.0106285 = phi i64 [ 0, %.lr.ph286 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.8221.0284 = phi i64 [ %i.ko, %.lr.ph286 ], [ %i.lv, %._crit_edge ] ; 3 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %.sroa.8221.0284
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !47 ; 2 uses
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %.sroa.8221.0284
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !47
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lj ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !47
  %i.lm = sext i32 %i.ll to i64                   ; 3 uses
  br i1 %i.ld, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ln = getelementptr i8, ptr %i.lk, i64 4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !47
  %i.lp = sext i32 %i.lo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186

bb.an:                                            ; preds = %bb.al
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.lj
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !47
  %i.ls = sext i32 %i.lr to i64
  %i.lt = add nsw i64 %i.ls, %i.lm
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186: ; preds = %bb.am, %bb.an
  %.sink.i185 = phi i64 [ %i.lp, %bb.am ], [ %i.lt, %bb.an ] ; 2 uses
  %i.lu = icmp sgt i64 %.sink.i185, %i.lm
  br i1 %i.lu, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aq, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186
  %.1.lcssa = phi i64 [ %.0106285, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186 ], [ %.2, %bb.aq ] ; 4 uses
  %i.lv = add nsw i64 %.sroa.8221.0284, 1         ; 2 uses
  %exitcond314.not = icmp eq i64 %i.lv, %.sink.i
  br i1 %exitcond314.not, label %._crit_edge287, label %bb.al, !llvm.loop !401

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186, %bb.aq
  %.1283 = phi i64 [ %.2, %bb.aq ], [ %.0106285, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186 ] ; 3 uses
  %.sroa.8.0282 = phi i64 [ %i.mm, %bb.aq ], [ %i.lm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEE13InnerIteratorC2ERKS3_l.exit186 ] ; 3 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.la, i64 %.sroa.8.0282
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIiLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5Eigen6numext4log2EiE5table, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !47
  %i.oo = sext i32 %i.on to i64
  %i.op = mul nsw i64 %.0106.lcssa349, %i.oo
  %i.oq = icmp slt i64 %i.op, %i.jf
  br i1 %i.oq, label %bb.az, label %.preheader

.preheader:                                       ; preds = %bb.ay
  br i1 %.not298, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, label %.lr.ph292

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.or = icmp sgt i64 %.0106.lcssa349, 1
  br i1 %i.or, label %bb.ba, label %_ZSt4sortIPlEvT_S1_.exit

bb.ba:                                            ; preds = %bb.az
  %.idx = shl nuw nsw i64 %.0106.lcssa349, 3
  %i.os = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx ; 2 uses
  %i.ot = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0106.lcssa349, i1 true)
  %i.ou = shl nuw nsw i64 %i.ot, 1
  %i.ov = xor i64 %i.ou, 126
  invoke void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.an, ptr noundef nonnull %i.os, i64 noundef %i.ov)
          to label %.noexc188 unwind label %bb.bb

.noexc188:                                        ; preds = %bb.ba
  invoke void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.an, ptr noundef nonnull %i.os)
          to label %.lr.ph294.preheader unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc188, %bb.ba
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt4sortIPlEvT_S1_.exit:                         ; preds = %bb.az
  %i.ox = icmp eq i64 %.0106.lcssa349, 1
  br i1 %i.ox, label %.lr.ph294.preheader, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit

.lr.ph294.preheader:                              ; preds = %.noexc188, %_ZSt4sortIPlEvT_S1_.exit
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.bh
  %.0104293 = phi i64 [ %i.qi, %bb.bh ], [ 0, %.lr.ph294.preheader ] ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0104293
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !79 ; 3 uses
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !47
  %i.pc = load ptr, ptr %i.ij, align 8, !tbaa !56
  %i.pd = getelementptr [4 x i8], ptr %i.pc, i64 %.0107295
  %i.pe = getelementptr i8, ptr %i.pd, i64 4      ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !47 ; 2 uses
  %i.pg = sext i32 %i.pf to i64
  %i.ph = add nsw i32 %i.pf, 1
  store i32 %i.ph, ptr %i.pe, align 4, !tbaa !47
  %i.pi = load i64, ptr %i.ii, align 8, !tbaa !92 ; 5 uses
  %i.pj = add nsw i64 %i.pi, 1                    ; 3 uses
  %i.pk = load i64, ptr %i.jb, align 8, !tbaa !93
  %.not258 = icmp sgt i64 %i.pk, %i.pi
  br i1 %.not258, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph294
  %i.pl = sitofp i64 %i.pj to double
  %i.pm = fptosi double %i.pl to i64
  %i.pn = add nsw i64 %i.pj, %i.pm
  %.sroa.speculated.i198 = call i64 @llvm.smin.i64(i64 %i.pn, i64 2147483647) ; 5 uses
  %.not259 = icmp sgt i64 %.sroa.speculated.i198, %i.pi
  br i1 %.not259, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.po = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.po, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.po, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc210 unwind label %.loopexit.split-lp

.noexc210:                                        ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.pp = icmp ugt i64 %.sroa.speculated.i198, 4611686018427387903
  %i.pq = shl nuw i64 %.sroa.speculated.i198, 2
  %i.pr = select i1 %i.pp, i64 -1, i64 %i.pq      ; 2 uses
  %i.ps = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pr) #25
          to label %.noexc211 unwind label %.loopexit260 ; 3 uses

.noexc211:                                        ; preds = %bb.be
  %i.pt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.pr) #25
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200 unwind label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199 ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200: ; preds = %.noexc211
  %i.pu = load i64, ptr %i.ii, align 8, !tbaa !79
  %.sroa.speculated.i.i201 = call i64 @llvm.smin.i64(i64 %i.pu, i64 %.sroa.speculated.i198) ; 2 uses
  %i.pv = icmp sgt i64 %.sroa.speculated.i.i201, 0
  %.pre.i.i202 = load ptr, ptr %i.it, align 8, !tbaa !78 ; 3 uses
  br i1 %i.pv, label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200
  %.pre25.i.i205 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i200
  %.idx.i.i209 = shl nuw nsw i64 %.sroa.speculated.i.i201, 2 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ps, ptr align 4 %.pre.i.i202, i64 %.idx.i.i209, i1 false)
  %i.pw = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.pt, ptr align 4 %i.pw, i64 %.idx.i.i209, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199: ; preds = %.noexc211
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.ps) #27
  br label %.body

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206: ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203
  %i.py = phi ptr [ %.pre25.i.i205, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8_crit_edge.i.i203 ], [ %i.pw, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i208 ] ; 2 uses
  store ptr %i.ps, ptr %i.it, align 8, !tbaa !78
  store ptr %i.pt, ptr %.phi.trans.insert.i.i, align 8, !tbaa !78
  store i64 %.sroa.speculated.i198, ptr %i.jb, align 8, !tbaa !93
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207, label %bb.bf

bb.bf:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206
  call void @_ZdaPv(ptr noundef nonnull %i.py) #27
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207: ; preds = %bb.bf, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit8.i.i206
  %i.qa = icmp eq ptr %.pre.i.i202, null
  br i1 %i.qa, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i202) #27
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph294, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit9.i.i207, %bb.bg
  store i64 %i.pj, ptr %i.ii, align 8, !tbaa !92
  %i.qb = load ptr, ptr %i.it, align 8, !tbaa !63 ; 2 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.pi
  store i32 0, ptr %i.qc, align 4, !tbaa !47
  %i.qd = trunc i64 %i.oz to i32
  %i.qe = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.pi
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !47
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.pg
  store i32 %i.pb, ptr %i.qg, align 4, !tbaa !47
  %i.qh = getelementptr inbounds i8, ptr %i.ak, i64 %i.oz
  store i8 0, ptr %i.qh, align 1, !tbaa !407
  %i.qi = add nuw nsw i64 %.0104293, 1            ; 2 uses
  %exitcond317.not = icmp eq i64 %i.qi, %.0106.lcssa349
  br i1 %exitcond317.not, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, label %.lr.ph294, !llvm.loop !404

.loopexit260:                                     ; preds = %bb.be
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph292:                                        ; preds = %.preheader, %bb.bl
  %.0291 = phi i64 [ %i.rd, %bb.bl ], [ 0, %.preheader ] ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.0291 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !407, !range !98, !noundef !80
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %.lr.ph292
  store i8 0, ptr %i.qj, align 1, !tbaa !407
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0291
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !47
  %i.qo = load ptr, ptr %i.ij, align 8, !tbaa !56
  %i.qp = getelementptr [4 x i8], ptr %i.qo, i64 %.0107295
  %i.qq = getelementptr i8, ptr %i.qp, i64 4      ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !47 ; 2 uses
  %i.qs = add nsw i32 %i.qr, 1
  store i32 %i.qs, ptr %i.qq, align 4, !tbaa !47
  %i.qt = load i64, ptr %i.ii, align 8, !tbaa !92 ; 3 uses
  %i.qu = add nsw i64 %i.qt, 1
  invoke void @_ZN5Eigen8internal17CompressedStorageIiiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.it, i64 noundef %i.qu, double noundef 1.000000e+00)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.qv = sext i32 %i.qr to i64
  %i.qw = load ptr, ptr %i.it, align 8, !tbaa !63 ; 2 uses
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qt
  store i32 0, ptr %i.qx, align 4, !tbaa !47
  %i.qy = trunc i64 %.0291 to i32
  %i.qz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !62
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.qt
  store i32 %i.qy, ptr %i.ra, align 4, !tbaa !47
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qv
  store i32 %i.qn, ptr %i.rb, align 4, !tbaa !47
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %.lr.ph292, %bb.bj
  %i.rd = add nuw nsw i64 %.0291, 1               ; 2 uses
  %exitcond316.not = icmp eq i64 %i.rd, %i.b
  br i1 %exitcond316.not, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit, label %.lr.ph292, !llvm.loop !405

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit:   ; preds = %bb.aw, %bb.bl, %bb.bh, %._crit_edge287.thread, %.preheader262, %.preheader, %_ZSt4sortIPlEvT_S1_.exit
  %i.re = add nuw nsw i64 %.0107295, 1            ; 2 uses
  %exitcond318.not = icmp eq i64 %i.re, %i.d
  br i1 %exitcond318.not, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge, label %bb.ai, !llvm.loop !406

_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block484, %.critedge.i, %bb.ae, %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge
  br i1 %i.ao, label %bb.bm, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit

bb.bm:                                            ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit
  call void @free(ptr noundef nonnull %i.an) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE8finalizeEv.exit, %bb.bm
  br i1 %i.am, label %bb.bn, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

bb.bn:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit
  call void @free(ptr noundef nonnull %i.al) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit, %bb.bn
  br i1 %i.e, label %bb.bo, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

bb.bo:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit
  call void @free(ptr noundef %i.ak) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit, %bb.bo
  ret void

.body:                                            ; preds = %.loopexit260, %.loopexit.split-lp, %.loopexit264, %.loopexit.split-lp265, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i, %bb.bk, %bb.bb, %bb.ah
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %i.px, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i199 ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ], [ %i.ke, %bb.ah ], [ %i.ow, %bb.bb ], [ %i.rc, %bb.bk ], [ %i.nm, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit11.i.i ], [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit, %.loopexit260 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 4 uses
  br i1 %i.ao, label %.split356, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193

.split356:                                        ; preds = %.body
  call void @free(ptr noundef nonnull %i.an) #23
  br i1 %i.am, label %.split253, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193: ; preds = %.body
  br i1 %i.am, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

.split253:                                        ; preds = %.split359, %.split356
  %.pn128.pn.pn.pn.pn.pn.pn355 = phi { ptr, i32 } [ %i.kd, %.split359 ], [ %.pn128.pn.pn.pn.pn, %.split356 ] ; 2 uses
  %i.rf = phi ptr [ %i.ae, %.split359 ], [ %i.ak, %.split356 ]
  %i.rg = phi ptr [ %i.af, %.split359 ], [ %i.al, %.split356 ]
  call void @free(ptr noundef nonnull %i.rg) #23
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split: ; preds = %.split253, %.split255, %.split, %.split253.thread, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193
  %.sink = phi ptr [ %i.al, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193 ], [ %i.f, %.split ], [ %i.q, %.split255 ], [ %i.rf, %.split253 ], [ %i.q, %.split253.thread ]
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251.ph = phi { ptr, i32 } [ %.pn128.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193 ], [ %i.ka, %.split ], [ %i.kb, %.split255 ], [ %.pn128.pn.pn.pn.pn.pn.pn355, %.split253 ], [ %i.kc, %.split253.thread ]
  call void @free(ptr noundef %.sink) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split, %.split359, %.split356, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193, %.split255, %.split253
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251 = phi { ptr, i32 } [ %i.kb, %.split255 ], [ %.pn128.pn.pn.pn.pn.pn.pn355, %.split253 ], [ %.pn128.pn.pn.pn.pn, %.split356 ], [ %.pn128.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit193 ], [ %i.kd, %.split359 ], [ %.pn128.pn.pn.pn.pn.pn.pn.pn.pn251.ph, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195.sink.split ]
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
!99 = distinct !{!99, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!100 = distinct !{!100, !99, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!101 = distinct !{!101, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!102 = distinct !{!102, !101, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!103 = distinct !{!103, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!104 = distinct !{!104, !103, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!105 = distinct !{!105, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!106 = distinct !{!106, !105, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!107 = distinct !{!107, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!108 = distinct !{!108, !107, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!109 = distinct !{!109, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!110 = distinct !{!110, !109, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!111 = distinct !{!111, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!112 = distinct !{!112, !111, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!113 = distinct !{!113, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!114 = distinct !{!114, !113, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!115 = distinct !{!115, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!116 = distinct !{!116, !115, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!117 = distinct !{!117, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!118 = distinct !{!118, !117, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!119 = distinct !{!119, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!120 = distinct !{!120, !119, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!121 = distinct !{!121, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!122 = distinct !{!122, !121, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!123 = distinct !{!123, !59}
!124 = distinct !{!124, !59}
!125 = distinct !{!125, !59}
!126 = distinct !{!126, !"_ZNK5Eigen16SparseMatrixBaseINS_9TransposeINS_12SparseMatrixIiLi0EiEEEEE4evalEv"}
!127 = distinct !{!127, !126, !"_ZNK5Eigen16SparseMatrixBaseINS_9TransposeINS_12SparseMatrixIiLi0EiEEEEE4evalEv: argument 0"}
!128 = distinct !{!128, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIiLi0EiEEEmlIS2_EEKNS_7ProductIS2_T_Li2EEERKNS0_IS6_EE"}
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
!156 = distinct !{!156, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!157 = distinct !{!157, !156, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!158 = distinct !{!158, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!159 = distinct !{!159, !158, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!160 = distinct !{!160, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
end_hunk_2
