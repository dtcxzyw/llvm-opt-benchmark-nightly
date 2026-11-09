Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !42
  store double %i.bu, ptr %i.br, align 8, !tbaa !42
  store double %i.bt, ptr %i.bs, align 8, !tbaa !42
  %i.bv = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.bv, %i.aq
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1000

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block257, %bb.d
  %i.bw = load i32, ptr %2, align 4, !tbaa !43
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %2, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.by = load ptr, ptr %0, align 8, !tbaa !217   ; 2 uses
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !91
  %i.ca = mul nsw i64 %i.bz, %.042167
  %i.cb = getelementptr [8 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %.042167
  %.not.i.i.i.i.i45 = icmp eq ptr %i.by, null
  %i.cd = select i1 %.not.i.i.i.i.i45, ptr null, ptr %i.cb ; 2 uses
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1036
  %sext = shl i64 %i.u, 32
  %i.cf = ashr exact i64 %sext, 32                ; 7 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = icmp eq i32 %i.v, 0
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.cd, null
  %i.ci = getelementptr [8 x i8], ptr %i.cd, i64 %i.cg
  %i.cj = or i1 %i.ch, %.not.i.i.i.i.i.i46
  %i.ck = select i1 %i.cj, ptr null, ptr %i.ci    ; 6 uses
  %i.cl = load double, ptr %i.cc, align 8, !tbaa !42, !noalias !1037 ; 5 uses
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = and i64 %i.cm, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.co = lshr exact i64 %i.cm, 3
  %i.cp = and i64 %i.co, 1
  %i.cq = call i64 @llvm.smin.i64(i64 %i.cp, i64 %i.cf)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cq, %bb.f ], [ %i.cf, %bb.e ] ; 9 uses
  %i.cr = sub nsw i64 %i.cf, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cs = sdiv i64 %i.cr, 2
  %i.ct = shl nsw i64 %i.cs, 1                    ; 2 uses
  %i.cu = add nsw i64 %i.ct, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.cv = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check224 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check224, label %.lr.ph.i.i.i.i.i.i.i.preheader263, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec226 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert227 = insertelement <2 x double> poison, double %i.cl, i64 0
  %broadcast.splat228 = shufflevector <2 x double> %broadcast.splatinsert227, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph225
  %index230 = phi i64 [ 0, %vector.ph225 ], [ %index.next232, %vector.body229 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index230 ; 2 uses
  %wide.load231 = load <2 x double>, ptr %i.cw, align 8, !tbaa !42
  %i.cx = fdiv <2 x double> %wide.load231, %broadcast.splat228
  store <2 x double> %i.cx, ptr %i.cw, align 8, !tbaa !42
  %index.next232 = add nuw i64 %index230, 2       ; 2 uses
  %i.cy = icmp eq i64 %index.next232, %n.vec226
  br i1 %i.cy, label %middle.block233, label %vector.body229, !llvm.loop !1005

middle.block233:                                  ; preds = %vector.body229
  %cmp.n234 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec226
  br i1 %cmp.n234, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader263

.lr.ph.i.i.i.i.i.i.i.preheader263:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block233
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec226, %middle.block233 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader263, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader263 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !42
  %i.db = fdiv double %i.da, %i.cl
  store double %i.db, ptr %i.cz, align 8, !tbaa !42
  %i.dc = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dc, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1006

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block233, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dd = icmp sgt i64 %i.cr, 1
  br i1 %i.dd, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.de = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i47

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i47, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dg = icmp slt i64 %i.cu, %i.cf
  br i1 %i.dg, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dh = add i64 %.0.i.i.i.i.i.i.i, %i.ct
  %i.di = sub i64 %i.cf, %i.dh                    ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.di, 2
  br i1 %min.iters.check211, label %.lr.ph.i17.i.i.i.i.i.i.preheader262, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec213 = and i64 %i.di, -2                   ; 3 uses
  %i.dj = add i64 %i.cu, %n.vec213
  %broadcast.splatinsert214 = insertelement <2 x double> poison, double %i.cl, i64 0
  %broadcast.splat215 = shufflevector <2 x double> %broadcast.splatinsert214, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = getelementptr [8 x i8], ptr %i.ck, i64 %i.cu
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph212
  %index217 = phi i64 [ 0, %vector.ph212 ], [ %index.next219, %vector.body216 ] ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %index217 ; 2 uses
  %wide.load218 = load <2 x double>, ptr %i.dl, align 8, !tbaa !42
  %i.dm = fdiv <2 x double> %wide.load218, %broadcast.splat215
  store <2 x double> %i.dm, ptr %i.dl, align 8, !tbaa !42
  %index.next219 = add nuw i64 %index217, 2       ; 2 uses
  %i.dn = icmp eq i64 %index.next219, %n.vec213
  br i1 %i.dn, label %middle.block220, label %vector.body216, !llvm.loop !1007

middle.block220:                                  ; preds = %vector.body216
  %cmp.n221 = icmp eq i64 %i.di, %n.vec213
  br i1 %cmp.n221, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader262

.lr.ph.i17.i.i.i.i.i.i.preheader262:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block220
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dj, %middle.block220 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader262, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader262 ] ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = fdiv double %i.dp, %i.cl
  store double %i.dq, ptr %i.do, align 8, !tbaa !42
  %i.dr = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.dr, %i.cf
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1008

.lr.ph.i.i.i.i.i.i47:                             ; preds = %.lr.ph.i.i.i.i.i.i47, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i47 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dt = load <2 x double>, ptr %i.ds, align 16, !tbaa !24
  %i.du = fdiv <2 x double> %i.dt, %i.df
  store <2 x double> %i.du, ptr %i.ds, align 16, !tbaa !24
  %i.dv = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.dw = icmp slt i64 %i.dv, %i.cu
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i47, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1009

bb.g:                                             ; preds = %bb.b
  %i.dx = icmp eq i64 %.0168, -1
  %spec.select = select i1 %i.dx, i64 %.042167, i64 %.0168
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block220, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.1 = phi i64 [ %spec.select, %bb.g ], [ %.0168, %._crit_edge.i.i.i.i.i.i ], [ %.0168, %middle.block220 ], [ %.0168, %.lr.ph.i17.i.i.i.i.i.i ] ; 2 uses
  %i.dy = icmp slt i64 %.042167, %i.k
  br i1 %i.dy, label %bb.h, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

bb.h:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.dz = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1038 ; 4 uses
  %i.ea = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !1038 ; 3 uses
  %i.eb = mul nsw i64 %i.ea, %.042167
  %.not.i.i.i.i.i48 = icmp eq ptr %i.dz, null     ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = select i1 %.not.i.i.i.i.i48, ptr null, ptr %i.ec ; 4 uses
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1038 ; 2 uses
  %sext165 = shl i64 %i.u, 32
  %i.ef = ashr exact i64 %sext165, 32             ; 8 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.ed, i64 %i.eg ; 10 uses
  %sext166 = shl i64 %i.w, 32
  %i.ei = ashr exact i64 %sext166, 32             ; 3 uses
  %i.ej = and i64 %i.w, 4294967295
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit: ; preds = %bb.h
  %i.el = icmp eq i32 %i.v, 0
  %i.em = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !1039
  %i.en = sub nsw i64 %i.em, %i.ei
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.042167
  %i.ep = mul nsw i64 %i.en, %i.ea                ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = getelementptr [8 x i8], ptr %i.dz, i64 %i.eg
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %i.ep
  %i.et = select i1 %i.el, i1 true, i1 %.not.i.i.i.i.i48
  %i.eu = select i1 %i.et, ptr null, ptr %i.es    ; 2 uses
  %i.ev = icmp sgt i64 %i.ei, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  %i.ew = shl i64 %i.ee, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ed, i64 %i.ew
  %invariant.op = sub i64 %i.ew, %i.p
  %invariant.op271 = sub i64 %i.ew, %i.s
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.ix, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ex = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !1040
  %i.ey = mul nsw i64 %i.ex, %.029.i.i.i.i.i
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ey
  %i.fa = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.ez ; 14 uses
  %i.fb = mul nsw i64 %.029.i.i.i.i.i, %i.ea
  %i.fc = getelementptr [8 x i8], ptr %i.eq, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !42, !noalias !1041 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fe = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.ff = and i64 %i.fe, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fg = lshr exact i64 %i.fe, 3
  %i.fh = and i64 %i.fg, 1
  %i.fi = call i64 @llvm.smin.i64(i64 %i.fh, i64 %i.ef)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fi, %bb.i ], [ %i.ef, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.fj = sub nsw i64 %i.ef, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fk = sdiv i64 %i.fj, 2                       ; 2 uses
  %i.fl = shl nsw i64 %i.fk, 1                    ; 2 uses
  %i.fm = add nsw i64 %i.fl, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.fn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check191 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check191, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.fo = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %.reass = add i64 %i.fo, %invariant.op
  %i.fq = getelementptr i8, ptr %i.ed, i64 %.reass
  %bound0193 = icmp ult ptr %i.fa, %i.fq
  %bound1194 = icmp ult ptr %i.eh, %i.fp
  %found.conflict195 = and i1 %bound0193, %bound1194
  br i1 %found.conflict195, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck192
  %n.vec197 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %i.fd, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph196
  %index201 = phi i64 [ 0, %vector.ph196 ], [ %index.next206, %vector.body200 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index201 ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index201 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load202 = load <2 x double>, ptr %i.fs, align 8, !tbaa !42, !alias.scope !1042
  %wide.load203 = load <2 x double>, ptr %i.ft, align 8, !tbaa !42, !alias.scope !1042
  %i.fu = fmul <2 x double> %broadcast.splat199, %wide.load202
  %i.fv = fmul <2 x double> %broadcast.splat199, %wide.load203
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load204 = load <2 x double>, ptr %i.fr, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  %wide.load205 = load <2 x double>, ptr %i.fw, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  %i.fx = fsub <2 x double> %wide.load204, %i.fu
  %i.fy = fsub <2 x double> %wide.load205, %i.fv
  store <2 x double> %i.fx, ptr %i.fr, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  store <2 x double> %i.fy, ptr %i.fw, align 8, !tbaa !42, !alias.scope !1043, !noalias !1042
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next206, %n.vec197
  br i1 %i.fz, label %middle.block207, label %vector.body200, !llvm.loop !1021

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec197
  br i1 %cmp.n208, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261:    ; preds = %vector.memcheck192, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block207
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec197, %middle.block207 ] ; 5 uses
  %.neg269 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter265 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !42
  %i.gd = fmul double %i.fd, %i.gc
  %i.ge = load double, ptr %i.ga, align 8, !tbaa !42
  %i.gf = fsub double %i.ge, %i.gd
  store double %i.gf, ptr %i.ga, align 8, !tbaa !42
  %i.gg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader261 ], [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gh = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg269
  br i1 %i.gh, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !42
  %i.gl = fmul double %i.fd, %i.gk
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !42
  %i.gn = fsub double %i.gm, %i.gl
  store double %i.gn, ptr %i.gi, align 8, !tbaa !42
  %i.go = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.go
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !42
  %i.gs = fmul double %i.fd, %i.gr
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !42
  %i.gu = fsub double %i.gt, %i.gs
  store double %i.gu, ptr %i.gp, align 8, !tbaa !42
  %i.gv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.gv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1022

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block207, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = icmp sgt i64 %i.fj, 1
  br i1 %i.gw, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = icmp slt i64 %i.fm, %i.ef
  br i1 %i.gy, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fl
  %i.ha = sub i64 %i.ef, %i.gz                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ha, 4
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hb = shl i64 %i.fk, 4
  %i.hc = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.hd = add i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = getelementptr i8, ptr %i.fa, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.fa, i64 %i.s
  %.reass272 = add i64 %i.hd, %invariant.op271
  %i.hg = getelementptr i8, ptr %i.ed, i64 %.reass272
  %bound0 = icmp ult ptr %i.he, %scevgep
  %bound1 = icmp ult ptr %i.hg, %i.hf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ha, -4                      ; 3 uses
  %i.hh = add i64 %i.fm, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hi = add i64 %i.fm, %index                   ; 2 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.hi ; 3 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hi ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load = load <2 x double>, ptr %i.hk, align 8, !tbaa !42, !alias.scope !1044
  %wide.load180 = load <2 x double>, ptr %i.hl, align 8, !tbaa !42, !alias.scope !1044
  %i.hm = fmul <2 x double> %broadcast.splat, %wide.load
  %i.hn = fmul <2 x double> %broadcast.splat, %wide.load180
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %wide.load181 = load <2 x double>, ptr %i.hj, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %wide.load182 = load <2 x double>, ptr %i.ho, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %i.hp = fsub <2 x double> %wide.load181, %i.hm
  %i.hq = fsub <2 x double> %wide.load182, %i.hn
  store <2 x double> %i.hp, ptr %i.hj, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  store <2 x double> %i.hq, ptr %i.ho, align 8, !tbaa !42, !alias.scope !1045, !noalias !1044
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !1026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ha, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hh, %middle.block ] ; 6 uses
  %i.hs = sub i64 %i.u, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg270 = add i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter267 = and i64 %i.hs, 1
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !42
  %i.hw = fmul double %i.fd, %i.hv
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !42
  %i.hy = fsub double %i.hx, %i.hw
  store double %i.hy, ptr %i.ht, align 8, !tbaa !42
  %i.hz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader260 ], [ %i.hz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ia = icmp eq i64 %i.ef, %.neg270
  br i1 %i.ia, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.io, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !42
  %i.ie = fmul double %i.fd, %i.id
  %i.if = load double, ptr %i.ib, align 8, !tbaa !42
  %i.ig = fsub double %i.if, %i.ie
  store double %i.ig, ptr %i.ib, align 8, !tbaa !42
  %i.ih = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ih
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !42
  %i.il = fmul double %i.fd, %i.ik
  %i.im = load double, ptr %i.ii, align 8, !tbaa !42
  %i.in = fsub double %i.im, %i.il
  store double %i.in, ptr %i.ii, align 8, !tbaa !42
  %i.io = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.io, %i.ef
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1027

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ir = load <2 x double>, ptr %i.iq, align 1, !tbaa !24
  %i.is = fmul <2 x double> %i.gx, %i.ir
  %i.it = load <2 x double>, ptr %i.ip, align 16, !tbaa !24
  %i.iu = fsub <2 x double> %i.it, %i.is
  store <2 x double> %i.iu, ptr %i.ip, align 16, !tbaa !24
  %i.iv = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %i.fm
  br i1 %i.iw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1028

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ix = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ix, %i.ei
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1029

_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %bb.h, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4tailINS_8internal19VariableAndFixedIntILin1EEEEENS9_22FixedSegmentReturnTypeIXsr8internal15get_fixed_valueIT_EE5valueEE4TypeESF_.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.iy = add nuw nsw i64 %.042167, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.iy, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1030
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal12visitor_implINS0_20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEENS0_17visitor_evaluatorISG_EELin1ELb1ELb0ELb0EE3runERKSJ_RSH_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1056, !nonnull !88, !align !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge81, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231  ; 4 uses
  br i1 %i.f, label %bb.c, label %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.j, ptr %i.k, align 8, !tbaa !229
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.d

_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit: ; preds = %bb.b
  %i.l = load <2 x i64>, ptr %i.h, align 1, !tbaa !24
  %i.m = and <2 x i64> %i.l, splat (i64 9223372036854775807)
  %i.n = bitcast <2 x i64> %i.m to <2 x double>   ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.n, i64 0 ; 3 uses
  %i.o = fcmp uno double %.sroa.0.0.vec.extract.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.n, i64 1 ; 3 uses
  %i.p = fcmp ord double %.sroa.0.8.vec.extract.i.i.i, 0.000000e+00
  %i.q = fcmp uge double %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.8.vec.extract.i.i.i
  %.not3.i.i.i.i = and i1 %i.p, %i.q
  %i.r = select i1 %i.o, i1 true, i1 %.not3.i.i.i.i
  %i.s = select i1 %i.r, double %.sroa.0.0.vec.extract.i.i.i, double %.sroa.0.8.vec.extract.i.i.i ; 4 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  %i.u = fcmp uno <2 x double> %i.n, zeroinitializer
  %i.v = insertelement <2 x double> poison, double %i.s, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fcmp oeq <2 x double> %i.w, %i.n
  %.in = select i1 %i.t, <2 x i1> %i.u, <2 x i1> %i.x
  %i.y = select <2 x i1> %.in, <2 x double> <double 2.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = tail call double @llvm.maxnum.f64(double %i.z, double %i.aa)
  %i.ac = fptosi double %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.s, ptr %i.ad, align 8, !tbaa !229
  %i.ae = sub nsw i64 2, %i.ac
  store i64 %i.ae, ptr %1, align 8, !tbaa !233
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !1057
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit, %bb.c
  %.promoted = phi double [ %i.j, %bb.c ], [ %i.s, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit ] ; 2 uses
  %.073 = phi i64 [ 1, %bb.c ], [ 2, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE10initpacketERKDv2_dll.exit ] ; 3 uses
  %i.ag = add nuw nsw i64 %.073, 1
  %i.ah = icmp slt i64 %i.ag, %i.d
  br i1 %i.ah, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.e

.preheader:                                       ; preds = %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit, %bb.d
  %.promoted167 = phi double [ %.promoted, %bb.d ], [ %i.bm, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ]
  %.174.lcssa = phi i64 [ %.073, %bb.d ], [ %i.ao, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 2 uses
  %i.ak = icmp slt i64 %.174.lcssa, %i.d
  br i1 %i.ak, label %.lr.ph166, label %.critedge81

.lr.ph166:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit
  %i.an = phi double [ %.promoted, %.lr.ph ], [ %i.bm, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 5 uses
  %.174164 = phi i64 [ %.073, %.lr.ph ], [ %i.ao, %_ZN5Eigen8internal20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EE6packetERKDv2_dll.exit ] ; 3 uses
  %i.ao = add nuw nsw i64 %.174164, 2             ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.174164
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !24
  %i.ar = and <2 x i64> %i.aq, splat (i64 9223372036854775807)
  %i.as = bitcast <2 x i64> %i.ar to <2 x double> ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i82 = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.at = fcmp uno double %.sroa.0.0.vec.extract.i.i.i82, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i83 = extractelement <2 x double> %i.as, i64 1 ; 3 uses
  %i.au = fcmp ord double %.sroa.0.8.vec.extract.i.i.i83, 0.000000e+00
  %i.av = fcmp uge double %.sroa.0.0.vec.extract.i.i.i82, %.sroa.0.8.vec.extract.i.i.i83
  %.not3.i.i.i.i84 = and i1 %i.au, %i.av
  %i.aw = select i1 %i.at, i1 true, i1 %.not3.i.i.i.i84
  %i.ax = select i1 %i.aw, double %.sroa.0.0.vec.extract.i.i.i82, double %.sroa.0.8.vec.extract.i.i.i83 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_:bb.a
bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
  %i.aw = sdiv i64 %i.av, 256
  %i.ax = and i64 %i.aw, -8
  %.sroa.speculated140 = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 1) ; 7 uses
  %i.ay = icmp sgt i64 %i.at, %.sroa.speculated140
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = urem i64 %i.at, %.sroa.speculated140    ; 2 uses
  %i.ba = udiv i64 %i.at, %.sroa.speculated140
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !23
  %.pre = load i64, ptr %1, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !23    ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !23
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116

bb.ab:                                            ; preds = %bb.aa
  %i.ck = shl i64 %i.at, 3
  %i.cl = mul i64 %i.ck, %i.bx                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1025
  br i1 %i.cm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp ne i64 %i.g, 0
  %i.co = icmp samesign ult i64 %i.cl, 32769
  %or.cond4 = and i1 %i.cn, %i.co
  br i1 %or.cond4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.speculated128 = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 576)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0182 = phi i64 [ %i.bl, %bb.ac ], [ %.sroa.speculated128, %bb.ad ], [ %i.bl, %bb.ab ]
  %.093 = phi i64 [ 1572864, %bb.ac ], [ %i.f, %bb.ad ], [ %i.e, %bb.ab ]
  %i.cp = mul i64 %i.at, 24
  %i.cq = udiv i64 %.093, %i.cp
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.0182, i64 %i.cq) ; 4 uses
  %i.cr = icmp sgt i64 %.sroa.speculated, 4
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = and i64 %.sroa.speculated, 9223372036854775804
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !23
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !193
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !195    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !196  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %smax127 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.r = add nsw i64 %smax127, -4                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = mul i64 %i.h, %i.s
  %i.u = shl i64 %i.t, 5
  %i.v = shl i64 %3, 3                            ; 4 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %i.u
  %scevgep128 = getelementptr i8, ptr %i.w, i64 %i.v
  %i.x = shl i64 %i.r, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 8
  %i.z = mul i64 %i.h, %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep129 = getelementptr i8, ptr %i.aa, i64 %i.v
  %i.ab = shl i64 %i.h, 3
  %scevgep130 = getelementptr i8, ptr %i.f, i64 %i.ab
  %i.ac = or disjoint i64 %i.x, 16
  %i.ad = mul i64 %i.h, %i.ac
  %i.ae = getelementptr i8, ptr %i.f, i64 %i.ad
  %scevgep131 = getelementptr i8, ptr %i.ae, i64 %i.v
  %i.af = shl i64 %i.h, 4
  %scevgep132 = getelementptr i8, ptr %i.f, i64 %i.af
  %i.ag = or disjoint i64 %i.x, 24
  %i.ah = mul i64 %i.h, %i.ag
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ah
  %scevgep133 = getelementptr i8, ptr %i.ai, i64 %i.v
  %i.aj = mul i64 %i.h, 24
  %scevgep134 = getelementptr i8, ptr %i.f, i64 %i.aj
  %i.ak = shl i64 %6, 5
  %i.al = insertelement <4 x ptr> poison, ptr %scevgep133, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %scevgep131, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %scevgep129, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep128, i64 3
  %i.ap = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep132, i64 1
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %scevgep130, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %i.at = getelementptr i8, ptr %1, i64 %i.ak
  %7 = add i64 %6, %3
  %8 = shl i64 %7, 5
  %i.au = getelementptr i8, ptr %1, i64 %8
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.eg, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.ef, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ax = mul nsw i64 %i.h, %.05076.us
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 1
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = or disjoint i64 %.05076.us, 2
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.f, i64 %i.bd ; 4 uses
  %i.bf = or disjoint i64 %.05076.us, 3
  %i.bg = mul nsw i64 %i.h, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bi = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bi ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bi ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep103
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %i.bk
  %i.br = or i1 %i.bq, %i.bp
  br i1 %i.br, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bs = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.at, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.au, i64 %i.bs
  %i.bv = insertelement <4 x ptr> poison, ptr %i.bt, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = icmp ult <4 x ptr> %i.bw, %i.ao
  %i.by = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.bz = shufflevector <4 x ptr> %i.by, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ca = icmp ult <4 x ptr> %i.as, %i.bz
  %i.cb = and <4 x i1> %i.bx, %i.ca
  %i.cc = bitcast <4 x i1> %i.cb to i4
  %i.cd = icmp ne i4 %i.cc, 0
  %op.rdx = or i1 %i.cd, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ce = add i64 %i.aw, %i.av                    ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !42, !alias.scope !1084
  %.idx = shl i64 %index, 5
  %i.ch = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.ci, align 8, !tbaa !42, !alias.scope !1085
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.cj, align 8, !tbaa !42, !alias.scope !1086
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.ck, align 8, !tbaa !42, !alias.scope !1087
  %i.cl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cl, <4 x double> %i.cm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ch, align 8, !tbaa !42, !alias.scope !1088, !noalias !1089
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1077

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !42
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !42
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !42
  %i.cw = getelementptr i8, ptr %i.cq, i64 16
  store double %i.cv, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !42
  %i.cz = getelementptr i8, ptr %i.cq, i64 24
  store double %i.cy, ptr %i.cz, align 8, !tbaa !42
  %i.da = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.db = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %3, %.neg
  br i1 %i.dc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.ee, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.ed, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.de = load double, ptr %i.dd, align 8, !tbaa !42
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.de, ptr %i.df, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !42
  %i.di = getelementptr i8, ptr %i.df, i64 8
  store double %i.dh, ptr %i.di, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = getelementptr i8, ptr %i.df, i64 16
  store double %i.dk, ptr %i.dl, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr i8, ptr %i.df, i64 24
  store double %i.dn, ptr %i.do, align 8, !tbaa !42
  %i.dp = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  store double %i.dr, ptr %i.dt, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dp
  %i.dv = load double, ptr %i.du, align 8, !tbaa !42
  %i.dw = getelementptr i8, ptr %i.ds, i64 40
  store double %i.dv, ptr %i.dw, align 8, !tbaa !42
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dp
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !42
  %i.dz = getelementptr i8, ptr %i.ds, i64 48
  store double %i.dy, ptr %i.dz, align 8, !tbaa !42
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !42
  %i.ec = getelementptr i8, ptr %i.ds, i64 56
  store double %i.eb, ptr %i.ec, align 8, !tbaa !42
  %i.ed = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ee = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ee, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1078

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.ce, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.ed, %scalar.ph ]
  %i.ef = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.eg = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.c
  br i1 %i.eh, label %.lr.ph.us, label %.preheader, !llvm.loop !1079

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.ei = add nsw i64 %smax, -4
  %i.ej = lshr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.ej, %invariant.op
  %i.el = shl i64 %5, 2
  %i.em = add i64 %i.ek, %i.el
  %i.en = shl i64 %3, 2
  %i.eo = sub i64 %i.em, %i.en
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.eo, %.lr.ph78.split ], [ %i.ef, %._crit_edge.us ]
  %i.ep = icmp slt i64 %i.c, %4
  br i1 %i.ep, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.eq = load ptr, ptr %2, align 8, !tbaa !195   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !196 ; 3 uses
  %i.et = icmp sgt i64 %3, 0
  %i.eu = add i64 %3, %6
  %i.ev = sub i64 %5, %i.eu
  br i1 %i.et, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ew = ptrtoaddr ptr %i.eq to i64
  %i.ex = mul i64 %i.es, -8
  %i.ey = mul i64 %i.es, %i.b
end_hunk_1
